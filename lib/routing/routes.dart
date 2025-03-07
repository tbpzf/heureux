import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:heureux/pages/course/course_list.dart';
import '../pages/login/login.dart';
import '../pages/register/register.dart';
import '../pages/home/home.dart';
import '../pages/not_found/not_found.dart';
import '../pages/notification_center/notification_center.dart';
import '../pages/course/course_list.dart';
import '../pages/course/course_detail.dart';
import '../pages/meditation/space.dart';
import '../pages/meditation/ongoing.dart';
import '../pages/profile/info.dart';
import '../pages/profile/setting.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: 'home',
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: '/login',
      name: 'login',
      builder: (context, state) => const Login(),
    ),
    GoRoute(
      path: '/register',
      name: 'register',
      builder: (context, state) => const Register(),
    ),
    GoRoute(
      path: '/notification_center',
      name: 'notification_center',
      builder: (context, state) => const NotificationCenter(),
    ),
    GoRoute(
      path: '/course_list', // 需要重新生成
      name: 'course_list',
      builder: (context, state) => const CourseList(),
    ),
    GoRoute(
      path: '/course_detail',
      name: 'course_detail',
      builder: (context, state) => const CourseDetail(),
    ),
    GoRoute(
      path: '/meditation_space',
      name: 'meditation_space',
      builder: (context, state) => const MeditationSpace(),
    ),
    GoRoute(
      path: '/ongoing_meditation',
      name: 'ongoing_meditation',
      builder: (context, state) => const OngoingMeditation(),
    ),
    GoRoute(
      path: '/profile_info',
      name: 'profile_info',
      builder: (context, state) => const ProfileInfo(),
    ),
    GoRoute(
      path: '/profile_setting',
      name: 'profile_setting',
      builder: (context, state) => const SettingPage(),
    ),
  ],
  errorBuilder: (context, state) => const NotFoundPage(),
);
