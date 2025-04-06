import 'package:oyan/src/app/imports.dart';
import 'package:oyan/src/core/extensions/build_context_extension.dart';

class RatingFilterButton extends StatelessWidget {
  final int rating;
  final String label;
  final bool isSelected;
  final VoidCallback onPressed;

  const RatingFilterButton({
    Key? key,
    required this.rating,
    required this.label,
    required this.isSelected,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: isSelected ? context.colors.main : const Color(0xffEBF0FF),
          foregroundColor: isSelected ? Colors.white : const Color(0xffA2ADD0),
          elevation: 0,
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        child: rating == 0
            ? Text(label)
            : Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(label),
                  const SizedBox(width: 2),
                  Icon(
                    isSelected ? Icons.star_rounded : Icons.star_outline_rounded,
                    size: 25,
                    color: isSelected ? Colors.yellow : Colors.grey[600],
                  ),
                ],
              ),
      ),
    );
  }
}
