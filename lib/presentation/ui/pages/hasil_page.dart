part of 'pages.dart';

class HasilPage extends StatelessWidget {
  const HasilPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              dummyDiagnosis.bobot != null
                  ? Center(
                      child: Text('${dummyDiagnosis.bobot! * 100}%',
                          style: semiFont.copyWith(fontSize: 36)),
                    )
                  : Center(
                      child: Text('-', style: semiFont.copyWith(fontSize: 36))),
              Center(
                child: Text(
                  '${dummyDiagnosis.namaPenyakit![0]}',
                  style: semiFont.copyWith(fontSize: 20),
                ),
              ),
              const SizedBox(height: 40),
              Text('Solusi', style: mediumFont.copyWith(fontSize: 18)),
              const SizedBox(height: 16),
              for (int i = 0; i < dummyDiagnosis.saranPenanganan!.length; i++)
                Container(
                  margin: const EdgeInsets.only(bottom: 16),
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
                      dummyDiagnosis.saranPenanganan![i] ?? "",
                      style: mediumFont.copyWith(fontSize: 18),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
