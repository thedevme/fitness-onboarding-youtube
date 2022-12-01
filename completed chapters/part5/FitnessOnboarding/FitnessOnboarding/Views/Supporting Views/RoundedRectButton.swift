//
//  RoundedRectButton.swift
//  FitnessOnboarding
//
//  Created by Craig Clayton on 10/21/22.
//

import SwiftUI

struct RoundedRectButton: View {
    let title: String
    let icon: String
    let type: Int
    let index: Int
    let action: () -> Void
    
    var body: some View {
        Button(action: { action() }) {
            VStack {
                HStack {
                    Spacer()
                    if type == index {
                        Image("checkmark-wht")
                            .resizable()
                            .frame(width: 18, height: 18)
                    } else {
                        Circle().fill(Color.black.opacity(0.30))
                            .frame(width: 18)
                    }
                }
                .padding(.trailing, 10)
                .offset(y: -5)
                
                VStack {
                    Image(icon)
                        .renderingMode(.template)
                    Text(title)
                        .frame(maxWidth: .infinity, alignment: .center)
                        .font(.custom(.medium, size: 14))
                }
            }
        }
        .padding(.vertical, 10)
        .frame(height: 100)
        .foregroundColor(type == index ? Color.white : Color.baseBlack)
        .background(type == index ? Color.basePurple : Color.baseLtGray)
        .clipShape(RoundedRectangle(cornerRadius: 15))
        .padding(.horizontal, 5)
    }
}

struct RoundedRectButton_Previews: PreviewProvider {
    static var previews: some View {
        HStack {
            RoundedRectButton(title: "Title here", icon: "home-icon", type: 0, index: 0, action: {})
            RoundedRectButton(title: "Title here", icon: "outdoor-icon", type: 0, index: 1, action: {})
        }
    }
}
