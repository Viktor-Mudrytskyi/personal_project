import 'dart:async';

import 'package:flutter/material.dart';

import '../../../core/core.dart';

class AppSnackBar extends StatefulWidget {
  ///Lives for two seconds before closing, add callback to the closing animation
  const AppSnackBar({
    super.key,
    required this.child,
    required this.screenSize,
    required this.onClosedAnimation,
  });
  final Widget child;
  final Size screenSize;
  final Function() onClosedAnimation;

  @override
  State<AppSnackBar> createState() => AppSnackBarState();
}

class AppSnackBarState extends State<AppSnackBar>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _moveDown;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 100),
    );
    final height = widget.screenSize.height;
    _moveDown =
        Tween(begin: -height / 2, end: -height / 2 + 50).animate(_controller);
    _controller.forward();
    _startTimer();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> _close() async {
    await _controller.reverse();
    widget.onClosedAnimation();
  }

  void _startTimer() {
    Timer(const Duration(seconds: 2), () => _close());
  }

  @override
  Widget build(BuildContext context) {
    final appTheme = context.appTheme;
    return AnimatedBuilder(
      animation: _moveDown,
      builder: (context, child) {
        return Transform.translate(
          offset: Offset(.0, _moveDown.value),
          child: child,
        );
      },
      child: Theme(
        data: ThemeData.light(),
        child: Builder(
          builder: (context) {
            return Container(
              //There is something inherently wrong with the set width and height.
              //But margin works for some reason, well, anyway, its Sunday
              // width: widget.screenSize.width,
              // height: 60,
              margin: EdgeInsets.symmetric(
                  horizontal: 18,
                  vertical: (widget.screenSize.height - 50) / 2),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: appTheme.appColors.authButtonFill,
                  boxShadow: [appTheme.appShadows.backgroundShadow]),
              child: Center(child: widget.child),
            );
          },
        ),
      ),
    );
  }
}
