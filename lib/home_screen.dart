import 'dart:ui' as ui;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:gmail_ui/message_model.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  Icon unstarIcon = Icon(Icons.star_border);
  Icon startIcon = Icon(
    Icons.star_outlined,
    color: Colors.yellow,
  );

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFdb3236),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: double.infinity,
            height: 200,
            padding: EdgeInsets.only(left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.dehaze,
                  color: Colors.white,
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 5),
                    height: 45,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: TextFormField(
                          decoration: InputDecoration(
                              hintText: "Search email",
                              border: InputBorder.none,
                              suffixIcon: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcR_BSXPlBjoBeJruSaCamv7kQuMNjoIIWX0CITXUVoapFCbRM9g'),
                                ),
                              ),
                              hintStyle: TextStyle(color: Colors.grey))),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Padding(
                            padding: EdgeInsets.all(20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          'PRIMARY',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Icon(
                                          Icons.arrow_drop_down,
                                          color: Colors.black,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Container(
                                  decoration: BoxDecoration(color: Color(0xFFdb3236),),
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Text(
                                      '2 New',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 10),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.only(right: 15, bottom: 28),
                            child: Icon(
                              Icons.more_horiz,
                              color: Colors.grey,
                            ))
                      ],
                    ),
                    Flexible(
                        child: Container(
                          margin: EdgeInsets.all(0),
                          child: MediaQuery.removePadding(
                            context: context,
                            removeTop: true,
                            child: ListView.builder(

                                itemCount: list.length,
                                scrollDirection: Axis.vertical,
                                shrinkWrap: true,
                                itemBuilder: (context, index) {
                                  return Dismissible(
                                      key: ValueKey(''),
                                      child: ListTile(
                                        leading: CircleAvatar(
                                          radius: 25,
                                          child: Container(
                                            decoration: BoxDecoration(
                                                border: Border.all(width: 0),
                                                shape: BoxShape.circle,
                                                boxShadow: [
                                                  new BoxShadow(
                                                    color: Colors.black,
                                                    blurRadius: 2.0,
                                                  ),
                                                ]),
                                            child: CircleAvatar(
                                              radius: 25,
                                              backgroundImage:
                                              NetworkImage(list[index].image),
                                              backgroundColor: Colors.transparent,
                                            ),
                                          ),
                                        ),
                                        title: Column(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                          crossAxisAlignment: CrossAxisAlignment
                                              .start,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text(
                                                  list[index].sender,
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      color: Colors.black,
                                                      fontWeight: FontWeight
                                                          .bold),
                                                ),
                                                Text(
                                                  list[index].date,
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      color: Colors.black,
                                                      fontWeight: FontWeight
                                                          .w500),
                                                )
                                              ],
                                            ),
                                            Text(
                                              list[index].subject,
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w300),
                                            )
                                          ],
                                        ),
                                        subtitle: Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              Expanded(
                                                child: Text(
                                                  list[index].message,
                                                  overflow: TextOverflow.ellipsis,
                                                ),
                                              ),
                                              list[index].isStarred
                                                  ? IconButton(
                                                  onPressed: () {
                                                    setState(() {
                                                      changeStar(index);
                                                    });
                                                  },
                                                  icon: startIcon)
                                                  : IconButton(
                                                  onPressed: () {
                                                    setState(() {
                                                      changeStar(index);
                                                    });
                                                  },
                                                  icon: unstarIcon),

                                              // IconButton(
                                              //         icon: Icon(
                                              //           Icons.star_outlined,
                                              //           color: Colors.yellow,
                                              //         ),
                                              //         onPressed: () {
                                              //           setState(() {
                                              //             changeStar(index);
                                              //           });
                                              //         },
                                              //       )
                                            ]),
                                      ));
                                }),
                          ),
                        ))
                  ],
                ),
              ))
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: Text(
          'Compose',
          style: GoogleFonts.montserrat(
              color: Colors.white, fontWeight: FontWeight.w500),
        ),
        icon: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
          child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Icon(Icons.add,color: Color(0xFFdb3236),)
          ),
        ),
        backgroundColor: Color(0xFFdb3236),
      ),
    );
  }

  changeStar(int i) {
    if (list[i].isStarred) {
      setState(() {
        list[i].isStarred = false;
        //startIcon=unstarIcon;
      });
    } else {
      list[i].isStarred = true;

      //unstarIcon=startIcon;
      // print(list[i].isStarred);
    }
  }
}
