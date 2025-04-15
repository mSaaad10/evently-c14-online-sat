import 'package:evently_c14_online_sat/core/resources/assets_manager.dart';
import 'package:evently_c14_online_sat/data/DM/category_DM.dart';

class ConstantManager {
  static List<CategoryDM> categories = const [
    CategoryDM(
        id: "0",
        categoryName: "All",
        imagePath: ImageAssets.sports,
        iconPath: SvgAssets.sportsIcon),
    CategoryDM(
        id: "1",
        categoryName: "Sports",
        imagePath: ImageAssets.sports,
        iconPath: SvgAssets.sportsIcon),
    CategoryDM(
        id: "2",
        categoryName: "Birthday",
        imagePath: ImageAssets.birthday,
        iconPath: SvgAssets.sportsIcon),
    CategoryDM(
        id: "3",
        categoryName: "Meeting",
        imagePath: ImageAssets.meeting,
        iconPath: SvgAssets.sportsIcon),
    CategoryDM(
        id: "4",
        categoryName: "Gaming",
        imagePath: ImageAssets.gaming,
        iconPath: SvgAssets.sportsIcon),
    CategoryDM(
        id: "5",
        categoryName: "Eating",
        imagePath: ImageAssets.eating,
        iconPath: SvgAssets.sportsIcon),
    CategoryDM(
        id: "6",
        categoryName: "Holiday",
        imagePath: ImageAssets.holiday,
        iconPath: SvgAssets.sportsIcon),
    CategoryDM(
        id: "7",
        categoryName: "Exhibition",
        imagePath: ImageAssets.exhibition,
        iconPath: SvgAssets.sportsIcon),
    CategoryDM(
        id: "8",
        categoryName: "Workshop",
        imagePath: ImageAssets.workshop,
        iconPath: SvgAssets.sportsIcon),
    CategoryDM(
        id: "9",
        categoryName: "BookClub",
        imagePath: ImageAssets.bookClub,
        iconPath: SvgAssets.sportsIcon),
  ];
}
