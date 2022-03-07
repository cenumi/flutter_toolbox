import 'package:flutter/material.dart';
import 'package:flutter_toolbox/core/packages.dart';
import 'package:flutter_toolbox/core/services.dart';
import 'package:flutter_toolbox/models/flutter_model.dart';
import 'package:url_launcher/url_launcher.dart';

part 'state.dart';

class FlutterSettingsPage extends StatelessWidget {
  const FlutterSettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        _Header(),
        Divider(height: 1),
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
          Text('Flutter Settings', style: Theme.of(context).textTheme.headlineSmall),
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

class _FlutterInfoList extends ConsumerWidget {
  const _FlutterInfoList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final path = ref.watch(flutterServiceProvider.select((value) => value.flutterPath));
    final flutterInfo = ref.watch(flutterServiceProvider.select((value) => value.flutterVersionInfo));

    const unknown = 'UNKNOWN';

    return Column(
      children: [
        ListTile(
          title: const Text('Path'),
          subtitle: Text(path ?? 'UNSET'),
          onTap: () => ref.read(flutterServiceProvider.notifier).setFlutterPath(),
        ),
        ListTile(
          title: Row(
            children: [
              const Text('Flutter  '),
              Chip(label: Text(flutterInfo?.branch ?? unknown)),
              const SizedBox(width: 8),
              ActionChip(
                label: Text(flutterInfo?.flutterVersion ?? unknown),
                tooltip: 'Show Changelog',
                onPressed: () {
                  launch(
                    flutterInfo?.flutterVersion != null
                        ? 'https://github.com/flutter/flutter/releases/tag/${flutterInfo!.flutterVersion}'
                        : 'https://github.com/flutter/flutter/tags',
                  );
                },
              ),
              const SizedBox(width: 8),
              // ActionChip(label: Text('2.10.4 Available'), onPressed: () {}),
            ],
          ),
          subtitle: Text('Framework: ${flutterInfo?.framework ?? unknown} · ${flutterInfo?.frameworkTime ?? unknown}'),
        ),
        ListTile(
          title: Row(
            children: [
              const Text('Dart  '),
              ActionChip(
                label: Text(flutterInfo?.dartVersion ?? unknown),
                onPressed: () =>
                    launch('https://github.com/dart-lang/sdk/blob/${flutterInfo?.dartVersion ?? 'main'}/CHANGELOG.md'),
                tooltip: 'Show Changelog',
              ),
            ],
          ),
          subtitle: Text('DevTools: ${flutterInfo?.devToolsVersion ?? unknown}'),
        ),
      ],
    );
  }
}

class _PlatformSelect extends ConsumerWidget {
  const _PlatformSelect({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final platformInfo = ref.watch(flutterServiceProvider.select((value) => value.flutterSettingsInfo));

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Platforms', style: Theme.of(context).textTheme.titleMedium),
          Row(
            children: [
              _LabeledCheckBox(
                label: 'MacOS',
                value: platformInfo?.platforms[SupportedPlatform.macOS],
                onChanged: (value) => ref
                    .read(flutterServiceProvider.notifier)
                    .changePlatformSettings(SupportedPlatform.macOS, enabled: value!),
              ),
              _LabeledCheckBox(
                label: 'Windows',
                value: platformInfo?.platforms[SupportedPlatform.windows],
                onChanged: (value) => ref
                    .read(flutterServiceProvider.notifier)
                    .changePlatformSettings(SupportedPlatform.windows, enabled: value!),
              ),
              _LabeledCheckBox(
                label: 'Web',
                value: platformInfo?.platforms[SupportedPlatform.web],
                onChanged: (value) => ref
                    .read(flutterServiceProvider.notifier)
                    .changePlatformSettings(SupportedPlatform.web, enabled: value!),
              ),
              _LabeledCheckBox(
                label: 'Linux',
                value: platformInfo?.platforms[SupportedPlatform.linux],
                onChanged: (value) => ref
                    .read(flutterServiceProvider.notifier)
                    .changePlatformSettings(SupportedPlatform.linux, enabled: value!),
              ),
            ],
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
