part of 'pages.dart';

class PilihPakarPage extends StatelessWidget {
  PilihPakarPage({Key? key}) : super(key: key);
  final GejalaController gejalaController = Get.put(GejalaController());

  @override
  Widget build(BuildContext context) {
    final PakarController pakarController = Get.put(PakarController());

    return Scaffold(
      body: Container(
        color: Colors.grey[200],
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                elevation: 0,
                automaticallyImplyLeading: false,
                backgroundColor: Colors.purple,
                expandedHeight: 165.0,
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                    centerTitle: true,
                    title: Text("Doktor Sosial",
                        style: TextStyle(
                          // ignore: prefer_const_literals_to_create_immutables
                          shadows: <Shadow>[
                            Shadow(
                              offset: Offset(0.4, 1.0),
                              blurRadius: 3.0,
                              color: Colors.black54,
                            ),
                          ],
                          color: Colors.white,
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                        )),
                    background: Image.asset(
                      "assets/penyakit.jpg",
                      fit: BoxFit.cover,
                    )),
              ),
              SliverPersistentHeader(
                pinned: true,
                delegate: _SliverAppBarDelegate(
                    child: PreferredSize(
                        preferredSize: Size.fromHeight(42.0),
                        child: new Material(
                          elevation: 1.0,
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/penyakit.jpg'),
                                    fit: BoxFit.fill)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 12.0, horizontal: 8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: <Widget>[
                                  Text(
                                    'PILIHAN PAKAR',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: 18.0),
                                    textAlign: TextAlign.center,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ))),
              ),
            ];
          },
          body: Obx(() {
            if (pakarController.isLoading.value)
              return Center(child: CircularProgressIndicator());
            else
              // ignore: curly_braces_in_flow_control_structures
              return GridView.builder(
                itemCount: pakarController.pakarList.length,
                padding: EdgeInsets.all(16.0),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  childAspectRatio: 2.2,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                ),
                itemBuilder: (ctx, index) {
                  return GestureDetector(
                    child: myGridItems(
                        Icons.book,
                        "(" + pakarController.pakarList[index].name + ")",
                        "assets/penyakit.jpg",
                        0xFFEF9A9A,
                        0xFFE57373),
                    onTap: () async {
                      gejalaController
                          .fetchSilders(pakarController.pakarList[index].id);

                      await goToPageDetail(context);

                      //navigator 1
                      // Navigator.of(context)
                      //     .push(MaterialPageRoute(builder: (context) => ListJus()));
                    },
                  );
                },
              );
          }),
        ),
      ),
    );
  }

  Widget myGridItems(
      var icon, String gridName, String gridimage, int color, int color1) {
    return new Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24.0),
        gradient: new LinearGradient(
          colors: [
            Color(color),
            Color(color1),
          ],
          begin: Alignment.centerLeft,
          end: new Alignment(1.0, 1.0),
        ),
      ),
      child: Stack(
        children: <Widget>[
          Opacity(
            opacity: 0.3,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24.0),
                  image: DecorationImage(
                    image: ExactAssetImage(gridimage),
                    fit: BoxFit.fill,
                  )),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // ignore: avoid_unnecessary_containers
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      width: 10.0,
                    ),
                    // ignore: avoid_unnecessary_containers
                    Container(
                      child: Icon(
                        icon,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    // ignore: avoid_unnecessary_containers
                    Container(
                      child: Text(
                        "Doktor Sosial",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 23.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Montserrat",
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(gridName,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      // ignore: prefer_const_literals_to_create_immutables
                      shadows: <Shadow>[
                        Shadow(
                          offset: Offset(0.4, 1.0),
                          blurRadius: 6.0,
                          color: Colors.black54,
                        ),
                      ],
                    )),
              ),
            ],
          ),
        ],
      ),
    );
  }

  goToPageDetail(BuildContext context) {
    if (gejalaController.pakarList != null) {
      Navigator.of(context).push(MaterialPageRoute(
          builder: (context) =>
              PertanyaanPage(gejala: gejalaController.pakarList)));
    } else {
      Future.delayed(Duration(milliseconds: 100), () {
        goToPageDetail(context);
      });
    }
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final PreferredSize child;

  _SliverAppBarDelegate({required this.child});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    // ignore: todo
    // TODO: implement build
    return child;
  }

  @override
  // ignore: todo
  // TODO: implement maxExtent
  double get maxExtent => child.preferredSize.height;

  @override
  // ignore: todo
  // TODO: implement minExtent
  double get minExtent => child.preferredSize.height;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    // TODO: implement shouldRebuild
    return false;
  }
}
