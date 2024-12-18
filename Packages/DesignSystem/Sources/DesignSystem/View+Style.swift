//
// SPDX-FileCopyrightText: (c) 2024 Robert Tucker
// SPDX-License-Identifier: MIT
//

import SwiftUI

public enum CustomViewStyle {
  case tabHeader
  case sectionHeader
}

extension View {
  @ViewBuilder public func style(_ style: CustomViewStyle) -> some View {
    switch style {
    case .tabHeader:
      self.font(.largeTitle).bold()
    case .sectionHeader:
      self.font(.title3).bold()
    }
  }
}
