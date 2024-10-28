import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../app/app_router.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      //     dra: (updateDetails) {
      //   // Single finger drag, update your handlers
      // },
      onScaleUpdate: (details) {
        // Check the number of pointers involved in the gesture
        // if (true && details.pointerCount > 1) {
        // Do nothing or show a message if two-finger gesture is detected
        print('Two-finger gesture is disabled');
        return;
        // }

        // Handle other gestures if needed
      },
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () async {
                  await context.router.push(const ProfileRoute());
                },
                child: Text('ABC')),
            ElevatedButton(
                onPressed: () async {
                  await context.router.push(const ProfileRoute());
                },
                child: Text('ABC1')),
          ],
        ),
      ),
    );
  }
}
