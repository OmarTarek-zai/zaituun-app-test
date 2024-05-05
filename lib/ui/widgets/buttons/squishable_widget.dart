import 'dart:async';

import 'package:sprung/sprung.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:zaituun/ui/widgets/reactive_animate.dart';

// ignore: must_be_immutable
class SquishableWidget extends StatefulWidget {
  const SquishableWidget({
    super.key,
    this.onDoubleTap,
    this.onDoubleTapCancel,
    this.onDoubleTapDown,
    this.onForcePressEnd,
    this.onForcePressPeak,
    this.onForcePressStart,
    this.onForcePressUpdate,
    this.onHorizontalDragCancel,
    this.onHorizontalDragDown,
    this.onHorizontalDragEnd,
    this.onHorizontalDragStart,
    this.onHorizontalDragUpdate,
    this.onLongPress,
    this.onLongPressCancel,
    this.onLongPressDown,
    this.onLongPressEnd,
    this.onLongPressMoveUpdate,
    this.onLongPressStart,
    this.onLongPressUp,
    this.onPanCancel,
    this.onPanDown,
    this.onPanStart,
    this.onPanUpdate,
    this.onScaleEnd,
    this.onScaleStart,
    this.onScaleUpdate,
    this.onSecondaryLongPress,
    this.onSecondaryLongPressCancel,
    this.onSecondaryLongPressDown,
    this.onSecondaryLongPressEnd,
    this.onSecondaryLongPressMoveUpdate,
    this.onSecondaryLongPressStart,
    this.onSecondaryLongPressUp,
    this.onSecondaryTap,
    this.onSecondaryTapCancel,
    this.onSecondaryTapDown,
    this.onSecondaryTapUp,
    required this.onTap,
    this.onTapCancel,
    this.onTapDown,
    this.onTapUp,
    this.onTertiaryLongPress,
    this.onTertiaryLongPressCancel,
    this.onTertiaryLongPressDown,
    this.onTertiaryLongPressEnd,
    this.onTertiaryLongPressMoveUpdate,
    this.onTertiaryLongPressStart,
    this.onTertiaryLongPressUp,
    this.onTertiaryTapCancel,
    this.onTertiaryTapDown,
    this.onTertiaryTapUp,
    this.onVerticalDragCancel,
    this.onVerticalDragDown,
    this.onVerticalDragEnd,
    this.onVerticalDragStart,
    this.onVerticalDragUpdate,
    required this.child,
    this.scaleInCurve,
    this.scaleBackCurve,
    this.scaleBackDuration = const Duration(milliseconds: 500),
    this.scaleInDuration = const Duration(milliseconds: 150),
    this.tapScale = 0.9,
    this.behavior = HitTestBehavior.translucent,
    this.onPanEnd,
    this.enabled = true,
    this.loading = false,
    this.loadingScale = 0.9,
  });
  final Function()? onDoubleTap;
  final Function()? onDoubleTapCancel;
  final Function(TapDownDetails)? onDoubleTapDown;
  final Function(ForcePressDetails)? onForcePressEnd;
  final Function(ForcePressDetails)? onForcePressPeak;
  final Function(ForcePressDetails)? onForcePressStart;
  final Function(ForcePressDetails)? onForcePressUpdate;
  final Function()? onHorizontalDragCancel;
  final Function(DragDownDetails)? onHorizontalDragDown;
  final Function(DragEndDetails)? onHorizontalDragEnd;
  final Function(DragStartDetails)? onHorizontalDragStart;
  final Function(DragUpdateDetails)? onHorizontalDragUpdate;
  final Function()? onLongPress;
  final Function()? onLongPressCancel;
  final Function(LongPressDownDetails)? onLongPressDown;
  final Function(LongPressEndDetails)? onLongPressEnd;
  final Function(LongPressMoveUpdateDetails)? onLongPressMoveUpdate;
  final Function(LongPressStartDetails)? onLongPressStart;
  final Function()? onLongPressUp;
  final Function()? onPanCancel;
  final Function(DragEndDetails)? onPanEnd;
  final Function(DragDownDetails)? onPanDown;
  final Function(DragStartDetails)? onPanStart;
  final Function(DragUpdateDetails)? onPanUpdate;
  final Function(ScaleEndDetails)? onScaleEnd;
  final Function(ScaleStartDetails)? onScaleStart;
  final Function(ScaleUpdateDetails)? onScaleUpdate;
  final Function()? onSecondaryLongPress;
  final Function()? onSecondaryLongPressCancel;
  final Function(LongPressDownDetails)? onSecondaryLongPressDown;
  final Function(LongPressEndDetails)? onSecondaryLongPressEnd;
  final Function(LongPressMoveUpdateDetails)? onSecondaryLongPressMoveUpdate;
  final Function(LongPressStartDetails)? onSecondaryLongPressStart;
  final Function()? onSecondaryLongPressUp;
  final Function()? onSecondaryTap;
  final Function()? onSecondaryTapCancel;
  final Function(TapDownDetails)? onSecondaryTapDown;
  final Function(TapUpDetails)? onSecondaryTapUp;
  final Function() onTap;
  final Function()? onTapCancel;
  final Function(TapDownDetails)? onTapDown;
  final Function(TapUpDetails)? onTapUp;
  final Function()? onTertiaryLongPress;
  final Function()? onTertiaryLongPressCancel;
  final Function(LongPressDownDetails)? onTertiaryLongPressDown;
  final Function(LongPressEndDetails)? onTertiaryLongPressEnd;
  final Function(LongPressMoveUpdateDetails)? onTertiaryLongPressMoveUpdate;
  final Function(LongPressStartDetails)? onTertiaryLongPressStart;
  final Function()? onTertiaryLongPressUp;
  final Function()? onTertiaryTapCancel;
  final Function(TapDownDetails)? onTertiaryTapDown;
  final Function(TapUpDetails)? onTertiaryTapUp;
  final Function()? onVerticalDragCancel;
  final Function(DragDownDetails)? onVerticalDragDown;
  final Function(DragEndDetails)? onVerticalDragEnd;
  final Function(DragStartDetails)? onVerticalDragStart;
  final Function(DragUpdateDetails)? onVerticalDragUpdate;
  final Widget child;
  final Curve? scaleInCurve;
  final Curve? scaleBackCurve;
  final Duration scaleBackDuration;
  final Duration scaleInDuration;
  final double tapScale;
  final HitTestBehavior behavior;
  final bool enabled;
  final bool loading;
  final double loadingScale;

