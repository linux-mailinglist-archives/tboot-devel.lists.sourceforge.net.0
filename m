Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 30AC5422656
	for <lists+tboot-devel@lfdr.de>; Tue,  5 Oct 2021 14:23:59 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1mXjU8-0004cO-7S; Tue, 05 Oct 2021 12:23:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <loris.wilbert@outlook.fr>) id 1mXjTz-0004c3-Uu
 for tboot-devel@lists.sourceforge.net; Tue, 05 Oct 2021 12:23:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:In-Reply-To:References:
 Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yDZzQHP7iv3AXlbqxxmrzFbJ2ZUxlVP8vOb4RaIcUhU=; b=TDV60tnJDvWTtxP/WzFqUP8HDD
 n/d/FVf5WmCu4qO/SAmmVTvTNHpXRiiSFs8yfdnk7nGdvNbuHAPVFTGJp3hq4IDUS4z4zs36B16Zs
 MBvQr2Uf1o3x8Ezv/VqAszFzv9hG+wujPHB7Ameq49NdIdlfgyU8kuKHlGpOYqLLWAMY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=yDZzQHP7iv3AXlbqxxmrzFbJ2ZUxlVP8vOb4RaIcUhU=; b=U+yQyhaY7A/F0RumnQbQmdT35N
 +yU3p9hs+S9ee6tyj3abSxh2pB7BSDLXpvI/3mbr4nVPLvNlZbgXfFDIrJgyLZfASbKyCScEDDp/G
 waA81W19o7zGj0N3Mooee61GEjLyjQahPGJdAJuN7NNHy+AW0zAwH1t18loV80B+8bp4=;
