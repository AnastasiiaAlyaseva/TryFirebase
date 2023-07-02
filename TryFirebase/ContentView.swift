
//  ContentView.swift
//  Portfollio_App_Anastasiia
//
//  Created by Anastasiia Alyaseva on 23.03.2023.
//

import SwiftUI

//// this is our main Structure in the file that the root file (TryFirebaseApp.swift) will access as the main antry point
struct TryFirebaseHomePage:View {
    
    private let colors = [
        Color(red:0.996 , green:0.878 , blue:0.925),
        Color(red:0.925 , green: 0.976 , blue:0.949)
    ]
    
    private let devName = "Anastasiia"
    @State private var isVisible = false
    var body: some View {
        NavigationView() {
            ZStack{
                Color(red:0.57, green:0.181, blue:0.224).edgesIgnoringSafeArea(.all)
                LinearGradient(gradient: Gradient(colors: colors), startPoint: .top, endPoint: .bottom)
                
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    //                    Image(systemName: "globe").imageScale(.large).foregroundColor(.accentColor)
                    
                    Text(devName.uppercased())
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.top)
                        .opacity(isVisible ? 1:0)
                        .offset(y:isVisible ? 0:30)
                        .animation(Animation.easeOut(duration: 1).delay(0.5))
                    
                    Image("Anastasiia")
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .frame(width: 150, height: 150)
                        .padding(.bottom, 10)
                    
                    Text("A Passionate developer who recently started learning Swift and IOS development. Commited to creating high-quality apps and continuously improving skills")
                        .font(.body)
                        .fontWeight(.medium)
                        .padding(.top)
                        .multilineTextAlignment(.center)
                        .opacity(isVisible ? 1:0)
                        .offset(y:isVisible ? 0:30)
                        .animation(Animation.easeOut(duration: 1).delay(0.5))
                    
                    VStack{
                        NavigationLink(destination: SwiftCard()){
                            Text("Go to card")
                                .padding()
                                .background(Color.blue)
                                .foregroundColor(.white)
                                .cornerRadius(15)
                        }
                        .padding(.bottom)
                        
                        NavigationLink(destination: ContactForm()){
                            Text("Contact the Developer⚡️")
                                .padding()
                                .background(Color.green)
                                .foregroundColor(.black)
                                .cornerRadius(15)
                        }
                    }
                    
                    .padding(.top, 50)
                    .padding(.bottom,30)
                    
                    
                    NavigationLink(destination:AppleApiCollection()) {
                        //                        Button(action:{}) {
                        Label("Load images from API", systemImage: "gamecontroller")
                        //                        }
                    }
                    
                    
                    
                    Spacer ()
                    
                    Text("@2023")
                        .font(.footnote)
                        .fontWeight(.bold)
                        .padding(.bottom)
                }
            }
            .navigationBarHidden(true)
            .onAppear{
                isVisible = true
            }
        }
    }
}


//// Without a PreviewProvider, we cant build the main Structure of this swift file. Meaning we cant build the UI and display it on the app screen
///
struct TryFirebaseHomePage_Bulder:PreviewProvider{
    static var previews: some View{
        TryFirebaseHomePage()
    }
}