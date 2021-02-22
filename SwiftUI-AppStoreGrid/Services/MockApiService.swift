//
//  MockApiService.swift
//  SwiftUI-AppStoreGrid
//
//  Created by Karthik on 22/02/21.
//

import Foundation

final class MockApiService: ApiService {
    func getApps(completionBlock: @escaping (Feed) -> Void) {
        let data = mockJSON.data(using: .utf8)!
        do {
            let feed = try JSONDecoder().decode(ApiResponse.self, from: data).feed
            completionBlock(feed)
        } catch {
            print("Error decoding fetched data: \(error.localizedDescription)")
        }
    }
}

private extension MockApiService {
    var mockJSON: String {
        """
        {"feed":{"title":"Top Free iPhone Apps","id":"https://rss.itunes.apple.com/api/v1/us/ios-apps/top-free/all/25/explicit.json","author":{"name":"iTunes Store","uri":"http://wwww.apple.com/us/itunes/"},"links":[{"self":"https://rss.itunes.apple.com/api/v1/us/ios-apps/top-free/all/25/explicit.json"},{"alternate":"https://itunes.apple.com/WebObjects/MZStore.woa/wa/viewTop?genreId=36\\u0026popId=27"}],"copyright":"Copyright © 2018 Apple Inc. All rights reserved.","country":"us","icon":"http://itunes.apple.com/favicon.ico","updated":"2021-02-21T01:59:01.000-08:00","results":[{"artistName":"Rollic Games","id":"1545306176","releaseDate":"2020-12-28","name":"High Heels!","kind":"iosSoftware","copyright":"© UNCOSOFT 2020","artistId":"1452111779","artistUrl":"https://apps.apple.com/us/developer/rollic-games/id1452111779","artworkUrl100":"https://is5-ssl.mzstatic.com/image/thumb/Purple114/v4/c7/77/ef/c777ef4e-3566-ce66-b4ca-f4465075a938/AppIcon-0-0-1x_U007emarketing-0-0-0-5-0-0-sRGB-0-0-0-GLES2_U002c0-512MB-85-220-0-0.png/200x200bb.png","genres":[{"genreId":"6014","name":"Games","url":"https://itunes.apple.com/us/genre/id6014"},{"genreId":"7013","name":"Racing","url":"https://itunes.apple.com/us/genre/id7013"}],"url":"https://apps.apple.com/us/app/high-heels/id1545306176"},{"artistName":"TikTok Pte. Ltd.","id":"835599320","releaseDate":"2014-04-02","name":"TikTok - Trends Start Here","kind":"iosSoftware","copyright":"© TikTok Inc.","artistId":"1322881000","artistUrl":"https://apps.apple.com/us/developer/tiktok-pte-ltd/id1322881000","artworkUrl100":"https://is2-ssl.mzstatic.com/image/thumb/Purple114/v4/b0/24/77/b0247741-7213-2321-7474-447627e215bd/AppIcon_TikTok-0-0-1x_U007emarketing-0-0-0-7-0-0-sRGB-0-0-0-GLES2_U002c0-512MB-85-220-0-0.png/200x200bb.png","genres":[{"genreId":"6016","name":"Entertainment","url":"https://itunes.apple.com/us/genre/id6016"},{"genreId":"6008","name":"Photo \\u0026 Video","url":"https://itunes.apple.com/us/genre/id6008"}],"url":"https://apps.apple.com/us/app/tiktok-trends-start-here/id835599320"},{"artistName":"Voodoo","id":"1538758103","releaseDate":"2020-11-09","name":"Lumbercraft","kind":"iosSoftware","copyright":"© 2021, Noor Creative LLC","artistId":"714804730","artistUrl":"https://apps.apple.com/us/developer/voodoo/id714804730","artworkUrl100":"https://is1-ssl.mzstatic.com/image/thumb/Purple114/v4/35/41/79/354179da-e45d-a1ef-5c65-b6bcc215ac35/AppIcon-0-0-1x_U007emarketing-0-0-0-7-0-0-sRGB-0-0-0-GLES2_U002c0-512MB-85-220-0-0.png/200x200bb.png","genres":[{"genreId":"6014","name":"Games","url":"https://itunes.apple.com/us/genre/id6014"}],"url":"https://apps.apple.com/us/app/lumbercraft/id1538758103"},{"artistName":"Google LLC","id":"544007664","releaseDate":"2012-09-11","name":"YouTube: Watch, Listen, Stream","kind":"iosSoftware","copyright":"© 2020 Google Inc.","artistId":"281956209","contentAdvisoryRating":"Explicit","artistUrl":"https://apps.apple.com/us/developer/google-llc/id281956209","artworkUrl100":"https://is4-ssl.mzstatic.com/image/thumb/Purple124/v4/56/99/53/569953de-69b9-76b1-98bd-a25f99ccd8df/logo_youtube_color-0-0-1x_U007emarketing-0-0-0-6-0-0-sRGB-0-0-0-GLES2_U002c0-512MB-85-220-0-0.png/200x200bb.png","genres":[{"genreId":"6008","name":"Photo \\u0026 Video","url":"https://itunes.apple.com/us/genre/id6008"},{"genreId":"6016","name":"Entertainment","url":"https://itunes.apple.com/us/genre/id6016"}],"url":"https://apps.apple.com/us/app/youtube-watch-listen-stream/id544007664"},{"artistName":"Instagram, Inc.","id":"389801252","releaseDate":"2010-10-06","name":"Instagram","kind":"iosSoftware","copyright":"© 2018 Instagram, LLC.","artistId":"389801255","artistUrl":"https://apps.apple.com/us/developer/instagram-inc/id389801255","artworkUrl100":"https://is3-ssl.mzstatic.com/image/thumb/Purple114/v4/30/a3/ae/30a3aeb8-96c2-470e-b22c-8b722e09680d/Prod-0-0-1x_U007emarketing-0-0-0-7-0-0-sRGB-0-0-0-GLES2_U002c0-512MB-85-220-0-0.png/200x200bb.png","genres":[{"genreId":"6008","name":"Photo \\u0026 Video","url":"https://itunes.apple.com/us/genre/id6008"},{"genreId":"6005","name":"Social Networking","url":"https://itunes.apple.com/us/genre/id6005"}],"url":"https://apps.apple.com/us/app/instagram/id389801252"},{"artistName":"Facebook, Inc.","id":"284882215","releaseDate":"2019-02-05","name":"Facebook","kind":"iosSoftware","copyright":"© Facebook, Inc.","artistId":"284882218","artistUrl":"https://apps.apple.com/us/developer/facebook-inc/id284882218","artworkUrl100":"https://is1-ssl.mzstatic.com/image/thumb/Purple124/v4/ec/2f/a5/ec2fa5b7-db5c-2656-68f2-492cda200d6f/Icon-Production-0-0-1x_U007emarketing-0-0-0-7-0-0-sRGB-0-0-0-GLES2_U002c0-512MB-85-220-0-0.png/200x200bb.png","genres":[{"genreId":"6005","name":"Social Networking","url":"https://itunes.apple.com/us/genre/id6005"}],"url":"https://apps.apple.com/us/app/facebook/id284882215"},{"artistName":"Snap, Inc.","id":"447188370","releaseDate":"2011-07-13","name":"Snapchat","kind":"iosSoftware","copyright":"© Snap Inc.","artistId":"446889612","artistUrl":"https://apps.apple.com/us/developer/snap-inc/id446889612","artworkUrl100":"https://is5-ssl.mzstatic.com/image/thumb/Purple124/v4/88/b6/f9/88b6f99b-e824-4421-d658-eab35c6b3c84/AppIcon-0-1x_U007emarketing-0-5-0-0-85-220.png/200x200bb.png","genres":[{"genreId":"6008","name":"Photo \\u0026 Video","url":"https://itunes.apple.com/us/genre/id6008"},{"genreId":"6005","name":"Social Networking","url":"https://itunes.apple.com/us/genre/id6005"}],"url":"https://apps.apple.com/us/app/snapchat/id447188370"},{"artistName":"Facebook, Inc.","id":"454638411","releaseDate":"2011-08-09","name":"Messenger","kind":"iosSoftware","copyright":"© Facebook, Inc.","artistId":"284882218","artistUrl":"https://apps.apple.com/us/developer/facebook-inc/id284882218","artworkUrl100":"https://is3-ssl.mzstatic.com/image/thumb/Purple114/v4/31/ca/94/31ca94ed-9697-2f5c-431c-cc43c4a32f9c/AppIcon-0-1x_U007emarketing-0-7-0-0-sRGB-85-220.png/200x200bb.png","genres":[{"genreId":"6005","name":"Social Networking","url":"https://itunes.apple.com/us/genre/id6005"},{"genreId":"6007","name":"Productivity","url":"https://itunes.apple.com/us/genre/id6007"}],"url":"https://apps.apple.com/us/app/messenger/id454638411"},{"artistName":"Square, Inc.","id":"711923939","releaseDate":"2013-10-16","name":"Cash App","kind":"iosSoftware","copyright":"© 2013–2020 Square, Inc.","artistId":"335393791","artistUrl":"https://apps.apple.com/us/developer/square-inc/id335393791","artworkUrl100":"https://is2-ssl.mzstatic.com/image/thumb/Purple114/v4/19/a3/b0/19a3b0f2-1f35-11a8-7824-055ed255ae64/AppIcon-0-0-1x_U007emarketing-0-0-0-7-0-0-sRGB-0-0-0-GLES2_U002c0-512MB-85-220-0-0.png/200x200bb.png","genres":[{"genreId":"6015","name":"Finance","url":"https://itunes.apple.com/us/genre/id6015"},{"genreId":"6000","name":"Business","url":"https://itunes.apple.com/us/genre/id6000"}],"url":"https://apps.apple.com/us/app/cash-app/id711923939"},{"artistName":"DoorDash, Inc.","id":"719972451","releaseDate":"2013-10-10","name":"DoorDash - Food Delivery","kind":"iosSoftware","copyright":"© 2020 DoorDash","artistId":"719972454","artistUrl":"https://apps.apple.com/us/developer/doordash-inc/id719972454","artworkUrl100":"https://is5-ssl.mzstatic.com/image/thumb/Purple124/v4/f5/07/bf/f507bf29-c564-272f-01d6-0e2f672f021f/AppIcon-0-0-1x_U007emarketing-0-4-0-85-220.png/200x200bb.png","genres":[{"genreId":"6023","name":"Food \\u0026 Drink","url":"https://itunes.apple.com/us/genre/id6023"},{"genreId":"6012","name":"Lifestyle","url":"https://itunes.apple.com/us/genre/id6012"}],"url":"https://apps.apple.com/us/app/doordash-food-delivery/id719972451"},{"artistName":"Netflix, Inc.","id":"363590051","releaseDate":"2010-04-01","name":"Netflix","kind":"iosSoftware","copyright":"© 2020 Netflix, Inc.","artistId":"363590054","artistUrl":"https://apps.apple.com/us/developer/netflix-inc/id363590054","artworkUrl100":"https://is2-ssl.mzstatic.com/image/thumb/Purple124/v4/f6/53/b7/f653b794-e251-a91c-c7f0-b7975623fe75/AppIcon-1x_U007emarketing-0-10-0-0-85-220-0.png/200x200bb.png","genres":[{"genreId":"6016","name":"Entertainment","url":"https://itunes.apple.com/us/genre/id6016"},{"genreId":"6012","name":"Lifestyle","url":"https://itunes.apple.com/us/genre/id6012"}],"url":"https://apps.apple.com/us/app/netflix/id363590051"},{"artistName":"Google LLC","id":"422689480","releaseDate":"2011-11-02","name":"Gmail - Email by Google","kind":"iosSoftware","copyright":"© Google LLC","artistId":"281956209","artistUrl":"https://apps.apple.com/us/developer/google-llc/id281956209","artworkUrl100":"https://is4-ssl.mzstatic.com/image/thumb/Purple114/v4/d8/14/b3/d814b3f2-5074-6afc-18e3-7f825a7e0cbf/contsched.vyuthzlz.png/200x200bb.png","genres":[{"genreId":"6007","name":"Productivity","url":"https://itunes.apple.com/us/genre/id6007"},{"genreId":"6005","name":"Social Networking","url":"https://itunes.apple.com/us/genre/id6005"}],"url":"https://apps.apple.com/us/app/gmail-email-by-google/id422689480"},{"artistName":"Google LLC","id":"585027354","releaseDate":"2012-12-13","name":"Google Maps - Transit \\u0026 Food","kind":"iosSoftware","copyright":"© Google Inc.","artistId":"281956209","artistUrl":"https://apps.apple.com/us/developer/google-llc/id281956209","artworkUrl100":"https://is5-ssl.mzstatic.com/image/thumb/Purple124/v4/da/3f/c6/da3fc68f-6b10-1dfe-99c9-3cb127a52b21/logo_maps_ios_color-0-0-1x_U007emarketing-0-0-0-6-0-0-sRGB-0-0-0-GLES2_U002c0-512MB-85-220-0-0.png/200x200bb.png","genres":[{"genreId":"6010","name":"Navigation","url":"https://itunes.apple.com/us/genre/id6010"},{"genreId":"6023","name":"Food \\u0026 Drink","url":"https://itunes.apple.com/us/genre/id6023"}],"url":"https://apps.apple.com/us/app/google-maps-transit-food/id585027354"},{"artistName":"Roblox Corporation","id":"431946152","releaseDate":"2011-05-26","name":"Roblox","kind":"iosSoftware","copyright":"© 2020 Roblox Corporation","artistId":"431946155","artistUrl":"https://apps.apple.com/us/developer/roblox-corporation/id431946155","artworkUrl100":"https://is5-ssl.mzstatic.com/image/thumb/Purple114/v4/7a/2a/99/7a2a999d-e7f5-def4-f82c-c651b8550be8/AppIcon-0-0-1x_U007emarketing-0-0-0-7-0-85-220.png/200x200bb.png","genres":[{"genreId":"6014","name":"Games","url":"https://itunes.apple.com/us/genre/id6014"},{"genreId":"7002","name":"Adventure","url":"https://itunes.apple.com/us/genre/id7002"},{"genreId":"6016","name":"Entertainment","url":"https://itunes.apple.com/us/genre/id6016"},{"genreId":"7001","name":"Action","url":"https://itunes.apple.com/us/genre/id7001"}],"url":"https://apps.apple.com/us/app/roblox/id431946152"},{"artistName":"AMZN Mobile LLC","id":"297606951","releaseDate":"2008-12-03","name":"Amazon Shopping","kind":"iosSoftware","copyright":"© 2020 AMZN Mobile LLC","artistId":"297606954","artistUrl":"https://apps.apple.com/us/developer/amzn-mobile-llc/id297606954","artworkUrl100":"https://is5-ssl.mzstatic.com/image/thumb/Purple124/v4/a3/11/45/a311458e-8b2a-2531-68be-38ba07c9b48f/AppIcon-0-0-1x_U007emarketing-0-0-0-6-0-0-sRGB-0-0-0-GLES2_U002c0-512MB-85-220-0-0.png/200x200bb.png","genres":[{"genreId":"6024","name":"Shopping","url":"https://itunes.apple.com/us/genre/id6024"},{"genreId":"6012","name":"Lifestyle","url":"https://itunes.apple.com/us/genre/id6012"}],"url":"https://apps.apple.com/us/app/amazon-shopping/id297606951"},{"artistName":"InnerSloth LLC","id":"1351168404","releaseDate":"2018-07-25","name":"Among Us!","kind":"iosSoftware","copyright":"© Innersloth LLC","artistId":"957995279","artistUrl":"https://apps.apple.com/us/developer/innersloth-llc/id957995279","artworkUrl100":"https://is2-ssl.mzstatic.com/image/thumb/Purple114/v4/d5/14/a7/d514a7fb-69e6-7519-e753-2527d12939f1/AppIcon-0-0-1x_U007emarketing-0-0-0-7-0-0-sRGB-0-0-0-GLES2_U002c0-512MB-85-220-0-0.png/200x200bb.png","genres":[{"genreId":"6014","name":"Games","url":"https://itunes.apple.com/us/genre/id6014"},{"genreId":"7001","name":"Action","url":"https://itunes.apple.com/us/genre/id7001"},{"genreId":"7015","name":"Simulation","url":"https://itunes.apple.com/us/genre/id7015"}],"url":"https://apps.apple.com/us/app/among-us/id1351168404"},{"artistName":"Zoom","id":"546505307","releaseDate":"2012-08-15","name":"ZOOM Cloud Meetings","kind":"iosSoftware","copyright":"© Zoom Video Communications, Inc","artistId":"530594111","artistUrl":"https://apps.apple.com/us/developer/zoom/id530594111","artworkUrl100":"https://is2-ssl.mzstatic.com/image/thumb/Purple114/v4/c4/05/97/c40597b4-ea60-d8ee-3fbf-832977bf43bc/AppIcon-0-0-1x_U007emarketing-0-0-0-9-0-85-220.png/200x200bb.png","genres":[{"genreId":"6000","name":"Business","url":"https://itunes.apple.com/us/genre/id6000"},{"genreId":"6007","name":"Productivity","url":"https://itunes.apple.com/us/genre/id6007"}],"url":"https://apps.apple.com/us/app/zoom-cloud-meetings/id546505307"},{"artistName":"Crazy Labs","id":"1544076964","releaseDate":"2020-12-11","name":"Detective Masters","kind":"iosSoftware","copyright":"© Crazy Labs","artistId":"721307559","artistUrl":"https://apps.apple.com/us/developer/crazy-labs/id721307559","artworkUrl100":"https://is2-ssl.mzstatic.com/image/thumb/Purple124/v4/9c/9c/cc/9c9ccc24-42cf-0cf9-814b-e240794bad05/AppIcon-0-0-1x_U007emarketing-0-0-0-7-0-0-sRGB-0-0-0-GLES2_U002c0-512MB-85-220-0-0.png/200x200bb.png","genres":[{"genreId":"6014","name":"Games","url":"https://itunes.apple.com/us/genre/id6014"},{"genreId":"7015","name":"Simulation","url":"https://itunes.apple.com/us/genre/id7015"},{"genreId":"7014","name":"Role Playing","url":"https://itunes.apple.com/us/genre/id7014"},{"genreId":"6016","name":"Entertainment","url":"https://itunes.apple.com/us/genre/id6016"}],"url":"https://apps.apple.com/us/app/detective-masters/id1544076964"},{"artistName":"Spotify Ltd.","id":"324684580","releaseDate":"2011-07-14","name":"Spotify: Music and Podcasts","kind":"iosSoftware","copyright":"© 2008–2020 Spotify Ltd.","artistId":"324684583","artistUrl":"https://apps.apple.com/us/developer/spotify-ltd/id324684583","artworkUrl100":"https://is1-ssl.mzstatic.com/image/thumb/Purple114/v4/4e/fe/2a/4efe2adc-3c66-595d-8374-7f628a618781/AppIcon-0-0-1x_U007emarketing-0-0-0-6-0-0-sRGB-0-0-0-GLES2_U002c0-512MB-85-220-0-0.png/200x200bb.png","genres":[{"genreId":"6011","name":"Music","url":"https://itunes.apple.com/us/genre/id6011"},{"genreId":"6016","name":"Entertainment","url":"https://itunes.apple.com/us/genre/id6016"}],"url":"https://apps.apple.com/us/app/spotify-music-and-podcasts/id324684580"},{"artistName":"Discord, Inc.","id":"985746746","releaseDate":"2015-05-21","name":"Discord - Talk, Chat, Hang Out","kind":"iosSoftware","copyright":"© 2019 Discord","artistId":"658886503","artistUrl":"https://apps.apple.com/us/developer/discord-inc/id658886503","artworkUrl100":"https://is5-ssl.mzstatic.com/image/thumb/Purple124/v4/87/91/3e/87913eef-d495-c698-811d-90e9d4111c65/AppIcon-0-0-1x_U007emarketing-0-0-0-7-0-0-sRGB-0-0-0-GLES2_U002c0-512MB-85-220-0-0.png/200x200bb.png","genres":[{"genreId":"6005","name":"Social Networking","url":"https://itunes.apple.com/us/genre/id6005"},{"genreId":"6014","name":"Games","url":"https://itunes.apple.com/us/genre/id6014"}],"url":"https://apps.apple.com/us/app/discord-talk-chat-hang-out/id985746746"},{"artistName":"WhatsApp Inc.","id":"310633997","releaseDate":"2009-05-04","name":"WhatsApp Messenger","kind":"iosSoftware","copyright":"© 2020 WhatsApp Inc.","artistId":"310634000","artistUrl":"https://apps.apple.com/us/developer/whatsapp-inc/id310634000","artworkUrl100":"https://is1-ssl.mzstatic.com/image/thumb/Purple114/v4/d9/75/f7/d975f797-d5bd-7a04-7339-6e849713c219/AppIcon-0-1x_U007emarketing-0-6-0-0-85-220.png/200x200bb.png","genres":[{"genreId":"6005","name":"Social Networking","url":"https://itunes.apple.com/us/genre/id6005"},{"genreId":"6002","name":"Utilities","url":"https://itunes.apple.com/us/genre/id6002"}],"url":"https://apps.apple.com/us/app/whatsapp-messenger/id310633997"},{"artistName":"Hulu, LLC","id":"376510438","releaseDate":"2010-06-29","name":"Hulu: Stream movies \\u0026 TV shows","kind":"iosSoftware","copyright":"Copyright © 2020 Hulu, LLC. All Rights Reserved.","artistId":"376510441","artistUrl":"https://apps.apple.com/us/developer/hulu-llc/id376510441","artworkUrl100":"https://is2-ssl.mzstatic.com/image/thumb/Purple114/v4/6c/51/20/6c5120af-5f1d-02e2-d136-87aa35c96801/HuluAppIcon-0-0-1x_U007emarketing-0-0-0-7-0-0-sRGB-0-0-0-GLES2_U002c0-512MB-85-220-0-0.png/200x200bb.png","genres":[{"genreId":"6016","name":"Entertainment","url":"https://itunes.apple.com/us/genre/id6016"},{"genreId":"6012","name":"Lifestyle","url":"https://itunes.apple.com/us/genre/id6012"}],"url":"https://apps.apple.com/us/app/hulu-stream-movies-tv-shows/id376510438"},{"artistName":"Disney","id":"1446075923","releaseDate":"2019-11-11","name":"Disney+","kind":"iosSoftware","copyright":"© Disney. All Rights Reserved.","artistId":"284888248","artistUrl":"https://apps.apple.com/us/developer/disney/id284888248","artworkUrl100":"https://is3-ssl.mzstatic.com/image/thumb/Purple124/v4/45/89/5b/45895bcb-eafd-c9d8-b00e-c2900816c63e/AppIcon-1x_U007emarketing-0-7-0-0-0-85-220.png/200x200bb.png","genres":[{"genreId":"6016","name":"Entertainment","url":"https://itunes.apple.com/us/genre/id6016"}],"url":"https://apps.apple.com/us/app/disney/id1446075923"},{"artistName":"WarnerMedia","id":"971265422","releaseDate":"2015-04-07","name":"HBO Max: Stream TV \\u0026 Movies","kind":"iosSoftware","copyright":"© 2020 WarnerMedia Direct, LLC. All Rights Reserved.","artistId":"1514826633","artistUrl":"https://apps.apple.com/us/developer/warnermedia/id1514826633","artworkUrl100":"https://is3-ssl.mzstatic.com/image/thumb/Purple124/v4/b4/03/76/b40376f7-832f-1ce0-cd27-4c7e5b2870e4/AppIconHBOMAX-0-0-1x_U007emarketing-0-0-0-7-0-0-sRGB-0-0-0-GLES2_U002c0-512MB-85-220-0-0.png/200x200bb.png","genres":[{"genreId":"6016","name":"Entertainment","url":"https://itunes.apple.com/us/genre/id6016"},{"genreId":"6012","name":"Lifestyle","url":"https://itunes.apple.com/us/genre/id6012"}],"url":"https://apps.apple.com/us/app/hbo-max-stream-tv-movies/id971265422"},{"artistName":"Google LLC","id":"284815942","releaseDate":"2019-02-12","name":"Google","kind":"iosSoftware","copyright":"© 2020 Google Inc.","artistId":"281956209","contentAdvisoryRating":"Explicit","artistUrl":"https://apps.apple.com/us/developer/google-llc/id281956209","artworkUrl100":"https://is2-ssl.mzstatic.com/image/thumb/Purple124/v4/20/6f/43/206f438f-529c-c9e1-5723-1fda306241bf/logo_gsa_ios_color-0-0-1x_U007emarketing-0-0-0-6-0-0-sRGB-0-0-0-GLES2_U002c0-512MB-85-220-0-0.png/200x200bb.png","genres":[{"genreId":"6002","name":"Utilities","url":"https://itunes.apple.com/us/genre/id6002"},{"genreId":"6006","name":"Reference","url":"https://itunes.apple.com/us/genre/id6006"}],"url":"https://apps.apple.com/us/app/google/id284815942"}]}}
        """
    }
}
