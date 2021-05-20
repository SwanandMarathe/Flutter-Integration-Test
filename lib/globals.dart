import 'package:flutter_application_integration_test/place_type_model.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Globals {
  ///
  static List<PlaceTypes> typesList = gettypesList(types, index, iconImages);
}

var types = [
  'atm',
  'bakery',
  'bank',
  'book_store',
  'bowling_alley',
  'bus_station',
  'cafe',
  'church',
  'clothing_store',
  'convenience_store',
  'courthouse',
  'dentist',
  'doctor',
  'electronics_store',
  'embassy',
  'establishment',
  'fire_station',
  'florist',
  'food',
  'furniture_store',
  'gas_station',
  'grocery_or_supermarket',
  'gym',
  'hair_care',
  'hardware_store',
  'hindu_temple',
  'hospital',
  'insurance_agency',
  'laundry',
  'lawyer',
  'library',
  'liquor_store',
  'local_government_office',
  'lodging',
  'movie_theater',
  'museum',
  'night_club',
  'painter',
  'park',
  'parking',
  'pet_store',
  'pharmacy',
  'place_of_worship',
  'plumber',
  'police',
  'post_office',
  'real_estate_agency',
  'restaurant',
  'school',
  'shopping_mall',
  'stadium',
  'store',
  'grocery_or_supermarket',
  'taxi_stand',
  'train_station',
  'university',
  'veterinary_care',
  'zoo'
];
var index = [
  'ATM',
  'Bakery',
  'Bank',
  'Book Store',
  'Bowling Alley',
  'Bus Station',
  'Cafe',
  'Church',
  'Clothing Store',
  'Convenience Store',
  'Courthouse',
  'Dentist',
  'Doctor',
  'Electronics Store',
  'Embassy',
  'Establishment',
  'Fire Station',
  'Florist',
  'Food',
  'Furniture Store',
  'Gas Station',
  'Grocery Store',
  'Gym',
  'Hair Care',
  'Hardware Store',
  'Hindu Temple',
  'Hospital',
  'Insurance Agency',
  'Laundry',
  'Lawyer',
  'Library',
  'Liquor Store',
  'Government Office',
  'Lodging',
  'Movie Theater',
  'Museum',
  'Night Club',
  'Painter',
  'Park',
  'Parking',
  'Pet Store',
  'Pharmacy',
  'Place of worship',
  'Plumber',
  'Police',
  'Post-office',
  'Real Estate Agency',
  'Restaurant',
  'School',
  'Shopping Mall',
  'Stadium',
  'Store',
  'Supermarket',
  'Taxi Stand',
  'Train Station',
  'University',
  'Veterinary Care',
  'Zoo'
];
var iconImages = [
  'atm.png',
  'bakery.png',
  'bank.png',
  'book.png',
  'bowling_alley.png',
  'bus.png',
  'cafe.png',
  'church.png',
  'clothes.png',
  'convinience_store.png',
  'court.png',
  'dentist.png',
  'doctor.png',
  'electronics.png',
  'embassy.png',
  'establishment.png',
  'fire.png',
  'flower.png',
  'food.png',
  'sofa.png',
  'gas.png',
  'grocery.png',
  'gym.png',
  'haircare.png',
  'hardware.png',
  'temple.png',
  'hospital.png',
  'insurance.png',
  'laundry.png',
  'lawer.png',
  'library.png',
  'liquor.png',
  'LocalGovt.png',
  'lodging.png',
  'movie.png',
  'museum.png',
  'club.png',
  'painter.png',
  'tree.png',
  'parking.png',
  'pet.png',
  'pharmacy.png',
  'placeofworship.png',
  'plumber.png',
  'police.png',
  'postOffice.png',
  'real_state.png',
  'restaurant.png',
  'school.png',
  'shoppingMall.png',
  'stadium.png',
  'store.png',
  'supermarket.png',
  'taxi.png',
  'train.png',
  'university.png',
  'veterinary.png',
  'zoo.png'
];

