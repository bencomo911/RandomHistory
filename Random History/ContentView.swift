//
//  ContentView.swift
//  Random History
//
//  Created by Dafne Bencomo on 6/5/23.
//

import SwiftUI

struct ContentView: View {
    //Adding a comment to test repo updates
    // Question instance
    let question = Question(
        questionText: "What was the first computer BUG?",
        possibleAnswers: ["Ant", "Beetle", "Moth", "Fly"],
        correctAnswerIndex: 2
    )
    
    // Initialize color constants
    @State var mainColor = Color(red: 20/255, green: 28/255, blue: 58/255)
    
    // body starts here
    var body: some View {
        ZStack{
            // Add background color
            mainColor.ignoresSafeArea()
            
            /* declare VStack to organize current question number, question and buttons
             */
            VStack{
                
                // Current question counter
                Text("1 / 10")
                    .font(.callout)
                    .multilineTextAlignment(.leading)
                    .padding()
                
                // Question
                Text(question.questionText)
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.leading)
                Spacer()
                
                /*Buttons
                  declare HStack to add buttons
                 */
                HStack{
                    ForEach(0..<question.possibleAnswers.count){ answerIndex in
                        Button(action: {
                            print("Tapped on button with the text: \(question.possibleAnswers[answerIndex])")
                            mainColor = answerIndex == question.correctAnswerIndex ? .green : .red
                            }, label: {
                                ChoiceTextView(choiceText: question.possibleAnswers[answerIndex])
                            }
                        ) //end of Button
                    }// end of ForEach
                }// end of HStack
                
            }// end of VStack
            
        } // end of ZStack
        .foregroundColor(.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
