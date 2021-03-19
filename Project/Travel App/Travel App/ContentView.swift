import SwiftUI

struct ContentView: View {
    @State var show = false
    var body: some View {
        NavigationView{
            ZStack{
                NavigationLink(destination: SignUp(show: self.$show), isActive: self.$show) {
                    Text("")
                }
                .hidden()
                Login(show: self.$show)
            }
            .navigationBarTitle("")
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}


