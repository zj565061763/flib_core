import 'package:flutter/material.dart';

import 'res.dart';

class FTitleBarSize extends Size {
  FTitleBarSize({
    double width,
    double height,
  }) : super(
          width ?? double.infinity,
          height ?? FRes.dimens().heightTitleBar,
        );
}

/// 标题栏容器
class FTitleBarContainer extends StatelessWidget {
  final Widget child;
  final Color color;
  final double height;

  FTitleBarContainer({
    this.child,
    Color color,
    double height,
  })  : this.color = color ?? FRes.colors().bgTitleBar,
        this.height = height ?? FRes.dimens().heightTitleBar;

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: child,
      color: color,
      width: double.infinity,
      height: height,
    );
  }
}

/// 标题栏item容器
class FTitleItemContainer extends StatelessWidget {
  final Widget child;
  final Color color;
  final double minWidth;
  final double maxWidth;
  final AlignmentGeometry alignment;
  final EdgeInsetsGeometry padding;
  final VoidCallback onTap;

  FTitleItemContainer({
    this.child,
    Color color,
    double minWidth,
    double maxWidth,
    AlignmentGeometry alignment,
    this.padding = const EdgeInsets.only(left: 5, right: 5),
    this.onTap,
  })  : assert(minWidth != null),
        this.color = color ?? Colors.transparent,
        this.minWidth = minWidth ?? FRes.dimens().minWidthTitleBarItem,
        this.maxWidth = maxWidth ?? double.infinity,
        this.alignment = alignment ?? Alignment.center;

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      child: new Container(
        color: color,
        constraints: new BoxConstraints(
            minWidth: minWidth,
            maxWidth: maxWidth,
            minHeight: double.infinity,
            maxHeight: double.infinity),
        padding: padding,
        child: new Stack(
          children: <Widget>[
            child,
          ],
          alignment: alignment,
        ),
      ),
      onTap: onTap,
    );
  }
}

/// 标题栏图标
class FTitleImage extends StatelessWidget {
  final Image image;
  final double width;
  final double height;

  FTitleImage(
    this.image, {
    double width,
    double height,
  })  : assert(image != null),
        this.width =
            image.width ?? (width ?? FRes.dimens().widthTitleBarItemImage),
        this.height =
            image.height ?? (height ?? FRes.dimens().heightTitleBarItemImage);

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: image,
      width: width,
      height: height,
    );
  }
}

/// 标题栏文字TextStyle
class FTextStyleTitleBar extends TextStyle {
  FTextStyleTitleBar({
    Color color,
    double fontSize,
  }) : super(
          color: color ?? FRes.colors().textTitleBar,
          fontSize: fontSize ?? FRes.dimens().textTitleBar,
          decoration: TextDecoration.none,
        );
}

/// 标题栏小一号文字TextStyle
class FTextStyleTitleBarSub extends FTextStyleTitleBar {
  FTextStyleTitleBarSub({
    Color color,
    double fontSize,
  }) : super(
          color: color,
          fontSize: fontSize ?? FRes.dimens().textTitleBarSub,
        );
}