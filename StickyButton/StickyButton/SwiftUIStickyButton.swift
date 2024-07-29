//
//  SwiftUIStickyButton.swift
//  StickyButton
//
//  Created by 흰 on 7/17/24.
//

import SwiftUI

struct SwiftUIStickyButton: View {
  enum FocusField: Hashable {
    case countryCode
    case mobileNumber
  }
  
  @State var countryCode: String = ""
  @State var mobileNumber: String = ""
  @FocusState var focuseOnTextfield: FocusField?
  @FocusState var simpleFocus: Bool
  
    var body: some View {
      ZStack {
        backgroundView
        inputView
        
        VStack {
          Spacer()
          Button("Send Code") {
            // Add button action
          }.padding(.vertical, 16)
            .padding(.horizontal, 90)
          .background(.pink)
          .foregroundColor(.white)
            .cornerRadius(25)
        }
      }.padding(.all)
      .onTapGesture {
        print("Tapped background")
        simpleFocus = false
      }
    }
  
  var backgroundView: some View {
    Color.white
      .edgesIgnoringSafeArea(.all)
  }
  
  
  var inputView: some View {
    VStack(alignment: .leading, spacing: 30) {
      VStack(alignment: .leading, spacing: 14, content: {
        Image(systemName: "arrow.turn.up.forward.iphone")
          .resizable()
          .aspectRatio(contentMode: .fit)
          .frame(width: 40)
        Text("We will send you 6 digit verification code")
      })
      HStack {
        CustomTextFieldView(label: "country code", text: $countryCode, focusState: $simpleFocus)
          .frame(width: 100)
        CustomTextFieldView(label: "mobile number", text: $mobileNumber, focusState: $simpleFocus)
      }
      Spacer()
    }.padding(.top, 40)
  }
}

struct CustomTextFieldView: View {
  let label: String
  @Binding var text: String
  @FocusState.Binding var focusState: Bool
  
  var body: some View {
    VStack(alignment: .leading) {
      Text(label.capitalized)
        .font(.system(size: 13))
        .padding(.leading, 4)
      
      TextField("", text: $text)
        .focused($focusState)
        .padding(.all)
        .overlay {
          RoundedRectangle(cornerRadius: 16)
            .stroke(Color.gray, lineWidth: 2)
      }
    }
  }
}

#Preview {
    SwiftUIStickyButton()
}
