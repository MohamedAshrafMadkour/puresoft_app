import 'package:flutter/material.dart';
import 'package:puresoft_task/core/widget/custom_app_bar.dart';

class TermsView extends StatelessWidget {
  const TermsView({super.key});
  static const routeName = 'terms_view';
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: TermsViewBody()));
  }
}

class TermsViewBody extends StatelessWidget {
  const TermsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomAppBar(title: 'Terms and Conditions'),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Text(
                '''A Terms and Conditions agreement acts as a legal contract between you (the company) and the user. \nIt's where you \nmaintain your rights to exclude users from your app in the event that they abuse your website/app, set out the rules for \nusing your service and note other important details and disclaimers.\n\nHaving a Terms and Conditions agreement is completely optional. No laws require you to have one. Not even the super-strict and \nwide-reaching General Data Protection Regulation (GDPR).\n\nYour Terms and Conditions agreement will be uniquely yours. While some clauses are standard and commonly seen in pretty much every Terms and Conditions agreement, it's up to you to set the rules and guidelines that the user must agree to.\n\nTerms and Conditions agreements are also known as Terms of Service or Terms of Use agreements. These terms are interchangeable, practically speaking. \nMore rarely, it may be called something like an End User Services Agreement (EUSA).''',
                style: const TextStyle(
                  fontSize: 18,
                  height: 1.6,
                  fontFamily: 'Arial',
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
