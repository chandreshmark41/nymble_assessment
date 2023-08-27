import 'package:nymble_assessment/models/banner_with_color_model.dart';
import 'package:nymble_assessment/models/banner_with_image.dart';
import 'package:nymble_assessment/models/custom_widgets.dart';
import 'package:nymble_assessment/models/horizontal_list.dart';

class WidgetFactory{

  late List<CustomWidget> listOfCustomWidget = [];

  List<CustomWidget> getListOfCustomWidget(dynamic jsonData){
    List<Map<String, dynamic>> jsonDataOfWidgets = jsonData["widgets"];

    for (final  jsonDataOfWidget in jsonDataOfWidgets) {
      if(jsonDataOfWidget["type"] == "banner" && jsonDataOfWidget.containsKey("color")){
        listOfCustomWidget.add(BannerWithColorModel.fromJson(jsonDataOfWidget));
      }
      else if (jsonDataOfWidget["type"] == "banner" && jsonDataOfWidget.containsKey("image")){
        listOfCustomWidget.add(BannerWithImage.fromJson(jsonDataOfWidget));
      }

      else if (jsonDataOfWidget["type"] == "horizontal_list"){
        listOfCustomWidget.add(HorizontalList.fromJson(jsonDataOfWidget));
      }
    }
    return listOfCustomWidget;
  }

}