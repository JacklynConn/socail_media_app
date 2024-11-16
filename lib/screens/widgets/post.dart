import 'package:flutter/material.dart';

class PostWidget extends StatefulWidget {
  const PostWidget({super.key});

  @override
  State<PostWidget> createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const CircleAvatar(
                radius: 25,
                backgroundImage: NetworkImage(
                  'https://th.bing.com/th/id/OIP.G2YPaS0WZ_loj_G85XjMMAHaIR?rs=1&pid=ImgDetMain',
                ),
              ),
              SizedBox(width: w * 0.05),
              const Text(
                'Username',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_vert, color: Colors.white),
              ),
            ],
          ),
          SizedBox(height: h * 0.02),
          Image.network(
            'https://th.bing.com/th/id/OIP.G2YPaS0WZ_loj_G85XjMMAHaIR?rs=1&pid=ImgDetMain',
            fit: BoxFit.fill,
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.favorite_border, color: Colors.white),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.comment, color: Colors.white),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.send, color: Colors.white),
              ),
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.bookmark_border, color: Colors.white),
              ),
            ],
          ),
          const Text(
            '200 likes',
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5),
          const Text(
            'nice photo today',
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5),
          const Text(
            '1 hour ago',
            style: TextStyle(
              fontSize: 18,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 5),
          Row(
            children: [
              const CircleAvatar(
                radius: 15,
                backgroundImage: NetworkImage(
                  'https://th.bing.com/th/id/OIP.G2YPaS0WZ_loj_G85XjMMAHaIR?rs=1&pid=ImgDetMain',
                ),
              ),
              SizedBox(width: w * 0.02),
              const Text(
                'Add a comment...',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          SizedBox(height: h * 0.02),
          Divider(color: Colors.grey, thickness: 0.1),
        ],
      ),
    );
  }
}
