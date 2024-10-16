import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var title = 'Image Gallery';

    return MaterialApp(
      title: title,
      home: MyHomePage(title: title),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> _images = [
    'https://c8.alamy.com/comp/GKF091/jack-hearts-GKF091.jpg',
    'https://www.alamy.com/aggregator-api/download?url=https://c8.alamy.com/comp/2NH696T/jack-of-diamonds-playing-card-2NH696T.jpg',
    'https://c8.alamy.com/comp/RB2HD6/jack-of-clubs-playing-card-isolated-on-white-clipping-path-included-RB2HD6.jpg',
    'https://c8.alamy.com/comp/2NH6952/jack-of-spades-playing-card-2NH6952.jpg',
    // Jack Cards

    'https://c8.alamy.com/comp/AERYAA/queen-of-hearts-card-AERYAA.jpg',
    'https://c8.alamy.com/comp/D7BPKT/tel-aviv-israel-april-29th-2011-queen-diamonds-playing-card-isolated-D7BPKT.jpg',
    'https://www.alamy.com/aggregator-api/download?url=https://c8.alamy.com/comp/2A7PF65/queen-of-clubs-playing-card-on-white-background-2A7PF65.jpg',
    'https://www.alamy.com/aggregator-api/download?url=https://c8.alamy.com/comp/AERYAB/queen-of-spades-card-AERYAB.jpg',
    //Queen Cards

    'https://c8.alamy.com/comp/AERYA5/king-of-hearts-card-AERYA5.jpg',
    'https://www.alamy.com/aggregator-api/download?url=https://c8.alamy.com/comp/2E239C4/king-of-diamonds-playing-card-isolated-on-black-2E239C4.jpg',
    'https://th.bing.com/th/id/OIP._4ietOh1Q1gUZsJn09x4jAAAAA?rs=1&pid=ImgDetMain',
    'https://c8.alamy.com/comp/2NH696A/king-of-spades-playing-card-2NH696A.jpg',
    //King Cards

    'https://th.bing.com/th/id/R.dcddaaa180c125707fdb51b444524051?rik=7Z1gtYJ9IzP98g&pid=ImgRaw&r=0',
    'https://c8.alamy.com/comp/2NH696B/ace-of-diamonds-playing-card-2NH696B.jpg',
    'https://c8.alamy.com/comp/2B0TEHT/ace-of-clubs-playing-card-isolated-on-white-clipping-path-included-2B0TEHT.jpg',
    'https://c8.alamy.com/comp/AERY9C/ace-of-spades-card-AERY9C.jpg',
    //Ace Cards
  ];

  void _addImage(String url) {
    setState(() {
      _images.add(url);
    });
  }

  void _removeImage(int index) {
    setState(() {
      _images.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
            
              _showAddImageDialog(context);
            },
          ),
        ],
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4, // Number of columns
          crossAxisSpacing: 4.0,
          mainAxisSpacing: 4.0,
        ),
        itemCount: _images.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onLongPress: () {
              _removeImage(index); 
            },
            child: Card(
              child: Image.network(
                _images[index],
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }

  void _showAddImageDialog(BuildContext context) {
    final TextEditingController _urlController = TextEditingController();
    
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Add New Image'),
          content: TextField(
            controller: _urlController,
            decoration: const InputDecoration(hintText: 'Enter image URL'),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                String url = _urlController.text;
                if (url.isNotEmpty) {
                  _addImage(url);
                }
                Navigator.of(context).pop();
              },
              child: const Text('Add'),
            ),
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Cancel'),
            ),
          ],
        );
      },
    );
  }
}
