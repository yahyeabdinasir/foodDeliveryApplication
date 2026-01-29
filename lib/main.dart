import 'package:flutter/material.dart';
import 'package:my_new_test/provider/ClassQuote.dart';
import 'package:provider/provider.dart';

// entry point of the application and we wrapped the
void main() {
  runApp(
    ChangeNotifierProvider(create: (context) => Classquote(), child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const CounterWidget(),
    );
  }
}

class CounterWidget extends StatelessWidget {
  const CounterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    //  so here the counter can access all the values from the class

    //  also comsumer it's use to specify the widget that uses the provider to ensure that we change the
    //

    return Scaffold(
      body: Center(
        child: Consumer<Classquote>(
          builder: (BuildContext context, Classquote value, Widget? child) {
            // final counter = Provider.of<Classquote>(context);
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Current Value: ${value.counter}",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                ElevatedButton(
                  onPressed: () {
                    value.IncrementCount();
                  },
                  child: const Text("Click here"),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
