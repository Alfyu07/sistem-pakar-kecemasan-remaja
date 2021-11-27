part of 'pages.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                            style: whiteSemiFont.copyWith(fontSize: 18),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'Gangguan Kecemasan\nPada Remaja',
                            style: whiteMediumFont.copyWith(fontSize: 14),
                          ),
                        ],
                      ),
                      const SizedBox(width: 22),
                      Image.asset('assets/illustration.png',
                          height: 140, width: 130),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                children: [
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const PilihPakarPage(),
                            ),
                          );
                        },
                        child: const MenuItem(
                          imgUrl: 'assets/microscope 1.png',
                          title: 'Diagnosa',
                        ),
                      ),
                      const SizedBox(width: 20),
                      const MenuItem(
                        imgUrl: 'assets/fever 1.png',
                        title: 'Info Penyakit',
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  Row(
                    children: const [
                      MenuItem(
                        imgUrl: 'assets/video-tutorial 1.png',
                        title: 'Tutorial',
                      ),
                      SizedBox(width: 20),
                      MenuItem(
                        imgUrl: 'assets/info-aplikasi.png',
                        title: 'Info Aplikasi',
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40)
          ],
        ),
      ),
    );
  }
}
