import 'package:flutter/material.dart';
import 'package:swypepay/widgets/Widgets/leading_icon.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{
  final String title;

  const CustomAppBar({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      title: Text(title, style: Theme.of(context).textTheme.headline1.copyWith(
          fontSize: 14
      ),),
      leading:  CustomLeadingIcon()
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(100);
}
