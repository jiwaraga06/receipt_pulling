import 'dart:convert';

import 'package:receipt_pulling/source/network/api.dart';
import 'package:http/http.dart' as http;

class MyNetwork {
  Future getShift() async {
    try {
      var url = Uri.parse(MyApi.getShift());
      var response = await http.get(url);
      return response;
    } catch (e) {
      print('ERROR NETWORK GET SHIFT');
    }
  }

  Future login(scan, value) async {
    try {
      var url = Uri.parse(MyApi.login(scan, value));
      var response = await http.get(url);
      return response;
    } catch (e) {
      print('ERROR NETWORK LOGIN');
    }
  }

  // RECEIVE PULLING
  Future recevieGet(nik, tanggalAwal, tanggalAkhir) async {
    try {
      var url = Uri.parse(MyApi.recevieGet(nik, tanggalAwal, tanggalAkhir));
      var response = await http.get(url);
      return response;
    } catch (e) {
      print('ERROR NETWORK GET RECEIVE: $e');
    }
  }

  Future receiveWorkCenter(nik) async {
    try {
      var url = Uri.parse(MyApi.receiveWorkCenter(nik));
      var response = await http.get(url);
      return response;
    } catch (e) {
      print('ERROR NETWORK RECEIVE WORK CENTER: $e');
    }
  }

  Future receiveScan(scan) async {
    try {
      var url = Uri.parse(MyApi.receiveScan(scan));
      var response = await http.get(url);
      return response;
    } catch (e) {
      print('ERROR NETWORK RECEIVE SCAN: $e');
    }
  }

  Future receiveSave(body) async {
    try {
      var url = Uri.parse(MyApi.receiveSave());
      var response = await http.post(url, body: body);
      return response;
    } catch (e) {
      print('ERROR NETWORK RECEIVE SAVE: $e');
    }
  }
}
