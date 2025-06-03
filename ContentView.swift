import SwiftUI

struct ContentView: View {
    @State private var shoppingBag: [Product] = []
    let columns = [GridItem(.flexible()), GridItem(.flexible())]

    var body: some View {
        NavigationView {
            VStack {
                ScrollView {
                    LazyVGrid(columns: columns, spacing: 20) {
                        ForEach(productList) { product in
                            ProductCard(product: product, addAction: {
                                shoppingBag.append(product)
                            })
                        }
                    }
                    .padding()
                }

                NavigationLink(destination: ShoppingBagView(shoppingBag: shoppingBag)) {
                    Text("Go to Shopping Bag (\(shoppingBag.count))")
                        .fontWeight(.bold)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.pink)
                        .foregroundColor(.white)
                        .cornerRadius(12)
                }
                .padding()
            }
            .navigationTitle("Products")
            .background(Color(.systemGroupedBackground))
        }
    }
}

