import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
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
  String? originalResidenceAddress;
  String? originalResidenceRegion;
  ResidenceStatus? originalResidenceStatus;

  String? currentResidenceRegion;
  String? currentResidenceAddress;
  CurrentResidenceType? currentResidenceType;

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
                      child: DropdownSearch<String>(
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
                        items: (s, l) =>
                            ServiceLocator.villages.map((v) => v.name).toList(),
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
                        onSaved: (newValue) => widget.report
                            .addAll({"originalResidenceRegion": newValue}),
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
                      child: DropdownSearch<String>(
                        key: _dropDownSearchKey2,
                        decoratorProps: const DropDownDecoratorProps(
                          decoration: InputDecoration(
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            label: Text("مكان الاقامة الحالي"),
                          ),
                        ),
                        selectedItem: currentResidenceRegion,
                        items: (s, l) =>
                            ServiceLocator.villages.map((v) => v.name).toList(),
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
                        onSaved: (newValue) => widget.report
                            .addAll({"currentResidenceRegion": newValue}),
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
            onSaved: (newValue) =>
                widget.report.addAll({"originalResidenceType": newValue?.name}),
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
            onSaved: (newValue) => widget.report
                .addAll({"originalResidenceStatus": newValue?.name}),
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
            onSaved: (newValue) =>
                widget.report.addAll({"currentResidenceType": newValue?.name}),
          ),
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
