//
//  MorePractice.swift
//  FinalPractice
//
//  Created by Christiane Villaroel on 12/13/24.
//

import SwiftUI
class userDate: ObservableObject{
    @Published var username: String = "Guest"
    @Published var password: String = "password"
    @Published var age: Int = 25
    
    var canVote: Bool{
        age >= 18
    }
    func increaseAge(){
        age += 1
    }
    func decreaseAge(){
        age -= 1
    }
}

struct MorePractice: View {
    @ObservedObject var user = userDate()
    
    var body: some View {
        
        ScrollView{
            VStack{
                Text("Welcome, \(user.username)")
                Text("Age: \(user.age)")
                Text("can Vote: \(user.canVote ? "yes" : "no" )")
                HStack{
                    Button("Increase Age"){
                        user.increaseAge()
                    }
                    
                    Button("Decrease Age"){
                        user.decreaseAge()
                    }
                }//end hstack
            }
            .frame(width:300, height: 100)
            .background(Color.green)
            .foregroundStyle(Color.white)
            VStack(spacing:10){
                ForEach(1...5, id:\.self){
                    index in
                    Text("\(index)")
                        .frame(width:300, height: 50)
                        .background(Color.blue)
                        .foregroundColor(Color.white)
                        .cornerRadius(5)
                }
            }
        }
    }
}

#Preview {
    MorePractice()
}
