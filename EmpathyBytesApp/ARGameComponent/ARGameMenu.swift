import SwiftUI

struct ARGameMenu: View {
    
    var body: some View {
        VStack(spacing:20) {
            Text("Makerspace Games")
                .font(.title)
                .fontWeight(.bold)
                .lineLimit(2)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            NavigationLink(destination: ARMatchGameModelView()) {
                Text("Match!")
                    .frame(width: UIScreen.main.bounds.width - 40.0, height:100)
                    .background(Color(red: 0 / 255, green: 78 / 255, blue: 158 / 255))
                    .foregroundColor(.white)
                    .font(.system(size: 18, weight: .medium, design: .default))
                    .cornerRadius(15)
                    .padding(.horizontal)
            }
            NavigationLink(destination: ARMatchGameModelView()) {
                Text("Game 2")
                    .frame(width: UIScreen.main.bounds.width - 40.0, height:100)
                    .background(Color(red: 0 / 255, green: 78 / 255, blue: 158 / 255))
                    .foregroundColor(.white)
                    .font(.system(size: 18, weight: .medium, design: .default))
                    .cornerRadius(15)
                    .padding(.horizontal)
            }
            Spacer()
        }
    }
}

struct ARGameMenu_Previews: PreviewProvider {
    static var previews: some View {
        ARGameMenu()
    }
}
