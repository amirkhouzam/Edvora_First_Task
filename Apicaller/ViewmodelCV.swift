//
//  APiS.swift
//  Edvora First Round
//
//  Created by Amirkhouzam on 31/03/2022.
//

import Foundation
import Alamofire
import Combine

class ViewmodelCV : ObservableObject {
    
    init(){
        getrides()
    }
    @Published var ride : [RidemodelElement] = []
    @Published var upcoming : [RidemodelElement] = []
    func getupcomingdata(){
        self.ride = ride.filter{
            let dateformatter = DateFormatter()
            dateformatter.dateFormat = "MM/dd/yyyy HH:mm aa"
            let date : Date = dateformatter.date(from: $0.date ?? "") ?? Date()
            print("\(date)")
            let today = dateformatter.string(from: Date())
            return $0.date! > today
            
        }
//        }
//        let dateformatter = DateFormatter()
//        dateformatter.dateFormat = "MM/dd/yyyy HH:mm aa"
//        let date : Date = dateformatter.date(from: $0.date ?? "") ?? Date()
//        if Date() > date
            
        
    }
    func getpastdata(){
        let stringnow = "\(Date())"
    }
    func getrides(){
        
        guard let url = URL(string: url) else {return}
        AF.request(url, method: .get, parameters: nil, encoding: URLEncoding.default, headers: httpheader ).responseData { response in
            
            guard let data = response.data else {return}
            switch response.result {
                
            case .success(_):
                do{
                    let result = try JSONDecoder().decode([RidemodelElement].self, from: data)
                    self.ride = result
  
                }catch{
                    return
                }
            case .failure(_):
                return
            }
        }
        
    }
    func Getdate(datess : String? ) -> String{
        
        if let datess = datess {
            let dateFormatterGet = DateFormatter()
            dateFormatterGet.dateFormat = "MM/dd/yyyy HH:mm aa"
            let dateFormatterPrint = DateFormatter()
            dateFormatterPrint.dateFormat = "MMM dd"

            let date: NSDate? = dateFormatterGet.date(from: datess) as NSDate?
            let ns  = dateFormatterPrint.string(from: date! as Date)
            return ns
        }
        
        return ""
    }
}
