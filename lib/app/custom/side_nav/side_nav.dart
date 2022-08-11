import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:motocheck/app/custom/nav_item/nav_item.dart';
import 'package:motocheck/app/utils/color/color.dart';
import 'package:motocheck/app/utils/image/images.dart';
import 'package:motocheck/app/utils/svg/svg.dart';
import 'package:remixicon/remixicon.dart';

class SideNav extends StatelessWidget {
  const SideNav({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width - 70,
      alignment: Alignment.topLeft,
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Row(
            children: [
              const SizedBox(
                width: 15,
              ),
              Container(
                height: 50,
                width: (Get.width - 70) / 2,
                decoration: BoxDecoration(
                    image:
                        DecorationImage(image: AssetImage(Images.motocheck))),
              ),
              const Spacer()
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(left: 45),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        CupertinoIcons.chart_pie,
                        color: kBlack,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Overview',
                        style: Theme.of(context).textTheme.headline4,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  const Divider(
                    thickness: 2,
                    endIndent: 50,
                    color: Color(0xffE6EBEC),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  const NavItem(
                    icon: Remix.terminal_box_line,
                    text: 'Inspection',
                  ),
                  NavItem(
                    svg: Svgs.notification,
                    text: 'Notifications',
                  ),
                  const NavItem(
                    icon: Remix.database_2_line,
                    text: 'Maintenance',
                  ),
                  NavItem(
                    svg: Svgs.payment,
                    text: 'Payment Wallet',
                  ),
                  const NavItem(
                    icon: Icons.assessment_outlined,
                    text: 'History',
                  ),
                  NavItem(
                    icon: Icons.exit_to_app,
                    iconColor: kMCGrey,
                    text: 'Log out',
                    textColor: kMCGrey,
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 35,
                        backgroundColor: kWhite,
                        backgroundImage: AssetImage(Images.user),
                      ),
                      const SizedBox(
                        width: 25,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Faith Auto\'s',
                            style: Theme.of(context).textTheme.headline3,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Auto Centre',
                            style: Theme.of(context)
                                .textTheme
                                .headline4!
                                .copyWith(
                                    color: kMCGrey,
                                    fontWeight: FontWeight.w400),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
