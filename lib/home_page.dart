import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:stacked/stacked.dart';
import 'package:staked_demo/home_view_model.dart';


class MyHomePage extends StackedView<HomeViewModel> {

  const MyHomePage({super.key});

  @override
  Widget builder(BuildContext context, HomeViewModel viewModel, Widget? child) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(viewModel.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              viewModel.getCounter.toString(),
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          viewModel.increment();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  @override
  HomeViewModel viewModelBuilder(BuildContext context) {
    String title = ModalRoute.of(context)?.settings.arguments as String;
    return HomeViewModel(title: title);
  }
}
