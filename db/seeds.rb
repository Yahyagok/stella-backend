# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
# movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# Character.create(name: 'Luke', movie: movies.first)




require 'pry'

require 'json'

Agency.destroy_all
City.destroy_all
Actor.destroy_all
User.destroy_all
Like.destroy_all
Comment.destroy_all
Favorite.destroy_all

# ActiveRecord::Base.connection.reset_sequence!("agencies", "id", squence = nil)






 agency1 =Agency.create(name: "Talent", location: "NYC")
 agency2 =Agency.create(name: "Blackstone", location: "Toronto")
 agency3 =Agency.create(name: "5th Avenue", location: "NYC")

 agency4 = Agency.create(name: "Stars", location: "California" )

 c1 = City.create(name: "Istanbul, Turkey")
 c2 = City.create(name: "New York")
 c3 = City.create(name: "Houston, Dallas")
 c4 = City.create(name: "California")

 a1 = Actor.create(name: "Haluk Bilginer", image: "haluk-bilginer.jpg", contact_info: 13473333333, city_id: c1.id, agency_id: agency1.id, description: "Haluk Bilginer is a Turkish actor. In addition to his acting career in Turkey, he has also worked in the United Kingdom and remains known for his role as Mehmet Osman in the television soap opera EastEnders (1985) during the 1980s. He has also starred in Hollywood movies as a minor actor. He played a villainous guerrilla leader in the 1987 comedy film Ishtar (1987) (one of the most notorious flops in movie history) and a Turkish Mafioso in the 2001 dark comedy film Buffalo Soldiers (2001). He played the character of Emre Celenk in the episode of Persephone in MI-5 (2002) 2004.

 Bilginer was born in Izmir, Turkey. He graduated from Ankara State Conservatory in 1977 before going to England where he graduated from London Academy of Music and Dramatic Art. He landed his first role at EastEnders (1985). Bilginer makes his first appearance in EastEnders (1985) as Mehmet Osman on-screen in June 1985, four months after the show originally aired. His arrival coincides with a cot death story line of Sue and Ali's baby, Hassan. Mehmet appears as a recurring character from 1985-1987, setting up a cab firm named Ozcabs from inside Ali's cafe; however, he becomes a regular in 1988, when both he and his wife Guizin (Ishia Bennison) are made partners in Ali's cafe, which is renamed Café Osman. Mehmet is portrayed as a charmer, a rogue and a womanizer. Author of The EastEnders (1985) Handbook, Hilary Kingsley, has said of him, he tries it on with every woman he meets and sometimes succeeds through a combination of good looks and sheer audacity.A serial gambler, Mehmet was shown to steer Ali into various money-losing ploys, and had a combustible marriage to Guizin, who put up with his philandering, as in the Turkish community, that's what a wife was expected to do.
 
 Described as the Terrible Turk, Haluk Bilginer was one of the more popular male cast members on EastEnders (1985) during the 1980s, and he reportedly received sackfuls of fan mail, despite playing a villain and a womanizing snake. Hilary Kingsley has said that what made the character so popular was Bilginer's Omar Sharif-style good looks and charm. Following the departure of Holland and Smith, Mehmet was eventually written out of the serial in May 1989, in a story line that signified the disbandment of the Osman family. On-screen, Mehmet returns to his native Cyprus after a fight with Guizin regarding her suspicions about Mehmet's fabricated affair with Sue. The Osman family were among many characters to leave the serial that year. Writer Colin Brake has commented, the pace of comings and going was fast and furious during 1989, as the program me tried to find a new direction. Bilginer went into musical theatre after leaving EastEnders (1985). During the course of the show, he came to Turkey to star in the 1987 TV series Gecenin Öteki Yüzü (1987) (The Other Side of the Night), where he met his eventual first wife Zuhal Olcay, famous Turkish actress and singer. After dividing his time in London and Istanbul for six years, he left the show to stay in Turkey permanently and married Zuhal Olcay in 1992. He guest starred in an episode of The Young Indiana Jones Chronicles (1992) as Ismet Inönü, and went on to star in the Yavuz Özkan film iki Kadin (1992) (Two Women). He then starred in various movies including the controversial Istanbul Beneath My Wings (1996) (Istanbul Under My Wings) and the famous Sawdust Tales (1997) (Master, Kill Me). After critical acclaim for these roles, he earned his first award as a supporting actor in Innocence (1997) (Innocence). After deciding he wants to pursue career on stage, he founded Tiyatro Stüdyosu (Theatre Studio) with his wife Zuhal Olcay and Ahmet Levendoglu in 1990. After starring in various plays for six years, he had to return to screen in 1996 because of a fire that has destroyed the theater. He and his wife starred in television and movies to raise money to found another theater.
 
 During this era, he starred in Eyvah kizim büyüdü (2000) (Oh My, My Daughter Has Grown), starting his second era in television. After years of work, he and his wife managed to start a second theater, called Oyun Atölyesi (Play Workshop). His most famous role however came after he started his second theater. He landed a role in Sweet Life (2001), a remake of The Jeffersons (1975). He played the role of Ihsan Yildirim, an angry, racist and foul-mouthed, yet lovable dry cleaner. He was accompanied by legendary actress Türkan Soray, who played his wife, Asuman Dabak playing the witty cleaner, Neco playing the Greek neighbor (The enmity between Greeks and Turks were put instead of the Black-White one in the original) and Çolpan Ilhan playing Neco's wife. He and the show's breakthrough character Irfan (played by Celal Kadri Kinoglu) are regarded as the best characters in Turkish TV history. He divorced Zuhal Olcay in 2004 and began a relationship with Askin Nur Yengi, a famous Turkish singer. They married in 2006 and had a girl. After Sweet Life (2001), he starred in Where's Firuze? (2004) (Where Are You Firuze?), Robbery Alla Turca (2005) (Thief!) and Killing the Shadows (2006) (Why Were Hacivat&Karagöz Murdered?). His most recent role in Police (2007) (Police) however, is his most critically acclaimed role after Sweet Life (2001). His portrayal of the troubled police legend Musa Rami has gained critical acclaim from both critics and viewers, who thought the movie was too experimental. Bilginer, however, has said that he will work in all of Onur Ünlü's (screenwriter and director of Police (2007)) movies, even as an extra if required. Bilginer played the role of Mustafa Kemal Atatürk in an Is Bank commercial, which first aired on 10 November 2007 during the 69th commemorations of Atatürk's death. In 2009 , He play in famous Turkish soap Ezel (2009) during the second season. He became famous with this role around Arab world. Bilginer co-starred in the 2009 American thriller The International (2009) as Ahmet Sunay, a Turkish high-tech missile guidance system dealer. He was accompanied by Clive Owen and Naomi Watts in this movie. Bilginer plays Aydin, an imposing Grey-haired former actor, in Winter Sleep (2014), which won the Palme d'Or at the Cannes Film Festival in 2014.")

a2 = Actor.create( name: "Leonardo Di Caprio", image: "leonardo-di-caprio.jpg", contact_info: 13475555555, city_id:  c4.id, agency_id: agency4.id, description: "Leonardo DiCaprio is an actor known for his edgy, unconventional roles. He started out in television before moving on to film, scoring an Oscar nomination for his role in What's Eating Gilbert Grape (1993). In 1997, DiCaprio starred in James Cameron's epic drama Titanic, which made him a star. The actor has also paired up with iconic director Martin Scorsese for several projects, including The Aviator (2004) and The Departed (2006). His more recent films include Inception (2010), Django Unchained (2012), The Wolf of Wall Street (2013) and The Revenant (2015), winning his first Oscar for the latter.

Early Life
Born on November 11, 1974, in Los Angeles, California, Leonardo Wilhelm DiCaprio is the only child of Irmelin and George DiCaprio. His parents divorced when he was still a toddler. DiCaprio was mostly raised by his mother, a legal secretary born in Germany. Despite his parents' early divorce, DiCaprio remained close to his father, a comic book artist and distributor. With his parents' urging, DiCaprio explored his creative side, developing an early interest in acting. I loved imitating people ... I loved joking around with my parents and creating different characters. I liked doing my own little homemade skits, DiCaprio told Backstage. But he didn't have much success in Hollywood until he reached his early teens.
'Growing Pains'
For years, DiCaprio had trouble landing an agent. One agent even recommended DiCaprio change his name to Lenny Williams to improve his appeal. However, by the early 1990s, the burgeoning actor began landing regular television work. His early credits included guest appearances on such programs as The New Lassie and Roseanne. He also landed a role in the dramatic comedy Parenthood. While the show proved to be short-lived, DiCaprio reportedly met fellow actor Tobey Maguire while making the series and the two have remained good friends ever since. In 1991, DiCaprio took a leap forward when he was cast as a semi-regular on the family comedy Growing Pains, with Kirk Cameron and Alan Thicke. He made his film debut in the low-budget horror flick Critters 3 that same year but got the chance to demonstrate his talents as a serious actor two years later. " )

a3 = Actor.create(name: "Tom Cruise", image: "tom-cruise.jpg", contact_info: 1234445566, city_id: c2.id, agency_id: agency3.id, description: "Tom Cruise is an American actor known for his roles in iconic films throughout the 1980s, 1990s and 2000s, as well as his high profile marriages to actresses Nicole Kidman and Katie Holmes. After developing an interest in acting during high school, he rocketed to fame with his star turns in Risky Business and Top Gun. Cruise later earned acclaim for his work in the hit film Jerry Maguire and the Mission: Impossible franchise.

Early Life
Thomas Cruise Mapother IV, better known as Tom Cruise, was born on July 3, 1962, in Syracuse, New York, to Mary and Thomas Mapother. Cruise's mother was an amateur actress and schoolteacher, and his father was an electrical engineer. His family moved around a great deal when Cruise was a child to accommodate his father's career.

Cruise's parents divorced when he was 11, and the children moved with their mother to Louisville, Kentucky, and then to Glen Ridge, New Jersey, after she remarried. Like his mother and three sisters, Cruise suffered from dyslexia, which made academic success difficult for him. He excelled in athletics, however, and considered pursuing a career in professional wrestling until a knee injury sidelined him during high school.


At age 14, Cruise enrolled in a Franciscan seminary with thoughts of becoming a priest, but he left after a year. When he was 16, a teacher encouraged him to participate in the school's production of the musical Guys and Dolls. After Cruise won the lead of Nathan Detroit, he found himself surprisingly at home on the stage, and a career was born.

Movies
'Taps,' 'The Outsiders'
Cruise set a 10-year deadline for himself in which to build an acting career. He left school and moved to New York City, struggling through audition after audition before landing an appearance in 1981's Endless Love, starring Brooke Shields. Around this same time, he snagged a small role in the military school drama Taps (1981), co-starring Sean Penn.

His role in Taps was upgraded after director Harold Becker saw Cruise's potential, and his performance caught the attention of a number of critics and filmmakers. In 1983, Cruise appeared in Francis Ford Coppola's The Outsiders, which also starred Emilio Estevez, Matt Dillon and Rob Lowe—all prominent members of a group of young actors the entertainment press dubbed the Brat Pack.The film was not well received, but it allowed Cruise to work with an acclaimed director on a high-profile project." )

a4 = Actor.create(name: "Airicia Reynols", image: "Airicia-Reynolds.jpg", contact_info: 13474454545, city_id: c2.id, agency_id: agency2.id, description: "She is born in Philedelphia. she is 13 year old. She likes to do gym and sport activities")

a5 = Actor.create(name: "Aoife Jordan", image:"Aoife Jordan.png", contact_info: 13403454343, city_id: c3.id, agency_id: agency3.id, description: "She was born in Westminster. she is 20 year old. She look forward to get opportunities as a new actress"  )

a6 = Actor.create(name: "Benito Skinner", image:"Benote-Skinner.jpg", contact_info: 443453432, city_id: c4.id, agency_id: agency2.id, description: "Benito Skinner, also known as Benny Drama, writes and produces the kind of parody videos that will have you cackling over your phone in your bedroom in the middle of the night. From skits like “Lizzie McGuire is BACK!” and “The *REAL* Dumbledore” to his reads on what it’s like to date each zodiac sign, Skinner brings full commitment to his comedy. As the name suggests, drama is his forte.

“I’m moved by people being themselves. No reservations, no edits. Nasty shit! I love it,” said Skinner. “I find inspiration in moments that challenge our ideas on what it means to be loved or accepted. It started for me when I was closeted in high school, but today it manifests itself in everything from the absurd avatars we create for ourselves online to pop culture broadly.”

Comedy has always been part of Skinner’s life. As a kid he would recite the pie scene from Mrs. Doubtfire over and over again for his family. “You know, the one where Robin Williams pretends the pie filling is a face mask to hide his true identity,” he said. “There’s a lot to unpack about my love of that scene.” He cites Williams as a major influence, along with Lana Del Rey for her interpretation of nostalgic Americana. Try to picture the center of that Venn Diagram and you’ll get the sensibility of his videos, which he often writes and produces with his boyfriend, Terry O’Connor.


Skinner is currently writing his next live show, which will be more personal and focus less on his characters, and waiting for the development of his pilot. And he’s been giving his green screen lots of love during shelter-in-place, so plenty of videos are on the way. We spoke with him about otters, skin care, and Dumbledore.

What would your Real Housewives tagline be?
“I da ho”? Yeah, that sounds about right.

If you were running for office, what would your campaign song be and why?
“National Anthem” by Lana Del Rey because that’s actually the official song of the United States of America.

What kind of animal would you be and why?
An otter. They are SO queer, OMG. They love self-grooming, are extremely needy, and also part psycho. It … me.

What are the last three songs you’ve listened to?
“Levitating” by Dua Lipa, “The Steps” by HAIM, and “Chelsea Hotel No. 2” cover by Lana Del Rey (gets me in my feelings!)

If you could master any skill that isn’t related to your current job, what would it be and why?
I think I’d want to be a certified dermatologist. I care about skin more than … anything? I had cystic acne in college and literally spent the next three years reading too many articles about skin care. And I think it also requires making people feel good. When my siblings or friends come to me with skin concerns, I’m like Drama M.D. in the haus — come to mama!!!

What goals are you working toward at the moment?
I want to make something that honestly reflects the queer experience right now. Hopefully, I will do that with the pilot and live show I’m working on. Fingers crossed, girlies!

What three fictional characters do you relate to most?
SpongeBob, because he was my first introduction to femininity and masculinity coexisting in a way that was depicted positively. I loved that he had a high-pitched voice. Made me feel seen in a way that I probably didn’t understand at the time.

Dumbledore, because he was so secretive, like a true gay Scorpio. And chic!

The token gay student from School of Rock. I swear to God, that queen got absolutely robbed for not winning something for that performance. I gulped every time he was onscreen as a kid because I was like, yep, that’s me! “You’re tacky and I hate you” should have been my senior quote.

What piece of advice has had the biggest impact on you and why?
It’s not what you say to people, but how you make them feel. I think about that line probably too much. I want my work to always make people feel good. Yes, obviously the words matter. But I really just want to give people that escape. Comedy can bring us together in a very bizarre and special way, so I feel lucky to be apart of that." )


u1 = User.create(name: "yahya", password: "12")

u2 = User.create(name: "Ureil", password: "1" )

u3 = User.create(name: "Samantha",password: "1234")

u4 = User.create(name: "uba", password: "1" )

l1 = Like.create( user_id: u1.id, actor_id: a2.id   )

l2 = Like.create( user_id: u2.id, actor_id: a1.id  )

l3 = Like.create( user_id: u3.id, actor_id: a2.id   )

comment1 = Comment.create( user_id: u1.id, actor_id: a2.id, review: "I love your hard works, you will get more roles in the future, I believe that")

comment2 = Comment.create( user_id: u2.id, actor_id: a3.id, review: "I know how you act like a professional actor, you will do better projects soon "  )

comment3 = Comment.create( user_id: u4.id, actor_id: a1.id, review: "I'm not sure you get more jobs, but, I believe you get more roles" )


favorite1 = Favorite.create( user_id: u2.id, actor_id: a1.id  )

favorite2 = Favorite.create( user_id: u3.id, actor_id: a2.id )

favorite3 = Favorite.create( user_id: u1.id, actor_id: a3.id  )

favorite4 = Favorite.create( user_id: u2.id, actor_id: a1.id )














