//
//  TeamMemberRow.swift
//  EmpathyBytesApp
//
//  Created by Princess Empel on 4/24/23.
//

import SwiftUI

struct TeamMemberRow: View {
    var member: TeamMember
    
    var body: some View {
        HStack {
            member.image
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 100)
                .clipped()
            VStack (alignment: .leading) {
                Text(member.name)
                    .font(.system(size: 24, weight: .medium))
                    .foregroundColor(Color(red: 0/255, green: 48/255, blue: 87/255))
                Text("Team: " + member.mainTeam)
                    .font(.system(size: 16, weight: .light))
                    .foregroundColor(Color(red: 0/255, green: 48/255, blue: 87/255))
                Text("Major: " + member.major)
                    .font(.system(size: 16, weight: .light))
                    .foregroundColor(Color(red: 0/255, green: 48/255, blue: 87/255))
            
            }
        }
        
        /*
        HStack {
            collection.image
                .resizable()
                .frame(width: 50, height: 50)
            VStack (alignment: .leading){
                Text(collection.name)
                    .font(.headline)
                Text(collection.timeline)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            
            Spacer()
        }
         */
    }
}

struct TeamMemberRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TeamMemberRow(member: members[0])
        }
        .previewLayout(.fixed(width: 500, height: 200))
    }
}
