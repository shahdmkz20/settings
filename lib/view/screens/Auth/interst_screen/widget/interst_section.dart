import 'package:flutter/material.dart';

import '../controller/interst_controller.dart';

class InterstsSection extends StatelessWidget {
  const InterstsSection({
    super.key,
    required InterstController controller,
  }) : _controller = controller;

  final InterstController _controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Wrap(
          spacing: 8,
          runSpacing: 0,
          children: List.generate(
            _controller.filteredInterests.length,
            (index) => GestureDetector(
              onTap: () {
                _controller.toggleSelectedIndex(index);
              },
              child: Chip(
                backgroundColor: _controller.selectedIndices.contains(index)
                    ? const Color(0xffFF9D33)
                    : const Color(0xffA8A8A8),
                label: Text(_controller.filteredInterests[index]),
                labelStyle: const TextStyle(color: Colors.white),
                padding:
                    const EdgeInsets.symmetric(horizontal: 18, vertical: 7),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                  side: const BorderSide(color: Colors.transparent),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
