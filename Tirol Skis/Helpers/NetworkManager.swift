//
//  NetworkManager.swift
//  Tirol Skis
//
//  Created by Binaya Thapa Magar on 12/04/2024.
//

import Foundation

struct NetworkManager {

    func getCreditsMessage(completion: @escaping (Result<String, Error>) -> Void) {

        guard let url = URL(string: "https://tyrolserver.onrender.com/") else {
            completion(.failure(NSError(domain: "ERROR: Invalid URL", code: 0, userInfo: nil)))
            return
        }
        
        let session = URLSession.shared
        
        let task = session.dataTask(with: url) { (data, response, error) in
            
            if let error = error {
                completion(.failure(error))
                return
            }
            
            guard let httpResponse = response as? HTTPURLResponse, (200...299).contains(httpResponse.statusCode) else {
                let statusCode = (response as? HTTPURLResponse)?.statusCode ?? 0
                completion(.failure(NSError(domain: "ERROR: HTTP Error StatusCode: \(statusCode)", code: statusCode, userInfo: nil)))
                return
            }
            
            guard let data = data else {
                completion(.failure(NSError(domain: "ERROR: Data is nil, no credits message available", code: 0, userInfo: nil)))
                return
            }
            
            do {
                
                let creditResponse = try JSONDecoder().decode(CreditResponse.self, from: data)
                completion(.success(creditResponse.message))
                
            } catch {
                completion(.failure(error))
            }
        }
        
        task.resume()
    }

}
