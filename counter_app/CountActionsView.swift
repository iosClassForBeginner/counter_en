//
//  CountActionsView.swift
//  counter_app
//
//  Created by Wataru Maeda on 2022/10/30.
//

import SwiftUI

struct CountActionsView: View {
  @Binding var count: Int
  
  var body: some View {
    HStack {
      Button {
        count -= 1
      } label: {
        Text("-")
          .font(.largeTitle)
          .fontWeight(.heavy)
          .padding(.horizontal, 24)
          .padding(.vertical, 8)
      }
      
      Button {
        count += 1
      } label: {
        Text("+")
          .font(.largeTitle)
          .fontWeight(.heavy)
          .padding(.horizontal, 24)
          .padding(.vertical, 8)
      }
    }
  }
}

struct CountActionsView_Previews: PreviewProvider {
  @State static var count = 1
  static var previews: some View {
    CountActionsView(count: $count)
  }
}
