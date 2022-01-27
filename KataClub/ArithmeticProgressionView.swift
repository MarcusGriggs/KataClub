//
//  ArithmeticProgressionView.swift
//  KataClub
//
//  Created by Tom Phillips on 1/27/22.
//

import SwiftUI

struct ArithmeticProgressionView: View {
    @State private var inputArrayText = ""
    @State private var output = ""
    
    var body: some View {
        ScrollView {
            VStack{
                Text("Find the Missing Element of an Arithmetic Progression")
                    .font(.largeTitle)
                    .padding()
                
                Text("""
                An Arithmetic Progression is defined as one in which there is a constant difference between the consecutive terms of a given series of numbers. You are provided with consecutive elements of an Arithmetic Progression. There is however one hitch: exactly one term from the original series is missing from the set of numbers which have been given to you. The rest of the given series is the same as the original AP. Find the missing term.
                
                You have to write a function that receives a list, list size will always be at least 3 numbers. The missing term will never be the first or last one.
                
                Example: If the input array is [1, 3, 5, 9, 11], then the missing element is 7
                
                PS: This is a sample question of the facebook engineer challenge on interviewstreet. I found it quite fun to solve on paper using math, derive the algo that way. Have fun!
                """)
                    .padding()
                Divider()
                Text("Input Array: \(inputArrayText)")
                Button("Generate Random Array") {
                    inputArrayText = generateRandomInputArray()
                }
                .padding()
                
                Text("Missing Element: \(output)")
                Button("Run") {
                    
                }
                .disabled(inputArrayText.isEmpty)
            }
        }
    }
    
    func generateRandomInputArray() -> String {
        let minimumCount = 4
        let maxCount = 9
        let count = Int.random(in: minimumCount...maxCount)
        let arithmeticProgression = Int.random(in: 1...maxCount)
        let startingNumber = Int.random(in: -100...100)
        var inputArray = ["\(startingNumber)"]
        var currentNumber = startingNumber
        
        for _ in 1...count {
            currentNumber += arithmeticProgression
            inputArray.append("\(currentNumber)")
        }
        
        let indexToRemove = Int.random(in: 1..<count - 1)
        inputArray.remove(at: indexToRemove)
        return "[" + inputArray.joined(separator: ", ") + "]"
    }
}

struct ArithmeticProgressionView_Previews: PreviewProvider {
    static var previews: some View {
        ArithmeticProgressionView()
    }
}
