import 'package:flutter/cupertino.dart';
import 'package:responsible/enums/device_screen_type.dart';

DeviceScreenType getDeviceType(MediaQueryData mediaQueryData ){
  var orietation = mediaQueryData.orientation;
  double deviceWidth = 0;
  if (orietation == Orientation.landscape ){
    deviceWidth = mediaQueryData.size.height;
  }else{
    deviceWidth = mediaQueryData.size.width;
  }

  if( deviceWidth > 950 ){
    return DeviceScreenType.Desktop;
  }
  if( deviceWidth > 600 ){
    return DeviceScreenType.Tablet;
  }

  return DeviceScreenType.Mobile;
}