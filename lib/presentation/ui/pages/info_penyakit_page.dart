part of 'pages.dart';

class InfoPenyakitPage extends StatelessWidget {
  const InfoPenyakitPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ghostWhiteColor,
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 282,
                  child: Stack(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        height: 255,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          color: mainColor,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Sistem Pakar',
                                      style:
                                          whiteSemiFont.copyWith(fontSize: 18),
                                    ),
                                    const SizedBox(height: 8),
                                    Text(
                                      'Gangguan Kecemasan\nPada Remaja',
                                      style: whiteMediumFont.copyWith(
                                          fontSize: 14),
                                    ),
                                  ],
                                ),
                                const SizedBox(width: 22),
                                Image.asset('assets/illustration.png',
                                    height: 140, width: 95),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 40),
                          width: double.infinity,
                          height: 56,
                          child: const CupertinoSearchTextField(
                            backgroundColor: whiteColor,
                            padding: EdgeInsets.symmetric(horizontal: 0),
                            placeholder: "Cari info penyakit",
                            prefixInsets: EdgeInsets.symmetric(horizontal: 16),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 40),
              ],
            ),
          ),
          // SliverPadding(
          //   padding: const EdgeInsets.symmetric(horizontal: 40),
          //   sliver: SliverGrid.count(
          //       crossAxisCount: 2,
          //       crossAxisSpacing: 20,
          //       mainAxisSpacing: 20,
          //       children: dummyPenyakit
          //           .map((e) => PenyakitCard(penyakit: e))
          //           .toList()),
          // )
        ],
      ),
    );
  }
}
