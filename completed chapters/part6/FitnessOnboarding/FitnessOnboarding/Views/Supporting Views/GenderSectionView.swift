import SwiftUI

struct GenderSectionView: View {
    @Environment var model: OnboardingViewModel
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("How do you identify?")
            
            VStack {
                ForEach(0..<model.genders.count, id: \.self) { index in
                    model.createGenderButtons(index)
                    if index != model.genders.count-1 {
                        Spacer()
                    }
                }
            }
        }
        .font(.custom(.medium, size: 18))
        .padding(15)
        .background(.white)
        .cornerRadius(15)
        .padding(.horizontal, 15)
    }
}

struct GenderSectionView_Previews: PreviewProvider {
    static var previews: some View {
        GenderSectionView()
            .environmentObject(OnboardingViewModel())
    }
}
