
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class frontpage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            Container(
              height: 50,
              width: 400,
              child: InkWell(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    child: Text('Karobar ka name ↓'),
                  ),
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
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  TextButton(onPressed: (){}, child: Text('Customers',style:
                  TextStyle(color: Colors.black,fontSize: 17),)),
                  TextButton(onPressed: (){}, child: Text('Suppliers',style:
                  TextStyle(color: Colors.black,fontSize: 17),)),
                  TextButton(onPressed: (){}, child: Text('Community',style:
                  TextStyle(color: Colors.black,fontSize: 17),)),
                ],
              ),
            ),
            Container(height: 1,width: 600,color: Colors
                .grey,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15,left: 30),
                  child: Container(
                    height: 70,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[300]
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 15,),
                        Text('Rs. 0',style: TextStyle(color: Colors.green),),
                        Text('Maine deine hain',style: TextStyle(color: Colors
                            .grey),)
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15,left: 30),
                  child: Container(
                    height: 70,
                    width: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[300]
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 15,),
                        Text('Rs. 0',style: TextStyle(color: Colors.red),),
                        Text('Maine lene hain',style: TextStyle(color: Colors
                            .grey),)
                      ],
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    width: (250),
                    child: TextField(
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide(
                            color: Colors.grey[400]!,
                          ),
                        ),
                        hintText: 'Search Customers',
                        suffixIcon: Icon(Icons.search),
                      ),
                    ),
                  ),
                ),
                Icon(Icons.menu_open_outlined,size: 30,),
                SizedBox(width: 20,),
                Icon(Icons.picture_as_pdf_outlined)
              ],
            ),
            Container(height: 350,),
            SizedBox(
              width: 350,
              height: 60,
              child: OutlinedButton(onPressed: (){}, child: Text('Add Customers'),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  foregroundColor: Colors.green,
                  backgroundColor: Colors.green[200],
                ),),
            )
          ],
        ),
        bottomNavigationBar: Container(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 13),
                    child: Container(height: 1,width: 600,color: Colors
                        .grey,),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          child: Column(
                            children: [
                              Icon(Icons.book_outlined),
                              SizedBox(height: 10,),
                              Text('Accounts')
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: Column(
                            children: [
                              Icon(Icons.pages_outlined),
                              SizedBox(height: 10,),
                              Text('In / Out')
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              border: Border.all(
                                width: 1,
                                color: Colors.black,
                              )
                          ),
                          child: Icon(Icons.add),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: Column(
                            children: [
                              Icon(Icons.money_outlined),
                              SizedBox(height: 10,),
                              Text('Money')
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: Column(
                            children: [
                              Icon(Icons.menu),
                              SizedBox(height: 10,),
                              Text('Menu')
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

