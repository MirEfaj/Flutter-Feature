import 'package:flutter/material.dart';
import '../Data/countrys_data.dart';
import '../widgets/country_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  int gridColumnNum(BuildContext context) {
    double size = MediaQuery.of(context).size.width;
    if (size < 768) {
      return 2;
    } else if (size >= 768 && size < 1024) {
      return 3;
    } else {
      return 4;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      left: false,
      right: false,
      top: true,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
            //  shrinkWrap:true ,
            itemCount: countryList.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: gridColumnNum(context),
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
                 childAspectRatio: 2/3.2
            ),
            itemBuilder: (context, index) {
              final country = countryList[index];

              return country_card(
                countryName: country['countryName']!,
                countryCapital: country['countryCapital']!,
                countryArea: country['countryArea']!,
                countryPopulation: country['countryPopulation']!,
                countryLanguage: country['countryLanguage']!,
                countryRegion: country['countryRegion']!,
                flagURL: country['flagURL']!,
              );
            },
          ),
        ),
      ),
    );
  }
}