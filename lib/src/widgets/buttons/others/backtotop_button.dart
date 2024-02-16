import 'package:flutter/material.dart';

class DSWBackToTopButton extends StatefulWidget {
  const DSWBackToTopButton({super.key, required this.scrollController});

  final ScrollController scrollController;

  @override
  State<DSWBackToTopButton> createState() => _DSWBackToTopButtonState();
}

class _DSWBackToTopButtonState extends State<DSWBackToTopButton> {
  double _scale = 0;

  @override
  void initState() {
    super.initState();
    widget.scrollController.addListener(_scrollListener);
  }

  void _scrollListener() {
    if (widget.scrollController.offset >= 500) {
      if (_scale == 0) {
        setState(() => _scale = 1);
      }
    } else {
      if (_scale == 1) {
        setState(() => _scale = 0);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedScale(
      duration: const Duration(milliseconds: 150),
      curve: Curves.bounceInOut,
      scale: _scale,
      child: FloatingActionButton(
        onPressed: () {
          widget.scrollController.animateTo(
            0,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
        },
        backgroundColor: Theme.of(context).colorScheme.primary.withOpacity(0.8),
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
        child: const Icon(Icons.arrow_upward),
      ),
    );
  }
}
