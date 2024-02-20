import 'package:calabreso/calabreso.dart';
import 'package:flutter/material.dart';

class DSWCheckbox extends StatefulWidget {
  const DSWCheckbox({
    super.key,
    required this.text,
    required this.value,
    this.onChanged,
  });

  final String text;
  final bool value;
  final void Function(bool)? onChanged;

  @override
  State<DSWCheckbox> createState() => _DSWCheckboxState();
}

class _DSWCheckboxState extends State<DSWCheckbox> {
  late bool _value;

  @override
  void initState() {
    super.initState();
    _value = widget.value;
  }

  @override
  void didUpdateWidget(covariant DSWCheckbox oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.value != widget.value) {
      setState(() => _value = widget.value);
    }
  }

  void onCheckboxChanged(bool? value) {
    if (value != null) {
      setState(() {
        _value = value;
        widget.onChanged?.call(value);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onCheckboxChanged(!_value);
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            padding: const EdgeInsets.all(DSSize.r01),
            decoration: BoxDecoration(
              color: _value ? Theme.of(context).colorScheme.primary : Colors.transparent,
              border: Border.all(color: _value ? Colors.transparent : Theme.of(context).colorScheme.outline),
              borderRadius: const BorderRadius.all(Radius.circular(DSSize.r02)),
            ),
            child: Icon(
              DSIcons.check,
              color: _value ? Theme.of(context).colorScheme.onPrimary : Colors.transparent,
              size: DSSize.sIconMin,
            ),
          ),
          const SizedBox(width: DSSize.w02),
          Text(
            widget.text,
            style: DSTypography.textBody1,
          ),
        ],
      ),
    );
  }
}
