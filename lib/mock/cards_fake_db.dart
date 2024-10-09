import 'package:flutter/material.dart';
import 'package:projeto_flutter/constants/images_assets.dart';
import 'package:projeto_flutter/models/card_pet.dart';

List<CardModel> appProducts = [
  CardModel(imagem: AppImages.dog, raca: "Golden", sexo: "macho"),
  CardModel(
    imagem: AppImages.gato,
    raca: "Siames",
    sexo: "Femea",
  ),
  CardModel(imagem: AppImages.gato2, raca: "Maine Coon", sexo: "Macho"),
  CardModel(imagem: AppImages.filhotes, raca: "Shitzu", sexo: "Machos"),
  CardModel(imagem: AppImages.york, raca: "Yorkshire", sexo: "Femea"),
  CardModel(imagem: AppImages.husky, raca: "Husky", sexo: "macho")
];
