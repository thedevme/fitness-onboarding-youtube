import SwiftUI

struct WorkoutInfoView: View {
    @EnvironmentObject var model: OnboardingViewModel
    
    var body: some View {
        ScrollView {
            VStack {
                Text("Workout Info")
                    .font(.custom(.black, size: 30))
                    .padding(.top)
                
                placeSection
                workoutSection
                skillLevelSection
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.baseBackground)
    }
    
    var placeSection: some View {
        VStack(alignment: .leading) {
            Text("Workout Place")
                .font(.custom(.medium, size: 22))
            
            LazyVGrid(columns: model.columns) {
                ForEach(0..<3) { index in
                    RoundedRectButton(title: self.model.workoutLocationTypes[index], icon: self.model.workoutIcons[index], type: self.model.selectedWorkoutPlaceType, index: index, action: {
                        self.model.selectedWorkoutPlaceType = index
                    })
                }
            }
        }
        .padding(15)
        .background(.white)
        .cornerRadius(15)
        .padding(.horizontal, 15)
        .padding(.bottom, 15)
    }
    
    var workoutSection: some View {
        VStack(alignment: .leading) {
            Text("Why do you want to workout?")
                .font(.custom(.medium, size: 22))
            VStack(alignment: .leading) {
                ForEach(0..<self.model.workoutReason.count, id: \.self) { index in
                    CapsuleListButton(title: model.workoutReason[index], type: self.model.selectedWorkoutReasonType, index: index, action: {
                        self.model.selectedWorkoutReasonType = index
                    })
                }
            }
        }
        .padding(15)
        .frame(maxWidth: .infinity)
        .background(.white)
        .cornerRadius(15)
        .padding(.horizontal, 15)
        .padding(.bottom, 15)
    }
    
    var skillLevelSection: some View {
        VStack(alignment: .leading) {
            Text("What is your skill level?")
                .font(.custom(.medium, size: 22))
            HStack {
                ForEach(0..<self.model.skillLevel.count, id: \.self) { index in
                    CapsuleListButton(title: self.model.skillLevel[index], type: self.model.selectedSkillType, index: index, hasCheckmark: false, action: { self.model.selectedSkillType = index })
                    
                }
                
                Spacer()
            }
        }
        .padding(15)
        .frame(maxWidth: .infinity)
        .background(.white)
        .cornerRadius(15)
        .padding(.horizontal, 15)
    }
}

struct WorkoutInfoView_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutInfoView()
            .environmentObject(OnboardingViewModel())
    }
}
