//
//  CollectionsMenuView.swift
//  EmpathyBytesApp
//
//  Created by Princess Empel on 4/17/23.
//

import SwiftUI
import UIKit


struct CollectionsMenuView: View {
    var body: some View {
        ZStack {
            Color(red: 249/255, green: 246/255, blue: 229/255)
                .ignoresSafeArea()
            VStack (alignment: .leading){
                Text("Collections")
                    .font(.system(size: 30, weight: .bold, design: .default))
                    .foregroundColor(Color(red: 181/255, green: 165/255, blue: 109/255))
                    .padding(.horizontal)
                List(collections) { collection in
                    NavigationLink{
                        CollectionDetail(collection: collection)
                    } label: {
                        CollectionRow(collection: collection)
                    }
                }
                .listRowBackground(Color(red: 249/255, green: 246/255, blue: 229/255))
            }
        }
    }
}
struct CollectionsMenuView_Previews: PreviewProvider {
    static var previews: some View {
        CollectionsMenuView()
    }
}
