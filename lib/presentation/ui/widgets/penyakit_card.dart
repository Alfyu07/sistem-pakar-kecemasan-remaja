part of 'widgets.dart';

class PenyakitCard extends StatelessWidget {
  final Penyakit penyakit;

  const PenyakitCard({
    Key? key,
    required this.penyakit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: whiteColor,
          boxShadow: [
            BoxShadow(
              color: const Color(0xff7090B0).withOpacity(0.2),
              blurRadius: 40,
              offset: const Offset(0, 16),
            )
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12), topRight: Radius.circular(12)),
            child: CachedNetworkImage(
              imageUrl: penyakit.imgUrl ?? " ",
              width: 150,
              height: 120,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            penyakit.name ?? " ",
            style: mediumFont.copyWith(fontSize: 12),
          )
        ],
      ),
    );
  }
}