Received: from mail-vi1eur05olkn2101.outbound.protection.outlook.com
 ([40.92.90.101] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mXjTz-006aiQ-0x
 for tboot-devel@lists.sourceforge.net; Tue, 05 Oct 2021 12:23:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FSA7+My+hH/mQg/Yedgpye3qwXZUcDoOLnSM21M0Tty/nHxZfLMeqJWQZMOd+VRoz3GZt0CanI70ksaHBVSpU7nwBBtuDJjVL8A3pqS0J4HTSzU3dX7UCwKv5COu93kaREHThXnvLKG7ipPQJqBb4rFZS8MIZG2UbzeeMbI3X5O3H2uzZ65vt86F4Hq8+pmWZV2wmbYAKvXCT6jrR/gl3t5xGIJR+W5Rqn0PKp9vesdt+YcW2uxu10s1Rjc5VS3NRgQ1ND/6GIFDitly5qOiPZ89aRifdK5yoll3pwZFwNy4GXIYt8mSi540V1/CdNp1SFqCbbhpUk3qvRe08GVbAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=yDZzQHP7iv3AXlbqxxmrzFbJ2ZUxlVP8vOb4RaIcUhU=;
 b=IW6gcp0ULSBhWqoc04Y4dxB9noGFDhco3pi6o1U7/CJt/pJZnmkJ9B9mK8LCzScjZKefR3Ayz1mM9fQCiITYFommp0OzyM5v9tsuNKN6ou485xEN/hvo5Kyc+39D///bqQ9hrQTIpzeCmLfTPIPxDj68EIoP9zDWugRP5b+z4JVGiGHAbv//uTNNibhqaGqn1K51yM9dvGXrwSf1NZcRSGpUHWC3B8b05F7wj08YvobtbR3vnZ5S7sQTQ3AG45lbZx/UVdTsFzKmDN0ZpY1zAyIogn8Ol8b/eyIZsAInZ9gsZVyMUAhU2RbTW/S+v7vPfeZBjUdArmKSIeemHRr3uw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from DB8EUR05FT065.eop-eur05.prod.protection.outlook.com
 (2a01:111:e400:fc0f::41) by
 DB8EUR05HT043.eop-eur05.prod.protection.outlook.com (2a01:111:e400:fc0f::245)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4566.14; Tue, 5 Oct
 2021 12:23:32 +0000
Received: from PA4P191MB1664.EURP191.PROD.OUTLOOK.COM (2a01:111:e400:fc0f::53)
 by DB8EUR05FT065.mail.protection.outlook.com
 (2a01:111:e400:fc0f::306) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4566.14 via Frontend
 Transport; Tue, 5 Oct 2021 12:23:32 +0000
Received: from PA4P191MB1664.EURP191.PROD.OUTLOOK.COM
 ([fe80::b047:5a71:1193:aca1]) by PA4P191MB1664.EURP191.PROD.OUTLOOK.COM
 ([fe80::b047:5a71:1193:aca1%3]) with mapi id 15.20.4566.022; Tue, 5 Oct 2021
 12:23:32 +0000
From: Loris Wilbert <loris.wilbert@outlook.fr>
To: Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>,
 "tboot-devel@lists.sourceforge.net" <tboot-devel@lists.sourceforge.net>
Thread-Topic: [tboot-devel] Issue with warm reboot
Thread-Index: AQHXrsC+dO6H7X3CTEG9GbzLtUKydquuiicAgAEpX4WACBp5gIADCS88gANUMgCABhxkFA==
Date: Tue, 5 Oct 2021 12:23:32 +0000
Message-ID: <PA4P191MB1664A2753CE295CD8C36B2289FAF9@PA4P191MB1664.EURP191.PROD.OUTLOOK.COM>
References: <PA4P191MB1664AB08B4D7E7B035C25D309FA19@PA4P191MB1664.EURP191.PROD.OUTLOOK.COM>
 <e069c86ccfbb0b0068c2244fe6835d1324f52e9b.camel@linux.intel.com>
 <PA4P191MB1664C5127164099A9989D8009FA29@PA4P191MB1664.EURP191.PROD.OUTLOOK.COM>
 <efa17770eb9ecd5d34be353793450171ab95f5a5.camel@linux.intel.com>
 <PA4P191MB1664B832D84B818805C91A3B9FA99@PA4P191MB1664.EURP191.PROD.OUTLOOK.COM>
 <5d181f239830a04d65031feded30640a00399c90.camel@linux.intel.com>
In-Reply-To: <5d181f239830a04d65031feded30640a00399c90.camel@linux.intel.com>
Accept-Language: fr-FR, en-US
Content-Language: fr-FR
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
suggested_attachment_session_id: cee73566-eab3-c57d-e579-80fc6e2bfb80
x-incomingtopheadermarker: OriginalChecksum:AE1111078052882B729B1969C87EB144DBFC862A8A1BF7C8DDA2F1BF0210DC60;
 UpperCasedChecksum:B3AB5FEA48483DFDF5A2D6D4FB10AFBD92510DBC2D30E4A6B8BE3CAD3A0DA252;
 SizeAsReceived:7358; Count:44
x-tmn: [5T2AzBN8WI/cpIBmI44UKSy3vaFVYzUw]
x-ms-publictraffictype: Email
x-incomingheadercount: 44
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: db225507-41af-419b-571a-08d987faf247
x-ms-traffictypediagnostic: DB8EUR05HT043:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: m+MZ8Qm162OTaqgntcZG4jBocniqL8sSsPKNSy5qPu361w97IiFZSiCO6lYco0tF7BnH+reAT8Uttuq7xS5qf2lKKbP2U06OiJdeQ7alUXnwb6pRb2aEEzBArvp+C7+UI4InflzR0p+UL/bYMHQFgvBijzejuJ/rPJV8D0Z+dhWevGHEL7f63SCZ5NiCGdRwofdANn9VRvA92+fdw8djSkiDD/WyINNoa+3Om0mP0k19iwgK2z/ox/pTQZOQdciUyUv+ywecf9m9+HKo2Ex0OrSjJcsVJzCKOsNthWnTtjn5E+8acFB734Q5zpifUCoWDEr3gk3mKmRe/QgFDPgllwQGMpyQNQxhdaAltf5Im7rbtF3OQT5x6e8cs2pbSksa+IHy+xNtP9E5KGXTI5El66uOhgSThdQw/bkDDqikvucXey53dscTxbpSu2SsB9zX
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: EOFuRP+4dNkC4GYu4R0VjM+m59/egg/SUFKBVahDGuUVPK9/HJyYNjNkPYfKAVyEuY/igp9pdlkI3ChlSU3vN5/eiaCgU5BEQqcva3TPBNPkB3hFg6ODugcC18UbWIg55etxZ7cqjM8ER+sdJ2oZOw==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-AuthSource: DB8EUR05FT065.eop-eur05.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: db225507-41af-419b-571a-08d987faf247
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Oct 2021 12:23:32.5672 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8EUR05HT043
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Lukasz,
 Ok I will contact Getac. Thank you for your support.
 Content analysis details:   (-0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.90.101 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.92.90.101 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [loris.wilbert[at]outlook.fr]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
X-Headers-End: 1mXjTz-006aiQ-0x
Subject: Re: [tboot-devel] Issue with warm reboot
X-BeenThere: tboot-devel@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Developer support for Trusted Boot <tboot-devel.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/tboot-devel>,
 <mailto:tboot-devel-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=tboot-devel>
List-Post: <mailto:tboot-devel@lists.sourceforge.net>
List-Help: <mailto:tboot-devel-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/tboot-devel>,
 <mailto:tboot-devel-request@lists.sourceforge.net?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1575387245295123677=="
Errors-To: tboot-devel-bounces@lists.sourceforge.net

--===============1575387245295123677==
Content-Language: fr-FR
Content-Type: multipart/alternative;
	boundary="_000_PA4P191MB1664A2753CE295CD8C36B2289FAF9PA4P191MB1664EURP_"

--_000_PA4P191MB1664A2753CE295CD8C36B2289FAF9PA4P191MB1664EURP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Lukasz,

Ok I will contact Getac.

Thank you for your support.

Loris

________________________________
De : Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>
Envoy=E9 : vendredi 1 octobre 2021 15:01
=C0 : Loris Wilbert <loris.wilbert@outlook.fr>; tboot-devel@lists.sourcefor=
ge.net <tboot-devel@lists.sourceforge.net>
Objet : Re: [tboot-devel] Issue with warm reboot

Hi Loris

I have no idea how can I help you here. Can you ask Getac if they have test=
ed X500 with Intel TXT and if it is officially supported?

Thanks,
Lukasz

-----Original Message-----
From: Loris Wilbert <loris.wilbert@outlook.fr<mailto:Loris%20Wilbert%20%3cl=
oris.wilbert@outlook.fr%3e>>
To: Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com<mailto:Lukasz%20Hawryl=
ko%20%3clukasz.hawrylko@linux.intel.com%3e>>, tboot-devel@lists.sourceforge=
.net <tboot-devel@lists.sourceforge.net<mailto:%22tboot-devel@lists.sourcef=
orge.net%22%20%3ctboot-devel@lists.sourceforge.net%3e>>
Subject: RE: [tboot-devel] Issue with warm reboot
Date: Wed, 29 Sep 2021 10:26:02 +0000

Hi Lukasz,

I have this problem with a Getac X500 G3 (CPU : Intel(R) Core(TM) i5-7440HQ=
 CPU @ 2.80GHz).

I realised the same test on another Getac X500 G3 and the same issue appear=
.

Thanks,

Loris
________________________________
De : Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>
Envoy=E9 : lundi 27 septembre 2021 13:49
=C0 : Loris Wilbert <loris.wilbert@outlook.fr>; tboot-devel@lists.sourcefor=
ge.net <tboot-devel@lists.sourceforge.net>
Objet : Re: [tboot-devel] Issue with warm reboot

On Wed, 2021-09-22 at 08:18 +0000, Loris Wilbert wrote:
> Hi Lukasz,
>
> I've attached full TBOOT logs to this mail.
>
> Thank you for you assistance.

This looks like an issue with TPM. Is it possible to replace TPM module
on the system? Did you try to run TBOOT on another system with the same
specs?

Thanks,
Lukasz






--_000_PA4P191MB1664A2753CE295CD8C36B2289FAF9PA4P191MB1664EURP_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Hi Lukasz,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Ok I will contact Getac.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Thank you for your support.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Loris</div>
<div id=3D"appendonsend"></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" co=
lor=3D"#000000" style=3D"font-size:11pt"><b>De :</b> Lukasz Hawrylko &lt;lu=
kasz.hawrylko@linux.intel.com&gt;<br>
<b>Envoy=E9 :</b> vendredi 1 octobre 2021 15:01<br>
<b>=C0 :</b> Loris Wilbert &lt;loris.wilbert@outlook.fr&gt;; tboot-devel@li=
sts.sourceforge.net &lt;tboot-devel@lists.sourceforge.net&gt;<br>
<b>Objet :</b> Re: [tboot-devel] Issue with warm reboot</font>
<div>&nbsp;</div>
</div>
<div dir=3D"ltr">
<div>Hi Loris</div>
<div><br>
</div>
<div>I have no idea how can I help you here. Can you ask Getac if they have=
 tested X500 with Intel TXT and if it is officially supported?</div>
<div><br>
</div>
<div>Thanks,</div>
<div>Lukasz</div>
<div><br>
</div>
<div>-----Original Message-----</div>
<div><b>From</b>: Loris Wilbert &lt;<a href=3D"mailto:Loris%20Wilbert%20%3c=
loris.wilbert@outlook.fr%3e">loris.wilbert@outlook.fr</a>&gt;</div>
<div><b>To</b>: Lukasz Hawrylko &lt;<a href=3D"mailto:Lukasz%20Hawrylko%20%=
3clukasz.hawrylko@linux.intel.com%3e">lukasz.hawrylko@linux.intel.com</a>&g=
t;, tboot-devel@lists.sourceforge.net &lt;<a href=3D"mailto:%22tboot-devel@=
lists.sourceforge.net%22%20%3ctboot-devel@lists.sourceforge.net%3e">tboot-d=
evel@lists.sourceforge.net</a>&gt;</div>
<div><b>Subject</b>: RE: [tboot-devel] Issue with warm reboot</div>
<div><b>Date</b>: Wed, 29 Sep 2021 10:26:02 +0000</div>
<div><br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Hi Lukasz,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
I have this problem with a Getac X500 G3 (CPU :&nbsp;<span style=3D"font-si=
ze:11.0pt; font-family:&quot;Calibri&quot;,sans-serif">Intel(R) Core(TM) i5=
-7440HQ CPU @ 2.80GHz</span>).</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
I realised the same test on another Getac X500 G3 and the same issue appear=
.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Thanks,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Loris</div>
<div id=3D"x_appendonsend"></div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>De :</b> Lukasz Hawrylko &lt;=
lukasz.hawrylko@linux.intel.com&gt;<br>
<b>Envoy=E9 :</b> lundi 27 septembre 2021 13:49<br>
<b>=C0 :</b> Loris Wilbert &lt;loris.wilbert@outlook.fr&gt;; tboot-devel@li=
sts.sourceforge.net &lt;tboot-devel@lists.sourceforge.net&gt;<br>
<b>Objet :</b> Re: [tboot-devel] Issue with warm reboot</font>
<div>&nbsp;</div>
</div>
<div class=3D"x_BodyFragment"><font size=3D"2"><span style=3D"font-size:11p=
t">
<div class=3D"x_PlainText">On Wed, 2021-09-22 at 08:18 +0000, Loris Wilbert=
 wrote:<br>
&gt; Hi Lukasz,<br>
&gt; <br>
&gt; I've attached full TBOOT logs to this mail.<br>
&gt; <br>
&gt; Thank you for you assistance.<br>
<br>
This looks like an issue with TPM. Is it possible to replace TPM module<br>
on the system? Did you try to run TBOOT on another system with the same<br>
specs?<br>
<br>
Thanks,<br>
Lukasz<br>
<br>
<br>
<br>
</div>
</span></font></div>
<div><br>
</div>
<div><br>
</div>
<div><span></span></div>
</div>
</body>
</html>

--_000_PA4P191MB1664A2753CE295CD8C36B2289FAF9PA4P191MB1664EURP_--


--===============1575387245295123677==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============1575387245295123677==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel

--===============1575387245295123677==--

