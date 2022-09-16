import 'package:flutter/material.dart';
import 'package:intro_slider/dot_animation_enum.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';

import '../painter_desing/background_custom_painter_desing.dart';

class IntroSlidePage extends StatefulWidget {
  const IntroSlidePage({Key? key}) : super(key: key);

  @override
  State<IntroSlidePage> createState() => _IntroSlidePageState();
}

class _IntroSlidePageState extends State<IntroSlidePage> {
  List<Slide> slide = [];
bool desision = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }



  @override
  Widget build(BuildContext context) {

    slide.add(Slide(
      title: 'Presentas Cansancio?',
      description: 'Descripcion 1',
      pathImage: "assets/images/cansancio.png",
    ));

    slide.add(Slide(
        title: 'Presentas Congestion Nasal?',
        description: 'Descripcion 2',
        pathImage: "assets/images/gripe.png"));

    slide.add(Slide(
        title: 'Presentas Tos Seca?',
        description: 'Descripcion 2',
        pathImage: "assets/images/tos.png"));

    slide.add(Slide(
        title: 'Presentas dolor de estomago?',
        description: 'Descripcion 3',
        pathImage: "assets/images/dolor_estomacal.png"));

    slide.add(Slide(
        title: 'Presentas Dificultad para respirar?',
        description: 'Descripcion 3',
        pathImage: "assets/images/respirar.png"));

    slide.add(Slide(
        title: 'Presentas dolor de graganta?',
        description: 'Descripcion 3',
        pathImage: "assets/images/garganta.png"));

    slide.add(Slide(
        title: 'Presentas Fiebre?',
        description: 'Descripcion 1',
        pathImage: "assets/images/fiebre.png"));

    slide.add(Slide(
        title: 'Presentas Dolor de cabeza?',
        description: 'Descripcion 4',
        pathImage: "assets/images/dolor_cabeza.png"));



    List<Widget> renderListCustomTabs() {
      List<Widget> tabs = [];
      for (int i = 0; i < slide.length; i++) {
        Slide currentSlide = slide[i];
        tabs.add(Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.white,
              child: BackgroundSlideWidget(),
            ),
            Container(
                width: double.infinity,
                height: double.infinity,
                color: currentSlide.backgroundColor,
                child: Container(
                  margin: const EdgeInsets.only(bottom: 70, top: 60),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.all(20),
                          /*     decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.white),*/
                          child: Image.asset(
                            currentSlide.pathImage!,
                            matchTextDirection: true,
                            height: 200,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 20),
                          child: Text(
                            currentSlide.title!,
                            style: TextStyle(fontSize: 25),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 30, right: 30, top: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    desision = false;
                                  });
                                },
                                borderRadius: BorderRadius.circular(30),
                                child: Container(
                                  width: 70,
                                  height: 35,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Color(0xff615aab)),
                                    borderRadius: BorderRadius.circular(30),
                                    color: desision ? Colors.white : Color(0xff615aab),
                                  ),
                                  padding: EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 15),
                                  alignment: Alignment.center,
                                  child: Text('No', style: TextStyle(color: desision ? Color(0xff615aab) : Colors.white),),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    desision = true;
                                  });
                                },
                                borderRadius: BorderRadius.circular(30),
                                child: Container(
                                  width: 70,
                                  height: 35,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Color(0xff615aab)),
                                    borderRadius: BorderRadius.circular(30),
                                    color: desision ? Color(0xff615aab) : Colors.white,
                                  ),
                                  padding: EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 15),
                                  alignment: Alignment.center,
                                  child: Text('Si', style: TextStyle(color: desision ? Colors.white : Color(0xff615aab)),),
                                ),
                              )
                            ],
                          ) ,
                          margin:
                          const EdgeInsets.only(top: 15, left: 20, right: 20),
                        )
                      ]),
                )),
          ],
        ));
      }
      return tabs;
    }
    return IntroSlider(
      renderNextBtn: const Text(
        'Siguiente',
        style: TextStyle(color: Color(0xff615aab)),
      ),
      renderDoneBtn: const Text(
        'Hecho',
        style: TextStyle(color: Color(0xff615aab)),
      ),
      renderPrevBtn: const Text(
        'Anterior',
        style: TextStyle(color: Color(0xff615aab)),
      ),
      nextButtonStyle: ButtonStyle(),
      colorDot: Color(0xff615aab),
      colorActiveDot: Color(0xff615aab),
      sizeDot: 8.0,
      typeDotAnimation: dotSliderAnimation.SIZE_TRANSITION,
      listCustomTabs: renderListCustomTabs(),
      scrollPhysics: BouncingScrollPhysics(),
      showSkipBtn: false,

      //shouldHideStatusBar: false,
    );
  }
}
