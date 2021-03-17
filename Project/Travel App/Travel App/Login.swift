import SwiftUI

struct Login : View {
    
    @State var color = Color.black.opacity(0.7)
    @State var email = ""
    @State var password = ""
    @State var visible = false
    
    var body : some View {
        VStack {
            Text("🧇")
                .font(.system(size: 100))
                .padding()
            
            Text("Log in to your account")
                .font(.title)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .foregroundColor(self.color)
                .padding(.top, 35)
            
            TextField("Email", text: self.$email)
            .padding()
                .background(RoundedRectangle(cornerRadius: 4).stroke(self.email != "" ? Color("Color") : self.color, lineWidth: 2))
            .padding(.top, 25)
            
            HStack(spacing: 15) {
                VStack {
                    if self.visible {
                        TextField("Password", text: self.$password)
                    }
                    else {
                        SecureField("Password", text: self.$password)
                    }
                }
                Button(action: {self.visible.toggle()}) {
                    Image(systemName: self.visible ? "eye.slash.fill" : "eye.fill" )
                        .foregroundColor(self.color)
                }
            }
            .padding()
                .background(RoundedRectangle(cornerRadius: 4).stroke(self.password != "" ? Color("Color") : self.color, lineWidth: 2))
            .padding(.top, 25)
            
            HStack {
                Spacer()
                
                Button(action: {
                    
                }) {
                    Text("Forget password")
                        .fontWeight(.bold)
                        .foregroundColor(Color("Color"))
                }
            }
            .padding(.top, 20)
            
            Button(action: {
                
            }) {
                Text("Sign in")
                    .foregroundColor(.white)
                    .padding(.vertical)
                    .frame(width: UIScreen.main.bounds.width - 50)
            }
            .background(Color("Color"))
            .cornerRadius(10)
            .padding(.top, 25)
            
            Button(action: {
            }) {
                Text("Register")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color("Color"))
            }
            .padding()
        }
            .padding(.horizontal, 25)
    }
}
