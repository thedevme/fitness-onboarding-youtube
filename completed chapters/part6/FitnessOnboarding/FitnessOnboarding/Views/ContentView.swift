import SwiftUI

struct ContentView: View {
    @StateObject var model = OnboardingViewModel()
    @State private var currentPage: Int = 0
    
    var body: some View {
        VStack {
            tabView
            navBar
        }
        .background(Color.baseBackground.edgesIgnoringSafeArea(.all))
    }
    
    var tabView: some View {
        TabView(selection: $currentPage) {
            WorkoutInfoView()
                .environmentObject(model)
                .tag(0)
            PersonalInfoView()
                .environmentObject(model)
                .tag(1)
            FoodPreferencesView()
                .environmentObject(model)
                .tag(2)
        }
        .tabViewStyle(.page(indexDisplayMode: .never))
    }
    
    var navBar: some View {
        HStack {
            HStack {
                ForEach(0..<3, id: \.self) { index in
                    DotView(index: index, currentPage: self.$currentPage)
                }
            }
            
            Spacer()
            
            HStack {
                CustomNavigationButton(type: .previous, action: {
                    self.currentPage -= 1
                })
                .opacity(self.currentPage > 0 ? 1 : 0)
                
                CustomNavigationButton(type: .next, action: {
                    self.currentPage += 1
                })
                .opacity(self.currentPage == 2 ? 0 : 1)
            }
        }
        .padding(15)
        .background(.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
