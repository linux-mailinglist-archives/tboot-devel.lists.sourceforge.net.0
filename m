Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 12CDF10528F
	for <lists+tboot-devel@lfdr.de>; Thu, 21 Nov 2019 14:02:57 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1iXm6j-0006du-0S; Thu, 21 Nov 2019 13:02:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Petre.Scheie@gd-ms.com>) id 1iXm6h-0006dm-MS
 for tboot-devel@lists.sourceforge.net; Thu, 21 Nov 2019 13:02:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WoBjnoyzrLmBrKcH3AapC8hAjR/yxhpuD1hMSvNLiyQ=; b=iGA9mump8hmKpOzu87JwvYL4I3
 9JGZFSy9nI05Q4aosMCy9v4pes6RjXP1Em4ckwoILrh838DnTxmRTKpZyIsBqwtD95MpyLS7AjtKV
 E3Ah+/rWj8+0RTB5CbH491iBmaf1Q2vmjnF+FXPcceEqVkD1++PRxOxodzhxjdaaa3xY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Message-ID:Date:Subject:To:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=WoBjnoyzrLmBrKcH3AapC8hAjR/yxhpuD1hMSvNLiyQ=; b=l
 xNtdjOZmxCIKABZhQi2EMVNDQK+jQvOLpkeaQXNbQgitZiGK/B6GR4C9DaVTmNQFBBnYmjmsJmpTZ
 J3KXLoHeflcKiVleW+Vhy/X8I6ukSFOwhcYUTmp8gqCeuadMi6J7D7RyS1+HRm4APQ4iAZFXOEj5d
 lilYoM0f2ecdpGzU=;
Received: from az25dmzegs02.gd-ms.com ([63.226.32.83])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iXm6g-008e2L-B4
 for tboot-devel@lists.sourceforge.net; Thu, 21 Nov 2019 13:02:47 +0000
Received: from unknown (HELO az25sec06.localdomain) ([10.240.16.97])
 by az25dmzegs02.gd-ms.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Nov 2019 06:02:41 -0700
Received: from AZDC-MMB02.GD-MS.US (azdc-mmb02.gd-ms.us [10.136.100.24])
 by az25sec06.localdomain (Postfix) with ESMTP id 81AAF1140044
 for <tboot-devel@lists.sourceforge.net>; Thu, 21 Nov 2019 13:05:03 +0000 (UTC)
Received: from AZDC-MMB02.GD-MS.US (10.136.100.24) by AZDC-MMB02.GD-MS.US
 (10.136.100.24) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Thu, 21 Nov
 2019 06:01:24 -0700
Received: from AZDC-MMB02.GD-MS.US ([192.168.10.83]) by AZDC-MMB02.GD-MS.US
 ([192.168.10.83]) with mapi id 15.00.1473.005; Thu, 21 Nov 2019 06:01:24
 -0700
From: "Scheie, Peter M" <Petre.Scheie@gd-ms.com>
To: "tboot-devel@lists.sourceforge.net" <tboot-devel@lists.sourceforge.net>
Thread-Topic: unsubscribe
Thread-Index: AdWga79AbchN2quFQ9yasG6OlBx7fA==
Date: Thu, 21 Nov 2019 13:01:23 +0000
Message-ID: <b06847da84b94f7290e40b95c60267b0@AZDC-MMB02.GD-MS.US>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.136.100.111]
MIME-Version: 1.0
X-Content-Scanned: Fidelis Mail
X-Spam-Score: 1.1 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 MIME_HTML_MOSTLY       BODY: Multipart message mostly text/html MIME
 1.0 HTML_MESSAGE           BODY: HTML included in message
 0.0 TVD_SPACE_RATIO        No description available.
X-Headers-End: 1iXm6g-008e2L-B4
Subject: [tboot-devel] unsubscribe
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
Content-Type: multipart/mixed; boundary="===============7685834117221683102=="
Errors-To: tboot-devel-bounces@lists.sourceforge.net

--===============7685834117221683102==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_b06847da84b94f7290e40b95c60267b0AZDCMMB02GDMSUS_"

--_000_b06847da84b94f7290e40b95c60267b0AZDCMMB02GDMSUS_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

unsubscribe

--_000_b06847da84b94f7290e40b95c60267b0AZDCMMB02GDMSUS_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">unsubscribe<o:p></o:p></p>
</div>
</body>
</html>

--_000_b06847da84b94f7290e40b95c60267b0AZDCMMB02GDMSUS_--


--===============7685834117221683102==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============7685834117221683102==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel

--===============7685834117221683102==--

