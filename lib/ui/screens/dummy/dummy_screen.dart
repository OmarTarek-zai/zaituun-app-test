import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:zaituun/ui/screens/dummy/dummy_screen_states.dart';
import 'package:zaituun/ui/screens/dummy/dummy_view_model.dart';
import 'package:zaituun/ui/widgets/buttons/tappable_widget.dart';

class DummyScreen extends ConsumerStatefulWidget {
  const DummyScreen({super.key, required this.title});

  final String title;

  @override
  ConsumerState<DummyScreen> createState() => _DummyScreenState();
}

class _DummyScreenState extends ConsumerState<DummyScreen> {
  @override
  Widget build(BuildContext context) {
    final vm = ref.watch(dummyViewModelProvider.notifier);
    final vmState = ref.watch(dummyViewModelProvider);
    final counter = ref.watch(vm.counterProvider);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: TappableWidget(
        onTap: () => vm.secondaryFunction(context),
        child: switch (vmState) {
          SuccessfulState() => counterWidget(counter),
          ErrorState(errorMessage: String errorMessage) =>
            errorWidget(errorMessage),
          LoadingState() => loadingWidget(),
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          vm.incrementCounter(context);
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }

  // Loading widget
  // Counter widget
  // Error widget

  Widget loadingWidget() {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget counterWidget(int counter) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            color: Colors.red,
            width: 155.spMin,
            height: 42.spMin,
          ),
          const Text(
            'You have pushed the button this many times:',
          ),
          Text(
            '$counter',
            // style: Theme.of(context).textTheme.headlineMedium,
          ),
        ],
      ),
    );
  }

  Widget errorWidget(String errorMessage) {
    return Center(
      child: Text(
        errorMessage,
      ),
    );
  }
}
