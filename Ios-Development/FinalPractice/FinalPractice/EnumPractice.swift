//
//  EnumPractice.swift
//  FinalPractice
//
//  Created by Christiane Villaroel on 12/13/24.
//

import SwiftUI
/*enum RainbowColor: String, CaseIterable, Identifiable {
    case red,blue, orange, yellow,green,violet
    var id: RainbowColor { self }
}
enum ViewState {
    case initial, active
}*/
enum Difficulty: String, CaseIterable, Identifiable{
    case easy = "Easy"
    case medium = "Medium"
    case hard = "Hard"
    case impossible = "Impossible!!"
    
    var id: Difficulty { self }
}
struct EnumPractice: View {
    @State var difficulty: Difficulty = .easy
   // @State var selectedColor: RainbowColor = .red
    //@State private var viewState: ViewState = .initial
    var body: some View {
        /*VStack(spacing:15){
            Text("Select a Color of the Rainbow")
                .font(.title)
                .fontWeight(.bold)
            Picker("Rainbow Color",selection: $selectedColor){
                ForEach(RainbowColor.allCases){
                    color in
                    Text(color.rawValue.capitalized).tag(color)
                }// end foreach
            }// end picker
            .pickerStyle(SegmentedPickerStyle())
            Text("You Picked: \(selectedColor.rawValue.capitalized)")
                .foregroundColor(Color(selectedColor.rawValue))
                .padding()
                .background(Color.blue)
            
            Text("SwiftUI View States")
                .font(.title)
                .fontWeight(.bold)
            Button(viewState == .initial ? "Appear":"Disappear"){
                viewState = viewState == .initial ? .active : .initial
            }
        }// end vstack */
        VStack{
            Picker("Difficulty", selection: $difficulty){
                ForEach(Difficulty.allCases){
                    level in
                    Text(" \(level.rawValue)").tag(level)
                }// end foreach
            }// end picker
            .pickerStyle(SegmentedPickerStyle())
            .padding()
            
            Text("Selected Difficulty: \(difficulty.rawValue)")
                .background(colorDifficulty(difficulty))
        }// end vstack
    }// end body
    func colorDifficulty (_ difficulty: Difficulty) -> Color {
        switch difficulty {
        case .easy:
            return .green
        case .medium:
            return .orange
            case .hard:
            return .red
        case .impossible:
            return .purple
        }
    }// end func colorDifficulty
}// end view

#Preview {
    EnumPractice()
}
