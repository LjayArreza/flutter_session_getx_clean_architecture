import 'package:flutter/material.dart';

class CustomReusableAppbar extends StatelessWidget
    implements PreferredSizeWidget {
  final Widget? appbarTitle;
  final bool isTitleCenter;
  final Color backgroundColor;
  final double elevation;
  final Widget? leadingIcon;
  final List<Widget>? actionIcon;
  final bool automaticallyImplyLeading;
  const CustomReusableAppbar(
      {Key? key,
      this.appbarTitle,
      required this.isTitleCenter,
      required this.backgroundColor,
      required this.elevation,
      this.leadingIcon,
      this.actionIcon,
      required this.automaticallyImplyLeading})
      : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(60.0);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: AppBar(
        title: appbarTitle,
        centerTitle: isTitleCenter,
        backgroundColor: backgroundColor,
        elevation: elevation,
        leading: leadingIcon,
        actions: actionIcon,
        automaticallyImplyLeading: automaticallyImplyLeading,
      ),
    );
  }
}
