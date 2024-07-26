import SwiftUI
import WebKit

struct ContentView: View {
    @State private var urlToLoad: URL? = URL(string: "https://www.turkhackteam.org")

    var body: some View {
        VStack {
            CustomWebView(url: urlToLoad)
                .padding(.top, 48)
                .edgesIgnoringSafeArea(.all)

            Spacer()

            HStack {
                
                Button(action: {
                    urlToLoad = URL(string: "https://www.turkhackteam.org")
                }) {
                    VStack {
                        Image(systemName: "house.fill")
                            .font(.system(size: 20))
                            .foregroundColor(.white)
                        Text("Home")
                            .font(.system(size: 14))
                            .foregroundColor(.white)
                    }
                    .padding(8)
                    .background(Color.gray.opacity(0.7))
                    .cornerRadius(8)
                }
                .padding(.leading, 5)

                
                Spacer(minLength: 5)

                
                Button(action: {
                    urlToLoad = URL(string: "https://www.turkhackteam.org/blog")
                }) {
                    VStack {
                        Image(systemName: "book.fill")
                            .font(.system(size: 20))
                            .foregroundColor(.white)
                        Text("Blog")
                            .font(.system(size: 14))
                            .foregroundColor(.white)
                    }
                    .padding(8)
                    .background(Color.gray.opacity(0.7))
                    .cornerRadius(8)
                }

                
                Button(action: {
                    urlToLoad = URL(string: "https://ctf.turkhackteam.org/tr/")
                }) {
                    VStack {
                        Image(systemName: "lock.fill")
                            .font(.system(size: 20))
                            .foregroundColor(.white)
                        Text("CTF")
                            .font(.system(size: 14))
                            .foregroundColor(.white)
                    }
                    .padding(8)
                    .background(Color.gray.opacity(0.7))
                    .cornerRadius(8)
                }

               
                Button(action: {
                    urlToLoad = URL(string: "https://intel.turkhackteam.org")
                }) {
                    VStack {
                        Image(systemName: "eye.fill")
                            .font(.system(size: 20))
                            .foregroundColor(.white)
                        Text("Intel")
                            .font(.system(size: 14))
                            .foregroundColor(.white)
                    }
                    .padding(8)
                    .background(Color.gray.opacity(0.7))
                    .cornerRadius(8)
                }
                
                
                Spacer(minLength: 5)

                
                Button(action: {
                    urlToLoad = URL(string: "https://www.turkhackteam.org/account")
                }) {
                    VStack {
                        Image(systemName: "person.fill")
                            .font(.system(size: 20))
                            .foregroundColor(.white)
                        Text("Profile")
                            .font(.system(size: 14))
                            .foregroundColor(.white)
                    }
                    .padding(8)
                    .background(Color.gray.opacity(0.7))
                    .cornerRadius(8)
                }
                .padding(.trailing, 5)
            }
            .padding(.bottom, 20)
        }
        .background(Color.black)
    }
}

struct CustomWebView: UIViewRepresentable {
    let url: URL?

    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let url = url {
            uiView.load(URLRequest(url: url))
        }
    }
}

#Preview {
    ContentView()
}
