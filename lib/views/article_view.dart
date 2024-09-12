import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:share_plus/share_plus.dart';

class ArticleView extends StatelessWidget {
  final WebViewController controller;

  const ArticleView({required this.controller, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: WebViewWidget(controller: controller),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final url = await controller.currentUrl();
          if (url != null) {
            Share.share(
                '''Check out this article from my new Flutter project: $url 
                For more about the project: https://github.com/AGreynoon/news_app''');
          }
        },
        child: const Icon(Icons.share),
      ),
    );
  }
}
