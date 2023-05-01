import 'package:flutter/cupertino.dart';
import 'package:sktr/Api_integration/api_get_area.dart';
import 'package:sktr/Api_integration/api_get_data.dart';
import 'package:sktr/Api_modelClass/all_get_area_model_class.dart';
import 'package:sktr/Api_modelClass/all_get_data_modelClass.dart';

class CounterProvider extends ChangeNotifier {
  //get Area
  List<Areas> allGetAreaslist = [];
  getArea(BuildContext context) async {
    allGetAreaslist = await ApiAllGetArea.GetApiAllGetArea(context);
    notifyListeners();
  }

  //get data
  List<DataLists> allGetDatalist = [];
  getGetData(context, String? dateFrom, String? dateTo, int areaId) async {
    allGetDatalist =
        await ApiAllGetData.GetApiAllGetData(context, dateFrom, dateTo, areaId);
    notifyListeners();
  }
  // List<AllGetDataModelClass> allGetDatalist = [];
  // getGetData(context, String? dateFrom, String? dateTo) async {
  //   allGetDatalist =
  //       await ApiAllGetData.GetApiAllGetData(context, dateFrom, dateTo);
  //   notifyListeners();
  // }
}
