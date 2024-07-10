//
//  ContentView.swift
//  war card game swift
//
//  Created by Christopher Rebollar on 7/9/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card7"
    @State var cpuCard = "card13"
    
    @State var playerScore = 0;
    @State var cpuScore = 0;
    
    
    var body: some View {
        ZStack {
            Image("background-plain").resizable().ignoresSafeArea()
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                
                
                Button(action: {
                    deal()
                }, label: {
                    Image("button")
                })
                
                Spacer()
                
                HStack{
                    Spacer()
                    VStack{
                        Text("Player").font(.headline).padding(.bottom, 10.0)
                            
                        Text(String(playerScore)).font(.largeTitle)
                    }
                    Spacer()
                    
                    VStack{
                        Text("CPU").font(.headline).padding(.bottom, 10.0)
                        Text(String(cpuScore)).font(.largeTitle)
                        
                    }
                    Spacer()
                }.foregroundColor(.white)
                Spacer()

            }
        }
    }
    
    func deal(){
        
        var playerNum = Int.random(in: 2...14)
        var cpuNum = Int.random(in: 2...14)
        // Randomize the players card
        playerCard = "card" + String(playerNum)
        
    
        // Randomize the cpus card and update score
        cpuCard = "card" + String(cpuNum)
        
        if (playerNum > cpuNum){
            playerScore += 1
        }else if(playerNum < cpuNum){
            cpuScore += 1
        }
    }
}

#Preview {
    ContentView()
}
