/// Convert the query parameters of `Uri` schemes other than `http` and `https`
/// into the normal `http`'s `queryParameters`
String? encodeQueryParameters(Map<String, String> params) {
  return params.entries
      .map(
        (MapEntry<String, String> e) =>
            '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}',
      )
      .join('&');
}
