//
//  JINView.swift
//  BTS_G
//
//  Created by nighthao on 2022/10/19.
//

import SwiftUI

struct JINView: View {
    var body: some View {
        VStack{
            Text("金碩珍（韓語：김석진／金碩珍 Kim Seok Jin，1992年12月4日－），藝名為Jin（韓語：진；日語：ジン），韓國男藝人，為韓國男子團體防彈少年團的成員，在團內擔任門面及副唱，為第四位入選防彈少年團的成員。")
            Image("JIN2")
                .resizable()
                .frame(width: 400, height: 600)
        }
    }
}

struct JINView_Previews: PreviewProvider {
    static var previews: some View {
        JINView()
    }
}
