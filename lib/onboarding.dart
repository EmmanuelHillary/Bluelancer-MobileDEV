import 'package:blue_lancer/landing_screen.dart';
import 'package:blue_lancer/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ViewPager(
                children: [
                  OnboardingPage(
                    image: SvgPicture.asset(
                      'assets/drawables/barber.svg',
                    ),
                    title: 'The revolutionized barber and hairdressing shop.',
                    body:
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dolor purus volutpat lectus',
                  ),
                  OnboardingPage(
                    image: SvgPicture.asset(
                      'assets/drawables/time_management.svg',
                    ),
                    title: 'Save time at the saloon',
                    body:
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dolor purus volutpat lectus',
                  ),
                  OnboardingPage(
                    image: SvgPicture.asset(
                      'assets/drawables/savings.svg',
                    ),
                    title: 'Earn as a bluelancer, save money as a user.',
                    body:
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dolor purus volutpat lectus',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({
    Key? key,
    required this.image,
    required this.title,
    required this.body,
  }) : super(key: key);

  final Widget image;
  final String title;
  final String body;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        image,
        const SizedBox(height: 16),
        Text(
          title,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        const SizedBox(height: 8),
        Text(
          body,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ],
    );
  }
}

class ViewPager extends StatefulWidget {
  const ViewPager({
    Key? key,
    required this.children,
    this.clipBehavior = Clip.none,
  }) : super(key: key);

  final List<Widget> children;
  final Clip clipBehavior;

  @override
  State<ViewPager> createState() => _ViewPagerState();
}

class _ViewPagerState extends State<ViewPager> {
  int _index = 0;

  final _pageIndicator = <Widget>[];
  final _pageController = PageController();

  void completeOnboarding() =>
      Navigator.of(context).pushNamed(Routes.landingScreen);

  void nextPage() => _pageController.nextPage(
      duration: const Duration(milliseconds: 300), curve: Curves.easeOut);

  @override
  Widget build(BuildContext context) {
    _pageIndicator.clear();
    for (int i = 0; i < widget.children.length; ++i) {
      _pageIndicator.add(
        Padding(
          padding: EdgeInsets.symmetric(horizontal: i == _index ? 5.0 : 2.0),
          child: Container(
            height: 6,
            width: i == _index ? 14 : 6,
            decoration: BoxDecoration(
              color: i == _index
                  ? Theme.of(context).colorScheme.primary
                  : Theme.of(context).colorScheme.primary.withOpacity(0.1),
              borderRadius: BorderRadius.circular(3),
            ),
          ),
        ),
      );
    }

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        AspectRatio(
          aspectRatio: 3 / 5,
          // width: 300,
          child: PageView.builder(
            itemCount: widget.children.length,
            clipBehavior: widget.clipBehavior,
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _index = index;
              });
            },
            itemBuilder: (ctx, index) {
              return Column(
                children: [
                  widget.children[index],
                ],
              );
            },
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: _pageIndicator,
        ),
        const SizedBox(height: 32),
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (_index != 2)
                TextButton(
                  onPressed: completeOnboarding,
                  child: Text(
                    'skip',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontSize: 18,
                        ),
                  ),
                ),
              if (_index != 2) const Spacer(),
              Flexible(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    width: _index != 2 ? 70 : 500,
                    child: ElevatedButton(
                      onPressed: _index != 2 ? nextPage : completeOnboarding,
                      child: _index != 2
                          ? const Icon(Icons.arrow_forward_ios)
                          : const FittedBox(
                              child: Text('Get Started'),
                            ),
                    ),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
