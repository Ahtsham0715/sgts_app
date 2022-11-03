import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  final String imagepath;
  final bool loading;
  final VoidCallback onPress;
  const SocialButton({
    Key? key,
    required this.imagepath,
    this.loading = false,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: InkWell(
        onTap: onPress,
        child: Image.asset(
          imagepath.toString(),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
