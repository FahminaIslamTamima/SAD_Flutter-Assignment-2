import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F0FF),

      appBar: AppBar(
        backgroundColor: const Color(0xFF6C5A9E),
        elevation: 0,
        centerTitle: false,

        title: Text(
          'My First App',
          style: GoogleFonts.playfairDisplay(
            color: Colors.white,
            fontSize: 23,
            fontWeight: FontWeight.w600,
          ),
        ),

        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search_rounded,
              color: Colors.white,
              size: 26,
            ),
          ),
          const SizedBox(width: 8),
        ],
      ),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              decoration: const BoxDecoration(
                color: Color(0xFF6C5A9E),
              ),
              accountName: const Text(
                'My First App',
              ),
              accountEmail: const Text(
                'Welcome!',
              ),
              currentAccountPicture: const CircleAvatar(
                backgroundColor: Color(0xFFF0E9FF),
                child: Icon(
                  Icons.local_florist,
                  color: Color(0xFF8067B7),
                  size: 30,
                ),
              ),
            ),

            ListTile(
              leading: const Icon(
                Icons.home_outlined,
                color: Color(0xFF6C5A9E),
              ),
              title: const Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),

            ListTile(
              leading: const Icon(
                Icons.info_outline,
                color: Color(0xFF6C5A9E),
              ),
              title: const Text('About'),
              onTap: () {
                Navigator.pop(context);
              },
            ),

            ListTile(
              leading: const Icon(
                Icons.contact_mail_outlined,
                color: Color(0xFF6C5A9E),
              ),
              title: const Text('Contact'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),

      body: Stack(
        children: [
          // Decorative circle - top right
          Positioned(
            top: -70,
            right: -60,
            child: Container(
              width: 180,
              height: 180,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFFE3D6FF),
              ),
            ),
          ),

          // Decorative circle - bottom left
          Positioned(
            bottom: -80,
            left: -70,
            child: Container(
              width: 190,
              height: 190,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFFE8DFFF),
              ),
            ),
          ),

          // Main content
          Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 28),
              padding: const EdgeInsets.symmetric(
                horizontal: 25,
                vertical: 25,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(28),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x296C5A9E),
                    blurRadius: 25,
                    spreadRadius: 1,
                    offset: const Offset(0, 10),
                  ),
                ],
              ),

              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Flower
                  Container(
                    width: 75,
                    height: 75,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFFF0E9FF),
                    ),
                    child: const Icon(
                      Icons.local_florist,
                      size: 42,
                      color: Color(0xFF8067B7),
                    ),
                  ),

                  const SizedBox(height: 15),

                  // Welcome
                  Text(
                    'WELCOME',
                    style: GoogleFonts.poppins(
                      fontSize: 11,
                      letterSpacing: 3,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFF9B89B8),
                    ),
                  ),

                  const SizedBox(height: 5),

                  // Heading
                  Text(
                    'Hello,everyone!',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.playfairDisplay(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF4B3D70),
                    ),
                  ),

                  const SizedBox(height: 8),

                  // Subtitle
                  Text(
                    'A little space for creativity,\nideas & beautiful things.',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 13,
                      height: 1.5,
                      color: const Color(0xFF81758F),
                    ),
                  ),

                  const SizedBox(height: 18),

                  // Decorative divider
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 30,
                        height: 1,
                        color: const Color(0xFFD8CBEF),
                      ),
                      const SizedBox(width: 8),
                      const Icon(
                        Icons.favorite_border_rounded,
                        size: 15,
                        color: Color(0xFF9B7FC7),
                      ),
                      const SizedBox(width: 8),
                      Container(
                        width: 30,
                        height: 1,
                        color: const Color(0xFFD8CBEF),
                      ),
                    ],
                  ),

                  const SizedBox(height: 18),

                  // Explore button
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF6C5A9E),
                      foregroundColor: Colors.white,
                      fixedSize: const Size(250, 45),
                      elevation: 3,
                      shadowColor: const Color(0xFF6C5A9E),
                      side: const BorderSide(
                        color: Color(0xFF8067B7),
                        width: 1.5,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: Text(
                      'Explore',
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),

                  const SizedBox(height: 8),

                  // About button
                  OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      foregroundColor: const Color(0xFF6C5A9E),
                      fixedSize: const Size(250, 45),
                      side: const BorderSide(
                        color: Color(0xFF9B7FC7),
                        width: 2,
                      ),
                      elevation: 2,
                      shadowColor: const Color(0xFF9B7FC7),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: Text(
                      'About',
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),

                  const SizedBox(height: 8),

                  // Contact button
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      foregroundColor: const Color(0xFF8067B7),
                      fixedSize: const Size(250, 45),
                      side: const BorderSide(
                        color: Color(0xFFD8CBEF),
                        width: 1.5,
                      ),
                      elevation: 2,
                      shadowColor: const Color(0xFFD8CBEF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: Text(
                      'Contact',
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}