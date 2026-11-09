import 'package:flutter/material.dart';

class ScoreBoard extends StatefulWidget {
  ScoreBoard({super.key});

  @override
  State<ScoreBoard> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ScoreBoard> {
    int score1=0;
  int score2=0;
  bool toggled=false;
  String? Gender="Male";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BasketBall",style: TextStyle(fontSize: 30,fontWeight: .bold,color: Colors.white)),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 223, 166, 233),
      ),

      body: 
      Center(
        child: Container(
          
          width: 600,
          child: IntrinsicHeight(
            child: Column(
              
              spacing: 50,
              children: [
                // Switch(
                //   activeColor: Colors.greenAccent,
                //   inactiveThumbColor: Colors.red,
                //   value: toggled, onChanged: ((value) {
                //   toggled=value;
                //   setState(() {
                    
                //   });
                // })),
                // Radio(value: "Male",groupValue: Gender,onChanged: (value) {
                //   Gender=value;
                //   setState(() {
                    
                //   });
                // },),
                //   Radio(value: "Female",groupValue: Gender,onChanged: (value) {
                //   Gender=value;
                //   setState(() {
                    
                //   });
                // },),
                
                Row(
                  spacing: 20,
                  mainAxisAlignment: .center,
                  crossAxisAlignment: .center,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: .center,
                        children: [
                          Text("Team A",style: TextStyle(fontSize: 30,),),
                          Text("$score1",style: TextStyle(fontSize: 50),),
                                  
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 224, 151, 237),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
                            
                            onPressed: (){
                            score1+=1;
                            setState(() {
                              
                            });
                          }, child: Text("Add 1 Point",style: TextStyle(fontSize: 15,color: Colors.white,),)),
                          SizedBox(height: 10,),
                            ElevatedButton(
                            style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 224, 151, 237),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
                            
                            onPressed: (){
                            score1+=2;
                            setState(() {
                              
                            });
                          },
                           child: Text("Add 2 Point",style: TextStyle(fontSize: 15,color: Colors.white,),)),
                           SizedBox(height: 10,),
                            ElevatedButton(
                            style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 224, 151, 237),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
                            
                            onPressed: (){
                            score1+=3;
                            setState(() {
                              
                            });
                          }, child: Text("Add 3 Point",style: TextStyle(fontSize: 15,color: Colors.white,),)),
                        ],
                                  
                      ),
                    ),
                    VerticalDivider(color: Colors.black,),
                     Expanded(
                       child: Column(
                        mainAxisAlignment: .center,
                        children: [
                          Text("Team B",style: TextStyle(fontSize: 30,),),
                          Text("$score2",style: TextStyle(fontSize: 50),),
                                   
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 224, 151, 237),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
                            
                            onPressed: (){
                            score2+=1;
                            setState(() {
                              
                            });
                          }, child: Text("Add 1 Point",style: TextStyle(fontSize: 15,color: Colors.white,),)),
                          SizedBox(height: 10,),
                            ElevatedButton(
                            style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 224, 151, 237),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
                            
                            onPressed: (){
                            score2+=2;
                            setState(() {
                              
                            });
                          },
                           child: Text("Add 2 Point",style: TextStyle(fontSize: 15,color: Colors.white,),)),
                           SizedBox(height: 10,),
                            ElevatedButton(
                            style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 224, 151, 237),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
                            
                            onPressed: (){
                            score2+=3;
                            setState(() {
                              
                            });
                          }, child: Text("Add 3 Point",style: TextStyle(fontSize: 15,color: Colors.white,),)),
                        ],
                                   
                        ),
                     ),
                  ],
                ),
                ElevatedButton
                (
                  style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 224, 151, 237),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
                  onPressed: (){
                  score1=0;
                  score2=0;
                  setState(() {
                    
                  });
                }, child:Text("Reset",style: TextStyle(fontSize: 15,color: Colors.white,)))
              ],
            ),
          ),
        ),
      ),
    );
  }
}