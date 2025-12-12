import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:vollect/app/classes/beneficiary.dart';
import 'package:vollect/core/enums.dart';
import 'package:vollect/di.dart';

class ResidenceInfoPage extends StatefulWidget {
  const ResidenceInfoPage({super.key, required this.report});

  final Map<String, dynamic> report;

  @override
  State<ResidenceInfoPage> createState() => _ResidenceInfoPageState();
}

class _ResidenceInfoPageState extends State<ResidenceInfoPage> with AutomaticKeepAliveClientMixin {
  final _dropDownSearchKey1 = GlobalKey<DropdownSearchState>();
  final _dropDownSearchKey2 = GlobalKey<DropdownSearchState>();

  final ddfn1 = FocusScopeNode();
  final ddfn2 = FocusScopeNode();

  static const _gap = 10.0;

  ResidenceType? originalResidenceType;
  // String? originalResidenceAddress;
  Village? originalResidenceRegion;
  ResidenceStatus? originalResidenceStatus;

  CurrentResidenceType? currentResidenceType;
  // String? currentResidenceAddress;
  Village? currentResidenceRegion;

  String? longitudeX, latitudeY, altitudeZ;

  @override
  void initState() {
    super.initState();

    originalResidenceRegion =
        ServiceLocator.villages.where((v) => v.name == widget.report['originalResidenceRegion']).firstOrNull;

    currentResidenceRegion =
        ServiceLocator.villages.where((v) => v.name == widget.report['currentResidenceRegion']).firstOrNull;

    originalResidenceType =
        ResidenceType.values.where((rt) => rt.name == widget.report['originalResidenceType']).firstOrNull;

    originalResidenceStatus =
        ResidenceStatus.values.where((rt) => rt.name == widget.report['originalResidenceStatus']).firstOrNull;

    currentResidenceType =
        CurrentResidenceType.values.where((rt) => rt.name == widget.report['currentResidenceType']).firstOrNull;

    final location = (widget.report['creationLocation'] as String?)?.split(',');
    if (location != null) {
      longitudeX = location[0];
      latitudeY = location[1];
      if (location.length == 3) {
        altitudeZ = location[2];
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 30.0),
      child: Column(
        children: [
          Row(
            children: [
              // -----------------------------------

              //  O R I G I N A L   R E S - R E G I O N

              // -----------------------------------
              Expanded(
                child: Column(
                  children: [
                    FocusScope(
                      node: ddfn1,
                      child: DropdownSearch<Village>(
                        key: _dropDownSearchKey1,
                        suffixProps: const DropdownSuffixProps(clearButtonProps: ClearButtonProps()),
                        decoratorProps: const DropDownDecoratorProps(
                          decoration: InputDecoration(
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            label: Text("مكان الاقامة الاصلي"),
                          ),
                        ),
                        selectedItem: originalResidenceRegion,
                        items: (s, l) => ServiceLocator.villages,
                        popupProps: const PopupProps.menu(
                          title: Text("مكان الاقامة الاصلي"),
                          searchDelay: Duration.zero,
                          showSearchBox: true,
                        ),
                        onChanged: (value) {
                          setState(() {
                            originalResidenceRegion = value;
                          });
                          ddfn1.requestFocus();
                        },
                        onSaved: (newValue) => widget.report.addAll(
                          {
                            "originalResidenceRegion_code": newValue?.code,
                            // "originalResidenceRegion": newValue?.name,
                          },
                        ),
                        compareFn: (item1, item2) => item1.code == item2.code,
                        itemAsString: (item) => item.name,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: _gap),

              // -----------------------------------

              //  C U R R E N T   R E S - R E G I O N

              // -----------------------------------
              Expanded(
                child: Column(
                  children: [
                    FocusScope(
                      node: ddfn2,
                      child: DropdownSearch<Village>(
                        key: _dropDownSearchKey2,
                        decoratorProps: const DropDownDecoratorProps(
                          decoration: InputDecoration(
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            label: Text("مكان الاقامة الحالي"),
                          ),
                        ),
                        selectedItem: currentResidenceRegion,
                        items: (s, l) => ServiceLocator.villages,
                        popupProps: const PopupProps.menu(
                          title: Center(child: Text("مكان الاقامة الحالي")),
                          searchDelay: Duration.zero,
                          showSearchBox: true,
                        ),
                        onChanged: (value) {
                          setState(() {
                            currentResidenceRegion = value;
                          });
                          ddfn2.requestFocus();
                        },
                        onSaved: (newValue) => widget.report.addAll({
                          "currentResidenceRegion_code": newValue?.code,
                          // "currentResidenceRegion": newValue?.name,
                        }),
                        compareFn: (item1, item2) => item1.code == item2.code,
                        itemAsString: (item) => item.name,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: _gap),

          // -----------------------------------

          //  O R I G I N A L   R E S - A D D R E S S

          // -----------------------------------
          TextFormField(
            controller: null,
            initialValue: widget.report['originalResidenceAddress'],
            textInputAction: TextInputAction.next,
            minLines: 1,
            maxLines: null,
            decoration: const InputDecoration(
              label: Text("العنوان التفصيلي للاقامة الاصلية"),
            ),
            onSaved: (newValue) => widget.report.addAll({"originalResidenceAddress": newValue}),
          ),
          const SizedBox(height: _gap),
          // -----------------------------------

          //  C U R R E N T   R E S - A D D R E S S

          // -----------------------------------
          TextFormField(
            controller: null,
            initialValue: widget.report['currentResidenceAddress'],
            textInputAction: TextInputAction.next,
            minLines: 1,
            maxLines: null,
            decoration: const InputDecoration(
              label: Text("العنوان التفصيلي للاقامة الحالية"),
            ),
            onSaved: (newValue) => widget.report.addAll({"currentResidenceAddress": newValue}),
          ),
          const SizedBox(height: _gap),

          // -----------------------------------

          //  O R I G I N A L   R E S - T Y P E

          // -----------------------------------
          DropdownButtonFormField<ResidenceType>(
            value: originalResidenceType,
            items: ResidenceType.values
                .map((rt) => DropdownMenuItem(
                      value: rt,
                      child: Text(rt.arName),
                    ))
                .toList(),
            decoration: const InputDecoration(
              label: Text("نوع السكن الاصلي"),
            ),
            onChanged: (value) => setState(() => originalResidenceType = value ?? originalResidenceType),
            onSaved: (newValue) => widget.report.addAll({
              "originalResidenceType_code": newValue?.code,
              // "originalResidenceType": newValue?.arName, // USELESS
            }),
          ),
          const SizedBox(height: _gap),

          // -----------------------------------

          //  O R I G I N A L   R E S - S T A T U S

          // -----------------------------------
          DropdownButtonFormField<ResidenceStatus>(
            value: originalResidenceStatus,
            items: ResidenceStatus.values
                .map((rs) => DropdownMenuItem(
                      value: rs,
                      child: Text(rs.arName),
                    ))
                .toList(),
            decoration: const InputDecoration(
              label: Text("حالة السكن الاصلي الان"),
            ),
            onChanged: (value) => setState(() => originalResidenceStatus = value ?? originalResidenceStatus),
            onSaved: (newValue) => widget.report.addAll({
              "originalResidenceStatus_code": newValue?.code,
              // "originalResidenceStatus": newValue?.arName, // USELESS
            }),
          ),
          const SizedBox(height: _gap),

          // -----------------------------------

          //  C U R R E N T   R E S - T Y P E

          // -----------------------------------
          DropdownButtonFormField<CurrentResidenceType>(
            value: currentResidenceType,
            items: CurrentResidenceType.values
                .map((crt) => DropdownMenuItem(
                      value: crt,
                      child: Text(crt.arName),
                    ))
                .toList(),
            decoration: const InputDecoration(label: Text("نوع السكن الحالي")),
            onChanged: (value) => setState(() => currentResidenceType = value ?? currentResidenceType),
            onSaved: (newValue) => widget.report.addAll({
              "currentResidenceType_code": newValue?.code,
              // "currentResidenceType": newValue?.name, // USELESS
            }),
          ),
          const SizedBox(height: _gap),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton.icon(
                  onPressed: () async {
                    try {
                      final pos = await _determinePosition();

                      if (kDebugMode) {
                        print("longitude:${pos.longitude}");
                        print("latitude: ${pos.latitude}");
                        print("altitude: ${pos.altitude}");
                      }
                      setState(() {
                        longitudeX = pos.longitude.toString();
                        latitudeY = pos.latitude.toString();
                        altitudeZ = pos.altitude.toString();
                        widget.report.addAll({'creationLocation': "$longitudeX,$latitudeY,$altitudeZ"});
                      });
                    } catch (e) {
                      return;
                    }
                  },
                  icon: const Icon(Icons.location_on),
                  label: const Text('الاحداثيات'),
                ),
                Directionality(
                  textDirection: TextDirection.ltr,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('X: ${longitudeX ?? '?'}'),
                      Text('Y: ${latitudeY ?? '?'}'),
                      Text('Z: ${altitudeZ ?? '?'}'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;

  /// Determine the current position of the device.
  ///
  /// When the location services are not enabled or permissions
  /// are denied the `Future` will return an error.
  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled don't continue
      // accessing the position and request users of the
      // App to enable the location services.
      if (mounted) {
        ScaffoldMessenger.of(context).clearSnackBars();
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('الرجاء تفعيل خدمة الموقع!')));
      }
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // Permissions are denied, next time you could try
        // requesting permissions again (this is also where
        // Android's shouldShowRequestPermissionRationale
        // returned true. According to Android guidelines
        // your App should show an explanatory UI now.
        if (mounted) {
          ScaffoldMessenger.of(context).clearSnackBars();
          ScaffoldMessenger.of(context)
              .showSnackBar(const SnackBar(content: Text('الرجاء اعطاء التطبيق صلاحية الوصول للموقع!')));
        }
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      if (mounted) {
        ScaffoldMessenger.of(context).clearSnackBars();
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('ان طلب صلاحية الموقع غير ممكنة!')));
      }
      return Future.error('Location permissions are permanently denied, we cannot request permissions.');
    }

    // When we reach here, permissions are granted and we can
    // continue accessing the position of the device.
    return await Geolocator.getCurrentPosition();
  }
}
