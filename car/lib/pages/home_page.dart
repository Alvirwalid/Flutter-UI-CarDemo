import 'package:car/pages/collections.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatelessWidget {
 // const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Color(0xff181818),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Stack(
                    children: [
                      Container(
                        width: width,
                        margin: EdgeInsets.only(bottom: 50),
                        padding: EdgeInsets.all(100),
                        decoration: BoxDecoration(
                            color: Color(0xffE7FE55),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(40),
                              bottomRight: Radius.circular(40),
                            )),

                            // child: Container(
                            //   width: width,
                            //   decoration: BoxDecoration(
                            //     color: Colors.red,
                            //   ),
                            // ),
                      ),


                  // Container(
                  //   margin: EdgeInsets.only(left: 50,right: 50,bottom: 100),
                              
                  //             decoration: BoxDecoration(

                  //               // borderRadius: BorderRadius.only(
                  //               //   bottomLeft: Radius.circular(20)
                  //               // ),
                  //               border: Border(

                                  

                  //                 left: BorderSide(width: 4,color: Colors.grey),
                  //                 bottom: BorderSide(width: 4,color: Colors.grey),
                                  

                  //               ),
                  //               color: Colors.transparent,
                  //             ),
                  //           ),
                      Positioned(
                        bottom: -330,
                        top: -10,
                        right: -750,
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                          child: Image.asset(
                            './images/car0.png',
                          ),
                        ),
                      )
                    ],
                  ),
                )),
            Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Find the nearest \ncar and start your \nbest ride!',
                        maxLines: 3,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(height: 5,),
                      Text(
                        'Luxury cars, own drivers and instant\ndelivery of cars anywhere in the word',
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.6),
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(height: 10,),
                      InkWell(
                        onTap: () {
                          Route route = MaterialPageRoute(builder: (_) {
                            return const Collections();
                          });
                          Navigator.of(context).push(route);
                        },
                        child: Container(
                          padding: EdgeInsets.all(8),
                          width: double.infinity,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Get started',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Icon(
                                Icons.arrow_forward,
                                size: 30,
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
