import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/widgets/responsive_layout.dart';
import 'package:simple_icons/simple_icons.dart';

class SkillCard extends StatefulWidget {
  final String name;
  final IconData icon;
  final Color? hoverColor;

  const SkillCard({
    super.key,
    required this.name,
    required this.icon,
    this.hoverColor,
  });

  @override
  State<SkillCard> createState() => _SkillCardState();
}

class _SkillCardState extends State<SkillCard> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeOut,
        transform: Matrix4.translationValues(0.0, _isHovered ? -8.0 : 0.0, 0.0),
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: _isHovered
              ? (widget.hoverColor?.withValues(alpha: 0.1) ??
                    Theme.of(context).primaryColor.withValues(alpha: 0.1))
              : Theme.of(context).colorScheme.surface,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: _isHovered
                ? (widget.hoverColor?.withValues(alpha: 0.5) ??
                      Theme.of(context).primaryColor.withValues(alpha: 0.5))
                : Theme.of(context).primaryColor.withValues(alpha: 0.05),
          ),
          boxShadow: _isHovered
              ? [
                  BoxShadow(
                    color: (widget.hoverColor ?? Theme.of(context).primaryColor)
                        .withValues(alpha: 0.2),
                    blurRadius: 20,
                    offset: const Offset(0, 10),
                  ),
                ]
              : [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.1),
                    blurRadius: 10,
                    offset: const Offset(0, 5),
                  ),
                ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              widget.icon,
              size: 48,
              color: _isHovered
                  ? (widget.hoverColor ?? Theme.of(context).primaryColor)
                  : Colors.white70,
            ),
            const SizedBox(height: 16),
            Text(
              widget.name,
              style: GoogleFonts.inter(
                color: _isHovered ? Colors.white : Colors.white70,
                fontSize: 16,
                fontWeight: _isHovered ? FontWeight.w600 : FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    bool isMobile = ResponsiveLayout.isMobile(context);

    // Tech deck mapped to icons
    final List<Map<String, dynamic>> techStack = [
      {
        "name": "Flutter",
        "icon": SimpleIcons.flutter,
        "color": const Color(0xFF02569B),
      },
      {
        "name": "Dart",
        "icon": SimpleIcons.dart,
        "color": const Color(0xFF0175C2),
      },
      {
        "name": "Kotlin",
        "icon": SimpleIcons.kotlin,
        "color": const Color(0xFF7F52FF),
      },
      {
        "name": "Jetpack Compose",
        "icon": SimpleIcons.android,
        "color": const Color(0xFF3DDC84),
      },
      {"name": "XML", "icon": Icons.code, "color": const Color(0xFFFF6600)},
      {
        "name": "Firebase",
        "icon": SimpleIcons.firebase,
        "color": const Color(0xFFFFCA28),
      },
      {
        "name": "Firestore",
        "icon": SimpleIcons.firebase,
        "color": const Color(0xFFFFA000),
      },
      {"name": "REST API", "icon": Icons.api, "color": const Color(0xFF007ACC)},
      {
        "name": "BLoC",
        "icon": Icons.view_in_ar,
        "color": const Color(0xFF818CF8),
      },
      {
        "name": "Riverpod",
        "icon": Icons.waves,
        "color": const Color(0xFF00B4AB),
      },
    ];

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 32 : 120,
        vertical: 100,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "02. ",
                style: GoogleFonts.outfit(
                  color: Theme.of(context).primaryColor,
                  fontSize: isMobile ? 24 : 32,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Text(
                      "Technical Skills",
                      style: Theme.of(context).textTheme.headlineMedium
                          ?.copyWith(fontSize: isMobile ? 24 : 32),
                    ),
                    const SizedBox(width: 24),
                    Expanded(
                      child: Container(height: 1, color: Colors.white24),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 48),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: isMobile
                  ? 2
                  : (ResponsiveLayout.isTablet(context) ? 3 : 5),
              crossAxisSpacing: 24,
              mainAxisSpacing: 24,
              childAspectRatio: 1.0,
            ),
            itemCount: techStack.length,
            itemBuilder: (context, index) {
              return SkillCard(
                name: techStack[index]['name'],
                icon: techStack[index]['icon'],
                hoverColor: techStack[index]['color'],
              );
            },
          ),
        ],
      ),
    );
  }
}
