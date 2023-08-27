import 'package:flutter/material.dart';

import '../api_calls/dynamic_widget_service.dart';
import '../factory/widget_factory.dart';
import '../models/custom_widgets.dart';

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