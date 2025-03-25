import 'package:oyan/src/app/imports.dart';
import 'package:oyan/src/core/extensions/build_context_extension.dart';
import 'package:oyan/src/core/theme/colors.dart';
import 'package:oyan/src/core/theme/typography.dart';

class CustomDetailButton extends StatelessWidget {
  final VoidCallback onTap;

  const CustomDetailButton({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            context.loc.moreDetail,
            style: const FigmaTextStyles().typography2Medium.copyWith(color: context.colors.blue600),
          ),
        ],
      ),
    );
  }
}
