import 'package:flutter/material.dart';

class OurListView extends StatelessWidget {
  const OurListView({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    List<Widget> mywidgets = [];
    for(int x = 1; x<=5; x++){
      mywidgets.add(
          Container(
            margin: EdgeInsets.all(8),
            height: 70,
            width: 300,
            decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.all(Radius.circular(5.0))
            ),
            child: Center(child: Text("AfricInnovate", style: TextStyle(color: Colors.black, fontSize: 20),)),
          )
      );
    }
    return  Scaffold(
      body: SafeArea(child: Container(
        width: double.infinity,
        margin: EdgeInsets.all(16),
        child: Column(
          children: [
            // Column(
            //   crossAxisAlignment: CrossAxisAlignment.center,
            //   children: mywidgets
            // ),
            Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 16),
                child: TextFormField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                       BorderSide(color: Colors.pink, width: 2.0),
                      borderRadius: BorderRadius.circular(10.0),

                    ),
                    labelText: 'Name',
                    hintStyle: TextStyle(color: Colors.black54),
                    border: OutlineInputBorder(borderSide: BorderSide(color: Colors.red),),),

                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.blue,
                    fontWeight: FontWeight.w600,
                  ),
                )),
            Container(child: TextField())
          ],
        ),
      ),),
    );
  }
}
