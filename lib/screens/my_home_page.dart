import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
    super.initState();
    widgetFactory = WidgetFactory();
    dynamicWidgetService = DynamicWidgetService();
    customWidgets =  widgetFactory.getListOfCustomWidget(dynamicWidgetService.getDynamicWidgetJson());

  }

  @override
  void dispose() {
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF141414),
        title: Text(widget.title,
          style: GoogleFonts.breeSerif(fontSize: 24, color: Colors.white, fontWeight: FontWeight.w400),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            for(final widgets in customWidgets)...[
              Padding(padding: EdgeInsets.all(20),
              child: widgets.buildWidget(),
              )
            ]
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}