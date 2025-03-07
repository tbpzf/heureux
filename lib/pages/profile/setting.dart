import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  bool notificationEnabled = true;
  bool autoPlayEnabled = false;
  bool darkModeEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => context.pop(),
        ),
        title: const Text(
          '设置',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          // 开关设置项
          _buildSwitchItem(
            '通知提醒',
            notificationEnabled,
            (value) {
              setState(() {
                notificationEnabled = value;
              });
            },
          ),
          _buildSwitchItem(
            '自动播放',
            autoPlayEnabled,
            (value) {
              setState(() {
                autoPlayEnabled = value;
              });
            },
          ),
          _buildSwitchItem(
            '深色模式',
            darkModeEnabled,
            (value) {
              setState(() {
                darkModeEnabled = value;
              });
            },
          ),

          const Divider(height: 1),

          // 链接设置项
          _buildLinkItem(
            '隐私设置',
            onTap: () {},
          ),
          _buildLinkItem(
            '关于我们',
            onTap: () {},
          ),

          const Spacer(),

          // 退出登录按钮
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SizedBox(
              width: double.infinity,
              height: 48,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red[50],
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text(
                  '退出登录',
                  style: TextStyle(
                    color: Colors.red[400],
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }

  Widget _buildSwitchItem(
    String title,
    bool value,
    ValueChanged<bool> onChanged,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
          Switch(
            value: value,
            onChanged: onChanged,
            activeColor: const Color.fromARGB(225, 70, 70, 229),
          ),
        ],
      ),
    );
  }

  Widget _buildLinkItem(String title, {required VoidCallback onTap}) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
            Icon(
              Icons.chevron_right,
              color: Colors.grey[400],
            ),
          ],
        ),
      ),
    );
  }
}
