# # easy5_10.rb
# # Bannerizer

# # Write a method that will take a short line of text, and print it within a box.

# # You may assume that the input will always fit in your terminal window.

# TOP_BOTTOM_SIDE = '+'
# MIDDLE_SIDE = '|'
# TOP_BOTTOM_PAD = '-'
# MIDDLE_PAD = ' '
# EMPTY = ''

# def print_line(side_char, center_str, pad_char, width)
#   puts side_char + center_str.center(width, pad_char) + side_char
# end

# def print_in_box(str)
#   width = str.size + 2
#   print_line(TOP_BOTTOM_SIDE, EMPTY, TOP_BOTTOM_PAD, width)
#   print_line(MIDDLE_SIDE, EMPTY, MIDDLE_PAD, width)
#   print_line(MIDDLE_SIDE, str, MIDDLE_PAD, width)
#   print_line(MIDDLE_SIDE, EMPTY, MIDDLE_PAD, width)
#   print_line(TOP_BOTTOM_SIDE, EMPTY, TOP_BOTTOM_PAD, width)
# end

# print_in_box('To boldly go where no one has gone before.')
# # +--------------------------------------------+
# # |                                            |
# # | To boldly go where no one has gone before. |
# # |                                            |
# # +--------------------------------------------+
# puts

# print_in_box('')
# # +--+
# # |  |
# # |  |
# # |  |
# # +--+
# puts

# print_in_box('This is a test yo')
# puts
# puts '=' * 80
# puts


# # Book solution:
# def print_in_box(str)
#   width = str.size
#   top_bottom_line = "+#{'-' * (width + 2)}+"
#   inside_line = "|#{' ' * (width + 2)}|"
#   center_line = "| #{str} |"

#   puts top_bottom_line, inside_line, center_line, inside_line, top_bottom_line
# end

# print_in_box('To boldly go where no one has gone before.')
# # +--------------------------------------------+
# # |                                            |
# # | To boldly go where no one has gone before. |
# # |                                            |
# # +--------------------------------------------+
# puts

# print_in_box('')
# # +--+
# # |  |
# # |  |
# # |  |
# # +--+
# puts

# print_in_box('This is a test yo')
# puts
# puts '=' * 80
# puts


# # Modify this method so it will truncate the message if it will be too wide to
# #  fit inside a standard terminal window (80 columns, including the sides of the
# #  box). For a real challenge, try word wrapping very long messages so they
# #  appear on multiple lines, but still within a box.


# def print_in_box(str)
#   str = str.slice(0...76)
#   width = str.size
#   top_bottom_line = "+#{'-' * (width + 2)}+"
#   inside_line = "|#{' ' * (width + 2)}|"
#   center_line = "| #{str} |"

#   puts top_bottom_line, inside_line, center_line, inside_line, top_bottom_line
# end

# print_in_box('To boldly go where no one has gone before.')
# # +--------------------------------------------+
# # |                                            |
# # | To boldly go where no one has gone before. |
# # |                                            |
# # +--------------------------------------------+
# puts

# print_in_box('')
# # +--+
# # |  |
# # |  |
# # |  |
# # +--+
# puts

# print_in_box('Modify this method so it will truncate the message if it will' \
#              ' be too wide to fit inside a standard terminal window (80' \
#              ' columns, including the sides of the box).')
# puts
# puts '=' * 80
# puts

# # Wrap lines solution:
# MAX_WIDTH = 76

# def print_in_box(str)
#   lines = []

#   (0...str.size).step(MAX_WIDTH) { |n| lines << str[n...n + MAX_WIDTH] }

#   width = str.size > MAX_WIDTH ? MAX_WIDTH : str.size



#   top_bottom_line = "+#{'-' * (width + 2)}+"
#   inside_line = "|#{' ' * (width + 2)}|"

#   lines[-1] << ' ' * (MAX_WIDTH - lines.last.size) if lines.size > 1

