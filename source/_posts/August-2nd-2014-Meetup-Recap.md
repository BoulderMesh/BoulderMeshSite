title: 'August 2nd 2014 Meetup'
date: 2014-08-02 13:51:09
---
Author: Tony Crowe

The building for Amante Coffee was under construction when we arrived however they were still open for serving their tasty beverages. We accumulated inside, got our beverages, and prepped for a magnificent deep dive into mesh networking technology. Oh boy!

## Seeking participation from the community

Before I go further into this particular event I want to let anyone know that if you are interested in participating in anyway to Boulder Mesh you are welcomed to do so. There are hardware, software, geographic, and social aspects to uncover. It's a community project and if there is a direction you want to explore with the group or individually we encourage you to get in touch, get involved, and share what you are interested in.

## A visitor from afar

Chip from Fort Collins came to our meeting here in Boulder to connect with us and share knowledge. He has been chatting with us in our IRC channel and telling us about his experience with his group [NoCoMeshNet](https://nocomesh.net).

Today in his He brought the following equipment:
+ [Ubiquiti Rocket M5](http://www.ubnt.com/airmax/rocketm/) attached to a pipe mount and omni-directional antenna
+ [Ubiquiti Air Grid](http://www.ubnt.com/airmax/airgridm/)
+ [Raspberry Pi Model A](http://www.raspberrypi.org/product/model-a/) which he generously donated for our experimentation
+ Flux Capacitor

Chip hunkered down and braced for the onslaught of questions we had. Many thanks for coming to meet with us, imparting some knowledge, and for your generosity. If you get a chance to meet with the folks at NoCoMeshNet I'm sure you will enjoy it.

NoCoMeshNet: [website](https://nocomesh.net) / [meetup](http://www.meetup.com/Northern-Colorado-Meshnet/) / #nocomeshnet on efnet

## Connecting to our brethren in the mountains with science!

Ben, a newcomer to the group, suggested the idea that mesh net technology might be a good way to connect people high up and spread out in the mountains with a reliable data connection. Chip added that there are amateur radio repeaters setup in a lot of areas already but they are hard to get access to. If there are no wires and satellite is not a good option then could a series of mesh net devices get those people connected up at high speed? Can it be done at a lower cost with mesh net technology than other methods?

Another option we discussed is tacking scientific equipment along with each mesh net unit. It really got the gears turning in our mind to consider how useful and valuable this kind of work can be. Can weather and scientific equipment be piggy-backed on the radio equipment? Is that capability and data valuable to people? We imagine it is. If you have any thoughts on that please voice your interest with our group.

## CJDNS and the possibility of easier peering

If you've compiled and configured CJDNS you understand that it takes a level of technical knowledge and patience. We don't think that is a bad thing but for those of us who desire easier peering we discussed that possibility.

In the last blog post, [recap of June 7th](http://bouldermesh.net/2014/06/10/Recap-of-the-June-7th-Meetup/), I discussed the CJDNS node scanner which included a Node.js module for communicating with a CJDNS admin interface. That interface may be able to used with other software to reconfigure the node on the fly which could be a huge boon to us for convenience. Not only can we report node health but auto-connecting peers may be done over that interface too. More to come on that in the next month.

## The apartment strategy

One of the questions today was, if you live in an apartment, can you still connect up with mesh net peers in town? The answers seemed to lean toward "Yes" with consideration to what your landlord allows. Using the Ubiquiti equipment listed above the devices could be connected up on top of the roof or a nearby pole. The range is sufficient to get pretty far in this town.

If you're peering with a node in a line of sight then a directional antenna is appropriate. The other option you have is to use an omni-directional antenna when connecting with other peers in range.

After that you can run wireless routers in your building connected up with your antenna. After we get some more implementations of this it would be nice to get a diagram of the setup with a how-to. The cost of this setup varies but it could be around $250 or less according to Chip.

As we learn more we'll refine our techniques and knowledge and report it back here.

## Some other juicy facts we learned about

NIST radio and time station near Fort Collins including [WWV](http://en.wikipedia.org/wiki/WWV_%28radio_station%29) and [WWVB](http://en.wikipedia.org/wiki/WWVB).

[Ubiquiti](http://www.ubnt.com/) is selling products we are interested in acquiring and experimenting with.

## Thanks!

Much appreciation to the folks who came out for this meeting and discussed this very interesting project. Keep in touch via #bouldermesh on freenode and [our meetup each first Saturday of the month](http://www.meetup.com/Boulder-Meshnet/).
