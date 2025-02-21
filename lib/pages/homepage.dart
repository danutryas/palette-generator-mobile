import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final void Function(int) updateIndex;
  const HomePage({super.key, required this.updateIndex});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  _moveToGallery() {
    widget.updateIndex(1);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text(
                'Your Last Palette',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[800],
                ),
              ),
              GestureDetector(
                onTap: () {
                  _moveToGallery();
                },
                child: Text(
                  'See all',
                  style: TextStyle(
                    fontSize: 16,
                    letterSpacing: 0.8,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey[800],
                  ),
                ),
              ),
            ],
          ),

          SizedBox(height: 8), // Add spacing
          Row(
            mainAxisAlignment:
                MainAxisAlignment.spaceEvenly, // Space out the items
            children: [
              ColorDetailBox(color: Colors.red, name: 'Red', code: '#FF0000'),
              ColorDetailBox(color: Colors.blue, name: 'Blue', code: '#0000FF'),
              ColorDetailBox(
                color: Colors.green,
                name: 'Green',
                code: '#00FF00',
              ),
              ColorDetailBox(
                color: Colors.green,
                name: 'Green',
                code: '#00FF00',
              ),
              ColorDetailBox(
                color: Colors.green,
                name: 'Green',
                code: '#00FF00',
              ),
            ],
          ),
          SizedBox(height: 24), // Add spacing
        ],
      ),
    );
  }
}

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.all(16.0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: <Widget>[
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             crossAxisAlignment: CrossAxisAlignment.end,
//             children: <Widget>[
//               Text(
//                 'Your Last Palette',
//                 style: TextStyle(
//                   fontSize: 24,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.grey[800],
//                 ),
//               ),
//               GestureDetector(
//                 onTap: () {},
//                 child: Text(
//                   'See all',
//                   style: TextStyle(
//                     fontSize: 16,
//                     letterSpacing: 0.8,
//                     fontWeight: FontWeight.w400,
//                     color: Colors.grey[800],
//                   ),
//                 ),
//               ),
//             ],
//           ),

//           SizedBox(height: 8), // Add spacing
//           Row(
//             mainAxisAlignment:
//                 MainAxisAlignment.spaceEvenly, // Space out the items
//             children: [
//               ColorDetailBox(color: Colors.red, name: 'Red', code: '#FF0000'),
//               ColorDetailBox(color: Colors.blue, name: 'Blue', code: '#0000FF'),
//               ColorDetailBox(
//                 color: Colors.green,
//                 name: 'Green',
//                 code: '#00FF00',
//               ),
//               ColorDetailBox(
//                 color: Colors.green,
//                 name: 'Green',
//                 code: '#00FF00',
//               ),
//               ColorDetailBox(
//                 color: Colors.green,
//                 name: 'Green',
//                 code: '#00FF00',
//               ),
//             ],
//           ),
//           SizedBox(height: 24), // Add spacing
//         ],
//       ),
//     );
//   }
// }

class ColorDetailBox extends StatelessWidget {
  final Color color;
  final String name;
  final String code;

  const ColorDetailBox({
    super.key,
    required this.color,
    required this.name,
    required this.code,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(8), // Rounded corners
          ),
        ),
        SizedBox(height: 8), // Add spacing

        Text(code, style: TextStyle(fontSize: 14, color: Colors.grey[800])),
      ],
    );
  }
}
