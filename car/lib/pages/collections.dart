import 'package:car/iitem/itemdemo.dart';
import 'package:car/iitem/itemlist.dart';
import 'package:car/pages/details.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class Collections extends StatefulWidget {
  const Collections({Key? key}) : super(key: key);

  // final Item? model;
  // Collections({this.model});

  @override
  State<Collections> createState() => _CollectionsState();
}

class _CollectionsState extends State<Collections> {
  
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {


    final height = MediaQuery.of(context).size.height;
  final width = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            SizedBox(
              height: 80,
            ),
            Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Brands',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24),
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            border: Border.all(
                                width: 1, color: Colors.grey.withOpacity(.2)),
                            shape: BoxShape.circle,
                            color: Colors.transparent,
                          ),
                          child: Icon(
                            Icons.search,
                            size: 30,
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
                    Container(
                      color: Colors.transparent,
                      width: double.infinity,
                      height: 150,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: itemlist.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    isVisible = !isVisible;
                                  });
                                },
                                child: Container(
                                  width: 200,
                                  height: 100,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow(
                                            offset: Offset(2, 2),
                                            color: Colors.black.withOpacity(.6),
                                            blurRadius: 5.0)
                                      ],
                                      color: itemlist[index].logo == 'Porshe'
                                          ? Color(0xffE7FE55)
                                          : Colors.white),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        '${itemlist[index].logoimg}',
                                        width: 50,
                                        height: 50,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(itemlist[index].logo == 'Porshe'
                                              ? Icons.check
                                              : null),
                                          Text(
                                            '${itemlist[index].logo}',
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          }),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Choose a Car',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 22),
                        ),
                        Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1, color: Colors.grey.withOpacity(.2)),
                              shape: BoxShape.circle,
                              color: Colors.transparent,
                            ),
                            child: Icon(
                              Icons.filter_alt_outlined,
                              size: 20,
                              color: Colors.black.withOpacity(.6),
                            ))
                      ],
                    )
                  ],
                )),

            // item price rating
            //last expanded
            Expanded(
                flex: 1,
                child: PageView.builder(
              

                    scrollDirection: Axis.vertical,
                    itemCount: myitem.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: InkWell(
                          onTap: (){
                            Route route = MaterialPageRoute(builder: (_) {
                            return  Details();
                          });
                          Navigator.of(context).push(route);
                          },
                          child: Container(
                            padding: EdgeInsets.all(20),
                          
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(.6),
                                    offset: Offset(3, 3),
                                    blurRadius: 5,
                                  )
                                ],
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '${myitem[index].name}',
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Row(
                                      children: [
                                        Icon(myitem[index].ratingicon),
                                        Text('${myitem[index].rating}',
                                            style: TextStyle(
                                                fontSize: 18, color: Colors.grey))
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text('${myitem[index].price}',
                                        style: TextStyle(
                                            fontSize: 30,
                                            fontWeight: FontWeight.w600)),
                                    Text('${myitem[index].hour}',
                                        style: TextStyle(color: Colors.grey))
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  
                                  children: [
                                  
                        
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        width: 50,
                                        height: 50,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              width: 1,
                                              color: Colors.grey.withOpacity(.2)),
                                          shape: BoxShape.circle,
                                          color: Colors.transparent,
                                        ),
                                        child: Icon(
                                          Icons.arrow_forward,
                                          size: 30,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                        
                                    Expanded(
                                        flex: 3,
                                        child: Image.asset(
                                          '${myitem[index].img}',
                                          width: width*0.30,
                                           height: height*0.22,
                                          fit: BoxFit.cover,
                                        ))
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    })),
          ],
        ),
      ),
    );
  }
}
