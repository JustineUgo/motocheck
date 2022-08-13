import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:motocheck/app/utils/color/color.dart';
import 'package:websafe_svg/websafe_svg.dart';

class ServiceTile extends StatelessWidget {
  const ServiceTile({
    Key? key,
    required this.title,
    required this.svg,
  }) : super(key: key);
  final String title;
  final String svg;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 18),
      decoration: BoxDecoration(
          color: kWhite,
          borderRadius: const BorderRadius.all(Radius.circular(4)),
          boxShadow: [
            BoxShadow(
                color: kBlack.withOpacity(0.05),
                offset: const Offset(2, 4),
                blurRadius: 130)
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(4)),
                  border: Border.all(color: kBlue)),
              child: WebsafeSvg.asset(svg, height: 35)),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .headline3!
                    .copyWith(fontFamily: 'Sofia', fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Contrary to popular belief,\nLorem Ipsum dior',
                style: Theme.of(context).textTheme.headline5!.copyWith(
                    height: 1.5,
                    fontFamily: 'Sofia',
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
          Icon(
            Icons.trending_flat_outlined,
            color: kMCGrey,
          )
        ],
      ),
    );
  }
}
