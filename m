Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4521E4130A6
	for <lists+tboot-devel@lfdr.de>; Tue, 21 Sep 2021 11:17:58 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1mSbuN-0004Wl-Of; Tue, 21 Sep 2021 09:17:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <loris.wilbert@outlook.fr>) id 1mSbuL-0004We-KI
 for tboot-devel@lists.sourceforge.net; Tue, 21 Sep 2021 09:17:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VZrE1YO9aQ45Sb1p+fWkyVhqzzNuZ25GDpo95pmsuCI=; b=TNFTwVdORUH8WoU7EgiRMJiNIm
 KbobhpIx7k0v+7oQR3SPnrNoTicyKwWePOsCX0AxX9fv44TZx0Cjus5fPxVA9u/geOvnk9KCWj/LC
 OH2CVBlDCuop0x2YfGxvOb12l383PsWH6/haF6i+Q5xfgsnIWq6GmY1S8eb5qSWGaEXQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Message-ID:Date:Subject:To:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=VZrE1YO9aQ45Sb1p+fWkyVhqzzNuZ25GDpo95pmsuCI=; b=H
 ZDJe5NSAyJxvDUNCNKF7fdsR10nUxczCZ4iCYqUvauDFKiR9wybtfEaGpAuYHbQkUtE/IfzsuNDMw
 WkMjXKdizLMxfW7OMUeh3i3ZRTzoOD4m04rNfPE/NsyoQKW2xc0JgfypkNrXAjEVkTJBFvlohKMpl
 fSRBP4feFhZ5IkHw=;
