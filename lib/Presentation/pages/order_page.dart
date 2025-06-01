import 'package:flutter/material.dart';
import 'package:signup_page/Presentation/pages/Widgets/foodCard.dart';
import '../../Data/foodItem.dart';
import 'details_page.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

void bottomSheet(context){
  showModalBottomSheet(context: context, builder: (context){
     return Container(
       child: Column(
         children: [
               Image.asset('assets/images/Plant Protin Bowl.png')
         ],
       ),
     );
  });
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8.0, 30, 8, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header with Location and Profile
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.location_on_outlined),
                      Text(
                        'Khilgaon , Dhaka ',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/images/profile.png'),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 5),
        
              // Search Field
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search, color: Colors.grey),
                  hintText: "Search for a restaurant name, cuisine, or a specific dish..",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    overflow: TextOverflow.ellipsis,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: 10),
        
              // Flexible Row for Categories
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black38, width: 2),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Center(child: Text('Max\nSafety',)),
                      ),
                    ),
                  ),
                  SizedBox(width: 5),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black38, width: 2),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Row(
                            children: [
                              Icon(Icons.workspace_premium),
                              Text('Pro'),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 5),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black38, width: 2),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Row(
                            children: [
                              Text('Cuisines', style: TextStyle(fontSize: 12)),
                              Icon(Icons.arrow_drop_down_sharp),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 5),

                  SizedBox(width: 5),
                  Flexible(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black38, width: 2),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Row(
                            children: [
                              Text('Rating', style: TextStyle(fontSize: 12)),
                              Icon(Icons.star_border_outlined),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
        //.............................................offer card........................................................................
        
              Row(
                children: [
                  SizedBox(
                    height: 200,
                    child: Stack(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width *.5,
                          child: Card(
                            color: Colors.redAccent,
                            child: Padding(
                              padding: const EdgeInsets.all(30.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Up to',style: TextStyle(fontSize: 12, color: Colors.white),),
                                  Text('60% off',style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),),
                                  Text('no cooking',style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),
                                  Text('JULY',style: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold),),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          right: 20,
                            bottom: 10,
                            child: Image.asset("assets/images/girl.png",)),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 200,
                    child: Stack(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width *.46,    /// Expanded
                          child: Card(
                            color: Colors.blue.shade300,
                            child: Padding(
                              padding: const EdgeInsets.all(30.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Biiiing',style: TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),),
                                  Text('Discount',style: TextStyle(fontSize: 20, color: Colors.white, ),),
                                  Text('now on your favourite\nrestaurants',style: TextStyle(fontSize: 10, color: Colors.white, fontWeight: FontWeight.bold),),
        
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                            right: 8,
                            bottom: 5,
                            child: Image.asset("assets/images/Pizza.png",  )),
                      ],
                    ),
                  )
                ],
              ),
        
              SizedBox(height: 10),
             const Text('Eat what makes you happy', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
 // ......................................GridView for Food Items

              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5,
                  crossAxisCount: 4,
                ),
                itemCount: CircularfoodList.length,
                itemBuilder: (BuildContext context, int index) {
                  final item = CircularfoodList[index];
                  return FittedBox(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      elevation: 0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            item['imageUrl']!,
                            height: 80, // Adjust size as needed
                          ),
                          SizedBox(height: 5,),
                          Text(item['name']!),
                        ],
                      ),
                    ),
                  );
                },
              ),
        
              // See more Button
              SizedBox(
                height: 50,
                width: double.infinity,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide(color: Colors.black, width: 3),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('See more', style: TextStyle(color: Colors.black),),
                      Icon(Icons.keyboard_arrow_down_outlined)
                    ],
                  ),
                ),
              ),
  //..............................................................Food card ............................................
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: FoodCardList.length,
                itemBuilder: (context, index) {
                  final Carditem = FoodCardList[index];
                  return Foodcard(
                    name: Carditem['name'] ?? '',
                    title: Carditem['title'] ?? '',
                    taka: Carditem['price'] ?? '',
                    rating: Carditem['rating'] ?? '',
                    imageUrl: Carditem['imageUrl'] ?? '',
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsPage()));
                    },

                  );
                },
              )

            ],
          ),
        ),
      ),

    );
  }
}
