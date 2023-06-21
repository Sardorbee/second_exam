import 'package:flutter/material.dart';
import 'package:second_exam/resources/Color/custom_colors.dart';

class LinearIndicator extends StatefulWidget {
  const LinearIndicator({super.key});

  @override
  State<LinearIndicator> createState() => _LinearIndicatorState();
}

class _LinearIndicatorState extends State<LinearIndicator>
    with TickerProviderStateMixin {
  late AnimationController controller;
  bool determinate = true;

  @override
  void initState() {
    controller = AnimationController(
      /// [AnimationController]s can be created with `vsync: this` because of
      /// [TickerProviderStateMixin].
      vsync: this,
      duration: const Duration(seconds: 2),
    )..addListener(() {
        setState(() {});
      });
    controller.stop();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(
        MediaQuery.sizeOf(context).height * 0.1,
      ),
      child: LinearProgressIndicator(
        value: 0.5,
        color: MyColor.primaryBckg,
        minHeight: MediaQuery.sizeOf(context).height * 0.008,
      ),
    );
  }
}
