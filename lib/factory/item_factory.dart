import 'package:flutter/cupertino.dart';
import 'package:nymble_assessment/components/box_item_widget.dart';
import 'package:nymble_assessment/components/circular_item_widget.dart';
import 'package:nymble_assessment/components/non_exist_item.dart';
import 'package:nymble_assessment/models/horizontal_list.dart';

class ItemFactory {

  static Widget getItemWidget(Item item){
    if(item.type == "circular_item"){
      return CircularItemWidget(item: item);
    }
    else if(item.type == "box_item"){
      return BoxItemWidget(item: item);
    }
    return NonExistItemWidget(item: item);

  }

}