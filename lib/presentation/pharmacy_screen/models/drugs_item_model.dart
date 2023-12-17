import '../../../core/app_export.dart';

/// This class is used in the [drugs_item_widget] screen.
class DrugsItemModel {
  DrugsItemModel({
    this.panadol,
    this.panadol1,
    this.quantiity,
    this.price,
    this.id,
  }) {
    panadol = panadol ?? ImageConstant.imgDrugThumbnail;
    panadol1 = panadol1 ?? "Panadol";
    quantiity = quantiity ?? "20pcs";
    price = price ?? "15.99";
    id = id ?? "";
  }

  String? panadol;

  String? panadol1;

  String? quantiity;

  String? price;

  String? id;
}
