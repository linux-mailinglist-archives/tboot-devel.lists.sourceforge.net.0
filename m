Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B95B41C2B0
	for <lists+tboot-devel@lfdr.de>; Wed, 29 Sep 2021 12:26:35 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1mVWn9-0008UB-OK; Wed, 29 Sep 2021 10:26:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <loris.wilbert@outlook.fr>) id 1mVWn7-0008U5-M5
 for tboot-devel@lists.sourceforge.net; Wed, 29 Sep 2021 10:26:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:In-Reply-To:References:
 Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zCgtRz836Ui8Rxs7EXzONLK34VDySeWTGJ7AHqNyp8Y=; b=IeNbIC7vFmTmvuavNCsZjk/Mle
 mx6xavVdqqGYYTgobPU60AXOmlMr7vDLGBMNuLCR79BRxY3peUE8OrgZd6pHDX5bfhply0/GFbH5p
 5nM6jEaVsnCkl2g0wGFLy7qz90cmhaRBAM+5bKAuK6hahX6exBJLL341H8bVUC5YbULU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=zCgtRz836Ui8Rxs7EXzONLK34VDySeWTGJ7AHqNyp8Y=; b=LGjqtpkNJ9YWEVaXM4fh0oftb0
 siG0KkSQ/amrpnZMfWS7HRXNqa8MqGEPOPJs5G+Rv9494wYfppzbiCY/ZeIQpF6paeJweyDRAHQAu
 1D4SXEMTuuWQx1qjwWoe1RtQIeapQ+dNbcPcahfFrRmE2KTUIM4ht4uKcbXb/zTA9JPM=;
