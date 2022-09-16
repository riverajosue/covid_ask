import 'package:flutter/cupertino.dart';
import 'package:slide_screen_flutter/view/home_page_content.dart';

class BackgroundCustom extends StatelessWidget {
  const BackgroundCustom({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _BackgroundPainter(),
        child: HomePageContent(),
      ),
    );
  }
}

class _BackgroundPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint

    //final paint = Paint();
    final paintbottom = Paint();

    ///propiedades
   /* paint.color = Color(0xff615aab);
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 5;*/

    paintbottom.color = Color(0xff615aab);
    paintbottom.style = PaintingStyle.stroke;
    paintbottom.strokeWidth = 5;

    ///dibujar
    final path = Path();
    final pathBottom = Path();

    /*path.lineTo(0,size.height *  0.2);
    path.quadraticBezierTo(size.width * 0.8, size.height * 0.10, size.width, size.height * 0.45);*/

    pathBottom.lineTo(0, size.height * 8);
    pathBottom.lineTo(size.width , 0);
    //pathBottom.quadraticBezierTo(size.width * 0.8, size.height * 0.10, size.width * 0.5, size.height * 0.55);


    canvas.drawPath(pathBottom, paintbottom);
    //canvas.drawPath(path, paint);



  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }

}