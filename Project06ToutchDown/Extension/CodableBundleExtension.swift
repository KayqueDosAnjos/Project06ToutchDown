//
//  CodableBundleExtension.swift
//  Project06ToutchDown
//
//  Created by Kayque Dos anjos on 13/09/24.
//

import Foundation

extension Bundle {
  func decode<T: Codable>(_ file: String) -> T {
    // 1. Localizar o arquivo JSON
    guard let url = self.url(forResource: file, withExtension: nil) else {
      fatalError("Failed to locate \(file) in bundle.")
    }
    
    // 2. Criar uma propriedade para a base de dados
    guard let data = try? Data(contentsOf: url) else {
      fatalError("Failed to load \(file) from bundle.")
    }
    
    // 3. Criar um decodificador
    let decoder = JSONDecoder()
    
    // 4. Criar uma propriedade para o decodificador de dados
    guard let decodedData = try? decoder.decode(T.self, from: data) else {
      fatalError("Failed to decode \(file) from bundle.")
    }
    
    // 5. Retornar um dado pronto para ser utilizado
    return decodedData
  }
}
