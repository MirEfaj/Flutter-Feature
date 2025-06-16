import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Water_tracker extends StatefulWidget {
  const Water_tracker({super.key});

  @override
  State<Water_tracker> createState() => _Water_trackerState();
}

class _Water_trackerState extends State<Water_tracker> {
  int currentIntake = 0 ;
  final int dailyGoal = 2000;

  void WaterAddBtn(int amount){
    setState(() {});
    currentIntake = (currentIntake + amount).clamp(0, dailyGoal);
  }
  void reset(){
    setState(() {});
    currentIntake = 0;
  }



  @override
  Widget build(BuildContext context) {
    double progress = (currentIntake/dailyGoal).clamp(0.0, 1.0);
    return Scaffold(
      appBar: AppBar(
        title: Text('Water Tracker', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      backgroundColor: Colors.blue.shade50,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 10.h),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.r),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blue.withAlpha(100),
                      blurRadius: 10,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                padding: EdgeInsets.all(25.w),
                child: Column(
                  children: [
                    Text(
                      "Today's inTake Water",
                      style: TextStyle(fontSize: 20.sp, color: Colors.black),
                    ),
                    Text(
                      "$currentIntake ml",
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.h),
             Stack(
               alignment: Alignment.center,
               children: [
                 SizedBox(
                   height: 150.h,
                   width: 150.w,
                   child: CircularProgressIndicator(
                     color: Colors.blue,
                     backgroundColor: Colors.white,
                     value: progress,
                     strokeWidth: 10.r,
                   ),
                 ),
                 Text('${(progress*100).toInt()}%',style: TextStyle(color: Colors.blue, fontSize: 35.sp, fontWeight: FontWeight.bold),)

               ],
             ),
              SizedBox(height: 20.h),
              WaterAdd(add_Water: '+100 ml', ontap: () {WaterAddBtn(100);  },),
              SizedBox(height: 10.h),
              WaterAdd(add_Water: '+250 ml', ontap: () { WaterAddBtn(250);},),
              SizedBox(height: 10.h),
              WaterAdd(add_Water: '+500 ml', ontap: () {WaterAddBtn(500);},),
              SizedBox(height: 10.h),
              WaterAdd(add_Water: '+1 L', ontap: () {WaterAddBtn(1000);},),
              SizedBox(height: 10.h),
              WaterAdd(add_Water: 'Reset', btnColor: Colors.redAccent, ontap: () { reset(); },),
            ],
          ),
        ),
      ),
    );
  }
}


class WaterAdd extends StatelessWidget {
  final String add_Water;
  Color? btnColor;
  final VoidCallback ontap;

  WaterAdd({
    super.key,
    required this.add_Water,
    this.btnColor,
    required this.ontap
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: SizedBox(
        width: double.infinity,
        height: 40.h,
        child: ElevatedButton.icon(
          onPressed: ontap,
          style: ElevatedButton.styleFrom(
              backgroundColor: btnColor ?? Colors.blue,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.r)
              )
          ),
          icon: Icon(Icons.local_drink, size: 22.h),
          label: Text(add_Water, style: TextStyle(fontSize: 20.sp)),
        ),
      ),
    );
  }
}

