import Foundation
import UIKit

class foodModel {
    enum foodModel : String,CaseIterable{
        case 숯불고기
        case 치킨
        case 피자
        case 보쌈,족발
        case 마라탕
        case 김치찌개
        case 파스타
        case 삼겹살
        case 짜장면
        case 쌀국수
        case 돈까스
        case 떡볶이
        case 불막창
        case 제육덮밥
        case 닭발
        case 초밥
        case 육회
        case 해장국
    }
    
    func getRandomFood() -> String {
        return foodModel.allCases.randomElement()!.rawValue
    }
    
    func searchFood(food: String) -> () {
        let mapString = "nmap://search?query="+food+"&appname=practice.NaverMapView"
        let encodedStr = mapString.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!
        let appStoreURL = URL(string: "http://itunes.apple.com/app/id311867728?mt=8")!
        let myURL = URL(string: encodedStr)!
        if UIApplication.shared.canOpenURL(myURL) {
            UIApplication.shared.open(myURL)
        }else {
            UIApplication.shared.open(appStoreURL)
        }
    }
    
}
