import 'package:car/iitem/itemdemo.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class Details extends StatelessWidget {
 // const Details({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff1A1A1A),
        appBar: AppBar(
          backgroundColor: Color(0xffE7FE55),
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.all(5),
            child: InkWell(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Container(
                  alignment: Alignment.center,
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(
                        width: 1, color: Colors.grey.withOpacity(.2)),
                    shape: BoxShape.circle,
                    color: Colors.transparent,
                  ),
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      size: 20,
                      color: Colors.grey,
                    ),
                  )),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(5),
              child: Container(
                  alignment: Alignment.center,
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(
                        width: 1, color: Colors.grey.withOpacity(.2)),
                    shape: BoxShape.circle,
                    color: Colors.transparent,
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.more_horiz,
                      size: 20,
                      color: Colors.grey,
                    ),
                  )),
            ),
          ],
        ),
        body: Container(
          width: width,
          height: height,
          child: Column(
            children: [
              Expanded(
                  flex: 3,
                  child: Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: Color(0xffE7FE55),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(40),
                          bottomRight: Radius.circular(40),
                        )),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '${myitem[0].name}',
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.w600),
                            ),
                            Row(
                              children: [
                                Icon(myitem[0].ratingicon),
                                Text('${myitem[0].rating}',
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.grey))
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text('${myitem[0].price}',
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.w600)),
                            Text('${myitem[0].hour}',
                                style: TextStyle(color: Colors.grey))
                          ],
                        ),
                        Container(
                          width: width,
                          height: height * 0.3,
                          color: Colors.transparent,
                          child: Image.asset('./images/car0.png'),
                        )
                      ],
                    ),
                  )),
              Expanded(
                  flex: 2,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                    Icons.wb_cloudy_outlined,
                                    size: 40,
                                    color: Color(0xffE7FE55).withOpacity(.7),
                                  ),
                                  Text(
                                    'Climate control',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        color: Colors.white),
                                  ),
                                  Text(
                                    'Two-zone',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                        color: Colors.white.withOpacity(.7)),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 30),
                              width: 120,
                              height: 2,
                              color: Colors.grey.withOpacity(.7),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.electric_bolt,
                                    size: 40,
                                    color: Color(0xffE7FE55),
                                  ),
                                  Text(
                                    'Electricity',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        color: Colors.white),
                                  ),
                                  Text(
                                    '100%',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                        color: Colors.white.withOpacity(.7)),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 20),
                              width: 2,
                              height: 60,
                              color: Colors.grey.withOpacity(.7),
                            ),
                            Container(
                              margin: EdgeInsets.only(bottom: 20),
                              width: 2,
                              height: 60,
                              color: Colors.grey.withOpacity(.7),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                    Icons.speed_outlined,
                                    size: 40,
                                    color: Color(0xffE7FE55).withOpacity(.7),
                                  ),
                                  Text(
                                    'Acceleration',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        color: Colors.white),
                                  ),
                                  Text(
                                    '4.2s 0-100km',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                        color: Colors.white.withOpacity(.7)),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 30),
                              width: 120,
                              height: 2,
                              color: Colors.grey.withOpacity(.7),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                    Icons.add_circle_outline,
                                    size: 40,
                                    color: Color(0xffE7FE55),
                                  ),
                                  Text(
                                    'Gear box',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        color: Colors.white),
                                  ),
                                  Text(
                                    'Automatic',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                        color: Colors.white.withOpacity(.7)),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
