import 'package:flutter/cupertino.dart';
import 'package:mysky/Api_integration/api_get_area.dart';
import 'package:mysky/Api_integration/api_get_data.dart';
import 'package:mysky/Api_modelClass/all_get_area_model_class.dart';
import 'package:mysky/Api_modelClass/all_get_data_model_class.dart';

class CounterProvider extends ChangeNotifier {
  //get Area
  List<Areas> allGetAreaslist = [];
  getArea(BuildContext context) async {
    allGetAreaslist = await ApiAllGetArea.GetApiAllGetArea(context);
    notifyListeners();
  }

  List<AllGetDataModelClass> allGetDatalist = [];
  getGetData(context, String? dateFrom, String? dateTo) async {
    allGetDatalist =
        await ApiAllGetData.GetApiAllGetData(context, dateFrom, dateTo);
    notifyListeners();
  }
}
