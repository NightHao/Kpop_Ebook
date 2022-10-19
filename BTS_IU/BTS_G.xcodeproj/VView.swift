//
//  VView.swift
//  BTS_G
//
//  Created by nighthao on 2022/10/19.
//

import SwiftUI

struct VView: View {
    var body: some View {
        VStack{
            Text("金泰亨（韓語：김태형 Kim Tae Hyung，1995年12月30日－），藝名V（韓語：뷔；日語：ヴィ）。韓國男藝人，為韓國男子團體防彈少年團的成員，在團內擔任副唱。曾拿過TC Candler全球100張最帥面孔第1位。")
            Image("Vtest")
                .resizable()
                .frame(width: 400, height: 600)
        }
    }
}

struct VView_Previews: PreviewProvider {
    static var previews: some View {
        VView()
    }
}
