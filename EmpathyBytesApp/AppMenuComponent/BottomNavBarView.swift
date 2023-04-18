//
//  BottomNavBarView.swift
//  EmpathyBytesApp
//
//  Created by Princess Empel on 4/17/23.
//

import SwiftUI

struct BottomNavBarView: View {
    var body: some View {
        TabView {
            CollectionsMenuView()
                .tabItem() {
                    Image(systemName: "book.fill")
                    Text("Collections")
                }
            AboutUs()
                .tabItem() {
                    Image(systemName: "person.2.fill")
                    Text("About Us")
                }
        }
    }
}

struct BottomNavBar_Previews: PreviewProvider {
    static var previews: some View {
        BottomNavBarView()
    }
}
