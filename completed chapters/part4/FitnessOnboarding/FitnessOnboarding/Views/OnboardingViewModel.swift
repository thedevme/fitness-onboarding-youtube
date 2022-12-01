import SwiftUI

class OnboardingViewModel: ObservableObject {
    
    @Published var selectedGenderType = 0

    let genders: [String] = [
        "Male",
        "Female",
        "Other"
    ]
    
    let nutrition:[String] = [
        "Veganism",
        "No Restrictions"
    ]
    
    let skillLevel:[String] = [
        "Noob",
        "Skilled",
        "Expert"
    ]
    
    let workoutReason:[String] = [
        "Lose Weight",
        "Get Muscles",
        "Stay Healthy"
    ]
    
    let foodTypes: [String] = [
        "Fruits",
        "Fish",
        "Salad",
        "Dairy",
        "Chicken",
        "Protien"
    ]
    
    let foodIcons: [String] = [
        "apple",
        "fish",
        "vegetables",
        "milk",
        "chicken",
        "egg"
    ]
    
    let workoutIcons: [String] = [
        "home-icon",
        "gym-icon",
        "outdoor-icon"
    ]
    
    let workoutLocationTypes: [String] = [
        "Home",
        "Gym",
        "Outdoor"
    ]
}
