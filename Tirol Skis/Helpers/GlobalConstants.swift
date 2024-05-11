//
//  GlobalConstant.swift
//  Tirol Skis
//
//  Created by Binaya Thapa Magar on 03/03/2024.
//

import Foundation

struct GlobalConstants {
    
    struct SkiResort {
        
        static let resorts: [Resort] = [
            
            Resort(
                name: "Axamer Lizum Ski Resort",
                detailsTitle: "Located just a short drive from Tirol’s capital, Innsbruck, powder hounds simply love Axamer Lizum ski resort. At the end of 2022, the new 10-seater cable car to the Hoadl was put into operation for the first time in the largest ski resort near Innsbruck. The single-rope circulating cable car with two sections now transports skiing enthusiasts and sun lovers to the highest point of the ski resort in just a few minutes – the Hoadl-Haus at 2,340 meters.",
                description: """
                The resort is playfully known as Innsbruck’s "White Roof", a reference to the famous Golden Roof in the heart of Innsbruck. Located just 19 kilometres from the city, on the edge of the Stubai Alps, Axamer Lizum boasts a fantastic alpine setting crowned by the lofty and jagged Kalkkögel Mountains. The skiable terrain at Axamer Lizum features a mix of beginner, intermediate and advanced areas, ensuring skiers and snowboarders of all abilities will find a wide range of runs to suit their comfort levels.
                
                Rising from 1,600 to 2,340 metres, Axamer Lizum’s elevation advantage and north-facing location translate to an abundance of natural snowfall every season and consistently good snow conditions all winter long. Some of the trails have been named after the races they hosted at the 1964 and 1976 Winter Olympics. The majority of trails are rated red (advanced), but there are also some long blue groomers (beginner) and one black run for expert skiers. After heavy snowfalls, the backcountry terrain around Birgitzköpfle is a haven for those who live for waist-deep powder dumps. The freeriding terrain winds all the way down to the base for some awesome big mountain riding. A particularly long top-to-bottom run takes in the neighbouring Mutterer Alm ski resort and delivers skiers and riders at the village of Götzens.
                
                Snowboarders and freestylers will enjoy the kickers and rails at the Golden Roof Park near the Karleitenlift. At the bottom of the Olympiabahn lift there are two easy lifts and plenty of gentle slopes for beginners. Fresh mountain air is sure to give you a healthy appetite, so pause for a rest, and eat a hearty meal served with stunning mountain views in one of the cosy mountain restaurants or huts. The Hoadl Haus lodge at 2,340 metres is one of Tirol’s most beautiful on-mountain eateries with spectacular panoramic-view seating and a sun-drenched patio with bar. There is a free shuttle bus from Innsbruck to Axamer Lizum and back again.
                """,
                image: "axamer",
                pistesDistance: 40,
                altitude: "Altitude: 1,560 - 2,340m", 
                altitudeLow: 1560,
                altitudeHigh: 2340,
                difficulty: [
                    Difficulty(
                        level: .easy,
                        distance: "7 km"
                    ),
                    Difficulty(
                        level: .intermediate,
                        distance: "21 km"
                    ),
                    Difficulty(
                        level: .difficult,
                        distance: "2 km"
                    ),
                    Difficulty(
                        level: .skiTouringRoutes,
                        distance: "10 km"
                    )
                ],
                snowDepthOnMount: 140,
                liftsOpen: 6,
                liftsAvail: 9, 
                accessiblePublicTransport: false, 
                suitableFor: [.beginners, .intermediate, .advanced],
                price: 55.00
            ),
            
            Resort(
                name: "Bergeralm ski resort",
                detailsTitle: "Family-friendly yet challenging enough for experienced skiers, the Bergeralm ski resort above Steinach am Brenner is the proof that good things really do come in small packages. This resort close to the Austrian-Italian border is also known as a hotspot for snowkiting.",
                description: """
                Visitors to the Bergeralm resort near Steinach am Brenner can look forward not only to excellent skiing and snowboarding but also fantastic views of the mountains which dominate the Wipptal Valley connecting Austria and Italy. The resort can be reached quickly and easily from Innsbruck via the motorway running north-south and boasts slopes between 1,000m and 2,000m, so from late November until early April good snow conditions are guaranteed. The pistes themselves, which have been inspected and certified by the local government, have won several awards and cater for skiers and snowboarders of all ages and abilities. Easy beginners' slopes can be found towards the top of the resort, near the Hochsonnlift, while advanced and expert skiers will find plenty of red and black pistes, including one mogul slope. For children there is the practice area, a children's funpark and a children's skicross course. Snowkiters can often be seen racing down the slopes near the Nösslachjoch ridge.
                """,
                image: "bergeralm",
                pistesDistance: 29,
                altitude: "Altitude: 1,048 - 2,231m",
                altitudeLow: 1048,
                altitudeHigh: 2231,
                difficulty: [
                    Difficulty(
                        level: .easy,
                        distance: "6 km"
                    ),
                    Difficulty(
                        level: .intermediate,
                        distance: "16 km"
                    ),
                    Difficulty(
                        level: .difficult,
                        distance: "7 km"
                    )
                ],
                snowDepthOnMount: 160,
                liftsOpen: 6,
                liftsAvail: 7,
                accessiblePublicTransport: true, 
                suitableFor: [.beginners, .intermediate, .advanced, .families],
                price: 51.50
            ),
            
            Resort(
                name: "Berwang ski resort",
                detailsTitle: "Located half-way between the Zugspitze, Germany's highest mountain, and the Lechtal Valley is the small ski resort of Berwang. It can be accessed from two sides and enjoys excellent snow cover in winter. Most of the pistes are blue (easy), making it ideal for beginners and families, though there are also some runs for intermediate and advanced skiers. There is a ski school with its own easy learning area.",
                description: "",
                image: "berwang",
                pistesDistance: 36,
                altitude: "Altitude: 1,336 - 1,740m",
                altitudeLow: 1336,
                altitudeHigh: 1740,
                difficulty: [
                    Difficulty(
                        level: .easy,
                        distance: "24 km"
                    ),
                    Difficulty(
                        level: .intermediate,
                        distance: "10 km"
                    ),
                    Difficulty(
                        level: .difficult,
                        distance: "2 km"
                    ),
                ],
                snowDepthOnMount: 50,
                liftsOpen: 8,
                liftsAvail: 13,
                accessiblePublicTransport: false, 
                suitableFor: [.beginners, .intermediate, .advanced, .families],
                price: 61.00
            ),
            
            Resort(
                name: "Burglift ski resort in Stans",
                detailsTitle: "The Burglift resort in Stans has plenty to offer children, beginners and skiers who are happy with a limited selection of pistes in a friendly village setting. There are just two pistes, each of which is one kilometre in length. Children can take their first turns on snow under the watchful eye of qualified instructors from the local ski school. More advanced skiers and boarders will want to test their skills in the Hotzone.tv snowpark with its boxes, kickers, a wallride and a 6m jib pipeline.",
                description: "",
                image: "burglift",
                pistesDistance: 2,
                altitude: "Altitude: 560 - 800m",
                altitudeLow: 560,
                altitudeHigh: 800,
                difficulty: [
                    Difficulty(
                        level: .easy,
                        distance: "1 km"
                    ),
                    Difficulty(
                        level: .intermediate,
                        distance: "1 km"
                    )
                ],
                snowDepthOnMount: 0,
                liftsOpen: 0,
                liftsAvail: 0,
                accessiblePublicTransport: false, 
                suitableFor: [.beginners, .intermediate],
                price: 20.00
            ),
            
            Resort(
                name: "Christlum ski resort in Achenkirch",
                detailsTitle: "Located to the north of Lake Achensee, the Christlum ski resort lies on the eastern slopes of the Karwendel Mountains and is popular with families, though there is also plenty of terrain for advanced skiers and snowboarders.",
                description: """
                The Christlum ski resort in Achenkirch actually has everything that larger wintersports destinations have, just in a smaller and more relaxed setting. The resort is located 45 minutes by car from Innsbruck and 60 minutes from Munich. Snowboarders will enjoy the funpark with its halfpipe, kickers and boardercross course, while families with children are drawn to the separate children's practice area next to the ski school at the top of the resort. The pistes themselves range from blue (easy) to black (expert) and top out at 1,800 metres. Expert skiers and boarders can explore the twisting and turnning "Nordabfahrt" descent leading down into the valley. Especially snowboarders will enjoy the kicker next to the slope on what is one of two black pistes in the resort. Those in search of a long cruising piste can combine red pistes number 2 and number 1 to create a 4km run down to the bottom of the cable car.
                """,
                image: "christlum",
                pistesDistance: 27,
                altitude: "Altitude: 950 - 1,800m",
                altitudeLow: 950,
                altitudeHigh: 1800,
                difficulty: [
                    Difficulty(
                        level: .easy,
                        distance: "6 km"
                    ),
                    Difficulty(
                        level: .intermediate,
                        distance: "16 km"
                    ),
                    Difficulty(
                        level: .difficult,
                        distance: "5 km"
                    ),
                ],
                snowDepthOnMount: 50,
                liftsOpen: 6,
                liftsAvail: 10,
                accessiblePublicTransport: false,
                suitableFor: [.beginners, .intermediate, .advanced],
                price: 59.00
            ),
            
            Resort(
                name: "Ehrwalder Almbahn ski resort",
                detailsTitle: "For all those in search of wide, gentle slopes far from the madding crowd, the Ehrwalder Almbahn resort is the ideal solution. Families and beginners in particular will appreciate the quiet slopes and excellent conditions, though there is also plenty to keep intermediate and advanced skiers entertained.",
                description: """
                Nestling between the Wetterstein Mountains and the Mieming Mountains, the Ehrwalder Alm is a small resort between 1,100 and 1,923 metres above sea level ideal for beginners. Most of the slopes are blue, though there are also a few red and black pistes. Almost all of the runs have snowmaking facilities. Ehrwalder Alm forms part of the larger Tirol Zugspitz Arena region.
                
                Families, beginners and those returning to the sport will appreciate the wide, gentle slopes. There is also a dedicated beginners' practice area with conveyor belt lifts and ski carousels for children. The team of childcare experts in the Tirolerhaus will be happy to look after babies and toddlers, giving parents the chance to get out and explore the resort on their own.
                
                Snowboarders and freestylers of all abilities gather in the Betterpark to spin, flip and grind their way over the many different obstacles and features, before hopping on the Klämmli-Lift and riding back up to the top. Those in search of an adrenaline kick should try the "Panorama-Piste" leading down from the Issentalkopf. The resort is home to several huts and restaurants with large sun terraces – the ideal place to enjoy delicious local food in breathtaking alpine surroundings.
                """,
                image: "ehrwalder",
                pistesDistance: 28,
                altitude: "Altitude: 1,100 - 1,950m",
                altitudeLow: 1100,
                altitudeHigh: 1950,
                difficulty: [
                    Difficulty(
                        level: .easy,
                        distance: "18 km"
                    ),
                    Difficulty(
                        level: .intermediate,
                        distance: "8 km"
                    ),
                    Difficulty(
                        level: .difficult,
                        distance: "2 km"
                    )
                ],
                snowDepthOnMount: 266,
                liftsOpen: 8,
                liftsAvail: 8,
                accessiblePublicTransport: false, 
                suitableFor: [.beginners, .intermediate, .advanced, .families],
                price: 61.50
            ),
            
            Resort(
                name: "Elferlifte ski resort in the Stubai Valley",
                detailsTitle: "Located in Neustift in the heart of Stubai Valley, the Elferlifte ski resort is ideal for carving and offers a long descent all the way down to the bottom of the cable car. There is also an easy beginners' area with two lifts.",
                description: """
                The small resort of Elferlifte in the Stubai Valley is just a 20-minute drive from Innsbruck. Located high above the village of Neustift, on the northwestern slopes of the Elferspitze mountain, it has pistes up to 2,080 metres above sea level and offers challenging skiing as well as an exceptionally long run taking skiers and snowboarders down 1,000 vertical metres from the main resort to the bottom of the cable car on the valley floor. Advanced skiers should test their skills on "Freaky Eleven", a challenging mogul run below the Panoramarestaurant Elfer. For beginners and families with children there are is a practice area with two lifts in Neustift and Krößbach.
                """,
                image: "elferlifte",
                pistesDistance: 3,
                altitude: "Altitude: 960 - 3,212m",
                altitudeLow: 960,
                altitudeHigh: 3212,
                difficulty: [
                    Difficulty(
                        level: .easy,
                        distance: "3 km"
                    )
                ],
                snowDepthOnMount: 80,
                liftsOpen: 3,
                liftsAvail: 4,
                accessiblePublicTransport: false,
                suitableFor: [.beginners, .intermediate, .advanced],
                price: 42.00
            ),
            
            Resort(
                name: "Erpfendorf ski resort",
                detailsTitle: "The Hotel Lärchenhof in Erpfendorf is in the rare position of being able to offer its guests – as well as skiers and boarders not staying at the hotel – their own private ski resort. The lift is located just a stone's throw from the hotel building and gives access to an easy and an intermediate piste. For beginners there is a ski school with an easy-access conveyor belt lift.",
                description: """
                """,
                image: "erpfendorf",
                pistesDistance: 2,
                altitude: "Altitude: 650 - 789m",
                altitudeLow: 650,
                altitudeHigh: 789,
                difficulty: [
                    Difficulty(
                        level: .easy,
                        distance: "1 km"
                    ),
                    Difficulty(
                        level: .intermediate,
                        distance: "1 km"
                    ),
                ],
                snowDepthOnMount: 0,
                liftsOpen: 0,
                liftsAvail: 0,
                accessiblePublicTransport: false, 
                suitableFor: [.beginners, .intermediate],
                price: 31.00
            ),
            
            Resort(
                name: "Fendels ski resort",
                detailsTitle: "The family-friendly ski area of Fendels is about as quiet and relaxed as resorts get, though it still has plenty of pistes for intermediate and expert skiers. The resort's lift pass can also be used on the nearby Kaunertal Glacier.",
                description: """
                The Hotel Lärchenhof in Erpfendorf is in the rare position of being able to offer its guests – as well as skiers and boarders not staying at the hotel – their own private ski resort. The lift is located just a stone's throw from the hotel building and gives access to an easy and an intermediate piste. For beginners there is a ski school with an easy-access conveyor belt lift.
                
                "Good things come in small packages." There are few resorts where this saying applies more than in Fendels, a family-friendly ski area in the Upper Inn Valley near the intersection between the Inn Valley and the Kaunertal Valley. Its north-facing pistes up to an altitude of 2,200 metres guarantee snowsure conditions throughout the season. Highlights include forest-lined pistes and powder descents for all abilities, including two black runs. The lifts and beginners' area can be easily reached on foot from the village. "Bibi's Kinderland" is a meeting point for parents with children and features a conveyor belt lift, a fun slalom course and a draglift. On Thursday evenings one slope is floodlit for night skiing. And even if you ever do get bored of the skiing in Fendels, the resort's lift pass is also valid on the nearby Kaunertal Glacier.
                """,
                image: "fendels",
                pistesDistance: 11,
                altitude: "Altitude: 1,325 - 2,271m",
                altitudeLow: 1325,
                altitudeHigh: 2271,
                difficulty: [
                    Difficulty(
                        level: .easy,
                        distance: "6 km"
                    ),
                    Difficulty(
                        level: .intermediate,
                        distance: "4 km"
                    ),
                    Difficulty(
                        level: .difficult,
                        distance: "1 km"
                    )
                ],
                snowDepthOnMount: 0,
                liftsOpen: 5,
                liftsAvail: 6,
                accessiblePublicTransport: false, 
                suitableFor: [.beginners, .intermediate, .advanced],
                price: 45.00
            ),
            
            Resort(
                name: "Fügen ski resort",
                detailsTitle: "The resort of Fügen in the Zillertal Valley boasts ideal pistes for beginners, families and cruisers – and the longest valley descent in the region with artificial snowmaking facilities. A new shuttle bus service now connects the resort with nearby Hochfügen.",
                description: """
                From the hotel ... straight out onto the slopes! The bottom of the Spieljochbahn cable car is located in the centre of Fügen and whisks wintersports enthusiasts up onto the slopes high above the Zillertal Valley in just a matter of minutes. This small but charming resort topping out at 2,054m is ideal for families and those who love cruising the pistes. For children there is an activity programme, two conveyor-belt lifts and one easy draglift. More experienced skiers can take on the run down to Fügen, the longest valley descent with snowmaking facilities in the Zillertal Valley at 7 kilometres. In December 2015 the state-of-the-art Panoramabahn Geols cable car from the Onkeljoch ridge down into the valley was extended, opening up a new 3km piste. A shuttle bus service now also connects the resort of Fügen to with nearby Hochfügen.
                """,
                image: "fugen",
                pistesDistance: 19,
                altitude: "Altitude: 650 - 2,100m",
                altitudeLow: 650,
                altitudeHigh: 2100,
                difficulty: [
                    Difficulty(
                        level: .easy,
                        distance: "1 km"
                    ),
                    Difficulty(
                        level: .intermediate,
                        distance: "15 km"
                    ),
                    Difficulty(
                        level: .difficult,
                        distance: "3 km"
                    )
                ],
                snowDepthOnMount: 90,
                liftsOpen: 0,
                liftsAvail: 11,
                accessiblePublicTransport: false,
                suitableFor: [.beginners, .intermediate, .advanced],
                price: 73.50
            ),
            
            Resort(
                name: "Füssener Jöchle ski resort in Grän",
                detailsTitle: "Small but perfectly formed, the Füssener Jöchle ski resort above the Haldensee lake in the Tannheimer Tal Valley is served by a cable car giving skiers and snowboarders access to snowsure slopes up to 1,821 metres above sea level. The resort has a selection of blue (easy) and red (intermediate) runs on the north-facing side near the chairlift at Jochalpe with excellent views over the border into Bavaria. There are also a number of off-piste ski routes, while beginners and children will enjoy the easy slopes at the Schachenlift down in the valley.",
                description: """
                """,
                image: "füssener",
                pistesDistance: 9,
                altitude: "Altitude: 1,150 - 1,870m",
                altitudeLow: 1150,
                altitudeHigh: 1870,
                difficulty: [
                    Difficulty(
                        level: .easy,
                        distance: "6 km"
                    ),
                    Difficulty(
                        level: .intermediate,
                        distance: "3 km"
                    )
                ],
                snowDepthOnMount: 0,
                liftsOpen: 0,
                liftsAvail: 5,
                accessiblePublicTransport: false,
                suitableFor: [.beginners, .intermediate],
                price: 45.00
            ),
            
            Resort(
                name: "Glungezer ski resort",
                detailsTitle: "Beginners and experts, snowboarders and cruisers – despite its small size, the Glungezer ski resort really does have something for everyone. One of the main highlights of this resort above Hall in Tirol is the 15km descent down into the valley.",
                description: """
                Beginners and experts, snowboarders and cruisers – despite its small size, the Glungezer ski resort really does have something for everyone. One of the main highlights of this resort above Hall in Tirol is the 15km descent down into the valley.

                Glungezer may be one of the smaller ski resorts in the region, but it has big things to offer. Located to the south-east of Innsbruck, it is home to one of the the longest descents in the whole of Tirol at 15km from top to bottom. Accessed using the ten-person gondola and the "Tulfein Express" (combined chairlift and a cable car) plus another chairlift onto the Schartenkogel mountain, this more or less straight piste offers great views of the Nordkette mountains on the other side of the Inn Valley and is divided into two sections, with the first rated red (intermediate) and the second rated blue (easy). Starting from the highest point in the resort at 2,304m, skiers and snowboarders descend more than 1,300 vertical metres down to the bottom of the cable car in the village of Tulfes. On the way down they pass by the Glungezer Park with its four separate areas for snowboarders and freeskiers as well as restaurants such as the Alpengasthof Halsmarter and a beginners' area near the midway station of the cable car. An unusual sport popular in Tulfes is "Klumpern", similar to tobogganing but with just one runner instead of two. The challenge is to keep your balance while hurtling down the hill at speed. Great fun for all ages!
                """,
                image: "glungezer",
                pistesDistance: 23,
                altitude: "Altitude: 922 - 2,304m",
                altitudeLow: 922,
                altitudeHigh: 2304,
                difficulty: [
                    Difficulty(
                        level: .easy,
                        distance: "7 km"
                    ),
                    Difficulty(
                        level: .intermediate,
                        distance: "16 km"
                    ),
                    Difficulty(
                        level: .difficult,
                        distance: "1 km"
                    )
                ],
                snowDepthOnMount: 150,
                liftsOpen: 0,
                liftsAvail: 6,
                accessiblePublicTransport: false,
                suitableFor: [.beginners, .intermediate, .advanced, .families],
                price: 45.00
            ),
            
            Resort(
                name: "Großglockner ski resort in Kals-Matrei",
                detailsTitle: "East Tirol's largest ski resort lies at the foot of the mighty Großglockner, Austria's highest mountain, and offers fabulous views of its eastern flank. This resort is particularly popular with families.",
                description: """
                Breathtaking is almost an understatement when it comes to describing the views enjoyed by skiers and snowboarders at the Großglockner ski resort in Kals-Matrei. No fewer than 60 summits over 3,000m can be seen from the resort's slopes, including the "King of the Hohe Tauern", the Großglockner, which at 3,798m is the highest mountain in Austria. The small but diverse piste network can be accessed from both the small town of Matrei and the nearby village of Kals. It stretches up at an altitude of 2,426m and forms the largest ski resort in East Tirol.

                The resort is particularly popular among families with children. Facilities include a practice area in Kals and several easy blue pistes on the slopes above Matrei. There are also ski schools offering children's courses and lessons, as well as a large children's area with a heated recreation room and an easy-to-use conveyor belt lift at the bottom of the Goldried I cable car. Expert skiers should try the black run down into the valley from the Blauspitze mountain and explore the area around the Cimarosslift. It is there that they will also find the Adler Lounge, Austria's highest fine dining restaurant, which offers fantastic views of the surrounding landscape.

                Thanks to its high altitude the Großglockner ski resort in Kals-Matrei is blessed with plenty of snow throughout the season. And for those few times when there is a shortage of the white stuff, there is a comprehensive network of snowmaking machines covering most of the pistes.
                """,
                image: "grossglockner",
                pistesDistance: 42,
                altitude: "Altitude:  1,350 - 2,405m",
                altitudeLow: 1350,
                altitudeHigh: 2405,
                difficulty: [
                    Difficulty(
                        level: .easy,
                        distance: "9 km"
                    ),
                    Difficulty(
                        level: .intermediate,
                        distance: "23 km"
                    ),
                    Difficulty(
                        level: .difficult,
                        distance: "6 km"
                    ),
                    Difficulty(
                        level: .skiTouringRoutes,
                        distance: "5 km"
                    )
                ],
                snowDepthOnMount: 80,
                liftsOpen: 0,
                liftsAvail: 17,
                accessiblePublicTransport: false,
                suitableFor: [.beginners, .intermediate, .advanced],
                price: 62.00
            ),
            
            Resort(
                name: "Gschwandtkopf/Seewald/Hinterfeld ski resort",
                detailsTitle: "With its many blue pistes ideal for beginners, the Seewald ski resort in Seefeld offers perfect conditions for families with children and those new to the sport of skiing.",
                description: """
                The small but perfectly formed resort of Seewald in the Seefeld Olympia Region is known as a paradise for beginners and families. From the highest point, Gschwandtkopf mountain at 1,500 metres above sea level, there is one main piste and several smaller tree-lined pistes leading down to the village of Seefeld. Despite its relatively low altitude, this resort offers good snow conditions as most of the pistes are north-facing. At the top of the resort there is the Sonnenalm hut, where skiers and boarders can enjoy fabulous views of the high plateau around Seefeld and the nearby Inn Valley as they sample some of the excellent local food. The Happy Ski Card lift pass gives wintersports enthusiasts the option of also using the lifts at the largeer resort of Rosshütte free of charge. There is a free shuttlebus service between the two resorts.
                """,
                image: "gschwandtkopf",
                pistesDistance: 5,
                altitude: "Altitude: 1,200 - 1,500m",
                altitudeLow: 1200,
                altitudeHigh: 1500,
                difficulty: [
                    Difficulty(
                        level: .easy,
                        distance: "5 km"
                    )
                ],
                snowDepthOnMount: 0,
                liftsOpen: 0,
                liftsAvail: 10,
                accessiblePublicTransport: false,
                suitableFor: [.beginners, .intermediate, .advanced],
                price: 51.00
            ),
            
            Resort(
                name: "Hahnenkamm ski resort in Reutte",
                detailsTitle: "Located at the Höfener Alm below the summit of the Hahnenkamm mountain near the town of Reutte, the Hahnenkamm ski resort offers snowsure slopes stretching all the way up to 1,900 metres above sea level. The resort itself is relatively small, despite the fact that it is in fact the largest in the region, but nevertheless offers pistes catering for all ages and abilities. The bottom lift station in Höfen has a beginners' area with a conveyor belt lift for children, while teenagers can work on their tricks in the funpark. Last but not least, there is a restaurant up at the top of the resort serving good food and offering great views of the Lechtal Valley.",
                description: """
                """,
                image: "hahnenkamm",
                pistesDistance: 16,
                altitude: "Altitude: 850 - 1,900m",
                altitudeLow: 850,
                altitudeHigh: 1900,
                difficulty: [
                    Difficulty(
                        level: .easy,
                        distance: "4 km"
                    ),
                    Difficulty(
                        level: .intermediate,
                        distance: "9 km"
                    ),
                    Difficulty(
                        level: .difficult,
                        distance: "3 km"
                    )
                ],
                snowDepthOnMount: 135,
                liftsOpen: 0,
                liftsAvail: 4,
                accessiblePublicTransport: false,
                suitableFor: [.beginners, .intermediate, .advanced, .monoskiers],
                price: 41.00
            ),
            
            Resort(
                name: "Hintertux Glacier ski resort",
                detailsTitle: "The Hintertux Glacier ski resort offers great skiing and fantastic views. It is the only ski resort in Austria open 365 days a year.",
                description: """
                Skiers and snowboarders who simply can't get enough should head for the Hintertux Glacier, home to the only ski resort in Austria open 365 days a year. Located at the end of the Zillertal Valley, close to the mighty Olperer mountain at 3,476m, it offers top powder skiing in winter and excellent conditions on the slopes well into spring. Indeed, even in summer it is a popular place to escape the heat in the valley below and cruise the slopes at a cool 3,250 metres above sea level.

                During the winter months the resort has a large network of pistes catering for all abilities. One of the main attractions is the descent in front of the "Gefrorene Wand" ("Frozen Wall") all the way down to Hintertux, at 12 kilometres the longest run in the Zillertal Valley. Powder hounds will find plenty of good freeriding, while snowboarders, skiers and freestylers congregate in the Betterpark or at the new funslope near the Sommerbergalm cable car.

                In winter the resort is part of the "Ski- und Gletscherwelt Zillertal 3000", a large network of interconnected villages and resorts including Finkenberg and Mayrhofen. All of the slopes can be accessed using one lift pass. Skiers and boarders with strong legs can then take on the ultimate challenge: 15,000 vertical metres and 60km of skiing in one day.
                """,
                image: "hintertux",
                pistesDistance: 57,
                altitude: "Altitude: 1,300 - 3,250m",
                altitudeLow: 1300,
                altitudeHigh: 3250,
                difficulty: [
                    Difficulty(
                        level: .easy,
                        distance: "12 km"
                    ),
                    Difficulty(
                        level: .intermediate,
                        distance: "35 km"
                    ),
                    Difficulty(
                        level: .difficult,
                        distance: "2 km"
                    ),
                    Difficulty(
                        level: .skiTouringRoutes,
                        distance: "8 km"
                    )
                ],
                snowDepthOnMount: 410,
                liftsOpen: 17,
                liftsAvail: 20,
                accessiblePublicTransport: false,
                suitableFor: [.beginners, .intermediate, .advanced, .monoskiers],
                price: 72.50
            ),
            
            Resort(
                name: "Hoch-Imst ski resort",
                detailsTitle: "The small resort of Hoch-Imst has great facilities and discounts for families, but at the same time it offers plenty for advanced skiers, snowboarders and freestylers.",
                description: """
                Situated on a sunny plateau above the town of Imst, the resort of Hoch-Imst extends all the way up to 2,100 metres above sea level and offers plenty of slopes for skiers and snowboarders of all ages and abilities. Highlights include a new funpark with 15 obstacles for budding freestylers and pros as well as a large beginners' area with gentle slopes and a draglift next to the bottom of the cable car. It is there that the many ski lessons take place, with the ski school even offering free lessons on certain weeks for children staying in the resort. Among the most popular runs is from the Untermarkter Alm, one of the longest slopes in Tirol and floodlit on some evenings. The mid-way station of the cable car also has a large terrace area perfect for taking a break and topping up your tan. Ski touring enthusiasts should try the "Ursprungweg", which runs through the forest parallel to the piste.
                """,
                image: "hochImst",
                pistesDistance: 9,
                altitude: "Altitude: 1,000 - 2,100m",
                altitudeLow: 1000,
                altitudeHigh: 2100,
                difficulty: [
                    Difficulty(
                        level: .easy,
                        distance: "4 km"
                    ),
                    Difficulty(
                        level: .intermediate,
                        distance: "3 km"
                    ),
                    Difficulty(
                        level: .difficult,
                        distance: "2 km"
                    )
                ],
                snowDepthOnMount: 0,
                liftsOpen: 0,
                liftsAvail: 4,
                accessiblePublicTransport: false,
                suitableFor: [.beginners, .intermediate, .advanced],
                price: 42.20
            ),
            
            Resort(
                name: "Hochkössen ski resort",
                detailsTitle: "Excellent pistes and fabulous views await visitors to Hochkössen. Despite being relatively small, this resort has plenty to offer, including a slalom run.",
                description: """
                Excellent pistes and fabulous views await visitors to Hochkössen. Despite being relatively small, this resort has plenty to offer, including a slalom run.

                The views in the resort of Hochkössen near the German border stretch all the way from magnificent mountain peaks to Lake Chiemsee in Bavaria. Here, at 1,750 metres above sea level, the snow is plentiful and the seasons are long. The network of pistes itself caters for all abilities, from beginners to experts, but it is families in particular who are drawn to this corner of Tirol. One of the reasons is the Skischule Kössen with its team of qualified instructors, who will be happy help children and beginners take their first turns on snow. Hochkössen is also used by racing teams to train slalom and giant slalom. The Bärenhütte hut and the Gipfelhaus restaurant at the top of the resort serve excellent local food.
                """,
                image: "hochkössen",
                pistesDistance: 22,
                altitude: "Altitude: 600 - 1,750m",
                altitudeLow: 600,
                altitudeHigh: 1750,
                difficulty: [
                    Difficulty(
                        level: .easy,
                        distance: "10 km"
                    ),
                    Difficulty(
                        level: .intermediate,
                        distance: "9 km"
                    ),
                    Difficulty(
                        level: .difficult,
                        distance: "3 km"
                    )
                ],
                snowDepthOnMount: 25,
                liftsOpen: 0,
                liftsAvail: 11,
                accessiblePublicTransport: false,
                suitableFor: [.beginners, .intermediate, .advanced],
                price: 49.50
            ),
            
            Resort(
                name: "Hochmoos ski resort",
                detailsTitle: "Rising from 1,100 to 1,360 metres above sea level, the family-friendly Hochmoos ski resort is located at the heart of the Seefeld Olympic Region. With consistently good snow conditions and a variety of terrain (4km of blue pistes, 3km of red pistes, 1km of black pistes), this area to the north of the regional capital Innsbruck is especially popular with experienced skiers and snowboarders.",
                description: """
                The instructors from the local ski school will be happy to show you how to carve perfect turns in the snow. Twice a week, on Tuesdays and Fridays, some of the slopes are floodlit for night skiing from 6:30pm until 9:30pm.

                Further attractions include a well-maintained and floodlit toboggan run as well as an extensive network of cross-country skiing trails and winter hiking trails spanning the Seefeld Olympic Region.
                """,
                image: "hochmoos",
                pistesDistance: 5,
                altitude: "Altitude: 1,140 - 1,363m",
                altitudeLow: 1140,
                altitudeHigh: 1363,
                difficulty: [
                    Difficulty(
                        level: .easy,
                        distance: "1 km"
                    ),
                    Difficulty(
                        level: .intermediate,
                        distance: "1 km"
                    ),
                    Difficulty(
                        level: .difficult,
                        distance: "1 km"
                    )
                ],
                snowDepthOnMount: 0,
                liftsOpen: 0,
                liftsAvail: 3,
                accessiblePublicTransport: false,
                suitableFor: [.beginners, .intermediate],
                price: 39.00
            ),
            
            Resort(
                name: "Hochoetz ski resort",
                detailsTitle: "The ski resort of Hochoetz high above the Ötztal Valley is ideal for families with children. Highlights include 'Widi' the friendly mascot.",
                description: """
                The ski resort of Hochoetz high above the Ötztal Valley is ideal for families with children. Highlights include "Widi" the friendly mascot.

                With its blue (easy) and red (intermediate) runs criss-crossing the northern slopes of the Acherkogel mountain, the compact resort of Hochoetz is the perfect destination for all the family. The pistes extend from 1,400m up to almost 2,300m and can be reached by cable car from Oetz in the Ötztal Valley and from Ochsengarten, a village at 1,500m altitude next to the road that leads from Oetz up to Kühtai.

                Children will love the local mascot, a friendly ram called "Widi", who will introduce them to skiing in the children's practice area run by the local ski schools. For older children there is a larger funpark near the Balbachsessellift chairlift. Experienced skiers can take on the challenging run all the way down to Ochsengarten as well as the permanently installed race course and the off-piste powder trails.

                There are a number of huts and restaurants serving local food, including a self-service children's restaurant next to the top of the Acherkogelbahn cable car with a sunny terrace and a play area. If you ride the Wetterkreuzbahn cable car, don't forget to stop at the "Zugspitzblick" viewing platform with its fabulous vistas reaching as far as the Zugspitze, Germany's highest peak.
                """,
                image: "hochoetz",
                pistesDistance: 41,
                altitude: "Altitude: 670 - 2,020m",
                altitudeLow: 670,
                altitudeHigh: 2020,
                difficulty: [
                    Difficulty(
                        level: .easy,
                        distance: "12 km"
                    ),
                    Difficulty(
                        level: .intermediate,
                        distance: "22 km"
                    ),
                    Difficulty(
                        level: .difficult,
                        distance: "4 km"
                    ),
                    Difficulty(
                        level: .skiTouringRoutes,
                        distance: "4 km"
                    )
                ],
                snowDepthOnMount: 100,
                liftsOpen: 11,
                liftsAvail: 15,
                accessiblePublicTransport: false,
                suitableFor: [.beginners, .intermediate, .advanced, .monoskiers, .families],
                price: 52.00
            ),
            
            Resort(
                name: "Hochzeiger ski resort in the Pitztal Valley",
                detailsTitle: "Any resort where World Cup star Benni Raich trained for his races is guaranteed to have plenty of challenging slopes – and that is the case in the Hochzeiger resort. But this ski area in the Pitztal Valley also has plenty more to offer, including many easy blue pistes for beginners and children learning to ski.",
                description: """
                Located at the entrance to the Pitztal Valley, the family-friendly Hochzeiger resort extends across the sunny south-west facing slopes above the village of Jerzens. The network of pistes caters for all abilities, from tentative beginners to confident experts, and extend from 1,450 metres all the way up to 2,450 metres. This high altitude means that skiers and snowboarders excellent snow from early December until the middle of April.

                The most famous piste in the resort is black run number 3, which is named after the multiple World Cup winner and local lad Benni Raich. Raich trained here throughout his highly successful career and practised many of his tight slalom turns on this devilishly steep piste with gradients of up to 80%. Families and beginners, on the other hand, will enjoy the 300-metre-long snowpark where both children and experienced skiers can test their skills and nerve on the jumps and obstacles. The resort offers very attractive family discounts on ski passes.
                """,
                image: "hochzeiger",
                pistesDistance: 40,
                altitude: "Altitude: 1,450 - 2,500m",
                altitudeLow: 1450,
                altitudeHigh: 2500,
                difficulty: [
                    Difficulty(
                        level: .easy,
                        distance: "10 km"
                    ),
                    Difficulty(
                        level: .intermediate,
                        distance: "22 km"
                    ),
                    Difficulty(
                        level: .difficult,
                        distance: "8 km"
                    )
                ],
                snowDepthOnMount: 0,
                liftsOpen: 0,
                liftsAvail: 9,
                accessiblePublicTransport: false,
                suitableFor: [.beginners, .intermediate, .advanced, .families],
                price: 57.00
            ),
            
            Resort(
                name: "Hochzillertal-Hochfügen ski resort",
                detailsTitle: "Easy to reach, family friendly and with a touch of gourmet glamour, the Hochzillertal-Hochfügen ski resort has much more to offer than just great skiing.",
                description: """
                Easy to reach, family friendly and with a touch of gourmet glamour, the Hochzillertal-Hochfügen ski resort has much more to offer than just great skiing.

                Located just a few minutes' drive from the Inn Valley, the resort of Hochzillertal-Hochfügen in the Zillertal Valley is a snowsure wintersports destination that can be accessed from the village of Kaltenbach or from the village of Hochfügen at 1,500m. The many blue, red and black slopes stretch from 560m all the way up to almost 2,400m, while freeriders can head even higher up to the peaks overlooking the resort.

                Families with children and beginners taking their first turns on snow will feel particularly at home In Hochzillertal-Hochfügen. At the same time, the funpark offers plenty of kickers, rails and other obstacles for snowboarders and freestyle skiers. Further highlights include a race course with a speed gun. The parents of Olympic champion Stephan Eberharter run a hotel down in the valley. Families will enjoy the children's area with a conveyor-belt lift, fun rollers, a children's restaurant and all-day childcare service.

                After a hard day's skiing in the fresh mountain air, there is no better place to stop for a drink and a snack at one of the many slopeside huts and restaurants such as the Wedelhütte with the highest underground wine cave in the Alps. In Hochfügen there is even an award-winning haute cuisine restaurant called simply "Alexander".
                """,
                image: "hochzillertal",
                pistesDistance: 89,
                altitude: "Altitude: 1,500 - 2,500m",
                altitudeLow: 1500,
                altitudeHigh: 2500,
                difficulty: [
                    Difficulty(
                        level: .easy,
                        distance: "30 km"
                    ),
                    Difficulty(
                        level: .intermediate,
                        distance: "41 km"
                    ),
                    Difficulty(
                        level: .difficult,
                        distance: "15 km"
                    ),
                    Difficulty(
                        level: .skiTouringRoutes,
                        distance: "4 km"
                    )
                ],
                snowDepthOnMount: 70,
                liftsOpen: 7,
                liftsAvail: 12,
                accessiblePublicTransport: false,
                suitableFor: [],
                price: 73.50
            ),
            
            Resort(
                name: "Hüttegglift ski lift in Weerberg",
                detailsTitle: "The Hüttegglift ski lift in Weerberg whisks skiers and snowboarders from 1,340 metres up to an altitude of 1,500 metres – the views of lofty Karwendel Mountains from the top are spectacular. Wintersports enthusiasts of all ages have access to 2.5km of immaculately groomed gentle slopes and long cruising runs. The easy beginners' area with its conveyor lift can be used free of charge.",
                description: """
                """,
                image: "huettegglift",
                pistesDistance: 3,
                altitude: "Altitude: 1,250 - 1,500m",
                altitudeLow: 1250,
                altitudeHigh: 1500,
                difficulty: [
                    Difficulty(
                        level: .easy,
                        distance: "3 km"
                    )
                ],
                snowDepthOnMount: 0,
                liftsOpen: 0,
                liftsAvail: 2,
                accessiblePublicTransport: false,
                suitableFor: [.beginners, .intermediate],
                price: 25.00
            ),
            
            Resort(
                name: "Ischgl ski resort",
                detailsTitle: "International flair and snow until early May! The resort of Ischgl-Samnaun extends the huge Silvretta Arena ski network up over the border into neighbouring Switzerland. The resort itself features lots of modern lifts and cable cars plus a mix of easy slopes for beginners and more challenging pistes for intermediate and advanced skiers.",
                description: """
                The village of Ischgl in the Paznauntal Valley is home to just 1,600 residents – yet it is the gateway to one of Tirol's most popular ski resorts. Cable cars whisk skiers and snowboarders from the centre of Ischgl up onto the slopes of the Silvretta Arena, a large ski network stretching as far as the Samnaun region over the border in Switzerland. The resort's slopes lie at a snowsure altitude of between 2,000 and 2,872 metres and are connected by many state-of-the-art lifts. Pistes range from easy to terrifyingly difficult, with gradiens of up to 70% awaiting skiers and snowboarders who dare. The Ischgl Snowpark is a meeting point for freestyle skiers and snowboarders. The resort also has a ski school as well as a ski kindergarten. Three ski safaris of between 40 and 60 kilometres in length invite visitors to discover some of the ancient smuggling routes in this border region. Along the way there are plenty of mountain huts and restaurants on both the Austria and the Swiss side serving hearty local food.
                """,
                image: "ischgl",
                pistesDistance: 172,
                altitude: "Altitude: 1,377 - 2,872m",
                altitudeLow: 1377,
                altitudeHigh: 2872,
                difficulty: [
                    Difficulty(
                        level: .easy,
                        distance: "38 km"
                    ),
                    Difficulty(
                        level: .intermediate,
                        distance: "97 km"
                    ),
                    Difficulty(
                        level: .difficult,
                        distance: "24 km"
                    ),
                    Difficulty(
                        level: .skiTouringRoutes,
                        distance: "13 km"
                    )
                ],
                snowDepthOnMount: 130,
                liftsOpen: 41,
                liftsAvail: 46,
                accessiblePublicTransport: false,
                suitableFor: [.beginners, .intermediate, .advanced, .monoskiers],
                price: 72.00
            ),
            
            Resort(
                name: "Jöchelspitze ski resort",
                detailsTitle: "Rising from 1,200 to 1,800 metres, the Jöchelspitze ski resort in the scenic Lechtal Valley boasts beautiful views and one two-man chairlift giving skiers and snowboarders access to the uncrowded beginner and intermediate slopes. The lift pass for the Jöchelspitze resort is also valid at the Gföllberg lift in the neighbouring village of Holzgau.",
                description: """
                """,
                image: "joechelspitze",
                pistesDistance: 5,
                altitude: "Altitude: 1,200 - 1,800m",
                altitudeLow: 1200,
                altitudeHigh: 1800,
                difficulty: [
                    Difficulty(
                        level: .easy,
                        distance: "3 km"
                    ),
                    Difficulty(
                        level: .intermediate,
                        distance: "2 km"
                    )
                ],
                snowDepthOnMount: 0,
                liftsOpen: 0,
                liftsAvail: 2,
                accessiblePublicTransport: false,
                suitableFor: [.beginners, .intermediate],
                price: 49.50
            ),
            
            Resort(
                name: "Jungholz ski resort",
                detailsTitle: "Hidden away in the Allgäu Alps, surrounded on all sides by Bavaria, the village of Jungholz is a Tirolean exclave on German territory. The family-friendly ski resort of the same name has plenty of north-facing slopes served by modern lifts, including some chairlifts specially designed for children. Children can have fun and learn to ski in the 'N'Ice Bear Kinderland Jungholz' at the bottom of the resort, while adrenaline junkies should visit the 'Grizzly Family Snowpark' with its mogul run, obstacles and kickers. The resort's pistes lie at a snowsure altitude of between 1,100 and 1,500 metres above sea level.",
                description: """
                """,
                image: "jungholz",
                pistesDistance: 10,
                altitude: "Altitude: 1,058 - 1,500m",
                altitudeLow: 1058,
                altitudeHigh: 1500,
                difficulty: [
                    Difficulty(
                        level: .easy,
                        distance: "7 km"
                    ),
                    Difficulty(
                        level: .intermediate,
                        distance: "3 km"
                    )
                ],
                snowDepthOnMount: 0,
                liftsOpen: 0,
                liftsAvail: 8,
                accessiblePublicTransport: false,
                suitableFor: [.beginners, .intermediate, .advanced],
                price: 42.00
            ),
            
            Resort(
                name: "Kappl ski resort",
                detailsTitle: "Situated on the sunny side of the Paznauntal Valley, the family-friendly ski resort of Kappl lies in the foothills of the Verwall Mountains and has a range of pistes for beginner, intermediate and expert skiers as well as a funpark and a children's area.",
                description: """
                Sunny Kappl in the majestic Paznauntal Valley offers fantastic skiing and snowsure slopes reaching all the way up to 2,700 metres above sea level. Though the selection of slopes may be more limited than in larger resorts, there is something for everyone: from easy runs for beginners to red runs for advanced skiers and three black runs for experts. The longest piste in the resort is the Lattenabfahrt, while the fastest is without a doubt the permanent race course. For boarders and freestylers there is the Snowpark Alblitt, while families will enjoy the Sunny Mountain Adventure Park with its practice area, ski carousel and all-day childcare facilities. The best place for a relaxing drink with fabulous views is the Sunny Mountain Panoramabar at 2,100 metres above sea level.
                """,
                image: "kappl",
                pistesDistance: 42,
                altitude: "Altitude: 1,180 - 2,690m",
                altitudeLow: 1180,
                altitudeHigh: 2690,
                difficulty: [
                    Difficulty(
                        level: .easy,
                        distance: "10 km"
                    ),
                    Difficulty(
                        level: .intermediate,
                        distance: "20 km"
                    ),
                    Difficulty(
                        level: .difficult,
                        distance: "5 km"
                    ),
                    Difficulty(
                        level: .skiTouringRoutes,
                        distance: "7 km"
                    )
                ],
                snowDepthOnMount: 120,
                liftsOpen: 0,
                liftsAvail: 10,
                accessiblePublicTransport: false,
                suitableFor: [.beginners, .intermediate, .advanced, .families],
                price: 59.50
            ),
            
            Resort(
                name: "Kartitsch ski resort",
                detailsTitle: "The ski resort of Kartitsch is located at the intersection between the Hochpustertal Valley and the Gailtal Valley in East Tirol. It has one easy and one intermediate piste leading from over 1,800 metres back down into the valley. Thanks to its small size and calm atmosphere it is popular with families. There is a separate beginners' area with a conveyor-belt lift. Every Thursday evening there is night skiing with live music at the igloo bar.",
                description: """
                """,
                image: "kartitsch",
                pistesDistance: 4,
                altitude: "Altitude: 1,350 - 1,820m",
                altitudeLow: 1350,
                altitudeHigh: 1820,
                difficulty: [
                    Difficulty(
                        level: .easy,
                        distance: "2 km"
                    ),
                    Difficulty(
                        level: .intermediate,
                        distance: "2 km"
                    )
                ],
                snowDepthOnMount: 90,
                liftsOpen: 0,
                liftsAvail: 2,
                accessiblePublicTransport: false,
                suitableFor: [.beginners, .intermediate],
                price: 33.60
            ),
            
            Resort(
                name: "Kaunertal Glacier ski resort",
                detailsTitle: "The Kaunertal Glacier may be somewhat off the beaten track, but it is well worth making the effort to travel to this resort in the Kaunertal Valley. This large ski area in the west of Tirol is one of the highest in the region and offers snowsure conditions well into spring.",
                description: """
                The journey to the Kaunertal Glacier is an experience in itself. The winding Kaunertaler Glacier Road twists and turns its way up 29 corners to the edge of the Weißseeferner glacier at an incredible 2,750 metres above sea level. Visitors can simply park their car at the bottom of the slopes and head straight out onto the pistes. The Kaunertaler Glacier may not be the easiest ski resort to reach, but it is without a doubt one of the most snowsure in Tirol. Skiers and snowboarders can enjoy excellent conditions on blue, red and black pistes at altitudes of up to 3,108m from September through until June.

                Despite its popularity, the Kaunertal Glacier has almost no lift queues. Beginners will enjoy the easy blue slopes near the Falginjoch ridge, while advanced and expert skiers can take on the FIS race piste at the Nörderjoch and freestyler can get their jib on in the snowpark. One of the resort's highlights is the 2.2km black run leading down from the Karlesspitze through a 140m floodlit tunnel to the Ochsenalm. The construction of the new Falginjochbahn lift was used to create another highlight, the Black Ibex. This piste begins at the top of the lift and, with an average gradient of 41.3 degrees and a pitch of 87.85%, is the steepest in-bounds run anywhere in Austria.The resprt has plenty of slopes for all abilities as well as some excellent off-piste ski touring and freeriding.

                Holders of a lift pass for the Kaunertal Glacier can also use the lifts in the smaller family-friendly resort of Fendels, which has an extensive children's and beginners' area.
                """,
                image: "kaunertaler",
                pistesDistance: 55,
                altitude: "Altitude: 2,150 - 3,160m",
                altitudeLow: 2150,
                altitudeHigh: 3160,
                difficulty: [
                    Difficulty(
                        level: .easy,
                        distance: "23 km"
                    ),
                    Difficulty(
                        level: .intermediate,
                        distance: "19 km"
                    ),
                    Difficulty(
                        level: .difficult,
                        distance: "14 km"
                    )
                ],
                snowDepthOnMount: 0,
                liftsOpen: 6,
                liftsAvail: 8,
                accessiblePublicTransport: false,
                suitableFor: [.beginners, .intermediate, .advanced, .monoskiers],
                price: 64.00
            ),
            
            Resort(
                name: "Kellerjoch ski resort, Schwaz",
                detailsTitle: "Located in the middle of the Inn Valley, yet far from the hectic of the region's larger ski areas, the resort of Kellerjoch is to be found above the town of Schwaz. It offers a range of sunny pistes up to 1,890 metres above sea level suitable for all ages and abilities. The local ski school offers group lessons and one-on-one tuition, while there are also a number of off-piste descents for those who enjoy venturing into the backcountry.",
                description: """
                """,
                image: "kellerjoch",
                pistesDistance: 14,
                altitude: "Altitude: 1,331 - 1,900m",
                altitudeLow: 1331,
                altitudeHigh: 1900,
                difficulty: [
                    Difficulty(
                        level: .easy,
                        distance: "7 km"
                    ),
                    Difficulty(
                        level: .intermediate,
                        distance: "5 km"
                    ),
                    Difficulty(
                        level: .difficult,
                        distance: "2 km"
                    )
                ],
                snowDepthOnMount: 0,
                liftsOpen: 4,
                liftsAvail: 4,
                accessiblePublicTransport: false,
                suitableFor: [],
                price: 42.00
            ),
            
            Resort(
                name: "Kirchdorf ski resort",
                detailsTitle: "Hugging the rugged Wilder Kaiser Range, this small resort between St. Johann and Waidring is one of Tirol‘s best kept secrets for families and novices. It is run by the local ski school and has a large beginners' area for children and adults taking their first tentative turns on snow. The ski school offers group lessons and one-on-one tuition.",
                description: """
                """,
                image: "kirchdorf",
                pistesDistance: 5,
                altitude: "Altitude: 640 - 720m",
                altitudeLow: 640,
                altitudeHigh: 720,
                difficulty: [
                    Difficulty(
                        level: .easy,
                        distance: "5 km"
                    )
                ],
                snowDepthOnMount: 0,
                liftsOpen: 0,
                liftsAvail: 3,
                accessiblePublicTransport: false,
                suitableFor: [.beginners, .intermediate],
                price: 23.00
            ),
            
            Resort(
                name: "Kitzbühel ski resort",
                detailsTitle: "Some people say that skiing was invented in Kitzbühel. One thing is for sure: the annual Hahnenkamm downhill race is without a doubt the most famous ski race in the world. The surrounding Kitzbühel ski resort benefits from this international reputation and offers a wide range of pistes for all abilities.",
                description: """
                Which town in Tirol can claim to have hosted ski races on a regular basis as early as the 19th century? Kitzbühel can. In 1893 Franz Reisch became the first person in Austria to win an alpine dowhill ski race, held on the Kitzbüheler Horn mountain. This is the time when the legend of Kitzbühel was born. Today it lives on, fuelled by the annual Hahnenkamm downhill race in January on the infamous Streif course. But it is not only world-class skiers who benefit from Kitzbühel's reputation and infrastructure. The ski resort around the Kitzbüheler Horn mountain is one of the most popular in the Alps thanks to its huge range of pistes catering for all abilities.

                Snowboard funparks, excellent off-piste ski touring for freeriders, state-of-the-art lifts as well as plenty of cosy huts and snack stations combine to make Kitzbühel a top winter destination. Experienced skiers should not miss out on the chance to ski the Streif, which is considered one of the most difficult race pistes in the world. Despite the fact that the resort's pistes "only" reach up to around 2,000 metres above sea level, Kitzbühel has snowsure slopes from December through until April.

                Further advantages Kitzbühel has to offer include the fact that it is easy to reach as well as its designer shops. The pretty village is home to many exclusive boutiques, fine restaurants, stylish bars and nightclubs which ensure there is plenty to see and do at the end of a great day on the slopes.
                """,
                image: "kitzbuehelu",
                pistesDistance: 215,
                altitude: "Altitude: 800 - 2,000m",
                altitudeLow: 800,
                altitudeHigh: 2000,
                difficulty: [
                    Difficulty(
                        level: .easy,
                        distance: "101 km"
                    ),
                    Difficulty(
                        level: .intermediate,
                        distance: "61 km"
                    ),
                    Difficulty(
                        level: .difficult,
                        distance: "17 km"
                    ),
                    Difficulty(
                        level: .skiTouringRoutes,
                        distance: "36 km"
                    )
                ],
                snowDepthOnMount: 72,
                liftsOpen: 6,
                liftsAvail: 56,
                accessiblePublicTransport: false,
                suitableFor: [.beginners, .intermediate, .advanced, .families, .monoskiers],
                price: 72.00
            ),
            
            Resort(
                name: "Knittel ski resort",
                detailsTitle: "Located in scenic Lechtal Valley, next to the tiny village of Elbigenalp, Knittel ski resort is great for families and advanced skiers. This friendly mountain has gained fame for its peacefulness, fabulous scenery and awesome beauty of nature. The large novice area with easy to use lifts is ideal for those just getting their snow legs. It has snow-making facilities to top up the snow provided by Mother Nature.",
                description: """
                """,
                image: "knittel",
                pistesDistance: 3,
                altitude: "Altitude: 1,052 - 1,231m",
                altitudeLow: 1052,
                altitudeHigh: 1231,
                difficulty: [
                    Difficulty(
                        level: .easy,
                        distance: "2 km"
                    ),
                    Difficulty(
                        level: .intermediate,
                        distance: "1 km"
                    )
                ],
                snowDepthOnMount: 0,
                liftsOpen: 0,
                liftsAvail: 4,
                accessiblePublicTransport: false,
                suitableFor: [.beginners, .intermediate, .advanced],
                price: 25.00
            ),
            
            Resort(
                name: "Kolsassberg ski resort",
                detailsTitle: "One lift, one piste, one beginners' area – that's all you need to keep children happy at the small ski resort of Kolsassberg in the Inn Valley. The small nature of the resort makes it easy for parents to keep an eye on their children. The resort also has snow-making facilities in case Mother Nature decides to take a break.",
                description: """
                """,
                image: "kolsassberg",
                pistesDistance: 2,
                altitude: "Altitude: 750 - 950m",
                altitudeLow: 750,
                altitudeHigh: 950,
                difficulty: [
                    Difficulty(
                        level: .easy,
                        distance: "7 km"
                    ),
                    Difficulty(
                        level: .intermediate,
                        distance: "21 km"
                    ),
                    Difficulty(
                        level: .difficult,
                        distance: "2 km"
                    ),
                    Difficulty(
                        level: .skiTouringRoutes,
                        distance: "10 km"
                    )
                ],
                snowDepthOnMount: 0,
                liftsOpen: 0,
                liftsAvail: 2,
                accessiblePublicTransport: false,
                suitableFor: [.beginners, .intermediate],
                price: 24.00
            ),
            
            Resort(
                name: "Kühtai ski resort",
                detailsTitle: "Austria's highest ski resort is known for its snowsure slopes and family-friendly facilities.",
                description: """
                The road up to the resort of Kühtai at 2,017 metres above sea level is long and winding, passing through stunning alpine landscape as it makes its way up to this sunny plateau with many hotels and home to what is Austria's highest ski resort. Thanks to their exceptional altitude, Kühtai's slopes sometimes even remain open until early May.

                Kühtai is first and foremost known as a family-friendly ski area. Advantages range from special hourly ski passes and very reasonable prices to excellent facilities such as conveyor-belt lifts and easy draglifts designed for the needs of children. Snowboarders and freestylers will enjoy the funpark, while advanced and expert skiers can explore the resort's many red runs. Away from the marked slopes there is plenty of interesting terrain for ski touring enthusiasts, especially around the Sulzkogel (3,016m) and the Pirchkogel (2,828m) mountains.

                As well as the resort's many huts, Kühtai also has plenty of pubs and restaurants such as the Dorfstadl. Twice a week the slopes are lit up for night skiing, with the piste down from the Zum Kaiser Maximilian hut open right through until 11:30pm. Lift passes for Kühtai are also valid for the nearby resort of Hochoetz, which can be reached using a free shuttle service.
                """,
                image: "kuehtai",
                pistesDistance: 44,
                altitude: "Altitude: 1,938 - 2,520m",
                altitudeLow: 1938,
                altitudeHigh: 2520,
                difficulty: [
                    Difficulty(
                        level: .easy,
                        distance: "9 km"
                    ),
                    Difficulty(
                        level: .intermediate,
                        distance: "27 km"
                    ),
                    Difficulty(
                        level: .difficult,
                        distance: "8 km"
                    )
                ],
                snowDepthOnMount: 140,
                liftsOpen: 11,
                liftsAvail: 12,
                accessiblePublicTransport: false,
                suitableFor: [.beginners, .intermediate, .advanced, .families],
                price: 52.00
            ),
            
            Resort(
                name: "Lermoos - Biberwier ski resort",
                detailsTitle: "Lermoos and Biberwier are two of the most family-friendly resorts in the vast Tirol Zugspitz Arena. During the daytime the wide slopes are ideal for beginners and cruisers, while at night there is plenty to keep guests entertained.",
                description: """
                The view from the Grubigstein mountain at 2,100m is one of the most spectacular in Tirol: skiers and snowboarders can let their eyes wander from the peaks of the mighty Zugspitze Massif down to the pretty village of Ehrwald in the valley below. The resort of Lermoos, where the Grubigstein can be found, has a small selection of pistes rated blue (easy), red (intermediate) and black (expert). A shuttle bus connects Lermoos to the nearby resort of Biberwier. Both are part of the huge Tirol Zugspitz Arena ski network and are considere two of its most family-friendly resorts. The children's area offers is plenty for youngsters to see and do, while snowboarders can work on their tricks at the funpark near the mid-way station of the cable car in Lermoos. One a week there is night skiing on the floodlit pistes. Both resorts have several huts and restaurants serving local food.
                """,
                image: "lermoos",
                pistesDistance: 39,
                altitude: "Altitude: 1,000 - 2,100m",
                altitudeLow: 1000,
                altitudeHigh: 2100,
                difficulty: [
                    Difficulty(
                        level: .easy,
                        distance: "20 km"
                    ),
                    Difficulty(
                        level: .intermediate,
                        distance: "14 km"
                    ),
                    Difficulty(
                        level: .difficult,
                        distance: "2 km"
                    ),
                    Difficulty(
                        level: .skiTouringRoutes,
                        distance: "3 km"
                    )
                ],
                snowDepthOnMount: 0,
                liftsOpen: 0,
                liftsAvail: 11,
                accessiblePublicTransport: false,
                suitableFor: [.beginners, .intermediate, .advanced],
                price: 61.50
            ),
            
            Resort(
                name: "Lienz ski resort",
                detailsTitle: "Blessed with plenty of sunshine throughout the season, the two ski resorts Zettersfeld and Hochstein in the mountains above Lienz in East Tirol are the perfect place to escape dark winter days. While Zettersfeld is ideal for families, Hochstein provides a challenge for advanced and expert skiers and snowboarders.",
                description: """
                Lienz, the largest town in East Tirol, boasts 2,000 hours of sunshine per year. Little wonder that guests flock to this quiet region during the winter months to ski at the two resorts located in the mountains high above. The town itself with its pretty medieval centre is also well worth a visit.

                The south-facing resort of Zettersfeld is ideal for families with children as well as snowboarders and freestyle skiers, who congregate in the Sunsite Park with its kickers and rails. The extensive network of pistes extends all the way up to 2,278 metres above sea level. Some of the best places to enjoy the fabulous views of the Dolomites are the sunny terraces outside the huts and restaurants in the resort. Zettersfeld also has a ski kindergarten and plenty of off-piste ski touring routes.

                Just a few kilometres down the road, yet a world away, is the resort of Hochstein on the south-western edge of Lienz. This resort is much more suited to intermediate, advanced and expert skiers and snowboarders and regularly hosts FIS SKi World Cup races. The network of pistes is divided up into three sections which, when combined, form one of the longest runs anywhere in Tirol with 1,300 vertical metres of descent. The Hochsteinhütte hut at the top of the resort offers magnificent views. There is one lift pass covering both Zettersfeld and Hochstein.
                """,
                image: "lienz",
                pistesDistance: 37,
                altitude: "Altitude: 668 - 2,278m",
                altitudeLow: 668,
                altitudeHigh: 2278,
                difficulty: [
                    Difficulty(
                        level: .easy,
                        distance: "10 km"
                    ),
                    Difficulty(
                        level: .intermediate,
                        distance: "22 km"
                    ),
                    Difficulty(
                        level: .difficult,
                        distance: "5 km"
                    )
                ],
                snowDepthOnMount: 90,
                liftsOpen: 0,
                liftsAvail: 10,
                accessiblePublicTransport: false,
                suitableFor: [.beginners, .intermediate, .advanced, .families],
                price: 62.00
            ),
            
            Resort(
                name: "Mayrhofen Ski Resort",
                detailsTitle: "Mountopolis, the outdoor adventure world in Mayrhofen, is famous for its insanely steep Harakiri piste and large snowpark. Mayrhofen is one of the top wintersports destinations in Tirol for intermediate and expert skiers, yet also offers plenty of gentle runs for beginners and families.",
                description: """
                The gradient of 78% tells you everything you need to know about the infamous Harakiri piste in Mayrhofen. Indeed, standing at the top, the run seems even more intimidating than numbers could ever suggest. It is quite simply the steepest ski run in Austria – and one of the biggest attractions in Mayrhofen. However, this popular resort at the end of the Zillertal Valley has much more to offer than just adrenaline-pumping action. Its large network of pistes caters for all abilities and ambitions, including families, beginners and cruisers, and extends all the way up to 2,500m.

                Those who like to take it easy on the slopes can do so in the Ahorn area with its gentle, wide slopes ideal for carving, a family park including the FunRide Ahorn and Albert Adler Tour and the 5.5 km descent to the valley. The White Lounge at 2,000 metres above sea level is a combination of an igloo village, a bar and a chillout zone. Advanced and expert skiers and snowboarders should head for the Penken, Rastkogel and Eggalm section of the resort. Freestylers flock to the famous PenkenPark, which is the resort's second big attraction alongside the Harikiri slope. All in all there are six different areas in Mayrhofen.
                """,
                image: "mayrhofen",
                pistesDistance: 142,
                altitude: "Altitude: 630 - 2,500m",
                altitudeLow: 630,
                altitudeHigh: 2500,
                difficulty: [
                    Difficulty(
                        level: .easy,
                        distance: "44 km"
                    ),
                    Difficulty(
                        level: .intermediate,
                        distance: "70 km"
                    ),
                    Difficulty(
                        level: .difficult,
                        distance: "28 km"
                    )
                ],
                snowDepthOnMount: 40,
                liftsOpen: 26,
                liftsAvail: 43,
                accessiblePublicTransport: false,
                suitableFor: [.beginners, .intermediate, .advanced, .monoskiers],
                price: 72.00
            ),
            
            Resort(
                name: "Mieders ski resort",
                detailsTitle: "Situated at the foot of the iconic Serles mountain, known as the 'High Altar of Tirol', the Serlesbahnen Mieders is a small but perfectly formed ski resort in the Stubai Valley with a limited selection of ski slopes but no lift queues.",
                description: """
                At the entrance to the Stubai Valley, on the slopes of the mighty 2,717m Serles mountain, lies the ski resort of Serlesbahnen Mieders. Its pistes extend up to an altitude of 1,750 metres and draw mainly families and cruisers. Beginners will find a gentle practice area next to the bottom of the cable car, while freeriders will find powder fields above the treeline. From the top there are fabulous views, not least of the Serles, which Goethe called the "High Altar of Tirol".
                """,
                image: "mieders",
                pistesDistance: 6,
                altitude: "Altitude: 960 - 1,674m",
                altitudeLow: 960,
                altitudeHigh: 1674,
                difficulty: [
                    Difficulty(
                        level: .easy,
                        distance: "7 km"
                    ),
                    Difficulty(
                        level: .intermediate,
                        distance: "21 km"
                    ),
                    Difficulty(
                        level: .difficult,
                        distance: "2 km"
                    ),
                    Difficulty(
                        level: .skiTouringRoutes,
                        distance: "10 km"
                    )
                ],
                snowDepthOnMount: 0,
                liftsOpen: 0,
                liftsAvail: 5,
                accessiblePublicTransport: false,
                suitableFor: [.beginners, .intermediate, .advanced],
                price: 42.50
            ),
            
            Resort(
                name: "Muttereralm ski resort",
                detailsTitle: "Only a snowball's throw away from Tirol’s capital, Innsbruck, the Muttereralm ski resort offers everything you would expect from a real Tirolean ski area: abundant natural snow, great terrain and friendly people. It's a local's favourite and the perfect place for families, featuring a fantastic network of gentle slopes for cruisers and big mountain steeps for the experts in the family. Racers can test their skills on the slalom course at Pfriemesköpfl. The resort also has one of the most beautiful tree-lined descents in Austria, the Götzener Abfahrt.",
                description: """
                """,
                image: "muttereralm",
                pistesDistance: 15,
                altitude: "Altitude: 920 - 1,800m",
                altitudeLow: 920,
                altitudeHigh: 1800,
                difficulty: [
                    Difficulty(
                        level: .easy,
                        distance: "6 km"
                    ),
                    Difficulty(
                        level: .intermediate,
                        distance: "8 km"
                    ),
                    Difficulty(
                        level: .difficult,
                        distance: "1 km"
                    )
                ],
                snowDepthOnMount: 85,
                liftsOpen: 0,
                liftsAvail: 5,
                accessiblePublicTransport: false,
                suitableFor: [.beginners, .intermediate, .advanced],
                price: 49.00
            ),
            
            Resort(
                name: "Nauders ski resort",
                detailsTitle: "Straddling the Austrian-Italian border in the breathtaking Tirolean Alps, the Nauders-Bergkastel ski resort is located near the Reschenpass mountain pass. The resort's pistes stretch all the way up to 2,800 metres above sea level.",
                description: """
                Straddling the Austrian-Italian border in the breathtaking Tirolean Alps, the Nauders-Bergkastel ski resort is located near the Reschenpass mountain pass. The resort's pistes stretch all the way up to 2,800 metres above sea level.

                Located directly on the Main Alpine Ridge, with slopes between 1,400 and 2,800 metres above sea level, the Nauders-Bergkastel resort near the Reschenpass mountain pass is blessed with plenty of snow during the winter months. The network of pistes offers something for everyone, from families and beginners to intermediate and expert skiers.

                Beginners and those returning to the sport will find easy slopes next to the bottom of the cable car, while at the top of the Bergkastel cable car there is the "Nauderix Kinderland" for toddlers and youngsters finding their snow legs. Highlights include an adventure forest, bumps runs, a snow tunnel, a children's restaurant and even a mini snowpark. Freestyle skiers and snowboarders meet in the resort's two full-sized funparks with plenty of kickers and rails.

                Those in search of powder fields can choose between five off-piste ski routes. Among the most popular is the run from the Gueser Kopf at 2,745 metres above sea level down through the Schafkar in the Nauderer Tschey area of the resort. "Die Schwarze", literally "The Black One", is the toughest piste in the resort and will challenge even expert skiers with its steep gradient and fiendishly tricky moguls. Tobogganing enthusiasts will find one of the longest toboggan runs in Tirol (8km) leading from the top of the Bergkastelbahn cable car into the valley.
                """,
                image: "nauders",
                pistesDistance: 81,
                altitude: "Altitude: 1,400 - 3,000m",
                altitudeLow: 1400,
                altitudeHigh: 3000,
                difficulty: [
                    Difficulty(
                        level: .easy,
                        distance: "24 km"
                    ),
                    Difficulty(
                        level: .intermediate,
                        distance: "34 km"
                    ),
                    Difficulty(
                        level: .difficult,
                        distance: "17 km"
                    ),
                    Difficulty(
                        level: .skiTouringRoutes,
                        distance: "6 km"
                    )
                ],
                snowDepthOnMount: 0,
                liftsOpen: 0,
                liftsAvail: 13,
                accessiblePublicTransport: false,
                suitableFor: [.beginners, .intermediate, .advanced, .families],
                price: 57.00
            ),
            
            Resort(
                name: "Nordkette ski resort, Innsbruck",
                detailsTitle: "Situated high above the regional capital Innsbruck, the Nordkette ski resort is especially popular with advanced and expert skiers. The journey from the city centre up onto the slopes takes just 20 minutes.",
                description: """
                There are few, if any, cities in the world where you can be walk out of the office, step onto the cable car and be out skiing on the slopes just 20 minutes later. This combination of urban living and outdoor recreation makes Innsbruck, the regional capital of Tirol, truly unique.

                Two cable cars take skiers and snowboarders from the city centre all the way up to the Hafelekar ridge at 2,260 metres above sea level. After a few deep breaths, it is time to plunge down the famous "Karrinne" couloir with gradients of up to 70% – one of the steepest ski routes in Europe. Most of the terrain in and around the Nordkette resort is steep and challenging, so it is little wonder that it has established a reputation as a hotspot for experts and freeriders. However, there are also plenty of red (intermediate) runs. At the Seegrube station, next to the top of the first cable car, there is also a children's area with a conveyor-belt lift, gentle slopes and childcare facilities.

                While freeriders can often be seen shredding fresh tracks early in the morning, freestylers head for the Skylinepark – the world's only Incity Snowpark. In the evening the party continues in the legendary Cloud 9 Iglu Bar. During the daytime the restaurant at the Seegrube serves excellent local food served out on the sunny terrace with fabulous views of the Inn Valley below.
                """,
                image: "nordkette",
                pistesDistance: 15,
                altitude: "Altitude: 860 - 2,256m",
                altitudeLow: 860,
                altitudeHigh: 2256,
                difficulty: [
                    Difficulty(
                        level: .easy,
                        distance: "1 km"
                    ),
                    Difficulty(
                        level: .intermediate,
                        distance: "9 km"
                    ),
                    Difficulty(
                        level: .difficult,
                        distance: "1 km"
                    ),
                    Difficulty(
                        level: .skiTouringRoutes,
                        distance: "5 km"
                    )
                ],
                snowDepthOnMount: 143,
                liftsOpen: 0,
                liftsAvail: 6,
                accessiblePublicTransport: false,
                suitableFor: [.intermediate, .advanced],
                price: 34.00
            ),
            
            Resort(
                name: "Obergurgl-Hochgurgl ski resort",
                detailsTitle: "Pistes reaching up to altitudes of over 3,000 metres, snowsure conditions until May and plenty of cosy hut and restaurants make the ski resort of Obergurgl-Hochgurgl at the end of the Ötztal Valley one of Austria's top destinations for discerning skiers and snowboarders.",
                description: """
                Pistes reaching up to altitudes of over 3,000 metres, snowsure conditions until May and plenty of cosy hut and restaurants make the ski resort of Obergurgl-Hochgurgl at the end of the Ötztal Valley one of Austria's top destinations for discerning skiers and snowboarders.

                There are not many places, apart from the few glacier resorts in Tirol, where skiers and snowboarders can enjoy excellent conditions from November all the way through until May. However, Obergurgl-Hochgurgl in the high southern reaches of the Ötztal Valley is able to offer fantastic skiing throughout the season thanks to its large network of north-facing pistes stretching from 1,800m to an incredible 3,080m.

                Indeed, Obergurgl-Hochgurgl's exceptionally high altitude means that the resort even manages to start the season in autumn. Highlights include a funpark, plenty of off-piste freeriding, night skiing and a wide selection of huts, restaurants and bars. The most eye-catching eatery in the resort is without a doubt the Top Mountain Star restaurant on the Wurmkogel mountain. This futuristic building perched on a narrow ridge at 3,080 metres above sea level offers breathtaking views of the Dolomites and the Ötztal Alps.

                Many of the state-of-the-art lifts, where queues are rare, leave from the villages of Obergurgl or Hochgurgl. The two villages themselves are connected by the Top-Express cable car.
                """,
                image: "obergurgl",
                pistesDistance: 112,
                altitude: "Altitude: 1,800 - 3,080m",
                altitudeLow: 1800,
                altitudeHigh: 3080,
                difficulty: [
                    Difficulty(
                        level: .easy,
                        distance: "7 km"
                    ),
                    Difficulty(
                        level: .intermediate,
                        distance: "21 km"
                    ),
                    Difficulty(
                        level: .difficult,
                        distance: "2 km"
                    ),
                    Difficulty(
                        level: .skiTouringRoutes,
                        distance: "10 km"
                    )
                ],
                snowDepthOnMount: 193,
                liftsOpen: 21,
                liftsAvail: 25,
                accessiblePublicTransport: false,
                suitableFor: [.intermediate, .advanced],
                price: 70.00
            ),
            
            Resort(
                name: "Obertilliach ski resort",
                detailsTitle: "The ski resort of Obertilliach is located in the Lesachtal Valley, the southernmost part of East Tirol, and boasts not only snowsure slopes but also fabulous views of the Dolomites.",
                description: """
                Obertilliach is probably most famous for its biathlon stadium and as one of the world's most popular training locations for top athletes competing in the Nordic disciplines of cross-country skiing and biathlon. One of the reasons that professional athletes and holidaymakers alike flock to this quiet corner of East Tirol in winter is because of its very reliable snow conditions throughout the winter – a quality also appreciated by alpine skiers. The small local ski resort on the Golzentipp mountain overlooking the village is particularly suitable for families with children and those who like to cruise the slopes. Beginners of all ages can take lessons at the Obertilliach Ski School. There is also a children's learning area known as Tilly Kids' Camp with rollers, small jumps and a tunnel. The resort is south-facing, ensuring plenty of sunshine both on the slopes and on the large terrace of the ConnyAlm restaurant at 2,050m. Another advantage for families is that the ski pass prices here are very reasonable.
                """,
                image: "obertilliach",
                pistesDistance: 15,
                altitude: "Altitude: 1,430 - 2,248m",
                altitudeLow: 1430,
                altitudeHigh: 2248,
                difficulty: [
                    Difficulty(
                        level: .easy,
                        distance: "3 km"
                    ),
                    Difficulty(
                        level: .intermediate,
                        distance: "8 km"
                    ),
                    Difficulty(
                        level: .difficult,
                        distance: "1 km"
                    ),
                    Difficulty(
                        level: .skiTouringRoutes,
                        distance: "3 km"
                    )
                ],
                snowDepthOnMount: 130,
                liftsOpen: 0,
                liftsAvail: 5,
                accessiblePublicTransport: false,
                suitableFor: [.beginners, .intermediate, .advanced, .families],
                price: 45.00
            ),
            
            Resort(
                name: "Patscherkofel ski resort",
                detailsTitle: "Known to Innsbruck residents as a “locals’ mountain” and a three-time Olympic venue, the Patscherkofel ski resort continues to draw wintersports enthusiasts of all kinds.",
                description: """
                With its pistes 1,400 metres above Innsbruck, fabulous views of the Inn Valley and rich sporting history, the Patscherkofel mountain and the ski resort it is home to are legendary within Tirol and beyond. This mighty mountain to the south of the regional capital hosted the Winter Olympics in 1964 and 1976 as well as the inaugural Winter Youth Olympic Games in 2012. Innsbruck locals appreciate the resort's proximity to the city, which is just a 15-minute drive away. One of the main highlights is without a doubt the large snowpark, where budding freestylers gather to dial in their tricks. The resort also has three children's areas at different altitudes, while from the top cable car station ski touring enthusiasts can climb all the way to the summit at 2,248m. Even those who don't fancy the extra few hundred vertical metres can still look forward to a 6km-long run down to the bottom of the resort along piste number 3.
                """,
                image: "patscherkofel",
                pistesDistance: 19,
                altitude: "Altitude: 900 - 1,960m",
                altitudeLow: 900,
                altitudeHigh: 1960,
                difficulty: [
                    Difficulty(
                        level: .easy,
                        distance: "5 km"
                    ),
                    Difficulty(
                        level: .intermediate,
                        distance: "10 km"
                    ),
                    Difficulty(
                        level: .difficult,
                        distance: "4 km"
                    )
                ],
                snowDepthOnMount: 60,
                liftsOpen: 0,
                liftsAvail: 7,
                accessiblePublicTransport: false,
                suitableFor: [.beginners, .intermediate, .advanced],
                price: 45.50
            ),
            
            Resort(
                name: "Pertisau ski resort",
                detailsTitle: "Situated at the heart of Lake Achensee Region, sunny Pertisau offers a full range of amenities, including world-class skiing, outdoor activities and soothing spa treatments in a beautiful alpine environment. Rising from 950 to 1,500 metres, the terrain in its ski resort offers exciting skiing on uncrowded trails for all abilities. Amazing views of Lake Achensee and the surrounding mountain ranges will have you hooked. Down at the bottom of the resort there is an easy area for children, beginners and those getting back into snowsports after a while away. Bobos Skischule offers a range of ski courses and individual lessons.",
                description: """
                """,
                image: "pertisau",
                pistesDistance: 12,
                altitude: "Altitude: 960 - 1,500m",
                altitudeLow: 960,
                altitudeHigh: 1500,
                difficulty: [
                    Difficulty(
                        level: .easy,
                        distance: "6 km"
                    ),
                    Difficulty(
                        level: .intermediate,
                        distance: "6 km"
                    )
                ],
                snowDepthOnMount: 0,
                liftsOpen: 6,
                liftsAvail: 9,
                accessiblePublicTransport: false,
                suitableFor: [.beginners, .intermediate],
                price: 33.50
            ),
            
            Resort(
                name: "Pillersee - Buchensteinwand ski resort",
                detailsTitle: "The small resort of Pillerseetal - Buchsteinwand is the perfect place to get away from the hustle and bustle of mass tourism and enjoy the quieter side of Tirol. There are pistes for all abilities as well as fine views of the Loferer Rocky Mountains.",
                description: """
                Its easy-to-navigate topography and gentle, sunny slopes make the resort of Pillerseetal - Buchsteinwand ideal for families and those new to wintersports, though there are a number of challenging pistes for advanced and expert skiers and snowboarders such as the red runs and the black run down from the top of the 1,456-metre-high Buchensteinwand mountain to St. Ulrich. The resort itself can be acessed from two sides: St. Ulrich and St. Jakob in the north, and Hochfilzen in the south. Both have easy slopes for beginners and children. There is a special children's area ("Bobo-Kinderpark") in St. Ulrich. The skiing is generally more challenging near the summit of the mountain, where there is a huge 30-metre-high cross which visitors can climb up inside to enjoy the view. Freeriders and ski mountaineering fans will find good off-piste terrain. Last but not least, those keen to push themselves will find a speed camera and race course next to the Schlepplift Kröpfl draglift.
                """,
                image: "pillersee",
                pistesDistance: 18,
                altitude: "Altitude: 835 - 1,456m",
                altitudeLow: 835,
                altitudeHigh: 1456,
                difficulty: [
                    Difficulty(
                        level: .easy,
                        distance: "7 km"
                    ),
                    Difficulty(
                        level: .intermediate,
                        distance: "21 km"
                    ),
                    Difficulty(
                        level: .difficult,
                        distance: "2 km"
                    ),
                    Difficulty(
                        level: .skiTouringRoutes,
                        distance: "10 km"
                    )
                ],
                snowDepthOnMount: 0,
                liftsOpen: 0,
                liftsAvail: 10,
                accessiblePublicTransport: false,
                suitableFor: [.beginners, .intermediate, .advanced, .families],
                price: 46.00
            ),
            
            Resort(
                name: "Pitztal Glacier & Rifflsee ski resort",
                detailsTitle: "From beginners taking their first tentative turns on snow to experts in search of the ultimate challenge, the Pitztal Glacier offers something for everyone. It is Austria's highest glacier ski resort and a sensational wintersports destination.",
                description: """
                The Pitztal Glacier is quite literally the top ski resort in Austria: the highest point of this large glacier ski area at the end of the Pitztal Valley lies at a staggering 3,440 metres above sea level. Little wonder that skiers and snowboarders can look forward to excellent conditions on the slopes from September right through until May. The state-of-the-art Wildspitzbahn cable car takes visitors up onto the Hinterer Brunnenkogel, the resort's highest peak. There, the views of the many surrounding peaks, including North Tirol's highest peak, the Wildspitze, will take your breath away – literally! The nearby Café 3440, the highest in Austria, is a good place to sit down, relax and admire the majestic panorama of the Main Alpine Ridge.

                The pistes themselves are mainly rated red (intermediate), though there are also some blue (easy) and black (expert) pistes. The glacier also has its own funpark and halfpipe. Experienced freeriders can try the long descent over the Taschachferner glacier, passing through powder fields and past crevasses. Another area popular with freeriders is the run 1,500m run from the Mittagskogel mountain down into the valley.

                Nearby Rifflsee with its network of slopes up to 2,880 metres above sea level is ideal for families and beginners. It has a special practice area for children near the bottom of the cable car as well as a small selection of slopes catering for all abilities. A single lift pass covers both Rifflsee and the Pitztal Glacier.
                """,
                image: "Pitztal",
                pistesDistance: 44,
                altitude: "Altitude: 1,680 - 3,440m",
                altitudeLow: 1680,
                altitudeHigh: 3440,
                difficulty: [
                    Difficulty(
                        level: .easy,
                        distance: "13 km"
                    ),
                    Difficulty(
                        level: .intermediate,
                        distance: "21 km"
                    ),
                    Difficulty(
                        level: .difficult,
                        distance: "7 km"
                    ),
                    Difficulty(
                        level: .skiTouringRoutes,
                        distance: "3 km"
                    )
                ],
                snowDepthOnMount: 325,
                liftsOpen: 7,
                liftsAvail: 12,
                accessiblePublicTransport: false,
                suitableFor: [.beginners, .intermediate, .advanced],
                price: 65.00
            ),
            
            Resort(
                name: "Planberglifte & Wiesenlifte Pertisau",
                detailsTitle: "Skiing on the shores of Lake Achensee - in Pertisau there is a ski area that may not be that large but is very charming. Especially newcomers to skiing or snowboarding as well as children will enjoy exploring the resort.",
                description: """
                In Pertisau, on the shores of Lake Achensee, there are other small but perfectly formed ski resorts as well as the well-known resort on the Zwölferkopf mountain. There are three T-bar lifts serving an easy slope with a pleasant gradient, where children and newcomers to the sports of skiing and snowboarding can take their first tentative turns, ideally with the help of instructors from the Leithner Skischule ski school. This easy practice area is only a few minutes' walk from the Karwendel-Bergbahn car park, so you don't have to carry your ski equipment far. If required, the Sport Leithner rental shop offers equipment for hire at the bottom of the ski lifts.
                """,
                image: "planberglift",
                pistesDistance: 1,
                altitude: "Altitude: 940 - 1,030m",
                altitudeLow: 940,
                altitudeHigh: 1030,
                difficulty: [
                    Difficulty(
                        level: .easy,
                        distance: "0 km"
                    ),
                    Difficulty(
                        level: .intermediate,
                        distance: "1 km"
                    )
                ],
                snowDepthOnMount: 0,
                liftsOpen: 0,
                liftsAvail: 4,
                accessiblePublicTransport: true,
                suitableFor: [.beginners],
                price: 20.00
            ),
            
            Resort(
                name: "Rangger Köpfl ski resort",
                detailsTitle: "Located just 12 kilometres west of Tirol’s lively capital Innsbruck, Rangger Köpfl is one of Tirol skiers' best-kept secrets. Rising from 800 to 1,939 metres above sea level, the variety of sunny and wide runs provides great skiing and riding. The ski resort is readily accessible by car or a complimentary shuttle bus from Innsbruck. Rangger Köpfl is a great mountain for all ages and skiing abilities as well as a haven for other winter activities, from tobbogganing and winter walking to ski touring and backcountry skiing. The Rosskogelhütte at the top of the resort serves excellent food. Twice a week there is night skiing.",
                description: """
                """,
                image: "rangger",
                pistesDistance: 17,
                altitude: "Altitude: 820 - 2,000m",
                altitudeLow: 820,
                altitudeHigh: 2000,
                difficulty: [
                    Difficulty(
                        level: .easy,
                        distance: "8 km"
                    ),
                    Difficulty(
                        level: .intermediate,
                        distance: "7 km"
                    ),
                    Difficulty(
                        level: .difficult,
                        distance: "2 km"
                    )
                ],
                snowDepthOnMount: 30,
                liftsOpen: 0,
                liftsAvail: 5,
                accessiblePublicTransport: false,
                suitableFor: [.beginners, .intermediate],
                price: 39.00
            ),
            
            Resort(
                name: "Rofan ski resort",
                detailsTitle: "Perched high above Lake Achensee, the small Rofan ski resort is the ideal place for a relaxing day's skiing. Its sunny location also makes it popular with ski touring enthusiasts.",
                description: """
                Perched high above Lake Achensee, the small Rofan ski resort is the ideal place for a relaxing day's skiing. Its sunny location also makes it popular with ski touring enthusiasts.

                It is just a five-minute cable car ride from the village of Maurach on the southern shore of Lake Achensee up into the heart of the Rofan ski resort in the mountains high above. The top of the cable car at 1,840 metres above sea level is the highest point in this small, family-friendly ski area. However, the area also has plenty to offer experienced alpinists keen to explore the peaks in the region. While the experts head off piste, the network of well-groomed trails catering for all abilities will keep beginner, intermediate and advanced skiers and snowboarders entertained. The sunny descent all the way down into the valley is particularly popular with beginners. There are dedicated practice areas in Maurach and next to the top of the cable car. Children will enjoy the "Ski-Kinderland".
                """,
                image: "rofan",
                pistesDistance: 11,
                altitude: "Altitude: 930 - 1,870m",
                altitudeLow: 930,
                altitudeHigh: 1870,
                difficulty: [
                    Difficulty(
                        level: .easy,
                        distance: "1 km"
                    ),
                    Difficulty(
                        level: .intermediate,
                        distance: "8 km"
                    ),
                    Difficulty(
                        level: .difficult,
                        distance: "2 km"
                    )
                ],
                snowDepthOnMount: 0,
                liftsOpen: 0,
                liftsAvail: 4,
                accessiblePublicTransport: false,
                suitableFor: [.beginners, .intermediate, .advanced],
                price: 40.50
            ),
            
            Resort(
                name: "Rofanlifte Steinberg",
                detailsTitle: "Idyllically situated in a basin between the Achental Valley and the Brandenberg Valley, the small village of Steinberg am Rofan has a resort which particularly attracts novices and families looking for peace and quiet.",
                description: """
                The village of Steinberg am Rofan, which comprises six small hamlets, has only about 300 inhabitants. Nevertheless, it has its own ski resort in the heart of the Brandenberg Alps. Thanks to its relatively small size it is particularly popular with families. The area lies at 1,000 to 1,200 metres above sea level and has a total of about 1,000 metres of pistes. There is a practice slope with a baby lift and two other easy slopes, where novices and children can practise their first turns in peace. The longest of the slopes is located on the Gfaßköpfe near Hintersteinberg and can be reached with the Rofanlift II. This run is also suitable as a training or racing slope. If you are hungry after all that practising, why not stop off at the Liftstüberl in the car park, for example, or at the family-friendly Silberwaldhütte hut by the baby lift for a drink and a bite to eat?
                """,
                image: "rofanlifte",
                pistesDistance: 1,
                altitude: "Altitude: 1,050 - 1,250m",
                altitudeLow: 1050,
                altitudeHigh: 1250,
                difficulty: [
                    Difficulty(
                        level: .easy,
                        distance: "0 km"
                    ),
                    Difficulty(
                        level: .intermediate,
                        distance: "1 km"
                    )
                ],
                snowDepthOnMount: 0,
                liftsOpen: 0,
                liftsAvail: 3,
                accessiblePublicTransport: true,
                suitableFor: [.beginners],
                price: 29.00
            ),
            
            Resort(
                name: "Rosshütte ski resort",
                detailsTitle: "The Rosshütte ski resort is relatively small but nevertheless the largest ski area in the Seefeld Olympic Region. It is home to a wide range of pistes catering for all abilities.",
                description: """
                Most slopes are suitable for families and beginners, while there are also a number of off-piste ski routes leading up to the summits of the surrounding mountains. Children, beginners and those returning to the sport will find gentle slopes to practise on next to the bottom of the lifts. Freestylers should head for the Crazy Hole snowpark with lots of great obstacles to jib, jump and slide as well as large airbags for a soft landing. There are lots of restaurants and snack bars on the mountain serving good food and drink.
                """,
                image: "rosshuette",
                pistesDistance: 25,
                altitude: "Altitude: 1,230 - 2,064m",
                altitudeLow: 1230,
                altitudeHigh: 2064,
                difficulty: [
                    Difficulty(
                        level: .easy,
                        distance: "11 km"
                    ),
                    Difficulty(
                        level: .intermediate,
                        distance: "6 km"
                    ),
                    Difficulty(
                        level: .difficult,
                        distance: "1 km"
                    ),
                    Difficulty(
                        level: .skiTouringRoutes,
                        distance: "7 km"
                    )
                ],
                snowDepthOnMount: 53,
                liftsOpen: 0,
                liftsAvail: 12,
                accessiblePublicTransport: false,
                suitableFor: [.beginners, .intermediate, .advanced],
                price: 55.00
            ),
            
            Resort(
                name: "Schlick 2000 ski resort",
                detailsTitle: "The compact resort of Schlick 2000 is the largest in the Stubai Valley and a favourite among families with children. Snowboarders, freeriders and racers will also find plenty to keep them entertained.",
                description: """
                Situated just a ten-minute drive from Innsbruck, the ski resort of Schlick 2000 can be accessed from the village of Fulpmes in the Stubai Valley. Its pistes stretch all the way up to 2,140 metres above sea level and the top of the Kreuzjoch ridge. Schlick 2000 is particularly popular with families and is blessed with excellent snow cover from November until April. Despite its compact design, it is the largest ski resort in the Stubai Valley and offers pistes catering for all skiing and snowboarding abilities, including three black runs, a snowpark, a track-your-day system that records the pistes and lifts used, a speed gun and BIG Ron's Kinderland for children. Powder junkies will enjoy the freeride routes below the Kreuzjoch ridge. The resort's many restautants and huts serving good local food are a good place to take a break and admire the views. Also, don't miss out on visiting the viewing platform with its stunning vista of the Stubai Valley.
                """,
                image: "schlick",
                pistesDistance: 24,
                altitude: "Altitude: 1,014 - 2,136m",
                altitudeLow: 1014,
                altitudeHigh: 2136,
                difficulty: [
                    Difficulty(
                        level: .easy,
                        distance: "12 km"
                    ),
                    Difficulty(
                        level: .intermediate,
                        distance: "7 km"
                    ),
                    Difficulty(
                        level: .difficult,
                        distance: "3 km"
                    ),
                    Difficulty(
                        level: .skiTouringRoutes,
                        distance: "2 km"
                    )
                ],
                snowDepthOnMount: 0,
                liftsOpen: 0,
                liftsAvail: 11,
                accessiblePublicTransport: false,
                suitableFor: [.beginners, .advanced, .families, .monoskiers],
                price: 51.00
            ),
            
            Resort(
                name: "Schneeberglifte Thiersee ski resort",
                detailsTitle: "This ski resort in the Thiersee Valley, close to the charming small town of Kufstein, is popular with skiers and snowboarders wishing to escape the hustle and bustle of larger resorts. There is a blue (easy) and red (intermediate) run as well as a ski school with experienced instructors.",
                description: """
                """,
                image: "Schneeberglifte",
                pistesDistance: 4,
                altitude: "Altitude: 770 - 1,250m",
                altitudeLow: 770,
                altitudeHigh: 1250,
                difficulty: [
                    Difficulty(
                        level: .easy,
                        distance: "2 km"
                    ),
                    Difficulty(
                        level: .intermediate,
                        distance: "22 km"
                    )
                ],
                snowDepthOnMount: 0,
                liftsOpen: 0,
                liftsAvail: 3,
                accessiblePublicTransport: false,
                suitableFor: [.beginners],
                price: 23.00
            ),
            
            Resort(
                name: "Schwannerlifte ski resort in Weerberg",
                detailsTitle: "Schwannerlifts ski resort in Weerberg offers enjoyable, wide open, easy-to-intermediate trails ideal for those just getting their snow legs. The meticulously groomed terrain and a friendly atmosphere make this an ideal family resort. The local ski school offers an on-snow play area with conveyor belt lift. What’s more, learners and children can head to an awesome beginners area featuring an easy to use surface lift for a fun and gentle way to find your feet in the snow.",
                description: """
                """,
                image: "schwannerlifte",
                pistesDistance: 40,
                altitude: "Altitude: 893 - 1,000m",
                altitudeLow: 893,
                altitudeHigh: 1000,
                difficulty: [
                    Difficulty(
                        level: .easy,
                        distance: "1 km"
                    )
                ],
                snowDepthOnMount: 0,
                liftsOpen: 0,
                liftsAvail: 3,
                accessiblePublicTransport: false,
                suitableFor: [.beginners, .intermediate],
                price: 26.00
            ),
            
            Resort(
                name: "See ski resort in the Paznauntal Valley",
                detailsTitle: "Winter fun takes top priority in the picturesque ski area of See in the front Paznaun. This ski resort has become a popular hotspot, especially for families, thanks to its diverse selection of slopes, spacious practice areas, and childcare options.",
                description: """
                The snow-sure ski area extends up to an altitude of 2,456 meters, which means that there is plenty of snow here.

                Since the 2022/23 season, there is a new 8-seater gondola that opens up the Furglerblick area with additional kilometers of slopes and provides many new opportunities for off-piste enthusiasts. For the youngest guests, there is a Kids Club, while snowboarders and freestyle enthusiasts can have fun in the fun park. For experienced skiers, the black ski route "Adrenalin" poses a real challenge, as it has a slope of up to 75 percent.

                A major highlight is the evening event "Medrig at Night," where a unique entertainment program starts after sunset. The ski show is particularly exciting, captivating audiences with acrobatic slope performances. To top it off, an evening in the mountain restaurant at the middle station at 1,850 meters altitude is enticing.
                """,
                image: "see",
                pistesDistance: 45,
                altitude: "Altitude: 1,042 - 2,456m",
                altitudeLow: 1042,
                altitudeHigh: 2456,
                difficulty: [
                    Difficulty(
                        level: .easy,
                        distance: "8 km"
                    ),
                    Difficulty(
                        level: .intermediate,
                        distance: "25 km"
                    ),
                    Difficulty(
                        level: .difficult,
                        distance: "8 km"
                    ),
                    Difficulty(
                        level: .skiTouringRoutes,
                        distance: "4 km"
                    )
                ],
                snowDepthOnMount: 165,
                liftsOpen: 0,
                liftsAvail: 11,
                accessiblePublicTransport: false,
                suitableFor: [.beginners, .intermediate, .advanced, .families],
                price: 59.50
            ),
            
            Resort(
                name: "Serfaus-Fiss-Ladis",
                detailsTitle: "The ski resort of Serfaus-Fiss-Ladis in the Upper Inn Valley is a firm favourite with families. The facilities and slopes are designed with children and parents in mind, though there is also plenty of terrain for advanced and expert skiers.",
                description: """
                Perched high above the Upper Inn Valley, in an area known as the Oberes Gericht, the three villages of Serfaus, Fiss and Ladis enjoy a fabulous location on a sunny plateau. In the winter months they join together to form one of the top family-friendly wintersports destinations in Tirol. The network of pistes extends from 1,200m all the way up to 2,828m and is mainly aimed at beginners and intermediate skiers, though the Pezid and Zwölferkopf mountains offer black runs and freeride routes. The resort's high altitude guarantees excellent snow conditions well into spring.

                Snowboarders and freestyle skiers gather in the eight funpark areas, while racers will enjoy the two permanent race courses and beginners can take their first tentative turns on snow on the easy pistes at Plansegg and next to the mid-way station of the Sonnenbahn cable car. Families in particular will feel right at home in Serfaus-Fiss-Ladis. The team of childcare experts at the "Murmlikrippe" will be happy to look after babies and toddlers; children old enough to ski will find a practice area in Serfaus and Bertas Kinderland in Fiss.

                And even if you should run out of energy, simply sit down and relax at one of the many chillout spots around the resort. Each sunny station has wooden recliners, lounge furniture and comfy hammocks. Each of the three villages has a selection of piste-side huts and restaurants serving food.
                """,
                image: "serfaus",
                pistesDistance: 161,
                altitude: "Altitude: 1,200 - 2,828m",
                altitudeLow: 1200,
                altitudeHigh: 2828,
                difficulty: [
                    Difficulty(
                        level: .easy,
                        distance: "36 km"
                    ),
                    Difficulty(
                        level: .intermediate,
                        distance: "84 km"
                    ),
                    Difficulty(
                        level: .difficult,
                        distance: "20 km"
                    ),
                    Difficulty(
                        level: .skiTouringRoutes,
                        distance: "21 km"
                    )
                ],
                snowDepthOnMount: 130,
                liftsOpen: 36,
                liftsAvail: 68,
                accessiblePublicTransport: false,
                suitableFor: [.beginners, .intermediate, .advanced, .families, .monoskiers],
                price: 68.00
            ),
            
            Resort(
                name: "Sillian ski resort in the Hochpustertal Valley",
                detailsTitle: "Plenty of sunshine, high altitude slopes, a funpark and a children's area – despite its relatively small size, Sillian ski resort in the Hochpustertal Valley offers everything that larger wintersports resorts do.",
                description: """
                With its south-east facing slopes, Sillian ski resort in the Hochpustertal Valley near the Austrian-Italian border offers a small but diverse network of pistes between 1,100 and over 2,400 metres above sea level. There are plenty of red (intermediate) pistes for cruising, including the long descents down to the villages of Sillian and Außervillgraten, though beginners will find some blue runs and experts can challenge themselves on the resort's black runs and off-piste ski routes. The family-friendly theme extends to the lift pass prices. For children there is plenty to see and do in the "Bobo Kinderclub" with its own beginners' area near the top of the Thurntaler-Gondelbahn cable car. Snowboarders and freestylers can work on their tricks and flips in the Funpark, which has features and obstacles for everyone from beginners to pros.
                """,
                image: "sillian",
                pistesDistance: 2,
                altitude: "Altitude: 1,103 - 2,407m",
                altitudeLow: 1103,
                altitudeHigh: 2407,
                difficulty: [
                    Difficulty(
                        level: .easy,
                        distance: "6 km"
                    ),
                    Difficulty(
                        level: .intermediate,
                        distance: "15 km"
                    ),
                    Difficulty(
                        level: .difficult,
                        distance: "1 km"
                    )
                ],
                snowDepthOnMount: 0,
                liftsOpen: 0,
                liftsAvail: 97,
                accessiblePublicTransport: false,
                suitableFor: [.beginners, .intermediate, .advanced, .families],
                price: 62.00
            ),
            
            Resort(
                name: "Silvapark Galtür",
                detailsTitle: "The Silvapark Galtür in the Paznauntal Valley is a top winter destination for snowboarders, freestyle skiers, freeriders and cross-country skiing enthusiasts. Children and teenagers will also find plenty to keep them entertained.",
                description: """
                Surrounded by the majestic peaks of the Silvretta Mountains, many of which are over 3,000m high, the Silvapark Galtür is a snowsure resort deep in the Paznauntal Valley. Though it may be smaller than the neighbouring Silvretta Arena, it still has plenty to offer both families and freestylers. Some of the slopes cross over into the neighbouring province of Vorarlberg.

                The Silvapark is divided into five sectors and at least twelve stations. The "Zwergerlwelt" and the "Abenteuerland" is great for children learning to ski, while teenagers can work on their tricks in the "Actionpark" and pick up a few tips from the pros. Most of the runs in the resort are rated red (intermediate). The piste network ranges from 1,600m all the way up to 2,300m. In the "High" and "Nordic" sectors there are trails for cross-country skiers as well as ski touring routes and snowshoe hiking areas. Several huts and après-ski bars serve traditional Tirolean food and often get the party started even before the lifts have closed.
                """,
                image: "silvapark",
                pistesDistance: 49,
                altitude: "Altitude: 1,635 - 2,297m",
                altitudeLow: 1635,
                altitudeHigh: 2297,
                difficulty: [
                    Difficulty(
                        level: .easy,
                        distance: "5 km"
                    ),
                    Difficulty(
                        level: .intermediate,
                        distance: "26 km"
                    ),
                    Difficulty(
                        level: .difficult,
                        distance: "12 km"
                    ),
                    Difficulty(
                        level: .skiTouringRoutes,
                        distance: "6 km"
                    )
                ],
                snowDepthOnMount: 170,
                liftsOpen: 8,
                liftsAvail: 8,
                accessiblePublicTransport: false,
                suitableFor: [.beginners, .intermediate, .advanced, .families],
                price: 52.50
            ),
            
            Resort(
                name: "Ski Juwel Alpbachtal Wildschönau ski resort",
                detailsTitle: "The Ski Juwel Alpbachtal Wildschönau resort has everything families could wish for: excellent childcare facilities, ski lessons for beginners and a selection of pistes catering for all abilities.",
                description: """
                A few years ago the ski resorts of Alpbachtal and Wildschönau in the western mountains of the Kitzbühel Alps joined forces to create a wintersports arena that is today extremely popular with families. Most of the slopes in the Ski Juwel Alpbachtal Wildschönau resort are rated blue (easy) or red (intermediate), though there are also some challenging black runs and freeride routes. Snowboarders will find plenty to keep them entertained in the three snowparks.

                Although this pretty resort in the east of Tirol has a large number of pistes and lifts, it is much more relaxed than many other ski areas of a similar size. There are two ski kindergardens for children, while the instructors at the five local ski schools will be happy to show visitors of all ages the right technique on the slopes. The Snowpark Alpbachtal and Family-Park Schatzberg have easy Beginner Lines with small jumps and obstacles. The highest point in the resort is the mountain hut below the summit of the Wiedersbergerhorn mountain at 2,025 metres above sea level.

                All in all there are more than 20 restaurants and huts serving delicious food typical of the region. Most of the pistes are covered by snowmaking facilities – just in case Mother Nature does not provide enough of the white stuff.
                """,
                image: "juwel",
                pistesDistance: 113,
                altitude: "Altitude: 600 - 2,100m",
                altitudeLow: 600,
                altitudeHigh: 2100,
                difficulty: [
                    Difficulty(
                        level: .easy,
                        distance: "30 km"
                    ),
                    Difficulty(
                        level: .intermediate,
                        distance: "54 km"
                    ),
                    Difficulty(
                        level: .difficult,
                        distance: "13 km"
                    ),
                    Difficulty(
                        level: .skiTouringRoutes,
                        distance: "16 km"
                    )
                ],
                snowDepthOnMount: 0,
                liftsOpen: 0,
                liftsAvail: 45,
                accessiblePublicTransport: false,
                suitableFor: [.beginners, .intermediate, .advanced, .families, .monoskiers],
                price: 62.50
            ),
            
            Resort(
                name: "SkiWelt Wilder Kaiser - Brixental ski resort",
                detailsTitle: "One of Austria's largest ski resorts, the SkiWelt Wilder Kaiser - Brixental offers a huge range of slopes for skiers and snowboarders of all abilities. The area also has plenty of other activities away from the pistes during the winter months. In fact, this resort is so big that even experienced skiers who have been here several times will continue to find new areas to explore.",
                description: """
                When it comes to winter sports and activities, visitors to the SkiWelt Wilder Kaiser-Brixental really are spoilt for choice. The pistes throughout this huge resort cater for skiers and boarders of all ages and abilities. All in all the SkiWelt Wilder Kaiser-Brixental covers nine villages, including Brixen im Thale, Going and Söll, which can all be accessed using the state-of-the-art lifts and cable cars or on skis.

                Highlights in the resort include many easy slopes suitable for beginners, a number of race courses (some of which have a mechanism to measure skiers' speed), several pistes floodlit at night as well as three funparks for freestylers. The resort reaches all the way up to a snowsure altitude of 2,000 metres above sea level, with the slopes located further down in the valley serviced by a network of snowmaking machines to ensure top conditions throughout the season.

                The SkiWelt Wilder Kaiser - Brixental is also well known as a hotspot for families with children. Facilities include special beginners' areas for children as well as childcare services for babies and toddlers. The resort's many huts are the ideal place to stop off for a drink and a snack, while the enchanting Igloo Village and sun lounge made from natural ice are well worth a visit at the top of the cable car in Hochbrixen, next to the Panoramarestaurant Bergkaiser. Experienced skiers looking for an adrenaline kick can test their skills and nerve on the black run leading down from the Choralpe. It has a maximum gradient of 80%!
                """,
                image: "SkiWelt",
                pistesDistance: 270,
                altitude: "Altitude: 620 - 1,957m",
                altitudeLow: 620,
                altitudeHigh: 1957,
                difficulty: [
                    Difficulty(
                        level: .easy,
                        distance: "114 km"
                    ),
                    Difficulty(
                        level: .intermediate,
                        distance: "120 km"
                    ),
                    Difficulty(
                        level: .difficult,
                        distance: "10 km"
                    ),
                    Difficulty(
                        level: .skiTouringRoutes,
                        distance: "26 km"
                    )
                ],
                snowDepthOnMount: 0,
                liftsOpen: 0,
                liftsAvail: 83,
                accessiblePublicTransport: false,
                suitableFor: [.beginners, .intermediate, .advanced, .families],
                price: 69.00
            ),
            
            Resort(
                name: "Skizirkus Saalbach Hinterglemm Leogang Fieberbrunn ski resort",
                detailsTitle: "Two regions, one huge ski resort! The Skicircus Saalbach Hinterglemm Leogang Fieberbrunn extends over the border from Tirol into the neighbouring Salzburger Land region, making it one of the largest and most diverse ski resorts anywhere in Austria.",
                description: """
                There are few wintersports resorts in Austria which cover as much terrain as the Skicircus Saalbach Hinterglemm Leogang Fieberbrunn. This resort with its huge network of pistes extends over several chains of mountains and valleys in the Kitzbühel Alps, making it one of the largest ski resorts in the country. Indeed, such is the scale of the resort that the pistes stretch from Tirol into the neighbouring region of Salzburg. One such slope is the "Vierstadlalmpiste", which winds its way down next to the new state-of-the-art "TirolS" gondola on the Reiterkogel mountain.

                This resort is ideal for skiers and snowboarders who want to cover as many different pistes as possible. There are also a number of snowparks as well as floodlit pistes, snow trails and cosy huts. Nearby Fieberbrunn in Tirol is ideal for families, though in recent years it has developed a reputation as a freeriding hotspot thanks to its challenging terrain and excellent powder on the Wildseeloder mountain. The Freeride Park at the Lärchfilzkogel mountain in Fieberbrunn is the perfect place for skiers and snowboarders to work on their jumps. Once a year the world's best freeriders gather in Fieberbrunn for the Freeride World Tour.

                Beginners and families will also find plenty of pistes in the Skicircus. In fact, around half of the pistes are classified as blue (easy). Fieberbrunn is particularly good for those just getting their snow legs. As well as a short beginners' life at the bottom of the resort and many easy pistes further up the mountain, there are also a large number of red (intermediate) slopes, including the "Radarfalle" ("Speed Trap") run where skiers and boarders can try to set a new personal top speed. There are plenty of mountain restaurants and huts serving excellent food throughout the resort.
                """,
                image: "skicircus",
                pistesDistance: 270,
                altitude: "Altitude: 834 - 2,020m",
                altitudeLow: 1560,
                altitudeHigh: 2340,
                difficulty: [
                    Difficulty(
                        level: .easy,
                        distance: "165 km"
                    ),
                    Difficulty(
                        level: .intermediate,
                        distance: "70 km"
                    ),
                    Difficulty(
                        level: .difficult,
                        distance: "14 km"
                    ),
                    Difficulty(
                        level: .skiTouringRoutes,
                        distance: "21 km"
                    )
                ],
                snowDepthOnMount: 80,
                liftsOpen: 0,
                liftsAvail: 69,
                accessiblePublicTransport: false,
                suitableFor: [.beginners, .intermediate, .advanced, .families],
                price: 72.00
            ),
            
            Resort(
                name: "Sölden ski resort",
                detailsTitle: "Two glacier ski mountains and top modern snow-making systems, guests from all four corners of the world, outstanding mountain gastronomy – Sölden is one of the most famous winter destinations in the Alps.",
                description: """
                Every October, Sölden attracts the world's best skiers to the Ötztal Valley for the now traditional opening event of the FIS Ski World Cup. It is little surprise that this major event has taken place here for many years. After all, Sölden offers a wide range of pistes for all abilities and snowsure conditions on a glacier reaching up to an incredible 3340 metres above sea level. The season sometimes even begins as early as September and extends all the way through until May. Sölden is the only ski resort which has three mountains over 3000m in altitude, known as the "Big 3". From the highest point in the resort, the Schwarze Schneide at 3,340m, there is a wide 15km descent all the way back down to the bottom of the resort.

                Sölden is especially well-known for its top events such as the spectacular "Hannibal" reinactment and the Electric Mountain Festival. It is also home to many cosy restaurants and huts serving good local food.

                Ski touring enthusiasts can explore the many surrounding mountains, including Tirol's highest peak, the Wildspitze, while freestylers will enjoy the funparks and speed freaks can see how fast they are on special race courses. There are also a number of mogul runs. The Rettenbach glacier is the more challenging of the two glaciers, with families and beginners normally heading for the wide, gentle slopes of the Tiefenbach glacier. And even if Mother Nature is a little slow to get going at the start of the season, 77% of the slopes are equipped with snowmaking facilities.
                """,
                image: "solden",
                pistesDistance: 144,
                altitude: "Altitude: 1,377 - 3,340m",
                altitudeLow: 1377,
                altitudeHigh: 3340,
                difficulty: [
                    Difficulty(
                        level: .easy,
                        distance: "70 km"
                    ),
                    Difficulty(
                        level: .intermediate,
                        distance: "45 km"
                    ),
                    Difficulty(
                        level: .difficult,
                        distance: "27 km"
                    ),
                    Difficulty(
                        level: .skiTouringRoutes,
                        distance: "2 km"
                    )
                ],
                snowDepthOnMount: 403,
                liftsOpen: 24,
                liftsAvail: 31,
                accessiblePublicTransport: false,
                suitableFor: [.beginners, .intermediate, .advanced],
                price: 73.00
            ),
            
            Resort(
                name: "St. Anton am Arlberg ski resort",
                detailsTitle: "Considered the birthplace of alpine skiing, St. Anton am Arlberg has welcomed wintersports enthusiasts for more than 100 years. Today it is one of the biggest and best-known ski networks in the Alps with a long and proud tradition.",
                description: """
                It was way back in 1907 that wintersports pioneer Hannes Schneider developed his revolutionary skiing technique while working as a ski instructor in St. Anton am Arlberg. This technique would go on to become the modern day alpine skiing technique practised and taught around the world. In the 1930s St. Anton opened its first ski lift, the Galzigbahn. Today it is one of the largest and most popular ski resorts in the Alps with a mind-boggling variety of pistes and state-of-the-art lifts accessible on just one ski pass. The slopes criss-cross the region on the border between the province of Tirol and the province of Vorarlberg.

                Skiers and snowboarders can access the high slopes quickly and easily via the new Galzigbahn lift, which whisks visitors from the village of St. Anton to the most diverse section of the resor with not only easy wide slopes for beginners but also fabulous views of the surrounding mountains. Further lifts give intermediate and expert skiers the option to travel all the way up to the Schindlerkar and the 2,811m Vallugaspitze, the highest point in the resort.

                For freestyle skiers and snowboarders there are several funparks, including the famous Stanton Park. Further highlights include a permanent race course as well as countless huts and restaurants. In the Rendl area of the resort there is even the only via ferrata fixed-rope climbing route in Tirol open in winter. This climbing trail with a steel rope anchored into the rock for safety and a series of steel handholds and footholds leads all the way up to 2,732m. It is hard work, but the views at the top more than make up for the effort. And the best thing is that from the top you can ski back down into the resort through wide powder fields.
                """,
                image: "stanton",
                pistesDistance: 305,
                altitude: "Altitude: 1,304 - 2,811m",
                altitudeLow: 1304,
                altitudeHigh: 2811,
                difficulty: [
                    Difficulty(
                        level: .easy,
                        distance: "131 km"
                    ),
                    Difficulty(
                        level: .intermediate,
                        distance: "123 km"
                    ),
                    Difficulty(
                        level: .difficult,
                        distance: "51 km"
                    )
                ],
                snowDepthOnMount: 375,
                liftsOpen: 74,
                liftsAvail: 85,
                accessiblePublicTransport: true,
                suitableFor: [.beginners, .intermediate, .advanced],
                price: 75.00
            ),
            
            Resort(
                name: "St. Jakob ski resort",
                detailsTitle: "Far from the madding crowds, the small resort in St. Jakob im Defereggental combines great skiing with absolute peace and quiet – not forgetting, of course, wonderful views of the surrounding mountain peaks up to and over 3,000 metres in altitude.",
                description: """
                Situated deep in the idyllic Defereggen Valley in East Tirol, on the edge of the Hohe Tauern National Park, the family-friendly Skizentrum St. Jakob im Defereggental is about as far from mass tourism as you can imagine. Instead of long lift queues and pumping après-ski music, all skiers and snowboarders will see and hear is the fabulous natural landscape and the sound of silence. The network of slopes between 1,400m and 2,525m is blessed with a thick covering of snow from late November until April and offers runs catering for all abilities. Children and beginners tend to gather on the gentle slopes near the bottom of the cable car, while freestylers and boarders are drawn to the "defRaggn" snowpark. Speed freaks will find a race course to test their skill and nerve. The resort also has a number of cosy huts next to the piste serving traditional local food.
                """,
                image: "stjakob",
                pistesDistance: 18,
                altitude: "Altitude: 1,398 - 2,520m",
                altitudeLow: 1398,
                altitudeHigh: 2520,
                difficulty: [
                    Difficulty(
                        level: .easy,
                        distance: "5 km"
                    ),
                    Difficulty(
                        level: .intermediate,
                        distance: "11 km"
                    ),
                    Difficulty(
                        level: .difficult,
                        distance: "1 km"
                    ),
                    Difficulty(
                        level: .skiTouringRoutes,
                        distance: "1 km"
                    )
                ],
                snowDepthOnMount: 0,
                liftsOpen: 0,
                liftsAvail: 7,
                accessiblePublicTransport: false,
                suitableFor: [.beginners, .intermediate, .advanced],
                price: 62.00
            ),
            
            Resort(
                name: "St. Johann ski resort",
                detailsTitle: "Just a snowball’s throw from the legendary Kitzbühel, the St. Johann ski resort is perfect for families. The varied skiable terrain and a terrain park with jumps and rails offer plenty to explore for skiers and snowboarders of all ages. There are also 18 huts and lodges dotted across the mountain serving hearty local food.",
                description: """
                Well known for reliable snowfall and consistently good snow conditions, the tiny St. Johann ski resort offers a small-scale yet friendly day on the slopes. Situated on the northern slopes of Kitzbühel Horn peak, the varied terrain of wide-open blue and red trails makes it a family favourite. One of its highlights for expert skiers is a 3.5-kilometre-long black trail that drops down 1,000 metres and serves up beautiful views. The highest elevation in the resort is Harschbichl at an elevation of 1,600 metres above sea level and can be accessed using three different lifts. Running parallel to Lower Harschbichlbahn gondola is the Fun Slope, a piste with lots of kickers, banked run and turns. With wide, gentle trails and free practice lifts, there’s plenty of room for kiddies and new skiers to get things off to the right start at a relaxed pace.  The ski school’s beloved mascot named “Yappy Yapadu” is the ideal way to ensure the kids become lifelong powder lovers – and he’s always ready for a hug.
                """,
                image: "stjohann",
                pistesDistance: 43,
                altitude: "Altitude: 659 - 1,604m",
                altitudeLow: 659,
                altitudeHigh: 1604,
                difficulty: [
                    Difficulty(
                        level: .easy,
                        distance: "16 km"
                    ),
                    Difficulty(
                        level: .intermediate,
                        distance: "23 km"
                    ),
                    Difficulty(
                        level: .difficult,
                        distance: "3 km"
                    ),
                    Difficulty(
                        level: .skiTouringRoutes,
                        distance: "1 km"
                    )
                ],
                snowDepthOnMount: 0,
                liftsOpen: 0,
                liftsAvail: 9,
                accessiblePublicTransport: false,
                suitableFor: [.beginners, .intermediate, .advanced, .families],
                price: 58.00
            ),
            
            Resort(
                name: "Steinplatte/Waidring ski resort",
                detailsTitle: "Well known for reliable snowfall and consistently good snow conditions, the Steinplatte/Waidring resort straddles the Tirol-Salzburg-Bavaria border in the breathtaking Tirolean Alps. Fourteen lifts – including nine in Austria and four in Bavaria – serve 45 kilometres of pistes that rise to 1,860 metres. Most slopes are easy, though there are also some challenging red and black runs for advanced skiers and boarders. Piste number 4 is home to a long funpark with several different challenging lines. Children will enjoy the 'Triassi-Kinderland' in Waidring and the 'Hausberg-Arena' with its fun rollers and easy slopes.",
                description: """
                """,
                image: "steinplatte",
                pistesDistance: 42,
                altitude: "Altitude: 1,100 - 1,900m",
                altitudeLow: 1100,
                altitudeHigh: 1900,
                difficulty: [
                    Difficulty(
                        level: .easy,
                        distance: "28 km"
                    ),
                    Difficulty(
                        level: .intermediate,
                        distance: "13 km"
                    ),
                    Difficulty(
                        level: .difficult,
                        distance: "1 km"
                    )
                ],
                snowDepthOnMount: 0,
                liftsOpen: 0,
                liftsAvail: 14,
                accessiblePublicTransport: false,
                suitableFor: [.beginners, .intermediate, .advanced, .families, .monoskiers],
                price: 58.00
            ),
            
            Resort(
                name: "Stubai Glacier ski resort",
                detailsTitle: "Stubai Glacier, the largest glacier ski resort in Austria, is by no means for freeriders and experts only. A slew of family specials and attractions make Stubai Glacier a hit with families and teenagers as well.",
                description: """
                Situated right at the very end of the Stubai Valley is the majestic Stubai Glacier. Its ski resort extends all the way up to 3,210 metres above sea level and is the largest glacier ski resort in Austria. Here, high above the valley floor, the pistes are guaranteed to be in top condition from October all the way through until June.

                Children and families are a big priority at the Stubai Glacier, so it is little wonder that the resort is considered one of the most family-friendly in Tirol. At the Big Family Ski Camp a team of trained experts will keep a close eye on your children while you are out enjoying the slopes. There is also a special children's restaurant in the resort. Further attractions for youngsters include a snow obstacle course and a snow carousel as well as a special Kids' Line in the Stubai Zoo snowpark.

                Advanced and expert skiers will also find plenty to keep them entertained, including the 10km "Wilde Grube" descent down to the bottom of the cable cars. The Stubai Glacier is also known throughout the reason as a freeride hotspot, with the "Powder Department" attracting skiers and boarders addicted to backcountry adventures. Finally, what better way to end the day than with a meal at the Schaufelspitz gourmet restaurant at the top of the Eisgrat cable car? It is the highest fine dining restaurant in the Alps.
                """,
                image: "stubai",
                pistesDistance: 63,
                altitude: "Altitude:  1,750 - 3,210m",
                altitudeLow: 1750,
                altitudeHigh: 3210,
                difficulty: [
                    Difficulty(
                        level: .easy,
                        distance: "22 km"
                    ),
                    Difficulty(
                        level: .intermediate,
                        distance: "15 km"
                    ),
                    Difficulty(
                        level: .difficult,
                        distance: "4 km"
                    ),
                    Difficulty(
                        level: .skiTouringRoutes,
                        distance: "22 km"
                    )
                ],
                snowDepthOnMount: 505,
                liftsOpen: 19,
                liftsAvail: 26,
                accessiblePublicTransport: false,
                suitableFor: [.beginners, .intermediate, .advanced, .families, .monoskiers],
                price: 63.60
            ),
            
            Resort(
                name: "Tannheim ski resort",
                detailsTitle: "Skiers and snowboarders access the Tannheim ski resort using the Neunerköpfl cable car which tops out at over 1,800m. Up at the top they can look forward to magnificent views of the Tannheimer Tal Valley as well as lots of easy and intermediate slopes plus one black slope for advanced skiers. One of the best runs in the resort is the 3.5km red piste down to Tannheim. Young skiers and boarders can take their first tentative turns on snow at the Gigge-Hi beginners' area featuring larger-than-life animals from the film Ice Age.",
                description: """
                The resort is playfully known as Innsbruck’s "White Roof", a reference to the famous Golden Roof in the heart of Innsbruck. Located just 19 kilometres from the city, on the edge of the Stubai Alps, Axamer Lizum boasts a fantastic alpine setting crowned by the lofty and jagged Kalkkögel Mountains. The skiable terrain at Axamer Lizum features a mix of beginner, intermediate and advanced areas, ensuring skiers and snowboarders of all abilities will find a wide range of runs to suit their comfort levels.
                
                Rising from 1,600 to 2,340 metres, Axamer Lizum’s elevation advantage and north-facing location translate to an abundance of natural snowfall every season and consistently good snow conditions all winter long. Some of the trails have been named after the races they hosted at the 1964 and 1976 Winter Olympics. The majority of trails are rated red (advanced), but there are also some long blue groomers (beginner) and one black run for expert skiers. After heavy snowfalls, the backcountry terrain around Birgitzköpfle is a haven for those who live for waist-deep powder dumps. The freeriding terrain winds all the way down to the base for some awesome big mountain riding. A particularly long top-to-bottom run takes in the neighbouring Mutterer Alm ski resort and delivers skiers and riders at the village of Götzens.
                
                Snowboarders and freestylers will enjoy the kickers and rails at the Golden Roof Park near the Karleitenlift. At the bottom of the Olympiabahn lift there are two easy lifts and plenty of gentle slopes for beginners. Fresh mountain air is sure to give you a healthy appetite, so pause for a rest, and eat a hearty meal served with stunning mountain views in one of the cosy mountain restaurants or huts. The Hoadl Haus lodge at 2,340 metres is one of Tirol’s most beautiful on-mountain eateries with spectacular panoramic-view seating and a sun-drenched patio with bar. There is a free shuttle bus from Innsbruck to Axamer Lizum and back again.
                """,
                image: "tannheim",
                pistesDistance: 9,
                altitude: "Altitude: 1,109 - 1,791m",
                altitudeLow: 1109,
                altitudeHigh: 1791,
                difficulty: [
                    Difficulty(
                        level: .easy,
                        distance: "3 km"
                    ),
                    Difficulty(
                        level: .intermediate,
                        distance: "3 km"
                    ),
                    Difficulty(
                        level: .difficult,
                        distance: "3 km"
                    )
                ],
                snowDepthOnMount: 150,
                liftsOpen: 0,
                liftsAvail: 6,
                accessiblePublicTransport: false,
                suitableFor: [.beginners, .intermediate, .advanced],
                price: 43.00
            ),
            
            Resort(
                name: "Tirolina - Aktivberg Hinterthiersee",
                detailsTitle: "Small but perfectly formed, the Tirolina ski resort in Hinterthiersee offers something for everyone. It has one blue, one red and one black piste. Though the resort is especially popular with beginners and families. advanced and expert skiers can test their skills on the FIS-approved black piste which is often used by ski clubs and budding racers for training purposes.",
                description: """
                """,
                image: "tirolina",
                pistesDistance: 3,
                altitude: "Altitude: 177 - 852m",
                altitudeLow: 177,
                altitudeHigh: 852,
                difficulty: [
                    Difficulty(
                        level: .easy,
                        distance: "2 km"
                    ),
                    Difficulty(
                        level: .intermediate,
                        distance: "1 km"
                    ),
                    Difficulty(
                        level: .difficult,
                        distance: "1 km"
                    )
                ],
                snowDepthOnMount: 0,
                liftsOpen: 0,
                liftsAvail: 2,
                accessiblePublicTransport: false,
                suitableFor: [.beginners, .intermediate],
                price: 25.00
            ),
            
            Resort(
                name: "Umhausen-Niederthai ski resort",
                detailsTitle: "Perched on a plateau at a snowsure altitude of 1,550 metres in the heart of the Ötztal Valley lies the village of Niederthai with its small family-friendly ski resort of the same name. It has three draglifts and one connecting lift givign access to a range of easy and intermediate pistes. There is a ski school offering group lessons and one-on-one tuition as well as a ski kindergarten for toddlers.",
                description: """
                """,
                image: "umhausen",
                pistesDistance: 4,
                altitude: "Altitude: 1,550 - 1,600m",
                altitudeLow: 1550,
                altitudeHigh: 1600,
                difficulty: [
                    Difficulty(
                        level: .easy,
                        distance: "3 km"
                    ),
                    Difficulty(
                        level: .intermediate,
                        distance: "1 km"
                    )
                ],
                snowDepthOnMount: 0,
                liftsOpen: 0,
                liftsAvail: 3,
                accessiblePublicTransport: false,
                suitableFor: [.beginners, .intermediate, .advanced],
                price: 29.00
            ),
            
            Resort(
                name: "Venet ski resort",
                detailsTitle: "Perched high above the town of Landeck, home to many museums and other cultural attractions, Venet ski resort is situated on the mountain of the same name and is a popular destination for families and cruisers. As well as a small selection of pistes it offers two funparks and plenty of off-piste ski touring.",
                description: """
                High above the roofs of Landeck lies the ski resort of Venet. Skiers and snowboarders can access this small but perfectly formed resort at 2,212 metres above sea level by taking the cable car from the village of Zams up to Krahberg. Venet is particularly popular among beginners and intermediate skiers thanks to its selection of blue and red slopes, while advanced and expert skiers will find one black run to test their skills on. Those who prefer to head off-piste will find excellent ski touring and freeriding away from the marked slopes. For snowboarders and freestyle skiers there is the Panorama Lifestyle Park with a huge airbag and plenty of lines with features and obstacles to trick, jump and jib. The Panorama-Restaurant at the top of the cable car is an ideal place to sample some of the local food and admire magnificent views of the nearby Arlberg mountains and even as far as the Zugspitze, Germany's highest peak, and the Ortler Massif over the border in Italy. For youngsters there is a separate practice area with childcare facilities.
                """,
                image: "venet",
                pistesDistance: 22,
                altitude: "Altitude: 870 - 2,212m",
                altitudeLow: 870,
                altitudeHigh: 2212,
                difficulty: [
                    Difficulty(
                        level: .easy,
                        distance: "6 km"
                    ),
                    Difficulty(
                        level: .intermediate,
                        distance: "15 km"
                    ),
                    Difficulty(
                        level: .difficult,
                        distance: "1 km"
                    )
                ],
                snowDepthOnMount: 0,
                liftsOpen: 0,
                liftsAvail: 8,
                accessiblePublicTransport: false,
                suitableFor: [.beginners, .intermediate, .advanced, .monoskiers],
                price: 46.00
            ),
            
            Resort(
                name: "Vent ski resort",
                detailsTitle: "The ski resort of Vent is proof that good things really do come in small packages. Its high alpine location at the foot of the Wildspitze mountain, at 3,770 metres the highest peak in Tirol, means it has excellent snow cover throughout the season, while the resort's selection of blue and red runs makes it popular with beginners, intermediate skiers and families. A popiular run for intermediate skiers is the descent from the Wilder Mann cable car down into the village. There is a ski school and a mountain restaurant serving good food.",
                description: """
                """,
                image: "vent",
                pistesDistance: 15,
                altitude: "Altitude: 1,890 - 2,680m",
                altitudeLow: 1890,
                altitudeHigh: 2680,
                difficulty: [
                    Difficulty(
                        level: .easy,
                        distance: "5 km"
                    ),
                    Difficulty(
                        level: .intermediate,
                        distance: "10 km"
                    )
                ],
                snowDepthOnMount: 60,
                liftsOpen: 0,
                liftsAvail: 4,
                accessiblePublicTransport: false,
                suitableFor: [.beginners, .intermediate, .advanced],
                price: 47.50
            ),
            
            Resort(
                name: "Vils ski resort",
                detailsTitle: "One lift - lots of fun! This snowsure resort in Vils is located in the Reutte Nature Park Region and has plenty to offer both families with children as well as intermediate and advanced skiers. Readily accessible, from the Allgäu region in Germany as well, Vils has perfect beginner terrain and is a known family favourite. There is also a self-service restaurant serving good food.",
                description: """
                """,
                image: "vils",
                pistesDistance: 2,
                altitude: "Altitude: 830 - 1,102m",
                altitudeLow: 830,
                altitudeHigh: 1102,
                difficulty: [
                    Difficulty(
                        level: .easy,
                        distance: "2 km"
                    )
                ],
                snowDepthOnMount: 0,
                liftsOpen: 0,
                liftsAvail: 1,
                accessiblePublicTransport: false,
                suitableFor: [.beginners, .intermediate],
                price: 24.00
            ),
            
            Resort(
                name: "Wettersteinbahn ski resort",
                detailsTitle: "The Wettersteinbahnen ski resort is located on the western flank of the Zugspitze mountain. At up to 1,520 metres above sea level, it offers a selection of runs catering for all abilities as well as several off-piste ski routes. There is also a small ski school in the centre of nearby Ehrwald. Snowboarders and freeskiers will enjoy practising their tricks in the snowpark and the funtrail next to the Gamskarlift, while speed freaks can test their skills and nerve on the 1.8km Wettersteinabfahrt black run used in the past for FIS ski races.",
                description: """
                """,
                image: "wettersteinbahn",
                pistesDistance: 22,
                altitude: "Altitude: 994 - 1,620m",
                altitudeLow: 994,
                altitudeHigh: 1620,
                difficulty: [
                    Difficulty(
                        level: .easy,
                        distance: "14 km"
                    ),
                    Difficulty(
                        level: .intermediate,
                        distance: "5 km"
                    ),
                    Difficulty(
                        level: .difficult,
                        distance: "2 km"
                    ),
                    Difficulty(
                        level: .skiTouringRoutes,
                        distance: "1 km"
                    )
                ],
                snowDepthOnMount: 0,
                liftsOpen: 0,
                liftsAvail: 6,
                accessiblePublicTransport: false,
                suitableFor: [.beginners, .intermediate, .families],
                price: 61.50
            ),
            
            Resort(
                name: "Zahmer Kaiser ski resort",
                detailsTitle: "The Zahmer Kaiser ski resort in Walchsee is the perfect place for families and beginners. Rising from 580 to 1,030 metres, the resort offers 12km of wide-open beginner and intermediate runs.",
                description: """
                - The focus of the Zahmer Kaiser ski resort is definitely on families, beginners and children. The Kids' Ski Zone at the Amberglift is designed to safely get children and beginners started so that they can develop their basic skills on snow. Childcare facilities are also provided for babies and toddlers.
                - Keen on getting in a few more runs? On select days during the ski season, the Zahmer Kaiser ski resort offers night skiing on the piste next to the Amberglift. Floating through the night beneath the glow of the slope’s lights is an other-worldly experience.
                - Fun programs and special deals are offered throughout the season, from Family Day and Ladies' Day to Over 50s and Over 80s.
                """,
                image: "zahmer",
                pistesDistance: 12,
                altitude: "Altitude: 658 - 2,002m",
                altitudeLow: 658,
                altitudeHigh: 2002,
                difficulty: [
                    Difficulty(
                        level: .easy,
                        distance: "9 km"
                    ),
                    Difficulty(
                        level: .intermediate,
                        distance: "3 km"
                    )
                ],
                snowDepthOnMount: 0,
                liftsOpen: 0,
                liftsAvail: 3,
                accessiblePublicTransport: false,
                suitableFor: [.beginners, .intermediate, .advanced],
                price: 28.00
            ),
            
            Resort(
                name: "Zillertal Arena ski resort",
                detailsTitle: "The Zillertal Arena ski resort stretches from Zell am Ziller as far as Hochkrimml in Salzburg – one resort, two Austrian provinces and four mountains. It has everything from family-friendly beginner slopes to long cruising runs into the valley and even a funpark.",
                description: """
                Four mountains, two provinces, one ski resort! The Zillertal Arena is the largest wintersports area in the Zillertal Valley and extends all the way to the Pinzgau region in the neighbouring province of Salzburg. Fom Tirol, the Zillertal Arena can be accessed from Zell am Ziller, Gerlos and Wald-Königsleiten. There is also a cable car running from Hainzenberg to the family-friendly resort of Gerlosstein with its free 200m snowtubing run.

                Winter 2016/17 sees the opening of a brand new highlight in the Zillertal Arena. The "Dorfbahn" cable car in Gerlos will now provide a second option for skiers and snowboarders wishing to access the slopes on the Isskogel mountain. At the bottom of the cable car there is a sports shop, ski rental station and a storage depot for wintersports equipment.

                The run down into the village of Zell bears the name "Höhenfresser-Tour" (literally "Vertical Metre Eater") for a good reason. Starting at the highest point in the resort, the Übergangsjoch at 2,500 metres above sea level, it leads 10km and 1,930 vertical metres down into the valley floor. These impressive statistics make it one of the runs in Austria with the most vertical metres covered in one single piste. The resort also has a selection of funparks for snowboarders and freestyle skiers. Some of the snowparks are also suitable for beginners and children.

                Above Zell there is a large practice area for beginners and children. Throughout the resort there are many restaurants, slopeside bars and cosy wooden huts. The Bergrestaurant Gipfeltreffen at the top of the Königsleiten cable car is particularly worth a visit thanks to its fabulous views of the Hohe Tauern National Park and the Zillertal Alps. Skiers and snowboarders with a good level of fitness should try the Arena Tour, a ski safari which takes in all four sections of the Zillertal Arena in just one day.
                """,
                image: "zillertal",
                pistesDistance: 150,
                altitude: "Altitude: 580 - 2,500m",
                altitudeLow: 580,
                altitudeHigh: 2500,
                difficulty: [
                    Difficulty(
                        level: .easy,
                        distance: "50 km"
                    ),
                    Difficulty(
                        level: .intermediate,
                        distance: "88 km"
                    ),
                    Difficulty(
                        level: .difficult,
                        distance: "12 km"
                    )
                ],
                snowDepthOnMount: 80,
                liftsOpen: 29,
                liftsAvail: 52,
                accessiblePublicTransport: false,
                suitableFor: [.beginners, .intermediate, .advanced],
                price: 72.50
            ),
            
            Resort(
                name: "Zöblen-Schattwald ski resort",
                detailsTitle: "Located at the gateway to Germany’s Allgäu region, the Zöblen-Schattwald ski resort has four lifts giving access to pistes up to 1,570 metres above sea level. Most slopes are easy or intermediate, though there is also one black run. A free shuttle bus connects the two villages. Despite being relatively small, the resort actually has a FIS-approved race course which has been used by national ski teams from countries such as Switzerland and Japan for training purposes.",
                description: """
                """,
                image: "zoeblen",
                pistesDistance: 15,
                altitude: "Altitude: 1,100 - 1,600m",
                altitudeLow: 1100,
                altitudeHigh: 1600,
                difficulty: [
                    Difficulty(
                        level: .easy,
                        distance: "9 km"
                    ),
                    Difficulty(
                        level: .intermediate,
                        distance: "4 km"
                    ),
                    Difficulty(
                        level: .difficult,
                        distance: "2 km"
                    )
                ],
                snowDepthOnMount: 0,
                liftsOpen: 0,
                liftsAvail: 4,
                accessiblePublicTransport: false,
                suitableFor: [.beginners, .intermediate, .advanced],
                price: 43.00
            ),
            
            Resort(
                name: "Zugspitze ski resort",
                detailsTitle: "What the Tiroler Zugspitzbahn resort lacks in size it certainly makes up for in other areas. Located on the slopes of the Zugspitze, Germany's highest mountain, it can be accessed from both Bavaria and Tirol. The ski pistes extend all the way up onto the glacier, ensuring excellent conditions throughout the season.",
                description: """
                Measuring a mighty 2,962 metres, the Zugspitze is the highest mountain in Germany and home to a spectacular ski resort just a few hundred metres below the summit on the Schneeferner glacier, Germany's largest. Although the pistes are actually on the German side of the mountain, they can be reached from Austria using the Tiroler Zugspitzbahn cable car running from the village of Ehrwald. The journey from the valley floor to the summit takes only 10 minutes. Form there, a second lift takes skiers and snowboarders down onto the glacier.

                The high alpine location at up to 2,720 metres above sea level and the cooling effect of the glacier make the resort very snowsure, with seaons often lasting up to seven months. On the sunny south-facing side of the mountain there is a small selection of blue (easy) and red (intermediate) pistes as well as some excellent freeriding. One highlight not to be missed is the view from the summit – on clear days you can see as far as Munich and the Bernina Mountains in Switzerland.

                There are several huts and restaurants, including one on the summit, and an igloo village in the resort where visitors brave enough can even spend the night. Attractions away from the slopes include the permanent exhibition in the small museum on the peak.
                """,
                image: "zugspitze",
                pistesDistance: 17,
                altitude: "Altitude: 1,225 - 2,962m",
                altitudeLow: 1225,
                altitudeHigh: 2962,
                difficulty: [
                    Difficulty(
                        level: .easy,
                        distance: "7 km"
                    ),
                    Difficulty(
                        level: .intermediate,
                        distance: "10 km"
                    )
                ],
                snowDepthOnMount: 0,
                liftsOpen: 0,
                liftsAvail: 8,
                accessiblePublicTransport: false,
                suitableFor: [.beginners, .intermediate, .advanced],
                price: 62.00
            )
            
        ]
        
    }
    
}
