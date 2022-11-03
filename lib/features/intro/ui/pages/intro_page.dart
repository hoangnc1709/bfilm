import 'package:auto_route/auto_route.dart';
import 'package:bfilm/commons/data/spacing.dart';
import 'package:bfilm/commons/widgets/color_button.dart';
import 'package:bfilm/features/intro/bloc/intro_bloc.dart';
import 'package:bfilm/gen/assets.gen.dart';
import 'package:bfilm/router/app_route.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => IntroBloc(),
      child: const IntroView(),
    );
  }
}

class IntroView extends StatefulWidget {
  const IntroView({
    super.key,
  });

  @override
  State<IntroView> createState() => _IntroViewState();
}

class _IntroViewState extends State<IntroView> {
  late final IntroBloc _bloc;
  late final PageController _controller;
  @override
  void initState() {
    _bloc = BlocProvider.of(context)..add(const IntroEvent.loaded());
    _controller = PageController();
    // listen to page changes
    _controller.addListener(() {
      final index = _controller.page!.round();
      _bloc.add(IntroEvent.pageChanged(index));
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.images.backGround.path),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                verticalSpacing36,
                Assets.images.avatar.image(),
                verticalSpacing12,
                BlocBuilder<IntroBloc, IntroState>(
                  builder: (context, state) {
                    return _buildPageView();
                  },
                ),
                verticalSpacing12,
                ColorButton(
                  onTap: () {
                    AutoRouter.of(context).push(const SignInRoute());
                  },
                  colors: const [
                    Color(0xFFFF35B8),
                    Color(0xFF09FACA),
                  ],
                  child: const Text(
                    "Bắt đầu",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
                verticalSpacing40,
                _buildDots(),
                verticalSpacing40,
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildPageView() {
    return Expanded(
      child: PageView.builder(
        controller: _controller,
        itemCount: _bloc.state.introData.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Text(
                _bloc.state.introData[index]['title']!,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 38,
                  fontWeight: FontWeight.w600,
                ),
              ),
              verticalSpacing32,
              Text(
                _bloc.state.introData[index]['description']!,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildDots() {
    const dotNum = 3;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        dotNum,
        (index) {
          return Row(
            children: [
              BlocBuilder<IntroBloc, IntroState>(
                buildWhen: (previous, current) =>
                    previous.currentIndex != current.currentIndex,
                builder: (context, state) {
                  return Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: state.currentIndex == index
                          ? const Color(0xFFFF35B8)
                          : Colors.white54,
                    ),
                  );
                },
              ),
              index != dotNum - 1 ? horizontalSpacing8 : const SizedBox()
            ],
          );
        },
      ),
    );
  }
}
