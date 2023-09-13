import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:techtestvascomm/const/color.dart';

class TopBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? title;
  final Widget? leading;
  final List<Widget>? action;
  final Size height;
  final double elevation;

  const TopBar({
    Key? key,
    this.title,
    this.leading,
    this.action,
    this.height = const Size.fromHeight(50),
    this.elevation = 0,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: PreferredSize(
        preferredSize: height,
        child: AppBar(
          systemOverlayStyle: const SystemUiOverlayStyle(statusBarColor: Colors.white),
          backgroundColor: Colors.white,
          centerTitle: true,
          title: title,
          leading: leading != null
              ? leading
              : IconButton(
                  onPressed: () {
                    Scaffold.of(context).openEndDrawer();
                  },
                  icon: Icon(Icons.menu_rounded),
                  color: blueColor,
                ),
          actions: action != null ? action : [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.shopping_cart),
              color: blueColor,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.notifications),
              color: blueColor,
            ),
          ],
        ),
      ),
    );
  }
}
