import Foundation
import SwiftUI

struct CreditsView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Mel")
            }
        }
        .navigationBarTitle("Credits", displayMode: .inline)
    }
}

struct Credits_Previews: PreviewProvider {
    static var previews: some View {
        CreditsView()
    }
}
