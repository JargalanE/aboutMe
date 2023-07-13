//
//  ContentView.swift
//  aboutMe
//
//  Created by Scholar on 7/13/23.
//

import SwiftUI

struct ContentView: View {
    @State private var home = true
    @State private var menu = false
    @State private var intro = false
    @State private var animal = false
    @State private var color = false
    @State private var hobbies = false
    @State private var last = false
    var body: some View {
        ZStack{
            Color(red: 0.548, green: 0.828, blue: 0.96).ignoresSafeArea()
            if home{
                VStack{
                    Text("About Jackie")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color.black)
                    Image("welcome")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .padding()
                    Button("Next") {
                        intro = false
                        home = false
                        menu = true
                        animal = false
                        color = false
                        hobbies = false
                        last = false
                    }.buttonStyle(.borderedProminent)
                }
            } else if menu{
                VStack(){
                    Text("Menu")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    Spacer()
                    HStack{
                        Button("Intro") {
                            intro = true
                            home = false
                            menu = false
                            animal = false
                            color = false
                            hobbies = false
                            last = false
                        }.buttonStyle(.bordered)
                        Button("Hobbies") {
                            intro = false
                            home = false
                            menu = false
                            animal = false
                            color = false
                            hobbies = true
                            last = false
                        }.buttonStyle(.bordered)
                    }.fixedSize(horizontal: true, vertical: false)
                    HStack(spacing: 40.0){
                        Button("Favorite Animal") {
                            intro = false
                            home = false
                            menu = false
                            animal = true
                            color = false
                            hobbies = false
                            last = false
                        }.buttonStyle(.bordered)
                        Button("Favorite Color") {
                            intro = false
                            home = false
                            menu = false
                            animal = false
                            color = true
                            hobbies = false
                            last = false
                        }.buttonStyle(.bordered)
                    }
                    Spacer()
                    Button("Next") {
                        intro = false
                        home = false
                        menu = false
                        animal = false
                        color = false
                        hobbies = false
                        last = true
                    }.buttonStyle(.borderedProminent)
                }
            } else if intro{
                VStack{
                    Text("Name: Jargalan Enkh-Otgon")
                    Text("Nickname: Jackie")
                    Text("Pronouns: She/Her")
                    Text("Age: 16")
                    Text("Grade: Junior")
                    Button("Back") {
                        intro = false
                        home = false
                        menu = true
                        animal = false
                        color = false
                        hobbies = false
                        last = false
                    }.buttonStyle(.borderedProminent)
                }
            } else if animal{
                VStack{
                    Text("My favorite animal is panda, because it's too cute.").padding()
                    Image("panda")
                    Button("Back") {
                        intro = false
                        home = false
                        menu = true
                        animal = false
                        color = false
                        hobbies = false
                        last = false
                    }.buttonStyle(.borderedProminent)
                }
                
                
            } else if color{
                VStack{
                    Text("My favorite color is blue!.")
                    Image("blue")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .padding()
                    Button("Back") {
                        intro = false
                        home = false
                        menu = true
                        animal = false
                        color = false
                        hobbies = false
                        last = false
                    }.buttonStyle(.borderedProminent)
                }
            } else if hobbies{
                VStack{
                    Text("I like to play chess and checker, listen to music and watch tv shows").padding()
                    Button("Back") {
                        intro = false
                        home = false
                        menu = true
                        animal = false
                        color = false
                        hobbies = false
                        last = false
                    }.buttonStyle(.borderedProminent)
                }
            } else if last{
                VStack{
                    Text("Thank you!")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    Button("Back") {
                        intro = false
                        home = false
                        menu = true
                        animal = false
                        color = false
                        hobbies = false
                        last = false
                    }.buttonStyle(.borderedProminent)
                }
                
                
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
