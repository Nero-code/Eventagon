import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:vollect/app/classes/beneficiary.dart';
import 'package:vollect/core/enums.dart';
import 'package:vollect/di.dart';

class ResidenceInfoPage extends StatefulWidget {
  const ResidenceInfoPage({super.key, required this.report});

  final Map<String, dynamic> report;

  @override
  State<ResidenceInfoPage> createState() => _ResidenceInfoPageState();
}

class _ResidenceInfoPageState extends State<ResidenceInfoPage>
    with AutomaticKeepAliveClientMixin {
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

  @override
  void initState() {
    super.initState();

    originalResidenceRegion = ServiceLocator.villages
        .where((v) => v.name == widget.report['originalResidenceRegion'])
        .firstOrNull;

    currentResidenceRegion = ServiceLocator.villages
        .where((v) => v.name == widget.report['currentResidenceRegion'])
        .firstOrNull;

    originalResidenceType = ResidenceType.values
        .where((rt) => rt.name == widget.report['originalResidenceType'])
        .firstOrNull;

    originalResidenceStatus = ResidenceStatus.values
        .where((rt) => rt.name == widget.report['originalResidenceStatus'])
        .firstOrNull;

    currentResidenceType = CurrentResidenceType.values
        .where((rt) => rt.name == widget.report['currentResidenceType'])
        .firstOrNull;
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
                        suffixProps: const DropdownSuffixProps(
                            clearButtonProps: ClearButtonProps()),
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
            onSaved: (newValue) =>
                widget.report.addAll({"originalResidenceAddress": newValue}),
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
            onSaved: (newValue) =>
                widget.report.addAll({"currentResidenceAddress": newValue}),
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
            onChanged: (value) => setState(
                () => originalResidenceType = value ?? originalResidenceType),
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
            onChanged: (value) => setState(() =>
                originalResidenceStatus = value ?? originalResidenceStatus),
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
            decoration: const InputDecoration(
              label: Text("نوع السكن الحالي"),
            ),
            onChanged: (value) => setState(
                () => currentResidenceType = value ?? currentResidenceType),
            onSaved: (newValue) => widget.report.addAll({
              "currentResidenceType_code": newValue?.code,
              // "currentResidenceType": newValue?.name, // USELESS
            }),
          ),
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
