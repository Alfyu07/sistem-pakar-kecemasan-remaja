part of 'pages.dart';

class TutorialPage extends StatefulWidget {
  TutorialPage() : super();

  final String title = "Carousel Demo";

  @override
  TutorialPageState createState() => TutorialPageState();
}

class TutorialPageState extends State<TutorialPage> {
  //
  late CarouselSlider carouselSlider;
  int _current = 0;
  List imgList = [
    'http://pakar.hmbpayment.com/pildig.webp',
    'http://pakar.hmbpayment.com/pilpak.webp',
    'http://pakar.hmbpayment.com/pilgej.webp',
    'http://pakar.hmbpayment.com/submit.webp',
    'http://pakar.hmbpayment.com/hasil.webp'
  ];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        title: Text(
          'Tutorial Cara Pemakaian',
          style: whiteSemiFont.copyWith(fontSize: 16),
        ),
        toolbarHeight: 80,
        backgroundColor: mainColor,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          carouselSlider = CarouselSlider(
            options: CarouselOptions(
                height: 400.0,
                initialPage: 0,
                enlargeCenterPage: true,
                autoPlay: false,
                reverse: false,
                enableInfiniteScroll: true,
                autoPlayInterval: const Duration(seconds: 2),
                autoPlayAnimationDuration: const Duration(milliseconds: 2000),
                scrollDirection: Axis.horizontal,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                }),
            items: imgList.map((imgUrl) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.symmetric(horizontal: 10.0),
                    decoration: const BoxDecoration(
                      color: ghostWhiteColor,
                    ),
                    child: Image.network(
                      imgUrl,
                      fit: BoxFit.fill,
                    ),
                  );
                },
              );
            }).toList(),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: map<Widget>(imgList, (index, url) {
              return Container(
                width: 10.0,
                height: 10.0,
                margin:
                    const EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _current == index ? mainColor : ghostWhiteColor,
                ),
              );
            }),
          ),
          const SizedBox(
            height: 20.0,
          ),
        ],
      ),
    );
  }
}
