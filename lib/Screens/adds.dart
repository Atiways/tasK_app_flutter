import 'package:flutter/material.dart';
import 'package:tasks_flutter_app/constants/colors.dart';
class Add extends StatefulWidget {
  const Add({Key? key}) : super(key: key);

  @override
  State<Add> createState() => _AddState();
}

class _AddState extends State<Add> {
  TextEditingController descriptionController = TextEditingController();
  String? values;
  final options =["All","Work","Music",'Travel',"Study","Home","Paint","Shopping"];
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: Center(
           child: Text("New Task",style: TextStyle(
             color: Mycolor.black,
           ),),
         ),
         elevation: 0,
         backgroundColor: Mycolor.white,
         actions: [
           IconButton(onPressed: (){
             Navigator.pop(context);
           }, icon: Icon(Icons.cancel, color: Mycolor.black,))
         ],
       ),
       body: SingleChildScrollView(
         child: Container(
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               SizedBox(height: MediaQuery.of(context).size.height/70,),
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 18.0),
                 child: Text("What are you planning?",style: TextStyle(color: Colors.grey),),
               ),
               SizedBox(height: MediaQuery.of(context).size.height/85,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 8),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Mycolor.white),borderRadius: BorderRadius.circular(13),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white.withOpacity(1),
                          blurRadius: 3,
                          spreadRadius: 5,
                        ),
                      ]
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                      maxLines: 7,
                        controller: descriptionController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
               ),
                    ),
                  ),
                ),
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 28),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.start,
                   children: [
                     Icon(Icons.add_alert,color: Mycolor.blue,),
                     SizedBox(width: MediaQuery.of(context).size.width/27,),
                     Text("May 29, 14:00"),
                   ],
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 12),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.start,
                   children: [
                     Icon(Icons.note_rounded),
                     SizedBox(width: MediaQuery.of(context).size.width/27,),
                     Text("Add Note",style: TextStyle(color: Colors.grey)),
                   ],
                 ),
               ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Row(
                    children: [
                      Icon(Icons.label),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 18,),
                        width: 300,
                        decoration: BoxDecoration(
                        ),
                        child: DropdownButton<String>(
                          isExpanded: true,
                          hint: Text("Category",style: TextStyle(color: Colors.grey)),
                          value: values,
                          items: options.map(buildMenuItem).toList(),
                          onChanged: (value)=> setState(()=>this.values=value),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height/50,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    child: Container(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Mycolor.blue
                      ),
                      child: Center(
                        child: Text("Create",style: TextStyle(color: Mycolor.white,fontSize: 20),),
                      ),
                    ),
                  ),
                )
             ],
           ),
         ),
       ),
     );
  }
  DropdownMenuItem<String> buildMenuItem(String item)=>DropdownMenuItem(value:item, child: Text(item,),);
}
