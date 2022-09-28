import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:provider/provider.dart';

import '../providers/myprovider.dart';
import './tabs_screen.dart';

class OnBoardingScreen extends StatefulWidget {
  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final _controller = PageController(initialPage: 0);
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            PageView(
              controller: _controller,
              scrollDirection: Axis.horizontal,
              children: [
                authscreen(),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 100, horizontal: 40),
                  child: Column(
                    children: [
                      Text(
                        'Do you follow any Of these diets?',
                        style: TextStyle(
                            fontSize: 25,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 320,
                        height: 100,
                        child: Text(
                          'To offer you the best tailored diet experience we need to know more information about you',
                          textAlign: TextAlign.start,
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Wrap(
                        spacing: 10,
                        children: [
                          ink(
                            name: 'Gluten',
                          ),
                          ink(
                            name: 'Lactose',
                          ),
                          ink(
                            name: 'Vegan',
                          ),
                          ink(
                            name: 'Vegetarian',
                          ),
                        ],
                      ),
                      PizzaAnimation()
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 100, horizontal: 40),
                  child: Column(
                    children: [
                      Text(
                        'Any ingredien allergies?',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: 25,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 320,
                        height: 100,
                        child: Text(
                          'To offer you the best tailored diet experience we need to know more information about you',
                          textAlign: TextAlign.start,
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Wrap(
                        spacing: 10,
                        children: [
                          ink(
                            name: 'Egg',
                          ),
                          ink(
                            name: 'Fish',
                          ),
                          ink(
                            name: 'Milk',
                          ),
                          ink(
                            name: 'Soy',
                          ),
                          ink(
                            name: 'Wheat',
                          ),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Expanded(child: MyAnimation2()),
              
              
            
                    ],
                  ),
                ),
              ],
              onPageChanged: (val) {
                setState(() {
                  _currentIndex = val;
                });
              },
            ),
            Indicator(_currentIndex),
            Builder(
              builder: (ctx) => Align(
                alignment: Alignment(0, 0.85),
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 400),
                  width: _currentIndex == 0
                      ? 200
                      : _currentIndex == 1
                          ? 200
                          : 220,
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            _currentIndex == 0 ? Colors.white : Colors.black),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ))),
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                          _currentIndex == 0
                              ? 'Next'
                              : _currentIndex == 1
                                  ? 'Next'
                                  : 'Start cooking',
                          style: TextStyle(
                              color: _currentIndex == 0
                                  ? Colors.black
                                  : Colors.white,
                              fontSize: 25)),
                    ),
                    onPressed: _currentIndex == 0
                        ? () => _controller.animateToPage(1,
                            duration: Duration(milliseconds: 500),
                            curve: Curves.easeInCubic)
                        : _currentIndex == 1
                            ? () => _controller.animateToPage(2,
                                duration: Duration(milliseconds: 500),
                                curve: Curves.easeInCubic)
                            : () async {
                                Navigator.of(ctx)
                                    .pushReplacementNamed(TabsScreen.routaname);

                                SharedPreferences prefs =
                                    await SharedPreferences.getInstance();
                                prefs.setBool('watched', true);
                              },
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

class ink extends StatefulWidget {
  const ink({
    Key? key,
    required this.name,
  }) : super(key: key);
  final String name;

  @override
  State<ink> createState() => _inkState();
}

class _inkState extends State<ink> {
  @override
  bool xx = false;

  Widget build(BuildContext context) {
    var XD = Provider.of<promeal>(context, listen: true).filters;

    return InkWell(
      splashColor: Colors.transparent,
      onTap: () {
        setState(() {
          xx = !xx;
        });
        XD[widget.name.toLowerCase()] = xx;
        Provider.of<promeal>(context, listen: false).setFilters();
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        decoration: BoxDecoration(
            color: xx ? Color.fromARGB(255, 250, 0, 4) : Colors.white,
            borderRadius: BorderRadius.circular(40),
            border: Border.all(color: xx ? Colors.transparent : Colors.black)),
        child: Padding(
          padding: xx ? EdgeInsets.all(12) : EdgeInsets.all(10.0),
          child: Text(
            widget.name,
            style: TextStyle(
                color: xx ? Colors.white : Colors.black,
                fontSize: 12,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

class Indicator extends StatelessWidget {
  final int index;

  Indicator(this.index);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          buildContainer(context, 0),
          buildContainer(context, 1),
          buildContainer(context, 2),
        ],
      ),
    );
  }

  Widget buildContainer(BuildContext ctx, int i) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: AnimatedContainer(
        margin: EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
            color: index == i ? Colors.red : Colors.black,
            borderRadius: BorderRadius.circular(20)),
        width: index == i ? 20 : 3,
        height: index == i ? 5 : 5,
        alignment:
            index == i ? Alignment.center : AlignmentDirectional.topCenter,
        duration: const Duration(milliseconds: 500),
        curve: Curves.fastOutSlowIn,
      ),
    );
  }
}

class MyAnimation extends StatefulWidget {
  const MyAnimation({
    Key? key,
  }) : super(key: key);
  @override
  State<MyAnimation> createState() => _MyAnimationState();
}

class _MyAnimationState extends State<MyAnimation>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat(reverse: true);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const double smallLogo = 200;
    const double bigLogo = 215;

    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final Size biggest = constraints.biggest;

        return Stack(
          fit: StackFit.expand,
          children: <Widget>[
            PositionedTransition(
                rect: RelativeRectTween(
                  begin: RelativeRect.fromSize(
                      const Rect.fromLTWH(0, 0, smallLogo, smallLogo), biggest),
                  end: RelativeRect.fromSize(
                      Rect.fromLTWH(0, 10, bigLogo, bigLogo), biggest),
                ).animate(CurvedAnimation(
                  parent: _controller,
                  curve: Curves.linear,
                )),
                child: Container(
                    padding: EdgeInsets.only(right: 15, top: 35),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(197, 0, 0, 0),
                          blurRadius: 40.0,
                          spreadRadius: -20,
                          offset: Offset(-30, 30.0),
                        )
                      ],
                    ),
                    child: Image.asset(
                        'images/kc-korean-bulgogi-burger-articleLarge-removebg-preview.png'))),
            Container(
              padding: EdgeInsets.only(
                left: 60,
              ),
              child: Text(
                'Enjoy your lunch Time',
                style: TextStyle(
                    fontSize: 25,
                    fontFamily: 'Raleway',
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
                padding: EdgeInsets.only(right: 10, left: 200, top: 100),
                width: 100,
                height: 400,
                child: Text(
                  'Just relax and not overthink what to eat , This is in our side with our personalized meal plans just prepared and adapted to your needs',
                  style: TextStyle(fontSize: 17, color: Colors.white),
                  textAlign: TextAlign.start,
                )),
          ],
        );
      },
    );
  }
}

