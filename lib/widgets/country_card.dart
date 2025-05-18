import 'package:flutter/material.dart';

class country_card extends StatefulWidget {
  final String flagURL;
  final String countryName;
  final String countryCapital;
  final String countryArea;
  final String countryPopulation;
  final String countryLanguage;
  final String countryRegion;

  const country_card({
    super.key,
    required this.countryName,
    required this.countryCapital,
    required this.countryArea,
    required this.countryPopulation,
    required this.countryLanguage,
    required this.countryRegion,
    required this.flagURL,
  });

  @override
  _country_cardState createState() => _country_cardState();
}

class _country_cardState extends State<country_card> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 200),
    );
    _animation = Tween<double>(begin: 1.0, end: 1.05).animate(_controller)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _startAnimation() {
    _controller.forward().then((_) => _controller.reverse());
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _startAnimation, // Tap triggers animation on mobile
      child: MouseRegion(
        onEnter: (_) => _controller.forward(), // Hover for web/desktop
        onExit: (_) => _controller.reverse(),
        child: AnimatedBuilder(
          animation: _animation,
          builder: (context, child) {
            return Transform.scale(
              scale: _animation.value,
              child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  double itemWidth = constraints.maxWidth;
                  double itemHeight = constraints.maxHeight;
                  return Card(
                    elevation: 10,
                    color: Colors.blue.shade100,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding:  EdgeInsets.all(itemWidth*0.03),
                      child: Column(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            flex: 2,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: AspectRatio(
                                aspectRatio: 16 / 10,
                                child: Image.network(
                                  widget.flagURL,
                                  width: double.infinity,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: itemWidth* 0.04),
                          Expanded(
                            flex: 3,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(
                                  child: Text(
                                    widget.countryName,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: itemWidth* 0.12,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 1.2,
                                    ),
                                  ),
                                ),
                                SizedBox(height: itemWidth* 0.04),
                                Text('Capital    : ${widget.countryCapital}',maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: itemWidth* 0.08,),),
                                Text('Area       : ${widget.countryArea}',maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: itemWidth* 0.08,),),
                                Text('Population : ${widget.countryPopulation}',maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: itemWidth* 0.08,),),
                                Text('Language   : ${widget.countryLanguage},',maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: itemWidth* 0.08,),),
                                Text('Region     : ${widget.countryRegion}',maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: itemWidth* 0.08,),),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },

              ),
            );
          },
        ),
      ),
    );
  }
}