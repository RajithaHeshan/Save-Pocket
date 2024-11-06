import SwiftUI

struct FinanceDashboardView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    Spacer(minLength: 44)  // Increases space at the top for "Hi, Welcome Back"

                    Text("Hi, Welcome Back")
                        .font(.title)
                        .fontWeight(.bold)
                    
                    Text("Good Morning")
                        .font(.subheadline)
                        .padding(.bottom, 10)

                    HStack {
                        VStack(alignment: .leading) {
                            Text("Total Balance")
                            Text("₹57,783.00")
                                .font(.title2)
                                .fontWeight(.bold)
                        }
                        Spacer()
                        VStack(alignment: .leading) {
                            Text("Total Expense")
                            Text("₹1,187.40")
                                .font(.title2)
                                .fontWeight(.bold)
                        }
                    }
                    .padding()
                    .background(Color.white.opacity(0.7))
                    .cornerRadius(10)
                    
                    Text("30% Of Your Expenses, Looks Good.")
                        .padding(.horizontal)
                        .padding(.vertical, 5)
                        .background(Color.green.opacity(0.7))
                        .cornerRadius(10)
                    
                    RoundedRectangleRevenueView() // Custom view for revenue and savings
                    
                    VStack {
                        HStack {
                            Text("Daily")
                            Spacer()
                            Text("Weekly")
                            Spacer()
                            Text("Monthly")
                        }
                        .padding()
                        .background(Color.white.opacity(0.7))
                        .cornerRadius(10)

                        ExpenseView(icon: "dollarsign.circle", category: "Salary", time: "18:27 - April 30", amount: "₹4,000.00")
                        ExpenseView(icon: "cart.fill", category: "Groceries", time: "17:00 - April 24", amount: "-₹100.00")
                        ExpenseView(icon: "house.fill", category: "Rent", time: "8:30 - April 15", amount: "-₹674.40")
                    }

                    Spacer()
                }
                .padding(.horizontal)
            }
            .background(LinearGradient(gradient: Gradient(colors: [Color.blue.opacity(0.6), Color.green.opacity(0.6)]), startPoint: .top, endPoint: .bottom))
            .edgesIgnoringSafeArea(.all)
            .navigationTitle("Dashboard")
            .navigationBarHidden(true)
            .toolbar {
                ToolbarItem(placement: .bottomBar) {
                    BottomNavigationBar()
                }
            }
        }
    }
}

struct RoundedRectangleRevenueView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Revenue Last Week")
                Text("₹4,000.00")
                    .font(.headline)
                    .foregroundColor(.green)
            }
            .padding()
            .background(Color.white.opacity(0.7))
            .cornerRadius(10)
            
            VStack(alignment: .leading) {
                Text("Savings On Goals")
                Text("₹1,000.00")
                    .font(.headline)
                    .foregroundColor(.blue)
            }
            .padding()
            .background(Color.white.opacity(0.7))
            .cornerRadius(10)
        }
    }
}

struct BottomNavigationBar: View {
    var body: some View {
        HStack {
            Spacer()
            Image(systemName: "house.fill")
            Spacer()
            Image(systemName: "chart.bar")
            Spacer()
            Image(systemName: "arrow.swap")
            Spacer()
            Image(systemName: "tag")
            Spacer()
        }
        .padding()
        .background(Color.blue.opacity(0.6))
        .foregroundColor(.white)
        .cornerRadius(10)
    }
}

struct ExpenseView: View {
    var icon: String
    var category: String
    var time: String
    var amount: String
    
    var body: some View {
        HStack {
            Image(systemName: icon)
                .foregroundColor(.blue)
            VStack(alignment: .leading) {
                Text(category)
                    .fontWeight(.medium)
                Text(time)
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            Spacer()
            Text(amount)
                .foregroundColor(amount.contains("-") ? .red : .green)
        }
        .padding()
        .background(Color.white.opacity(0.7))
        .cornerRadius(10)
    }
}

struct FinanceDashboardView_Previews: PreviewProvider {
    static var previews: some View {
        FinanceDashboardView()
    }
}
