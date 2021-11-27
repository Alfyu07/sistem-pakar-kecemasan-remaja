part of 'pages.dart';

class PertanyaanPage extends StatefulWidget {
  final Pakar pakar;
  const PertanyaanPage({Key? key, required this.pakar}) : super(key: key);

  @override
  State<PertanyaanPage> createState() => _PertanyaanPageState();
}

class _PertanyaanPageState extends State<PertanyaanPage> {
  late int numberOfPages;
  int page = 1;
  int perPage = 5;

  int start = 0;
  @override
  void initState() {
    super.initState();
    numberOfPages = getNumberofPages();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        title: Text(
          'Jawab Pertanyaan',
          style: whiteSemiFont.copyWith(fontSize: 16),
        ),
        toolbarHeight: 80,
        backgroundColor: mainColor,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(children: [
                for (int i = (page * 5) - 5;
                    i <
                        (page == numberOfPages
                            ? gejalaDummy.length
                            : page > 1
                                ? page * perPage
                                : 5);
                    i++)
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        gejalaDummy[i].name ?? "",
                        style: mediumFont.copyWith(fontSize: 16),
                      ),
                      const SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          buildRadio(gejalaDummy[i], "STS", 0.2),
                          buildRadio(gejalaDummy[i], "TS", 0.4),
                          buildRadio(gejalaDummy[i], "RG", 0.6),
                          buildRadio(gejalaDummy[i], "S", 0.8),
                          buildRadio(gejalaDummy[i], "SS", 1.0),
                        ],
                      ),
                      const SizedBox(height: 16)
                    ],
                  ),
              ]),
              const SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ButtonSecondary(
                      text: "Prev",
                      onPressed: () {
                        setState(() {
                          page = page - 1;
                        });
                      },
                      width: 118,
                    ),
                    Text("$page/$numberOfPages",
                        style: mediumFont.copyWith(fontSize: 16)),
                    ButtonPrimary(
                      text: page != numberOfPages ? "Next" : "Submit",
                      onPressed: () {
                        if (page != numberOfPages) {
                          setState(() {
                            page = page + 1;
                          });
                        } else {
                          //!Proses diagnosis
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      const HasilPage()));
                        }
                      },
                      width: 118,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Column buildRadio(Gejala e, String title, double value) {
    return Column(
      children: [
        Transform.scale(
          scale: 1.5,
          child: Radio<double>(
            value: value,
            groupValue: e.bobotUser,
            onChanged: (value) {
              setState(
                () => e.bobotUser = value,
              );
            },
          ),
        ),
        const SizedBox(height: 2),
        Text(title, style: mediumFont.copyWith(fontSize: 14))
      ],
    );
  }

  int getNumberofPages() {
    int sisa = gejalaDummy.length % 5;
    int tmp = (gejalaDummy.length ~/ 5).toInt();
    return sisa > 0 ? tmp + 1 : tmp;
  }
}
