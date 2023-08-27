import 'package:flutter/material.dart';
import 'package:nymble_assessment/components/banner_with_color_widget.dart';
import 'package:nymble_assessment/factory/custom_widgets.dart';
import 'package:nymble_assessment/factory/widget_factory.dart';
import 'package:nymble_assessment/json_data.dart';

void main() {
  runApp(const MyApp());
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
        useMaterial3: true,
      ),
      home:  const MyHomePage(title: 'Flutter Demo Home Page'),
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


  List<CustomWidget> customWidgets = [];

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_)  {
      print("coming initState");
      WidgetFactory widgetFactory = WidgetFactory();

      print(customWidgets);
      //await this.getWeatherData();
      setState(() {
        customWidgets = widgetFactory.getListOfCustomWidget(JsonData.jsonData);
      });
    });
  }


  // @override
  // void inItState(){
  //   super.initState();
  //   print("coming initState");
  //   WidgetFactory widgetFactory = WidgetFactory();
  //   customWidgets = widgetFactory.getListOfCustomWidget(JsonData.jsonData);
  //   print(customWidgets);
  //   //widgetFactory.getListOfCustomWidget(JsonData.jsonData);
  // }

  List<CustomWidget> getAllWidgets(){
    WidgetFactory widgetFactory = WidgetFactory();
    customWidgets = widgetFactory.getListOfCustomWidget(JsonData.jsonData);
    print(customWidgets);
    return customWidgets;
  }

  @override
  void dispose() {
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            for(final widgets in customWidgets)...[
              widgets.buildWidget(),
            ]
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: getAllWidgets,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
