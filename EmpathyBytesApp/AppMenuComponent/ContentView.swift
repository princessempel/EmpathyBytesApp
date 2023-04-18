//
//  ContentView.swift
//  test
//
//  Created by Pranathi Singareddy on 10/3/20.
//
import SwiftUI
import UIKit


struct ContentView: View {
    @State private var showDetails = false
    @State private var showView = false
    @State private var showAbout = false
    var body: some View {
        NavigationView {
            ZStack {
                Color(red: 249/255, green: 246/255, blue: 229/255)
                    .ignoresSafeArea()
                VStack {
                    Text("empathy")
                        .font(.system(size: 40, weight: .bold))
                        .foregroundColor(Color(red: 55/255, green: 71/255, blue: 83/255))
                        .padding(.top, 50)
                    Text("bytes")
                        .font(.system(size: 40, weight: .bold))
                        .foregroundColor(Color(red: 181/255, green: 165/255, blue: 109/255))
                        .padding(.bottom, 50)
                    Image("GearsLogo")
                        .resizable()
                        .frame(width: 200, height: 200)
                        .cornerRadius(100)
                    
                    Text("creating tech centered")
                        .font(.system(size: 28, weight: .medium))
                        .foregroundColor(Color(red: 0/255, green: 48/255, blue: 87/255))
                        .padding(.top, 50)
                    Text("around empathy")
                        .font(.system(size: 28, weight: .medium))
                        .foregroundColor(Color(red: 0/255, green: 48/255, blue: 87/255))
                    
                    Spacer()
                        .frame(height: 50)
                    VStack {
                        NavigationLink(destination: BottomNavBarView()) {
                            Text("Explore")
                                .frame(width: 200, height: 50)
                                .background(Color(red: 0 / 255, green: 78 / 255, blue: 158 / 255))
                                .foregroundColor(.white)
                                .font(.system(size: 18, weight: .medium, design: .default))
                                .cornerRadius(15)
                        }
                    }
                    Spacer()
                        .frame(height: 140)
            }
        }
            /*
                    VStack {
                        Image("logoCircuitsTech")
                             .resizable()
                             .edgesIgnoringSafeArea(.all)
                             .scaledToFit()
                     
                         Text("Empathy Bytes")
                             .fontWeight(.bold)
                             .font(.system(size: 40, weight: .bold, design: .default))
                             .foregroundColor(Color(red: 0 / 255, green: 48 / 255, blue: 87 / 255))
                            .padding()
                        NavigationLink(destination: interviewMenuView()) {
                            Text("Interviews")
                                .frame(width: 200, height: 50)
                                .background(Color(red: 0 / 255, green: 78 / 255, blue: 158 / 255))
                                .foregroundColor(.white)
                                .font(.system(size: 18, weight: .medium, design: .default))
                                .cornerRadius(15)

                        }
                        NavigationLink(destination: ARPage()) {
                            Text("Augmented Reality")
                                .frame(width: 200, height: 50)
                                .background(Color(red: 0 / 255, green: 78 / 255, blue: 158 / 255))
                                .foregroundColor(.white)
                                .font(.system(size: 18, weight: .medium, design: .default))
                                .cornerRadius(15)
                        }
                        NavigationLink(destination: AboutUs()) {
                            Text("About Us")
                                .frame(width: 200, height: 50)
                                .background(Color(red: 0 / 255, green: 78 / 255, blue: 158 / 255))
                                .foregroundColor(.white)
                                .font(.system(size: 18, weight: .medium, design: .default))
                                .cornerRadius(15)
                        }
                    }
//                    .background(LinearGradient(
//                        colors: [.init(red: 249/255, green: 246/255, blue: 231/255), .init(red: 249/255, green: 246/255, blue: 231/255)],
//                        startPoint: .top, endPoint: .bottom))
                }
         */
        
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
