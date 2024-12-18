//
// SPDX-FileCopyrightText: (c) 2024 Robert Tucker
// SPDX-License-Identifier: MIT
//

import Foundation
import Models
import Services

@Observable class FoodSearchHelper {
  private let service = FoodDataCentralService(
    apiKey: Secrets.FoodDataCentral.apiKey ?? "")

  var query = ""
  var foods: [FoodItem] = []

  func search() async {
    guard let result = await service.searchFoods(for: query),
      let searchFoods = result.foods
    else {
      self.foods = []
      return
    }
    self.foods = searchFoods.map { FoodItem(from: $0) }
    return
  }
}
