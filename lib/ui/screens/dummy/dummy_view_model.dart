import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:zaituun/ui/screens/dummy/dummy_screen_states.dart';

final dummyViewModelProvider =
    StateNotifierProvider<DummyViewModel, DummyScreenState>((ref) {
  return DummyViewModel(ref);
});

class DummyViewModel extends StateNotifier<DummyScreenState> {
  DummyViewModel(this.ref) : super(const SuccessfulState());

  Ref ref;

  final counterProvider = StateProvider<int>((ref) {
    return 0;
  });

  Future<void> incrementCounter(BuildContext context) async {
    state = const LoadingState();
    Future.delayed(Duration(seconds: 1), () {
      ref.read(counterProvider.notifier).state++;
      state = const SuccessfulState();
    });
  }

  Future<void> secondaryFunction(BuildContext context) async {}
}
