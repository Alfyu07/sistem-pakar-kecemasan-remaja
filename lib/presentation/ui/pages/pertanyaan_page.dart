part of 'pages.dart';

class PertanyaanPage extends StatefulWidget {
  final List<Gejala> gejala;
  const PertanyaanPage({Key? key, required this.gejala}) : super(key: key);

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
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
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
                        widget.gejala[i].name ?? "",
                        style: mediumFont.copyWith(fontSize: 16),
                      ),
                      const SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          buildRadio(widget.gejala[i], "None", 0.0),
                          buildRadio(widget.gejala[i], "STS", 0.2),
                          buildRadio(widget.gejala[i], "TS", 0.4),
                          buildRadio(widget.gejala[i], "RG", 0.6),
                          buildRadio(widget.gejala[i], "S", 0.8),
                          buildRadio(widget.gejala[i], "SS", 1.0),
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
            groupValue: e.bobotUser ?? 0.0,
            onChanged: (value) {
              if (e.bobotUser == null || e.bobotUser == 0.0) {
                setState(
                  () {
                    e.bobotUser = value;
                    e.checked = false;
                  },
                );
              } else {
                setState(
                  () {
                    e.bobotUser = value;
                    e.checked = true;
                  },
                );
              }
            },
          ),
        ),
        const SizedBox(height: 2),
        Text(title, style: mediumFont.copyWith(fontSize: 14))
      ],
    );
  }

  int getNumberofPages() {
    int sisa = widget.gejala.length % 5;
    int tmp = (widget.gejala.length ~/ 5).toInt();
    return sisa > 0 ? tmp + 1 : tmp;
  }
}
