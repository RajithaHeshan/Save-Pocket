import SwiftUI

struct CreateAccoutView: View {
    @State private var fullName: String = ""
    @State private var email: String = ""
    @State private var mobileNumber: String = ""
    @State private var dateOfBirth: Date = Date()
    @State private var password: String = ""
    @State private var confirmPassword: String = ""

    var body: some View {
        NavigationView {
            ZStack {
                // Gradient background
                LinearGradient(gradient: Gradient(colors: [Color.blue.opacity(0.6), Color.green.opacity(0.6)]), startPoint: .topLeading, endPoint: .bottomTrailing)
                    .edgesIgnoringSafeArea(.all)

                VStack(spacing: 20) {
                    Text("Create Account")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .padding(.horizontal, 20)
                        .padding(.vertical, 10)

                    VStack(spacing: 16) {
                        TextField("Full Name", text: $fullName)
                            .padding(12)
                            .background(Color.white.opacity(0.7))
                            .cornerRadius(8)
                            .padding(.horizontal, 40)

                        TextField("Email", text: $email)
                            .padding(12)
                            .background(Color.white.opacity(0.7))
                            .cornerRadius(8)
                            .padding(.horizontal, 40)

                        TextField("Mobile Number", text: $mobileNumber)
                            .padding(12)
                            .background(Color.white.opacity(0.7))
                            .cornerRadius(8)
                            .padding(.horizontal, 40)

                        DatePicker("Date Of Birth", selection: $dateOfBirth, displayedComponents: .date)
                            .padding(12)
                            .background(Color.white.opacity(0.7))
                            .cornerRadius(8)
                            .padding(.horizontal, 40)

                        SecureField("Password", text: $password)
                            .padding(12)
                            .background(Color.white.opacity(0.7))
                            .cornerRadius(8)
                            .padding(.horizontal, 40)

                        SecureField("Confirm Password", text: $confirmPassword)
                            .padding(12)
                            .background(Color.white.opacity(0.7))
                            .cornerRadius(8)
                            .padding(.horizontal, 40)
                    }

                    Button(action: {
                        // Handle sign up logic here
                    }) {
                        Text("Sign Up")
                            .fontWeight(.medium)
                            .foregroundColor(.white)
                            .padding(.vertical, 12)
                            .frame(maxWidth: .infinity)
                            .background(Color.blue)
                            .cornerRadius(8)
                    }
                    .padding(.horizontal, 40)
                    .padding(.top, 20)

                    Spacer() // Adds a spacer that pushes all content to the top
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.black.opacity(0.3)) // Semi-transparent overlay to enhance readability
            }
            .navigationBarHidden(true)
        }
    }
}

struct CreateAccountView_Previews: PreviewProvider {
    static var previews: some View {
        CreateAccoutView()
    }
}

