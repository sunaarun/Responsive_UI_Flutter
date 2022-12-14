import 'package:flutter/material.dart';
import 'package:responsive_ui/values.dart';

class WebInterface extends StatelessWidget {
  const WebInterface({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Web interface"),),
      body: Row(
        children: [
          Expanded(flex: 1,
              child: Container(
                margin: const EdgeInsets.all(16),
                child: Text(myText, style:const TextStyle(fontSize: 22),),
              )),
          Expanded(flex: 1,child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(child: Text(myName, style:
              TextStyle(color: Colors.green.shade700,
                  fontSize: 35, fontWeight: FontWeight.bold),),),
              SizedBox(height: 35,),
              Center(child: MaterialButton(
                color: Colors.black87,
                onPressed: (){},
                child: Text('Show more', style: TextStyle(color: Colors.white),),),)
            ],
          ))
        ],
      ),
    );
  }
}