Received: from mail-oln040092074109.outbound.protection.outlook.com
 ([40.92.74.109] helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mSbuK-0000uC-HX
 for tboot-devel@lists.sourceforge.net; Tue, 21 Sep 2021 09:17:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=d57Hz5G9rVzp7z4ZTrPPZ//kpmOAW6A5l7ytU0m9YvZRKyrhxx0hNW9Uy+sNHK/Ye3XIx+91frleqmbSbfp9siBzboWmZ2tWpnMqFzPRfUmQX+XsnFgtEvV7A1m4JDzush4TL4mksuPrT6jm+Hv+/zC4wbGduC11+jRJeQ9wZJ3eF4kJUARnnxY9Aet21DrRrBqBCgZS2bpY+Pkhm5F2X4qc1U60Ss0WtoTcNhssN7UEkDoJAlMHTLtsVkCrg86ZxjZa0Po7L6qQrZOAMLz3JtnEFXzR7FWpNIVZJbT2Nl4NjS6pNQ+RBjSL/8QxJNFcE4rxV6UDR8WJdKm6WaQC8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=VZrE1YO9aQ45Sb1p+fWkyVhqzzNuZ25GDpo95pmsuCI=;
 b=iFZgyb0UB27D76gY66/sUrHp2yapzFD1FcNU6+cR+bjNQkp/wQIsEKXf+02d16h5xhqx7bUuD3JPTWKEc1SIHFYUUqCtbSww4HmR8b1N0q9LDYMyHjO5B3KZVo0zgw4KVHq4NLKDzf/iPu9n2KNDNANOFh2L9VDs3pNEmtxDp+Od1ssJfNNlTD6ZuX2O3D/gODgsbaU90mzT+hDDmwBhjsWtLcdD3nSUfwCNXYjd5TQBdeuxmxwVh1We4/C6abCMKqLNmGMim+ZXJoMXxDA0eRa63cwNyH8Dv4svv8hBKVjpwjc5nLnozcg52n4HzmTlH1TMnvnIzfdhTPRleT6EcA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from HE1EUR04FT030.eop-eur04.prod.protection.outlook.com
 (2a01:111:e400:7e0d::51) by
 HE1EUR04HT081.eop-eur04.prod.protection.outlook.com (2a01:111:e400:7e0d::222)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4523.14; Tue, 21 Sep
 2021 08:53:02 +0000
Received: from PA4P191MB1664.EURP191.PROD.OUTLOOK.COM (2a01:111:e400:7e0d::48)
 by HE1EUR04FT030.mail.protection.outlook.com
 (2a01:111:e400:7e0d::289) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4523.14 via Frontend
 Transport; Tue, 21 Sep 2021 08:53:02 +0000
Received: from PA4P191MB1664.EURP191.PROD.OUTLOOK.COM
 ([fe80::b047:5a71:1193:aca1]) by PA4P191MB1664.EURP191.PROD.OUTLOOK.COM
 ([fe80::b047:5a71:1193:aca1%3]) with mapi id 15.20.4523.018; Tue, 21 Sep 2021
 08:53:02 +0000
From: Loris Wilbert <loris.wilbert@outlook.fr>
To: "tboot-devel@lists.sourceforge.net" <tboot-devel@lists.sourceforge.net>
Thread-Topic: Issue with warm reboot
Thread-Index: AQHXrsC+dO6H7X3CTEG9GbzLtUKydg==
Date: Tue, 21 Sep 2021 08:53:02 +0000
Message-ID: <PA4P191MB1664AB08B4D7E7B035C25D309FA19@PA4P191MB1664.EURP191.PROD.OUTLOOK.COM>
Accept-Language: fr-FR, en-US
Content-Language: fr-FR
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
suggested_attachment_session_id: 83701cae-8740-c201-f693-276553011d6f
x-incomingtopheadermarker: OriginalChecksum:2D6A0FA1C408FB4F11DA6A200E3DB78D1918D085C975C8C2946FCF6C601B1309;
 UpperCasedChecksum:DF5AF1247C5202A1BA508D64C67176179799082638C8EDF07EB57920AF185A8B;
 SizeAsReceived:6698; Count:42
x-tmn: [LACNtJ5muVR/n0hw1V0zN4ijz+a5BfGg]
x-ms-publictraffictype: Email
x-incomingheadercount: 42
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: e544a6d6-c101-40a9-e384-08d97cdd386f
x-ms-traffictypediagnostic: HE1EUR04HT081:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7cGcL2JOk0Hfy1T1zKEjx7IEgecyUSbXYPuquM1+Imt9jShAWO1OpVY1MgskSieX18jvNHaeJrQ8dOx4WUD1JAoTKjBYS0r8xPK0Za9kWemeQ0lKTSC0YfvbTvwoXDpUYMXnlhmKGmEe28I74JrnjxS2a2/+4rEt2cQk/CqXrdWTv1/urrR7U4yugGoLPr0gW1iX4zWJhNvJSfjUDLV9V76La8I4ap4ks4ZQ3Fd1SMqw9Zb1bVm3Q3VhC5p6uUhBWqRoUBMZbC7lMcGR8A7y1CD3szuLduIto5RPLabvL+vAhQpT6foY29wkovZOpYOfiSX+PM354s8oerl5He9U2Ls+fhJMpGEM0OoDH302lJihjAHaLZWwn5SIN9WUi63owkidTI4jb0MTX/6+ebyqz/XCYju/c+q8CL0odAeFyQVvZHmKvwmECeIA+cRsV0wu
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: qduiOIx9jyaiujHzhOg2rKi3U4/emICLbFiOn82DqB7Ca+vYh0ErDW2ubhFZrCPAboi4mQL4IskdHerEb7QEQnsT1G+kxriymc0tfLZ6ddp6II/a9ZQoDgwYH6YyO1UsVIJs1LcOarGF6szTllsx5g==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-AuthSource: HE1EUR04FT030.eop-eur04.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: e544a6d6-c101-40a9-e384-08d97cdd386f
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Sep 2021 08:53:02.5790 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1EUR04HT081
X-OriginatorOrg: outlook.com
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello, I'm having a problem about warm reboot and I don't
 have this issue with a cold reboot. TBOOT: TPM: write cmd timeout TBOOT: TPM:
 Create return value = 00000101 TBOOT: failed to seal data 
 Content analysis details:   (-0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.74.109 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.92.74.109 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [loris.wilbert[at]outlook.fr]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
X-Headers-End: 1mSbuK-0000uC-HX
Subject: [tboot-devel] Issue with warm reboot
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
Content-Type: multipart/mixed; boundary="===============1851818256323687936=="
Errors-To: tboot-devel-bounces@lists.sourceforge.net

--===============1851818256323687936==
Content-Language: fr-FR
Content-Type: multipart/alternative;
	boundary="_000_PA4P191MB1664AB08B4D7E7B035C25D309FA19PA4P191MB1664EURP_"

--_000_PA4P191MB1664AB08B4D7E7B035C25D309FA19PA4P191MB1664EURP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,

I'm having a problem about warm reboot and I don't have this issue with a c=
old reboot.


TBOOT: TPM: write cmd timeout
TBOOT: TPM: Create return value =3D 00000101
TBOOT: failed to seal data


Has anyone experienced the same error ?

Regards,

Loris Wilbert

--_000_PA4P191MB1664AB08B4D7E7B035C25D309FA19PA4P191MB1664EURP_
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
Hello,&nbsp;</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
I'm having a problem about warm reboot and I don't have this issue with a c=
old reboot.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<pre style=3D"overflow-wrap:break-word">TBOOT: TPM: write cmd timeout=0A=
TBOOT: TPM: Create return value =3D 00000101=0A=
TBOOT: failed to seal data</pre>
<pre style=3D"overflow-wrap:break-word"><br></pre>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Has anyone experienced the same error ?</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Regards,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Loris Wilbert</div>
</body>
</html>

--_000_PA4P191MB1664AB08B4D7E7B035C25D309FA19PA4P191MB1664EURP_--


--===============1851818256323687936==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============1851818256323687936==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel

--===============1851818256323687936==--

