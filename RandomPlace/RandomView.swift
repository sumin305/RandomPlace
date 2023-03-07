//
//  RandomView.swift
//  RandomPlace
//
//  Created by 이수민 on 2023/03/02.
//

import SwiftUI

struct RandomView: View {
    @State var foodmodel = foodModel()
    @State var food = "만두"
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        ZStack{
            VStack{
            }.frame(maxWidth : .infinity, maxHeight : .infinity)
                .background(Color(hue: 0.466, saturation: 0.232, brightness: 0.983))
            VStack {
                Spacer()
                Text(food)
                    .bold()
                    .font(.system(size:80))
                Button {
                    foodmodel.searchFood(food: food)
                } label: {
                    Text("네이버 지도에서 검색")
                        .foregroundColor(.green)
                        .font(.title)
                }

                Spacer()
                HStack{
                    Spacer()
                    Button {
                        food = foodmodel.getRandomFood()
                    } label: {
                        Image(systemName: "arrow.counterclockwise")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .foregroundColor(.black)
                    }
                    .padding()
                 
                }  .padding()}
        }
    }
}

struct RandomView_Previews: PreviewProvider {
    static var previews: some View {
        RandomView()
    }
}
