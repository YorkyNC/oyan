import 'package:oyan/src/app/imports.dart';
import 'package:oyan/src/core/extensions/build_context_extension.dart';

class CustomSearchBar extends StatelessWidget {
  final String hintText;
  const CustomSearchBar({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(color: context.colors.gray100, borderRadius: BorderRadius.circular(8.0)),
      child: TextField(
        onChanged: (value) {},
        style: context.typography.typography2Medium.copyWith(color: context.colors.gray700),
        decoration: InputDecoration(
          prefixIcon: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.search, color: context.colors.gray500, size: 20),
          ),
          hintText: hintText,
          hintStyle: context.typography.typography2Regular.copyWith(color: context.colors.gray500),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(vertical: 10.0),
        ),
      ),
    );
  }
}

// TODO: asdsad
