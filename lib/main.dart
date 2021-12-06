import 'package:collections_page/card_repositories.dart';
import 'package:collections_page/cubit/api.dart';
import 'package:collections_page/cubit/card_cubit.dart';
import 'package:collections_page/cubit/card_model.dart';
import 'package:collections_page/cubit/card_state.dart';
import 'package:collections_page/cubit/widget/card_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final cardRepository = CardRepository();
  @override
  Widget build(BuildContext context) {
    return BlocProvider<CardCubit>(
        // cubit: BlocProvider.of<CardCubit>(context)..cardRepository.cardApi.getCard(),
        create: (context) => CardCubit(cardRepository),
        child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: CollectionsPage(),
        ));
  }
}

class CollectionsPage extends StatefulWidget {
  const CollectionsPage({Key? key}) : super(key: key);

  @override
  _CollectionsPageState createState() => _CollectionsPageState();
}

class _CollectionsPageState extends State<CollectionsPage> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    var _sliding = 0;
    CardCubit cardCubit = context.read<CardCubit>();

    final response = cardCubit.fetchCard();
    print(response);

    return BlocBuilder<CardCubit, CardState>(builder: (context, state) {
      print(state);
      if (state is CardLoadingState) {
        return Center(child: CircularProgressIndicator());
      }
      if (state is CardLoadedState) {
        print("you are here");
        return Scaffold(
          body: SafeArea(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: const Color(0xFFFFFFFF)),
              child: Column(
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
                  const SizedBox(height: 34.0),
                  // ignore: avoid_print

                  ListView.builder(
                      shrinkWrap: true,
                      itemCount: state.loadedCard?.length,
                      itemBuilder: (context, index) => CardView(
                          id: '${state.loadedCard?[index].id}',
                          name: '${state.loadedCard?[index].name}',
                          image: '${state.loadedCard?[index].picUrl}',
                          numberOfBloggers:
                              state.loadedCard?[index].numBloggers))
                ],
              ),
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon:
                    SvgPicture.asset('assets/icons/iconly_light_category.svg'),
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
      return Text("jjjj");
    });
  }
}
