import 'package:flutter/material.dart';

import 'Widgets/SquarePointer.dart';
import 'Widgets/choose_Options.dart';

class DetailsPage extends StatefulWidget {
   DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {

  ShowbottomShit(){
    showModalBottomSheet(
      //  barrierColor: Colors.blue,
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return Stack(
          children: [

            Column(
              mainAxisSize: MainAxisSize.min,
              children: [

                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(28),
                    topRight: Radius.circular(28),
                  ),
                  child: Image.asset(
                    'assets/images/Eat Healthy.png',
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Plant Protein Bowl',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Card(
                            color: Colors.yellow.shade100,
                            elevation: 0,
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Row(
                                children: [
                                  Text(
                                    '★★★★★★★',
                                    style: TextStyle(
                                      color: Colors.yellow,
                                      fontSize: 20,
                                    ),
                                  ),
                                  Text(
                                    ' 11',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          Card(
                            shape: OutlineInputBorder(
                              borderSide: BorderSide(
                                width: 2,
                                color: Colors.red,
                              ),
                            ),
                            color: Color(0xffFFA9A9),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Bestseller',
                                style: TextStyle(color: Colors.red),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Text('veg preoaration soring mix, plant base'),



                      ChooseOptions(),
                      ChooseOptions(),
                      ChooseOptions(),
                      ChooseOptions(),
                      ChooseOptions(),
                      Text('Choose your Protein ', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                      Text('Up to 3 options'),
                      ChooseOptions(),
                      Row(
                        children: [
                          Card(
                            color : Colors.red.shade100,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Icon(Icons.add, color: Colors.red,),
                                  SizedBox(width: 5,),
                                  Text('1'),
                                  SizedBox(width: 5,),
                                  Icon(Icons.remove, color: Colors.red,),
                                ],
                              ),
                            ),
                          ),

                          Expanded(
                            child: Card(
                              color : Colors.red,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(child: Text('Add ৳150', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),)),
                              ),
                            ),
                          )

                        ],
                      )

                    ],
                  ),
                ),
              ],
            ),
            Positioned(
                top : 0,
                child: Container(
                  // color: Colors.red,
                    width : MediaQuery.of(context).size.width,
                    child: IconButton(onPressed: (){}, icon: Icon(Icons.close, size : 50,color: Colors.black,)))),
          ],
        );
      },
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(8, 30, 8, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Eat Healthy',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                    Text(
                      'Tinku Fast Food Center',
                      style: TextStyle(fontSize: 15, color: Color(0xff3C3636)),
                    ),
                    Text(
                      'hyderabad kukatpally',
                      style: TextStyle(fontSize: 12, color: Color(0xff8C7B7B)),
                    ),
                    Image.asset("assets/images/Max Safety.png"),
                  ],
                ),
                Column(
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      color: Colors.green,
                      child: SizedBox(
                        //  width : 100,
                        //  height: 60,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            '★ 4.5\nDelivery',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Stack(
                      children: [
                        SizedBox(
                          height: 40,
                          width: 80,
                          child: Image.asset("assets/images/Amul.png"),
                        ),
                        Positioned(
                          top: 0,
                          bottom: 0,
                          child: SizedBox(
                            height: 40,
                            width: 80,
                            child: Card(color: Colors.black12),
                          ),
                        ),
                        Center(
                          child: Text(
                            '6\nPhotos',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 15),
            SizedBox(
              height: 40,
              width: double.infinity,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                color: Color(0x89F6F3F3),
                child: Row(
                  children: [
                    Expanded(child: Center(child: Text('DELIVERY'))),
                    Expanded(child: Center(child: Text('DINNER'))),
                    Expanded(child: Center(child: Text('REVIEWS'))),
                  ],
                ),
              ),
            ),
            SizedBox(height: 5),
            Card(
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              color: Colors.white,
              child: Row(
                children: [
                  Expanded(
                    flex: 5,
                    child: Center(
                      child: ListTile(
                        leading: Icon(Icons.directions_bike_outlined),
                        title: Text('MODE', style: TextStyle(fontSize: 14)),
                        subtitle: Text(
                          'Delivery',
                          style: TextStyle(fontSize: 11),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Center(
                      child: ListTile(
                        leading: Icon(Icons.timer_sharp),
                        title: Text('TIME', style: TextStyle(fontSize: 14)),
                        subtitle: Text(
                          '30 min',
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 6,
                    child: Center(
                      child: ListTile(
                        leading: Icon(Icons.percent_outlined),
                        title: Text('OFFERS', style: TextStyle(fontSize: 14)),
                        subtitle: Text(
                          'View all',
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Card(
                color: Color(0x89F6F3F3),
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                ),
                child: Row(
                  children: [
                    Icon(Icons.directions_bike_outlined),
                    Text(' ৳50 distance charge'),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: Card(
                shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                elevation: 0,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 8, 8, 8),
                  child: Row(
                    children: [
                      Text(
                        'Full Mane',
                        style: TextStyle(fontSize: 18, color: Colors.grey),
                      ),
                      SizedBox(width: 50),
                      Text('Healthy', style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
              ),
            ),

            Row(
              children: [
                Switch(
                  value: false,
                  onChanged: (bool value) {
                    // Handle switch change
                  },
                ),
                Text('veg'),
                SizedBox(width: 50),
                Switch(
                  value: false,
                  onChanged: (bool value) {
                    // Handle switch change
                  },
                ),
                Text('egg'),
                SizedBox(width: 20),

                SizedBox(
                  height: 40,
                  width: 150,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Search',
                      labelStyle: TextStyle(color: Colors.grey),
                      prefixIcon: Icon(Icons.search, color: Colors.redAccent),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Recommended',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Icon(Icons.arrow_drop_up),
              ],
            ),

            /////..................................................................food card...................
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SquarePointer(),
                    Text(
                      'Plant Protein Bowl',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '৳200',
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                    Text(
                      'Veg Preoaration Soring mix, plant\nbase organic... Read more ',
                      maxLines: 2,
                      style: TextStyle(fontSize: 15, color: Colors.black54),
                    ),
                  ],
                ),

                Row(
                  children: [
                    GestureDetector(
                      onTap: ShowbottomShit,
                      child: Stack(
                        children: [
                          Image.asset(
                            "assets/images/Eat Healthy.png",
                            height: 70,
                            width: 80,
                            fit: BoxFit.cover,
                          ),
                          Positioned(
                            bottom: -15,
                            left: 15,
                            child: Card(
                              shape: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.redAccent, // Border color
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(0),
                              ),
                              color: Colors.redAccent.shade100,
                              child: Badge(
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Text(
                                    'ADD',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SquarePointer(),
                    Text(
                      'Plant Protein Bowl',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '৳200',
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                    Text(
                      'Veg Preoaration Soring mix, plant\nbase organic... Read more ',
                      maxLines: 2,
                      style: TextStyle(fontSize: 15, color: Colors.black54),
                    ),
                  ],
                ),

                Row(
                  children: [
                    GestureDetector(
                      onTap: ShowbottomShit,
                      child: Stack(
                        children: [
                          Image.asset(
                            "assets/images/Amul.png",
                            height: 70,
                            width: 80,
                            fit: BoxFit.cover,
                          ),
                          Positioned(
                            bottom: -15,
                            left: 15,
                            child: Card(
                              shape: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.redAccent, // Border color
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(0),
                              ),
                              color: Colors.redAccent.shade100,
                              child: Badge(
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Text(
                                    'ADD',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
//.......................................................bottom sheet.....................................................................

          ],
        ),

      ),

    );
  }
}
