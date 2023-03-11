import 'package:flutter/material.dart';

void main (){
  runApp(const MaterialApp(
    home: App(),
  ));
}

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blueAccent,
          child: Icon(Icons.add),
          onPressed: (){},
        ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Container(
          margin: EdgeInsets.only(right: 30),
          child:  Text('My Diary',
            style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Colors.black
            ),
          ),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(left: 0),
            child:  Icon(Icons.arrow_back_ios, color: Colors.black),
          ),
          Container(
            child:Icon(Icons.calendar_today, color: Colors.black),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child:  Text('15 May', style: TextStyle(
                color: Colors.black
            ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 20),
            child:   Icon(Icons.arrow_forward_ios, color: Colors.black,),
          )
        ],
        elevation: 0,
        backgroundColor: Colors.white,
      ),
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          child:Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 50),
                child:  IconButton(onPressed: (){
                  Navigator.pop(context);
                }, icon: Icon(Icons.my_library_books, size: 30,)),
              ),
              Container(
                margin: EdgeInsets.only(left: 30),
                child: IconButton(onPressed: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder:(context) => const SecondRoute() ));
                }, icon: Icon(Icons.spoke_outlined, size: 30,)),
              ),
              Container(
                margin: EdgeInsets.only(left: 80),
                child: IconButton(onPressed: (){
                  Navigator.pop(context);
                }, icon: Icon(Icons.apple, size: 30)),
              ),
              Container(
                margin: EdgeInsets.only(left: 40),
                child: IconButton(onPressed: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder:(context) => const SecondRoute() ));
                }, icon: Icon(Icons.person, size: 30,)),
              )
            ],
          ) ,
        ),
      body:
          SingleChildScrollView(
            child:
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 10.0),
                      child: Text('Mediterranean diet',
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.grey[500]
                        ),
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(left: 80.0),
                        child: TextButton(
                            onPressed: (){},
                            child: Text(
                              'Details',
                              style: TextStyle(
                                  color: Colors.purple,
                                  fontSize: 20.0
                              ),
                            )
                        )
                    )
                  ],
                ),
                Container(
                  width: 350,
                  height: 250,
                  child: Card(
                    margin: EdgeInsets.only(top: 10.0),
                    elevation: 10.0,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5.0),
                        topRight: Radius.circular(90.0),
                        bottomLeft: Radius.circular(5.0),
                        bottomRight: Radius.circular(5.0)
                    )),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 30, top: 0),
                          child: VerticalDivider(
                            color: Colors.blueAccent,
                            thickness: 3,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10.0, left: 20.0),
                          child: Text(
                            'Eaten',
                            style:TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[500]
                            ) ,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 50.0, top: 5.0),
                          child: Text(
                            '1127 kcal',
                            style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 25.0, left: 20.0),
                          child: Text('Burned',
                            style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[500]
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 50.0, top: 5.0),
                          child: Text(
                            '102 kcal',
                            style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                        Container(
                          width: 300,
                          margin: EdgeInsets.only(left: 15),
                          child:
                          Divider(
                            color: Colors.grey[200],
                            thickness: 2,
                            height: 50.0,
                          ) ,
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 20),
                              child: Text('Carbs', style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17
                              ),)
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 70),
                              child:Text('Protein', style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17
                              ))
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 70),
                              child: Text('Fat', style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold
                              ),),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              width: 70,
                              margin: EdgeInsets.only(left: 20),
                              child:  Divider(
                                thickness: 2,
                                color: Colors.blue,
                              ),
                            ),
                            Container(
                              width: 75,
                              margin: EdgeInsets.only(left: 45),
                              child:  Divider(
                                thickness: 2,
                                color: Colors.red,
                              ),
                            ),
                            Container(
                              width: 70,
                              margin: EdgeInsets.only(left: 50),
                              child:  Divider(
                                thickness: 2,
                                color: Colors.orange,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 20),
                              child: Text('12g left', style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold
                              ),),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 70),
                              child: Text('30g left', style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold
                              ),),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 75),
                              child: Text('10g left', style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold
                              ),),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 20, top: 20.0),
                      child: const Text(
                        'Meals today',
                        style: TextStyle(
                            color: Colors.black45,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 120, top: 14.0),
                      child:  TextButton.icon(
                          onPressed: (){},
                          icon: Icon(Icons.arrow_forward, color: Colors.black,size: 20,),
                          label: Text('Customize', style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 18
                          ),))
                    ),
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 5),
                        width: 130,
                        height: 200,
                        child:
                        Card(
                          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.only(
                            topRight: Radius.circular(50),
                            topLeft: Radius.circular(5),
                            bottomRight: Radius.circular(5),
                            bottomLeft: Radius.circular(5),
                          )
                          ),
                          color: Colors.deepOrange,
                          margin: const EdgeInsets.only(left: 10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(left: 10.0, top: 30),
                                child:  const Text('Breakfast',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                              Container(
                                width: 85.0,
                                margin:const EdgeInsets.only(left: 10, top:15.0),
                                child: const Text(
                                  'Bread, Peanut butter, Apple',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 45.0, left: 10.0),
                                child: const Text(
                                  '525 kcal',
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),

                      ),
                      SizedBox(
                        width: 130,
                        height: 200,
                        child: Card(
                          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.only(
                            topRight: Radius.circular(50),
                            topLeft: Radius.circular(5),
                            bottomRight: Radius.circular(5),
                            bottomLeft: Radius.circular(5),
                          )
                          ),
                          margin: const EdgeInsets.only(left: 10.0),
                          color: Colors.blue,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(left: 10.0, top: 30),
                                child:  const Text('Lunch',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                              Container(
                                width: 100.0,
                                margin:const EdgeInsets.only(left: 10, top:15.0),
                                child: const Text(
                                  'Salmon, Mixed veggies, Avocado',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 45.0, left: 10.0),
                                child: const Text(
                                  '602 kcal',
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 130,
                        height: 200,
                        child: Card(
                          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.only(
                            topRight: Radius.circular(50),
                            topLeft: Radius.circular(5),
                            bottomRight: Radius.circular(5),
                            bottomLeft: Radius.circular(5),
                          )
                          ),
                          margin: const EdgeInsets.only(left: 10.0),
                          color: Colors.pinkAccent,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(left: 10.0, top: 30),
                                child:  const Text('Snack',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                              Container(
                                width: 100.0,
                                margin:const EdgeInsets.only(left: 10, top:15.0),
                                child: const Text(
                                  'Recommended: 800 kcal',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                              Container(
                                  margin: const EdgeInsets.only(top: 45.0, left: 10.0),
                                  height: 50,
                                  width: 50,
                                  child:Card(
                                    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(
                                        Radius.circular(20)
                                    )),
                                    elevation: 5,
                                    color: Colors.white,
                                    child: IconButton(onPressed: (){}, icon: const Icon(Icons.add), color: Colors.pink,),
                                  )
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 130,
                        height: 200,
                        child: Card(
                          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.only(
                            topRight: Radius.circular(50),
                            topLeft: Radius.circular(5),
                            bottomRight: Radius.circular(5),
                            bottomLeft: Radius.circular(5),
                          )
                          ),
                          margin: const EdgeInsets.only(left: 10.0),
                          color: Colors.blueAccent,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(left: 10.0, top: 30, right: 30.0),
                                child:  const Text('Dinner',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                              Container(
                                width: 100.0,
                                margin:const EdgeInsets.only(left: 10, top:15.0),
                                child: const Text(
                                  'Recommended: 700 kcal',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                              Container(
                                  margin: const EdgeInsets.only(top: 45.0, left: 10.0),
                                  height: 50,
                                  width: 50,
                                  child:Card(
                                    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(
                                        Radius.circular(20)
                                    )),
                                    elevation: 5,
                                    color: Colors.white,
                                    child: IconButton(onPressed: (){}, icon: const Icon(Icons.add), color: Colors.blue,),
                                  )
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, top: 15),
                      child: Text('Body measurement',
                        style:TextStyle(
                            color: Colors.grey[600],
                            fontWeight:   FontWeight.bold,
                            fontSize: 20
                        ),
                      ),
                    ),
                    Container(
                        margin: const EdgeInsets.only(top: 3, left: 90),
                        child: TextButton.icon(onPressed: (){}, icon: Icon(Icons.arrow_forward, color: Colors.black, size: 20,), label: Text('Today', style: TextStyle(
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                        ),))
                    ),
                  ],
                ),
                Column(
                  children: [
                   SizedBox(
                      height: 200,
                      width: 350,
                      child: Card(
                        elevation: 20,
                        shadowColor: Colors.grey,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(
                          topRight: Radius.circular(80),

                        )
                        ),
                        child:
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 20,top: 20),
                                child: Text('Weight',style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 20, top: 15),
                                    child: Text('206.8', style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30,
                                      color: Colors.blue
                                    ),),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 20, left: 5),
                                    child: Text('lbs', style: TextStyle(
                                      color: Colors.blueAccent,
                                      fontSize: 15
                                    ),),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 60, top: 20),
                                    child: Icon(Icons.watch_later_outlined, size: 20, color: Colors.grey,),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 20, left: 5),
                                    child: Text('Today 8:26 AM',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 200),
                                child: Text('InBody SmartScale', style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color:Colors.blueGrey ),),
                              ),
                              Container(
                                width: 300,
                                margin: EdgeInsets.only(left: 20, top: 20),
                                child:
                                Divider(
                                  color: Colors.grey[300],
                                  thickness: 2,
                                  height: 1,
                                ) ,
                              ),
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 20, top: 10),
                                    child: Text('185 cm', style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15
                                    ),),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 70, top: 10),
                                    child: Text('27.3 BMI', style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15
                                    ),),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 90, top: 10),
                                    child: Text('20%', style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15
                                    ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 20, top: 2),
                                    child: Text('Height', style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey
                                    ),),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 80),
                                    child: Text('Overweight', style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey
                                    ),),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 55),
                                    child: Text('Body fat', style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey
                                    ),),
                                  )
                                ],
                              )
                            ],
                          )
                      )
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 30),
                      child: Text('Water', style: TextStyle(
                          fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey
                      ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 120),
                      child: TextButton.icon(onPressed: (){}, icon: Icon(Icons.arrow_forward, color: Colors.black,), label: Text('Aqua SmartBottle', style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 17
                      ),))
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 200,
                      width: 360,
                      child: Card(
                        elevation: 20,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(
                          topRight: Radius.circular(80)
                        )),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 30, left: 20),
                              child: Text('2100', style: TextStyle(
                                  color: Colors.blueAccent,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold
                              ),),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 40, left: 10),
                              child: Text('ml',style: TextStyle(
                                color: Colors.blueAccent,
                                fontWeight: FontWeight.bold,
                              ),),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 90, left: 0),
                                  child: Text('of daily goal 3.5L'),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  height: 45,
                                  width: 45,
                                  margin: EdgeInsets.only(left: 0,top: 60 ),
                                  child: Card(
                                      elevation: 10,
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.all(
                                          Radius.circular(50)
                                      )),
                                      shadowColor: Colors.blueGrey,
                                      child: Container(
                                        child: IconButton(onPressed: (){}, icon: Icon(Icons.add)),
                                      )
                                  ),
                                ),
                                Container(
                                  height: 45,
                                  width: 45,
                                  margin: EdgeInsets.only(left: 0,top: 10 ),
                                  child: Card(
                                      elevation: 10,
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.all(
                                          Radius.circular(100)
                                      )),
                                      shadowColor: Colors.blueGrey,
                                      child: Container(
                                        child: IconButton(onPressed: (){}, icon: Icon(Icons.remove)),
                                      )
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
    );
  }
}