class PizzaAnimation extends StatefulWidget {
  const PizzaAnimation({Key? key}) : super(key: key);

  @override
  State<PizzaAnimation> createState() => _PizzaAnimationState();
}

class _PizzaAnimationState extends State<PizzaAnimation>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 5),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.elasticInOut,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RotationTransition(
        turns: _animation,
        child: Container(
            margin: EdgeInsets.only(right: 15, top: 40),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(197, 0, 0, 0),
                  blurRadius: 40.0,
                  spreadRadius: -20,
                  offset: Offset(-30, 30.0),
                )
              ],
            ),
            child: Image.asset(
                'images/the-pizza-1949183_1280-removebg-preview.png')));
  }
}

class authscreen extends StatefulWidget {
  const authscreen({Key? key}) : super(key: key);

  @override
  State<authscreen> createState() => _authscreenState();
}

class _authscreenState extends State<authscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF9e2a2b),
      appBar: null,
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.min,
          children: [
            ShaderMask(
              shaderCallback: (bound) {
                return LinearGradient(
                    end: FractionalOffset.topCenter,
                    begin: FractionalOffset.bottomCenter,
                    colors: [
                      Color(0xFF9e2a2b),
                      Color(0xFF9e2a2b).withOpacity(0.6),
                      Colors.white.withOpacity(0.1),
                    ],
                    stops: [
                      0.1,
                      0.3,
                      1
                    ]).createShader(bound);
              },
              blendMode: BlendMode.srcOver,
              child: Container(
                height: 350,
                width: 444,
                child: Image.asset(
                  'images/istockphoto-922783734-612x612.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(child: MyAnimation()),
          ]),
    );
  }
}

class MyAnimation2 extends StatefulWidget {
  const MyAnimation2({
    Key? key,
  }) : super(key: key);
  @override
  State<MyAnimation2> createState() => _MyAnimation2State();
}

class _MyAnimation2State extends State<MyAnimation2>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 1),
    vsync: this,
  )..repeat(reverse: true);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final Size biggest = constraints.biggest;

      
        return Stack(
          fit: StackFit.expand,
          children: <Widget>[
            PositionedTransition(
                rect: RelativeRectTween(
                  begin: RelativeRect.fromSize(
                      const Rect.fromLTWH(0, -5, 230, 230), biggest),
                  end: RelativeRect.fromSize(
                      Rect.fromLTWH(0, 17, 230, 230), biggest),
                ).animate(CurvedAnimation(
                  parent: _controller,
                  curve: Curves.bounceOut,
                )),
                child: Container(
                  margin: EdgeInsets.only(left:77,bottom: 150 ),
                    
                    child: Image.asset(
                        'images/Group2.png'))),
            Container(
              
              padding: EdgeInsets.all(60),
              
           
              child:  Image.asset('images/Group1.png',)           ),
          
          ],
        );
      },
    );
  }
}
