import 'package:flutter/material.dart';
import 'package:login_screen/screen/3rdscreen/provider/screen_provider.dart';
import 'package:provider/provider.dart';

class Third_screen extends StatefulWidget {
  const Third_screen({Key? key}) : super(key: key);
  @override
  State<Third_screen> createState() => _Third_screenState();
}
Screen_view_provider?screen_view_providert,screen_view_providerf;
class _Third_screenState extends State<Third_screen> {
  @override
  Widget build(BuildContext context) {
    screen_view_providerf=Provider.of(context,listen: false);
    screen_view_providert=Provider.of(context,listen: true);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("All in One"),
          centerTitle: true,
        ),
        body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount:
            2,mainAxisExtent: 196),
          itemCount: 4,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'web_screen2');
                screen_view_providerf!.loadurl(index);
              },
              child: Container(
                child: Column(
                  children: [
                    Image.asset(
                      "${screen_view_providerf!.Images[index]}", fit: BoxFit.cover,),
                    Text("${screen_view_providerf!.name[index]}"),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
