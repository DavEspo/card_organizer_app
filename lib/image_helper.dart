// image_helper.dart
class ImageHelper {
  final List<String> _images = [
    'https://c8.alamy.com/comp/GKF091/jack-hearts-GKF091.jpg',
    'https://c8.alamy.com/comp/2NH696T/jack-of-diamonds-playing-card-2NH696T.jpg',
    'https://c8.alamy.com/comp/RB2HD6/jack-of-clubs-playing-card-isolated-on-white-clipping-path-included-RB2HD6.jpg',
    'https://c8.alamy.com/comp/2NH6952/jack-of-spades-playing-card-2NH6952.jpg',
    // Jack Cards

    'https://c8.alamy.com/comp/AERYAA/queen-of-hearts-card-AERYAA.jpg',
    'https://c8.alamy.com/comp/D7BPKT/tel-aviv-israel-april-29th-2011-queen-diamonds-playing-card-isolated-D7BPKT.jpg',
    'https://c8.alamy.com/comp/2A7PF65/queen-of-clubs-playing-card-on-white-background-2A7PF65.jpg',
    'https://c8.alamy.com/comp/AERYAB/queen-of-spades-card-AERYAB.jpg',
    // Queen Cards

    'https://c8.alamy.com/comp/AERYA5/king-of-hearts-card-AERYA5.jpg',
    'https://c8.alamy.com/comp/2E239C4/king-of-diamonds-playing-card-isolated-on-black-2E239C4.jpg',
    'https://th.bing.com/th/id/OIP._4ietOh1Q1gUZsJn09x4jAAAAA?rs=1&pid=ImgDetMain',
    'https://c8.alamy.com/comp/2NH696A/king-of-spades-playing-card-2NH696A.jpg',
    // King Cards

    'https://th.bing.com/th/id/R.dcddaaa180c125707fdb51b444524051?rik=7Z1gtYJ9IzP98g&pid=ImgRaw&r=0',
    'https://c8.alamy.com/comp/2NH696B/ace-of-diamonds-playing-card-2NH696B.jpg',
    'https://c8.alamy.com/comp/2B0TEHT/ace-of-clubs-playing-card-isolated-on-white-clipping-path-included-2B0TEHT.jpg',
    'https://c8.alamy.com/comp/AERY9C/ace-of-spades-card-AERY9C.jpg',
    // Ace Cards
  ];

  // Get all images
  List<String> get images => _images;

  // Remove an image by index
  void removeImage(int index) {
    _images.removeAt(index);
  }

  // Add a new image
  void addImage(String url) {
    _images.add(url);
  }
}
