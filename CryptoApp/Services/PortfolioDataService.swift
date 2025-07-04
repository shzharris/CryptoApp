//
//  PortfolioDataService.swift
//  CryptoApp
//
//  Created by HarrisShao on 7/2/25.
//

import Foundation
import CoreData


class PortfolioDataService {
    
    private let container: NSPersistentContainer
    private let containerName: String = "PortfolioModel"
    private let entityName:String = "PortfolioEntity"
    
    @Published var savedEntities: [PortfolioEntity] = []
    
    init() {
        self.container = NSPersistentContainer(name: containerName)
        container.loadPersistentStores { (_, error) in
            if let error = error {
                print("Error loading core data! \(error)")
            }
        }
        self.getPortfolio()
    }
    
    // MARK: PUBLIC
    func updatePortfolio(coin: CoinModel, amount: Double) {
        
        if let entity = savedEntities.first(where: {$0.coinID == coin.id}) {
            if amount > 0 {
                update(entity: entity, amount: amount)
            } else {
                remove(entity: entity)
            }
        } else {
            add(coin: coin, amount: amount)
        }
        
//        if let entity = savedEntities.first(where: { (saveEntity) -> Bool in
//            return saveEntity.coinID == coin.id
//        }) {
//            
//        }
        
    }
    
    
    // MARK: PRIVATE
    
    private func getPortfolio() {
        let request = NSFetchRequest<PortfolioEntity>(entityName: entityName)
        
        do {
            savedEntities = try container.viewContext.fetch(request)
        } catch let error {
            print("Error fetching protfolio entities. \(error)")
        }
    }
    
    private func add(coin:CoinModel, amount: Double) {
        let entity = PortfolioEntity(context: container.viewContext)
        entity.coinID = coin.id
        entity.amount = amount
        applyChanges()
    }
    
    private func update(entity: PortfolioEntity, amount: Double) {
        entity.amount = amount
        applyChanges()
    }
    
    private func remove(entity: PortfolioEntity) {
        container.viewContext.delete(entity)
        applyChanges()
    }
    
    private func save() {
        do {
            try container.viewContext.save()
        } catch let error {
            print("Error save protfolio entities. \(error)")
        }
    }
    
    private func applyChanges() {
        save()
        getPortfolio()
    }
    
}
