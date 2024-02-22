import 'package:flutter/material.dart';
import 'package:freelance/darwer/custom_bottomSheet.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        children: [
          _customHeader(context),
          _customListTile('Country', Icons.logout, () {
            showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return CustomBottomModalSheet(
                    title: 'Change Location',
                    titles: const ['titles', 'titl'],
                    icons: const ['', ''],
                    onTap: () {},
                    isSearchExit: true,
                    onChange: (value) {},
                    onConfirm: () {},
                  );
                });
          }),
          _customListTile('Type Ad', Icons.logout, () {
            showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return CustomBottomModalSheet(
                    title: 'Type Ad',
                    titles: const ['titles', 'titl'],
                    icons: const ['', ''],
                    onTap: () {},
                    isSearchExit: true,
                    onChange: (value) {},
                    onConfirm: () {},
                  );
                });
          }),
          _customListTile('Dark mode', Icons.logout, () {
            showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return CustomBottomModalSheet(
                    title: 'Change Theme',
                    titles: const ['Dark', 'Light'],
                    icons: const ['', ''],
                    onTap: () {},
                    onConfirm: () {},
                  );
                });
          }),
          _customListTile('Share App', Icons.logout, () {}),
          _customListTile('Help', Icons.logout, () {}),
          _customListTile('Contact Us', Icons.logout, () {}),
          _customListTile('About Us', Icons.logout, () {}),
          _customListTile('Privacy Policy', Icons.logout, () {}),
          _customListTile('Terms & Conditions', Icons.logout, () {}),
          const SizedBox(height: 15),
          _followUsText(),
          const SizedBox(height: 10),
          _socialConnectRowWidget(),
          const SizedBox(height: 5),
          _customDivider(),
          const SizedBox(height: 5),
          //:ToDo add Image here
          const SizedBox(height: 10),
          _copyRightText(),
          const SizedBox(height: 10),
        ],
      ),
    );
  }

  Padding _copyRightText() {
    return const Padding(
      padding: EdgeInsetsDirectional.symmetric(horizontal: 10),
      child: Text(
          '@ Alsooq online, all rights reserved 2023 version1.01(build:1011010)'),
    );
  }

  Padding _customDivider() {
    return const Padding(
      padding: EdgeInsetsDirectional.symmetric(horizontal: 10),
      child: Divider(),
    );
  }

  Row _socialConnectRowWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _customSocialWidget(() {}),
        const SizedBox(width: 15),
        _customSocialWidget(() {}),
        const SizedBox(width: 15),
        _customSocialWidget(() {}),
        const SizedBox(width: 15),
        _customSocialWidget(() {}),
      ],
    );
  }

  Widget _customSocialWidget(void Function()? onTap) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(width: 2, color: Colors.red),
            color: Colors.white),
        child: const Center(
          child: Icon(Icons.person, color: Colors.red),
        ),
      ),
    );
  }

  Align _followUsText() {
    return const Align(
      alignment: AlignmentDirectional.center,
      child: Text(
        'Follow us on',
        style: TextStyle(fontSize: 20, color: Colors.black),
      ),
    );
  }

  Widget _customHeader(context) {
    return SizedBox(
      height: 120,
      child: DrawerHeader(
        decoration: const BoxDecoration(color: Colors.white),
        child: Align(
            alignment: AlignmentDirectional.centerStart,
            child: InkWell(
              onTap: () {
                showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return CustomBottomModalSheet(
                        title: 'Change Language',
                        titles: const ['arabic', 'english'],
                        icons: const ['', ''],
                        onTap: () {},
                        onConfirm: () {},
                      );
                    });
              },
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.grey.shade200),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.language),
                    SizedBox(width: 4),
                    Text(
                      'Language',
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                    SizedBox(width: 6),
                    Icon(Icons.keyboard_arrow_down_outlined),
                  ],
                ),
              ),
            )),
      ),
    );
  }

  ListTile _customListTile(
      String title, IconData? icon, void Function()? onTap) {
    return ListTile(
      onTap: onTap,
      leading: Icon(icon, size: 30, color: Colors.blue),
      title: Text(title),
      trailing: Icon(Icons.arrow_forward_ios_rounded,
          size: 20, color: Colors.grey.shade400),
    );
  }
}
