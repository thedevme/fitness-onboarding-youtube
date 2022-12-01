import SwiftUI

struct PersonalInfoView: View {
    @EnvironmentObject var model: OnboardingViewModel
    
    var body: some View {
        ScrollView {
            VStack {
                Text("Personal Info")
                    .font(.custom(.black, size: 30))
                    .padding(.top)
                
                identitySection
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.baseBackground)
    }
    
    var identitySection: some View {
        VStack(alignment: .leading) {
            Text("How do you identify?")
            VStack {
                ForEach(0..<model.genders.count, id: \.self) { index in
                    CapsuleListButton(title: model.genders[index], type: self.model.selectedGenderType, index: index, action: {
                        self.model.selectedGenderType = index
                    })
                    
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
        .padding(.bottom, 10)
    }
}

struct PersonalInfoView_Previews: PreviewProvider {
    static var previews: some View {
        PersonalInfoView()
            .environmentObject(OnboardingViewModel())
    }
}
