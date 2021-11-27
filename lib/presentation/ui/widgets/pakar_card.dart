part of 'widgets.dart';

class PakarCard extends StatelessWidget {
  final Pakar pakar;
  final VoidCallback? onTap;
  const PakarCard({Key? key, required this.pakar, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 93,
        padding: const EdgeInsets.only(left: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: whiteColor,
          boxShadow: [
            BoxShadow(
                blurRadius: 24,
                offset: const Offset(0, 16),
                color: const Color(0xff7090B0).withOpacity(0.15))
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: CachedNetworkImage(
                imageUrl:
                    "https://image.shutterstock.com/image-photo/cheerful-mature-doctor-posing-smiling-260nw-1384243295.jpg",
                width: 64,
                height: 64,
                placeholder: (context, url) => Container(
                  width: 64,
                  height: 64,
                  color: ghostWhiteColor,
                ),
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 20),
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 150,
                    child: Text(
                      pakar.name ?? "",
                      style: mediumFont,
                    ),
                  ),
                  SizedBox(
                    width: 230,
                    child: Text(
                      "Universitas Mataram",
                      maxLines: 2,
                      style: lightFont.copyWith(
                          fontSize: 12, color: blueGreyColor, height: 1.5),
                    ),
                  ),
                  const SizedBox(height: 8),
                ])
          ],
        ),
      ),
    );
  }
}
