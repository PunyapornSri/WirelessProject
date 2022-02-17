import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class SimpleMap extends StatefulWidget {
  @override
  _SimpleMapState createState() => _SimpleMapState();
}

class _SimpleMapState extends State<SimpleMap> {
  static final LatLng _kMapCenter =
      LatLng(13.844711, 100.733340);

  static final LatLng _kMapCenterAK =
      LatLng(13.846789, 100.734274);

  static final CameraPosition _kInitialPosition =
      CameraPosition(target: _kMapCenter, zoom: 11.0, tilt: 0, bearing: 0);

  static final CameraPosition _kInitialPositionAK =
      CameraPosition(target: _kMapCenterAK, zoom: 18.0, tilt: 70, bearing: 0);

  GoogleMapController _controller;

  Future<void> onMapCreated(GoogleMapController controller) async {
    _controller = controller;
    String value = await DefaultAssetBundle.of(context)
        .loadString('assets/map_style.json');
    _controller.setMapStyle(value);
  }

  void onCameraMove(CameraPosition cameraPosition) {
    debugPrint('${cameraPosition}');
  }

  Set<Marker> _createMarker() {
    return {
      // Marker(
      //     markerId: MarkerId("marker_1"),
      //     position: _kMapCenter,
      //     infoWindow: InfoWindow(title: 'Marker 1'),
      //     rotation: 90),
      Marker(
        markerId: MarkerId("marker_2"),
        position: LatLng(13.842455, 100.733606),
      ),
    };
  }

  Set<Circle> _createCircle() {
    return {
      // Circle(
      //   circleId: CircleId('1'),
      //   consumeTapEvents: true,
      //   strokeColor: Colors.teal,
      //   fillColor: Colors.blue.withOpacity(0.2),
      //   strokeWidth: 2,
      //   center: _kMapCenter,
      //   radius: 5000,
      // ),
      Circle(
        circleId: CircleId('2'),
        consumeTapEvents: true,
        strokeColor: Colors.teal,
        fillColor: Colors.blue.withOpacity(0.2),
        strokeWidth: 2,
        center: LatLng(13.842455, 100.733606),
        radius: 6000,
      ),
    };
  }

  Set<Polygon> _createPolygon() {
    return {
      Polygon(
          polygonId: PolygonId('2'),
          consumeTapEvents: true,
          strokeColor: Colors.black,
          strokeWidth: 2,
          fillColor: Colors.teal,
          points: _createPoints())
    };
  }

  Set<Polyline> _createPolyline() {
    return {
      Polyline(
        polylineId: PolylineId('1'),
        consumeTapEvents: true,
        color: Colors.black,
        width: 5,
        points: _createPoints(),
      ),
    };
  }

  List<LatLng> _createPoints() {
    final List<LatLng> points = <LatLng>[];
    points.add(LatLng(13.847221, 100.738153));
    points.add(LatLng(13.847791, 100.737247));
    points.add(LatLng(13.842455, 100.733606));
    //points.add(LatLng(19.03434603366356, 72.8464128479929));
    points.add(LatLng(13.842455, 100.733606));
    return points;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Your Current Location'),
        ),
        body: Builder(builder: (BuildContext context) {
          return GoogleMap(
            initialCameraPosition: _kInitialPosition,
            onMapCreated: onMapCreated,
            mapType: MapType.normal,
            myLocationEnabled: true,
            myLocationButtonEnabled: true,
            compassEnabled: true,
            markers: _createMarker(),
            mapToolbarEnabled: false,
            buildingsEnabled: true,
            onTap: (latLong) {
              Scaffold.of(context).showSnackBar(SnackBar(
                content: Text(
                    'Tapped location LatLong is (${latLong.latitude},${latLong.longitude})'),
              ));
            },
            rotateGesturesEnabled: true,
            scrollGesturesEnabled: true,
            zoomControlsEnabled: true,
            zoomGesturesEnabled: true,
            tiltGesturesEnabled: true,
            liteModeEnabled: false,
            //circles: _createCircle(),
            //polygons: _createPolygon(),
            //polylines: _createPolyline(),
            trafficEnabled: false,
            onCameraMove: onCameraMove,
          );
        }));
  }
}
