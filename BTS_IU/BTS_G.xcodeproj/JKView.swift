//
//  JKView.swift
//  BTS_G
//
//  Created by nighthao on 2022/10/19.
//

import SwiftUI

struct JKView: View {
    var body: some View {
        VStack{
            Text("田柾國(韓語：전정국 Jeon Jung Kook，1997年9月1日－），藝名為Jung Kook（韓語：정국；日語：ジョングク），韓國男歌手，為韓國男子團體防彈少年團中年紀最小的成員，在團內擔任主唱、領舞，於出道初期亦擔當副Rapper，為第五位入選防彈少年團的成員，練習生時期曾到美國深造舞蹈。曾獲TC Candler全球100張最帥面孔第1位")
            Image("JK2")
                .resizable()
                .frame(width: 400, height: 580)
        }
    }
}

struct JKView_Previews: PreviewProvider {
    static var previews: some View {
        JKView()
    }
}
