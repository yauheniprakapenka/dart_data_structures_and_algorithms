class Api {
  static const _scheme = 'https';
  static const _host = 'run.mocky.io';
  static const _version = 'v3/';

  static Uri uri(String path) {
    return Uri(
      scheme: _scheme,
      host: _host,
      path: _version + path,
    );
  }
}
