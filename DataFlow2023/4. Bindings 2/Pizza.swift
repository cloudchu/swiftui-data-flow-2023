//
//  Pizza.swift
//  DataFlow2023
//
//  Created by Sarah Reichelt in June 2023.
//

import Foundation

// Pizza model based on enums for each property
// All CaseIterable so they can be looped through to create the UI

struct Pizza {
  var name: PizzaName = .margherita
  var size: PizzaSize = .medium
  var crust: PizzaCrust = .standard

  var pizzaSelection: String {
    return "You have selected a \(size.rawValue) \(name.rawValue.capitalized) pizza with a \(crust.rawValue) crust."
  }
}

enum PizzaName: String, CaseIterable {
  case margherita, hawaiian, pepperoni, vegetarian, seafood, mushroom
}

enum PizzaSize: String, CaseIterable {
  case small, medium, large
}

enum PizzaCrust: String, CaseIterable {
  case thin, standard, deeppan = "deep pan"
}
