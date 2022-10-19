//
//  IUView.swift
//  BTS_G
//
//  Created by nighthao on 2022/10/19.
//

import SwiftUI
import AVKit
struct IUView: View {
    let videoUrl = URL(fileURLWithPath: Bundle.main.path(forResource: "iu", ofType: "mp4")!)
    let images = [Image("IU2"),Image("IU3"),Image("IU4"),Image("IU5"),Image("IU6"),Image("IU7")]
    var body: some View {
        TabView {
            VStack{
                Text("簡介")
                    .font(.title)
                    .offset(y:-10)
                Text("李知恩(韓語：이지은 Lee Ji Eun，英語：Lee Ji Eun，1993年5月16日－），藝名IU（韓語：아이유 A I Yu ），韓國創作歌手、演員。藝名「IU」是「I」和「You」的複合詞，意為「你我通過音樂成為一體」。在IU於從事歌唱工作的早期，其以帶有青春偶像性質的獨唱歌手形象為大眾所知，隨著職業生涯的發展，IU逐漸轉變為一位多才多藝的音樂工作者，甚至因對於流行文化的影響與貢獻而被視為藝術家。除了身為知名度、歌曲銷量與獎項兼具的天后級歌手之外，其本人也是實力受到認可的詞曲作家以及音樂製作人，更是在2022上半年全球「最多Google搜尋量韓國演員」中拔得頭籌。")
                    
                Image("IU1")
                .resizable()
                .frame(width: 280, height: 400)
                .offset(y:-10)
            }
            .tabItem {
                Label("簡介", systemImage: "music.house.fill")
                }
            let columns = Array(repeating: GridItem(), count: 2)
            LazyVGrid(columns: columns,spacing: 3) {
                        ForEach(images.indices, id: \.self) { item in
                            VStack {
                                images[item].resizable()
                                    .frame(width: 200, height: 230)
                            }
                        }
                    }
                .tabItem {
                Label("照片", systemImage: "person.crop.square")
                }
            NavigationView{
                VStack{
                    Link("Eight", destination: URL(string: "https://www.youtube.com/watch?v=TgOu00Mf3kI")!)
                    VideoPlayer(player: AVPlayer(url: videoUrl))
                                .frame(height: 320)
                }.offset(y:-100)
                }
            .tabItem {
                Label("MV", systemImage: "play.rectangle")
                }
            }
            .indexViewStyle(.page(backgroundDisplayMode: .always))
            
    }
}

struct IUView_Previews: PreviewProvider {
    static var previews: some View {
        IUView()
    }
}
