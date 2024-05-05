import 'package:flutter/material.dart';
import 'package:zaituun/ui/widgets/custom_animate.dart';

class ReactiveAnimate extends ImplicitlyAnimatedWidget {
  const ReactiveAnimate({
    super.key,
    required this.builder,
    required super.duration,
    super.curve,
    this.value = 1,
    this.child = const SizedBox.shrink(),
    super.onEnd,
    this.begin,
    this.delay,
    this.loop = false,
    this.loopBegin,
    this.loopEnd,
  });

  final Widget Function(BuildContext, double, Widget) builder;
  final double value;
  final Widget child;
  final double? begin;
  final Duration? delay;
  final bool loop;
  final double? loopBegin;
  final double? loopEnd;

  @override
  ImplicitlyAnimatedWidgetState<ReactiveAnimate> createState() =>
      _CustomAnimateState();
}

class _CustomAnimateState
    extends ImplicitlyAnimatedWidgetState<ReactiveAnimate> {
  Tween<double>? tween;
  late Animation<double> _tweenAnimation;

  @override
  void forEachTween(TweenVisitor<dynamic> visitor) {
    if (widget.loop && tween?.end == widget.loopBegin) {
      tween = visitor(
              tween,
              widget.loopEnd,
              (dynamic value) =>
                  Tween<double>(begin: widget.loopBegin, end: value))
          as Tween<double>?;
    } else if (widget.loop && tween?.end == widget.loopEnd) {
      tween = visitor(
              tween,
              widget.loopBegin,
              (dynamic value) =>
                  Tween<double>(begin: widget.loopEnd, end: value))
          as Tween<double>?;
    } else {
      tween = visitor(tween, widget.value, (dynamic value) {
        if (value == widget.loopEnd) {
          return Tween<double>(begin: value, end: widget.loopBegin);
        }
        if (value == widget.loopBegin) {
          return Tween<double>(begin: value, end: widget.loopEnd);
        }
        return Tween<double>(begin: value, end: widget.loopEnd);
      }) as Tween<double>?;
    }
  }

  @override
  void didUpdateTweens() {
    _tweenAnimation = animation.drive(tween!);
  }

  @override
  void initState() {
    animation.addStatusListener((status) {
      switch (status) {
        case AnimationStatus.completed:
          didUpdateWidget(widget);
          break;
        case AnimationStatus.dismissed:
        case AnimationStatus.forward:
        case AnimationStatus.reverse:
      }
    });
    if (widget.loop) {
      didUpdateWidget(widget);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    assert(
        widget.loop ? widget.loopBegin != null && widget.loopEnd != null : true,
        "loopBegin and loopEnd must be set if loop is true");
    return AnimatedBuilder(
        animation: animation,
        child: widget.child,
        builder: (context, child) {
          return widget.begin == null
              ? widget.builder(context, _tweenAnimation.value, child!)
              : CustomAnimate(
                  duration: widget.duration,
                  delay: widget.delay,
                  curve: widget.curve,
                  begin: widget.begin!,
                  end: _tweenAnimation.value,
                  child: child!,
                  builder: (context, value, child) =>
                      widget.builder(context, value, child),
                );
        });
  }
}
