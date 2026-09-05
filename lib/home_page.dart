import 'package:flutter/material.dart';
import 'widgets/video_background.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String backgroundVideo = 'assets/videos/default.mp4';

  void changeBackground(String video) {
    setState(() {
      backgroundVideo = video;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: VideoBackground(
        videoPath: backgroundVideo,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppCard(
                title: 'Netflix',
                image: 'assets/images/Netflix.png',
                video: 'videos/Telewizja N LOGO HIGH DEFINITION HD TELEWIZJA NOWEJ GENERACJI WŁĄCZ CIEKAWOŚĆ 6S FAN MADE LOGO.mp4',
                onHover: changeBackground,
              ),

              const SizedBox(width: 30),

              AppCard(
                title: 'YouTube',
                image: 'assets/images/YouTube.png',
                video: 'videos/TV Puls - ident (2010).mp4',
                onHover: changeBackground,
              ),

              const SizedBox(width: 30),

              AppCard(
                title: 'NordVPN',
                image: 'assets/images/NordVPN.png',
                video: 'videos/(REQUESTED) Doomsday AT&T sound effect 1 - A Second Take.mp4',
                onHover: changeBackground,
              ),

              const SizedBox(width: 30),

              AppCard(
                title: 'Rakuten',
                image: 'assets/images/Rakuten.png',
                video: 'videos/Noggin Originals (1999-2003).mp4',
                onHover: changeBackground,
              ),

              const SizedBox(width: 30),

              AppCard(
                title: 'TVP VOD',
                image: 'assets/images/TVP VOD.png',
                video: 'videos/Feature Presentation Handwriting In STJS G Major.mp4',
                onHover: changeBackground,
              ),

              const SizedBox(width: 30),

              AppCard(
                title: 'Apple TV',
                image: 'assets/images/Apple TV.png',
                video: 'videos/Polsat - Ident (2006-2019).mp4',
                onHover: changeBackground,
              ),

              const SizedBox(width: 30),

              AppCard(
                title: 'HBO Max',
                image: 'assets/images/HBO Max.png',
                video: 'videos/TVN - Pauza (2009-2013).mp4',
                onHover: changeBackground,
              ),

              const SizedBox(width: 30),

              AppCard(
                title: 'Canal+',
                image: 'assets/images/Canal+.png',
                video: 'videos/Intel Leap Ahead (2006-2008) Logo.mp4',
                onHover: changeBackground,
              ),

              const SizedBox(width: 30),

              AppCard(
                title: 'Disney+',
                image: 'assets/images/Disney+.png',
                video: 'videos/Polsat 2 - ident (2007).mp4',
                onHover: changeBackground,
              ),

              const SizedBox(width: 30),

              AppCard(
                title: 'Polsat Box Go',
                image: 'assets/images/Apple TV.png',
                video: 'videos/Grupa Polsat Plus. Wybierz swoje wszystko..mp4',
                onHover: changeBackground,
              ),

              const SizedBox(width: 30),

              AppCard(
                title: 'SkyShowtime',
                image: 'assets/images/SkyShowtime.png',
                video: 'videos/TVN7 Nieużywana pętla nocna (2013) (HQ).mp4',
                onHover: changeBackground,
              ),

              const SizedBox(width: 30),

              AppCard(
                title: 'Player',
                image: 'assets/images/player.png',
                video: 'videos/Player original logo (America and Countries).mp4',
                onHover: changeBackground,
              ),

              const SizedBox(width: 30),

              AppCard(
                title: 'Viaplay',
                image: 'assets/images/Viaplay.png',
                video: 'videos/Polsat Café - Ident (2008-dziś).mp4',
                onHover: changeBackground,
              ),

              const SizedBox(width: 30),

              AppCard(
                title: 'Apple TV',
                image: 'assets/images/Apple TV.png',
                video: 'videos/Polsat - Ident (2006-2019).mp4',
                onHover: changeBackground,
              ),

              const SizedBox(width: 30),

              AppCard(
                title: 'TVP Go',
                image: 'assets/images/TVP Go.png',
                video: 'videos/PBS Kids Dash Logo (Greatest Quality).mp4',
                onHover: changeBackground,
              ),

              const SizedBox(width: 30),

              AppCard(
                title: 'SWEET.TV',
                image: 'assets/images/Sweet TV.png',
                video: 'videos/Nelvana Limited Logo (2004).mp4',
                onHover: changeBackground,
              ),

              const SizedBox(width: 30),

              AppCard(
                title: 'Megogo',
                image: 'assets/images/megogo.png',
                video: 'videos/[REKONSTRUKCJA] nFilm - dżingle _polecamy_ (2009-2011).mp4',
                onHover: changeBackground,
              ),

              const SizedBox(width: 30),

              AppCard(
                title: 'WP Pilot',
                image: 'assets/images/WP Pilot.png',
                video: 'videos/(REUPLOAD) Snee-Oosh In STJ's G-Major.mp4',
                onHover: changeBackground,
              ),

              const SizedBox(width: 30),

              AppCard(
                title: 'Odysee',
                image: 'assets/images/Odysee.png',
                video: 'videos/Polsat Play ident (2008).mp4',
                onHover: changeBackground,
              ),

              const SizedBox(width: 30),

              AppCard(
                title: 'CDA Premium',
                image: 'assets/images/CDA Premium.png',
                video: 'videos/[#1627] Red DHX Media Logo.mp4',
                onHover: changeBackground,
              ),

              const SizedBox(width: 30),

              AppCard(
                title: 'TVN24',
                image: 'assets/images/TVN24.png',
                video: 'videos/videoplayback.mp4',
                onHover: changeBackground,
              ),

              const SizedBox(width: 30),

              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AppCard extends StatefulWidget {
  final String title;
  final String image;
  final String video;
  final Function(String) onHover;

  const AppCard({
    super.key,
    required this.title,
    required this.image,
    required this.video,
    required this.onHover,
  });

  @override
  State<AppCard> createState() => _AppCardState();
}

class _AppCardState extends State<AppCard> {
  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,

      onEnter: (_) {
        setState(() {
          isHovering = true;
        });

        // Change the background video.
        widget.onHover(widget.video);
      },

      onExit: (_) {
        setState(() {
          isHovering = false;
        });
      },

      child: AnimatedScale(
        scale: isHovering ? 1.1 : 1.0,
        duration: const Duration(milliseconds: 200),

        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          width: 180,
          height: 220,

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),

            color: Colors.white.withValues(
              alpha: isHovering ? 0.25 : 0.15,
            ),

            border: Border.all(
              color: isHovering
                  ? Colors.white
                  : Colors.white.withValues(alpha: 0.2),
              width: isHovering ? 2 : 1,
            ),

            boxShadow: isHovering
                ? [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.4),
                      blurRadius: 20,
                      spreadRadius: 2,
                    ),
                  ]
                : [],
          ),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                widget.image,
                width: 80,
                height: 80,
              ),

              const SizedBox(height: 20),

              Text(
                widget.title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
