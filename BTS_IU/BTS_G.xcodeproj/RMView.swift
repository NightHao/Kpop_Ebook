//
//  RMView.swift
//  BTS_G
//
//  Created by nighthao on 2022/10/19.
//

import SwiftUI

struct RMView: View {
    var body: some View {
        VStack{
            Text("金南俊 韓語：김남준 Kim Nam Joon，1994年9月12日－），藝名RM（韓語：알엠；日語：アールエム）。韓國男藝人，為韓國男子團體防彈少年團的隊長，在團內擔任主Rapper，為第一位入選防彈少年團的成員。")
            Image("RM2")
                .resizable()
                .frame(width: 400, height: 600)
        }
    }
}

struct RMView_Previews: PreviewProvider {
    static var previews: some View {
        RMView()
    }
}
