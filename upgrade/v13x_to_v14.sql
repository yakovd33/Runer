CREATE TABLE `timezone` (
  `difference` varchar(4) NOT NULL default '0',
  `timezone` text NOT NULL,
  PRIMARY KEY  (`difference`)
) ENGINE=MyISAM;

INSERT INTO `timezone` VALUES ('-12', '(GMT - 12:00 hours) Enitwetok, Kwajalien');
INSERT INTO `timezone` VALUES ('-11', '(GMT - 11:00 hours) Midway Island, Samoa');
INSERT INTO `timezone` VALUES ('-10', '(GMT - 10:00 hours) Hawaii');
INSERT INTO `timezone` VALUES ('-9', '(GMT - 9:00 hours) Alaska');
INSERT INTO `timezone` VALUES ('-8', '(GMT - 8:00 hours) Pacific Time (US &amp; Canada)');
INSERT INTO `timezone` VALUES ('-7', '(GMT - 7:00 hours) Mountain Time (US &amp; Canada)');
INSERT INTO `timezone` VALUES ('-6', '(GMT - 6:00 hours) Central Time (US &amp; Canada), Mexico City');
INSERT INTO `timezone` VALUES ('-5', '(GMT - 5:00 hours) Eastern Time (US &amp; Canada), Bogota, Lima');
INSERT INTO `timezone` VALUES ('-4', '(GMT - 4:00 hours) Atlantic Time (Canada), Caracas, La Paz');
INSERT INTO `timezone` VALUES ('-3.5', '(GMT - 3:30 hours) Newfoundland');
INSERT INTO `timezone` VALUES ('-3', '(GMT - 3:00 hours) Brazil, Buenos Aires, Falkland Is.');
INSERT INTO `timezone` VALUES ('-2', '(GMT - 2:00 hours) Mid-Atlantic, Ascention Is., St Helena');
INSERT INTO `timezone` VALUES ('-1', '(GMT - 1:00 hours) Azores, Cape Verde Islands');
INSERT INTO `timezone` VALUES ('0', '(GMT) Casablanca, Dublin, London, Lisbon, Monrovia');
INSERT INTO `timezone` VALUES ('1', '(GMT + 1:00 hours) Brussels, Copenhagen, Madrid, Paris');
INSERT INTO `timezone` VALUES ('2', '(GMT + 2:00 hours) Kaliningrad, South Africa');
INSERT INTO `timezone` VALUES ('3', '(GMT + 3:00 hours) Baghdad, Riyadh, Moscow, Nairobi');
INSERT INTO `timezone` VALUES ('3.5', '(GMT + 3:30 hours) Tehran');
INSERT INTO `timezone` VALUES ('4', '(GMT + 4:00 hours) Abu Dhabi, Baku, Muscat, Tbilisi');
INSERT INTO `timezone` VALUES ('4.5', '(GMT + 4:30 hours) Kabul');
INSERT INTO `timezone` VALUES ('5', '(GMT + 5:00 hours) Ekaterinburg, Karachi, Tashkent');
INSERT INTO `timezone` VALUES ('5.5', '(GMT + 5:30 hours) Bombay, Calcutta, Madras, New Delhi');
INSERT INTO `timezone` VALUES ('6', '(GMT + 6:00 hours) Almaty, Colomba, Dhakra');
INSERT INTO `timezone` VALUES ('7', '(GMT + 7:00 hours) Bangkok, Hanoi, Jakarta');
INSERT INTO `timezone` VALUES ('8', '(GMT + 8:00 hours) Hong Kong, Perth, Singapore, Taipei');
INSERT INTO `timezone` VALUES ('9', '(GMT + 9:00 hours) Osaka, Sapporo, Seoul, Tokyo, Yakutsk');
INSERT INTO `timezone` VALUES ('9.5', '(GMT + 9:30 hours) Adelaide, Darwin');
INSERT INTO `timezone` VALUES ('10', '(GMT + 10:00 hours) Melbourne, Papua New Guinea, Sydney');
INSERT INTO `timezone` VALUES ('11', '(GMT + 11:00 hours) Magadan, New Caledonia, Solomon Is.');
INSERT INTO `timezone` VALUES ('12', '(GMT + 12:00 hours) Auckland, Fiji, Marshall Island');

