part of 'page.dart';

class _VersionView extends StatelessWidget {
  const _VersionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        _VersionChanger(),
      ],
    );
  }
}

class _VersionChanger extends ConsumerWidget {
  const _VersionChanger({Key? key}) : super(key: key);

  void _onSelected(int index, int value, WidgetRef ref) {
    final version = ref.read(_viewModelProvider).pubspec?.version.toString().split(RegExp('[.+]'));
    if (version == null) return;

    version[index] = value.toString();

    final fullVersion =
        version.length <= 3 ? version.join('.') : '${version[0]}.${version[1]}.${version[2]}+${version[3]}';

    ref.read(_viewModelProvider.notifier).editVersion(fullVersion);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final version = ref.watch(_viewModelProvider.select((value) => value.pubspec?.version));

    return Row(
      children: [
        Expanded(
          child: _Picker(
            versionPart: version?.major ?? 0,
            onChanged: (value) => _onSelected(0, value, ref),
          ),
        ),
        const Text('.'),
        Expanded(
          child: _Picker(
            versionPart: version?.minor ?? 0,
            onChanged: (value) => _onSelected(1, value, ref),
          ),
        ),
        const Text('.'),
        Expanded(
          child: _Picker(
            versionPart: version?.patch ?? 0,
            onChanged: (value) => _onSelected(2, value, ref),
          ),
        ),
      ],
    );
  }
}

class _Picker extends StatefulWidget {
  const _Picker({Key? key, required this.versionPart, required this.onChanged}) : super(key: key);
  final int versionPart;

  final ValueChanged<int> onChanged;

  @override
  State<_Picker> createState() => _PickerState();
}

class _PickerState extends State<_Picker> {
  late FixedExtentScrollController _controller;

  @override
  void initState() {
    super.initState();
    _controller = FixedExtentScrollController(initialItem: widget.versionPart);
  }

  @override
  void didUpdateWidget(covariant _Picker oldWidget) {
    super.didUpdateWidget(oldWidget);
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _controller.jumpToItem(widget.versionPart);
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _scrollToItem(int item) {
    _controller.animateToItem(item, duration: const Duration(milliseconds: 300), curve: Curves.ease);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: () => _scrollToItem(_controller.selectedItem + 1),
          icon: const Icon(Icons.arrow_circle_up),
          splashRadius: 24,
        ),
        CupertinoPicker.builder(
          scrollController: _controller,
          itemExtent: 40,
          onSelectedItemChanged: widget.onChanged,
          itemBuilder: (context, index) {
            if (index < 0) return null;
            return Center(child: Text('$index'));
          },
        ),
        IconButton(
          onPressed: () => _scrollToItem(_controller.selectedItem - 1),
          icon: const Icon(Icons.arrow_circle_down),
          splashRadius: 24,
        ),
      ],
    );
  }
}
