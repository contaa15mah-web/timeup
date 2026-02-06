import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_outlined),
            onPressed: () {
              // TODO: Implementar notificações
            },
          ),
          IconButton(
            icon: const Icon(Icons.settings_outlined),
            onPressed: () {
              // TODO: Implementar configurações
            },
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Bem-vindo!',
                style: Theme.of(context).textTheme.displaySmall,
              ),
              SizedBox(height: 8.h),
              Text(
                'Seu app Flutter está pronto para desenvolvimento.',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Colors.grey[600],
                    ),
              ),
              SizedBox(height: 32.h),
              _buildFeatureCard(
                context,
                icon: Icons.rocket_launch,
                title: 'Começar',
                description: 'Explore os recursos disponíveis',
                onTap: () {},
              ),
              SizedBox(height: 16.h),
              _buildFeatureCard(
                context,
                icon: Icons.code,
                title: 'Desenvolver',
                description: 'Adicione novas funcionalidades',
                onTap: () {},
              ),
              SizedBox(height: 16.h),
              _buildFeatureCard(
                context,
                icon: Icons.build,
                title: 'Configurar',
                description: 'Personalize seu aplicativo',
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // TODO: Implementar ação principal
        },
        icon: const Icon(Icons.add),
        label: const Text('Novo'),
      ),
    );
  }

  Widget _buildFeatureCard(
    BuildContext context, {
    required IconData icon,
    required String title,
    required String description,
    required VoidCallback onTap,
  }) {
    return Card(
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(16.r),
        child: Padding(
          padding: EdgeInsets.all(20.w),
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.all(12.w),
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Icon(
                  icon,
                  color: Theme.of(context).primaryColor,
                  size: 28,
                ),
              ),
              SizedBox(width: 16.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      description,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: Colors.grey[600],
                          ),
                    ),
                  ],
                ),
              ),
              Icon(
                Icons.arrow_forward_ios,
                size: 16,
                color: Colors.grey[400],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
