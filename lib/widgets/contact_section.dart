import 'package:flutter/material.dart';
import 'package:nooddev/widgets/section_title.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nooddev/theme/gruvbox_theme.dart';

class ContactSection extends StatelessWidget 
{
  const ContactSection({super.key});

  Future<void> _launchURL(String urlString) async 
  {
    final Uri url = Uri.parse(urlString);
     if (!await launchUrl(url, mode: LaunchMode.externalApplication)) 
    {
      print('Could not launch $urlString');
    }
  }

  Future<void> _launchEmail(String email) async 
  {
     final Uri emailLaunchUri = Uri
     (
       scheme: 'mailto',
       path: email,
       query: 'subject=Contact%20from%20Portfolio%20Website',
     );
     if (!await launchUrl(emailLaunchUri)) 
     {
       print('Could not launch email to $email');
     }
   }

  @override
  Widget build(BuildContext context) 
  {
    const String email = 'alex@alexboyce.dev';
    const String githubUrl = 'https://github.com/nood-leog';
    const String linkedinUrl = 'https://linkedin.com/in/nood-leog';
    // const String websiteUrl = 'https://alexboyce.dev';

    return Column
    (
      crossAxisAlignment: CrossAxisAlignment.start,
      children: 
      [
        const SectionTitle('Get In Touch'),
        Text(
          "I'm always open to discussing new projects, creative ideas, or opportunities to be part of your visions. Feel free to shoot me a message!", 
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const SizedBox(height: 20),
        Wrap
        (
          spacing: 15.0,
          runSpacing: 10.0,
          children: <Widget>
          [
            _buildContactButton
            (
              context,
              icon: FontAwesomeIcons.envelope,
              label: 'Email',
              tooltip: email,
              onPressed: () => _launchEmail(email),
            ),

            _buildContactButton
            (
              context,
              icon: FontAwesomeIcons.github,
              label: 'GitHub',
              tooltip: 'View GitHub Profile',
              onPressed: () => _launchURL(githubUrl),
            ),
            _buildContactButton
            (
              context,
              icon: FontAwesomeIcons.linkedin,
              label: 'LinkedIn',
              tooltip: 'View LinkedIn Profile',
              onPressed: () => _launchURL(linkedinUrl),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildContactButton(BuildContext context, 
  {
    required FaIconData icon,
    required String label,
    required String tooltip,
    required VoidCallback onPressed,
  }) 
  {
    return Tooltip
    (
      message: tooltip,
      child: TextButton.icon
      (
        icon: FaIcon(icon, size: 20, color: GruvboxDark.aqua),
        label: Text(label),
        style: TextButton.styleFrom
        (
          foregroundColor: GruvboxDark.fg2,
           padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
           textStyle: Theme.of(context).textTheme.bodyMedium
        ),
        onPressed: onPressed,
      ),
    );
  }
}