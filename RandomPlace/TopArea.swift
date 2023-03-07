//
//  TopArea.swift
//  RandomPlace
//
//  Created by 이수민 on 2023/03/02.
//

import SwiftUI

struct TopArea: View {
    var body: some View {
        HStack{
            Button {
                print("df")
            } label: {
                Text("hi")
                    .foregroundColor(.black)
            }
        }.padding()
     

    }
}

struct TopArea_Previews: PreviewProvider {
    static var previews: some View {
        TopArea()
    }
}
