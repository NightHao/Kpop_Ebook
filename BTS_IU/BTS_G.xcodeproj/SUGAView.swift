//
//  SUGAView.swift
//  BTS_G
//
//  Created by nighthao on 2022/10/19.
//

import SwiftUI

struct SUGAView: View {
    var body: some View {
        VStack{
            Text("閔玧其（韓語：민윤기 Min Yoon Gi；1993年3月9日－），藝名SUGA（슈가、日語：シュガ），韓國男藝人，為韓國男子團體防彈少年團成員，為第二位入選防彈少年團的成員。2018年取得韓國音樂著作權協會正式會員身分，認可閔玧其對韓國音樂創作的貢獻。")
            Image("SUGA2")
                .resizable()
                .frame(width: 400, height: 600)
        }
    }
}

struct SUGAView_Previews: PreviewProvider {
    static var previews: some View {
        SUGAView()
    }
}
