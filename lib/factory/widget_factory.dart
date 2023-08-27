import 'package:nymble_assessment/models/banner_with_color.dart';
import 'package:nymble_assessment/models/banner_with_error.dart';
import 'package:nymble_assessment/models/banner_with_image.dart';
import 'package:nymble_assessment/models/custom_widgets.dart';
import 'package:nymble_assessment/models/horizontal_list.dart';
import 'package:nymble_assessment/utils/validations.dart';

class WidgetFactory{

  late List<CustomWidget> listOfCustomWidget = [];

  List<CustomWidget> getListOfCustomWidget(dynamic jsonData){
    List<Map<String, dynamic>> jsonDataOfWidgets = jsonData["widgets"];

    for (final  jsonDataOfWidget in jsonDataOfWidgets) {
      if ( Validations.nonValidBannerValidate(jsonDataOfWidget) )
      {
        listOfCustomWidget.add(BannerWithError());
      }

      else if( Validations.colorBannerValidate(jsonDataOfWidget)){
        listOfCustomWidget.add(BannerWithColor.fromJson(jsonDataOfWidget));
      }
      else if (Validations.imageBannerValidate(jsonDataOfWidget)){
        listOfCustomWidget.add(BannerWithImage.fromJson(jsonDataOfWidget));
      }
      else if (Validations.horizontalListValidate(jsonDataOfWidget)){
        listOfCustomWidget.add(HorizontalList.fromJson(jsonDataOfWidget));
      }
    }
    return listOfCustomWidget;
  }

}