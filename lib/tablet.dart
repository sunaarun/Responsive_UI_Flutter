import 'package:flutter/material.dart';
import 'package:responsive_ui/values.dart';
class TabletInterface extends StatelessWidget {
  const TabletInterface({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tablet Interface"),),
      body: Container(
        color: Colors.white,
        child: ListView(
          children: [
            const SizedBox(height: 50,),
            starRow(),
            Container(
              margin: EdgeInsets.all(16),
              child: Text(myText,style:const TextStyle(fontSize: 22),),
            ),
            Center(child: Text(myName,
              style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 30, color: Colors.green ),),),
            TextButton(onPressed: (){}, child: const Text("Show more"))

          ],
        ),
      ),
    );
  }

  starRow(){
    double size = 40;
    Color color = Colors.amber;
      return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Icon(Icons.star_rounded,size: size,color: color,),
        Icon(Icons.star_rounded,size: size,color: color,),
        Icon(Icons.star_rounded,size: size,color: color,),
      ],);

  }
}
