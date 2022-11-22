import SwiftUI

enum CustomButtonType: String {
    case next = "Next"
    case previous = "Previous"
}

struct CustomNavigationButton: View {
    var type: CustomButtonType
    var action: () -> Void
    
    var body: some View {
        Button(action: { action() }) {
            Text(type.rawValue)
                .font(.custom(.bold, size: 18))
                .padding(.vertical, 15)
                .padding(.horizontal, 20)
                .foregroundColor(type == .previous ? .basePurple : .white)
                .background(type == .previous ? Color.white : Color.basePurple)
        }
        .buttonStyle(.plain)
        .cornerRadius(11)
        .overlay(
            RoundedRectangle(cornerRadius: 15)
                .stroke(Color.basePurple, lineWidth: 1)
                .opacity(type == .previous ? 1 : 0)
        )
    }
}

struct CustomNavigationButton_Previews: PreviewProvider {
    static var previews: some View {
        HStack {
            CustomNavigationButton(type: .previous, action: {})
            CustomNavigationButton(type: .next, action: {})
        }
    }
}
