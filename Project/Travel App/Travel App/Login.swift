import SwiftUI
import Firebase

struct Login : View {
    
    @State var color = Color.black.opacity(0.7)
    @State var email = ""
    @State var password = ""
    @State var visible = false
    @Binding var show : Bool
    @State var alert = false
    @State var error = ""
    
    var body : some View {
        ZStack {
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
                    
                    self.verify()
                    
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
                    self.show.toggle()
                }) {
                    Text("Register")
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color("Color"))
                }
                .padding()
            }
            .padding(.horizontal, 25)
            
            if self.alert{
                ErrorView(alert: self.$alert, error: self.$error)
            }
        }
    }
    func verify() {
        if self.email != "" && self.password != "" {
            Auth.auth().signIn(withEmail: self.email, password: self.password) { (res, err) in
                if err != nil {
                    
                    self.error = err!.localizedDescription
                    self.alert.toggle()
                }
                print("epic")
                UserDefaults.standard.set(true, forKey: "status")
                NotificationCenter.default.post(name: NSNotification.Name("status"), object: nil)
                
            }
        }
        else {
            self.error = "Please enter email and password"
            self.alert.toggle()
        }
    }
}

