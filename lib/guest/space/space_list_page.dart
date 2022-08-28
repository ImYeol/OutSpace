import 'package:flutter/material.dart';
import 'package:out_space/const/app_constants.dart';
import 'package:get/get.dart';
import 'package:date_range_form_field/date_range_form_field.dart';
import 'package:out_space/guest/space/nearby_storage_list_item.dart';

class SpaceListPage extends StatefulWidget {
  const SpaceListPage({Key? key}) : super(key: key);

  @override
  State<SpaceListPage> createState() => _SpaceListPageState();
}

class _SpaceListPageState extends State<SpaceListPage> {
  final location_list = ['관악구', '송파구', '마포구'];
  // 나중에 위치기반으로 가까운 지역구를 보여줘야할듯
  var _selectedValue = '관악구';
  DateTimeRange? myDateRange;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppConstants.defaultHorizontalPaddingSize),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            _buildDropDownMenu(),
            Divider(height: 10, thickness: 1,),
            _buildNearbyStorageList()
          ],
        ),
      )
    ));
  }

  Widget _buildDropDownMenu() {
    return SizedBox(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          DropdownButton(
            value: _selectedValue,
            items: location_list.map(
              (value) {
                return DropdownMenuItem(
                  value: value,
                  child: Text(value),
                );
              },
            ).toList(),
            onChanged: (String? value) {
              //String? value = '';
              setState(() {
                _selectedValue = value!;
              });
            },
          ),
          DateRangeField(
            width: 200,
              //decoration: InputDecoration(
              //  labelText: 'Date Range',
              //  prefixIcon: Icon(Icons.date_range),
              //  hintText: 'Please select a start and end date',
              //  border: OutlineInputBorder(),
              //),
              initialValue:
                  DateTimeRange(start: DateTime.now(), end: DateTime.now()),
              validator: (value) {
                if (value!.start.isBefore(DateTime.now())) {
                  return 'Please enter a valid date';
                }
                return null;
              },
              onSaved: (value) {
                setState(() {
                  myDateRange = value!;
                });
              }),
        ],
      ),
    );
  }

  Widget _buildNearbyStorageList() {
    return Expanded(
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) => const NearbyStorageListItem(),
        itemCount: 5,
      ),
    );
  }

  
}