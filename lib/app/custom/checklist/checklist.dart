import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:motocheck/app/utils/color/color.dart';
import 'package:motocheck/app/utils/svg/svg.dart';
import 'package:websafe_svg/websafe_svg.dart';

class Checklist extends StatelessWidget {
  const Checklist({
    Key? key,
    required this.isPending,
  }) : super(key: key);
  final bool isPending;
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Mr. Joseph Agunbiade',
                style: Theme.of(context)
                    .textTheme
                    .headline3!
                    .copyWith(fontFamily: 'Sofia', fontWeight: FontWeight.w600),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(4)),
                  color: isPending
                      ? kMCDanger.withOpacity(.05)
                      : kMCGreen.withOpacity(.05),
                ),
                child: Text(
                  isPending ? 'Pending' : 'Ready',
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                      color: isPending ? kMCDanger : kMCGreen,
                      fontFamily: 'Sofia',
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Benz 2014 EClass',
            style: Theme.of(context).textTheme.headline5!.copyWith(
                color: kMCGrey,
                fontFamily: 'Sofia',
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          const Divider(
            thickness: 2,
            color: Color(0xffE6EBEC),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              WebsafeSvg.asset(Svgs.time, width: 20),
              const SizedBox(
                width: 10,
              ),
              Text(
                '14 July, 4:00pm - 7:00pm',
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(fontFamily: 'Sofia', fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
