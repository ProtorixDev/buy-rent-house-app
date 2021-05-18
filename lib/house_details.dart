import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_screenutil/screenutil_init.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:flutter_carousel_slider/carousel_slider_indicators.dart';
import 'package:flutter_carousel_slider/carousel_slider_transforms.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 750),
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HouseDetails(),
      ),
    );
  }
}

class HouseDetails extends StatefulWidget {

  @override
  _HouseDetailsState createState() => _HouseDetailsState();
}

class _HouseDetailsState extends State<HouseDetails> {

  final List<String> imgList = [
    "https://image.freepik.com/free-photo/house-isolated-field_1303-23773.jpg",
    "https://image.freepik.com/free-photo/interior-home-design-living-room-with-open-kitchen-loft-house_41487-613.jpg",
    "https://image.freepik.com/free-photo/3d-rendering-luxury-modern-design-wood-building-near-park-nature-night-scene_105762-1045.jpg",
    "https://image.freepik.com/free-photo/charming-yellow-house-with-wooden-windows-green-grassy-garden_181624-8074.jpg"
  ];

  bool _isPlaying = false;

  CarouselSliderController _sliderController;

  @override
  void initState() {
    super.initState();
    _sliderController = CarouselSliderController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          slider(),
          Expanded(
            child: Padding(
              padding:  EdgeInsets.symmetric(
                horizontal: ScreenUtil().setWidth(20.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: ScreenUtil().setHeight(30.0)
                    ),
                    child: Row(
                      children: [
                        Text("Luxurious Duplex Flat",
                          style: GoogleFonts.play(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: ScreenUtil().setSp(18.0),
                          ),),
                        Spacer(),
                        Text("\$2450/mo",
                          style: GoogleFonts.play(
                            color: Color(0xfff63e3c),
                            fontWeight: FontWeight.w600,
                            fontSize: ScreenUtil().setSp(16.0),
                          ),),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(10.0),
                  ),
                  Text("328 Icaw Drive, 10001 NY",
                    style: GoogleFonts.play(
                      color: Colors.grey,
                      fontSize: ScreenUtil().setSp(14.0),
                    ),),
                  SizedBox(
                    height: ScreenUtil().setHeight(10.0),
                  ),
                  Row(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.king_bed, color: Colors.grey, size: ScreenUtil().setHeight(18.0),),
                          SizedBox(width: ScreenUtil().setWidth(5.0),),
                          Text("4",
                            style: GoogleFonts.play(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: ScreenUtil().setSp(14.0),
                            ),),
                        ],
                      ),
                      SizedBox(width: ScreenUtil().setWidth(15.0),),
                      Row(
                        children: [
                          Icon(Icons.bathtub, color: Colors.grey, size: ScreenUtil().setHeight(16.0),),
                          SizedBox(width: ScreenUtil().setWidth(5.0),),
                          Text("2",
                            style: GoogleFonts.play(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: ScreenUtil().setSp(14.0),
                            ),),
                        ],
                      ),
                      SizedBox(width: ScreenUtil().setWidth(15.0),),
                      Row(
                        children: [
                          Icon(Icons.crop_square, color: Colors.grey, size: ScreenUtil().setHeight(16.0),),
                          SizedBox(width: ScreenUtil().setWidth(5.0),),
                          Text("1560 sqft",
                            style: GoogleFonts.play(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: ScreenUtil().setSp(14.0),
                            ),),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(10.0),
                  ),
                  Text("With so many different ways today to find information online, it can sometimes be hard to know where to go to first. There is something for anyone.",
                    style: GoogleFonts.play(
                      color: Colors.black87,
                      letterSpacing: 1.0,
                      wordSpacing: 2.0,
                      fontSize: ScreenUtil().setSp(14.0),
                    ),),
                  SizedBox(
                    height: ScreenUtil().setHeight(20.0),
                  ),
                  Text("Facilities",
                    style: GoogleFonts.play(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: ScreenUtil().setSp(16.0),
                    ),),
                  SizedBox(
                    height: ScreenUtil().setHeight(10.0),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _facilities(Icons.campaign, "CCTV"),
                      _facilities(Icons.wifi, "WIFI"),
                      _facilities(Icons.pool, "SWIMMING POOL"),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            color: Color(0xfff7f7f9),
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: ScreenUtil().setWidth(20.0),
                vertical: ScreenUtil().setHeight(20.0),
              ),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.network(
                        "https://img.freepik.com/free-photo/happy-african-american-child-boy-smiling_263368-10.jpg?size=664&ext=jpg&ga=GA1.2.740930980.1616477634",
                      height: ScreenUtil().setHeight(50.0),
                      width: ScreenUtil().setWidth(50.0),
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: ScreenUtil().setWidth(10.0),),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Irene Frank",
                          style: GoogleFonts.play(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: ScreenUtil().setSp(16.0),
                          ),),
                        SizedBox(
                          height: ScreenUtil().setHeight(5.0),
                        ),
                        Text("Owner",
                          style: GoogleFonts.play(
                            color: Colors.grey,
                            fontSize: ScreenUtil().setSp(14.0),
                          ),),
                      ],
                    ),
                  ),
                  SizedBox(width: ScreenUtil().setWidth(10.0),),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.phone, color: Colors.green, size: ScreenUtil().setHeight(22.0),),
                    ),
                  ),
                  SizedBox(width: ScreenUtil().setWidth(20.0),),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.message, color: Color(0xfff63e3c), size: ScreenUtil().setHeight(22.0),),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),

    );
  }


  Widget slider() {
    return Stack(
      children: [
        Container(
          height: ScreenUtil().setHeight(350.0),
          child: CarouselSlider.builder(
            unlimitedMode: true,
            controller: _sliderController,
            slideBuilder: (index) {
              return Image.network(
                imgList[index],
                fit: BoxFit.cover,
              );
            },
            slideTransform: ParallaxTransform(),
            slideIndicator: CircularSlideIndicator(
              padding: EdgeInsets.only(bottom: 32),
              indicatorBorderColor: Colors.white,
              currentIndicatorColor: Colors.white,
                indicatorBackgroundColor: Colors.transparent
            ),
            itemCount: imgList.length,
            initialPage: 0,
            enableAutoSlider: true,
          ),
        ),
        Positioned(
          top: 50.0,
          left: 20.0,
          child: GestureDetector(
            onTap: (){
              HapticFeedback.lightImpact();
              Navigator.pop(context);
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.circular(15.0),
              ),
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.arrow_back, color: Colors.black, size: ScreenUtil().setHeight(24.0),),
              ),
            ),
          ),
        ),
      ],
    );
  }

  _facilities(IconData icon, String facility) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(5.0)
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: ScreenUtil().setHeight(5.0),
          horizontal: ScreenUtil().setWidth(10.0),
        ),
        child: Row(
          children: [
            Icon(icon, color: Colors.black, size: ScreenUtil().setHeight(16.0),),
            SizedBox(width: ScreenUtil().setWidth(10.0),),
            Text(facility,
              style: GoogleFonts.play(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: ScreenUtil().setSp(12.0),
              ),),
          ],
        ),
      ),
    );
  }

}