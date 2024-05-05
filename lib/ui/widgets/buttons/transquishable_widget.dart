import 'package:sprung/sprung.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:zaituun/ui/widgets/reactive_animate.dart';

// ignore: must_be_immutable
class TransquishableWidget extends StatefulWidget {
  TransquishableWidget(
      {super.key,
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
      this.inCurve,
      this.backCurve,
      this.scaleBackDuration = const Duration(milliseconds: 400),
      this.scaleInDuration = const Duration(milliseconds: 100),
      this.fadeOutDuration = const Duration(milliseconds: 75),
      this.fadeInDuration = const Duration(milliseconds: 75),
      this.tapScale = 0.95,
      this.tapOpacity = 0.8,
      this.behavior = HitTestBehavior.translucent,
      this.onPanEnd,
      this.enabled = true});
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
  Curve? inCurve;
  Curve? backCurve;
  final Duration scaleBackDuration;
  final Duration scaleInDuration;
  final Duration fadeOutDuration;
  final Duration fadeInDuration;
  final double tapScale;
  final double tapOpacity;
  final HitTestBehavior behavior;
  final bool enabled;

  @override
  State<TransquishableWidget> createState() => _TransquishableWidgetState();
}

class _TransquishableWidgetState extends State<TransquishableWidget> {
  double scale = 1;
  double opacity = 1;
  late Duration scaleDuration = widget.scaleInDuration;
  late Duration fadeDuration = widget.fadeInDuration;
  @override
  Widget build(BuildContext context) {
    widget.inCurve ??= Sprung.overDamped.flipped;
    widget.backCurve ??= Sprung.overDamped;
    Curve curve = widget.backCurve as Curve;
    return Listener(
      behavior: widget.behavior,
      child: GestureDetector(
        behavior: widget.behavior,
        onTapCancel: () {
          setState(() {
            scaleDuration = widget.scaleBackDuration;
            fadeDuration = widget.fadeOutDuration;
            curve = widget.backCurve as Curve;
            scale = 1;
            opacity = 1;
            if (widget.onTapCancel != null) {
              widget.onTapCancel!();
            }
          });
        },
        onDoubleTap: widget.enabled ? widget.onDoubleTap : null,
        onDoubleTapCancel: widget.onDoubleTapCancel,
        onDoubleTapDown: widget.enabled ? widget.onDoubleTapDown : null,
        onForcePressEnd: widget.onForcePressEnd,
        onForcePressPeak: widget.onForcePressPeak,
        onForcePressStart: widget.enabled ? widget.onForcePressStart : null,
        onForcePressUpdate: widget.enabled ? widget.onForcePressUpdate : null,
        onHorizontalDragCancel: widget.onHorizontalDragCancel,
        onHorizontalDragDown:
            widget.enabled ? widget.onHorizontalDragDown : null,
        onHorizontalDragEnd: widget.enabled ? widget.onHorizontalDragEnd : null,
        onHorizontalDragStart:
            widget.enabled ? widget.onHorizontalDragStart : null,
        onHorizontalDragUpdate:
            widget.enabled ? widget.onHorizontalDragUpdate : null,
        onLongPress: widget.enabled ? widget.onLongPress : null,
        onLongPressCancel: widget.onLongPressCancel,
        onLongPressDown: widget.enabled ? widget.onLongPressDown : null,
        onLongPressEnd: widget.enabled ? widget.onLongPressEnd : null,
        onLongPressMoveUpdate:
            widget.enabled ? widget.onLongPressMoveUpdate : null,
        onLongPressStart: widget.enabled ? widget.onLongPressStart : null,
        onLongPressUp: widget.enabled ? widget.onLongPressUp : null,
        onPanCancel: widget.onPanCancel,
        onPanDown: widget.enabled ? widget.onPanDown : null,
        onPanEnd: widget.enabled ? widget.onPanEnd : null,
        onPanStart: widget.enabled ? widget.onPanStart : null,
        onPanUpdate: widget.enabled ? widget.onPanUpdate : null,
        onScaleEnd: widget.enabled ? widget.onScaleEnd : null,
        onScaleStart: widget.enabled ? widget.onScaleStart : null,
        onScaleUpdate: widget.enabled ? widget.onScaleUpdate : null,
        onSecondaryLongPress:
            widget.enabled ? widget.onSecondaryLongPress : null,
        onSecondaryLongPressCancel: widget.onSecondaryLongPressCancel,
        onSecondaryLongPressDown:
            widget.enabled ? widget.onLongPressDown : null,
        onSecondaryLongPressEnd:
            widget.enabled ? widget.onSecondaryLongPressEnd : null,
        onSecondaryLongPressMoveUpdate:
            widget.enabled ? widget.onSecondaryLongPressMoveUpdate : null,
        onSecondaryLongPressStart:
            widget.enabled ? widget.onSecondaryLongPressStart : null,
        onSecondaryLongPressUp:
            widget.enabled ? widget.onSecondaryLongPressUp : null,
        onSecondaryTap: widget.enabled ? widget.onSecondaryTap : null,
        onSecondaryTapCancel: widget.onSecondaryTapCancel,
        onSecondaryTapDown: widget.enabled ? widget.onSecondaryTapDown : null,
        onSecondaryTapUp: widget.enabled ? widget.onSecondaryTapUp : null,
        onTap: widget.enabled ? widget.onTap : null,
        onTapDown: widget.enabled ? widget.onTapDown : null,
        onTapUp: widget.enabled ? widget.onTapUp : null,
        onTertiaryLongPress: widget.enabled ? widget.onTertiaryLongPress : null,
        onTertiaryLongPressCancel: widget.onTertiaryLongPressCancel,
        onTertiaryLongPressDown:
            widget.enabled ? widget.onTertiaryLongPressDown : null,
        onTertiaryLongPressEnd:
            widget.enabled ? widget.onTertiaryLongPressEnd : null,
        onTertiaryLongPressMoveUpdate:
            widget.enabled ? widget.onTertiaryLongPressMoveUpdate : null,
        onTertiaryLongPressStart:
            widget.enabled ? widget.onTertiaryLongPressStart : null,
        onTertiaryLongPressUp:
            widget.enabled ? widget.onTertiaryLongPressUp : null,
        onTertiaryTapCancel: widget.onTertiaryTapCancel,
        onTertiaryTapDown: widget.enabled ? widget.onTertiaryTapDown : null,
        onTertiaryTapUp: widget.enabled ? widget.onTertiaryTapUp : null,
        onVerticalDragCancel: widget.onVerticalDragCancel,
        onVerticalDragDown: widget.enabled ? widget.onVerticalDragDown : null,
        onVerticalDragEnd: widget.enabled ? widget.onVerticalDragEnd : null,
        onVerticalDragStart: widget.enabled ? widget.onVerticalDragStart : null,
        onVerticalDragUpdate:
            widget.enabled ? widget.onVerticalDragUpdate : null,
        child: AnimatedOpacity(
          duration: fadeDuration,
          opacity: opacity,
          child: ReactiveAnimate(
            value: scale,
            duration: scaleDuration,
            curve: curve,
            builder: (context, value, child) {
              return Transform.scale(
                scale: value,
                child: child,
              );
            },
            child: widget.child,
          ),
        ),
      ),
      onPointerDown: (details) {
        if (!widget.enabled) return;
        setState(() {
          scaleDuration = widget.scaleInDuration;
          fadeDuration = widget.fadeInDuration;
          scale = widget.tapScale;
          opacity = widget.tapOpacity;
          curve = widget.inCurve as Curve;
        });
      },
      onPointerUp: (details) {
        setState(() {
          scaleDuration = widget.scaleBackDuration;
          fadeDuration = widget.fadeOutDuration;
          scale = 1;
          opacity = 1;
          curve = widget.backCurve as Curve;
        });
      },
    );
  }
}
