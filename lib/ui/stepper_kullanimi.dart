import 'package:flutter/material.dart';

class StepperOrnek extends StatefulWidget {
  @override
  _StepperOrnekState createState() => _StepperOrnekState();
}

class _StepperOrnekState extends State<StepperOrnek> {

  int _aktifStep = 0;
  String isim, mail, sifre;
  List<Step> tumStepler;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tumStepler=_tumStepler();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stepper Örnek'),
      ),
      body: SingleChildScrollView(
        child: Stepper(
          steps: tumStepler,
          currentStep: _aktifStep,
          onStepTapped: (tiklanilanStep){
            setState(() {
              _aktifStep = tiklanilanStep;
            });
          },
          onStepContinue: (){
            setState(() {
              if(_aktifStep < tumStepler.length -1 ){
                _aktifStep++;
              }
            });

          },

          onStepCancel: (){
           setState(() {
             if(_aktifStep > 0){
               _aktifStep--;
             }else{
               _aktifStep = 0;
             }
           });
          },
        ),
      ),
    );
  }

  List<Step> _tumStepler() {
    List<Step> stepler = [
      Step(
          title: Text("Username başlık"),
          subtitle: Text("Username Altbaşlık"),
          state: StepState.complete,
          isActive: true,
          content: TextFormField(
            decoration: InputDecoration(
                labelText: "UsernameLabel",
                hintText: "UsernameHint",
                border: OutlineInputBorder()),
          ),
      ),

      Step(
        title: Text("Mail başlık"),
        subtitle: Text("Mail Altbaşlık"),
        state: StepState.error,
        isActive: true,
        content: TextFormField(
          decoration: InputDecoration(
              labelText: "MailLabel",
              hintText: "MailHint",
              border: OutlineInputBorder()),
        ),
      ),

      Step(
        title: Text("Şifre başlık"),
        subtitle: Text("Şifre Altbaşlık"),
        state: StepState.editing,
        isActive: true,
        content: TextFormField(
          decoration: InputDecoration(
              labelText: "ŞifreLabel",
              hintText: "ŞifreHint",
              border: OutlineInputBorder()),
        ),
      ),
    ];

    return stepler;
  }
}
