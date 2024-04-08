import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class frontpage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: InkWell(
            child: Container(
              child: Text('Karobar ka name ↓'),
            ),
            onTap: (){
              Get.bottomSheet(
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey,
                    ),
                    child: Column(
                      children: [
                        Padding(padding: EdgeInsets.all(10)),
                        Card(
                          child: ListTile(
                            leading: Icon(Icons.dark_mode),
                            trailing: Container(
                              child: Text('Karobar ka name'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
              );
            },
          ),
        ),
        body: Column(
          children: [
            Container(),
            SizedBox(height: 10,),
            Row(
              children: [
                Container(
                  height: 100,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey[300]
                  ),
                  child: Column(
                    children: [
                      Text('Rs 0',style: TextStyle(color: Colors.green),),
                      Text('paise lene hai'),
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey[300]
                  ),
                  child: Column(
                    children: [
                      Text('Rs 0',style: TextStyle(color: Colors.red),),
                      Text('paise dene hai'),
                    ],
                  ),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Row(
                    children: [
                      Expanded(child: Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20,bottom: 17),
                        child: SizedBox(
                          height: 40,
                          child: CupertinoTextField(
                            placeholder: 'Search for a restuarent',
                            prefix: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Icon(Icons.search,color: Color(0xff7b7b7b),),
                            ),
                            style: TextStyle(fontSize: 15,fontFamily: 'regular'),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50.0)
                            ),
                          ),
                        ),
                      ))
                    ],
                  ),
                ),
                SizedBox(width: 3,),
                IconButton(onPressed: (){}, icon: Icon(Icons.menu_open_sharp),),
                IconButton(onPressed: (){}, icon: Icon(Icons.picture_as_pdf_outlined),),
              ],
            )
          ],
        ),
        bottomNavigationBar: Row(
          children: [
            InkWell(
              onTap: (){},
              child: Column(
                children: [
                  Icon(Icons.account_box),
                  SizedBox(height: 5,),
                  Text('accounts'),
                ],
              ),
            ),
            InkWell(
              onTap: (){},
              child: Column(
                children: [
                  Icon(Icons.account_box),
                  SizedBox(height: 5,),
                  Text('accounts'),
                ],
              ),
            ),
            InkWell(
              onTap: (){},
              child: Container(
                height: 40,
                width: 20,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                        color: Colors.grey[200]!,
                        width: 1
                    )
                ),
                child: Icon(Icons.add),
              ),
            ),
            InkWell(
              onTap: (){},
              child: Column(
                children: [
                  Icon(Icons.account_box),
                  SizedBox(height: 5,),
                  Text('accounts'),
                ],
              ),
            ),
            InkWell(
              onTap: (){},
              child: Column(
                children: [
                  Icon(Icons.account_box),
                  SizedBox(height: 5,),
                  Text('accounts'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}