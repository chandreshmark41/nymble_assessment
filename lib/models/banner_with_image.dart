import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:nymble_assessment/components/banner_with_image_widget.dart';
import 'package:nymble_assessment/models/custom_widgets.dart';

class BannerWithImage extends CustomWidget {
  String? type;
  String? image;
  String? headerText;
  String? footerText;
  bool? footerIcon;

  BannerWithImage(
      {this.type,
        this.image,
        this.headerText,
        this.footerText,
        this.footerIcon});

  BannerWithImage.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    image = json['image'];
    headerText = json['header_text'];
    footerText = json['footer_text'];
    footerIcon = json['footer_icon'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['image'] = this.image;
    data['header_text'] = this.headerText;
    data['footer_text'] = this.footerText;
    data['footer_icon'] = this.footerIcon;
    return data;
  }

  @override
  Widget buildWidget() {
    // TODO: implement buildWidget
    return BannerWithImageWidget(bannerWithImage: this);
  }
}
