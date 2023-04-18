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
        List(collections) { collection in
            NavigationLink{
                CollectionDetail(collection: collection)
            } label: {
                CollectionRow(collection: collection)
            }
        }
        .navigationTitle("Collections")
    }
}
struct CollectionsMenuView_Previews: PreviewProvider {
    static var previews: some View {
        CollectionsMenuView()
    }
}
