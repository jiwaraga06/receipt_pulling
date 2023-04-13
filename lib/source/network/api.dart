String baseUrl = 'http://182.253.45.29:88/api-dev04';
String baseUrlReceivePullingPublic = 'http://182.253.45.29:88/api-trial-live/';
String baseUrlReceivePullingLocal = 'http://192.168.1.84:88/api-trial-live/';

class MyApi {
  static getShift() {
    return '$baseUrlReceivePullingPublic/get_function/shift';
  }

  static login(scan, value) {
    return '$baseUrlReceivePullingPublic/login/scan/$scan/$value';
  }

  // RECEIVE PULLING

  static recevieGet(nik, tanggalAwal, tanggalAkhir) {
    return '$baseUrl/pages/receive/get/$nik/$tanggalAwal/$tanggalAkhir';
  }

  static receiveWorkCenter(nik) {
    return '$baseUrl/get_function/work_center/$nik';
  }

  static receiveScan(scan) {
    return '$baseUrl/pages/receive/scan/$scan';
  }

  static receiveSave(){
    return '$baseUrl/pages/receive/save';
  }
}
