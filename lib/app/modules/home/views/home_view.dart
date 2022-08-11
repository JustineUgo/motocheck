import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:motocheck/app/custom/nav_item/nav_item.dart';
import 'package:motocheck/app/utils/color/color.dart';
import 'package:motocheck/app/utils/image/images.dart';
import 'package:motocheck/app/utils/svg/svg.dart';
import 'package:remixicon/remixicon.dart';
import 'package:side_sheet/side_sheet.dart';
import 'package:websafe_svg/websafe_svg.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: ListView(
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                  onTap: () => SideSheet.left(
                        context: context,
                        width: Get.width - 70,
                        body: Container(
                          width: Get.width - 70,
                          alignment: Alignment.topLeft,
                          padding: const EdgeInsets.only(left: 45),
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 50,
                              ),
                              Container(
                                height: 50,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(Images.motocheck))),
                              ),
                              const SizedBox(
                                height: 50,
                              ),
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
                                    style:
                                        Theme.of(context).textTheme.headline4,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Faith Auto\'s',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline3,
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
                  child: const Icon(Remix.menu_2_line)),
              Material(
                elevation: 1,
                borderRadius: const BorderRadius.all(Radius.circular(4)),
                child: Container(
                  height: 50,
                  width: 50,
                  padding: const EdgeInsets.all(15),
                  child: WebsafeSvg.asset(
                    Svgs.profile,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
