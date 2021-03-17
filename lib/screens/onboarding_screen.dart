import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:swypepay/controllers/onboarding_controller.dart';

import 'login_screen.dart';

class OnboardingScreen extends StatelessWidget {
  final _controller = OnBoardingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            PageView.builder(
              controller: _controller.pageController,
                onPageChanged: _controller.seletedPageIndex,
                itemCount: _controller.onBoardingpages.length,
                itemBuilder: (context, index) {
                  return Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,

                      children: [
                        Image.asset(_controller.onBoardingpages[index].imageAsset,
                        height: MediaQuery.of(context).size.height * 0.4,),
                        SizedBox(height: 30
                          ,),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Text(_controller.onBoardingpages[index].title, style:
                              TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                              ),),
                          ),
                        ),
                        SizedBox(height: 20
                          ,),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25.0),
                          child: Text(_controller.onBoardingpages[index].description, style: TextStyle(
                            color: Colors.black45,
                            fontSize: 14,
                            fontWeight: FontWeight.bold
                          ),),
                        ),
                      ],
                    ),
                  );
                }),

            Positioned(
              bottom: 40,
              left: 30,
              child: Row(
                children: List.generate(_controller.onBoardingpages.length, (index) => Obx(() {
                    return Container(
                      margin: const EdgeInsets.all(2.0),
                      width: 6,
                      height: 6,
                      decoration: BoxDecoration(
                        color: _controller.seletedPageIndex.value == index ? Colors.blue : Colors.grey, shape: BoxShape.circle
                      ),

                    );
                  }
                )),
              ),
            ),
            Positioned(
              right: 30,
              bottom: 20,

              child: FloatingActionButton(
                onPressed:  _controller.nextPage,
                elevation: 0,
                child: Icon(Icons.navigate_next, color: Colors.white,),
              ),

            )
            
          ],
        ),
      ),
    );
  }
}


