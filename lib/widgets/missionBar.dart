import 'package:flutter/material.dart';

class MissionBar extends StatefulWidget {
  final String idCode;
  final String darknessName;
  final String entrySite;
  final String desc;

  const MissionBar({
    super.key,
    required this.idCode,
    required this.darknessName,
    required this.entrySite,
    required this.desc,
  });

  @override
  State<MissionBar> createState() => _MissionBarState();
}

class _MissionBarState extends State<MissionBar> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            width: 8,
            color: const Color.fromARGB(255, 234, 29, 33), // Your theme red
          ),
          
          Expanded(
            child: InkWell(
              onTap: () => setState(() => _isExpanded = !_isExpanded),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(widget.idCode, style: const TextStyle(fontWeight: FontWeight.w800, fontSize: 20)),
                    Text(widget.darknessName, style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 15)),
                    Text(widget.entrySite, style: const TextStyle(fontWeight: FontWeight.w300, fontStyle: FontStyle.italic, fontSize: 15)),
                    
                    if (_isExpanded) ...[
                      const SizedBox(height: 10),
                      Text(widget.desc, style: const TextStyle(fontSize: 12)),
                    ],
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}