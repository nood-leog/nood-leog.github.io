import 'package:flutter/material.dart';
import 'package:nooddev/pages/blog_page.dart';
import 'package:nooddev/pages/cv_page.dart';
import 'package:nooddev/pages/projects_page.dart';
import 'package:nooddev/pages/cat_page.dart';
import 'package:nooddev/theme/gruvbox_theme.dart'; // For theme colors

class MainLayout extends StatefulWidget 
{
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> 
{
  int _selectedIndex = 0;

  static const List<Widget> _pages = <Widget>[
    CvPage(),
    ProjectsPage(),
    BlogPage(),
    CatPage(),
  ];

  static const List<String> _pageTitles = <String>
  [
    'CV',
    'Projects',
    'Blog',
    'Cats',
  ];

  void _onItemTapped(int index) 
  {
    setState(() 
    {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) 
  {
    final textTheme = Theme.of(context).textTheme;
    final bool isWideScreen = MediaQuery.of(context).size.width > 600;

    // --- icon path ---
    const String appBarIconPath = 'assets/images/gilbertdrawing.png'; 

    return Scaffold
    (
      appBar: AppBar
      (
        // --- TITLE SECTION ---
        title: Row
        (
          mainAxisSize: MainAxisSize.min, // Prevent Row from expanding unnecessarily
          crossAxisAlignment: CrossAxisAlignment.center, // Vertically align text and icon
          children: 
          [
            //site name text
            Text
            (
              'alexboyce.dev',
              style: textTheme.titleLarge?.copyWith(color: GruvboxDark.brightAqua),
            ),
            // Spacing between text and icon
            const SizedBox(width: 8),
            // icon image
            Image.asset
            (
              appBarIconPath,
              height: 28, // Adjust height as needed for AppBar size
              // Optional: Add error builder in case the image fails to load
              errorBuilder: (context, error, stackTrace) 
              {
                // Display a placeholder icon on error
                return const Icon
                (
                  Icons.image_not_supported_outlined, // Or another fallback icon
                  color: GruvboxDark.fg4,
                  size: 28, // Match the height
                );
              },
            ),
          ],
        ),
        // --- END OF TITLE SECTION ---

        actions: List.generate(_pageTitles.length, (index) 
        {
          final bool isSelected = _selectedIndex == index;
          return Padding
          (
            padding: EdgeInsets.symmetric(horizontal: isWideScreen ? 12.0 : 4.0),
            child: TextButton
            (
              onPressed: () => _onItemTapped(index),
              style: TextButton.styleFrom
              (
                foregroundColor: isSelected ? GruvboxDark.brightOrange : GruvboxDark.fg2,
                textStyle: textTheme.labelLarge?.copyWith
                (
                  fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                   fontSize: isWideScreen ? 16 : 14,
                ),
                padding: EdgeInsets.symmetric(horizontal: isWideScreen ? 16 : 8, vertical: 10),
                 shape: RoundedRectangleBorder
                 (
                   borderRadius: BorderRadius.circular(4),
                 ),
              ),
              child: Text(_pageTitles[index]),
            ),
          );
        }),
      ),
      body: IndexedStack
      (
         index: _selectedIndex,
         children: _pages,
       ),
    );
  }
}