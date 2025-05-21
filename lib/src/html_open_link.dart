import 'dart:html' as html;

void htmlOpenLink(String url) {
  final encodedUrl = Uri.encodeFull(url); // Ensures valid format
  html.window.open(encodedUrl, '_blank');

  // html.window.open(url, '_blank');
}
