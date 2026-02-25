import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/data/portfolio_data.dart';
import 'package:portfolio/widgets/responsive_layout.dart';
import 'package:url_launcher/url_launcher.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  Future<void> _launchUrl(String url) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    bool isMobile = ResponsiveLayout.isMobile(context);

    return Container(
      constraints: BoxConstraints(
        minHeight: MediaQuery.of(context).size.height,
      ),
      padding: EdgeInsets.symmetric(horizontal: isMobile ? 32 : 120),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: isMobile
            ? CrossAxisAlignment.center
            : CrossAxisAlignment.start,
        children:
            [
                  Text(
                    "Hi, my name is",
                    style: GoogleFonts.outfit(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.w600,
                      fontSize: isMobile ? 18 : 22,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Text(
                      PortfolioData.name,
                      style: Theme.of(context).textTheme.displayLarge?.copyWith(
                        fontSize: isMobile ? 48 : 80,
                        height: 1.1,
                      ),
                      textAlign: isMobile ? TextAlign.center : TextAlign.left,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Text(
                      PortfolioData.title,
                      style: Theme.of(context).textTheme.displayMedium
                          ?.copyWith(
                            color: Theme.of(context).colorScheme.secondary,
                            fontSize: isMobile ? 32 : 64,
                            height: 1.1,
                          ),
                      textAlign: isMobile ? TextAlign.center : TextAlign.left,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 24),
                    child: SizedBox(
                      width: isMobile ? double.infinity : 600,
                      child: Text(
                        "${PortfolioData.summary.split('. ').first}.",
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontSize: isMobile ? 16 : 20,
                          height: 1.5,
                        ),
                        textAlign: isMobile ? TextAlign.center : TextAlign.left,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 48),
                    child: Row(
                      mainAxisAlignment: isMobile
                          ? MainAxisAlignment.center
                          : MainAxisAlignment.start,
                      children: [
                        ElevatedButton.icon(
                          onPressed: () => _launchUrl(PortfolioData.github),
                          icon: const Icon(Icons.code),
                          label: const Text("GitHub"),
                        ),
                        const SizedBox(width: 24),
                        OutlinedButton.icon(
                          onPressed: () => _launchUrl(PortfolioData.linkedIn),
                          icon: const Icon(Icons.link),
                          label: const Text("LinkedIn"),
                        ),
                      ],
                    ),
                  ),
                ]
                .animate(interval: 200.ms)
                .fadeIn(duration: 800.ms, curve: Curves.easeOutCubic)
                .slideY(begin: 0.2, curve: Curves.easeOutCubic),
      ),
    );
  }
}
