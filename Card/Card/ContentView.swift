//
//  ContentView.swift
//  Card
//
//  Created by Apprenant 07 on 24/01/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var show_button = "Select a suit"
    var body: some View {
        VStack {
            Spacer()
            HStack{
                Spacer()
                ZStack{
                    RoundedRectangle(cornerRadius: 15)
                        .frame(width: 100, height: 50)
                    Button(action: {
                        self.show_button = "♣️"
                    }, label: {
                        Image(systemName: "suit.club.fill")
                            .foregroundColor(.white)
                        Text("Club")
                            .foregroundColor(.white)
                    })
                }
                Spacer()
                ZStack{
                    RoundedRectangle(cornerRadius: 15)
                        .frame(width: 100, height: 50)
                    Button(action : {
                        self.show_button = "♠️"
                    }, label: {
                        Image(systemName: "suit.spade.fill")
                            .foregroundColor(.white)
                        Text("Spade")
                        .foregroundColor(.white)
                        })
                }
                Spacer()
            }
            Spacer()
            Button(action: {
                self.show_button = "Select a suit"
            }, label: {
                Text(show_button)
                    .font(.title)
                    .foregroundColor(.gray)
            }
            )

            Spacer()
            HStack{
                Spacer()
                ZStack{
                    RoundedRectangle(cornerRadius: 15)
                        .frame(width: 100, height: 50)
                        .foregroundColor(.red)
                    Button(action: {
                        self.show_button = "♦️"
                    }, label: {
                        Image(systemName: "suit.diamond.fill")
                            .foregroundColor(.white)
                        Text("Diamond")
                            .foregroundColor(.white)
                        })
                }
                Spacer()
                ZStack{
                    RoundedRectangle(cornerRadius: 15)
                        .frame(width: 100, height: 50)
                        .foregroundColor(.red)
                    Button(action: {
                        self.show_button = "♥️"
                    }, label: {
                        Image(systemName: "suit.heart.fill")
                            .foregroundColor(.white)
                        Text("Heart")
                        .foregroundColor(.white)
                        })
                }
                Spacer()
            }
            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
