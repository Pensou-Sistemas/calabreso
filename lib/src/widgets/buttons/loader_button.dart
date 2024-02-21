import 'package:calabreso/calabreso.dart';
import 'package:flutter/material.dart';

enum LoaderButtonState {
  idle,
  loading,
  success,
  error,
}

//TODO melhorar esse botão
class DSWLoaderButton extends StatefulWidget {
  const DSWLoaderButton({
    super.key,
    this.onPressed,
    this.onSuccessEnd,
    required this.state,
    required this.text,
  });

  final void Function()? onPressed;
  final void Function()? onSuccessEnd;
  final LoaderButtonState state;
  final String text;

  @override
  State<DSWLoaderButton> createState() => _DSWLoaderButtonState();
}

class _DSWLoaderButtonState extends State<DSWLoaderButton> {
  late LoaderButtonState _state;

  @override
  void initState() {
    super.initState();
    _state = LoaderButtonState.idle;
  }

  @override
  void didUpdateWidget(covariant DSWLoaderButton oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.state != widget.state) {
      handleStateChange(widget.state);
    }
  }

  void onPressed() {
    widget.onPressed?.call();
  }

  void handleStateChange(LoaderButtonState value) {
    setState(() => _state = value);

    switch (value) {
      case LoaderButtonState.idle:
      case LoaderButtonState.loading:
        break;
      case LoaderButtonState.success:
      case LoaderButtonState.error:
        Future.delayed(const Duration(seconds: 1)).then((value) {
          if (mounted) setState(() => _state = LoaderButtonState.idle);
        });
        break;
    }
  }

  void onEnd() {
    if (_state == LoaderButtonState.success) {
      widget.onSuccessEnd?.call();
    }
  }

  Widget buildChild(BuildContext context) {
    switch (_state) {
      case LoaderButtonState.idle:
        return Text(
          widget.text,
          style: DSTypography.textButton.copyWith(color: Theme.of(context).colorScheme.onPrimary),
          textAlign: TextAlign.center,
        );
      case LoaderButtonState.loading:
        return const SizedBox(
          width: DSSize.sMinInteractiveDimension * 0.55,
          child: AspectRatio(aspectRatio: 1, child: CircularProgressIndicator(color: DSColors.info, strokeWidth: 3)),
        );
      case LoaderButtonState.success:
        return const Icon(Icons.check, color: DSColors.success);
      case LoaderButtonState.error:
        return const Icon(Icons.close, color: DSColors.error);
    }
  }

  Color getBackgroundColor(BuildContext context) {
    switch (_state) {
      case LoaderButtonState.idle:
        return Theme.of(context).colorScheme.primary;
      case LoaderButtonState.loading:
        return DSColors.info.withOpacity(0.3);
      case LoaderButtonState.success:
        return DSColors.success.withOpacity(0.3);
      case LoaderButtonState.error:
        return DSColors.error.withOpacity(0.3);
    }
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 160),
          curve: Curves.easeInOut,
          height: DSSize.sMinInteractiveDimension,
          width: _state == LoaderButtonState.idle ? constraints.maxWidth : DSSize.sMinInteractiveDimension,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(DSSize.sMinInteractiveDimension * 0.5),
            color: getBackgroundColor(context),
          ),

          // onEnd: onEnd,
          child: Material(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(DSSize.sMinInteractiveDimension * 0.5),
            clipBehavior: Clip.antiAlias,
            child: InkWell(
              onTap: onPressed,
              child: Center(
                child: buildChild(context),
              ),
            ),
          ),
        ),
      );
    });
  }
}
