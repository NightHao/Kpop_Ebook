//
//  JIMINView.swift
//  BTS_G
//
//  Created by nighthao on 2022/10/19.
//

import SwiftUI

struct JIMINView: View {
    var body: some View {
        VStack{
            Text("朴智旻（韓語：박지민 Park Ji Min，1995年10月13日－），藝名為Jimin（韓語：지민；日语：ジミン）。韓國男藝人，韓國男子團體防彈少年團的成員，為最後一位入選防彈少年團的成員，在團內擔任主舞及領唱。")
            Image("JIMIN2")
                .resizable()
                .frame(width: 400, height: 600)
        }
    }
}

struct JIMINView_Previews: PreviewProvider {
    static var previews: some View {
        JIMINView()
    }
}
