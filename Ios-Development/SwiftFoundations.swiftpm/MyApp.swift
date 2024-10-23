import SwiftUI

@main
struct MyApp: App {
    func showFirstScreen(){
        var userDidCompleteOnboarding: Bool = false
        var userProfileCreate: Bool = false
        let status = checkUserStatus(didCompleteOnboarding: userDidCompleteOnboarding, profileCreate: userProfileCreate)
        if status {
            print("Welcome back!")
        }else{
            print("Please complete user profile and onboarding")
        }
    }
    
    func checkUserStatus(didCompleteOnboarding: Bool, profileCreate:Bool) -> Bool {
        if didCompleteOnboarding && profileCreate {
            return true
        } else {
            return false
        }
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
