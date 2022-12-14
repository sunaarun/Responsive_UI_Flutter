import 'package:flutter/material.dart';
import 'package:responsive_ui/values.dart';

class MobileInterface extends StatelessWidget {
  const MobileInterface({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Mobile Interface"),),
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.all(16),
            child: Text(myText, style: const TextStyle(fontSize: 17),),
          ),
          Center(child: Text(myName,style:const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),),
         const SizedBox(height: 25,),
          Container(
            margin: const EdgeInsets.only(left: 16, right: 16),
            child: ElevatedButton(onPressed: (){},child:const Text("Show more"),),)
        ],
      ),
    );
  }
}
