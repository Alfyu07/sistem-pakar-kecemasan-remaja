part of 'pages.dart';

class DetailsPenyakit extends StatelessWidget {
  final Penyakit penyakit;
  const DetailsPenyakit({Key? key, required this.penyakit}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Image.network(
              penyakit.imgUrl ?? "",
              width: MediaQuery.of(context).size.width,
              height: 350,
              fit: BoxFit.cover,
            ),
            ListView(
              children: [
                const SizedBox(height: 328),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                    color: whiteColor,
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // * Header
                        buildHeader(),
                        const SizedBox(height: 16),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 40),
                          child: Text(
                            penyakit.description ?? " ",
                            style: lightFont,
                          ),
                        ),
                        const SizedBox(height: 16),

                        // *Penanganan
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 40),
                          child: Text(
                            'Penanganan',
                            style: mediumFont.copyWith(fontSize: 18),
                          ),
                        ),
                        const SizedBox(height: 16),
                        for (int i = 0; i < penyakit.penanganan!.length; i++)
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 40),
                            child: Text(
                              penyakit.penanganan![i].name ?? " ",
                              style: lightFont,
                            ),
                          ),
                        const SizedBox(height: 64),
                      ]),
                ),
              ],
            ),
            SafeArea(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24.0, vertical: 24),
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: whiteColor),
                  child: Center(
                    child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.arrow_back)),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildHeader() {
    return Padding(
      padding: const EdgeInsets.only(
        left: 40,
        right: 40,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 30),
          Text(
            penyakit.name ?? "null",
            style: mediumFont.copyWith(fontSize: 18),
          ),
          const SizedBox(height: 2),
        ],
      ),
    );
  }
}
