import SwiftUI

struct HelpView: View {
    var body: some View {
        ZStack{
            VStack{
                
            }.frame(maxWidth : .infinity, maxHeight : .infinity)
                .background(Color(hue: 0.466, saturation: 0.232, brightness: 0.983))
            VStack(alignment: .leading){
                Text("아래의 랜덤 버튼을 눌러 오늘 뭐 먹을지 추천 받으세요")
                Text("")
                Text("`네이버 지도로 보기` 버튼을 누르면 해당 음식을 근처 음식점으로 검색합니다")
                Text("")
                Text("오늘 뭐 먹어야 할지 모를 때 사용해보세요!")
                Text("")
            }
        }
    }
}

struct HelpView_Previews: PreviewProvider {
    static var previews: some View {
        HelpView()
    }
}
