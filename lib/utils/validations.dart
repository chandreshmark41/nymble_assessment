class Validations {

  static bool nonValidBannerValidate(Map<String,dynamic> value){
    if ( value["type"] == "banner" &&
        ( (!value.containsKey("image") && !value.containsKey("color") ) ||
            (!value.containsKey("header_text") || !value.containsKey("footer_text") ))
    ) {
      return true;
    }
    return false;
  }

  static bool colorBannerValidate(Map<String,dynamic> value){
    if (value["type"] == "banner" && value.containsKey("color")) {
      return true;
    }
    return false;
  }

  static bool imageBannerValidate(Map<String,dynamic> value){
    if (value["type"] == "banner" && value.containsKey("image")) {
      return true;
    }
    return false;
  }

  static bool horizontalListValidate(Map<String, dynamic> value) {
    if (value["type"] == "horizontal_list"){
      return true;
    }
    return false;
  }



}