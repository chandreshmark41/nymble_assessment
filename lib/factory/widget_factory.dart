import 'package:nymble_assessment/factory/banner_with_color.dart';
import 'package:nymble_assessment/factory/banner_with_image.dart';
import 'package:nymble_assessment/factory/custom_widgets.dart';
import 'package:nymble_assessment/factory/horizontal_list.dart';

class WidgetFactory{

  late List<CustomWidget> listOfCustomWidget = [];

  List<CustomWidget> getListOfCustomWidget(dynamic jsonData){
    List<Map<String, dynamic>> jsonDataOfWidgets = jsonData["widgets"];

    //for jsonDataOfWidget in jsonDataOfWidget
    for (final  jsonDataOfWidget in jsonDataOfWidgets) {
      if(jsonDataOfWidget["type"] == "banner" && jsonDataOfWidget.containsKey("color")){
        listOfCustomWidget.add(BannerWithColor.fromJson(jsonDataOfWidget));
      }
      else if (jsonDataOfWidget["type"] == "banner" && jsonDataOfWidget.containsKey("image")){
        listOfCustomWidget.add(BannerWithImage.fromJson(jsonDataOfWidget));
      }

      else if (jsonDataOfWidget["type"] == "horizontal_list"){
        listOfCustomWidget.add(HorizontalList.fromJson(jsonDataOfWidget));
      }
    }
    //print(listOfCustomWidget);

    return listOfCustomWidget;
  }

}