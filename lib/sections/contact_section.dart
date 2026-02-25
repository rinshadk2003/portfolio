import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/data/portfolio_data.dart';
import 'package:portfolio/widgets/responsive_layout.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  Future<void> _launchUrl(String url) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    bool isMobile = ResponsiveLayout.isMobile(context);

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 32 : 120,
        vertical: 100,
      ),
      child: Column(
        children: [
          Text(
            "04. What's Next?",
            style: GoogleFonts.outfit(
              color: Theme.of(context).primaryColor,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            "Get In Touch",
            style: Theme.of(context).textTheme.displayMedium?.copyWith(
              fontSize: isMobile ? 40 : 56,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 24),
          SizedBox(
            width: 600,
            child: Text(
              "Whether you have a question or just want to say hi, I'll try my best to get back to you!",
              style: Theme.of(
                context,
              ).textTheme.bodyLarge?.copyWith(fontSize: 16, height: 1.6),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 48),
          ElevatedButton(
            onPressed: () => _launchUrl("mailto:${PortfolioData.email}"),
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 20),
            ),
            child: const Text("Say Hello"),
          ),
          const SizedBox(height: 100),

          // Footer
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () => _launchUrl(PortfolioData.github),
                icon: const Icon(Icons.code),
                color: Colors.white70,
              ),
              const SizedBox(width: 16),
              IconButton(
                onPressed: () => _launchUrl(PortfolioData.linkedIn),
                icon: const Icon(Icons.link),
                color: Colors.white70,
              ),
            ],
          ),
          const SizedBox(height: 16),
          Text(
            "Designed & Built by Rinshad K",
            style: GoogleFonts.inter(color: Colors.white60, fontSize: 14),
          ),
        ],
      ),
    );
  }
}
