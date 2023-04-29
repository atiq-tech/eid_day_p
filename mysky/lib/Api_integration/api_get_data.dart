import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:get_storage/get_storage.dart';
import 'package:mysky/Api_modelClass/all_get_data_model_class.dart';

class ApiAllGetData {
  static GetApiAllGetData(context, String? dateFrom, String? dateTo) async {
    String Link = "http://apps.bigerp24.com/api/get_data";
    List<AllGetDataModelClass> allGetDatalist = [];
    AllGetDataModelClass allDataListsClass;
    print(GetStorage().read("token"));
    try {
      Response response = await Dio().post(Link,
          data: {"dateFrom": "$dateFrom", "dateTo": "$dateTo"},
          options: Options(headers: {
            "Content-Type": "application/json",
            "Authorization": "Bearer ${GetStorage().read("token")}",
          }));
      print(response.data);

      for (var i in response.data["dataLists"]) {
        allDataListsClass = AllGetDataModelClass.fromJson(i);
        allGetDatalist.add(allDataListsClass);
      }
      print("Get alll dataaaaaaaaa");
      print("Get data list length is====>${allGetDatalist.length}");
    } catch (e) {
      print("Something is wrong all get data  list=======:$e");
    }
    return allGetDatalist;
  }
}
