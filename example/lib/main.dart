import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:phone_number_text_input_formatter/phone_number_text_input_formatter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Phone Number Text Input Formatter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ExamplePage(title: 'Phone Number Text Input Formatter Demo Home Page'),
    );
  }
}

class ExamplePage extends StatelessWidget {
  final String title;
  const ExamplePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                decoration: const InputDecoration(
                  labelText: 'All supported countries',
                  helperText: ' '
                ),
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'[0-9,+]')),
                  const PhoneNumberTextInputFormatter(prefix: '+'),
                ],
              ),
              TextField(
                decoration: const InputDecoration(
                  labelText: 'US',
                  hintText: '+1 (000) 000-0000',
                  helperText: ' '
                ),
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'[0-9,+]')),
                  const NationalPhoneNumberTextInputFormatter.US(prefix: '+'),
                ],
              ),
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Denmark',
                  hintText: '+45 00 000 0000',
                  helperText: 'Default format'
                ),
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'[0-9,+]')),
                  NationalPhoneNumberTextInputFormatter.DK(prefix: '+'),
                ],
              ),
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Custom',
                  hintText: '+28 [0000] 000-000',
                ),
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'[0-9,+]')),
                  const NationalPhoneNumberTextInputFormatter(
                    prefix: '+',
                    countryCode: '28',
                    groups: [
                      (length: 4, leading: ' [', trailing: '] '),
                      (length: 3, leading: '', trailing: '-'),
                      (length: 3, leading: '', trailing: ' '),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