ALTER TABLE `users` ADD `time_offset` VARCHAR( 4 ) DEFAULT '0' NOT NULL;

DROP TABLE `countries`;

CREATE TABLE `countries` (
  id int(10) unsigned NOT NULL auto_increment,
  name varchar(50) default NULL,
  flagpic varchar(50) default NULL,
  domain char(3) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM;

INSERT INTO `countries` VALUES (1, 'Sweden', 'se.png', 'SE');
INSERT INTO `countries` VALUES (2, 'United States of America', 'us.png', 'US');
INSERT INTO `countries` VALUES (3, 'American Samoa', 'as.png', 'AS');
INSERT INTO `countries` VALUES (4, 'Finland', 'fi.png', 'FI');
INSERT INTO `countries` VALUES (5, 'Canada', 'ca.png', 'CA');
INSERT INTO `countries` VALUES (6, 'France', 'fr.png', 'FR');
INSERT INTO `countries` VALUES (7, 'Germany', 'de.png', 'DE');
INSERT INTO `countries` VALUES (8, 'China', 'cn.png', 'CN');
INSERT INTO `countries` VALUES (9, 'Italy', 'it.png', 'IT');
INSERT INTO `countries` VALUES (10, 'Denmark', 'dk.png', 'DK');
INSERT INTO `countries` VALUES (11, 'Norway', 'no.png', 'NO');
INSERT INTO `countries` VALUES (12, 'United Kingdom', 'gb.png', 'GB');
INSERT INTO `countries` VALUES (13, 'Ireland', 'ie.png', 'IE');
INSERT INTO `countries` VALUES (14, 'Poland', 'pl.png', 'PL');
INSERT INTO `countries` VALUES (15, 'Netherlands', 'nl.png', 'NL');
INSERT INTO `countries` VALUES (16, 'Belgium', 'be.png', 'BE');
INSERT INTO `countries` VALUES (17, 'Japan', 'jp.png', 'JP');
INSERT INTO `countries` VALUES (18, 'Brazil', 'br.png', 'BR');
INSERT INTO `countries` VALUES (19, 'Argentina', 'ar.png', 'AR');
INSERT INTO `countries` VALUES (20, 'Australia', 'au.png', 'AU');
INSERT INTO `countries` VALUES (21, 'New Zealand', 'nz.png', 'NZ');
INSERT INTO `countries` VALUES (22, 'United Arab Emirates', 'ae.png', 'AE');
INSERT INTO `countries` VALUES (23, 'Spain', 'es.png', 'ES');
INSERT INTO `countries` VALUES (24, 'Portugal', 'pt.png', 'PT');
INSERT INTO `countries` VALUES (25, 'Mexico', 'mx.png', 'MX');
INSERT INTO `countries` VALUES (26, 'Singapore', 'sg.png', 'SG');
INSERT INTO `countries` VALUES (27, 'Anguilla', 'ai.png', 'AI');
INSERT INTO `countries` VALUES (28, 'Armenia', 'am.png', 'AM');
INSERT INTO `countries` VALUES (29, 'South Africa', 'za.png', 'ZA');
INSERT INTO `countries` VALUES (30, 'South Korea', 'kr.png', 'KR');
INSERT INTO `countries` VALUES (31, 'Jamaica', 'jm.png', 'JM');
INSERT INTO `countries` VALUES (32, 'Luxembourg', 'lu.png', 'LU');
INSERT INTO `countries` VALUES (33, 'Hong Kong', 'hk.png', 'HK');
INSERT INTO `countries` VALUES (34, 'Belize', 'bz.png', 'BZ');
INSERT INTO `countries` VALUES (35, 'Algeria', 'dz.png', 'DZ');
INSERT INTO `countries` VALUES (36, 'Angola', 'ao.png', 'AO');
INSERT INTO `countries` VALUES (37, 'Austria', 'at.png', 'AT');
INSERT INTO `countries` VALUES (38, 'Aruba', 'aw.png', 'AW');
INSERT INTO `countries` VALUES (39, 'Samoa', 'ws.png', 'WS');
INSERT INTO `countries` VALUES (40, 'Malaysia', 'my.png', 'MY');
INSERT INTO `countries` VALUES (41, 'Dominican Republic', 'do.png', 'DO');
INSERT INTO `countries` VALUES (42, 'Greece', 'gr.png', 'GR');
INSERT INTO `countries` VALUES (43, 'Guatemala', 'gt.png', 'GT');
INSERT INTO `countries` VALUES (44, 'Israel', 'il.png', 'IL');
INSERT INTO `countries` VALUES (45, 'Pakistan', 'pk.png', 'PK');
INSERT INTO `countries` VALUES (46, 'Czech Republic', 'cz.png', 'CZ');
INSERT INTO `countries` VALUES (47, 'Serbia and Montenegro', 'cs.png', 'CS');
INSERT INTO `countries` VALUES (48, 'Seychelles', 'sc.png', 'SC');
INSERT INTO `countries` VALUES (49, 'Taiwan', 'tw.png', 'TW');
INSERT INTO `countries` VALUES (50, 'Puerto Rico', 'pr.png', 'PR');
INSERT INTO `countries` VALUES (51, 'Chile', 'cl.png', 'CL');
INSERT INTO `countries` VALUES (52, 'Cuba', 'cu.png', 'CU');
INSERT INTO `countries` VALUES (53, 'Congo', 'cg.png', 'CG');
INSERT INTO `countries` VALUES (54, 'Afghanistan', 'af.png', 'AF');
INSERT INTO `countries` VALUES (55, 'Turkey', 'tr.png', 'TR');
INSERT INTO `countries` VALUES (56, 'Uzbekistan', 'uz.png', 'UZ');
INSERT INTO `countries` VALUES (57, 'Switzerland', 'ch.png', 'CH');
INSERT INTO `countries` VALUES (58, 'Kiribati', 'ki.gif', 'KI');
INSERT INTO `countries` VALUES (59, 'Philippines', 'ph.png', 'PH');
INSERT INTO `countries` VALUES (60, 'Burkina Faso', 'bf.png', 'BF');
INSERT INTO `countries` VALUES (61, 'Nigeria', 'ng.png', 'NG');
INSERT INTO `countries` VALUES (62, 'Iceland', 'is.png', 'IS');
INSERT INTO `countries` VALUES (63, 'Nauru', 'nr.png', 'NR');
INSERT INTO `countries` VALUES (64, 'Slovenia', 'si.png', 'SI');
INSERT INTO `countries` VALUES (65, 'Albania', 'al.png', 'AL');
INSERT INTO `countries` VALUES (66, 'Turkmenistan', 'tm.png', 'TM');
INSERT INTO `countries` VALUES (67, 'Bosnia and Herzegovina', 'ba.png', 'BA');
INSERT INTO `countries` VALUES (68, 'Andorra', 'ad.png', 'AD');
INSERT INTO `countries` VALUES (69, 'Lithuania', 'lt.png', 'LT');
INSERT INTO `countries` VALUES (70, 'India', 'in.png', 'IN');
INSERT INTO `countries` VALUES (71, 'Netherlands Antilles', 'an.png', 'AN');
INSERT INTO `countries` VALUES (72, 'Ukraine', 'ua.png', 'UA');
INSERT INTO `countries` VALUES (73, 'Venezuela', 've.png', 'VE');
INSERT INTO `countries` VALUES (74, 'Hungary', 'hu.png', 'HU');
INSERT INTO `countries` VALUES (75, 'Romania', 'ro.png', 'RO');
INSERT INTO `countries` VALUES (76, 'Vanuatu', 'vu.png', 'VU');
INSERT INTO `countries` VALUES (77, 'Viet Nam', 'vn.png', 'VN');
INSERT INTO `countries` VALUES (78, 'Trinidad & Tobago', 'tt.png', 'TT');
INSERT INTO `countries` VALUES (79, 'Honduras', 'hn.png', 'HN');
INSERT INTO `countries` VALUES (80, 'Kyrgyzstan', 'kg.png', 'KG');
INSERT INTO `countries` VALUES (81, 'Ecuador', 'ec.png', 'EC');
INSERT INTO `countries` VALUES (82, 'Bahamas', 'bs.png', 'BS');
INSERT INTO `countries` VALUES (83, 'Peru', 'pe.png', 'PE');
INSERT INTO `countries` VALUES (84, 'Cambodia', 'kh.png', 'KH');
INSERT INTO `countries` VALUES (85, 'Barbados', 'bb.png', 'BB');
INSERT INTO `countries` VALUES (86, 'Bangladesh', 'bd.png', 'BD');
INSERT INTO `countries` VALUES (87, 'Laos', 'la.png', 'LA');
INSERT INTO `countries` VALUES (88, 'Uruguay', 'uy.png', 'UY');
INSERT INTO `countries` VALUES (89, 'Antigua Barbuda', 'ag.png', 'AG');
INSERT INTO `countries` VALUES (90, 'Paraguay', 'py.png', 'PY');
INSERT INTO `countries` VALUES (91, 'Antarctica', 'aq.png', 'AQ');
INSERT INTO `countries` VALUES (92, 'Russian Federation', 'ru.png', 'RU');
INSERT INTO `countries` VALUES (93, 'Thailand', 'th.png', 'TH');
INSERT INTO `countries` VALUES (94, 'Senegal', 'sn.png', 'SN');
INSERT INTO `countries` VALUES (95, 'Togo', 'tg.png', 'TG');
INSERT INTO `countries` VALUES (96, 'North Korea', 'kp.png', 'KP');
INSERT INTO `countries` VALUES (97, 'Croatia', 'hr.png', 'HR');
INSERT INTO `countries` VALUES (98, 'Estonia', 'ee.png', 'EE');
INSERT INTO `countries` VALUES (99, 'Colombia', 'co.png', 'CO');
INSERT INTO `countries` VALUES (100, 'unknown', 'unknown.gif', 'AA');
INSERT INTO `countries` VALUES (101, 'Organization', 'org.png', 'ORG');
INSERT INTO `countries` VALUES (102, 'Aland Islands', 'ax.png', 'AX');
INSERT INTO `countries` VALUES (103, 'Azerbaijan', 'az.png', 'AZ');
INSERT INTO `countries` VALUES (104, 'Bulgaria', 'bg.png', 'BG');
INSERT INTO `countries` VALUES (105, 'Bahrain', 'bh.png', 'BH');
INSERT INTO `countries` VALUES (106, 'Burundi', 'bi.png', 'BI');
INSERT INTO `countries` VALUES (107, 'Benin', 'bj.png', 'BJ');
INSERT INTO `countries` VALUES (108, 'Bermuda', 'bm.png', 'BM');
INSERT INTO `countries` VALUES (109, 'Brunei Darussalam', 'bn.png', 'BN');
INSERT INTO `countries` VALUES (110, 'Bolivia', 'bo.png', 'BO');
INSERT INTO `countries` VALUES (111, 'Bhutan', 'bt.png', 'BT');
INSERT INTO `countries` VALUES (112, 'Bouvet Island', 'bv.png', 'BV');
INSERT INTO `countries` VALUES (113, 'Botswana', 'bw.png', 'BW');
INSERT INTO `countries` VALUES (114, 'Belarus', 'by.png', 'BY');
INSERT INTO `countries` VALUES (115, 'Cocos (Keeling) Islands', 'cc.png', 'CC');
INSERT INTO `countries` VALUES (116, 'Congo, the Democratic Republic of the', 'cd.png', 'CD');
INSERT INTO `countries` VALUES (117, 'Central African Republic', 'cf.png', 'CF');
INSERT INTO `countries` VALUES (118, 'Ivory Coast', 'ci.png', 'CI');
INSERT INTO `countries` VALUES (119, 'Cook Islands', 'ck.png', 'CK');
INSERT INTO `countries` VALUES (120, 'Cameroon', 'cm.png', 'CM');
INSERT INTO `countries` VALUES (121, 'Costa Rica', 'cr.png', 'CR');
INSERT INTO `countries` VALUES (122, 'Cape Verde', 'cv.png', 'CV');
INSERT INTO `countries` VALUES (123, 'Christmas Island', 'cx.png', 'CX');
INSERT INTO `countries` VALUES (124, 'Cyprus', 'cy.png', 'CY');
INSERT INTO `countries` VALUES (125, 'Djibouti', 'dj.png', 'DJ');
INSERT INTO `countries` VALUES (126, 'Dominica', 'dm.png', 'DM');
INSERT INTO `countries` VALUES (127, 'Egypt', 'eg.png', 'EG');
INSERT INTO `countries` VALUES (128, 'Western Sahara', 'eh.png', 'EH');
INSERT INTO `countries` VALUES (129, 'Eritrea', 'er.png', 'ER');
INSERT INTO `countries` VALUES (130, 'Ethiopia', 'et.png', 'ET');
INSERT INTO `countries` VALUES (131, 'Fiji', 'fj.png', 'FJ');
INSERT INTO `countries` VALUES (132, 'Falkland Islands (Malvinas)', 'fk.png', 'FK');
INSERT INTO `countries` VALUES (133, 'Micronesia, Federated States of', 'fm.png', 'FM');
INSERT INTO `countries` VALUES (134, 'Faroe Islands', 'fo.png', 'FO');
INSERT INTO `countries` VALUES (135, 'Gabon', 'ga.png', 'GA');
INSERT INTO `countries` VALUES (136, 'Grenada', 'gd.png', 'GD');
INSERT INTO `countries` VALUES (137, 'Georgia', 'ge.png', 'GE');
INSERT INTO `countries` VALUES (138, 'French Guiana', 'gf.png', 'GF');
INSERT INTO `countries` VALUES (139, 'Guernsey', 'gg.png', 'GG');
INSERT INTO `countries` VALUES (140, 'Ghana', 'gh.png', 'GH');
INSERT INTO `countries` VALUES (141, 'Gibraltar', 'gi.png', 'GI');
INSERT INTO `countries` VALUES (142, 'Greenland', 'gl.png', 'GL');
INSERT INTO `countries` VALUES (143, 'Gambia', 'gm.png', 'GM');
INSERT INTO `countries` VALUES (144, 'Guinea', 'gn.png', 'GN');
INSERT INTO `countries` VALUES (145, 'Guadeloupe', 'gp.png', 'GP');
INSERT INTO `countries` VALUES (146, 'Equatorial Guinea', 'gq.png', 'GQ');
INSERT INTO `countries` VALUES (147, 'South Georgia and the South Sandwich Islands', 'gs.png', 'GS');
INSERT INTO `countries` VALUES (148, 'Guam', 'gu.png', 'GU');
INSERT INTO `countries` VALUES (149, 'Guinea-Bissau', 'gw.png', 'GW');
INSERT INTO `countries` VALUES (150, 'Guyana', 'gy.png', 'GY');
INSERT INTO `countries` VALUES (151, 'Heard Island and McDonald Islands', 'hm.png', 'HM');
INSERT INTO `countries` VALUES (152, 'Haiti', 'ht.png', 'HT');
INSERT INTO `countries` VALUES (153, 'Indonesia', 'id.png', 'ID');
INSERT INTO `countries` VALUES (154, 'Isle of Man', 'im.png', 'IM');
INSERT INTO `countries` VALUES (155, 'British Indian Ocean Territory', 'io.png', 'IO');
INSERT INTO `countries` VALUES (156, 'Jersey', 'je.png', 'JE');
INSERT INTO `countries` VALUES (157, 'Jordan', 'jo.png', 'JO');
INSERT INTO `countries` VALUES (158, 'Kenya', 'ke.png', 'KE');
INSERT INTO `countries` VALUES (159, 'Comoros', 'km.png', 'KM');
INSERT INTO `countries` VALUES (160, 'Saint Kitts and Nevis', 'kn.png', 'KN');
INSERT INTO `countries` VALUES (161, 'Kuwait', 'kw.png', 'KW');
INSERT INTO `countries` VALUES (162, 'Cayman Islands', 'ky.png', 'KY');
INSERT INTO `countries` VALUES (163, 'Kazahstan', 'kz.png', 'KZ');
INSERT INTO `countries` VALUES (164, 'Lebanon', 'lb.png', 'LB');
INSERT INTO `countries` VALUES (165, 'Saint Lucia', 'lc.png', 'LC');
INSERT INTO `countries` VALUES (166, 'Liechtenstein', 'li.png', 'LI');
INSERT INTO `countries` VALUES (167, 'Sri Lanka', 'lk.png', 'LK');
INSERT INTO `countries` VALUES (168, 'Liberia', 'lr.png', 'LR');
INSERT INTO `countries` VALUES (169, 'Lesotho', 'ls.png', 'LS');
INSERT INTO `countries` VALUES (170, 'Latvia', 'lv.png', 'LV');
INSERT INTO `countries` VALUES (171, 'Libyan Arab Jamahiriya', 'ly.png', 'LY');
INSERT INTO `countries` VALUES (172, 'Marocco', 'ma.png', 'MA');
INSERT INTO `countries` VALUES (173, 'Monaco', 'mc.png', 'MC');
INSERT INTO `countries` VALUES (174, 'Moldova, Republic of', 'md.png', 'MD');
INSERT INTO `countries` VALUES (175, 'Madagascar', 'mg.png', 'MG');
INSERT INTO `countries` VALUES (176, 'Marshall Islands', 'mh.png', 'MH');
INSERT INTO `countries` VALUES (177, 'Macedonia, the former Yugoslav Republic of', 'mk.png', 'MK');
INSERT INTO `countries` VALUES (178, 'Mali', 'ml.png', 'ML');
INSERT INTO `countries` VALUES (179, 'Myanmar', 'mm.png', 'MM');
INSERT INTO `countries` VALUES (180, 'Mongolia', 'mn.png', 'MN');
INSERT INTO `countries` VALUES (181, 'Macao', 'mo.png', 'MO');
INSERT INTO `countries` VALUES (182, 'Northern Mariana Islands', 'mp.png', 'MP');
INSERT INTO `countries` VALUES (183, 'Martinique', 'mq.png', 'MQ');
INSERT INTO `countries` VALUES (184, 'Mauritania', 'mr.png', 'MR');
INSERT INTO `countries` VALUES (185, 'Montserrat', 'ms.png', 'MS');
INSERT INTO `countries` VALUES (186, 'Malta', 'mt.png', 'MT');
INSERT INTO `countries` VALUES (187, 'Mauritius', 'mu.png', 'MU');
INSERT INTO `countries` VALUES (188, 'Maldives', 'mv.png', 'MV');
INSERT INTO `countries` VALUES (189, 'Malawi', 'mw.png', 'MW');
INSERT INTO `countries` VALUES (190, 'Mozambique', 'mz.png', 'MZ');
INSERT INTO `countries` VALUES (191, 'Namibia', 'na.png', 'NA');
INSERT INTO `countries` VALUES (192, 'New Caledonia', 'nc.png', 'NC');
INSERT INTO `countries` VALUES (193, 'Niger', 'ne.png', 'NE');
INSERT INTO `countries` VALUES (194, 'Norfolk Island', 'nf.png', 'NF');
INSERT INTO `countries` VALUES (195, 'Nicaragua', 'ni.png', 'NI');
INSERT INTO `countries` VALUES (196, 'Nepal', 'np.png', 'NP');
INSERT INTO `countries` VALUES (197, 'Niue', 'nu.png', 'NU');
INSERT INTO `countries` VALUES (198, 'Oman', 'om.png', 'OM');
INSERT INTO `countries` VALUES (199, 'Panama', 'pa.png', 'PA');
INSERT INTO `countries` VALUES (200, 'French Polynesia', 'pf.png', 'PF');
INSERT INTO `countries` VALUES (201, 'Papua New Guinea', 'pg.png', 'PG');
INSERT INTO `countries` VALUES (202, 'Saint Pierre and Miquelon', 'pm.png', 'PM');
INSERT INTO `countries` VALUES (203, 'Pitcairn', 'pn.png', 'PN');
INSERT INTO `countries` VALUES (204, 'Palestinian Territory, Occupied', 'ps.png', 'PS');
INSERT INTO `countries` VALUES (205, 'Palau', 'pw.png', 'PW');
INSERT INTO `countries` VALUES (206, 'Qatar', 'qa.png', 'QA');
INSERT INTO `countries` VALUES (207, 'Reunion', 're.png', 'RE');
INSERT INTO `countries` VALUES (208, 'Rwanda', 'rw.png', 'RW');
INSERT INTO `countries` VALUES (209, 'Saudi Arabia', 'sa.png', 'SA');
INSERT INTO `countries` VALUES (210, 'Solomon Islands', 'sb.png', 'SB');
INSERT INTO `countries` VALUES (211, 'Sudan', 'sd.png', 'SD');
INSERT INTO `countries` VALUES (212, 'Saint Helena', 'sh.png', 'SH');
INSERT INTO `countries` VALUES (213, 'Svalbard and Jan Mayen', 'sj.png', 'SJ');
INSERT INTO `countries` VALUES (214, 'Slovakia', 'sk.png', 'SK');
INSERT INTO `countries` VALUES (215, 'Sierra Leone', 'sl.png', 'SL');
INSERT INTO `countries` VALUES (216, 'San Marino', 'sm.png', 'SM');
INSERT INTO `countries` VALUES (217, 'Somalia', 'so.png', 'SO');
INSERT INTO `countries` VALUES (218, 'Suriname', 'sr.png', 'SR');
INSERT INTO `countries` VALUES (219, 'Sao Tome and Principe', 'st.png', 'ST');
INSERT INTO `countries` VALUES (220, 'El Salvador', 'sv.png', 'SV');
INSERT INTO `countries` VALUES (221, 'Syrian Arab Republic', 'sy.png', 'SY');
INSERT INTO `countries` VALUES (222, 'Swaziland', 'sz.png', 'SZ');
INSERT INTO `countries` VALUES (223, 'Turks and Caicos Islands', 'tc.png', 'TC');
INSERT INTO `countries` VALUES (224, 'Chad', 'td.png', 'TD');
INSERT INTO `countries` VALUES (225, 'French Southern Territories', 'tf.png', 'TF');
INSERT INTO `countries` VALUES (226, 'Tajikistan', 'tj.png', 'TJ');
INSERT INTO `countries` VALUES (227, 'Tokelau', 'tk.png', 'TK');
INSERT INTO `countries` VALUES (228, 'Timor-Leste', 'tl.png', 'TL');
INSERT INTO `countries` VALUES (229, 'Tunisia', 'tn.png', 'TN');
INSERT INTO `countries` VALUES (230, 'Tonga', 'to.png', 'TO');
INSERT INTO `countries` VALUES (231, 'Tuvalu', 'tv.png', 'TV');
INSERT INTO `countries` VALUES (232, 'Tanzania, United Republic of', 'tz.png', 'TZ');
INSERT INTO `countries` VALUES (233, 'Uganda', 'ug.png', 'UG');
INSERT INTO `countries` VALUES (234, 'United States Minor Outlying Islands', 'um.png', 'UM');
INSERT INTO `countries` VALUES (235, 'Holy See (Vatican City State)', 'va.png', 'VA');
INSERT INTO `countries` VALUES (236, 'Saint Vincent and the Grenadines', 'vc.png', 'VC');
INSERT INTO `countries` VALUES (237, 'Virgin Islands, British', 'vg.png', 'VG');
INSERT INTO `countries` VALUES (238, 'Wallis and Futuna', 'wf.png', 'WF');
INSERT INTO `countries` VALUES (239, 'Yemen', 'ye.png', 'YE');
INSERT INTO `countries` VALUES (240, 'Mayotte', 'yt.png', 'YT');
INSERT INTO `countries` VALUES (241, 'Zambia', 'zm.png', 'ZM');
INSERT INTO `countries` VALUES (242, 'Zimbabwe', 'zw.png', 'ZW');
INSERT INTO `countries` VALUES (243, 'Iraq', 'iq.png', 'IQ');
INSERT INTO `countries` VALUES (244, 'Iran, Islamic Republic of', 'ir.png', 'IR');

UPDATE `users` SET `flag` = 47 WHERE `flag` = 38;
UPDATE `users` SET `flag` = 92 WHERE `flag` = 3;


ALTER TABLE `users` ADD INDEX ( `id_level` ), ADD INDEX ( `pid` ), ADD INDEX ( `cip` ); 

ALTER TABLE `peers` ADD INDEX ( `pid` ), ADD INDEX ( `ip` ); 

ALTER TABLE `namemap` ADD INDEX ( `filename` ), ADD INDEX ( `category` ), ADD INDEX ( `uploader` ); 

ALTER TABLE `ratings` ADD INDEX ( `infohash` ); 

ALTER TABLE `forums` ADD INDEX ( `sort` ); 

ALTER TABLE `messages` ADD INDEX ( `sender` ); 

ALTER TABLE `poll_voters` ADD INDEX ( `pid` ); 

ALTER TABLE `readposts` DROP INDEX `userid`, ADD INDEX ( `userid` );

ALTER TABLE `users_level` ADD INDEX ( `id_level` ); 
