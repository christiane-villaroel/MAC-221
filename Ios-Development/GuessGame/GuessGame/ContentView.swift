//
//  ContentView.swift
//  GuessGame
//
//  Created by Christiane Villaroel on 10/12/24.
//

import SwiftUI

struct ContentView: View {
    @State private var correctAnswer=0;
    @State private var choiceArray : [Int] = [0,1,2,3];
    @State private var firstNumber = 0;
    @State private var secondNumber = 0;
    @State private var difficulty = 1000;
    @State private var  score = 0;
    
    
    var body: some View {
        ZStack {
            Color.yellow
                .edgesIgnoringSafeArea(.all)
            VStack{
                Text("\(firstNumber) + \(secondNumber)")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                HStack(spacing:40){
                    Text("\(score)")
                        
                }
            }
        }//End of ZStack
    }// End of View Body
    func answerIsCorrect(answer:Int){
        if answer == correctAnswer{
            self.score += 1
        }else{
            self.score -= 1
        }
    }
    
    func generateAnswer(){
        firstNumber = Int.random(in: 0...(difficulty/2))
        secondNumber = Int.random(in: 0...(difficulty/2))
        var answerList = [Int]()
        correctAnswer = firstNumber + secondNumber
        for _ in 0 ... 2{
            answerList.append(Int.random(in: 0...difficulty))
        }
        answerList.append(correctAnswer)
        choiceArray = answerList.shuffled()
    }
}//End of ContentView

#Preview {
    ContentView()
}
