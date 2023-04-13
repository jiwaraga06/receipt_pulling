import 'package:receipt_pulling/source/network/network.dart';

class MyRepository {
  final MyNetwork? myNetwork;

  MyRepository({required this.myNetwork});

  Future getShift() async {
    var json = await myNetwork!.getShift();
    return json;
  }

  Future login(scan, value) async {
    var json = await myNetwork!.login(scan, value);
    return json;
  }


  Future recevieGet(nik, tanggalAwal, tanggalAkhir) async {
    var json = await myNetwork!.recevieGet(nik, tanggalAwal, tanggalAkhir);
    return json;
  }

  Future receiveWorkCenter(nik) async {
    var json = await myNetwork!.receiveWorkCenter(nik);
    return json;
  }

  Future receiveScan(scan) async {
    var json = await myNetwork!.receiveScan(scan);
    return json;
  }

  Future receiveSave(body) async {
    var json = await myNetwork!.receiveSave(body);
    return json;
  }
}
