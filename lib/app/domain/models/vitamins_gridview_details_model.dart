import 'package:fitness_prodigy/app/core/constants.dart';
import 'package:flutter/material.dart';

class VitaminsGridViewDetails {
  VitaminsGridViewDetails({
    required this.title,
    required this.iconImage,
    required this.gradientsColor,
    this.assetColor,
    required this.vitaminType,
    required this.iconTag,
  });

  final String title;
  final String iconImage;
  final List<Color> gradientsColor;
  final Color? assetColor;
  final String vitaminType;
  final String iconTag;
}

final List<VitaminsGridViewDetails> vitaminsGridViewDetails = [
  VitaminsGridViewDetails(
    title: 'Vitamin A',
    iconImage: 'assets/images_supplements/vitamin_a.jpg',
    gradientsColor: kHomeGradient,
    vitaminType: 'vitamin_a',
    iconTag: 'vitamin_a_icon',
  ),
  VitaminsGridViewDetails(
    title: 'Vitamin B',
    iconImage: 'assets/images_supplements/vitamin_b.jpg',
    gradientsColor: kHomeGradient,
    vitaminType: 'vitamin_b',
    iconTag: 'vitamin_b_icon',
  ),
  VitaminsGridViewDetails(
    title: 'Vitamin C',
    iconImage: 'assets/images_supplements/vitamin_c.jpg',
    gradientsColor: kHomeGradient,
    vitaminType: 'vitamin_c',
    iconTag: 'vitamin_c_icon',
  ),
  VitaminsGridViewDetails(
    title: 'Vitamin D',
    iconImage: 'assets/images_supplements/vitamin_d.jpg',
    gradientsColor: kHomeGradient,
    vitaminType: 'vitamin_d',
    iconTag: 'vitamin_d_icon',
  ),
  VitaminsGridViewDetails(
    title: 'Vitamin E',
    iconImage: 'assets/images_supplements/vitamin_e.jpg',
    gradientsColor: kHomeGradient,
    vitaminType: 'vitamin_e',
    iconTag: 'vitamin_e_icon',
  ),
  VitaminsGridViewDetails(
    title: 'Vitamin K',
    iconImage: 'assets/images_supplements/vitamin_k.jpg',
    gradientsColor: kHomeGradient,
    vitaminType: 'vitamin_k',
    iconTag: 'vitamin_k_icon',
  ),
  VitaminsGridViewDetails(
    title: 'Ashwagandha',
    iconImage: 'assets/images_supplements/ashwagandha.jpg',
    gradientsColor: kHomeGradient,
    vitaminType: 'ashwagandha',
    iconTag: 'ashwagandha_icon',
  ),
  VitaminsGridViewDetails(
    title: 'Calcium',
    iconImage: 'assets/images_supplements/calcium.jpg',
    gradientsColor: kHomeGradient,
    vitaminType: 'calcium',
    iconTag: 'calcium_icon',
  ),
  VitaminsGridViewDetails(
    title: 'D3K2',
    iconImage: 'assets/images_supplements/d3k2.jpg',
    gradientsColor: kHomeGradient,
    vitaminType: 'd3k2',
    iconTag: 'd3k2_icon',
  ),
  VitaminsGridViewDetails(
    title: 'Magnesium',
    iconImage: 'assets/images_supplements/magnesium.jpg',
    gradientsColor: kHomeGradient,
    vitaminType: 'magnesium',
    iconTag: 'magnesium_icon',
  ),
  VitaminsGridViewDetails(
    title: 'Omega 3',
    iconImage: 'assets/images_supplements/omega3.jpg',
    gradientsColor: kHomeGradient,
    vitaminType: 'omega3',
    iconTag: 'omega3_icon',
  ),
  VitaminsGridViewDetails(
    title: 'Potassium',
    iconImage: 'assets/images_supplements/potassium.jpg',
    gradientsColor: kHomeGradient,
    vitaminType: 'potassium',
    iconTag: 'potassium_icon',
  ),
  VitaminsGridViewDetails(
    title: 'Selenium',
    iconImage: 'assets/images_supplements/selenium.jpg',
    gradientsColor: kHomeGradient,
    vitaminType: 'selenium',
    iconTag: 'selenium_icon',
  ),
  VitaminsGridViewDetails(
    title: 'Zinc',
    iconImage: 'assets/images_supplements/zinc.jpg',
    gradientsColor: kHomeGradient,
    vitaminType: 'zinc',
    iconTag: 'zinc_icon',
  ),
];
