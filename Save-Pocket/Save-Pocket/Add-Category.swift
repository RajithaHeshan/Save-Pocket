import SwiftUI

struct NewCategoryView: View {
    @State private var categoryName: String = ""
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack(spacing: 0) {
            // Header
            HStack {
                Button(action: { self.presentationMode.wrappedValue.dismiss() }) {
                    Image(systemName: "chevron.left")
                        .foregroundColor(.white)
                }
                Spacer()
                Text("Savings")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                Spacer()
                Button(action: {}) {
                    Image(systemName: "bell")
                        .foregroundColor(.white)
                }
            }
            .padding()
            .background(Color.green)
            
            // Balance Section
            VStack(spacing: 16) {
                HStack(spacing: 20) {
                    VStack(alignment: .leading) {
                        HStack {
                            Image(systemName: "dollarsign.circle.fill")
                            Text("Total Balance")
                                .font(.caption)
                        }
                        Text("RS7,783.00")
                            .font(.title2)
                            .fontWeight(.bold)
                    }
                    
                    VStack(alignment: .leading) {
                        HStack {
                            Image(systemName: "creditcard.fill")
                            Text("Total Expense")
                                .font(.caption)
                        }
                        Text("RS1,187.40")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(.blue)
                    }
                }
                
                // Progress Bar
                VStack(alignment: .leading, spacing: 4) {
                    GeometryReader { geometry in
                        ZStack(alignment: .leading) {
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color.gray.opacity(0.2))
                                .frame(height: 8)
                            
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color.black)
                                .frame(width: geometry.size.width * 0.3, height: 8)
                        }
                    }
                    .frame(height: 8)
                    .overlay(
                        Text("$20,000.00")
                            .font(.caption)
                            .foregroundColor(.gray)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    )
                    
                    Text("30% Of Your Expenses, Looks Good.")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
            }
            .padding()
            .background(Color.white)
            
            // New Category Form
            VStack(spacing: 20) {
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color.white)
                    .frame(height: 250)
                    .shadow(radius: 5)
                    .overlay(
                        VStack(spacing: 20) {
                            Text("New Category")
                                .font(.title2)
                                .fontWeight(.bold)
                            
                            TextField("Write...", text: $categoryName)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .padding(.horizontal)
                            
                            Button(action: {}) {
                                Text("Save")
                                    .fontWeight(.semibold)
                                    .foregroundColor(.white)
                                    .frame(maxWidth: .infinity)
                                    .padding()
                                    .background(Color.green)
                                    .cornerRadius(10)
                            }
                            .padding(.horizontal)
                            
                            Button(action: { self.presentationMode.wrappedValue.dismiss() }) {
                                Text("Cancel")
                                    .fontWeight(.semibold)
                                    .foregroundColor(.black)
                                    .frame(maxWidth: .infinity)
                                    .padding()
                                    .background(Color.green.opacity(0.1))
                                    .cornerRadius(10)
                            }
                            .padding(.horizontal)
                        }
                        .padding()
                    )
                
                Button(action: {}) {
                    Text("Add More")
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 120)
                        .padding()
                        .background(Color.green)
                        .cornerRadius(10)
                }
                
                Spacer()
                
                // Bottom Navigation
                HStack {
                    ForEach(["house", "chart.bar", "arrow.left.arrow.right", "square.3.layers.3d", "person"], id: \.self) { icon in
                        Button(action: {}) {
                            Image(systemName: icon)
                                .font(.title3)
                                .foregroundColor(icon == "square.3.layers.3d" ? .green : .gray)
                        }
                        .frame(maxWidth: .infinity)
                    }
                }
                .padding()
                .background(Color.white)
                .shadow(radius: 2)
            }
            .padding(.top)
            .background(Color.gray.opacity(0.1))
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct NewCategoryView_Previews: PreviewProvider {
    static var previews: some View {
        NewCategoryView()
    }
}
