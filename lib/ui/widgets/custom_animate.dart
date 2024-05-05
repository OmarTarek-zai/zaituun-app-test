import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class CustomAnimate extends StatefulWidget {
  const CustomAnimate({
    super.key,
    required this.builder,
    this.delay,
    this.duration,
    this.curve,
    this.begin = 0,
    this.end = 1,
    this.child = const SizedBox.shrink(),
    this.effects,
    this.onInit,
    this.onPlay,
    this.onComplete,
    this.autoPlay,
    this.controller,
    this.adapter,
  });

  final Widget Function(BuildContext, double, Widget) builder;
  final Duration? delay;
  final Duration? duration;
  final Curve? curve;
  final double begin;
  final double end;
  final Widget child;
  final List<Effect<dynamic>>? effects;
  final void Function(AnimationController)? onInit;
  final void Function(AnimationController)? onPlay;
  final void Function(AnimationController)? onComplete;
  final dynamic autoPlay;
  final AnimationController? controller;
  final Adapter? adapter;

  @override
  State<CustomAnimate> createState() => _CustomAnimateState();
}

class _CustomAnimateState extends State<CustomAnimate>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Animate(
      effects: widget.effects,
      onInit: widget.onInit,
      onPlay: widget.onPlay,
      onComplete: widget.onComplete,
      autoPlay: widget.autoPlay,
      adapter: widget.adapter,
      child: widget.child,
    ).custom(
      builder: widget.builder,
      delay: widget.delay,
      duration: widget.duration,
      curve: widget.curve,
      begin: widget.begin,
      end: widget.end,
    );
  }
}
