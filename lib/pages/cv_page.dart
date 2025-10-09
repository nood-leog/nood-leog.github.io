import 'package:flutter/material.dart';
import 'package:nooddev/widgets/about_section.dart';
import 'package:nooddev/widgets/contact_section.dart';
import 'package:nooddev/widgets/experience_section.dart';
import 'package:nooddev/widgets/footer_section.dart';
import 'package:nooddev/widgets/hero_section.dart';
import 'package:nooddev/widgets/skills_section.dart';
import 'package:nooddev/widgets/education_section.dart'; // <-- IMPORT

class CvPage extends StatelessWidget 
{
  const CvPage({super.key});

  @override
  Widget build(BuildContext context) 
  {
    return Center
    (
      child: ConstrainedBox
      (
        constraints: const BoxConstraints(maxWidth: 900),
        child: const SingleChildScrollView
        (
          padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 30.0),
          child: Column
          (
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>
            [
              HeroSection(),
              SizedBox(height: 40),
              AboutSection(),
              SizedBox(height: 40),
              EducationSection(), // <-- ADD EDUCATION SECTION HERE
              SizedBox(height: 40),
              ExperienceSection(),
              SizedBox(height: 40),
              SkillsSection(),
              SizedBox(height: 40),
              ContactSection(),
              SizedBox(height: 50),
              FooterSection(),
            ],
          ),
        ),
      ),
    );
  }
}