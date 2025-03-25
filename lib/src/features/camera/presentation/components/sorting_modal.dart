import 'package:oyan/src/app/imports.dart';
import 'package:oyan/src/core/extensions/build_context_extension.dart';

enum SortingOption { moreEvents, lessEvents, aToZ, zToA }

class SortingModal extends StatefulWidget {
  final SortingOption? initialValue;
  final Function(SortingOption) onSortingChanged;

  const SortingModal({Key? key, this.initialValue, required this.onSortingChanged}) : super(key: key);

  static Future<void> show(
    BuildContext context, {
    SortingOption? initialValue,
    required Function(SortingOption) onSortingChanged,
  }) {
    return showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) => SortingModal(initialValue: initialValue, onSortingChanged: onSortingChanged),
    );
  }

  @override
  State<SortingModal> createState() => _SortingModalState();
}

class _SortingModalState extends State<SortingModal> {
  late SortingOption? selectedOption;

  @override
  void initState() {
    super.initState();
    selectedOption = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: true,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Фильтры', style: context.typography.textlgSemibold.copyWith(color: context.colors.black)),
                      const SizedBox(height: 4),
                      Text(
                        context.loc.showFirst,
                        style: context.typography.textsmRegular.copyWith(color: context.colors.gray500),
                      ),
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () {
                    context.pop();
                  },
                  icon: Icon(
                    context.icons.delete_1__remove_add_button_buttons_delete_cross_x_mathematics_multiply_math,
                    color: context.colors.black,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            _buildSortingOptions(),
          ],
        ),
      ),
    );
  }

  Widget _buildSortingOptions() {
    return Column(
      children: [
        _buildSortingOption('Больше событий', SortingOption.moreEvents),
        _buildSortingOption('Меньше событий', SortingOption.lessEvents),
        _buildSortingOption('От А до Я', SortingOption.aToZ),
        _buildSortingOption('От Я до А', SortingOption.zToA),
      ],
    );
  }

  Widget _buildSortingOption(String title, SortingOption option) {
    return Material(
      borderRadius: BorderRadius.circular(8),
      color: selectedOption == option ? context.colors.blueGray50 : Colors.transparent,
      child: RadioListTile(
        controlAffinity: ListTileControlAffinity.trailing,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        value: option,
        groupValue: selectedOption,
        onChanged: (vlaue) {
          setState(() => selectedOption = option);
          widget.onSortingChanged(option);
        },
        activeColor: context.colors.blueGray400,
        title: Text(title, style: context.typography.textlgRegular.copyWith(color: context.colors.black)),
        contentPadding: const EdgeInsets.symmetric(horizontal: 12),
      ),
    );
  }
}
