import 'package:flutter/material.dart';
import 'app_colors.dart';

class InputBar extends StatelessWidget {
  const InputBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 12, top: 8),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                style: const TextStyle(color: AppColors.white),
                decoration: InputDecoration(
                  hintText: 'Type a Message...',
                  hintStyle:
                      const TextStyle(color: Colors.white54, fontSize: 12),
                  prefixIcon: const Icon(Icons.camera_alt_outlined,
                      color: AppColors.white),
                  suffixIcon: const Icon(Icons.send_outlined,
                      color: AppColors.white),
                  contentPadding: const EdgeInsets.symmetric(vertical: 0),
                  border: _border(),
                  enabledBorder: _border(),
                  focusedBorder: _border(),
                ),
              ),
            ),
            const SizedBox(width: 8),
            const Material(
              elevation: 4,
              shape: CircleBorder(),
              color: AppColors.green,
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Icon(Icons.mic, color: AppColors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }

  OutlineInputBorder _border() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(30),
      borderSide: const BorderSide(color: AppColors.green, width: 1),
    );
  }
}