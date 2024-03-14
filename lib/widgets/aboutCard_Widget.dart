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
      // elevation: 0,
      child: SizedBox(
        width: screenWidth * 0.65,
        height: 500,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 16 / 10,
                child: Image(
                  // width: screenWidth * 0.6,
                  // height: screenHeight * 0.3,
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
                    fontSize: screenWidth / 20,
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
                    // fontWeight: FontWeight.bold,
                    // height: 1.25,
                    fontSize: screenWidth / 32,
                    color: Color.fromARGB(255, 0, 0, 0)),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );

    // Padding(
    //   padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 16),
    //   child: Container(
    //     width: 260,
    //     height: 0,
    //     decoration: BoxDecoration(
    //       color: Colors.white,
    //       boxShadow: [
    //         BoxShadow(
    //           blurRadius: 4,
    //           color: Color(0x33000000),
    //           offset: Offset(0, 2),
    //         )
    //       ],
    //       borderRadius: BorderRadius.circular(12),
    //     ),
    //     child: Column(
    //       mainAxisSize: MainAxisSize.max,
    //       children: [
    //         Container(
    //           width: double.infinity,
    //           height: 150,
    //           decoration: BoxDecoration(
    //             borderRadius: BorderRadius.circular(8),
    //           ),
    //           child: Padding(
    //             padding: EdgeInsets.all(6),
    //             child: ClipRRect(
    //               borderRadius: BorderRadius.circular(6),
    //               child: Image.network(
    //                 imageUrl,
    //                 width: 100,
    //                 height: 100,
    //                 fit: BoxFit.cover,
    //               ),
    //             ),
    //           ),
    //         ),
    //         Expanded(
    //           child: Container(
    //             height: 60,
    //             child: Column(
    //               children: [
    //                 Align(
    //                   alignment: AlignmentDirectional(-1, 0),
    //                   child: Padding(
    //                     padding: EdgeInsetsDirectional.fromSTEB(10, 5, 10, 5),
    //                     child: Text(
    //                       title,
    //                       style: TextStyle(
    //                         fontWeight: FontWeight.w500,
    //                         color: Colors.black,
    //                       ),
    //                       maxLines: 1,
    //                       overflow: TextOverflow.ellipsis,
    //                     ),
    //                   ),
    //                 ),
    //                 Align(
    //                   alignment: AlignmentDirectional(-1, 0),
    //                   child: Padding(
    //                     padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
    //                     child: Text(
    //                       description,
    //                       style: TextStyle(
    //                         fontSize: screenWidth / 32,
    //                         color: Colors.black54,
    //                       ),
    //                       maxLines: 2,
    //                       overflow: TextOverflow.ellipsis,
    //                     ),
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),
    //         ),
    //       ],
    //     ),
    //   ),
    // );
  }
}
