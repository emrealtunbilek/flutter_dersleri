import 'package:flutter/material.dart';

class FormIslemleri extends StatefulWidget {
  @override
  _FormIslemleriState createState() => _FormIslemleriState();
}

class _FormIslemleriState extends State<FormIslemleri> {

  String girilenMetin="";
  int maxLine=1;
  FocusNode _fNode ;
  
  @override
  void initState() {
    super.initState();
    _fNode=FocusNode();

    _fNode.addListener((){
      setState(() {
        if(_fNode.hasFocus){
          maxLine = 3;
        }else{
          maxLine =1;
        }
      });
    });

  }
  
  @override
  void dispose() {
    _fNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Input Islemleri"),
        ),

        floatingActionButton: FloatingActionButton(onPressed: (){
          FocusScope.of(context).requestFocus(_fNode);
        }, child: Icon(Icons.edit),),
        body: ListView(
          children: <Widget>[

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.done,
                autofocus: false,
                maxLines: maxLine,
                maxLength: 20,
                focusNode: _fNode,
                decoration: InputDecoration(
                  hintText: "Metni buraya başlık",
                  labelText: "Başlık",
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                  icon: Icon(Icons.edit),
                  prefixIcon: Icon(Icons.done),
                  suffixIcon: Icon(Icons.add),
                  filled: true,
                  fillColor: Colors.red.shade50
                ),
                maxLengthEnforced: true,
                onChanged: (String s)=>debugPrint("On Change: $s"),
                onSubmitted: (String s){
                  debugPrint("On Submit : $s");
                  girilenMetin=s;
                },
                cursorColor: Colors.pink,

              ),
            ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.done,
                autofocus: false,
                maxLines: 1,
                maxLength: 20,
                decoration: InputDecoration(
                    hintText: "Metni buraya başlık",
                    labelText: "Başlık",
                    border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                    icon: Icon(Icons.edit),
                    prefixIcon: Icon(Icons.done),
                    suffixIcon: Icon(Icons.add),
                    filled: true,
                    fillColor: Colors.red.shade50
                ),
                maxLengthEnforced: true,
                onChanged: (String s)=>debugPrint("On Change: $s"),
                onSubmitted: (String s){
                  debugPrint("On Submit : $s");
                  girilenMetin=s;
                },
                cursorColor: Colors.pink,

              ),
            ),
            
            Container(
              margin: EdgeInsets.all(10),
              width: double.infinity,
              height: 200,
              color: Colors.teal.shade400,
              child: Align(
                alignment: Alignment.center,
                child: Text(girilenMetin),
              ),
            ),
          ],
        ));
  }
}
