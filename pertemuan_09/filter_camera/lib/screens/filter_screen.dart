import 'dart:io';
import 'package:flutter/material.dart';
import 'package:filter_camera/widgets/filter_selector.dart';

class FilterScreen extends StatefulWidget {
  final String imagePath;

  const FilterScreen({
    super.key,
    required this.imagePath,
  });

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  final _filters = [
    Colors.white,
    ...List.generate(
      Colors.primaries.length,
      (index) => Colors.primaries[(index * 4) % Colors.primaries.length],
    )
  ];

  final _filterColor = ValueNotifier<Color>(Colors.white);

  void _onFilterChanged(Color value) {
    _filterColor.value = value;
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black,
      child: Stack(
        children: [
          Positioned.fill(
            child: _buildPhotoWithFilter(),
          ),
          Positioned(
            left: 0.0,
            right: 0.0,
            bottom: 0.0,
            child: _buildFilterSelector(),
          ),
          Positioned(
            top: 40,
            right: 20,
            child: ElevatedButton(
              onPressed: () {
                // Here you would typically implement save functionality
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Image saved with filter!'),
                  ),
                );
              },
              child: const Text('Save'),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPhotoWithFilter() {
    return ValueListenableBuilder(
      valueListenable: _filterColor,
      builder: (context, color, child) {
        return Image.file(
          File(widget.imagePath),
          fit: BoxFit.cover,
          color: color.withOpacity(0.5),
          colorBlendMode: BlendMode.color,
        );
      },
    );
  }

  Widget _buildFilterSelector() {
    return FilterSelector(
      onFilterChanged: _onFilterChanged,
      filters: _filters,
    );
  }
}