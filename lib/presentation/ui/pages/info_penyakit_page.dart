part of 'pages.dart';

class InfoPenyakitPage extends StatelessWidget {
  final PenyakitController penyakitController = Get.put(PenyakitController());

  InfoPenyakitPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ghostWhiteColor,
        body: Obx(() {
          if (penyakitController.isLoading.value)
            return Center(child: CircularProgressIndicator());
          // ignore: curly_braces_in_flow_control_structures
          else
            return CustomScrollView(
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
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 40),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Sistem Pakar',
                                            style: whiteSemiFont.copyWith(
                                                fontSize: 18),
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
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 40),
                                width: double.infinity,
                                height: 56,
                                child: const CupertinoSearchTextField(
                                  backgroundColor: whiteColor,
                                  padding: EdgeInsets.symmetric(horizontal: 0),
                                  placeholder: "Cari info penyakit",
                                  prefixInsets:
                                      EdgeInsets.symmetric(horizontal: 16),
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
                SliverPadding(
                  padding: const EdgeInsets.symmetric(horizontal: 11),
                  sliver: SliverGrid.count(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 20,
                      children: penyakitController.penyakitList
                          .map((e) => InkWell(
                              onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => DetailsPenyakit(
                                        penyakit: e,
                                      ),
                                    ),
                                  ),
                              child: PenyakitCard(penyakit: e)))
                          .toList()),
                ),
                SliverToBoxAdapter(
                  child: SizedBox(height: 40),
                ),
              ],
            );
        }));
  }
}
