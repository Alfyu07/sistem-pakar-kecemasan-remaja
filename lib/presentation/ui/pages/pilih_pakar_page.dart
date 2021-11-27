part of 'pages.dart';

class PilihPakarPage extends StatelessWidget {
  const PilihPakarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 32),
        child: Column(
          children: pakarDummy
              .map(
                (e) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                        onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    PertanyaanPage(pakar: e),
                              ),
                            ),
                        child: PakarCard(pakar: e)),
                    const SizedBox(height: 20),
                  ],
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
