import 'package:flutter/material.dart';
import 'package:nooddev/widgets/section_title.dart';
import 'package:nooddev/theme/gruvbox_theme.dart';

class EducationSection extends StatelessWidget 
{
  const EducationSection({super.key});

  @override
  Widget build(BuildContext context) 
  {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionTitle('Education'),
        Card
        (
          color: GruvboxDark.bg0_h,
          margin: const EdgeInsets.only(bottom: 16.0), // Add margin if needed
          child: Padding
          (
            padding: const EdgeInsets.all(16.0),
            child: Column
            (
              crossAxisAlignment: CrossAxisAlignment.start,
              children: 
              [
                Text
                (
                  'Central Washington University',
                  style: textTheme.titleLarge?.copyWith(color: GruvboxDark.brightPurple),
                ),
                const SizedBox(height: 4),
                Text
                (
                  'Ellensburg, WA • Graduation: Dec 2025',
                  style: textTheme.titleMedium?.copyWith(color: GruvboxDark.fg3),
                ),
                const SizedBox(height: 12),
                Text
                (
                  'Bachelor of Science in Computer Science',
                  style: textTheme.bodyLarge?.copyWith(fontStyle: FontStyle.italic),
                ),

                Text
                (
                  'Bachelor of Science in Psychology',
                  style: textTheme.bodyLarge?.copyWith(fontStyle: FontStyle.italic),
                ),

                const SizedBox(height: 16),
                _buildCourseworkList(context, 'Relevant CS Coursework:', 
                [
                  'Computer Architecture', 'Software Engineering', 'VR development',
                  'Database design', 'Computer Networking', 'Data structures',
                  'UX/UI Design and Development'
                ]),

                const SizedBox(height: 12),
                 _buildCourseworkList(context, 'Relevant Psych Coursework:', 
                 [
                   'Organizational Psychology', 'Cognitive Psychology', 'Human Factors',
                   'Human Computer Interaction'
                 ]),
              ],
            ),
          ),
        )
      ],
    );
  }

  // Helper widget for coursework lists
  Widget _buildCourseworkList(BuildContext context, String title, List<String> courses) 
  {
    return Column
    (
      crossAxisAlignment: CrossAxisAlignment.start,
      children: 
      [
         Text
         (
           title,
           style: Theme.of(context).textTheme.titleSmall?.copyWith
           (
             fontWeight: FontWeight.bold,
             color: GruvboxDark.fg2,
           ),
         ),
         const SizedBox(height: 4),
         Text
         (
           courses.join(' • '), // Join with bullets or commas
           style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: GruvboxDark.fg3),
         ),
      ],
    );
  }
}