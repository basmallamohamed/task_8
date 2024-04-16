import "package:flutter/material.dart";
import "package:task_8/Views/result_view.dart";
import "package:task_8/colors.dart";

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int age= 22;
  int weight= 60;
  int height= 150;
  bool isMale= true; 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Bmindex',
        style: TextStyle(
          color: AppColors.white,
          fontSize: 18,
        ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
             Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () {
                        setState(() {
                          isMale = true;
                        });
                      },
                      child: Container(
                         decoration: BoxDecoration(
                           color: isMale ?AppColors.background
                                         :AppColors.primary,
                           borderRadius: BorderRadius.circular(18),
                         ),
                         child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.male_rounded,
                              color: AppColors.white,
                              size: 75,
                              ),
                              Text('Male   ',
                              style: TextStyle(
                                color: AppColors.white,
                                fontSize: 15,
                              ),
                              ),
                            ],
                          ),
                         ),
                      ),
                    ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Expanded(
                    child: InkWell(
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      onTap: () {
                        setState(() {
                          isMale = false;
                        });
                      },
                      child: Container(
                         decoration: BoxDecoration(
                           color: isMale ?AppColors.primary
                                         :AppColors.background,
                           borderRadius: BorderRadius.circular(20),
                         ),
                         child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.female_rounded,
                              color: AppColors.white,
                              size: 75,
                              ),
                              Text('Female',
                              style: TextStyle(
                                color: AppColors.white,
                                fontSize: 15,
                              ),
                              ),
                            ],
                          ),
                         ),
                      ),
                    ),
                    ),

                ],
              ),
              ),
              
              Expanded(
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 12),
                  decoration: BoxDecoration(
                    color: AppColors.background,
                    borderRadius: BorderRadius.circular(20), 
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Height',
                        style: TextStyle(
                          color: AppColors.white,
                          fontSize: 15,
                        ),
                        ),
                         Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(height.toString(),
                            style: TextStyle(
                              color: AppColors.white,
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                            Text('cm',
                            style: TextStyle(
                              color: AppColors.white,
                            ),
                            ),
                          ],
                        ),
                        Slider(
                          value: height.toDouble(),
                          min: 120,
                          max: 220, 
                          activeColor: AppColors.primary,
                          inactiveColor: AppColors.button,
                          onChanged: (value){
                            setState(() {
                              height = value.toInt();
                            });
                          }),
                      ],
                    ),
                  ),
                ),
                ),
              Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                       decoration: BoxDecoration(
                         color: AppColors.background,
                         borderRadius: BorderRadius.circular(18),
                       ),
                       child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Weight',
                            style: TextStyle(
                              color: AppColors.white,
                              fontSize: 15,
                            ),
                            ),
                            Text(weight.toString(),
                            style: TextStyle(
                              color: AppColors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 28,
                            ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                  style: IconButton.styleFrom(
                                    backgroundColor: AppColors.button,
                                    foregroundColor: AppColors.background,
                                  ),
                                  onPressed: (){
                                    if(weight<100){
                                      setState(() {
                                        weight++;
                                      });
                                    }
                                  }, 
                                  icon: Icon(Icons.add,
                                  color: AppColors.white,
                                  ),
                                  ),
                                IconButton(
                                  style: IconButton.styleFrom(
                                    backgroundColor: AppColors.button,
                                    foregroundColor: AppColors.background,
                                  ),
                                  onPressed: (){
                                    if(weight>10){
                                      setState(() {
                                        weight--;
                                      });
                                    }
                                  }, 
                                  icon: Icon(Icons.remove,
                                  color: AppColors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                       ),
                    ),
                    ),
                    const SizedBox(width: 15,),
                    Expanded(
                    child: Container(
                       decoration: BoxDecoration(
                         color: AppColors.background,
                         borderRadius: BorderRadius.circular(18),
                       ),
                       child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Age',
                            style: TextStyle(
                              color: AppColors.white,
                              fontSize: 15,
                            ),
                            ),
                            Text(age.toString(),
                            style: TextStyle(
                              color: AppColors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 28,
                            ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                  style: IconButton.styleFrom(
                                    backgroundColor: AppColors.button,
                                    foregroundColor: AppColors.background,
                                  ),
                                  onPressed: (){
                                    if(age<80){
                                      setState(() {
                                         age++;
                                    });
                                    }
                                  }, 
                                  icon: Icon(Icons.add,
                                  color: AppColors.white,
                                  ),
                                  ),
                                IconButton(
                                  style: IconButton.styleFrom(
                                    backgroundColor: AppColors.button,
                                    foregroundColor: AppColors.background,
                                  ),
                                  onPressed: (){
                                    if(age>0){
                                      setState(() {
                                        age--;
                                      });
                                    }
                                  }, 
                                  icon: Icon(Icons.remove,
                                  color: AppColors.white,
                                  ),
                                  ),
                              ],
                            ),
                          ],
                        ),
                       ),
                    ),
                    ),
                ],
              ),
              ),
              const SizedBox(height: 12,),
               SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    foregroundColor: AppColors.white,
                  ),
                  onPressed: (){
                    double res = weight / ((height/100) * (height/100));
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context)=>ResultView(res: res,),));
                  }, 
                  child: Text('Calculate',
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