import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:motocheck/app/custom/checklist/checklist.dart';
import 'package:motocheck/app/custom/service_tile/service_tile.dart';
import 'package:motocheck/app/utils/color/color.dart';
import 'package:remixicon/remixicon.dart';
import 'package:side_sheet/side_sheet.dart';
import 'package:websafe_svg/websafe_svg.dart';

import 'package:motocheck/app/custom/side_nav/side_nav.dart';
import 'package:motocheck/app/utils/svg/svg.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
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
                          body: const SideNav(),
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
            const SizedBox(
              height: 35,
            ),
            Text(
              'Welcome Back,Imani 👋🏽 ',
              style: Theme.of(context)
                  .textTheme
                  .headline2!
                  .copyWith(fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              'It is a long established fact lorem.',
              style: Theme.of(context).textTheme.headline4!.copyWith(
                  fontWeight: FontWeight.w400,
                  color: kDuroSG,
                  fontFamily: 'Sofia'),
            ),
            const SizedBox(
              height: 30,
            ),
            Material(
              elevation: 1,
              borderRadius: const BorderRadius.all(Radius.circular(5)),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: WebsafeSvg.asset(
                        Svgs.search,
                      ),
                    ),
                    filled: true,
                    fillColor: kWhite,
                    enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffEEEEEE)),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    focusedBorder: const OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xffEEEEEE), width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    contentPadding: const EdgeInsets.all(20),
                    isDense: true,
                    hintText: 'Search lorem ipsum',
                    hintStyle: Theme.of(context).textTheme.headline4!.copyWith(
                        color: kMCMGrey.withOpacity(.8), fontFamily: 'Sofia')),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Recent Checklist',
                  style: Theme.of(context)
                      .textTheme
                      .headline2!
                      .copyWith(fontSize: 22, fontWeight: FontWeight.w600),
                ),
                Text(
                  'View all',
                  style: Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(color: kBlue),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const Checklist(
              isPending: true,
            ),
            const SizedBox(
              height: 20,
            ),
            const Checklist(
              isPending: false,
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              'Services',
              style: Theme.of(context)
                  .textTheme
                  .headline2!
                  .copyWith(fontSize: 22, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 30),
            ServiceTile(
              title: 'Inspection',
              svg: Svgs.inspection,
            ),
            const SizedBox(
              height: 20,
            ),
            ServiceTile(
              title: 'Maintenance',
              svg: Svgs.maintainance,
            ),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              height: 80,
            )
          ],
        ),
      ),
    ));
  }
}
