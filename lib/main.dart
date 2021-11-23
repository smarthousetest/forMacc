import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CollectionsPage(),
    );
  }
}

class CollectionsPage extends StatefulWidget {
  const CollectionsPage({Key? key}) : super(key: key);

  @override
  _CollectionsPageState createState() => _CollectionsPageState();
}

class _CollectionsPageState extends State<CollectionsPage> {
  @override
  Widget build(BuildContext context) {
    var _sliding = 0;

    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: const Color(0xFFFFFFFF)),
          child: ListView(
            children: [
              const SizedBox(height: 62.0),
              Container(
                alignment: Alignment.center,
                height: 20.0,
                child: const Text(
                  'Подборки',
                  style: TextStyle(
                    fontFamily: 'Roboto-Medium.ttf',
                    fontSize: 18.0,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF24282E),
                  ),
                ),
              ),
              const SizedBox(height: 34.0),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: LayoutBuilder(
                  builder: (context, constraints) =>
                      CustomSlidingSegmentedControl<int>(
                          radius: 32,
                          padding: 4,
                          fixedWidth: (constraints.maxWidth - 8) / 2,
                          backgroundColor: const Color(0xFFF0F2FE),
                          thumbColor: const Color(0xFFFFFFFF),
                          children: const {
                            0: Text(
                              'Популярные',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Roboto-Medium.ttf',
                                fontSize: 14.0,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF24282E),
                              ),
                            ),
                            1: Text(
                              'Мои',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Roboto-Medium.ttf',
                                fontSize: 14.0,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF24282E),
                              ),
                            ),
                          },
                          initialValue: _sliding,
                          onValueChanged: (newValue) {
                            setState(() {
                              _sliding = newValue;
                            });
                          }),
                ),
              ),
              const SizedBox(height: 26.0),
              Container(
                height: 104.0,
                margin: const EdgeInsets.only(left: 20.0, right: 21.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0xFFF0F0FF),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(32.0),
                  color: const Color(0xFFFFFFFF),
                  // gradient: const LinearGradient(
                  //   colors: [Color(0xFFFFFFFF), Color(0xFFF3F3FF)],
                  // ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      width: 141.0,
                      height: 56.0,
                      child: Stack(
                        children: const [
                          Positioned(
                            left: 0.0,
                            top: 0.0,
                            child: Text(
                              'Еда',
                              style: TextStyle(
                                fontFamily: 'Roboto-Bold.ttf',
                                fontSize: 24.0,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF394759),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 0.0,
                            bottom: 0.0,
                            child: Text(
                              '389 (+9)',
                              style: TextStyle(
                                fontFamily: 'Roboto-Regular.ttf',
                                fontSize: 15.0,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF394759),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 87.0,
                      height: 56.0,
                      child: Image.asset(
                          'assets/images/image_2021-11-19_00-10-15.png'),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24.0),
              Container(
                height: 104.0,
                margin: const EdgeInsets.only(left: 20.0, right: 21.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0xFFF0F0FF),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(32.0),
                  color: const Color(0xFFFFFFFF),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      width: 152.0,
                      height: 56.0,
                      child: Stack(
                        children: const [
                          Positioned(
                            left: 0.0,
                            top: 0.0,
                            child: Text(
                              'Путешествия',
                              style: TextStyle(
                                fontFamily: 'Roboto-Bold.ttf',
                                fontSize: 24.0,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF394759),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 0.0,
                            bottom: 0.0,
                            child: Text(
                              '389 (+9)',
                              style: TextStyle(
                                fontFamily: 'Roboto-Regular.ttf',
                                fontSize: 15.0,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF394759),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 87.0,
                      height: 56.0,
                      child: Image.asset(
                          'assets/images/image_2021-11-19_00-53-42.png'),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24.0),
              Container(
                height: 104.0,
                margin: const EdgeInsets.only(left: 20.0, right: 21.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0xFFF0F0FF),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(32.0),
                  color: const Color(0xFFFFFFFF),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      width: 141.0,
                      height: 56.0,
                      child: Stack(
                        children: const [
                          Positioned(
                            left: 0.0,
                            top: 0.0,
                            child: Text(
                              'Спорт',
                              style: TextStyle(
                                fontFamily: 'Roboto-Bold.ttf',
                                fontSize: 24.0,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF394759),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 0.0,
                            bottom: 0.0,
                            child: Text(
                              '389 (+9)',
                              style: TextStyle(
                                fontFamily: 'Roboto-Regular.ttf',
                                fontSize: 15.0,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF394759),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 87.0,
                      height: 56.0,
                      child: Image.asset(
                          'assets/images/image_2021-11-19_00-57-04.png'),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24.0),
              Container(
                height: 104.0,
                margin: const EdgeInsets.only(left: 20.0, right: 21.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0xFFF0F0FF),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(32.0),
                  color: const Color(0xFFFFFFFF),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      width: 141.0,
                      height: 56.0,
                      child: Stack(
                        children: const [
                          Positioned(
                            left: 0.0,
                            top: 0.0,
                            child: Text(
                              'Психология',
                              style: TextStyle(
                                fontFamily: 'Roboto-Bold.ttf',
                                fontSize: 24.0,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF394759),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 0.0,
                            bottom: 0.0,
                            child: Text(
                              '389 (+9)',
                              style: TextStyle(
                                fontFamily: 'Roboto-Regular.ttf',
                                fontSize: 15.0,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF394759),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 87.0,
                      height: 56.0,
                      child: Image.asset(
                          'assets/images/image_2021-11-19_00-59-06.png'),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24.0),
              Container(
                height: 104.0,
                margin: const EdgeInsets.only(left: 20.0, right: 21.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0xFFF0F0FF),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(32.0),
                  color: const Color(0xFFFFFFFF),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      width: 141.0,
                      height: 56.0,
                      child: Stack(
                        children: const [
                          Positioned(
                            left: 0.0,
                            top: 0.0,
                            child: Text(
                              'Киберспорт',
                              style: TextStyle(
                                fontFamily: 'Roboto-Bold.ttf',
                                fontSize: 24.0,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF394759),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 0.0,
                            bottom: 0.0,
                            child: Text(
                              '389 (+9)',
                              style: TextStyle(
                                fontFamily: 'Roboto-Regular.ttf',
                                fontSize: 15.0,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF394759),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 87.0,
                      height: 56.0,
                      child: Image.asset(
                          'assets/images/image_2021-11-19_01-00-48.png'),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24.0),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/iconly_light_category.svg'),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/iconly_light_plus.svg'),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/iconly_light_profile.svg'),
            label: '',
          ),
        ],
        selectedItemColor: const Color(0xFF394759),
        unselectedItemColor: const Color(0xFF8D9BAC),
        onTap: (index) {},
      ),
    );
  }
}