  @override
  State<SquishableWidget> createState() => _SquishableWidgetState();
}

class _SquishableWidgetState extends State<SquishableWidget> {
  double scale = 1;
  late Duration scaleDuration = widget.scaleInDuration;
  Completer futureCompleter = Completer<void>();

  @override
  Widget build(BuildContext context) {
    final scaleInCurve = widget.scaleInCurve ?? Sprung.overDamped.flipped;
    final scaleBackCurve = widget.scaleBackCurve ?? Sprung.overDamped;
    Curve curve = scaleBackCurve;
    final enabled = widget.enabled && !widget.loading;

    return Listener(
      behavior: widget.behavior,
      child: GestureDetector(
        behavior: widget.behavior,
        onTapCancel: () {
          setState(() {
            scaleDuration = widget.scaleBackDuration;
            curve = scaleBackCurve;
            scale = 1;
            if (widget.onTapCancel != null) {
              widget.onTapCancel!();
            }
          });
        },
        onDoubleTap: enabled
            ? () async {
                await widget.onDoubleTap?.call();
                futureCompleter.complete();
                futureCompleter = Completer<void>();
              }
            : null,
        onDoubleTapCancel: widget.onDoubleTapCancel,
        onDoubleTapDown: enabled ? widget.onDoubleTapDown : null,
        onForcePressEnd: widget.onForcePressEnd,
        onForcePressPeak: widget.onForcePressPeak,
        onForcePressStart: enabled ? widget.onForcePressStart : null,
        onForcePressUpdate: enabled ? widget.onForcePressUpdate : null,
        onHorizontalDragCancel: widget.onHorizontalDragCancel,
        onHorizontalDragDown: enabled ? widget.onHorizontalDragDown : null,
        onHorizontalDragEnd: enabled ? widget.onHorizontalDragEnd : null,
        onHorizontalDragStart: enabled ? widget.onHorizontalDragStart : null,
        onHorizontalDragUpdate: enabled ? widget.onHorizontalDragUpdate : null,
        onLongPress: enabled
            ? () async {
                await widget.onLongPress?.call();
                futureCompleter.complete();
                futureCompleter = Completer<void>();
              }
            : null,
        onLongPressCancel: widget.onLongPressCancel,
        onLongPressDown: enabled ? widget.onLongPressDown : null,
        onLongPressEnd: enabled ? widget.onLongPressEnd : null,
        onLongPressMoveUpdate: enabled ? widget.onLongPressMoveUpdate : null,
        onLongPressStart: enabled ? widget.onLongPressStart : null,
        onLongPressUp: enabled ? widget.onLongPressUp : null,
        onPanCancel: widget.onPanCancel,
        onPanDown: enabled ? widget.onPanDown : null,
        onPanEnd: enabled ? widget.onPanEnd : null,
        onPanStart: enabled ? widget.onPanStart : null,
        onPanUpdate: enabled ? widget.onPanUpdate : null,
        onScaleEnd: enabled ? widget.onScaleEnd : null,
        onScaleStart: enabled ? widget.onScaleStart : null,
        onScaleUpdate: enabled ? widget.onScaleUpdate : null,
        onSecondaryLongPress: enabled
            ? () async {
                await widget.onSecondaryLongPress?.call();
                futureCompleter.complete();
                futureCompleter = Completer<void>();
              }
            : null,
        onSecondaryLongPressCancel: widget.onSecondaryLongPressCancel,
        onSecondaryLongPressDown: enabled ? widget.onLongPressDown : null,
        onSecondaryLongPressEnd:
            enabled ? widget.onSecondaryLongPressEnd : null,
        onSecondaryLongPressMoveUpdate:
            enabled ? widget.onSecondaryLongPressMoveUpdate : null,
        onSecondaryLongPressStart:
            enabled ? widget.onSecondaryLongPressStart : null,
        onSecondaryLongPressUp: enabled ? widget.onSecondaryLongPressUp : null,
        onSecondaryTap: enabled
            ? () async {
                await widget.onSecondaryTap?.call();
                futureCompleter.complete();
                futureCompleter = Completer<void>();
              }
            : null,
        onSecondaryTapCancel: widget.onSecondaryTapCancel,
        onSecondaryTapDown: enabled ? widget.onSecondaryTapDown : null,
        onSecondaryTapUp: enabled ? widget.onSecondaryTapUp : null,
        onTap: enabled
            ? () async {
                await widget.onTap.call();
                futureCompleter.complete();
                futureCompleter = Completer<void>();
              }
            : null,
        onTapDown: enabled ? widget.onTapDown : null,
        onTapUp: enabled ? widget.onTapUp : null,
        onTertiaryLongPress: enabled
            ? () async {
                await widget.onTertiaryLongPress?.call();
                futureCompleter.complete();
                futureCompleter = Completer<void>();
              }
            : null,
        onTertiaryLongPressCancel: widget.onTertiaryLongPressCancel,
        onTertiaryLongPressDown:
            enabled ? widget.onTertiaryLongPressDown : null,
        onTertiaryLongPressEnd: enabled ? widget.onTertiaryLongPressEnd : null,
        onTertiaryLongPressMoveUpdate:
            enabled ? widget.onTertiaryLongPressMoveUpdate : null,
        onTertiaryLongPressStart:
            enabled ? widget.onTertiaryLongPressStart : null,
        onTertiaryLongPressUp: enabled ? widget.onTertiaryLongPressUp : null,
        onTertiaryTapCancel: widget.onTertiaryTapCancel,
        onTertiaryTapDown: enabled ? widget.onTertiaryTapDown : null,
        onTertiaryTapUp: enabled ? widget.onTertiaryTapUp : null,
        onVerticalDragCancel: widget.onVerticalDragCancel,
        onVerticalDragDown: enabled ? widget.onVerticalDragDown : null,
        onVerticalDragEnd: enabled ? widget.onVerticalDragEnd : null,
        onVerticalDragStart: enabled ? widget.onVerticalDragStart : null,
        onVerticalDragUpdate: enabled ? widget.onVerticalDragUpdate : null,
        child: ReactiveAnimate(
            value: scale,
            duration: scaleDuration,
            loop: widget.loading,
            loopBegin: 1,
            loopEnd: widget.loadingScale,
            curve: curve,
            builder: (context, value, child) {
              return Transform.scale(
                scale: value,
                child: child,
              );
            },
            child: widget.child),
      ),
      onPointerDown: (details) {
        if (!enabled) return;
        setState(() {
          scaleDuration = widget.scaleInDuration;
          curve = scaleInCurve;
          scale = widget.tapScale;
        });
      },
      onPointerUp: (details) {
        setState(() {
          scaleDuration = widget.scaleBackDuration;
          curve = scaleBackCurve;
          futureCompleter.future.then((value) {
            setState(() {
              scale = 1;
            });
          });
        });
      },
    );
  }
}
