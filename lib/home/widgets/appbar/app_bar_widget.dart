import 'package:DevQuiz/home/widgets/score_card/score_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:DevQuiz/core/app_text_styles.dart';
import 'package:DevQuiz/core/app_gradients.dart';

class AppBarWidget extends PreferredSize {
  AppBarWidget() : super(
    preferredSize: Size.fromHeight(250),
    child: Container(
      height: 250,
      child: Stack(
        children: [
          Container(
            height: 161,
            padding: const EdgeInsets.symmetric(horizontal: 24),
            width: double.maxFinite,
            decoration: BoxDecoration(gradient: AppGradients.linear),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text.rich(TextSpan(text: "Olá, ", style: AppTextStyles.title,
                children: [
                  TextSpan(text: "Bjarki", style: AppTextStyles.titleBold)
                ])),
              Container(
                width: 58,
                height: 58,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(image: NetworkImage(
                    "https://avatars.githubusercontent.com/u/32462349?s=400&u=0249e09d20c7f8d8c57a8e62f5a6390a987ca948&v=4"))
                ),)
            ],),
          ),
          Align(
            alignment: Alignment(0.0,1.0),
            child: ScoreCardWidget()),
        ],
      ),
    ),
  );

}