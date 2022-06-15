import 'package:flutter/material.dart'; // dibutuhkan untuk ChangeNotifier
import 'package:mothod_project/models/NFTmodel.dart';
import 'package:mothod_project/services/NFTservice.dart';

class NFTprovider extends ChangeNotifier {
  final NFTservice _nftservice = NFTservice();
  late NFTmodel nftmodel = NFTmodel();

  getNFT() async {
    nftmodel = await _nftservice.getNFT();
    print(nftmodel.data!.length);
    notifyListeners();
  }

  NFTprovider() {
    getNFT();
  }
}
