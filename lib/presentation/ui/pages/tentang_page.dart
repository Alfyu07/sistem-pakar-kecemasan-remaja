part of 'pages.dart';

class TentangPage extends StatelessWidget {
  const TentangPage({Key? key}) : super(key: key);

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
                          height: 140, width: 95),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Container(
                    child: Text(
                      "The Doctor Society",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                  ),
                  const SizedBox(height: 24),
                  Container(
                    child: Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop ",
                        style: TextStyle(fontSize: 13)),
                  )
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
