import SwiftUI

struct FoodPreferencesView: View {
    @EnvironmentObject var model: OnboardingViewModel
    
    var body: some View {
        ScrollView {
            nutritionSection
            foodSection
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.baseBackground)
    }

    var nutritionSection: some View {
        VStack {
            Text("Food Preferences")
                .font(.custom(.black, size: 30))
                .padding(.top)
            VStack(alignment: .leading) {
                Text("Nutrition")
                    .font(.custom(.medium, size: 22))
                VStack(alignment: .leading) {
                    ForEach(0..<self.model.nutrition.count, id: \.self) { index in
                        CapsuleListButton(title: self.model.nutrition[index], type: self.model.selectedNutritionType, index: index, action: { self.model.selectedNutritionType = index })
                    }
                }
            }
            .padding(15)
            .frame(maxWidth: .infinity)
            .background(.white)
            .cornerRadius(15)
            .padding(.horizontal, 15)
        }
    }
    
    var foodSection: some View {
        VStack(alignment: .leading) {
            Text("What do you like?")
                .font(.custom(.medium, size: 22))
            
            LazyVGrid(columns: self.model.columns) {
                ForEach(0..<self.model.foodTypes.count, id: \.self) { index in
                    RoundedRectButton(title: self.model.foodTypes[index], icon: self.model.foodIcons[index], type: self.model.selectedFoodType, index: index, action: {
                        self.model.selectedFoodType = index
                    })
                }
            }
        }
        .padding(15)
        .frame(maxWidth: .infinity)
        .background(.white)
        .cornerRadius(15)
        .padding(.horizontal, 15)
    }
}

struct FoodPreferencesView_Previews: PreviewProvider {
    static var previews: some View {
        FoodPreferencesView()
            .environmentObject(OnboardingViewModel())
    }
}