#   puts top_bottom_line, inside_line
#   lines.each { |line| puts "| #{line} |"}
#   puts inside_line, top_bottom_line

# end

# print_in_box('To boldly go where no one has gone before.')
# # +--------------------------------------------+
# # |                                            |
# # | To boldly go where no one has gone before. |
# # |                                            |
# # +--------------------------------------------+
# puts

# print_in_box('')
# # +--+
# # |  |
# # |  |
# # |  |
# # +--+
# puts

# print_in_box('Modify this method so it will truncate the message if it will' \
#              ' be too wide to fit inside a standard terminal window (80' \
#              ' columns, including the sides of the box).')
# puts

# print_in_box('This is a fairly straight forward solution To simplify matters, '\
#              ' we start out by setting horizontal_rule and empty_line to ' \
#              'appropriate values for the top and bottom 2 lines of the box. ' \
#              'The expression * (message.size + 2) simply creates a ' \
#              'string of message.size + 2 hyphens; combined with the + at ' \
#              'the beginning and end of the the string, this is just wide ' \
#              'enough to draw the horizontal lines while leaving room for ' \
#              'one blank on either side of the message.')
# puts

# print_in_box('It is possible to solve this using regular expressions (see ' \
#              'the Regexp module documentation). For a nice challenge, give ' \
#              'this a try.')
# puts
# puts
# puts '=' * 80
# puts
# puts


# Alternate solution - wraps lines without cutting words in half:
def print_in_box_one_line(str)
  width = str.size
  top_bottom_line = "+#{'-' * (width + 2)}+"
  inside_line = "|#{' ' * (width + 2)}|"
  center_line = "| #{str} |"

  puts top_bottom_line, inside_line, center_line, inside_line, top_bottom_line
end

# MAX_WIDTH = 76

