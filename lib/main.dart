import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_material_pickers/flutter_material_pickers.dart';
import 'package:pretty_gauge/pretty_gauge.dart';
import 'package:sacarina/theme.dart';
import 'model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
      initial: AdaptiveThemeMode.light,
      light: buildTheme(Brightness.light),
      dark: buildTheme(Brightness.dark),
      builder: (context, theme) {
        return MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const MyHomePage(title: 'SACARINA'),
        );
      },
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
  var model = ExampleModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(widget.title)),
      ),
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.all(8.0),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              buildRadioRow(context),
              const Expanded(child: SizedBox(height: 5)),
              buildRadioRow(context),
              const Expanded(child: SizedBox(height: 5)),
              buildRadioRow(context),
              const Expanded(child: SizedBox(height: 5)),
              buildRadioRow(context),
              const Expanded(child: SizedBox(height: 5)),
              buildRadioRow(context),
              const Expanded(child: SizedBox(height: 5)),
              buildRadioRow(context),
              const Expanded(child: SizedBox(height: 5)),
              buildRadioRow(context),
              const Expanded(child: SizedBox(height: 5)),
              buildRadioRow(context),
              const Expanded(child: SizedBox(height: 5)),
              PrettyGauge(
                gaugeSize: 190,
                // https://meyerweb.com/eric/tools/color-blend/#FFEB3B:4CAF50:3:rgbd
                segments: [
                  GaugeSegment('Low', 10, Colors.red),
                  GaugeSegment('', 10, const Color.fromRGBO(246, 101, 55, 100)),
                  GaugeSegment('', 10, const Color.fromRGBO(248, 134, 56, 100)),
                  GaugeSegment('', 10, const Color.fromRGBO(251, 168, 57, 100)),
                  GaugeSegment('', 10, const Color.fromRGBO(253, 201, 58, 100)),
                  GaugeSegment('Medium High', 10, Colors.yellow),
                  GaugeSegment('', 10, const Color.fromRGBO(210, 220, 64, 100)),
                  GaugeSegment('', 10, const Color.fromRGBO(166, 205, 70, 100)),
                  GaugeSegment('', 10, const Color.fromRGBO(121, 190, 75, 100)),
                  GaugeSegment('High', 10, Colors.green),
                ],
                currentValue: 50,
                displayWidget: const Text('Score', style: TextStyle(fontSize: 16)),
              ),
            ],
          ),
        ),
      ),
/*      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), */ // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Row buildRadioRow(BuildContext context) {
    return Row(
      children: <Widget>[
        SizedBox(
          width: 150.0,
          height: 30.0,
          child: ElevatedButton(
            child: const Text('Radio Picker'),
            onPressed: () => showMaterialRadioPicker<PickerModel>(
                context: context,
                title: 'Pick Your City',
                items: ExampleModel.dieta,
                selectedItem: model.selectedUsState,
                onChanged: (value) {
                  debugPrint("El valor elegido es $value");
                  setState(() => model.selectedUsState = value);
                }
/*
              onChanged: (value) =>
                  setState(() => model.selectedUsState = value),
*/
                ),
          ),
        ),
        Expanded(
          child: Text(
            '${model.selectedUsState} (${model.selectedUsState.code})',
            textAlign: TextAlign.right,
          ),
        ),
      ],
    );
  }
}
