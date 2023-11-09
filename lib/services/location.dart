import 'package:geolocator/geolocator.dart';

class Location{
  double latitude = 0.0;
  double longitude = 0.0;

  Future<void> getCurrentLocation() async{
    LocationPermission permission;

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
    }
    try {
      Position position = await Geolocator.
      getCurrentPosition(desiredAccuracy: LocationAccuracy.high);

      latitude = position.latitude;
      longitude = position.longitude;
    }
    catch(e){

    }
  }
}
