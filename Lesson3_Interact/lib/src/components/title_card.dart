import 'package:flutter/material.dart';

class TitleCard extends StatelessWidget {
  const TitleCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Oeschinen Lake Campground',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              'Kandersteg, Switzerland',
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[400],
              ),
            ),
          ],
        ),
        const FavorateStar(),
      ],
    );
  }
}

class FavorateStar extends StatefulWidget {
  const FavorateStar({super.key});

  @override
  State<FavorateStar> createState() => _FavorateStarState();
}

class _FavorateStarState extends State<FavorateStar> {
  bool isFavorate = false;
  int favoNum = 40;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconButton(
            onPressed: () {
              bool nowIsFavorate = isFavorate;
              setState(() {
                isFavorate = !nowIsFavorate;
                favoNum += nowIsFavorate ? -1 : 1;
              });
            },
            icon: Icon(
              isFavorate ? Icons.star : Icons.star_border,
              color: Colors.red[600],
              size: 30,
            )),
        SizedBox(
          width: 25,
          child: Text(
            '$favoNum',
            style: const TextStyle(fontSize: 18),
          ),
        )
      ],
    );
  }
}
