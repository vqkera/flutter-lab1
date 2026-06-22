import 'package:flutter/material.dart';

import 'models/site_item.dart';
import 'models/sms_provider.dart';
import 'widgets/provider_card.dart';
import 'widgets/site_tile.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Green SMS',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: Colors.green,
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const List<SiteItem> sites = [
    SiteItem(
      name: 'OK Знайомства',
      icon: Icons.favorite,
      color: Colors.pink,
    ),
    SiteItem(
      name: 'Золоте Яблуко',
      icon: Icons.shopping_bag,
      color: Colors.deepPurple,
    ),
    SiteItem(
      name: 'SunLight',
      icon: Icons.light_mode,
      color: Colors.orange,
    ),
    SiteItem(
      name: 'ДругВокруг',
      icon: Icons.people,
      color: Colors.blue,
    ),
    SiteItem(
      name: 'Galaxy',
      icon: Icons.public,
      color: Colors.green,
    ),
  ];

  static const List<SmsProvider> providers = [
    SmsProvider(
      name: 'Rcoart',
      price: '3 USDT',
      selected: true,
      favorite: true,
    ),
    SmsProvider(
      name: 'Yashar',
      price: '2.5 USDT',
    ),
    SmsProvider(
      name: 'SMS Hub',
      price: '2.2 USDT',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),
      appBar: AppBar(
        title: const Text('Green SMS'),
        centerTitle: false,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(color: Colors.black12),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Панель керування SMS',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text('Регіон: 806'),
                    SizedBox(height: 4),
                    Text('Ручний вибір постачальника увімкнено'),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              const Text(
                'Сайти',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 12),
              Column(
                children: sites.map((site) {
                  return SiteTile(site: site);
                }).toList(),
              ),
              const SizedBox(height: 24),
              const Text(
                'Постачальники',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 12),
              Column(
                children: providers.map((provider) {
                  return ProviderCard(provider: provider);
                }).toList(),
              ),
              const SizedBox(height: 24),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.green.shade50,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: const Text(
                  'Додаток створено для демонстрації роботи з Flutter, деревом віджетів, моделями даних та StatelessWidget.',
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}