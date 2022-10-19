//
//  JHOPEView.swift
//  BTS_G
//
//  Created by nighthao on 2022/10/19.
//

import SwiftUI

struct JHOPEView: View {
    var body: some View {
        VStack{
            Text("鄭號錫（韓語：정호석 Jung Ho Seok，1994年2月18日－），韓國男藝人、歌手、舞者，藝名 j-hope（韓語：제이홉 Jei Hob；日語：ジェイホープ Jeihōpu），為韓國男子團體「防彈少年團」的成員，在團內擔任副Rapper、主舞及舞蹈隊長，為第三位入選防彈少年團的成員。2020年升格為韓國音樂著作權協會的正式會員。")
            Image("JHOPE2")
                .resizable()
                .frame(width: 400, height: 580)
        }
    }
}

struct JHOPEView_Previews: PreviewProvider {
    static var previews: some View {
        JHOPEView()
    }
}
