part of 'pages.dart';

class PilihPakarPage extends StatelessWidget {
  PilihPakarPage({Key? key}) : super(key: key);
  final GejalaController gejalaController = Get.put(GejalaController());

  @override
  Widget build(BuildContext context) {
    final PakarController pakarController = Get.put(PakarController());
    return Scaffold(
        backgroundColor: whiteColor,
        appBar: AppBar(
          title: Text(
            'Pilih Pakar',
            style: whiteSemiFont.copyWith(fontSize: 16),
          ),
          toolbarHeight: 80,
          backgroundColor: mainColor,
        ),
        body: Obx(() {
          if (pakarController.isLoading.value)
            return Center(child: CircularProgressIndicator());
          // ignore: curly_braces_in_flow_control_structures
          else
            // ignore: curly_braces_in_flow_control_structures
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 32),
              child: Column(
                children: pakarController.pakarList
                    .map(
                      (e) => Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                              onTap: () async {
                                gejalaController.fetchSilders(e.id);

                                await goToPageDetail(context);
                              },
                              child: PakarCard(pakar: e)),
                          const SizedBox(height: 20),
                        ],
                      ),
                    )
                    .toList(),
              ),
            );
        }));
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
