import SwiftUI

struct LoginView: View {
    @State private var username: String = ""
    @State private var password: String = ""

    var body: some View {
        NavigationView {
            ZStack {
                // Gradient background
                LinearGradient(gradient: Gradient(colors: [Color.blue.opacity(0.6), Color.green.opacity(0.6)]), startPoint: .topLeading, endPoint: .bottomTrailing)
                    .edgesIgnoringSafeArea(.all)

                VStack(spacing: 20) {
                    Spacer(minLength: 44) // Add space on the top for better alignment

                    Text("Welcome")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .padding(.horizontal, 20)
                        .padding(.vertical, 10)

                    VStack(spacing: 16) {
                        TextField("Username Or Email", text: $username)
                            .padding(12)
                            .background(Color.white.opacity(0.7))
                            .cornerRadius(8)
                            .padding(.horizontal, 40)

                        SecureField("Password", text: $password)
                            .padding(12)
                            .background(Color.white.opacity(0.7))
                            .cornerRadius(8)
                            .padding(.horizontal, 40)
                    }

                    Button(action: {
                        // Handle login logic here
                    }) {
                        Text("Log In")
                            .fontWeight(.medium)
                            .foregroundColor(.white)
                            .padding(.vertical, 12)
                            .frame(maxWidth: .infinity)
                            .background(Color.blue)
                            .cornerRadius(8)
                    }
                    .padding(.horizontal, 40)
                    .padding(.top, 20)

                     NavigationLink(destination: CreateAccoutView()) {
                     Text("Sign Up")
         .           foregroundColor(.green)
 
                    }

                    Spacer() // Adds a spacer that pushes all content to the top

                    HStack(spacing: 40) {
                        Button(action: {
                            // Implement Apple sign-in
                        }) {
                            Image(systemName: "applelogo")
                                .font(.title)
                                .foregroundColor(.white)
                        }

                        Button(action: {
                            // Implement Google sign-in
                        }) {
                            Image(systemName: "g.circle")
                                .font(.title)
                                .foregroundColor(.white)
                        }
                    }
                    .padding(.bottom, 20)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.black.opacity(0.3)) // Semi-transparent overlay to enhance readability
            }
            .navigationBarHidden(true)
        }
    }
}

struct SignUpView: View {
    var body: some View {
        Text("Sign Up View")
            .navigationBarTitle("Sign Up", displayMode: .inline)
            .foregroundColor(.white)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

