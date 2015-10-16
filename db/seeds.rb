Admin.create(password: "nobleandwhite")

Announcement.create({title:"NEW EP RELEASE" ,picture: "https://f1.bcbits.com/img/a3002440918_16.jpg" ,body: "released September 13, 2011 
Produced by Jeremy Sklarsky at Threshold Studios NYC 
Contact: EdelweissOfficial@gmail.com
tags: alternative indie rock math pop post-punk revival Philadelphia"})

Video.create({name: 'A Sound From Pennsylvania', url: 'https://www.youtube.com/embed/rx1y8ScMWp0'})

Music.create(code: '<iframe style="border: 0; width: 350px; height: 470px;" src="https://bandcamp.com/EmbeddedPlayer/album=1994609732/size=large/bgcol=ffffff/linkcol=0687f5/tracklist=false/transparent=true/" seamless><a href="http://edelweissofficial.bandcamp.com/album/pre-columbians">Pre-Columbians by Edelweiss</a></iframe>')
Music.create(code: '<iframe style="border: 0; width: 350px; height: 470px;" src="https://bandcamp.com/EmbeddedPlayer/album=28858551/size=large/bgcol=ffffff/linkcol=0687f5/tracklist=false/transparent=true/" seamless><a href="http://edelweissofficial.bandcamp.com/album/fiasco">Fiasco by Edelweiss</a></iframe>')

Picture.create(link:"https://scontent-lga3-1.xx.fbcdn.net/hphotos-prn2/t31.0-8/10923823_947425511936626_262234132565191213_o.jpg")
Picture.create(link:"https://scontent-lga3-1.xx.fbcdn.net/hphotos-xap1/t31.0-8/241229_225826817429836_6096707_o.jpg")
Picture.create(link:"https://scontent-lga3-1.xx.fbcdn.net/hphotos-xap1/v/t1.0-9/10624737_887107934635051_9208350287725010612_n.jpg?oh=45679b04e1ea1310a27f47cddbed667c&oe=568A7CDF")
Picture.create(link:"https://scontent-lga3-1.xx.fbcdn.net/hphotos-frc3/t31.0-8/901147_651744514838062_103166658_o.jpg")
Picture.create(link:"https://scontent-lga3-1.xx.fbcdn.net/hphotos-ash2/v/t1.0-9/1932473_909899999022511_810881487208187947_n.jpg?oh=7b3beba3818627a73b7639ea50f3a212&oe=56CB191E")

a= Album.create(title:"Best of SNL")
a.songs.create(title:"I'm On A Boat", lyric:"[Intro (T-Pain)]
(Shortayyyy) Aww shit
Get your towels ready it's about to go down (shorty, yeah)
Everybody in the place hit the fuckin deck (shorty, yeah)
But stay on your motherfuckin toes
We runnin this, let's go

[Chorus (T-Pain)]
I'm on a boat (I'm on a boat)
I'm on a boat (I'm on a boat)
Everybody look at me cause I'm sailin on a boat (sailin on a boat)
I'm on a boat (I'm on a boat)
I'm on a boat
Take a good hard look at the motherfuckin boat (boat, yeah)

[The Lonely Island (T-Pain)]
I'm on a boat motherfucker take a look at me
Straight flowin on a boat on the deep blue sea
Bustin five knots, wind whippin out my coat
You can't stop me motherfucker cause I'm on a boat

Take a picture, trick (trick) I'm on a boat, bitch (bitch)
We drinking Santana champ, cause it's so crisp (crisp)
I got my swim trunks, and my flippie-floppies
I'm flippin burgers, you at Kinko's straight flippin copies

I'm ridin on a dolphin, doin flips and shit
The dolphin's splashin, gettin e'rybody all wet
But this ain't Seaworld, this is real as it gets
I'm on a boat motherfucker, don't you ever forget

I'm on a boat and, it's goin fast and
I got a nautical themed pashmina afghan
I'm the king of the world, on a boat like Leo
If you're on the shore, then you're sho' not me-oh
{Get the fuck up, this boat is REAL!!!}

Fuck land, I'm on a boat, motherfucker (motherfucker)
Fuck trees, I climb buoys, motherfucker (motherfucker)
I'm on the deck with my boys, motherfucker (yeah)
This boat engine make noise, motherfucker

Hey ma, if you could see me now (see me now)
Arms spread wide on the starboard bow (starboard bow)
Gonna fly this boat to the moon somehow (moon somehow)
Like Kevin Garnett, anything is possible

[T-Pain]
Yeah, never thought I'd be on a boat
It's a big blue watery road (yeah)
Poseidon~!! Look at me, oh (all hands on deck)
Never thought I'd see the day
When a big boat comin my way
Believe me when I say, I fucked a mermaid

[Chorus]

[T-Pain]
Whoahhh
Sha-sha-shorty, shorty
Yeah yeah yeahhh")

Event.create({title:"Music Festival Tips" ,picture: "http://i.onionstatic.com/onion/1561/3/original/1920.jpg" ,body:
"Only take ecstasy with people you've known for part of an afternoon or longer.
Lines to the portable toilets can be unbearably long. Rig a makeshift chemical toilet in your cargo shorts using an adult diaper and formaldehyde.
For the band's sake, it's best to be within the first 15 rows if you'd like to flash your rack.
Get on a security guard's good side by complimenting him on the way he's standing there like a total asshole.
Don't be afraid to be the screaming shirtless dude in a great big funny hat. Someone always buys that guy a hot dog.
If at all disoriented, yell, 'WOOOO!'' until you feel well again.
The acceptable time at which a festivalgoer may sit down is after five hours if he or she is 32 years old or over, or after eight hours if he or she is between 24 and 31. There is no acceptable sit-down time for festivalgoers ages 24 and younger.
3XL poncho will allow you to make a few bucks renting out space during storms.
Remember, a positive festival experience is as simple as urinating into a jug, fiercely guarding against frottage amid the dense crowds, and staying awake for 72 hours straight to make sure people don't steal your shit."})
