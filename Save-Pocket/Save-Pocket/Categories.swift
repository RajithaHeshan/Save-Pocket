
/*import SwiftUI

struct CategoriesView: View {
    @State private var selectedTab = 1
    let totalBalance = "RS7,783.00"
    let totalExpense = "-RS1,187.40"
    let progressValue = 0.3
    
    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                // Header
                HStack {
                    Button(action: {}) {
                        Image(systemName: "chevron.left")
                            .foregroundColor(.white)
                    }
                    Spacer()
                    Text("Categories")
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
                            Text(totalBalance)
                                .font(.title2)
                                .fontWeight(.bold)
                        }
                        
                        VStack(alignment: .leading) {
                            HStack {
                                Image(systemName: "creditcard.fill")
                                Text("Total Expense")
                                    .font(.caption)
                            }
                            Text(totalExpense)
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
                                
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color.black)
                                    .frame(width: geometry.size.width * progressValue, height: 8)
                            }
                        }
                        .frame(height: 8)
                        
                        Text("30% Of Your Expenses, Looks Good.")
                            .font(.caption)
                            .foregroundColor(.gray)
                    }
                }
                .padding()
                .background(Color.white)
                
                // Tabs
                HStack {
                    ForEach(["Income", "out", "Saving"], id: \.self) { tab in
                        Button(action: {}) {
                            Text(tab)
                                .font(.subheadline)
                                .padding(.horizontal, 24)
                                .padding(.vertical, 8)
                                .background(tab == "Saving" ? Color.green : Color.clear)
                                .foregroundColor(tab == "Saving" ? .white : .black)
                                .cornerRadius(20)
                        }
                    }
                }
                .padding(.vertical)
                
                // Categories Grid
                LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 16), count: 3), spacing: 16) {
                    CategoryItem(icon: "fork.knife", title: "Food", color: .blue)
                    CategoryItem(icon: "bus", title: "Transport", color: .blue.opacity(0.6))
                    CategoryItem(icon: "pills", title: "Medicine", color: .blue.opacity(0.6))
                    CategoryItem(icon: "cart", title: "Groceries", color: .blue.opacity(0.6))
                    CategoryItem(icon: "key", title: "Rent", color: .blue.opacity(0.6))
                    CategoryItem(icon: "gift", title: "Gifts", color: .blue.opacity(0.6))
                    CategoryItem(icon: "dollarsign.circle", title: "Savings", color: .blue.opacity(0.6))
                    CategoryItem(icon: "ticket", title: "Entertainment", color: .blue.opacity(0.6))
                    CategoryItem(icon: "plus", title: "More", color: .blue.opacity(0.6))
                }
                .padding()
                
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
            .background(Color.gray.opacity(0.1))
        }
    }
}

struct CategoryItem: View {
    let icon: String
    let title: String
    let color: Color
    
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 16)
                .fill(color)
                .frame(height: 80)
                .overlay(
                    Image(systemName: icon)
                        .font(.title2)
                        .foregroundColor(.white)
                )
            
            Text(title)
                .font(.caption)
                .foregroundColor(.black)
        }
    }
}

#Preview {
    CategoriesView()
}*/

import SwiftUI

struct CategoriesView: View {
    @State private var selectedTab = "Income"  // Changed to String to match category names
    let totalBalance = "RS7,783.00"
    let totalExpense = "-RS1,187.40"
    let progressValue = 0.3
    
    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                // Header
                HStack {
                    Button(action: {}) {
                        Image(systemName: "chevron.left")
                            .foregroundColor(.white)
                    }
                    Spacer()
                    Text("Categories")
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
                            Text(totalBalance)
                                .font(.title2)
                                .fontWeight(.bold)
                        }
                        
                        VStack(alignment: .leading) {
                            HStack {
                                Image(systemName: "creditcard.fill")
                                Text("Total Expense")
                                    .font(.caption)
                            }
                            Text(totalExpense)
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
                                
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color.black)
                                    .frame(width: geometry.size.width * progressValue, height: 8)
                            }
                        }
                        .frame(height: 8)
                        
                        Text("30% Of Your Expenses, Looks Good.")
                            .font(.caption)
                            .foregroundColor(.gray)
                    }
                }
                .padding()
                .background(Color.white)
                
                // Tabs
                HStack {
                    ForEach(["Income", "Out", "Saving"], id: \.self) { tab in
                        Button(action: {
                            self.selectedTab = tab // Update selectedTab on button tap
                        }) {
                            Text(tab)
                                .font(.subheadline)
                                .padding(.horizontal, 24)
                                .padding(.vertical, 8)
                                .background(selectedTab == tab ? Color.green : Color.clear) // Highlight selected tab
                                .foregroundColor(selectedTab == tab ? .white : .black)
                                .cornerRadius(20)
                        }
                    }
                }
                .padding(.vertical)
                
                // Categories Grid (dynamic based on selectedTab)
                Group {
                    if selectedTab == "Income" {
                        // Content for Income
                        
                        LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 16), count: 3), spacing: 16) {
                            CategoryItem(icon: "fork.knife", title: "Food", color: .blue)
                            CategoryItem(icon: "bus", title: "Transport", color: .blue.opacity(0.6))
                            CategoryItem(icon: "pills", title: "Medicine", color: .blue.opacity(0.6))
                            CategoryItem(icon: "cart", title: "Groceries", color: .blue.opacity(0.6))
                            CategoryItem(icon: "key", title: "Rent", color: .blue.opacity(0.6))
                            CategoryItem(icon: "gift", title: "Gifts", color: .blue.opacity(0.6))
                            CategoryItem(icon: "dollarsign.circle", title: "Savings", color: .blue.opacity(0.6))
                            CategoryItem(icon: "ticket", title: "Entertainment", color: .blue.opacity(0.6))
                            CategoryItem(icon: "plus", title: "More", color: .blue.opacity(0.6))
                        }
                        .padding()
                        
                    } else if selectedTab == "Out" {
                        // Content for Out
                        LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 16), count: 3), spacing: 16) {
                            CategoryItem(icon: "fork.knife", title: "Food", color: .blue)
                            CategoryItem(icon: "bus", title: "Transport", color: .blue.opacity(0.6))
                            CategoryItem(icon: "pills", title: "Medicine", color: .blue.opacity(0.6))
                            CategoryItem(icon: "cart", title: "Groceries", color: .blue.opacity(0.6))
                            CategoryItem(icon: "key", title: "Rent", color: .blue.opacity(0.6))
                            CategoryItem(icon: "gift", title: "Gifts", color: .blue.opacity(0.6))
                            CategoryItem(icon: "dollarsign.circle", title: "Savings", color: .blue.opacity(0.6))
                            CategoryItem(icon: "ticket", title: "Entertainment", color: .blue.opacity(0.6))
                            CategoryItem(icon: "plus", title: "More", color: .blue.opacity(0.6))
                        }
                        .padding()
                    } else if selectedTab == "Saving" {
                        // Content for Saving
                    }
                }
                .padding()
                
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
            .background(Color.gray.opacity(0.1))
        }
    }
}

struct CategoryItem: View {
    let icon: String
    let title: String
    let color: Color
    
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 16)
                .fill(color)
                .frame(height: 80)
                .overlay(
                    Image(systemName: icon)
                        .font(.title2)
                        .foregroundColor(.white)
                )
            
            Text(title)
                .font(.caption)
                .foregroundColor(.black)
        }
    }
}

// Preview
struct CategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesView()
    }
}
