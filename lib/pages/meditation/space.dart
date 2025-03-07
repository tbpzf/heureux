import 'package:flutter/material.dart';

class MeditationSpace extends StatefulWidget {
  const MeditationSpace({super.key});

  @override
  State<MeditationSpace> createState() => _MeditationSpaceState();
}

class _MeditationSpaceState extends State<MeditationSpace> {
  String selectedDuration = '10分钟';
  String? selectedSound;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                '冥想空间',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                '选择合适的环境音乐开始冥想',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 32),
              
              // 环境音选择网格
              GridView.count(
                shrinkWrap: true,
                crossAxisCount: 2,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                childAspectRatio: 1.5,
                children: [
                  _buildSoundCard('海浪声', Icons.waves, '海浪'),
                  _buildSoundCard('雨声', Icons.water_drop, '雨声'),
                  _buildSoundCard('轻音乐', Icons.music_note, '轻音乐'),
                  _buildSoundCard('白噪音', Icons.air, '白噪音'),
                ],
              ),
              
              const SizedBox(height: 32),
              const Text(
                '选择冥想时长',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              
              // 时长选择
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildDurationChip('5分钟'),
                  _buildDurationChip('10分钟'),
                  _buildDurationChip('15分钟'),
                ],
              ),
              
              const Spacer(),
              
              // 开始按钮
              SizedBox(
                width: double.infinity,
                height: 48,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(225, 70, 70, 229),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text(
                    '开始冥想',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSoundCard(String title, IconData icon, String value) {
    bool isSelected = selectedSound == value;
    
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedSound = value;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          color: isSelected 
              ? const Color.fromARGB(225, 70, 70, 229).withOpacity(0.1)
              : Colors.grey[100],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: isSelected 
                  ? const Color.fromARGB(225, 70, 70, 229)
                  : Colors.grey[600],
              size: 28,
            ),
            const SizedBox(height: 8),
            Text(
              title,
              style: TextStyle(
                color: isSelected 
                    ? const Color.fromARGB(225, 70, 70, 229)
                    : Colors.grey[600],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDurationChip(String duration) {
    bool isSelected = selectedDuration == duration;
    
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedDuration = duration;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        decoration: BoxDecoration(
          color: isSelected 
              ? const Color.fromARGB(225, 70, 70, 229)
              : Colors.grey[100],
          borderRadius: BorderRadius.circular(24),
        ),
        child: Text(
          duration,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.grey[600],
            fontWeight: isSelected ? FontWeight.w500 : FontWeight.normal,
          ),
        ),
      ),
    );
  }
}