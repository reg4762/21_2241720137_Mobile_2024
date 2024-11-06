import 'dart:io';
import 'package:flutter/material.dart';
import 'package:kamera_flutter/widget/filter_selector.dart';

class DisplayPictureScreen extends StatefulWidget {
  final String imagePath;

  const DisplayPictureScreen({
    super.key,
    required this.imagePath,
  });

  @override
  State<DisplayPictureScreen> createState() => _DisplayPictureScreenState();
}

class _DisplayPictureScreenState extends State<DisplayPictureScreen> {
  final _filters = [
    Colors.transparent, // No filter option
    ...List.generate(
      Colors.primaries.length,
      (index) => Colors.primaries[(index * 4) % Colors.primaries.length],
    )
  ];

  Color _selectedFilter = Colors.transparent;

  void _onFilterChanged(Color color) {
    setState(() {
      _selectedFilter = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Display the Picture - 2241720137')),
      body: Stack(
        children: [
          // Displayed image with filter
          Positioned.fill(
            child: ColorFiltered(
              colorFilter: ColorFilter.mode(
                _selectedFilter.withOpacity(0.5),
                BlendMode.color,
              ),
              child: Image.file(
                File(widget.imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          
          // Filter selector at the bottom
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: 120,
              child: FilterSelector(
                filters: _filters,
                onFilterChanged: _onFilterChanged,
                padding: const EdgeInsets.symmetric(vertical: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}