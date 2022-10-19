//
//  BTSView.swift
//  BTS_G
//
//  Created by nighthao on 2022/10/18.
//

import SwiftUI
import AVKit
struct BTSView: View {
    struct BTSmember: Identifiable{
        let id = UUID()
        var name: String = ""
        var pic: Image = Image("BTS")
        var show = false
    }
    let btsUrl = URL(fileURLWithPath: Bundle.main.path(forResource: "bts", ofType: "mp4")!)
    let url = URL(string: "https://www.youtube.com/watch?v=kTlv5_Bs8aw.mp4")!
    @State var members:[BTSmember] = [BTSmember(name: "JIN",pic: Image("JIN1")), BTSmember(name: "SUGA", pic: Image("SUGA1")),BTSmember(name: "JHOPE", pic: Image("JHOPE1")),BTSmember(name: "RM", pic: Image("RM1")),BTSmember(name: "JIMIN", pic: Image("JIMIN1")),BTSmember(name: "V", pic: Image("V1")),BTSmember(name: "JUNGKOOK", pic:Image("JK1"))]
    var body: some View {
        
        TabView {
            VStack{
                Text("簡介")
                    .font(.title)
                    .offset(y:-10)
                Text("防彈少年團（韓語：방탄소년단／防彈少年團 Bangtan Sonyeon Dan；日語：防弾少年団／ぼうだんしょうねんだん Bōdan Shōnen-Dan），常被稱為BTS，韓國男子音樂團體，隸屬BIGHIT MUSIC經紀公司旗下，為BIGHIT MUSIC第一個獨立製作培養的團體，由創辦人兼音樂製作人房時爀和製作人Pdogg栽培。[3][4] 防彈少年團在出道前就已經有許多與其他藝人的合作作品，合作藝人包括李昇基、簡美妍以及同門團體2AM，並且在趙權的SOLO專輯也有合作。")
                    
                Text("團體剛出道時，防彈少年團的涵義為「阻擋像子彈一樣的批評與時代偏見的音樂團體」，2017年7月4日則加入了「不安於現狀，朝著夢想不斷成長的青春」的涵義，原先以「防彈少年團」為英文縮寫的「BTS」（BangTan Sonyeondan），也增添了「Beyond The Scene」超越現狀的意思。")
                Image("BTS1")
                .resizable()
                .frame(width: 400, height: 300)
                .offset(y:-10)
            }
            .tabItem {
                Label("主頁", systemImage: "music.house.fill")
                }
            let columns = Array(repeating: GridItem(), count: 2)
            
                ScrollView{
                    
                        LazyVGrid(columns: columns) {
                            ForEach(members.indices, id: \.self) { item in
                                
                                VStack {
                                    Button((members[item].name)){
                                        members[item].show = true
                                    }
                                    .sheet(isPresented: $members[item].show){
                                        if item == 0{
                                            JINView()
                                        }
                                        else if item == 1{
                                            SUGAView()
                                        }
                                        else if item == 2{
                                            JHOPEView()
                                        }
                                        else if item == 3{
                                            RMView()
                                        }
                                        else if item == 4{
                                            JIMINView()
                                        }
                                        else if item == 5{
                                            VView()
                                        }
                                        else if item == 6{
                                            JKView()
                                        }
                                    }
                                    members[item].pic
                                        .resizable()
                                        .frame(width: 150, height: 200)
                                }
                            }
                        }
                }
            NavigationView{
                VStack{
                    Link("Mic Drop", destination: URL(string: "https://www.youtube.com/watch?v=kTlv5_Bs8aw")!)
                    VideoPlayer(player: AVPlayer(url: btsUrl))
                                .frame(height: 320)
                }.offset(y:-100)
                }
            }
            .tabViewStyle(.page)
            .indexViewStyle(.page(backgroundDisplayMode: .always))
            
    }
}

struct BTSView_Previews: PreviewProvider {
    static var previews: some View {
        BTSView()
    }
}
