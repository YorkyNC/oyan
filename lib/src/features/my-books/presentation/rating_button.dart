import 'package:flutter/material.dart';

class RatingButton extends StatelessWidget {
  final int rating;
  final bool isSelected;
  final VoidCallback onPressed;

  const RatingButton({
    Key? key,
    required this.rating,
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
          backgroundColor: isSelected ? const Color(0xffEBF0FF) : const Color(0xffEBF0FF),
          foregroundColor: isSelected ? const Color(0xffA2ADD0) : const Color(0xffA2ADD0),
          elevation: 0,
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          disabledBackgroundColor: const Color(0xffEBF0FF),
          disabledForegroundColor: const Color(0xffA2ADD0).withOpacity(0.5),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(rating.toString()),
            const SizedBox(width: 2),
            Icon(
              rating >= 6 ? Icons.star_outline_rounded : Icons.star_rounded,
              size: 25,
              color: isSelected ? Colors.amber : const Color(0xffA2ADD0),
            ),
          ],
        ),
      ),
    );
  }
}
