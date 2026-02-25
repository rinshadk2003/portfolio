import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/widgets/responsive_layout.dart';

class NavBar extends StatelessWidget {
  final List<String> navLinks = ["About", "Skills", "Projects", "Contact"];
  final Function(int) onNavTap;

  NavBar({super.key, required this.onNavTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      color: Theme.of(context).scaffoldBackgroundColor.withValues(alpha: 0.95),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "<RK />",
            style: GoogleFonts.outfit(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).primaryColor,
            ),
          ),
          if (ResponsiveLayout.isDesktop(context))
            Row(
              children: List.generate(
                navLinks.length,
                (index) => Padding(
                  padding: const EdgeInsets.only(left: 32),
                  child: TextButton(
                    onPressed: () => onNavTap(index),
                    child: Text(
                      navLinks[index],
                      style: GoogleFonts.inter(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.white70,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          if (!ResponsiveLayout.isDesktop(context))
            IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openEndDrawer();
              },
            ),
        ],
      ),
    );
  }
}

class MobileDrawer extends StatelessWidget {
  final List<String> navLinks = ["About", "Skills", "Projects", "Contact"];
  final Function(int) onNavTap;

  MobileDrawer({super.key, required this.onNavTap});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: ListView(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "<RK />",
                style: GoogleFonts.outfit(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).primaryColor,
                ),
              ),
              IconButton(
                icon: const Icon(Icons.close),
                onPressed: () => Navigator.pop(context),
              ),
            ],
          ),
          const SizedBox(height: 40),
          ...List.generate(
            navLinks.length,
            (index) => ListTile(
              title: Text(
                navLinks[index],
                style: GoogleFonts.inter(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              onTap: () {
                Navigator.pop(context); // Close drawer
                onNavTap(index);
              },
            ),
          ),
        ],
      ),
    );
  }
}
