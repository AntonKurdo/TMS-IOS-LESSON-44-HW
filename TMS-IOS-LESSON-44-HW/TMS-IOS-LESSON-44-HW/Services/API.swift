import Foundation

class APIService {
    let requestUrl = "https://raw.githubusercontent.com/AntonKurdo/TMS-IOS-LESSON-44-HW/homework/TMS-IOS-LESSON-44-HW/TMS-IOS-LESSON-44-HW/db/db.json"
    
    func getPosts(completionHandler: (([PostModel]) -> Void)? = nil, errorHandler: ((String) -> Void)? = nil) {
        DispatchQueue.global(qos: .userInteractive).async { [weak self] in
            guard let requestURL = self?.requestUrl,
                  let url = URL(string: requestURL) else {
                errorHandler?("Wrong URL")
                return
            }
            
            let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
                guard error == nil else {
                    errorHandler?("Request Error")
                    return
                }
                
                guard let data = data else {
                    errorHandler?("Response Error")
                    return
                }
                do {
//                    guard let response = try? JSONDecoder().decode(PostsResponse.self, from: data) else {
//                        errorHandler?("Decode error")
//                        return
//                    }
                    try JSONDecoder().decode(PostsResponse.self, from: data)
//                    completionHandler?(response.posts)
                } catch {
                    print(error)
                }
         
            }
            
            task.resume()
        }
    }
    
}
