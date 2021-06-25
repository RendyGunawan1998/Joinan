import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class TrackingPage extends StatefulWidget {
  _TrackingPageState createState() => _TrackingPageState();
}

class _TrackingPageState extends State<TrackingPage> {
  Completer<GoogleMapController> _controller = Completer();
  // GoogleMapController mapController;

  // void refresh() async {
  //   final center = await getUserLocation();

  //   mapController.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
  //       target: center == null ? LatLng(0, 0) : center, zoom: 15.0)));
  //   getNearbyPlaces(center);
  // }

  // Future<LatLng> getUserLocation() async {
  //   var currentLocation = <String, double>{};
  //   final location = LocationManager.Location();
  //   try {
  //     currentLocation = await location.getLocation();
  //     final lat = currentLocation["latitude"];
  //     final lng = currentLocation["longitude"];
  //     final center = LatLng(lat, lng);
  //     return center;
  //   } on Exception {
  //     currentLocation = null;
  //     return null;
  //   }
  // }

  // //cara apps cari lokasi kafe
  // void getNearbyPlaces(LatLng center) async {
  //   setState(() {
  //     this.isLoading = true;
  //     this.errorMessage = null;
  //   });

  //   final location = Location(center.latitude, center.longitude);
  //   final result =
  //       await _places.searchNearbyWithRadius(location, 500, type: 'cafe');
  //   setState(() {
  //     this.isLoading = false;
  //     if (result.status ==
  //         "OK") {
  //       this.places = result.results;

  //       Map<String, String> markerMap;
  //       markerMap = Map();

  //       result.results.forEach((f) async {
  //         Marker marker = await mapController.addMarker(MarkerOptions(
  //           position: LatLng(f.geometry.location.lat, f.geometry.location.lng),
  //           infoWindowText: InfoWindowText("${f.name}", "${f.types?.first}"),
  //         ));

  //         markerMap[marker.id] = f.placeId;

  //         mapController.onInfoWindowTapped.add((marker) {
  //           final _placeID = markerMap[marker.id];
  //           print(_placeID);
  //           // // if (_placeID != null) showDetailPlace(_placeID);
  //         });
  //       });
  //     } else {
  //       this.errorMessage = result.errorMessage;
  //     }
  //   });
  // }

  // void _onMapCreated(GoogleMapController controller) async {
  //   mapController = controller;
  //   refresh();
  // }

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  static final CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tracking Maps"),
      ),
      body: GoogleMap(
        mapType: MapType.hybrid,
        initialCameraPosition: _kGooglePlex,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _goToTheLake,
        label: Text('To the lake!'),
        icon: Icon(Icons.directions_boat),
      ),
    );
  }

  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }
}
