

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:responsive_ui/mobile.dart';
import 'package:responsive_ui/tablet.dart';
import 'package:responsive_ui/web.dart';
import 'package:device_preview/device_preview.dart';

void main() {
 runApp(DevicePreview(
   enabled: !kReleaseMode,
     builder: (context)=>const MyApp()));

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: const MyHomePage()
    );

  }
}
class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   var  media = MediaQuery.of(context).size;
   print("${media.width}");
    return LayoutBuilder(
        builder: (context, constriants){
        if(constriants.maxWidth<=480)
          {
            // for Mobile Screen Sizes
            return const MobileInterface();
          }
        if(constriants.maxWidth>480 && constriants.maxWidth <= 800)
          {
            // for Tablet Screen sizes
            return  const TabletInterface();
          }
        else {
            // for Web or Desktop Screen Sizes
            return const WebInterface();
        }
    });
  }
}


// runApp(DevicePreview(
//    enabled: !kReleaseMode,
//     builder: (context)=>const MyApp()
// )
// );



// return MaterialApp(
//   useInheritedMediaQuery: true,
//   locale: DevicePreview.locale(context),
//   builder: DevicePreview.appBuilder,
//   debugShowCheckedModeBanner: false,
//   title: 'Flutter Demo',
//   theme: ThemeData(
//     primarySwatch: Colors.green,
//   ),
//   home: const MyHomePage()
// );