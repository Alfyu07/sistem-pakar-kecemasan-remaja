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
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
        child: Column(
          children: [
            InkWell(
              child: Container(
                width: double.infinity,
                height: 64,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: whiteColor,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 24,
                      offset: const Offset(0, 4),
                      color: const Color(0xff708090).withOpacity(0.15),
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    "Pakar A",
                    style: mediumFont.copyWith(fontSize: 18),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24),
            Container(
              width: double.infinity,
              height: 64,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: whiteColor,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 24,
                    offset: const Offset(0, 4),
                    color: const Color(0xff708090).withOpacity(0.15),
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  "Pakar B",
                  style: mediumFont.copyWith(fontSize: 18),
                ),
              ),
            ),
            const SizedBox(height: 24),
            Container(
              width: double.infinity,
              height: 64,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: whiteColor,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 24,
                    offset: const Offset(0, 4),
                    color: const Color(0xff708090).withOpacity(0.15),
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  "Pakar C",
                  style: mediumFont.copyWith(fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
