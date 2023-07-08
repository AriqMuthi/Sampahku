class ApiUrl {
  //ip tetring asus
  static const String baseUrl = 'http://127.0.0.1/api-sampahku/public';

  static const String registrasi = baseUrl + '/create';
  static const String login = baseUrl + '/login';
  static const String listProduk = baseUrl + '/show';
  // static const String createProduk = baseUrl + '/produk';

  static String updateData(int? id) {
    return baseUrl + '/update/' + id.toString();
  }

  // static String showProduk(int id) {
  //   return baseUrl + '/produk/' + id.toString();
  // }

  static String deleteData(int? id) {
    return baseUrl + '/delete/' + id.toString();
  }
}
