//
//  File.swift
//  
//
//  Created by najin shin on 2023/08/25.
//

import Foundation

public enum NJLanguage: String {
    case ko
    case en
}

struct NJEmoji {
    static let koTypes = ["추천", "얼굴 및 사람", "동물 및 자연", "음식 및 음료", "활동", "여행 및 장소", "사물", "기호", "깃발"]
    static let enTypes = ["Suggestion", "Smileys & People", "Animals & Nature", "Food & Drink", "Activity", "Travel & Places", "Objects", "Symbols", "Flags"]
    static let values = NJEmojiValues.allCases.map{ Array($0.rawValue).map { String($0) } }
    
    static let list: [((String, String), [String])] = {
        var list = [((String, String), [String])]()
        for (i,type) in koTypes.enumerated() {
            list.append(((type, enTypes[i]), values[i]))
        }
        return list
    }()
}

enum NJEmojiValues: String, CaseIterable {
    case suggest = ""
    case faceAndPerson = "😀😃😄😁😆😅😂🤣😇😉😊🙂🙃☺😋😌😍🥰😘😗😙😚🥲🤪😜😝😛🤑😎🤓🥸🧐🤠🥳🤡😏😶🫥😐🫤😑😒🙄🤨🤔🤫🤭🫢🫡🤗🫣🤥😳😞😟😤😠😡🤬😔😕🙁☹😬🥺😣😖😫😩🥱😪😮‍💨😮😱😨😰😥😓😯😦😧🥹😢😭🤤🤩😵😵‍💫🥴😲🤯🫠🤐😷🤕🤒🤮🤢🤧🥵🥶😶‍🌫️😴💤😈👿👹👺💩👻💀☠👽🤖🎃😺😸😹😻😼😽🙀😿😾🫶👐🤲🙌👏🙏🤝👍👎👊✊🤛🤜🤞✌🫰🤘🤟👌🤌🤏👈🫳🫴👉👆👇☝✋🤚🖐🖖👋🤙🫲🫱💪🦾🖕🫵✍🤳💅🦵🦿🦶👄🫦🦷👅👂🦻👃👁👀🧠🫀🫁🦴👤👥🗣🫂👶👧🧒👦👩🧑👨👩‍🦱🧑‍🦱👨‍🦱👩‍🦰🧑‍🦰👨‍🦰👱‍♀️👱👱‍♂️👩‍🦳🧑‍🦳👨‍🦳👩‍🦲🧑‍🦲👨‍🦲🧔‍♀️🧔🧔‍♂️👵🧓👴👲👳‍♀️👳👳‍♂️🧕👼👸🫅🤴👰👰‍♀️👰‍♂️🤵‍♀️🤵🤵‍♂️🙇‍♀️🙇🙇‍♂️💁‍♀️💁💁‍♂️🙅‍♀️🙅🙅‍♂️🙆‍♀️🙆🙆‍♂️🤷‍♀️🤷🤷‍♂️🙋‍♀️🙋🙋‍♂️🤦‍♀️🤦🤦‍♂️🧏‍♀️🧏🧏‍♂️🙎‍♀️🙎🙎‍♂️🙍‍♀️🙍🙍‍♂️💇‍♀️💇💇‍♂️💆‍♀️💆💆‍♂️🤰🫄🫃🤱👩‍🍼🧑‍🍼👨‍🍼🧎‍♀️🧎🧎‍♂️🧍‍♀️🧍🧍‍♂️💃🕺👫👭👬🧑‍🤝‍🧑👩‍❤️‍👨👩‍❤️‍👩💑👨‍❤️‍👨👩‍❤️‍💋‍👨👩‍❤️‍💋‍👩💏👨‍❤️‍💋‍👨❤🧡💛💚💙💜🤎🖤🤍💔❣💕💞💓💗💖💘💝❤️‍🔥❤️‍🩹💟"
    case animalAndNature = "🐶🐱🐭🐹🐰🐻🧸🐼🐻‍❄️🐨🐯🦁🐮🐷🐽🐸🐵🙈🙉🙊🐒🦍🦧🐔🐧🐦🐤🐣🐥🐺🦊🦝🐗🐴🦓🦒🦌🦘🦥🦦🦫🦄🐝🐛🦋🐌🪲🐞🐜🦗🪳🕷🕸🦂🦟🪰🪱🦠🐢🐍🦎🐙🦑🦞🦀🦐🦪🐠🐟🐡🐬🦈🦭🐳🐋🐊🐆🐅🐃🐂🐄🦬🐪🐫🦙🐘🦏🦛🦣🐐🐏🐑🐎🐖🦇🐓🦃🕊🦅🦆🦢🦉🦩🦚🦜🦤🪶🐕🦮🐕‍🦺🐩🐈🐈‍⬛🐇🐀🐁🐿🦨🦡🦔🐾🐉🐲🦕🦖🌵🎄🌲🌳🌴🪴🌱🌿☘🍀🎍🎋🍃🍂🍁🌾🪺🪹🌺🌻🌹🥀🌷🌼🌸🪷💐🍄🐚🪸🌎🌍🌏🌕🌖🌗🌘🌑🌒🌓🌔🌙🌚🌝🌛🌜⭐🌟💫✨☄🪐🌞☀🌤⛅🌥🌦🌧⛈🌩⚡🔥💥❄🌨☃⛄🌬💨🌪🌫🌈☔💧💦🌊"
    case food = "🍏🍎🍐🍊🍋🍌🍉🍇🍓🍈🍒🫐🍑🥭🍍🥥🥝🍅🥑🫒🍆🌶🫑🥒🥬🥦🧄🧅🌽🥕🥗🥔🍠🌰🥜🫘🍯🍞🥐🥖🫓🥨🥯🥞🧇🧀🍗🍖🥩🍤🥚🍳🥓🍔🍟🌭🍕🍝🥪🌮🌯🫔🥙🧆🍜🥘🍲🫕🥫🫙🧂🧈🍥🍣🍱🍛🍙🍚🍘🥟🍢🍡🍧🍨🍦🍰🎂🧁🥧🍮🍭🍬🍫🍿🍩🍪🥠🥮☕🍵🫖🥣🍼🥤🧋🧃🧉🥛🫗🍺🍻🍷🥂🥃🍸🍹🍾🍶🧊🥄🍴🍽🥢🥡"
    case activity = "⚽🏀🏈⚾🥎🎾🏐🏉🎱🥏🪃🏓🏸🥅🏒🏑🏏🥍🥌⛳🏹🎣🤿🥊🥋⛸🎿🛷⛷🏂🏋️‍♀️🏋🏋️‍♂️🤺🤼‍♀️🤼🤼‍♂️🤸‍♀️🤸🤸‍♂️⛹️‍♀️⛹⛹️‍♂️🤾‍♀️🤾🤾‍♂️🧗‍♀️🧗🧗‍♂️🏌️‍♀️🏌🏌️‍♂️🧘‍♀️🧘🧘‍♂️🧖‍♀️🧖🧖‍♂️🏄‍♀️🏄🏄‍♂️🏊‍♀️🏊🏊‍♂️🤽‍♀️🤽🤽‍♂️🚣‍♀️🚣🚣‍♂️🏇🚴‍♀️🚴🚴‍♂️🚵‍♀️🚵🚵‍♂️🎽🎖🏅🥇🥈🥉🏆🏵🎗🎫🎟🎪🤹‍♀️🤹🤹‍♂️🎭🎨🎬🎤🎧🎼🎹🪗🥁🪘🎷🎺🎸🪕🎻🎲🧩♟🎯🎳🪀🪁🛝🎮👾🎰👮‍♀️👮👮‍♂️👩‍🚒🧑‍🚒👨‍🚒👷‍♀️👷👷‍♂️👩‍🏭🧑‍🏭👨‍🏭👩‍🔧🧑‍🔧👨‍🔧👩‍🌾🧑‍🌾👨‍🌾👩‍🍳🧑‍🍳👨‍🍳👩‍🎤🧑‍🎤👨‍🎤👩‍🎨🧑‍🎨👨‍🎨👩‍🏫🧑‍🏫👨‍🏫👩‍🎓🧑‍🎓👨‍🎓👩‍💼🧑‍💼👨‍💼👩‍💻🧑‍💻👨‍💻👩‍🔬🧑‍🔬👨‍🔬👩‍🚀🧑‍🚀👨‍🚀👩‍⚕️🧑‍⚕️👨‍⚕️👩‍⚖️🧑‍⚖️👨‍⚖️👩‍✈️🧑‍✈️👨‍✈️💂‍♀️💂💂‍♂️🥷🕵️‍♀️🕵🕵️‍♂️🤶🧑‍🎄🎅🕴️‍♀️🕴🕴️‍♂️🦸‍♀️🦸🦸‍♂️🦹‍♀️🦹🦹‍♂️🧙‍♀️🧙🧙‍♂️🧝‍♀️🧝🧝‍♂️🧚‍♀️🧚🧚‍♂️🧞‍♀️🧞🧞‍♂️🧜‍♀️🧜🧜‍♂️🧌🧛‍♀️🧛🧛‍♂️🧟‍♀️🧟🧟‍♂️🚶‍♀️🚶🚶‍♂️👩‍🦯🧑‍🦯👨‍🦯🏃‍♀️🏃🏃‍♂️👩‍🦼🧑‍🦼👨‍🦼👩‍🦽🧑‍🦽👨‍🦽👯‍♀️👯👯‍♂️👪👨‍👩‍👧👨‍👩‍👧‍👦👨‍👩‍👦‍👦👨‍👩‍👧‍👧👩‍👩‍👦👩‍👩‍👧👩‍👩‍👧‍👦👩‍👩‍👦‍👦👩‍👩‍👧‍👧👨‍👨‍👦👨‍👨‍👧👨‍👨‍👧‍👦👨‍👨‍👦‍👦👨‍👨‍👧‍👧👩‍👦👩‍👧👩‍👧‍👦👩‍👦‍👦👩‍👧‍👧👨‍👦👨‍👧👨‍👧‍👦👨‍👦‍👦👨‍👧‍👧"
    case travel = "🚗🚙🚕🛺🚌🚎🏎🚓🚑🚒🚐🛻🚚🚛🚜🏍🛵🚲🦼🦽🛴🛹🛼🛞🚨🚔🚍🚘🚖🚡🚠🚟🚃🚋🚝🚄🚅🚈🚞🚂🚆🚇🚊🚉🚁🛩✈🛫🛬🪂💺🛰🚀🛸🛶⛵🛥🚤⛴🛳🚢🛟⚓⛽🚧🚏🚦🚥🛑🎡🎢🎠🏗🌁🗼🏭⛲🎑⛰🏔🗻🌋🗾🏕⛺🏞🛣🛤🌅🌄🏜🏖🏝🌇🌆🏙🌃🌉🌌🌠🎇🎆🛖🏘🏰🏯🏟🗽🏠🏡🏚🏢🏬🏣🏤🏥🏦🏨🏪🏫🏩💒🏛⛪🕌🛕🕍🕋⛩"
    case individual = "⌚📱📲💻⌨🖥🖨🖱🖲🕹🗜💽💾💿📀📼📷📸📹🎥📽🎞📞☎📟📠📺📻🎙🎚🎛⏱⏲⏰🕰⏳⌛🧮📡🔋🪫🔌💡🔦🕯🧯🗑🛢🛒💸💵💴💶💷💰🪙💳🪪🧾💎⚖🦯🧰🔧🪛🔨⚒🛠⛏🪓🪚🔩⚙⛓🪝🪜🧱🪨🪵🔫🧨💣🔪🗡⚔🛡🚬⚰🪦⚱🏺🔮🪄📿🧿🪬💈🧲⚗🧪🧫🧬🔭🔬🕳🩻💊💉🩸🩹🩺🌡🩼🏷🔖🚽🪠🚿🛁🛀🪥🪒🧴🧻🧼🫧🧽🧹🧺🪣🔑🗝🪤🛋🪑🛌🛏🚪🪞🪟🧳🛎🖼🧭🗺⛱🗿🛍🎈🎏🎀🧧🎁🎊🎉🪅🪩🪆🎎🎐🏮🪔✉📩📨📧💌📮📪📫📬📭📦📯📥📤📜📃📑📊📈📉📄📅📆🗓📇🗃🗳🗄📋🗒📁📂🗂🗞📰🪧📓📕📗📘📙📔📒📚📖🔗📎🖇✂📐📏📌📍🧷🪡🧵🧶🪢🔐🔒🔓🔏🖊🖋✒📝✏🖍🖌🔍🔎👚👕🥼🦺🧥👖👔👗👘🥻🩱👙🩲🩳💄💋👣🧦🩴👠👡👢🥿👞👟🩰🥾🧢👒🎩🎓👑⛑🪖🎒👝👛👜💼👓🕶🥽🧣🧤💍🌂☂"
    case sign = "🆔📳🈶🈚🈸🈺🈷🆚🆘⛔📛🚫❌⭕💢♨🚷🚯🚳🚱🔞📵🚭❗❕❓❔‼⁉💯🔅⚠🚸🔰♻🈯💹❇✳❎✅💠🌀➿🌐♾Ⓜ🏧🚾♿🅿🈳🈂🛂🛃🛄🛅🚰🛗🚹🚺🚼🚻🚮🎦📶🈁🆖🆗🆙🆒🆕🆓0️⃣1️⃣2️⃣3️⃣4️⃣5️⃣6️⃣7️⃣8️⃣9️⃣🔟🔢⏸⏯⏹⏺⏭⏮⏩⏪🔀🔁🔂🔼🔽⏫⏬🔄🔤🔡🔠🔣🎵🎶〰➰✔➕➖➗✖🟰💲💱🔚🔙🔛🔝🔜☑🔘🔴🟠🟡🟢🔵🟣🟤⚫⚪🟥🟧🟨🟩🟦🟪🟫⬛⬜🔺🔻🔲🔳🔈🔉🔊🔇📣📢🔔🔕🃏🀄♠♣♥♦🎴👁‍🗨🗨💭🗯💬"
    case flag = "🏳🏴🏁🚩🎌🏴‍☠️🏳️‍🌈🏳️‍⚧️🇦🇨🇦🇩🇦🇪🇦🇫🇦🇬🇦🇮🇦🇱🇦🇲🇦🇴🇦🇶🇦🇷🇦🇸🇦🇹🇦🇺🇦🇼🇦🇽🇦🇿🇧🇦🇧🇧🇧🇩🇧🇪🇧🇫🇧🇬🇧🇭🇧🇮🇧🇯🇧🇱🇧🇲🇧🇳🇧🇴🇧🇶🇧🇷🇧🇸🇧🇹🇧🇼🇧🇾🇧🇿🇨🇦🇨🇨🇨🇩🇨🇫🇨🇬🇨🇭🇨🇮🇨🇰🇨🇱🇨🇲🇨🇳🇨🇴🇨🇷🇨🇺🇨🇻🇨🇼🇨🇽🇨🇾🇨🇿🇩🇪🇩🇯🇩🇰🇩🇲🇩🇴🇩🇿🇪🇨🏴󠁧󠁢󠁥󠁮󠁧󠁿🇪🇪🇪🇬🇪🇭🇪🇷🇪🇸🇪🇹🇪🇺🇫🇮🇫🇯🇫🇰🇫🇲🇫🇴🇫🇷🇬🇦🇬🇧🇬🇩🇬🇪🇬🇫🇬🇬🇬🇭🇬🇮🇬🇱🇬🇲🇬🇳🇬🇵🇬🇶🇬🇷🇬🇸🇬🇹🇬🇺🇬🇼🇬🇾🇭🇰🇭🇳🇭🇷🇭🇹🇭🇺🇮🇨🇮🇩🇮🇪🇮🇱🇮🇲🇮🇳🇮🇴🇮🇶🇮🇷🇮🇸🇮🇹🇯🇪🇯🇲🇯🇴🇯🇵🇰🇪🇰🇬🇰🇭🇰🇮🇰🇲🇰🇳🇰🇵🇰🇷🇰🇼🇰🇾🇰🇿🇱🇦🇱🇧🇱🇨🇱🇮🇱🇰🇱🇷🇱🇸🇱🇹🇱🇺🇱🇻🇱🇾🇲🇦🇲🇨🇲🇩🇲🇪🇲🇬🇲🇭🇲🇰🇲🇱🇲🇲🇲🇳🇲🇴🇲🇵🇲🇶🇲🇷🇲🇸🇲🇹🇲🇺🇲🇻🇲🇼🇲🇽🇲🇾🇲🇿🇳🇦🇳🇨🇳🇪🇳🇫🇳🇬🇳🇮🇳🇱🇳🇴🇳🇵🇳🇷🇳🇺🇳🇿🇴🇲🇵🇦🇵🇪🇵🇫🇵🇬🇵🇭🇵🇰🇵🇱🇵🇲🇵🇳🇵🇷🇵🇸🇵🇹🇵🇼🇵🇾🇶🇦🇷🇪🇷🇴🇷🇸🇷🇺🇷🇼🇸🇦🏴󠁧󠁢󠁳󠁣󠁴󠁿🇸🇧🇸🇨🇸🇩🇸🇪🇸🇬🇸🇭🇸🇮🇸🇰🇸🇱🇸🇲🇸🇳🇸🇴🇸🇷🇸🇸🇸🇹🇸🇻🇸🇽🇸🇾🇸🇿🇹🇦🇹🇨🇹🇩🇹🇫🇹🇬🇹🇭🇹🇯🇹🇰🇹🇱🇹🇲🇹🇳🇹🇴🇹🇷🇹🇹🇹🇻🇹🇼🇹🇿🇺🇦🇺🇬🇺🇳🇺🇸🇺🇾🇺🇿🇻🇦🇻🇨🇻🇪🇻🇬🇻🇮🇻🇳🇻🇺🏴󠁧󠁢󠁷󠁬󠁳󠁿🇼🇫🇼🇸🇽🇰🇾🇪🇾🇹🇿🇦🇿🇲🇿🇼"
}
