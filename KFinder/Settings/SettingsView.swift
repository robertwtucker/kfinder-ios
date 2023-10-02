//
// SPDX-FileCopyrightText: 2016-2023 Robert Tucker
// SPDX-License-Identifier: Apache-2.0
//

import SwiftUI

struct SettingsView: View {
  @State private var showingFDCInfo = false
  
  var body: some View {
    NavigationStack {
      Form {
        kTargetSection
        aboutSection
      }
      .navigationTitle("settings.title")
      .sheet(isPresented: $showingFDCInfo, content: {
        let info: LocalizedStringKey = "settings.fdc.info"
        let footnote: LocalizedStringKey = "settings.fdc.footnote"
        
        InfoPageView(info: info, footnote: footnote)
          .presentationDetents([.fraction(0.40)])
          .padding(EdgeInsets(top: 32, leading: 16, bottom: 8, trailing: 16))
      })
    }
  }
  
  private var kTargetSection: some View {
    Section {
      NavigationLink {
        VitaminKTargetDetailView()
      } label: {
        VitaminKTargetView()
      }
    }
  }
  
  private var aboutSection: some View {
    Section("settings.about") {
      Button(action: {
        showingFDCInfo.toggle()
      }, label: {
        Label("settings.about.fdc", systemImage: "square.3.layers.3d.top.filled")
      })
      HStack {
        Label("settings.about.kfinder", systemImage: "number.square")
        Spacer()
        Text("v\(UIApplication.version)")
      }
    }
  }
}

struct SettingsView_Previews: PreviewProvider {
  static var previews: some View {
    SettingsView()
  }
}
