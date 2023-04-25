//
//  TeamMemberList.swift
//  EmpathyBytesApp
//
//  Created by Princess Empel on 4/24/23.
//

import SwiftUI
import UIKit


struct TeamMemberList: View {
    var body: some View {
        
        List(members) { member in
            TeamMemberRow(member: member)
            /*
            NavigationLink{
                CollectionDetail(collection: collection)
            } label: {
                CollectionRow(collection: collection)
            }
             */
        }
        .navigationTitle("Collections")
    }
}
struct TeamMemberList_Previews: PreviewProvider {
    static var previews: some View {
        TeamMemberList()
    }
}
