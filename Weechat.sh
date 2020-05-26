/set irc.server_default.nicks "user1,user2,user3,user4,user5,user6,user7,user,8,user9,user10,user11,user12,user13,user14,user15,user16,user17,user18,user19,user20"
/set irc.server_default.addresses "172.24.4.200"
/set irc.server_default.autojoin "172.24.4.200"






weechat -t irc://172.24.4.200/#hola
weechat -t irc://172.24.4.200
weechat -t irc://172.24.4.200/#hola
weechat -t irc://davide@172.24.4.200/#hola
weechat --run-command "/set irc.server_default.nicks "user1,user2,user3,user4,user5,user6,user7,user,8,user9,user10,user11,user12,user13,user14,user15,user16,user17,user18,user19,user20""
weechat irc://172.24.4.200/#hola
