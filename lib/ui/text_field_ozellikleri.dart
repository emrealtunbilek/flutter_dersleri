import 'package:flutter/material.dart';

class TextFieldIslemleri extends StatefulWidget {

  @override
  _TextFieldIslemleriState createState() => _TextFieldIslemleriState();

}

class _TextFieldIslemleriState extends State<TextFieldIslemleri> {

  String girilenMetin="";
  int maxLine=1;
  FocusNode _fNode ;
  TextEditingController textController1;


  
  @override
  void initState() {
    super.initState();
    _fNode=FocusNode();
    textController1=TextEditingController(text: "varsayılan");

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
    textController1.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Input Islemleri"),
        ),

        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[

            Container(
              width: 24,
              height: 24,
              child:  FloatingActionButton(heroTag: "cc",onPressed: (){
                FocusScope.of(context).requestFocus(_fNode);
              },child: Icon(Icons.edit,size: 12,), backgroundColor: Colors.green,),
            ),


            SizedBox(height: 10,),

            FloatingActionButton(
              heroTag: "aa",
              onPressed: (){
              textController1.text="Butondan geldim";
            },child: Icon(Icons.edit), mini: true, backgroundColor: Colors.pink,),
            SizedBox(height: 10,),



            FloatingActionButton(heroTag: "bb",onPressed: (){
              debugPrint(textController1.text.toString());
            }, child: Icon(Icons.edit),),
          ],
        ),
        body: ListView(
          children: <Widget>[

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.done,
                autofocus: false,
                maxLines: maxLine,
                controller: textController1,
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
                controller: textController1,
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
