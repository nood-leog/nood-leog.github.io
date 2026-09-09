import 'package:flutter/material.dart';
import 'package:nooddev/widgets/section_title.dart';
import 'package:nooddev/theme/gruvbox_theme.dart';

class ExperienceSection extends StatelessWidget 
{
  const ExperienceSection({super.key});

  @override
  Widget build(BuildContext context) 
  {
    return Column
    (
      crossAxisAlignment: CrossAxisAlignment.start,
      children: 
      [
        const SectionTitle('Relevant Experience'),

        _buildExperienceItem
        (
          context,
          role: 'SOC/NOC Analyst',
          company: 'Third Wave Innovations',
          location: 'Ellensburg, WA',
          period: 'Sept 2023 – Present',
          description: 
          [
            'Gained hands-on experience managing concurrent network operations (NOC) and security operations (SOC) tasks in a fast-paced environment supporting enterprise-level infrastructure.',
            'Provided primary network operations support for an enterprise retail client, ensuring the stability and performance of vital corporate systems spanning 400+ locations utilizing both Cisco and Juniper hardware.',
            'Analyzed and triaged security events and alerts from SIEM (SumoLogic), EDR (CrowdStrike), and proprietary C4 Elastic platforms for a large conglomerate enterprise client, identifying potential threats and policy violations.',
            'Effectively managed time between being a full-time employee and student.',
          ],
        ),

        _buildExperienceItem
        (
          context,
          role: 'Cyber Security Intern',
          company: 'Third Wave Innovations',
          location: 'Spokane, WA', // Added location
          period: 'Summer 2022, 2023',
          description: 
          [
            'Developed proficiency in analyzing security alerts and operational events within an MSSP/SOC context, supporting multiple clients and a large volume of endpoints.',
            'Assessed security documentation, including policies and standard operating procedures (SOPs), against the requirements outlined in the NIST 800-171 cybersecurity framework.',
            'Created and updated internal documentation, including knowledge base articles and procedural checklists, to streamline workflows and support knowledge transfer within the SOC/MSSP team.',
          ],
        ),
      ],
    );
  }

  Widget _buildExperienceItem(BuildContext context, 
  {
    required String role,
    required String company,
    required String location, // Added location parameter
    required String period,
    required List<String> description,
  }) 
  {
    return Card
    (
      color: GruvboxDark.bg0_h,
      margin: const EdgeInsets.only(bottom: 20.0),
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
              role,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(color: GruvboxDark.brightAqua),
            ),
            const SizedBox(height: 4),
            Text
            (
              '$company • $location • $period', // Include location
              style: Theme.of(context).textTheme.titleMedium?.copyWith(color: GruvboxDark.fg3),
            ),
            const SizedBox(height: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: description.map((item) => Padding
              (
                padding: const EdgeInsets.only(bottom: 6.0), // Slightly more space between bullets
                child: Row
                (
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: 
                   [
                     const Text('•  ', style: TextStyle(color: GruvboxDark.yellow, fontSize: 16, height: 1.2)), // Bullet point
                     Expanded(child: Text(item, style: Theme.of(context).textTheme.bodyMedium?.copyWith(height: 1.4))), 
                   ],
                 ),
              )).toList(),
            ),
          ],
        ),
      ),
    );
  }
}