var iconFonts = [
  FaIcon(FontAwesomeIcons.piggyBank),
  FaIcon(FontAwesomeIcons.birthdayCake),
  FaIcon(FontAwesomeIcons.cashRegister),
  FaIcon(FontAwesomeIcons.book),
  FaIcon(FontAwesomeIcons.bowlingBall),
  FaIcon(FontAwesomeIcons.bus),
  FaIcon(FontAwesomeIcons.coffee),
  FaIcon(FontAwesomeIcons.church),
  FaIcon(FontAwesomeIcons.android),
  FaIcon(FontAwesomeIcons.store),
  FaIcon(FontAwesomeIcons.houseDamage),
  FaIcon(FontAwesomeIcons.teeth),
  FaIcon(FontAwesomeIcons.clinicMedical),
  FaIcon(FontAwesomeIcons.mobile),
  FaIcon(FontAwesomeIcons.storeAlt),
  FaIcon(FontAwesomeIcons.building),
  FaIcon(FontAwesomeIcons.fireExtinguisher),
  FaIcon(FontAwesomeIcons.tree),
  FaIcon(FontAwesomeIcons.pizzaSlice),
  FaIcon(FontAwesomeIcons.bed),
  FaIcon(FontAwesomeIcons.gasPump),
  FaIcon(FontAwesomeIcons.shoppingBag),
  FaIcon(FontAwesomeIcons.android),
  FaIcon(FontAwesomeIcons.android),
  FaIcon(FontAwesomeIcons.store),
  FaIcon(FontAwesomeIcons.placeOfWorship),
  FaIcon(FontAwesomeIcons.hospital),
  FaIcon(FontAwesomeIcons.android),
  FaIcon(FontAwesomeIcons.piggyBank),
  FaIcon(FontAwesomeIcons.piggyBank),
  FaIcon(FontAwesomeIcons.piggyBank),
  FaIcon(FontAwesomeIcons.piggyBank),
  FaIcon(FontAwesomeIcons.piggyBank),
  FaIcon(FontAwesomeIcons.piggyBank),
  FaIcon(FontAwesomeIcons.piggyBank),
  FaIcon(FontAwesomeIcons.piggyBank),
  FaIcon(FontAwesomeIcons.piggyBank),
  FaIcon(FontAwesomeIcons.piggyBank),
  FaIcon(FontAwesomeIcons.piggyBank),
  FaIcon(FontAwesomeIcons.piggyBank),
  FaIcon(FontAwesomeIcons.piggyBank),
  FaIcon(FontAwesomeIcons.piggyBank),
  FaIcon(FontAwesomeIcons.piggyBank),
  FaIcon(FontAwesomeIcons.piggyBank),
  FaIcon(FontAwesomeIcons.piggyBank),
  FaIcon(FontAwesomeIcons.piggyBank),
  FaIcon(FontAwesomeIcons.piggyBank),
  FaIcon(FontAwesomeIcons.piggyBank),
  FaIcon(FontAwesomeIcons.piggyBank),
  FaIcon(FontAwesomeIcons.piggyBank),
  FaIcon(FontAwesomeIcons.piggyBank),
  FaIcon(FontAwesomeIcons.piggyBank),
  FaIcon(FontAwesomeIcons.piggyBank),
  FaIcon(FontAwesomeIcons.piggyBank),
  FaIcon(FontAwesomeIcons.piggyBank),
  FaIcon(FontAwesomeIcons.piggyBank),
  FaIcon(FontAwesomeIcons.cat),
  FaIcon(FontAwesomeIcons.dog),
];

List<PlaceTypes> gettypesList(List types, List index, List iconImages) {
  var _typeList = <PlaceTypes>[];
  for (var i = 0; i < types.length; i++) {
    var local = PlaceTypes(
      title: index[i],
      id: types[i],
      icon: iconFonts[i],
    );
    _typeList.add(local);
  }
  return _typeList;
}

///
enum MenuChoice {
  ///
  listView,

  ///
  gridView,
}