import 'package:callingclasses/screens/login.dart';
import 'package:callingclasses/widgets/mybutton.dart';
import 'package:callingclasses/widgets/mycontainer.dart';
import 'package:flutter/material.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  int _value = 25;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()));
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.access_alarm),
                        Text("Next Screen"),
                      ],
                    ),
                  ),

                  // child: Text('Next Screen'),
                ),
                MyContainer(child: Text("Zilla"), color: Colors.red),
                MyButton(color: Colors.green, pressed: () {
                }, thessy: "Click Me"),
                Expanded(
                  child: Slider(
                    value: _value.toDouble(),
                    min: 0,
                    max: 50,
                    onChanged: (double newValue){
                      setState(() {
                        _value= newValue.round();
                      });
                    },
                    semanticFormatterCallback: (double newValue){
                      return '${newValue.round()}dollar';
                    },
                    activeColor: Colors.blue,
                    inactiveColor: Colors.white,
                    label: 'Set volume value',
                  ),
                ),
                Text(
                  _value.toString(),
                  style: TextStyle(fontSize: 50),
                ),

              ],
            ),
          ),
        ),
      );
  }
}

