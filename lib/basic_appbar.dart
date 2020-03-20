library basic_appbar;

import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final double height;
  final Widget child;

  const AppBarWidget({ this.child, this.height = 50 });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      child: SafeArea(
        child: Container(
        height: height,

          child: child ?? Text('Title'),
          
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}

