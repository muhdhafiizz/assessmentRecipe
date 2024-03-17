import SwiftUI

struct SettingView: View {
    @State private var isLoggedOut: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                
                VStack {
                    NavigationLink(
                        destination: LoginView(),
                        isActive: $isLoggedOut,
                        label: {
                            EmptyView()
                        })
                        .isDetailLink(false)
                    
                    Button(action: {
                        
                        isLoggedOut = true                     }) {
                        Text("Logout")
                            .foregroundColor(.red)
                    }
                    .padding()
                    
                    Spacer()
                }
                .navigationTitle("Settings")
//                .navigationBarHidden(true)
            }
            .navigationBarHidden(true)
        }
        .navigationBarTitle("")
        .navigationBarBackButtonHidden(true) 
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
