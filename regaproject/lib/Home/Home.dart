import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'REGA',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        actions: [
          Builder(
            builder: (context) => IconButton(
              icon: const Icon(Icons.menu, color: Colors.white),
              onPressed: () {
                Scaffold.of(context).openEndDrawer();
              },
            ),
          ),
        ],
      ),
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.black,
              ),
              child: Text(
                'Rega',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('หน้าหลัก'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.favorite),
              title: const Text('รายการโปรด'),
              onTap: () {
                Navigator.pop(context);
                // TODO: Navigate to favorite page
              },
            ),
            ListTile(
              leading: const Icon(Icons.history),
              title: const Text('ประวัติ'),
              onTap: () {
                Navigator.pop(context);
                // TODO: Navigate to history page
              },
            ),
            ListTile(
              leading: const Icon(Icons.contact_mail),
              title: const Text('ติดต่อเรา'),
              onTap: () {
                Navigator.pop(context);
                // TODO: Navigate to contact page
              },
            ),
            ListTile(
              leading: const Icon(Icons.contact_mail),
              title: const Text('ตั้งค่า'),
              onTap: () {
                Navigator.pop(context);
                // TODO: Navigate to contact page
              },
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                  childAspectRatio: 0.77, // Adjust for height balance
                  children: [
                    _buildImageCard('รายการโยคะทั้งหมด', 'assets/img/yoga1.png'),
                    _buildImageCard('รายการโปรดของคุณ', 'assets/img/yoga2.png'),
                    _buildImageCard('ประวัติการเล่นของคุณ', 'assets/img/yoga3.png'),
                    _buildImageCard('เกี่ยวกับเรา', 'assets/img/yoga4.png'),
                    _buildImageCard('ติดต่อเรา', 'assets/img/yoga_pose1.png'),
                    _buildImageCard('ติดต่อเรา', 'assets/img/yoga_pose3.png'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildImageCard(String title, String imageName) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage(imageName),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        alignment: Alignment.bottomCenter,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.3),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
