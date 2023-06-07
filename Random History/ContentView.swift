//
//  ContentView.swift
//  Random History
//
//  Created by Dafne Bencomo on 6/5/23.
//

import SwiftUI

struct ContentView: View {
    
    // Initialize color constants
    let mainColor = Color(red: 20/255, green: 28/255, blue: 58/255)
    let accentColor = Color(red: 48/255, green: 105/255, blue: 240/255)
    
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
                Text("What was the first computer bug?")
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.leading)
                Spacer()
                
                /*Buttons
                  declare HStack to add buttons
                 */
                HStack{
                    
                    // Button 1
                    Button(action: {
                        print("Tapped on Choice 1")
                    }, label: {
                        Text("Ant")
                            .font(.body)
                            .bold()
                            .multilineTextAlignment(.center)
                            .padding()
                            .border(accentColor, width: 4)
                    })
                    // Button 2
                    Button(action: {
                        print("Tapped on Choice 2")
                    }, label: {
                        Text("Beetle")
                            .font(.body)
                            .bold()
                            .multilineTextAlignment(.center)
                            .padding()
                            .border(accentColor, width: 4)
                    })
                    //Button 3
                    Button(action: {
                        print("Tapped on Choice 3")
                    }, label: {
                        Text("Moth")
                            .font(.body)
                            .bold()
                            .multilineTextAlignment(.center)
                            .padding()
                            .border(accentColor, width: 4)
                    })
                    //Button 4
                    Button(action: {
                        print("Tapped on Choice 4")
                    }, label: {
                        Text("Fly")
                            .font(.body)
                            .bold()
                            .multilineTextAlignment(.center)
                            .padding()
                            .border(accentColor, width: 4)
                    })
                    
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
