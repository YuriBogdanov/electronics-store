//import SwiftUI
//
//@main
//struct ElectroShopApp: App {
//    var body: some Scene {
//        WindowGroup {
//            ContentView()
//        }
//    }
//}
//
//// MARK: - Navigation Routes
//enum Route: Hashable {
//    case register
//    case login
//    case main
//}
//
//// MARK: - Root ContentView with NavigationStack
//struct ContentView: View {
//    @State private var path: [Route] = []
//
//    var body: some View {
//        NavigationStack(path: $path) {
//            EntrySelectionView(path: $path)
//                .navigationDestination(for: Route.self) { route in
//                    switch route {
//                    case .register:
//                        RegisterView(path: $path)
//                    case .login:
//                        LoginView(path: $path)
//                    case .main:
//                        MainView()
//                    }
//                }
//        }
//    }
//}
//
//// MARK: - Entry Selection Screen
//struct EntrySelectionView: View {
//    @Binding var path: [Route]
//
//    var body: some View {
//        VStack(spacing: 500){
//            Text("ElectrO")
//                .font(.largeTitle)
//                .fontWeight(.bold)
//                .foregroundStyle(.cyan)
//            VStack(spacing: 20) {
//                
//                Text("Добро пожаловать")
//                    .font(.largeTitle)
//                    .fontWeight(.bold)
//                
//                
//                Button("Зарегистрироваться") {
//                    path.append(.register)
//                }
//                .buttonStyle(.borderedProminent)
//                
//                Button("Войти") {
//                    path.append(.login)
//                }
//                .buttonStyle(.borderedProminent)
//                .tint(.green)
//            }
//            .padding()
//        }
//    }
//}
//
//// MARK: - Register Screen
//struct RegisterView: View {
//    @Binding var path: [Route]
//    @State private var username = ""
//    @State private var email = ""
//    @State private var password = ""
//
//    var body: some View {
//        VStack(spacing: 16) {
//            Text("Регистрация")
//                .font(.title2)
//                .fontWeight(.semibold)
//
//            TextField("Имя пользователя", text: $username)
//                .textFieldStyle(.roundedBorder)
//
//            TextField("Email", text: $email)
//                .keyboardType(.emailAddress)
//                .textFieldStyle(.roundedBorder)
//
//            SecureField("Пароль", text: $password)
//                .textFieldStyle(.roundedBorder)
//
//            Button("Зарегистрироваться") {
//                // TODO: добавьте логику регистрации здесь
//                path.append(.main)
//            }
//            .frame(maxWidth: .infinity)
//            .padding()
//            .background(Color.blue)
//            .foregroundColor(.white)
//            .cornerRadius(8)
//
//            Spacer()
//        }
//        .padding()
//    }
//}
//
//// MARK: - Login Screen
//struct LoginView: View {
//    @Binding var path: [Route]
//    @State private var email = ""
//    @State private var password = ""
//
//    var body: some View {
//        VStack(spacing: 16) {
//            Text("Вход")
//                .font(.title2)
//                .fontWeight(.semibold)
//
//            TextField("Email", text: $email)
//                .keyboardType(.emailAddress)
//                .textFieldStyle(.roundedBorder)
//
//            SecureField("Пароль", text: $password)
//                .textFieldStyle(.roundedBorder)
//
//            Button("Войти") {
//                // TODO: добавьте логику входа здесь
//                path.append(.main)
//            }
//            .frame(maxWidth: .infinity)
//            .padding()
//            .background(Color.green)
//            .foregroundColor(.white)
//            .cornerRadius(8)
//
//            Spacer()
//        }
//        .padding()
//    }
//}
//
//// MARK: - Product Model
//struct Product: Identifiable {
//    let id = UUID()
//    let name: String
//    let price: String
//    let imageURL: URL
//
//    static let sample: [Product] = [
//        Product(name: "iPhone 14", price: "$799", imageURL: URL(string: "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone-14-select-202209?wid=940&hei=1112&fmt=png-alpha&.png")!),
//        Product(name: "iPhone 14 Plus", price: "$899", imageURL: URL(string: "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone-14-plus-select-202209?wid=940&hei=1112&fmt=png-alpha&.png")!),
//        Product(name: "iPhone 14 Pro", price: "$999", imageURL: URL(string: "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone-14-pro-select-202209?wid=940&hei=1112&fmt=png-alpha&.png")!),
//        Product(name: "iPhone 14 Pro Max", price: "$1099", imageURL: URL(string: "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone-14-pro-max-select-202209?wid=940&hei=1112&fmt=png-alpha&.png")!),
//        Product(name: "iPhone 13", price: "$699", imageURL: URL(string: "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone-13-select-202109?wid=940&hei=1112&fmt=png-alpha&.png")!),
//        Product(name: "iPhone 13 Pro", price: "$899", imageURL: URL(string: "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone-13-pro-select-202109?wid=940&hei=1112&fmt=png-alpha&.png")!),
//        Product(name: "iPhone 12", price: "$599", imageURL: URL(string: "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone-12-select-202104?wid=940&hei=1112&fmt=png-alpha&.png")!),
//        Product(name: "iPhone 12 Pro", price: "$799", imageURL: URL(string: "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone-12-pro-select-202104?wid=940&hei=1112&fmt=png-alpha&.png")!),
//        Product(name: "iPhone SE", price: "$429", imageURL: URL(string: "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone-se-select-202203?wid=940&hei=1112&fmt=png-alpha&.png")!),
//        Product(name: "iPhone 11", price: "$499", imageURL: URL(string: "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone-11-select-2019-family?wid=940&hei=1112&fmt=png-alpha&.png")!)
//    ]
//}
//
//// MARK: - Main (Home) Screen
//struct MainView: View {
//    private let columns = [
//        GridItem(.flexible()),
//        GridItem(.flexible())
//    ]
//
//    var body: some View {
//        VStack(alignment: .leading) {
//            Text("Каталог iPhone")
//                .font(.largeTitle)
//                .fontWeight(.bold)
//                .padding(.horizontal)
//
//            ScrollView {
//                LazyVGrid(columns: columns, spacing: 16) {
//                    ForEach(Product.sample) { product in
//                        VStack {
//                            AsyncImage(url: product.imageURL) { phase in
//                                switch phase {
//                                case .empty:
//                                    ProgressView()
//                                        .frame(height: 150)
//                                case .success(let image):
//                                    image
//                                        .resizable()
//                                        .scaledToFit()
//                                        .frame(height: 150)
//                                case .failure:
//                                    Image(systemName: "photo")
//                                        .resizable()
//                                        .scaledToFit()
//                                        .frame(height: 150)
//                                @unknown default:
//                                    EmptyView()
//                                }
//                            }
//                            Text(product.name)
//                                .font(.headline)
//                                .lineLimit(1)
//                            Text(product.price)
//                                .font(.subheadline)
//                                .foregroundColor(.secondary)
//                        }
//                        .padding()
//                        .background(RoundedRectangle(cornerRadius: 10).fill(Color(.systemGray6)))
//                    }
//                }
//                .padding(.horizontal)
//            }
//        }
//        .padding(.top)
//    }
//}
//
//// MARK: - Preview
//struct AccountScreens_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
