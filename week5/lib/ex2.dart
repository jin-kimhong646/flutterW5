import 'package:flutter/material.dart';

enum ButtonType {
  primary(Colors.blue),
  secondary(Colors.green),
  disable(Colors.grey);

  final Color color;
  const ButtonType(this.color);
}

enum IconPosition{left, right}


void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              CustomButton(
                label: "Submit",
                icon: Icons.check,
                iconPosition: IconPosition.left,
                buttonType: ButtonType.primary,
              ),
              SizedBox(height: 20),
              CustomButton(
                label: "Time",
                icon: Icons.watch_later,
                iconPosition: IconPosition.right,
                buttonType: ButtonType.secondary,
              ),
              SizedBox(height: 20),
              CustomButton(
                label: "Account",
                icon: Icons.account_tree,
                buttonType: ButtonType.disable,
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

class CustomButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final IconPosition iconPosition;
  final ButtonType buttonType;

  const CustomButton({
    super.key,
    required this.label,
    required this.icon,
    this.iconPosition = IconPosition.left,
    this.buttonType = ButtonType.primary,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: buttonType.color,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: iconPosition == IconPosition.left
            ? [
                Icon(icon, color: Colors.white),
                SizedBox(width: 10),
                Text(label, style:  TextStyle(color: Colors.white)),
              ]
            : [
                Text(label, style:  TextStyle(color: Colors.white)),
                SizedBox(width: 10),
                Icon(icon, color: Colors.white),
              ],
      ),
    );
  }
}