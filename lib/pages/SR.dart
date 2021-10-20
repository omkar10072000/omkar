import 'package:flutter/material.dart';

class SR extends StatelessWidget {
  //static final String path = "lib/src/pages/profile/profile3.dart";
  // final image = avatars[1];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(16.0),
                    margin: EdgeInsets.only(top: 16.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5.0)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Text(
                                  "IT Department",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.black),
                                ),
                              ),

                              // style: Theme.of(context).textTheme.title,

                              ListTile(
                                contentPadding: EdgeInsets.all(0),
                                title: Text("Employee Name"),
                                subtitle: Text(
                                  "Omkar Shashikant Raje",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.black),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: Column(
                                children: <Widget>[
                                  Text("From"),
                                  Text("6.00 PM")
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: <Widget>[Text("TO"), Text("8.00 PM")],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: <Widget>[
                                  Text("Total Hours"),
                                  Text("2 Hours")
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  //this code is to add image of employee
                  /* Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://fluidcontrols.com/wp-content/uploads/2018/07/fc-logo.jpg"),
                            fit: BoxFit.cover)),
                    margin: EdgeInsets.only(left: 16.0),
                  ),*/
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Column(
                  children: <Widget>[
                    ListTile(
                      title: Text("Employee information"),
                    ),
                    Divider(),
                    ListTile(
                      title: Text("Employee ID"),
                      subtitle: Text("butterfly.little@gmail.com"),
                      leading: Icon(Icons.assignment_ind_rounded),
                    ),
                    ListTile(
                      title: Text("Regular Shift"),
                      subtitle: Text("9.00 TO 5.00"),
                      leading: Icon(Icons.timer_sharp),
                    ),
                    ListTile(
                      title: Text("DEPARTMENT"),
                      subtitle: Text("IT "),
                      leading: Icon(Icons.web),
                    ),
                    ListTile(
                      title: Text("Reason"),
                      subtitle: Text(
                        "Lorem ipsum, dolor sit amet consectetur adipisicing ",
                      ),
                      leading: Icon(Icons.person),
                    ),
                    ListTile(
                      title: Text(" Date"),
                      subtitle: Text("15 February 2019"),
                      leading: Icon(Icons.calendar_view_day),
                    ),
                    Row(children: [
                      SizedBox(width: 5.0),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: FlatButton(
                            color: Colors.red[500],
                            highlightColor: Colors.black,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            onPressed: () {},
                            child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Text(
                                "REJECT",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18),
                              ),
                            )),
                      ),
                      SizedBox(width: 5.0),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: FlatButton(
                            color: Colors.green[500],
                            shape: StadiumBorder(),
                            highlightColor: Colors.black,
                            onPressed: () {},
                            child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Text(
                                "APPROVED ",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18),
                              ),
                            )),
                      )
                    ])
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
