//CSCI 4311 MOBILE APPLICATION DEVELOPMENT
//Name: Md Shafin Taosif
//Matric: 1829531
//Using List in Flutter


import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
const MyApp({Key? key}) : super(key: key);
  

@override
Widget build(BuildContext context)
{
return const MaterialApp(
title: 'Lets Find Something',

      
home: MyCustomForm(),
);
}
}
class MyCustomForm extends StatefulWidget{
const MyCustomForm({Key? key}) : super(key: key);

@override
_MyCustomFormState createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {

final myController = TextEditingController();
final List<String> names = <String>[

'Apple',
'Orange',
'Rambutan',
'Durian',
'Pamelo',
]; //list of items


@override
void dispose() {

myController.dispose();
super.dispose();
}

@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
  backgroundColor: Colors.redAccent, //appbar color
title: const Text('Lets Find Something'),
centerTitle: true,
),
body: Padding(
padding: const EdgeInsets.all(40),
child: TextField(
controller: myController,
decoration: const InputDecoration(
border: OutlineInputBorder(),
hintText: "Enter a choice of 1,2,3,4 or 5", // text to show in the input bar

),
),
),

floatingActionButton: FloatingActionButton(

onPressed: () {

var one = int.parse(myController.text)-1;
showDialog(
context: context,
builder: (BuildContext context) {
return AlertDialog(
title: Text(names[one]),
);
}
);

},
tooltip: 'Display Item',   //search button
child: const Icon(Icons.search),  //button to access the list and display the content of the list depending on what was chosen on the textbox. 
),
);
}
}