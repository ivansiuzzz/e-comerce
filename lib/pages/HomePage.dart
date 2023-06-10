import 'package:ecommerce/widgets/customCard.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final categories = [
    '全部',
    '水果',
    '蔬菜',
    '肉類',
    '海鮮',
    '乳製品',
    '糧油',
    '調味料',
    '酒水飲料',
    '零食'
  ];

  void handleOnclickInkWell() {
    print("object");
  }

  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final bannerHeight = screenHeight * 0.2;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrange.shade100,
          title: Row(
            children: [
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {},
              ),
              SizedBox(width: 20),
              IconButton(
                icon: Icon(Icons.phone),
                onPressed: () {},
              ),
              SizedBox(width: 30),
              Text("Shopping"),
              SizedBox(width: 30),
              IconButton(
                icon: Icon(Icons.favorite),
                onPressed: () {},
              ),
              SizedBox(width: 20),
              IconButton(
                icon: Icon(Icons.shopping_cart),
                onPressed: () {},
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: screenHeight * 0.3,
                child: GridView.count(
                  primary: false,
                  padding: const EdgeInsets.all(20),
                  crossAxisCount: 3,
                  childAspectRatio: 1.0,
                  mainAxisSpacing: 10.0,
                  crossAxisSpacing: 10.0,
                  children: [
                    CustomCard(
                      icon: Icon(Icons.account_circle),
                      title: '我的優惠券',
                      onClickInkWell: handleOnclickInkWell,
                    ),
                    CustomCard(
                      icon: Icon(Icons.video_library),
                      title: '教學影片',
                      onClickInkWell: handleOnclickInkWell,
                    ),
                    CustomCard(
                      icon: Icon(Icons.local_offer),
                      title: '最新優惠',
                      onClickInkWell: handleOnclickInkWell,
                    ),
                    CustomCard(
                      icon: Icon(Icons.store),
                      title: '店舖',
                      onClickInkWell: handleOnclickInkWell,
                    ),
                    CustomCard(
                      icon: Icon(Icons.receipt),
                      title: '訂單紀錄',
                      onClickInkWell: handleOnclickInkWell,
                    ),
                    CustomCard(
                      icon: Icon(Icons.account_circle),
                      title: '我的帳戶',
                      onClickInkWell: handleOnclickInkWell,
                    ),
                  ],
                ),
              ),
              Container(
                width: screenWidth * 0.9,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.orange.shade100,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      '產品分類',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // 处理按钮点击事件的逻辑
                      },
                      child: Text(
                        'Button',
                        style: TextStyle(
                          color: Colors.amber,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: screenHeight * 0.5,
                child: ListView.builder(
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(categories[index]),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Business',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'School',
            ),
          ],
          currentIndex: 0,
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
        ));
  }
}
