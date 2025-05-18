import 'package:flutter/material.dart';

import '../utils/colors/app_colors.dart';
import '../utils/constants/app_constants.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int currentIndex = 0;
  int count = 0;
  int round = 0;

  void _goToPrevious() {
    setState(() {
      currentIndex =
          (currentIndex - 1 + AppConstants.tasbih.length) %
          AppConstants.tasbih.length;
    });
  }

  void _goToNext() {
    setState(() {
      currentIndex = (currentIndex + 1) % AppConstants.tasbih.length;
    });
  }

  void _incrementCounter() {
    setState(() {
      count++;
      if (count == 33) {
        count = 0;
        round++;
      }
    });
  }

  void _reset() {
    setState(() {
      count = 0;
      round = 0;
    });
  }

  void _showTasbihSelector() {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return Container(
          color: AppColors.backgroundcolor,
          padding: EdgeInsets.all(16),
          child: ListView.separated(
            itemCount: AppConstants.tasbih.length,
            separatorBuilder:
                (context, index) => Divider(color: AppColors.primarycolor),
            itemBuilder: (context, index) {
              return ListTile(
                tileColor: AppColors.backgroundcolor,
                title: Text(
                  AppConstants.tasbih[index],
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25,
                    color: AppColors.primarycolor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  setState(() {
                    currentIndex = index;
                    count = 0;
                    round = 0;
                  });
                  Navigator.pop(context);
                },
              );
            },
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundcolor,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundcolor,
        automaticallyImplyLeading: false,
        title: Text("السبحة الالكترونية"),
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30,
          color: AppColors.primarycolor,
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 60),
              Container(
                width: 400,
                height: 200,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 7,
                      offset: Offset(0, 4),
                    )
                  ],
                  color: AppColors.primarycolor,
                  border: Border.all(color: AppColors.primarycolor, width: 2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: IconButton(
                              onPressed: () {
                                _goToPrevious();
                              },
                              icon: Icon(
                                size: 30,
                                Icons.arrow_back_ios,
                                color: AppColors.seconderycolor,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Center(
                            child: Text(
                              AppConstants.tasbih[currentIndex],
                              style: TextStyle(
                                color: AppColors.seconderycolor,
                                fontSize: 29,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        // Right Icon
                        Expanded(
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: IconButton(
                              onPressed: () {
                                _goToNext();
                              },
                              icon: Icon(
                                size: 30,
                                Icons.arrow_forward_ios,
                                color: AppColors.seconderycolor,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    Row(
                      children: [
                        Expanded(
                          child: Align(
                            alignment: Alignment.center,
                            child: IconButton(
                              onPressed: () {
                                _reset();
                              },
                              icon: Icon(
                                size: 30,
                                Icons.refresh,
                                color: AppColors.seconderycolor,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Align(
                            alignment: Alignment.center,
                            child: IconButton(
                              onPressed: () {
                                _showTasbihSelector();
                              },
                              icon: Icon(
                                size: 30,
                                Icons.list,
                                color: AppColors.seconderycolor,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 100),
              GestureDetector(
                onTap: _incrementCounter,
                child: Container(
                  width: 160,
                  height: 160,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.primarycolor,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        blurRadius: 7,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Text(
                    "$count/33",
                    style: TextStyle(
                      color: AppColors.seconderycolor,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 50),
              Text(
                "Round $round",
                style: TextStyle(
                  color: AppColors.primarycolor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
