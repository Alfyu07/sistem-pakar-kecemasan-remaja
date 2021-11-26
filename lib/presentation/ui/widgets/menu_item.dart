part of 'widgets.dart';

class MenuItem extends StatelessWidget {
  final String imgUrl;
  final String title;
  const MenuItem({Key? key, required this.imgUrl, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                blurRadius: 24,
                offset: const Offset(0, 4),
                color: const Color(0xff708090).withOpacity(0.15),
              ),
            ],
          ),
          child: Center(
            child: Image.asset(
              imgUrl,
              width: 90,
            ),
          ),
        ),
        const SizedBox(height: 12),
        Text(
          title,
          style: semiFont.copyWith(fontSize: 16),
        )
      ],
    );
  }
}
