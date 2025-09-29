//
    // Project: SwitUIViewLibrary
    //  File: ContentView.swift
    //  Created by Noah Carpenter
    //  🐱 Follow me on YouTube! 🎥
    //  https://www.youtube.com/@NoahDoesCoding97
    //  Like and Subscribe for coding tutorials and fun! 💻✨
    //  Fun Fact: Cats have five toes on their front paws, but only four on their back paws! 🐾
    //  Dream Big, Code Bigger
    

import SwiftUI

struct ContentView: View {
    @State private var name: String = ""
    var body: some View {
        
      
        NavigationView {
            ZStack {
                
                LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .bottom, endPoint: .leading)
                    .ignoresSafeArea(.all)
                    .opacity(0.25)


                
                VStack {
                    
                    
                    Text("Hello SwiftUI")
                        .font(.largeTitle)
                        .foregroundStyle(.orange)
                        .padding(10)
                    
                    
                    
                    Image(systemName: "bird.circle.fill")
                        .resizable()
                        .frame(width: 150, height: 150)
                        .aspectRatio(contentMode: .fill)
                        .foregroundStyle(.orange)
                    
                    TextField("Enter your name", text: $name)
                        .textInputAutocapitalization(.never)
                        .disableAutocorrection(true)
                        .border(.secondary)
                        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    Button("Press me") {
                        //
                    }
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .foregroundStyle(.white)
                    .cornerRadius(15)
                    
                    NavigationLink(destination: DetailView()) {
                        Label("Learning List", systemImage: "folder")
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(.green)
                            .foregroundStyle(.white)
                            .cornerRadius(15)
                        
                        
                    }
                    
                    Spacer()
                    
                }
                
                .padding()
                .navigationTitle("Home Screen")
            }
        }
    }
}

struct DetailView: View {
    var body: some View {
        
        List {
                Text("A List Item")
                Text("A Second List Item")
                Text("A Third List Item")
            }
        .listStyle(.inset)
        .navigationTitle("My List")
        .navigationBarBackButtonHidden(false)
        

    }
}


#Preview {
    ContentView()
}
