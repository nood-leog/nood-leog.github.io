import 'package:flutter/material.dart';
import 'package:nooddev/theme/gruvbox_theme.dart';

// Placeholder page for the Blog
class BlogPage extends StatelessWidget 
{
  const BlogPage({super.key});

  @override
  Widget build(BuildContext context) 
  {
    return Center
    (
      child: Padding
      (
        padding: const EdgeInsets.all(40.0),
        child: Column
        (
          mainAxisAlignment: MainAxisAlignment.center,
          children: 
          [
            const Icon
            (
              Icons.construction_rounded,
              size: 60,
              color: GruvboxDark.yellow,
            ),
            const SizedBox(height: 20),
            Text
            (
              'Blog Coming Soon!',
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
             const SizedBox(height: 10),
             Text
            (
              'Stay tuned for articles and thoughts on development and tech.',
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: GruvboxDark.fg3),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}