import SwiftUI

struct AccountBalanceView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Spacer(minLength: 59
                )
                
                // Center-aligned "Account Balance" Header
                HStack {
                    Spacer()
                    Text("Account Balance")
                        .font(.headline)
                    Spacer()
                    Image(systemName: "bell")
                }
                .padding(.top)

                // Total Balance and Expense Section
                HStack {
                    VStack(alignment: .leading) {
                        Text("Total Balance")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                        Text("₹7,783.00")
                            .font(.title)
                            .fontWeight(.bold)
                    }
                    Spacer()
                    VStack(alignment: .leading) {
                        Text("Total Expense")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                        Text("₹1,187.40")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.blue)
                    }
                }
                .padding()
                .background(Color.white.opacity(0.7))
                .cornerRadius(10)

                // Progress bar for spending with Home-Page styled text
                Text("30% Of Your Expenses, Looks Good.")
                    .padding(.horizontal)
                    .padding(.vertical, 5)
                    .background(Color.green.opacity(0.7))
                    .cornerRadius(10)
                
                //RoundedRectangleRevenueView() // Custom view for revenue and savings

                // Income and Expense Cards
                HStack(spacing: 10) {
                    VStack {
                        Text("Income")
                        Text("$4,000.00")
                            .font(.headline)
                            .foregroundColor(.green)
                    }
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.white.opacity(0.7))
                    .cornerRadius(10)
                    
                    VStack {
                        Text("Expense")
                        Text("$1,187.40")
                            .font(.headline)
                            .foregroundColor(.red)
                    }
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.white.opacity(0.7))
                    .cornerRadius(10)
                }
                .padding(.horizontal)

                // Transaction List
                VStack(alignment: .leading, spacing: 10) {
                    HStack {
                        Text("Transactions")
                            .font(.headline)
                        Spacer()
                        Text("See all")
                            .font(.subheadline)
                            .foregroundColor(.blue)
                    }
                    .padding(.horizontal)

                    // Sample Transactions
                    TransactionRow(icon: "dollarsign.circle", category: "Salary", time: "18:27 - April 30", amount: "₹4,000.00", isExpense: false)
                    TransactionRow(icon: "cart.fill", category: "Groceries", time: "17:00 - April 24", amount: "-₹100.00", isExpense: true)
                    TransactionRow(icon: "house.fill", category: "Rent", time: "8:30 - April 15", amount: "-₹674.40", isExpense: true)
                    TransactionRow(icon: "car.fill", category: "Transport", time: "9:30 - April 08", amount: "-₹4.13", isExpense: true)
                }
                .padding()
                .background(Color.white.opacity(0.7))
                .cornerRadius(10)
                
                Spacer()
                
                // Bottom Navigation Bar
                BottomNavigationBar()
            }
            .padding()
            .background(LinearGradient(gradient: Gradient(colors: [Color.green.opacity(0.7), Color.blue.opacity(0.6)]), startPoint: .top, endPoint: .bottom))
            .edgesIgnoringSafeArea(.all)
            .navigationBarHidden(true)
        }
    }
}

// Transaction Row for each transaction
struct TransactionRow: View {
    var icon: String
    var category: String
    var time: String
    var amount: String
    var isExpense: Bool

    var body: some View {
        HStack {
            Image(systemName: icon)
                .foregroundColor(.blue)
                .padding()
                .background(Color.gray.opacity(0.2))
                .clipShape(Circle())
            
            VStack(alignment: .leading) {
                Text(category)
                    .font(.body)
                    .fontWeight(.medium)
                Text(time)
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            
            Spacer()
            
            Text(amount)
                .foregroundColor(isExpense ? .red : .green)
        }
        .padding(.vertical, 5)
    }
}

// Bottom Navigation Bar
struct newBottomNavigationBar: View {
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
            Image(systemName: "person.fill")
            Spacer()
        }
        .padding()
        .background(Color.blue.opacity(0.6))
        .foregroundColor(.white)
        .cornerRadius(10)
    }
}

struct AccountBalanceView_Previews: PreviewProvider {
    static var previews: some View {
        AccountBalanceView()
    }
}
