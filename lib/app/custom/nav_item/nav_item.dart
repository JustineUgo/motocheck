import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';

class NavItem extends StatelessWidget {
  const NavItem({
    Key? key,
    required this.text,
    this.icon,
    this.textColor,
    this.iconColor,
    this.svg,
  }) : super(key: key);
  final String text;
  final IconData? icon;
  final Color? textColor;
  final Color? iconColor;
  final String? svg;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            svg != null
                ? Padding(
                    padding: EdgeInsets.only(left: 3),
                    child: WebsafeSvg.asset(svg!, width: 22))
                : Icon(
                    icon,
                    color: iconColor,
                  ),
            const SizedBox(
              width: 20,
            ),
            Text(
              text,
              style: Theme.of(context).textTheme.headline4!.copyWith(
                  fontFamily: 'Sofia',
                  fontWeight: FontWeight.w600,
                  color: textColor),
            )
          ],
        ),
        const SizedBox(
          height: 60,
        ),
      ],
    );
  }
}
