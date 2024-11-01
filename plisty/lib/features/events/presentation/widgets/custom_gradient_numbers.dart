import 'package:flutter/material.dart';
import 'package:plisty/core/utils/app_colors.dart';

class CustomGradientNumbers extends StatelessWidget {
  const CustomGradientNumbers({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            // Container with background image clipped within the number
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: NetworkImage('https://s3-alpha-sig.figma.com/img/e5c4/2da1/c35ae13fb261d8097edcd0656d6d1ae3?Expires=1731283200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=lq5qDNGtg86b6-6ZrrDfgzrCgoXFOPhFSvH68e8qYV3agxW41nfyuJXskL5z60Al5YXBdAm5Ad~FOow5FYMj25bf1YNMUINp-rTXBgnQuWv3f0lIv89K0e03wgDg~Wed6Jw4OkXJiCk4B6TY~g9sLJuE4CVsTzRMcCO0YLZH5l8YWK4oi362FJ96L4lRJFh4~iA80ZK4B6nT1AagSb9KF61m6TWQ6hcu6yV9yKbPqA5TVJgBFFE7tzVxx4wrkczL4kMbWgeKfe9zrnquGpaG1KbnOZFSGpKHm8naQKB872G4AwZxszg28Cfilucztij9cIgU6X2O0Bb8F04qREJDgQ__'), // Add your image here
                  fit: BoxFit.cover,
                ),
              ),
              child: Center(
                child: Text(
                  '1',
                  style: TextStyle(
                    fontSize: 150,
                    fontWeight: FontWeight.bold,
                    color: cWhiteColor,
                  ),
                ),
              ),
            ),
            // Gradient outline for the number
            Text(
              '1',
              style: TextStyle(
                fontSize: 120,
                fontWeight: FontWeight.bold,
                foreground: Paint()
                  ..style = PaintingStyle.stroke
                  ..strokeWidth = 10
                  ..shader = LinearGradient(
                    colors: [
                      Color(0xffFF2FB7),
                      Color(0xff00F7FF),
                     
                    ], stops: [.2,.9],begin: Alignment.topCenter,end: Alignment.bottomCenter
                  ).createShader(Rect.fromLTWH(0, 0, 200, 200)),
              ),
            ),
          ],
        ),
      );
  }
}