//
//  ContentView.swift
//  GradesCalculator
//
//  Created by WSS on 06/08/2022.
//

import SwiftUI

struct ContentView: View {
    @State var finalGrade = ""
    @State var grade = ""
    var body: some View {
        ZStack {
            Image("classroom")
                .resizable().ignoresSafeArea()
                .blur(radius:10)
            
            VStack{
                Text("Grades Calculator")
                    .font(.system(size:30, weight: .bold, design: .rounded))
                    .foregroundColor(.black)
                    .padding()
                Image("calculator")
                    .resizable()
                    .scaledToFit()
                    .frame(width:300,
                           height: 200)
                    .padding()
                TextField("Enter your grade", text:$finalGrade)
                    .background(.white)
                    .textFieldStyle(.roundedBorder)
                    .padding()
                Spacer()
                Text("You got a grade")
                    .font(.system(size:30, weight:.bold))
                    .foregroundColor(.white)
                Spacer()
                Text(grade)
                    .foregroundColor(.red)
                    .font(.system(size:40, weight:.medium))
                    .multilineTextAlignment(.center)
                    .background(.quaternary)
                Spacer()
            }
            
            VStack {
                ZStack {
                    Capsule()
                        .frame(width:200, height:40)
                        .foregroundColor(.yellow)
                    Text("Calculate My Grade")
                        .fontWeight(.bold)
                        .onTapGesture {
                            if (Double(finalGrade) ?? 0) >= 90 {
                                grade = "A\nExcellent! Keep Going 🏆"
                                
                            }
                            else if(Double(finalGrade) ?? 0) >= 80 {
                                grade = "B\nAmazing! Push Yourself A Little bit More 🥈"
                            }
                            else if(Double(finalGrade) ?? 0) >= 70 {
                                grade = "C\nGood Job!Work Harder To Reach The Top 🎯"
                            }
                            else if(Double(finalGrade) ?? 0) >= 60 {
                                grade = "D\nYou Can Do Better 🦸"
                            }
                            else{
                                grade = "F\n Don't Give Up 🙅"
                            }
                        }
                    
                }
                .padding(.top, 60.0)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

