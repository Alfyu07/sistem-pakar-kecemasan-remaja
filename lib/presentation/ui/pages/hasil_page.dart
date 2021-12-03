part of 'pages.dart';

class HasilPage extends StatelessWidget {
  final Results? results;
  const HasilPage({Key? key, required this.results}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final bobot = double.parse(results!.bobot) * 100;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Hasil Diagnosis',
          style: whiteSemiFont.copyWith(fontSize: 16),
        ),
        toolbarHeight: 80,
        backgroundColor: mainColor,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),
              results!.bobot != null
                  ? Center(
                      child: Text(bobot.toString().substring(0, 4) + '%',
                          style: semiFont.copyWith(fontSize: 36)),
                    )
                  : Center(
                      child: Text('-', style: semiFont.copyWith(fontSize: 36))),
              Container(
                padding: EdgeInsets.only(left: 30, right: 30),
                child: Text(
                  '${results!.penyakit.name}',
                  style: semiFont.copyWith(fontSize: 20),
                ),
              ),
              const SizedBox(height: 10),

              Container(
                width: 300,
                child: RaisedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) =>
                              DetailsPenyakit(penyakit: results!.penyakit),
                        ),
                      );
                    },
                    color: mainColor,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    child: Text(
                      "Detail Penyakit",
                      style: mediumFont.copyWith(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )),
              ),
              const SizedBox(height: 10),

              Container(
                width: 300,
                child: RaisedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => HomePage(),
                        ),
                      );
                    },
                    color: Colors.red,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    child: Text(
                      "Kembali ke home",
                      style: mediumFont.copyWith(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )),
              ),
              const SizedBox(height: 40),
              // Text('Detail Hasil Perhitungan',
              //     style: mediumFont.copyWith(fontSize: 18)),
              // const SizedBox(height: 16),
              // for (int i = 0; i < results!.resultDetail!.length; i++)
              //   Container(
              //     margin: const EdgeInsets.only(bottom: 16),
              //     width: double.infinity,
              //     height: 64,
              //     decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(8),
              //       color: whiteColor,
              //       boxShadow: [
              //         BoxShadow(
              //           blurRadius: 24,
              //           offset: const Offset(0, 4),
              //           color: const Color(0xff708090).withOpacity(0.15),
              //         ),
              //       ],
              //     ),
              //     child: Container(
              //       padding: EdgeInsets.only(left: 20, right: 20),
              //       child: Text(
              //         results!.resultDetail![i].name! +
              //             " " +
              //             (results!.resultDetail![i].hasil! * 100)
              //                 .toString()
              //                 .substring(0, 2) +
              //             '%',
              //         style: mediumFont.copyWith(fontSize: 18),
              //       ),
              //     ),
              //   ),
            ],
          ),
        ),
      ),
    );
  }
}
