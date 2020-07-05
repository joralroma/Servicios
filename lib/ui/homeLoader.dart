import 'package:flutter/material.dart';
import 'package:prueba/utils/responsive.dart';
import 'package:prueba/utils/style.dart';


class HomeLoader extends StatefulWidget {
  HomeLoader({Key key}) : super(key: key);

  @override
  _HomeLoaderState createState() => _HomeLoaderState();
}

class _HomeLoaderState extends State<HomeLoader> with SingleTickerProviderStateMixin {

  Responsive responsive;

  AnimationController controllerOne;
  Animation<Color> animationOne;
  Animation<Color> animationTwo;


  @override
  void initState() {
    super.initState();
    controllerOne = AnimationController( duration: Duration(milliseconds: 2000), vsync: this);
    animationOne = ColorTween(begin: Colors.grey,end: Colors.white70).animate(controllerOne);
    animationTwo = ColorTween(begin: Colors.white70,end: Colors.grey).animate(controllerOne);
    controllerOne.forward();
    controllerOne.addListener((){
      if(controllerOne.status == AnimationStatus.completed){
        controllerOne.reverse();
      } else if(controllerOne.status == AnimationStatus.dismissed){
        controllerOne.forward();
      }
      this.setState((){});
    });
  }

  @override
  void dispose() {
    controllerOne.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {

    responsive = Responsive(context);

    Widget item = Container(
      width: responsive.wp(80),
      height: 150,
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width: 2,
          color: Style.Border
        )
      ),
    );

    Widget body = Expanded(
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.only(top: 0, right: 20, bottom: 0, left: 20),
        itemCount: 7,
        itemBuilder: (_, __) => item
      )
    );

    return ShaderMask(
      shaderCallback: (rect) {
        return LinearGradient(
          tileMode: TileMode.mirror,
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [animationOne.value,animationTwo.value]
        ).createShader(rect, textDirection: TextDirection.ltr);
      },
      child: Column(
        children: <Widget>[
          SizedBox(height: 30),
          body
        ],
      )
    );
  }


}