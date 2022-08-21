class Config {
  final String _apiUrl = "https://api.publicapis.org";
  Uri buildUri({required String path}) {
    return Uri.parse(_apiUrl + path);
  }
}