//SecondRoute Page

class SecondRoute extends StatefulWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  State<SecondRoute> createState() => _SecondRouteState();
}

class _SecondRouteState extends State<SecondRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueAccent,
        child: Icon(Icons.add),
        onPressed: (){},
      ),
      backgroundColor: Colors.white,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Container(
            margin: EdgeInsets.only(right: 0, left: 0),
            child:  Text('Training',
              style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
              ),
            ),
          ),
          actions: [
            Container(
              margin: EdgeInsets.only(left: 0),
              child:  Icon(Icons.arrow_back_ios, color: Colors.black),
            ),
            Container(
              child:Icon(Icons.calendar_today, color: Colors.black),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child:  Text('15 May', style: TextStyle(
                  color: Colors.black
              ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 20),
              child:   Icon(Icons.arrow_forward_ios, color: Colors.black,),
            )
          ],
          elevation: 0,
          backgroundColor: Colors.white70,
        ),
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          child:Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 50),
                child:  IconButton(onPressed: (){
                  Navigator.pop(context);
                }, icon: Icon(Icons.my_library_books, size: 30,)),
              ),
              Container(
                margin: EdgeInsets.only(left: 30),
                child: IconButton(onPressed: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder:(context) => const SecondRoute() ));
                }, icon: Icon(Icons.spoke_outlined, size: 30,)),
              ),
              Container(
                margin: EdgeInsets.only(left: 80),
                child: IconButton(onPressed: (){
                  Navigator.pop(context);
                }, icon: Icon(Icons.apple, size: 30)),
              ),
              Container(
                margin: EdgeInsets.only(left: 40),
                child: IconButton(onPressed: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder:(context) => const SecondRoute() ));
                }, icon: Icon(Icons.person, size: 30,)),
              )
            ],
          ) ,
        ),
        body:
        SingleChildScrollView(
         child: Column(
           children: [
             Row(
               children: [
                 Container(
                   margin: EdgeInsets.only(left: 20),
                   child: Text('Your program', style: TextStyle(
                       color: Colors.grey,
                       fontWeight: FontWeight.bold,
                       fontSize: 17
                   ),
                   ) ,
                 ),
                 Container(
                   margin: EdgeInsets.only(left: 180),
                   child: TextButton(onPressed: (){}, child: Text('Details', style: TextStyle(
                     fontSize: 19,
                     color: Colors.purple
                   ),)),
                 )
               ],
             ),
             Column(
               children: [
                 Container(
                   width: 350,
                   height: 200,
                   decoration: BoxDecoration(borderRadius: BorderRadius.only(
                     topRight: Radius.circular(60)
                   )),
                   child: Card(
                     elevation: 5,
                     child: Container(
                        decoration: BoxDecoration(gradient: LinearGradient(begin:Alignment.topLeft,end:Alignment.bottomRight,colors:[Colors.blue, Colors.purple] )),
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                         Container(
                           margin: EdgeInsets.only(left: 20, top: 10),
                          child: Text('Next workout', style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),),
                        ),Container(
                             margin: EdgeInsets.only(left: 20, top: 10),
                           width: 230,
                           child: Text('Legs Toning and Glutes workout at Home', style: TextStyle(
                             fontSize: 20,
                             fontWeight: FontWeight.bold,
                             color: Colors.white
                           ),),
                         ),
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 80, left: 20),
                                child: Icon(Icons.alarm, color: Colors.white,),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 80, left: 5),
                                child: Text('68 min', style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold
                                ),),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 190, top: 50),
                                child:Card(
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(
                                    Radius.circular(30)
                                  )),
                                  child: IconButton(onPressed: (){}, icon: Icon(Icons.play_arrow, color: Colors.purple,),),
                                )
                              )
                            ],
                          )
                         ],)
                       ),
                     )
                   ),
               ],
             ),
             Column(
               children: [
                 Container(
                   width: 350,
                   height: 85,
                   margin: EdgeInsets.only(top: 30),
                   child: Card(
                     elevation: 5,
                     shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(
                       Radius.circular(10)
                     )),
                     child:Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Container(
                           margin: EdgeInsets.only(left: 20, top: 10),
                           child: Text("You're doing great!", style: TextStyle(
                             color: Colors.purple,
                             fontWeight: FontWeight.bold
                           ),),
                         ),
                         Container(
                           margin: EdgeInsets.only(left: 20, top: 5),
                           width: 130,
                           child: Text('Keep it up and stick your plan!', style: TextStyle(
                             color: Colors.grey
                           ),),
                         )
                       ],
                     ),
                   ),
                 )
               ],
             ),
             Row(
               children: [
                 Container(
                   margin: EdgeInsets.only(left: 40, top: 20),
                   child: Text('Area of focus', style: TextStyle(
                     fontSize: 20,
                     color: Colors.grey,
                     fontWeight: FontWeight.bold
                   ),),
                 ),
                 Container(
                   margin: EdgeInsets.only(left: 160, top: 20),
                   child: TextButton(onPressed: (){}, child: Text('more', style: TextStyle(
                     fontWeight: FontWeight.bold,
                     color: Colors.purple,
                     fontSize: 15
                   ),)),
                 )
               ],
             )
           ],
         ),
        )
    );
  }
}
