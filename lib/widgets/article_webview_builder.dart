import 'package:flutter/material.dart';
import 'package:news_app/views/article_view.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ArticleWebviewBuilder extends StatefulWidget {
  final String article;
  const ArticleWebviewBuilder({super.key, required this.article});

  @override
  State<ArticleWebviewBuilder> createState() => _ArticleWebviewBuilderState();
}

class _ArticleWebviewBuilderState extends State<ArticleWebviewBuilder> {
  late WebViewController controller;
  bool isLoading = true;
  String? errorMessage;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            // Update loading bar.
          },
          onPageFinished: (String url) {
            setState(() {
              isLoading = false;
            });
          },
          onHttpError: (HttpResponseError error) {
            setState(() {
              errorMessage = 'Oops, there was an error: $error';
              isLoading = false;
            });
          },
          onWebResourceError: (WebResourceError error) {
            setState(() {
              errorMessage = 'Oops, there was an error: ${error.description}';
              isLoading = false;
            });
          },
        ),
      )
      ..loadRequest(Uri.parse(widget.article));
  }

  @override
  Widget build(BuildContext context) {
    if (isLoading == true) {
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    } else if (errorMessage != null) {
      return Scaffold(
        body: Center(
          child: Text(
            errorMessage!,
            style: const TextStyle(color: Colors.red, fontSize: 18),
            textAlign: TextAlign.center,
          ),
        ),
      );
    } else {
      return ArticleView(
        controller: controller,
      );
    }
  }
}
