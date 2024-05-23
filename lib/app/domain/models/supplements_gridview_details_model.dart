import 'package:fitness_prodigy/app/core/constants.dart';
import 'package:flutter/material.dart';

class SupplementsGridViewDetails {
  SupplementsGridViewDetails({
    required this.title,
    required this.iconImage,
    required this.gradientsColor,
    this.assetColor,
    required this.supplementType,
    required this.iconTag,
  });

  final String title;
  final String iconImage;
  final List<Color> gradientsColor;
  final Color? assetColor;
  final String supplementType;
  final String iconTag;
}

final List<SupplementsGridViewDetails> supplementsGridViewDetails = [
  SupplementsGridViewDetails(
    title: 'Creatine Monohydrate',
    iconImage: 'assets/images_supplements/creatine.jpg',
    gradientsColor: kHomeGradient,
    supplementType: 'creatine',
    iconTag: 'creatine_icon',
  ),
  SupplementsGridViewDetails(
    title: 'Protein Powder',
    iconImage: 'assets/images_supplements/protein.jpg',
    gradientsColor: kHomeGradient,
    supplementType: 'protein',
    iconTag: 'protein_icon',
  ),
  SupplementsGridViewDetails(
    title: 'BCAA',
    iconImage: 'assets/images_supplements/bcaa.jpg',
    gradientsColor: kHomeGradient,
    supplementType: 'bcaa',
    iconTag: 'bcaa_icon',
  ),
  SupplementsGridViewDetails(
    title: 'AAKG',
    iconImage: 'assets/images_supplements/aakg.jpg',
    gradientsColor: kHomeGradient,
    assetColor: Colors.white,
    supplementType: 'aakg',
    iconTag: 'aakg_icon',
  ),
  SupplementsGridViewDetails(
    title: 'Citrulline',
    iconImage: 'assets/images_supplements/cytruline.jpg',
    gradientsColor: kHomeGradient,
    assetColor: Colors.white,
    supplementType: 'citrulline',
    iconTag: 'citrulline_icon',
  ),
  SupplementsGridViewDetails(
    title: 'Beta-Alanine',
    iconImage: 'assets/images_supplements/beta.jpg',
    gradientsColor: kHomeGradient,
    assetColor: Colors.white,
    supplementType: 'beta_alanine',
    iconTag: 'beta_alanine_icon',
  ),
  SupplementsGridViewDetails(
    title: 'Glutamine',
    iconImage: 'assets/images_supplements/glutamine.png',
    gradientsColor: kHomeGradient,
    assetColor: Colors.white,
    supplementType: 'glutamine',
    iconTag: 'glutamine_icon',
  ),
  SupplementsGridViewDetails(
    title: 'Collagen',
    iconImage: 'assets/images_supplements/collagen.jpg',
    gradientsColor: kHomeGradient,
    assetColor: Colors.white,
    supplementType: 'collagen',
    iconTag: 'collagen_icon',
  ),
];
