import SwiftUI

struct ContentView: View {
    
    @StateObject var jar = CookieJar()
    @State var timesClicked = 0
    @State var isShowingSheet = false
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    Button(
                        action: {
                            print("Click cookie")
                            timesClicked = timesClicked + 1
                        },
                        label: {
                            Image("cookie")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                        }
                    )
                    Text("Click the cookie \(timesClicked) times!")
                    Spacer()
                    HStack {
                        NavigationLink(destination: CreditsView()) {
                            Text("Credits")
                        }
                        Button("Store",
                               action: {
                            print("Clicked open store")
                            isShowingSheet = true;
                        })
                    }
                    Spacer()
                }
                .navigationBarTitle("Cookie Clicker", displayMode: .inline)
            }
            .sheet(
                isPresented: $isShowingSheet,
                content: { StoreView(timesClicked: timesClicked) })
        }
        .navigationViewStyle(StackNavigationViewStyle())
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
