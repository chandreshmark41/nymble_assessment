import 'package:flutter/material.dart';
import 'package:nymble_assessment/api_calls/dynamic_widget_service.dart';
import 'package:nymble_assessment/models/custom_widgets.dart';
import 'package:nymble_assessment/factory/widget_factory.dart';

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

  late DynamicWidgetService dynamicWidgetService;
  late WidgetFactory widgetFactory;


  List<CustomWidget> customWidgets = [];

  @override
  void initState() {

    WidgetsBinding.instance.addPostFrameCallback((_)  {
      widgetFactory = WidgetFactory();
      dynamicWidgetService = DynamicWidgetService();
      customWidgets =  widgetFactory.getListOfCustomWidget(dynamicWidgetService.getDynamicWidgetJson());

      setState(() {

      });
    });
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
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
