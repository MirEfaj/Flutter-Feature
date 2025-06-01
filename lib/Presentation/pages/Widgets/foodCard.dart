import 'package:flutter/material.dart';

class Foodcard extends StatelessWidget {
  final String name;
  final String imageUrl;  // Changed to camelCase
  final String title;
  final String taka;
  final String rating;
  final VoidCallback onTap;  // Removed redundant parentheses

  const Foodcard({
    super.key,
    required this.name,
    required this.title,
    required this.taka,
    required this.rating,
    required this.imageUrl,  // Changed to camelCase
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image of the food item
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
              child: Image.asset(
                imageUrl,  // Use camelCase here
                fit: BoxFit.cover,
                height: 200,
                width: double.infinity,
              ),
            ),

            // Food details section
            Padding(
              padding: const EdgeInsets.fromLTRB(5, 8, 0, 10),
              child: Row(
                children: [
                  Flexible(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(title, style: TextStyle(fontSize: 15)),
                        ListTile(
                          leading: Image.asset(
                            'assets/images/cardBottomImage.png',
                          ),
                          title: Text(
                            'Zomato funds environmental project to offset delivery carbon footprint',
                            style: TextStyle(fontSize: 10),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 8, 5, 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Card(
                              color: Color(0xff2B7D0F),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  '★ $rating',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            '৳$taka for one',
                            style: TextStyle(color: Colors.black),
                          ),
                          SizedBox(height: 5),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              CircleAvatar(
                                radius: 20,
                                backgroundColor: Color(0xff4E1F43),
                                child: Icon(
                                  Icons.auto_graph_sharp,
                                  color: Colors.white,
                                ),
                              ),
                              Flexible(
                                child: Image.asset(
                                  'assets/images/Max Safety.png',
                                  height: 40,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