def print_in_box(str)
  # return print_in_box_one_line(str) if str.size <= 76

  top_bottom_line = "+#{'-' * (MAX_WIDTH + 2)}+"
  inside_line = "|#{' ' * (MAX_WIDTH + 2)}|"

  lines = str.gsub(/(.{1,#{MAX_WIDTH}})(\s+|\Z)/, "\\1\n").split(/\n/)

  lines.map! { |line| line + ' ' * (MAX_WIDTH - line.size) }

  puts top_bottom_line, inside_line
  lines.each { |line| puts "| #{line} |" }
  puts inside_line, top_bottom_line
end


# REFACTORED:
def print_in_box(str)
  lines = str.scan(/\S.{,75}(?=\s|\z)/)
  width = lines.max_by(&:size).to_s.size + 2
  top_bot = "+#{'-' * width}+"
  padding = "|#{' ' * width}|"
  text = lines.map { |line| "| #{line.ljust(width - 2)} |"}
  puts [top_bot, padding, *text, padding, top_bot]
end

print_in_box('To boldly go where no one has gone before.')
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+
puts

print_in_box('')
# +--+
# |  |
# |  |
# |  |
# +--+
puts

print_in_box('Modify this method so it will truncate the message if it will' \
             ' be too wide to fit inside a standard terminal window (80' \
             ' columns, including the sides of the box).')
puts

print_in_box('This is a fairly straight forward solution To simplify matters, '\
             ' we start out by setting horizontal_rule and empty_line to ' \
             'appropriate values for the top and bottom 2 lines of the box. ' \
             'The expression * (message.size + 2) simply creates a ' \
             'string of message.size + 2 hyphens; combined with the + at ' \
             'the beginning and end of the the string, this is just wide ' \
             'enough to draw the horizontal lines while leaving room for ' \
             'one blank on either side of the message.')
puts

print_in_box('It is possible to solve this using regular expressions (see ' \
             'the Regexp module documentation). For a nice challenge, give ' \
             'this a try.')
puts

print_in_box('Lara spotted other landmarks—an outcropping of limestone beside the path that had a silhouette like a mans face, a marshy spot beside the river where the waterfowl were easily startled, a tall tree that looked like a man with his arms upraised. They were drawing near to the place where there was an island in the river. The island was a good spot to make camp. They would sleep on the island tonight. Lara had been back and forth along the river path many times in her short life. Her people had not created the path—it had always been there, like the river—but their deerskin-shod feet and the wooden wheels of their handcarts kept the path well worn. Laras people were salt traders, and their livelihood took them on a continual journey. At the mouth of the river, the little group of half a dozen intermingled families gathered salt from the great salt beds beside the sea. They groomed and sifted the salt and loaded it into handcarts. When the carts were full, most of the group would stay behind, taking shelter amid rocks and simple lean-tos, while a band of fifteen or so of the heartier members set out on the path that ran alongside the river. With their precious cargo of salt, the travelers crossed the coastal lowlands and traveled toward the mountains. But Laras people never reached the mountaintops; they traveled only as far as the foothills. Many people lived in the forests and grassy meadows of the foothills, gathered in small villages. In return for salt, these people would give Laras people dried meat, animal skins, cloth spun from wool, clay pots, needles and scraping tools carved from bone, and little toys made of wood. Their bartering done, Lara and her people would travel back down the river path to the sea. The cycle would begin again. It had always been like this. Lara knew no other life. She traveled back and forth, up and down the river path. No single place was home. She liked the seaside, where there was always fish to eat, and the gentle lapping of the waves lulled her to sleep at night. She was less fond of the foothills, where the path grew steep, the nights could be cold, and views of great distances made her dizzy. She felt uneasy in the villages, and was often shy around strangers. The path itself was where she felt most at home. She loved the smell of the river on a hot day, and the croaking of frogs at night. Vines grew amid the lush foliage along the river, with berries that were good to eat. Even on the hottest day, sundown brought a cool breeze off the water, which sighed and sang amid the reeds and tall grasses. Of all the places along the path, the area they were approaching, with the island in the river, was Laras favorite. The terrain along this stretch of the river was mostly flat, but in the immediate vicinity of the island, the land on the sunrise side was like a rumpled cloth, with hills and ridges and valleys. Among Laras people, there was a wooden babys crib, suitable for strapping to a cart, that had been passed down for generations. The island was shaped like that crib, longer than it was wide and pointed at the upriver end, where the flow had eroded both banks. The island was like a crib, and the group of hills on the sunrise side of the river were like old women mantled in heavy cloaks gathered to have a look at the baby in the crib—that was how Laras father had once described the lay of the land. Larth spoke like that all the time, conjuring images of giants and monsters in the landscape. He could perceive the spirits, called numina, that dwelled in rocks and trees. Sometimes he could speak to them and hear what they had to say. The river was his oldest friend and told him where the fishing would be best. From whispers in the wind he could foretell the next days weather. Because of such skills, Larth was the leader of the group. Were close to the island,  we, Papa? said Lara. did you The hills. First we start to see the hills, off to the right. The hills grow bigger. And just before we come to the island, we can see the silhouette of that fig tree up there, along the crest of that hill. Good girl! said Larth, proud of his  memory and powers of observation. He was a strong, handsome man with flecks of gray in his black beard. His wife had borne several children, but all had died very young except Lara, the last, whom his wife had died bearing. Lara was very precious to him. Like her mother, she had golden hair. Now that she had reached the age of childbearing, Lara was beginning to display the fullness of a womans hips and breasts. It was Larths greatest wish that he might live to see his own grandchildren. Not every man lived that long, but Larth was hopeful. He had been healthy all his life, partly, he believed, because he had always been careful to show respect to the numina he encountered on his journeys. Respecting the numina was important. The numen of the river could suck a man under and drown him. The numen of a tree could trip a man with its roots, or drop a rotten branch on his head. Rocks could give way underfoot, chuckling with amusement at their own treachery. Even the sky, with a roar of fury, sometimes sent down fingers of fire that could roast a man like a rabbit on a spit, or worse, leave him alive but robbed of his senses. Larth had heard that the earth itself could open and swallow a man; though he had never actually seen such a thing, he nevertheless performed a ritual each morning, asking the earths permission before he went striding across it. something so special about this place, said Lara, gazing at the sparkling river to her left and then at the rocky, tree-spotted hills ahead and to her right.  was it made? Who made it? Larth frowned. The question made no sense to him. A place was never made, it simply was. Small features might change over time. Uprooted by a storm, a tree might fall into the river. A boulder might decide to tumble down the hillside. The numina that animated all things went about reshaping the landscape from day to day, but the essential things never changed, and had always existed: the river, the hills, the sky, the sun, the sea, the salt beds at the mouth of the river. He was trying to think of some way to express these thoughts to Lara, when a deer, drinking at the river, was startled by their approach. The deer bolted up the brushy bank and onto the path. Instead of running to safety, the creature stood and stared at them. As clearly as if the animal had whispered aloud, Larth heard the words Eat me. The deer was offering herself. Larth turned to shout an order, but the most skilled hunter of the group, a youth called Po, was already in motion. Po ran forward, raised the sharpened stick he always carried and hurled it whistling through the air between Larth and Lara. A heartbeat later, the spear struck the deers breast with such force that the creature was knocked to the ground. Unable to rise, she thrashed her neck and flailed her long, slender legs. Po ran past Larth and Lara. When he reached the deer, he pulled the spear free and stabbed the creature again. The deer released a stifled noise, like a gasp, and stopped moving. There was a cheer from the group. Instead of yet another dinner of fish from the river, tonight there would be venison. The distance from the riverbank to the island was not great, but at this time of year—early summer—the river was too high to wade across. Laras people had long ago made simple rafts of branches lashed together with leather thongs, which they left on the riverbanks, repairing and replacing them as needed. When they last passed this way, there had been three rafts, all in good condition, left on the east bank. Two of the rafts were still there, but one was missing. I see it! There—pulled up on the bank of the island, almost hidden among those leaves, said Po, whose eyes were sharp. Someone must have used it to cross over. Perhaps theyre still on the island, said Larth. He did not begrudge others the use of the rafts, and the island was large enough to share. Nonetheless, the situation required caution. He cupped his hands to his mouth and gave a shout. It was not long before a man appeared on the bank of the island. The man waved. Do we know him? said Larth, squinting. I dont think so, said Po. Hes young—my age or younger, Id say. He looks strong. Very strong! said Lara. Even from this distance, the young strangers brawniness was impressive. He wore a short tunic without sleeves, and Lara had never seen such arms on a man. Po, who was small and wiry, looked at Lara sidelong and frowned. Im not sure I like the look of this stranger. Why not? said Lara.  smiling at us. In fact, the young man was smiling at Lara, and Lara alone. His name was Tarketios. Much more than that, Larth could not tell, for the stranger spoke a language which Larth did not recognize, in which each word seemed as long and convoluted as the mans name. Understanding the deer had been easier than understanding the strange noises uttered by this man and his two companions! Even so, they seemed friendly, and the three of them presented no threat to the more numerous salt traders. Tarketios and his two older companions were skilled metalworkers from a region some two hundred miles to the north, where the hills were rich with iron, copper, and lead. They had been on a trading journey to the south and were returning home. Just as the river path carried Larths people from the seashore to the hills, so another path, perpendicular to the river, traversed the long coastal plain. Because the island provided an easy place to ford the river, it was here that the two paths intersected. On this occasion, the salt traders and the metal traders happened to arrive at the island on the same day. Now they met for the first time. The two groups made separate camps at opposite ends of the island. As a gesture of friendship, speaking with his hands, Larth invited Tarketios and the others to share the venison that night. As the hosts and their guests feasted around the roasting fire, Tarketios tried to explain something of his craft. Firelight glittered in Laras eyes as she watched Tarketios point at the flames and mime the act of hammering. Firelight danced across the flexing muscles of his arms and shoulders. When he smiled at her, his grin was like a boast. She had never seen teeth so white and so perfect. Po saw the looks the two exchanged and frowned. Laras father saw the same looks and smiled. The meal was over. The metal traders, after many gestures of gratitude for the venison, withdrew to their camp at the far side of the island. Before he disappeared into the shadows, Tarketios looked over his shoulder and gave Lara a parting grin. While the others settled down to sleep, Larth stayed awake a while longer, as was his habit. He liked to watch the fire. Like all other things, fire possessed a numen that sometimes communicated with him, showing him visions. As the last of the embers faded into darkness, Larth fell asleep. Larth blinked. The flames, which had dwindled to almost nothing, suddenly shot up again. Hot air rushed over his face. His eyes were seared by white flames brighter than the sun. Amid the dazzling brightness, he perceived a thing that levitated above the flames. It was a masculine member, disembodied but nonetheless rampant and upright. It bore wings, like a bird, and hovered in midair. Though it seemed to be made of flesh, it was impervious to the flames. Larth had seen the winged phallus before, always in such circumstances, when he stared at a fire and entered a dream state. He had even given it a name, or more precisely, the thing had planted its name in his mind: Fascinus. Fascinus was not like the numina that animated trees, stones, or rivers. Those numina existed without names. Each was bound to the object in which it resided, and there was little to differentiate one from another. When such numina spoke, they could not always be trusted. Sometimes they were friendly, but at other times they were mischievous or even hostile. Fascinus was different. It was unique. It existed in and of itself, without beginning or end. Clearly, from its form, it had something to do with life and the origin of life, yet it seemed to come from a place beyond this world, slipping for a few moments through a breach opened by the heat of the dancing flames. An appearance by Fascinus was always significant. The winged phallus never appeared without giving Larth an answer to a dilemma that had been troubling him, or planting an important new thought in his mind. The guidance given to him by Fascinus had never led Larth astray. Elsewhere, in distant lands—Greece, Israel, Egypt—men and women worshiped gods and goddesses. Those people made images of their gods, told stories about them, and worshiped them in temples. Larth had never met such people. He had never even heard of the lands where they lived, and he had never encountered or conceived of a god. The very concept of a deity such as those other men worshiped was unknown to Larth, but the closest thing to a god in his imagination and experience was Fascinus. With a start, he blinked again. The flames had died. In place of intolerable brightness there was only the darkness of a warm summer night lit by the faintest sliver of a moon. The air on his face was no longer hot but fresh and cool. Fascinus had vanished—but not without planting a thought in Larths mind. He hurried to the leafy bower beside the river where Lara liked to sleep, thinking to himself, It must be made so, because Fascinus says it must! He knelt beside her, but there was no need to wake her. She was already awake. What is it? Go to him! She did not need to ask for an explanation. It was what she had been yearning to do, lying restless and eager in the dark. Are you sure, Papa? Fascinus . . . , He did not finish the thought, but she understood. She had never seen Fascinus, but he had told her about it. Many times in the past, Fascinus had given guidance to her father. Now, once again, Fascinus had made its will known. The darkness did not deter her. She knew every twist and turn of every path on the little island. When she came to the metal traders camp, she found Tarketios lying in a leafy nook secluded from the others; she recognized him by his brawny silhouette. He was awake and waiting, just as she had been lying awake, waiting, when her father came to her.')
puts

print_in_box('TESTING SECOND CAPTURE GROUP:........................................................                                                                                               of limestone beside the XXXXXXX                                                                         XXXXX path that had a silhouette             like a mans face,            a marshy spot beside the river where the waterfowl were easily startled, a tall')
print_in_box('Modify this method so it will truncate the message if it will be too wide to fit inside a standard terminal window (80 columns, including the sides of the box). For a real challenge, try word wrapping very long messages so they appear on multiple lines, but still within a box.')