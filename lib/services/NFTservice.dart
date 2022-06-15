import 'package:dio/dio.dart';
import 'package:mothod_project/models/NFTmodel.dart';

class NFTservice {
  Future<NFTmodel> getNFT() async {
    try {
      var response = await Dio().get(
          'https://makeup-api.herokuapp.com/api/v1/products.json?brand=maybelline');
      return NFTmodel.fromJson({"data": response.data});
    } on DioError catch (e) {
      print(e);
      return NFTmodel.fromJson({});
    }
  }
}
