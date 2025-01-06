import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:poorneshapp/pages/profilePage.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0; 

  final List<Widget> _pages = [
    HomePageContent(), 
    CategoriesPage(), 
    ProfilePage(), 
  ];


  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: const Text("ShopApp"),
        backgroundColor: Colors.blueAccent,
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
            },
          ),
        ],
      ),
      body: _pages[_currentIndex], 

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Colors.blueAccent,
        onTap: _onTabTapped, 
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}


class HomePageContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(), 
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Search Bar
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 4,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search for products...',
                  prefixIcon: Icon(Icons.search),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(15),
                ),
              ),
            ),
            SizedBox(height: 20),

            
            Text(
              "Sales & Upcoming Offers",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 350,
              child: PageView(
                scrollDirection: Axis.horizontal,
                children: [
                  OfferBanner(
                    title: "50% Off Winter Sale",
                    description:
                        "Get the latest winter collection at half price!",
                    imageUrl: 'lib/assets/images/winter.png',
                    onTap: () {
                      print("Clicked on Winter Sale");
                    },
                  ),
                  OfferBanner(
                    title: "Black Friday Deals",
                    description: "Massive discounts this Black Friday!",
                    imageUrl: 'lib/assets/images/blackfriday.png',
                    onTap: () {
                      print("Clicked on Black Friday");
                    },
                  ),
                  OfferBanner(
                    title: "New Year Sale",
                    description: "Huge discounts to celebrate the New Year!",
                    imageUrl: 'lib/assets/images/newyear.png',
                    onTap: () {
                      // Navigate to New Year sale details
                      print("Clicked on New Year Sale");
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),

            Text(
              "Featured Products",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              shrinkWrap:
                  true, 
              physics:
                  NeverScrollableScrollPhysics(),
              children: [
                ProductCard(
                  imageUrl: 'https://via.placeholder.com/150',
                  name: 'Product 1',
                  price: '₹499',
                ),
                ProductCard(
                  imageUrl: 'https://via.placeholder.com/150',
                  name: 'Product 2',
                  price: '₹799',
                ),
                ProductCard(
                  imageUrl: 'https://via.placeholder.com/150',
                  name: 'Product 3',
                  price: '₹999',
                ),
                ProductCard(
                  imageUrl: 'https://via.placeholder.com/150',
                  name: 'Product 4',
                  price: '₹1999',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CategoriesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Categories Page',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}

class OfferBanner extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;
  final VoidCallback onTap;

  const OfferBanner({
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 4,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Stack(
          children: [
            // Image for the banner
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                ),
                image: DecorationImage(
                  image: NetworkImage(imageUrl),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        shadows: [
                          Shadow(
                            offset: Offset(2, 2), // The position of the shadow
                            blurRadius: 6, // The blur effect of the shadow
                            color: Colors.black26, // Shadow color
                          ),
                        ],
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.black),
                  ),
                  SizedBox(height: 5),
                  Text(
                    description,
                    style: TextStyle(
                        shadows: [
                          Shadow(
                            offset: Offset(2, 2), // The position of the shadow
                            blurRadius: 6, // The blur effect of the shadow
                            color: Colors.black26, // Shadow color
                          ),
                        ],
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.grey[500]),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ProductCard Widget
class ProductCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String price;

  const ProductCard({
    required this.imageUrl,
    required this.name,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(imageUrl, height: 100, width: 100, fit: BoxFit.cover),
          SizedBox(height: 10),
          Text(
            name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          SizedBox(height: 5),
          Text(
            price,
            style: TextStyle(
              color: Colors.green,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
