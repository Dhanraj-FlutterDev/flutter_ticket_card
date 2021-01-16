import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fw_ticket/fw_ticket.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DemoApp(),
    );
  }
}

class DemoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        title: Text('Ticket UI'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          width: 375,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 20.0,),
              Ticket(
                innerRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0),
                ),
                outerRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 4),
                    blurRadius: 2.0,
                    spreadRadius: 2.0,
                    color: Colors.white60
                  ),
                ],
                child: Image.asset('assets/ff7.jpg'),
              ),
              Ticket(
                innerRadius: BorderRadius.only(
                  topRight: Radius.circular(10.0),
                  topLeft: Radius.circular(10.0),
                ),
                outerRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 4),
                    blurRadius: 2.0,
                    spreadRadius: 2.0,
                    color: Colors.white60,
                  ),
                ],
                child: Container(
                  color: Colors.white,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment:MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.remove,color: Colors.black,),
                          Text('2 Tickets',style: TextStyle(fontSize: 18.0),),
                          Icon(Icons.add),
                        ],
                      ),
                      Divider(
                        height: 0.0,
                        color: Colors.grey,
                        thickness: 1.0,
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: Padding(padding: EdgeInsets.all(16.0),
                              child: Column(
                                children: [
                                  Text('Date'),
                                  FittedBox(
                                    child: Text('20/20',style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w600,
                                    ),),
                                  )
                                ],
                              ),
                              ),
                          ),
                          Expanded(
                            child: Padding(padding: EdgeInsets.all(16.0),
                              child: Column(
                                children: [
                                  Text('Time'),
                                  FittedBox(
                                    child: Text('9.00PM',style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w600,
                                    ),),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(padding: EdgeInsets.all(16.0),
                              child: Column(
                                children: [
                                  Text('Price'),
                                  FittedBox(
                                    child: Text('\$20.00',style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w600,
                                    ),),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: double.infinity,
                        height: 50,
                        color: Colors.blue,
                        child: Center(
                          child: InkWell(
                            child: Text('Book Ticket',style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),),
                            onTap: (){
                              print('Ticket Booked!');
                            },
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}















