import "package:flutter/material.dart";
import "package:task_8/Views/home_view.dart";
import "package:task_8/colors.dart";

class ResultView extends StatelessWidget {
  const ResultView({super.key, required this.res});

  final double res;
  String getClassification(){
    if (res<=16){
      return 'SEVERE THINNESS';
    }
    else if(res>=16 && res<17){
      return 'MODERATE THINNESS';
    }
    else if(res>=17 && res<18.5){
      return 'MILD THINNESS';
    }
    else if(res>=18.5 && res<25){
      return 'NORMAL';
    }
    else if(res>=25 && res<30){
      return 'OVERWEIGHT';
    }
    else if(res>=30 && res<35){
      return 'OBESE CLASS I';
    }
    else if(res>=35 && res<40){
      return 'OBESE CLASS II';
    }
    else{
      return 'OBESE CLASS III';
    }
  }

  String getAdvice(){
    if (res<=16){
      return 'Your body weight is severe thin !';
    }
    else if(res>=16 && res<17){
      return 'Your body weight is moderate thin !';
    }
    else if(res>=17 && res<18.5){
      return 'Your body weight is mild thin !';
    }
    else if(res>=18.5 && res<25){
      return 'Your body weight is normal !';
    }
    else if(res>=25 && res<30){
      return 'You are over weight !';
    }
    else if(res>=30 && res<35){
      return 'Your body weight is obese class I !';
    }
    else if(res>=35 && res<40){
      return 'Your body weight is obese class II !';
    }
    else{
      return 'Your body weight is obese class III !';
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
          leading: IconButton(
            onPressed: (){
              Navigator.of(context).pop(MaterialPageRoute(
                      builder: (context)=> const HomeView(),));
            }, 
            icon: Icon(Icons.arrow_back,
            color: AppColors.white,
            ),
            ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
             children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.only(right: 220, top: 20),
                   child: Text('Your result',
                   style: TextStyle(
                    color: AppColors.white,
                    fontSize: 30,
                   ),
                   ),
                ),
                ),
                Expanded(
                  flex: 5,
                  child: Container(
                      margin: const EdgeInsets.only(top: 12,bottom: 12),
                      decoration: BoxDecoration(
                        color: AppColors.background,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(78),
                              child: Text(getClassification(),
                              style: TextStyle(
                                color: AppColors.green,
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                              ),
                            ),
                           Text(res.toStringAsFixed(2),
                            style: TextStyle(
                              color: AppColors.white,
                              fontSize: 70,
                            ),
                            ),
                          const SizedBox(height: 80,),                        
                          Text(getAdvice(),
                            style: TextStyle(
                              color: AppColors.white,
                              fontSize: 16,
                            ),
                            ),
                          ],
                        ),
                      ),
                  ),
                  ),
              SizedBox(
                height: 80,
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
                    backgroundColor: AppColors.primary,
                    foregroundColor: AppColors.white,
                  ),
                  onPressed: (){
                    Navigator.of(context).pop(MaterialPageRoute(
                      builder: (context)=> const HomeView(),));
                  }, 
                  child: Text('Recalculate',
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: 17,
                  ),
                  ),
                  ),
              ),
             ],
          ),

          ),

    );
  }
}