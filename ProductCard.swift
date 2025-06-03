import SwiftUI

struct ProductCard: View {
    var product: Product
    var addAction: () -> Void

    var body: some View {
        VStack {
            Image(product.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 100)
            Text(product.name)
                .font(.headline)
            Text("$\(product.price, specifier: "%.2f")")
                .foregroundColor(.gray)
            Button(action: addAction) {
                HStack {
                    Image(systemName: "bag.badge.plus")
                    Text("Add to Bag")
                }
                .padding(6)
                .frame(maxWidth: .infinity)
                .background(Color(hex: "#F3ABB6"))
                .foregroundColor(.white)
                .cornerRadius(10)
            }
        }
        .padding()
        .background(Color.white)
        .cornerRadius(12)
        .shadow(radius: 4)
    }
}