Received: from mail-oln040092074027.outbound.protection.outlook.com
 ([40.92.74.27] helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mVWn1-0001J2-Qs
 for tboot-devel@lists.sourceforge.net; Wed, 29 Sep 2021 10:26:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SujNpVNP7uNzuFjaWqu3uo7+A+NXoNd81/HW1x6TS8pAl3qBL3oOBmvHhh/hWmRtO8O+eUYR6SIi915149Cp79LUcpNDSJCHAKyQ8Z55LRZsHngvPpsImk5qMK0kChRvrKIQ3zXmuKL8TQRcz179PdS4sHq7q2SHX0/QrQpRR2rPCk3VXmaatsqq4scXWG3LSVQ2ZMRdOM2qtyLWQGY+ESyKRjx75lHNhpbLrW9QiGqlKIvAJmiv9/jwiotCH+uzL8gxXKyVbVH7CVwYN1adio+C5LCTjivBaT6xd66xAQNpenqhMUnNwB+EswDAY58Mc7U4S7nhaOG5DxOtVQtn2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=zCgtRz836Ui8Rxs7EXzONLK34VDySeWTGJ7AHqNyp8Y=;
 b=HsJNtSsElCmwed3485Oy6pFDjWSZm0DW7MjNsHE6CIafYNC4ohOg6opCQn6eXxgzUU3BM3gFtP6YHNUFi7k9WcCTOSghMLZQanXnNMfPUe43w53uDEMh9DL0syaACoxHrZ2tw1QuJqAJ93292qTlqn/ZJa4Ht13yPp7SzHCKLENNrXi+BCkBng5ym9qh8RLGKTvvPjy3TPlxXxSd6z/DuQM3slWqeKYrzv0XqEyK+QRyupdwjx/VrjVqcV1TKclbUvfyL8vo+shx6J0mqmCNpOGeBtP1jiObuPmbV6RMUcdhkbvNRuXBzeE/7zmctLGjoswDbyFqty6DU1oJKN5yjw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from VI1EUR04FT042.eop-eur04.prod.protection.outlook.com
 (2a01:111:e400:7e0e::52) by
 VI1EUR04HT161.eop-eur04.prod.protection.outlook.com (2a01:111:e400:7e0e::402)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4544.13; Wed, 29 Sep
 2021 10:26:02 +0000
Received: from PA4P191MB1664.EURP191.PROD.OUTLOOK.COM (2a01:111:e400:7e0e::53)
 by VI1EUR04FT042.mail.protection.outlook.com
 (2a01:111:e400:7e0e::68) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4566.14 via Frontend
 Transport; Wed, 29 Sep 2021 10:26:02 +0000
Received: from PA4P191MB1664.EURP191.PROD.OUTLOOK.COM
 ([fe80::b047:5a71:1193:aca1]) by PA4P191MB1664.EURP191.PROD.OUTLOOK.COM
 ([fe80::b047:5a71:1193:aca1%4]) with mapi id 15.20.4544.022; Wed, 29 Sep 2021
 10:26:02 +0000
From: Loris Wilbert <loris.wilbert@outlook.fr>
To: Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>,
 "tboot-devel@lists.sourceforge.net" <tboot-devel@lists.sourceforge.net>
Thread-Topic: [tboot-devel] Issue with warm reboot
Thread-Index: AQHXrsC+dO6H7X3CTEG9GbzLtUKydquuiicAgAEpX4WACBp5gIADCS88
Date: Wed, 29 Sep 2021 10:26:02 +0000
Message-ID: <PA4P191MB1664B832D84B818805C91A3B9FA99@PA4P191MB1664.EURP191.PROD.OUTLOOK.COM>
References: <PA4P191MB1664AB08B4D7E7B035C25D309FA19@PA4P191MB1664.EURP191.PROD.OUTLOOK.COM>
 <e069c86ccfbb0b0068c2244fe6835d1324f52e9b.camel@linux.intel.com>
 <PA4P191MB1664C5127164099A9989D8009FA29@PA4P191MB1664.EURP191.PROD.OUTLOOK.COM>
 <efa17770eb9ecd5d34be353793450171ab95f5a5.camel@linux.intel.com>
In-Reply-To: <efa17770eb9ecd5d34be353793450171ab95f5a5.camel@linux.intel.com>
Accept-Language: fr-FR, en-US
Content-Language: fr-FR
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
suggested_attachment_session_id: f17eb72e-5225-27cf-5fc1-d8277bdf5648
x-incomingtopheadermarker: OriginalChecksum:D5E16D6188496228C6F365550C41BA569DA1FB486F29F054991230E120A3C83D;
 UpperCasedChecksum:EC908C0E5D62011E3B6C578B0DDAB7E3DA47C6EABAF0F4576A27FD01D55C8214;
 SizeAsReceived:7200; Count:44
x-tmn: [kIeywZadb9z+2K8ZEsWZ9LLvBsgWj7nj]
x-ms-publictraffictype: Email
x-incomingheadercount: 44
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: 9f47b9b7-074a-4e2f-a91c-08d983338964
x-ms-traffictypediagnostic: VI1EUR04HT161:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MM9KeoIqybUEDKqX8ZXrIVxr6eBI6JEQjxbV/9umLGgocpGWpqcyw/BCa8NHsjljsWUCgPvBPbAtuE+vOI2MVyXu7ONjjQrGd4H9YwWY57Pz4KpISP+AG6fBNj2Nz+R1Iuc1OMNUKhStljIKCxnBnhzL4hAhWKDCuB33NlLfQwcRSxdIz6c+mERBN5Qr/pp/YdkzZoXjW4i+oZv+3y2dQi4nOuqd4KJ6wYhLhKVmw5+s3bvvDM3OhIBbhQ0dbCXtpPzJ97uKBZpJ0859SNgZ6V+lfHmzZQMiSGXS1AVRda6DeF/pkGfeh3jVCMpzHEOK8wV+q5e8VPX3VD7T3tsYf9jVzf2sqNb/RkyeSYFArYXDF+5s6JCFkaMfQXfLduLg5RKDbn1Wof5/iZi+1NnjQT7ZlV7z6v3PKxVi31zoVkJxoWLRN+oVFMT5Vcf2t6r2
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 05mTyq6UJHN/oV1BLd6l1JrwseTYwiwq8TVa3agdzCSLPnrUR6ag6jjyeb+BAPFAkuUXimF7MNigkHtGJFBs8RAFzgBqjHG0EXwlttkCU/QH0b0Q51M0ydlK9bMoxvPfpKbOSgxFRIBBnDZ5uAg2+Q==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-AuthSource: VI1EUR04FT042.eop-eur04.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 9f47b9b7-074a-4e2f-a91c-08d983338964
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Sep 2021 10:26:02.0316 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1EUR04HT161
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Lukasz, I have this problem with a Getac X500 G3 (CPU :
 Intel(R) Core(TM) i5-7440HQ CPU @ 2.80GHz). I realised the same test on
 another Getac X500 G3 and the same issue appear. 
 Content analysis details:   (-0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.74.27 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.92.74.27 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [loris.wilbert[at]outlook.fr]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
X-Headers-End: 1mVWn1-0001J2-Qs
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
Content-Type: multipart/mixed; boundary="===============6759052271296539881=="
Errors-To: tboot-devel-bounces@lists.sourceforge.net

--===============6759052271296539881==
Content-Language: fr-FR
Content-Type: multipart/alternative;
	boundary="_000_PA4P191MB1664B832D84B818805C91A3B9FA99PA4P191MB1664EURP_"

--_000_PA4P191MB1664B832D84B818805C91A3B9FA99PA4P191MB1664EURP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

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




--_000_PA4P191MB1664B832D84B818805C91A3B9FA99PA4P191MB1664EURP_
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
I have this problem with a Getac X500 G3 (CPU :&nbsp;<span style=3D"font-si=
ze:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;mso-fareast-font-famil=
y:Calibri;mso-fareast-theme-font:minor-latin;mso-ansi-language:FR;mso-farea=
st-language:EN-US;mso-bidi-language:AR-SA">Intel(R)
 Core(TM) i5-7440HQ CPU @ 2.80GHz</span>).</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
I realised the same test on another Getac X500 G3 and the same issue appear=
.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Thanks,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Loris</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>De :</b> Lukasz Hawrylko &lt;lu=
kasz.hawrylko@linux.intel.com&gt;<br>
<b>Envoy=E9 :</b> lundi 27 septembre 2021 13:49<br>
<b>=C0 :</b> Loris Wilbert &lt;loris.wilbert@outlook.fr&gt;; tboot-devel@li=
sts.sourceforge.net &lt;tboot-devel@lists.sourceforge.net&gt;<br>
<b>Objet :</b> Re: [tboot-devel] Issue with warm reboot</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt;=
">
<div class=3D"PlainText">On Wed, 2021-09-22 at 08:18 +0000, Loris Wilbert w=
rote:<br>
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
</body>
</html>

--_000_PA4P191MB1664B832D84B818805C91A3B9FA99PA4P191MB1664EURP_--


--===============6759052271296539881==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============6759052271296539881==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel

--===============6759052271296539881==--

