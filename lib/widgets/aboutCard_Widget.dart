import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;
  final double screenWidth;
  final double screenHeight;

  const AboutCard({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.description,
    required this.screenWidth,
    required this.screenHeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color.fromARGB(255, 255, 255, 255),
      child: SizedBox(
        width: screenWidth * 0.65,
        height: 800,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 16 / 10,
                child: Image(
                  image: NetworkImage(imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: screenHeight * 0.005,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: screenWidth / 26,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              SizedBox(
                height: screenHeight * 0.003,
              ),
              Text(
                description,
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontSize: screenWidth / 32,
                    color: Color.fromARGB(255, 0, 0, 0)),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
