import Foundation
import SwiftUI
import Combine

struct URLImage: View {

    init(withURL url: URL,
         placeholder: UIImage = UIImage(),
         capInsets: EdgeInsets? = nil,
         resizingMode: Image.ResizingMode? = nil) {
        imageLoader = ImageLoader(url: url)
        self.placeholder = placeholder
        self.url = url
        self.capInsets = capInsets
        self.resizingMode = resizingMode
        image = placeholder
    }

    var body: some View {
        var i = Image(uiImage: image)

        if let capInsets = self.capInsets, let resizingMode = self.resizingMode {
            i = i.resizable(capInsets: capInsets, resizingMode: resizingMode)
        }
        return i.onReceive(imageLoader.didChange) { image in
            self.image = image
        }

    }

    func resizable(capInsets: EdgeInsets = EdgeInsets(), resizingMode: Image.ResizingMode = .stretch) -> URLImage {
        return URLImage(withURL: url, placeholder: placeholder, capInsets: capInsets, resizingMode: resizingMode)
    }

    // MARK: - Private

    @ObservedObject private var imageLoader: ImageLoader
    @State private var image: UIImage = UIImage()
    private let url: URL
    private let placeholder: UIImage
    private let capInsets: EdgeInsets?
    private let resizingMode: Image.ResizingMode?

    private class ImageLoader: ObservableObject {

        var didChange = PassthroughSubject<UIImage, Never>()

        init(url: URL) {
            let task = URLSession.shared.dataTask(with: url) { data, response, error in
                guard let data = data, let image = UIImage(data: data) else { return }
                self.didChange.send(image)
            }
            task.resume()
        }
    }
}


extension Image {

}
