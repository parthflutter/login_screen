import 'package:flutter/widgets.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Screen_view_provider extends ChangeNotifier{
WebViewController?webViewController;
  List Images=[
   "asstes/images/1.jpg",
    "asstes/images/2.jpg",
    "asstes/images/3.jpg",
    "asstes/images/4.jpg",
  ];

  List name=[
    "Wikipedia",
    "Java Point",
    "w3 School",
    "Tutorial Points",

  ];

  List urls=[
    "https://www.wikipedia.org/",
    "https://www.javatpoint.com/",
    "https://en.wikipedia.org/",
    "https://www.tutorialspoint.com/",
  ];

  void loadurl(int index)
  {
    webViewController = WebViewController();
    webViewController!.loadRequest(Uri.parse("${urls[index]}"));
  }
}
