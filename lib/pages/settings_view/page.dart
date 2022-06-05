import 'package:file_selector/file_selector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_toolbox/core/packages.dart';
import 'package:flutter_toolbox/domain/flutter_info_provider.dart';
import 'package:flutter_toolbox/domain/user_configs_provider.dart';
import 'package:flutter_toolbox/models/flutter_model.dart';
import 'package:url_launcher/url_launcher_string.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        _Header(),
        Divider(height: 1),
        _PubInfo(),
        _FlutterInfoList(),
        _PlatformSelect(),
      ],
    );
  }
}

class _Header extends ConsumerWidget {
  const _Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Text('Settings', style: Theme.of(context).textTheme.headlineSmall),
          // const Spacer(),
          // OutlinedButton.icon(
          //   onPressed: () => ref.read(flutterServiceProvider.notifier).setFlutterPath(),
          //   icon: const Icon(Icons.refresh),
          //   label: const Text('Check Update'),
          // ),
        ],
      ),
    );
  }
}

class _PubInfo extends ConsumerWidget {
  const _PubInfo({Key? key}) : super(key: key);

  Future<void> changePubURL(BuildContext context, WidgetRef ref, String initURL) async {
    final res = await showDialog<String>(
      context: context,
      builder: (context) {
        String changedURL = '';

        return AlertDialog(
          title: const Text('Change Pub URL'),
          content: TextFormField(initialValue: initURL, autofocus: true, onChanged: (value) => changedURL = value),
          actions: [
            TextButton(onPressed: () => Navigator.of(context).pop(), child: const Text('Cancel')),
            ElevatedButton(onPressed: () => Navigator.of(context).pop(changedURL), child: const Text('Change')),
          ],
        );
      },
    );
    if (res?.isNotEmpty == true) {
      ref.read(userConfigsProvider.notifier).changePubUrl(res!);
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final url = ref.watch(userConfigsProvider).pubBaseURL;
    return ListTile(
      title: const Text('Pub'),
      subtitle: Text(url),
      trailing: const Icon(Icons.edit),
      onTap: () => changePubURL(context, ref, url),
    );
  }
}

class _FlutterInfoList extends ConsumerWidget {
  const _FlutterInfoList({Key? key}) : super(key: key);

  Future<void> changeFlutterPath(BuildContext context, WidgetRef ref) async {
    final path = await getDirectoryPath();

    if (path == null) return;

    if (await ref.read(userConfigsProvider.notifier).changeFlutterPath(path)) return;

    await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: const Text('Wrong Flutter Path'),
        actions: [
          TextButton(onPressed: () => Navigator.of(context).pop(), child: const Text('Cancel')),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
              changeFlutterPath(context, ref);
            },
            child: const Text('Reselect'),
          ),
        ],
      ),
    );
  }

  void openBrowserForFlutterChangelog(String? version) {
    launchUrlString(
      version != null
          ? 'https://github.com/flutter/flutter/releases/tag/$version}'
          : 'https://github.com/flutter/flutter/tags',
    );
  }

  void openBrowserForDartChangelog(String? version) {
    launchUrlString('https://github.com/dart-lang/sdk/blob/${version ?? 'main'}/CHANGELOG.md');
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final path = ref.watch(userConfigsProvider.select((value) => value.flutterPath));
    final flutterInfo = ref.watch(flutterInfoProvider.select((value) => value.versionInfo));

    return Column(
      children: [
        ListTile(
          title: const Text('Flutter Path'),
          subtitle: Text(path ?? 'UNSET'),
          onTap: () => changeFlutterPath(context, ref),
          trailing: const Icon(Icons.folder_open),
        ),
        ListTile(
          title: Row(
            children: [
              const Text('Flutter  '),
              Chip(
                label: Text(
                  flutterInfo.when(
                    data: (data) => data.branch,
                    loading: () => 'loading...',
                    error: (e, s) => e.toString(),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              ActionChip(
                label: Text(
                  flutterInfo.when(
                    data: (data) => data.flutterVersion,
                    loading: () => 'loading...',
                    error: (e, s) => e.toString(),
                  ),
                ),
                tooltip: 'Show Changelog',
                onPressed: () => openBrowserForFlutterChangelog(flutterInfo.valueOrNull?.flutterVersion),
              ),
              const SizedBox(width: 8),
              // ActionChip(label: Text('2.10.4 Available'), onPressed: () {}),
            ],
          ),
          subtitle: Text(
            flutterInfo.when(
              data: (data) => 'Framework: ${data.framework} · ${data.frameworkTime}',
              loading: () => 'Loading...',
              error: (e, s) => e.toString(),
            ),
          ),
        ),
        ListTile(
          title: Row(
            children: [
              const Text('Dart  '),
              ActionChip(
                label: Text(
                  flutterInfo.when(
                    data: (data) => data.dartVersion,
                    loading: () => 'loading...',
                    error: (e, s) => e.toString(),
                  ),
                ),
                onPressed: () => openBrowserForDartChangelog(flutterInfo.valueOrNull?.dartVersion),
                tooltip: 'Show Changelog',
              ),
            ],
          ),
          subtitle: Text('DevTools: ${flutterInfo.valueOrNull?.devToolsVersion ?? 'Unknown'}'),
        ),
      ],
    );
  }
}

class _PlatformSelect extends ConsumerWidget {
  const _PlatformSelect({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final platformInfo = ref.watch(flutterInfoProvider.select((value) => value.settingsInfo));

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Platforms', style: Theme.of(context).textTheme.titleMedium),
          platformInfo.when(
            data: (data) => Row(
              children: [
                for (final p in SupportedPlatform.values)
                  _LabeledCheckBox(
                    label: p.name,
                    value: platformInfo.valueOrNull?.platforms[p],
                    onChanged: (value) =>
                        ref.read(flutterInfoProvider.notifier).changePlatformSettings(p, enabled: value!),
                  ),
              ],
            ),
            loading: () => const Text('Loading...'),
            error: (e, s) => Text(e.toString()),
          ),
        ],
      ),
    );
  }
}

class _LabeledCheckBox extends StatelessWidget {
  const _LabeledCheckBox({Key? key, required this.label, required this.value, required this.onChanged})
      : super(key: key);

  final String label;
  final bool? value;
  final ValueChanged<bool?> onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(label),
        Checkbox(value: value ?? false, onChanged: value == null ? null : onChanged),
        const SizedBox(width: 16),
      ],
    );
  }
}
