import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:oyan/src/app/imports.dart';
import 'package:oyan/src/core/extensions/build_context_extension.dart';

class FilteringModal extends StatefulWidget {
  const FilteringModal({super.key});

  @override
  State<FilteringModal> createState() => _FilteringModalState();
}

class _FilteringModalState extends State<FilteringModal> {
  String selectedDate = '';
  final Set<String> selectedTypes = {};
  final DateTime currentDate = DateTime.now();

  String get formattedDate => DateFormat('dd.MM.yyyy').format(currentDate);

  String selecteDateOption(String id) {
    final DateFormat formatter = DateFormat('dd.MM.yyyy');
    final DateTime now = DateTime.now();
    switch (id) {
      case 'day':
        if (selectedDate == 'day') {
          return formatter.format(now);
        }
        return '';
      case 'week':
        if (selectedDate == 'week') {
          final DateTime weekStart = now.subtract(const Duration(days: 7));
          return '${formatter.format(weekStart)} - ${formatter.format(now)}';
        }
        return '';
      case 'month':
        if (selectedDate == 'month') {
          final DateTime monthStart = DateTime(now.year, now.month, 1);
          return '${formatter.format(monthStart)} - ${formatter.format(now)}';
        }
        return '';
      case 'custom':
        if (selectedDate == 'custom') {
          return 'Выберите даты';
        }
        return '';
      default:
        return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: true,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'Фильтры',
                      style: context.typography.textlgSemibold.copyWith(color: context.colors.black),
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
              Text('По дате', style: context.typography.textsmSemibold.copyWith(color: context.colors.black)),
              const SizedBox(height: 16),
              Column(
                children: [
                  _buildDateOption('day', 'За день'),
                  _buildDateOption('week', 'За неделю'),
                  _buildDateOption('month', 'За месяц'),
                  _buildDateOption('custom', 'Выбрать период'),
                ],
              ),
              const SizedBox(height: 16),
              Text('По типу', style: context.typography.textsmSemibold.copyWith(color: context.colors.black)),
              const SizedBox(height: 16),
              Column(
                children: [
                  _buildTypeOption('conflicts', 'Конфликты', context.assetImages.conflictsFilled),
                  _buildTypeOption('smoking', 'Курение', context.assetImages.smokingFilled),
                  _buildTypeOption('cheating', 'Списывание', context.assetImages.cheatingFilled),
                ],
              ),
              const SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    context.pop();
                  },
                  child: Text(
                    'Показать результаты (23)',
                    style: context.typography.typography1SemiBold.copyWith(color: context.colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDateOption(String id, String label) {
    return Column(
      children: [
        Material(
          borderRadius: BorderRadius.circular(8),
          color: selectedDate == id ? context.colors.blueGray50 : Colors.transparent,
          child: RadioListTile(
            controlAffinity: ListTileControlAffinity.trailing,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            value: id,
            groupValue: selectedDate,
            onChanged: (value) {
              setState(() {
                selectedDate = value.toString();
              });
            },
            activeColor: context.colors.blueGray400,
            title: Text(label, style: context.typography.textlgRegular.copyWith(color: context.colors.black)),
            subtitle:
                selecteDateOption(id).isNotEmpty
                    ? Text(
                      selecteDateOption(id),
                      style: context.typography.textlgSemibold.copyWith(color: context.colors.black),
                    )
                    : null,
            contentPadding: const EdgeInsets.symmetric(horizontal: 12),
          ),
        ),
        Divider(height: 5, color: context.colors.gray100),
      ],
    );
  }

  Widget _buildTypeOption(String id, String label, final String assetPath) {
    return Column(
      children: [
        Material(
          borderRadius: BorderRadius.circular(8),
          color: selectedTypes.contains(id) ? context.colors.blueGray50 : Colors.transparent,
          child: CheckboxListTile(
            secondary: SvgPicture.asset(assetPath),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            controlAffinity: ListTileControlAffinity.trailing,
            value: selectedTypes.contains(id),
            activeColor: context.colors.blueGray400,
            checkColor: context.colors.white,
            onChanged: (value) {
              setState(() {
                if (value ?? false) {
                  selectedTypes.add(id);
                } else {
                  selectedTypes.remove(id);
                }
              });
            },
            title: Text(label, style: context.typography.textlgRegular.copyWith(color: context.colors.black)),
            contentPadding: const EdgeInsets.symmetric(horizontal: 12),
          ),
        ),
        Divider(height: 5, color: context.colors.gray100),
      ],
    );
  }
}
