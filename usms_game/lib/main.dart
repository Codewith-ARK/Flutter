import 'package:flutter/material.dart';

void main() => runApp(PlatformerGame());

class PlatformerGame extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Platformer Game',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: GameScreen(),
        ),
      ),
    );
  }
}

class GameScreen extends StatefulWidget {
  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  double playerBottomPosition = 0;
  double playerSpeedY = 0;
  double gravity = 1;
  double jumpForce = 15;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: jump,
      child: Container(
        color: Colors.white,
        child: Stack(
          children: [
            // Ground
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 100,
                color: Colors.green,
              ),
            ),
            // Player
            Positioned(
              bottom: playerBottomPosition,
              left: 50,
              child: Container(
                width: 50,
                height: 50,
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void jump() {
    setState(() {
      playerSpeedY = -jumpForce;
    });
  }

  void updatePlayerPosition() {
    setState(() {
      playerSpeedY += gravity;
      playerBottomPosition += playerSpeedY;
      if (playerBottomPosition > 0) {
        playerBottomPosition = 0;
        playerSpeedY = 0;
      }
    });
  }

  @override
  void initState() {
    super.initState();
    // Start the game loop
    WidgetsBinding.instance.addPostFrameCallback((_) => gameLoop());
  }

  void gameLoop() {
    updatePlayerPosition();
    // Call the game loop again in the next frame
    WidgetsBinding.instance.addPostFrameCallback((_) => gameLoop());
  }
}
