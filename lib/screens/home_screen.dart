import 'package:flutter/material.dart';
import 'package:portfolio/widgets/nav_bar.dart';
import 'package:portfolio/widgets/responsive_layout.dart';
import 'package:portfolio/sections/hero_section.dart';
import 'package:portfolio/sections/about_section.dart';
import 'package:portfolio/sections/skills_section.dart';
import 'package:portfolio/sections/projects_section.dart';
import 'package:portfolio/sections/contact_section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ScrollController _scrollController = ScrollController();
  final List<GlobalKey> _sectionKeys = List.generate(4, (index) => GlobalKey());

  void _scrollToSection(int index) {
    Scrollable.ensureVisible(
      _sectionKeys[index].currentContext!,
      duration: const Duration(milliseconds: 600),
      curve: Curves.easeInOut,
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: !ResponsiveLayout.isDesktop(context)
          ? MobileDrawer(onNavTap: _scrollToSection)
          : null,
      body: SafeArea(
        // Use a Stack to make the NavBar sticky at the top
        child: Stack(
          children: [
            SingleChildScrollView(
              controller: _scrollController,
              child: Column(
                children: [
                  const SizedBox(height: 80), // Offset for sticky navbar
                  const HeroSection(),

                  Container(key: _sectionKeys[0], child: const AboutSection()),
                  Container(key: _sectionKeys[1], child: const SkillsSection()),
                  Container(
                    key: _sectionKeys[2],
                    child: const ProjectsSection(),
                  ),
                  Container(
                    key: _sectionKeys[3],
                    child: const ContactSection(),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: NavBar(onNavTap: _scrollToSection),
            ),
          ],
        ),
      ),
    );
  }
}
