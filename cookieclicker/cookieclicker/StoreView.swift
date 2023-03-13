import SwiftUI

struct StoreView: View {
    
    @State var timesClicked = 0

    var body: some View {
        Text("Cookie count \(timesClicked)")
    }
}

struct StoreView_Previews: PreviewProvider {
    static var previews: some View {
        StoreView()
    }
}
