Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 44143151BC6
	for <lists+tboot-devel@lfdr.de>; Tue,  4 Feb 2020 15:03:09 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1iyyn7-0007j8-QO; Tue, 04 Feb 2020 14:03:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <olivier.leroy@external.thalesgroup.com>)
 id 1iyyn6-0007iB-KF
 for tboot-devel@lists.sourceforge.net; Tue, 04 Feb 2020 14:03:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cCeXXad0+8zCNQZNpDfNyE+CDCJyDKBOmkM7IjBhNh0=; b=lanty9pVHhsEwL68VHIFNlKnky
 pBDGpjtOfL+yU/Nn8noW/otaP1uhg3cpkitKb88MKHh8Rz5PJwQz59F6OxWIQfdIpLezgYRNK9KOQ
 paEKvGINjIQr99EFUg4WqQrLIRbydtTcohnn69J21DFSGQoMaiO13jSHXIsJY9Cdos3s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Message-ID:Date:Subject:To:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=cCeXXad0+8zCNQZNpDfNyE+CDCJyDKBOmkM7IjBhNh0=; b=m
 gBVQhYiiwakkFDBVMkIN8OH9He7a7+/j/ffznIi/0C+/u/L0DmhLsAkCNcXe5/pvJal25if0jVczy
 MqcnqeYWa+4rKgNUIOp4wFc5TSbNk2A0eHYaYXx8JhNM3BVzNp6fFX2L1lGV0xP7aG4OnTLE+xd5m
 o6tPfR1qBwcfj1tg=;
Received: from thsbbfxrt01p.thalesgroup.com ([192.54.144.131])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iyyn3-00A23F-Kr
 for tboot-devel@lists.sourceforge.net; Tue, 04 Feb 2020 14:03:00 +0000
Received: from thsbbfxrt01p.thalesgroup.com (localhost [127.0.0.1])
 by localhost (Postfix) with SMTP id 48BmKt31zrz459J
 for <tboot-devel@lists.sourceforge.net>; Tue,  4 Feb 2020 14:50:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=external.thalesgroup.com; s=xrt20181201; t=1580824226;
 bh=cCeXXad0+8zCNQZNpDfNyE+CDCJyDKBOmkM7IjBhNh0=;
 h=From:To:Subject:Date:Message-ID:MIME-Version:From;
 b=cSbgWhklX1sK8gFtQ6x/kXug2Y6FMYmj45lHDQr12c0sOZf8TMJR4jL0Sb9KEEo9G
 oCLK6VtvIDvxxlJhj8M9MvS9tU1kMkECoihxQN2/HnaCmbTtF1gYhrub4kEDSBfaND
 L7EYYl3ScZQHslfc1Z0MEhOBUztsBv5YyxJ69qkV/3WEbIxt6U/Q67DaTxMOrqhqxK
 0w4MNZXw4JiX1PgUaQcBPAdr+EbXph0xJ7RZofv6DOdEIUUA0dhPqIMQkOU36fBoMI
 v9EBfbrHoCEQYPdDz4YCWTx3zkWVYlTuWWfy3rrVLCBy44vdzv5mfo5n1A+tnvnGJ6
 aTQZ0wGSNf5ZA==
From: LE ROY Olivier - Contractor <olivier.leroy@external.thalesgroup.com>
To: "tboot-devel@lists.sourceforge.net" <tboot-devel@lists.sourceforge.net>
Thread-Topic: Intel TXT + TBOOT + TPM 2.0: can't get LCP_ANY policy working on
 Supermicro X11SPM-TF
Thread-Index: AQHV22EGqt0P81817Ums16JNP8TN2g==
Date: Tue, 4 Feb 2020 13:50:24 +0000
Message-ID: <3efd665c3f1b4681a0414f12c9c4e666@external.thalesgroup.com>
Accept-Language: fr-FR, en-US
Content-Language: fr-FR
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-pmwin-version: 4.0.3, Antivirus-Engine: 3.77.1, Antivirus-Data: 5.71
MIME-Version: 1.0
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [192.54.144.131 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal information
 0.0 T_FILL_THIS_FORM_FRAUD_PHISH Answer suspicious question(s)
X-Headers-End: 1iyyn3-00A23F-Kr
Subject: [tboot-devel] Intel TXT + TBOOT + TPM 2.0: can't get LCP_ANY policy
 working on Supermicro X11SPM-TF
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
Content-Type: multipart/mixed; boundary="===============0225751430340769924=="
Errors-To: tboot-devel-bounces@lists.sourceforge.net

--===============0225751430340769924==
Content-Language: fr-FR
Content-Type: multipart/alternative;
	boundary="_000_3efd665c3f1b4681a0414f12c9c4e666externalthalesgroupcom_"

--_000_3efd665c3f1b4681a0414f12c9c4e666externalthalesgroupcom_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi,

I am trying to get a simple LCP_ANY launch control policy to work on a Supe=
rmicro X11SPM-TF server with AOM-TPM-9670V TPM 2.0 module, without success.=
 I get the "read error" from SINIT ACM each time.

I am using tboot version 1.9.9.

The LCP_ANY policy was created using two different ways:

1/ with lcp-gen2 python tools available in tboot sources,

2/ using a ready-made binary file, which is known to work, that is provided=
 by Dr. G.W. Wettstein, and was contributed on this mailing list: (https://=
sourceforge.net/p/tboot/mailman/message/36477790/)
Dump of the platform owner NVram definition with functional LCP_ANY policy:

00000016: 00 03 0b 00 01 00 00 00 00 00 00 00 00 00 00 00 ................
00000032: 00 00 00 00 00 00 02 00 00 00 00 00 c8 00 08 30 ...............0
00000048: 00 00 08 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
00000064: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
00000070: 00 00 00 00 00 00                               ................

Attributes: 0x224000a
    OWNERWRITE
    POLICYWRITE
    AUTHREAD
    NO_DA
    WRITTEN
and NVram index to 0x1c10106 for my Cascade Lake Intel Xeon Silver 4216 CPU=
 based chipset.

These two policies fail with following tboot error:
TBOOT: no SINIT provided by bootloader; using BIOS SINIT
...
TBOOT: reading Verified Launch Policy from TPM NV...
TBOOT: TPM: fail to get public data of 0x01C10131 in TPM NV
TBOOT:     :reading failed
TBOOT: reading Launch Control Policy from TPM NV...
TBOOT:     :70 bytes read
TBOOT:     :reading failed
TBOOT: failed to read policy from TPM NV, using default
TBOOT: policy:


The point is the SINIT ACM reads my LCP_ANY policy from TPM2 NVram but does=
n't seem to understand it.

There are no reason indicated in the TBOOT log.

One reason I think of could be that the NVram index 0x01C10106 wasn't defin=
ed with proper attributes.
I define it with:

tpm2_nvdefine -x 0x01c10106 -a 0x40000001 -s 70 -t 0x0204000a -P password

Hoping someone will help me solve this problem,



Cordialement / regards,

Olivier le Roy (contractor)

HW =96 SW development engineer
Thales LAS France
Tel.: +33 1 64 91 66 43
Mobile : +33 6 26 56 44 99

--_000_3efd665c3f1b4681a0414f12c9c4e666externalthalesgroupcom_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; color=
:rgb(0,0,0); font-family:Calibri,Helvetica,sans-serif,&quot;EmojiFont&quot;=
,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&q=
uot;Segoe UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols">
<p><span lang=3D"fr"><font style=3D"font-family:Times New Roman,serif,serif=
,&quot;EmojiFont&quot;" face=3D"Times New Roman,serif" size=3D"3"><span sty=
le=3D"font-size:12pt"><font style=3D"font-family:Calibri,sans-serif,serif,&=
quot;EmojiFont&quot;" face=3D"Calibri,sans-serif" color=3D"black">Hi,</font=
><font style=3D"font-family:Calibri,sans-serif,serif,&quot;EmojiFont&quot;"=
 face=3D"Calibri,sans-serif" color=3D"black"><br>
</font><font style=3D"font-family:Calibri,sans-serif,serif,&quot;EmojiFont&=
quot;" face=3D"Calibri,sans-serif" color=3D"black"><br>
I am trying to get a simple LCP_ANY launch control policy to work on a Supe=
rmicro X11SPM-TF server with AOM-TPM-9670V TPM 2.0 module, without success.=
 I get the &quot;read error&quot; from SINIT ACM each time.</font><font sty=
le=3D"font-family:Calibri,sans-serif,serif,&quot;EmojiFont&quot;" face=3D"C=
alibri,sans-serif" color=3D"black"><br>
</font><font style=3D"font-family:Calibri,sans-serif,serif,&quot;EmojiFont&=
quot;" face=3D"Calibri,sans-serif" color=3D"black"><br>
I am using tboot version 1.9.9.</font><font style=3D"font-family:Calibri,sa=
ns-serif,serif,&quot;EmojiFont&quot;" face=3D"Calibri,sans-serif" color=3D"=
black"><br>
</font><font style=3D"font-family:Calibri,sans-serif,serif,&quot;EmojiFont&=
quot;" face=3D"Calibri,sans-serif" color=3D"black"><br>
The LCP_ANY policy was created using two different ways:</font><font style=
=3D"font-family:Calibri,sans-serif,serif,&quot;EmojiFont&quot;" face=3D"Cal=
ibri,sans-serif" color=3D"black"><br>
</font><font style=3D"font-family:Calibri,sans-serif,serif,&quot;EmojiFont&=
quot;" face=3D"Calibri,sans-serif" color=3D"black"><br>
1/ with lcp-gen2 python tools available in tboot sources,</font><font style=
=3D"font-family:Calibri,sans-serif,serif,&quot;EmojiFont&quot;" face=3D"Cal=
ibri,sans-serif" color=3D"black"><br>
</font><font style=3D"font-family:Calibri,sans-serif,serif,&quot;EmojiFont&=
quot;" face=3D"Calibri,sans-serif" color=3D"black"><br>
2/ using a ready-made binary file, which is known to work, that is provided=
 by Dr. G.W. Wettstein,<font face=3D"Calibri,sans-serif"> and was contribut=
ed</font> on
<font face=3D"Calibri,sans-serif">this</font> mailing list: (</font><a prev=
iewremoved=3D"true" href=3D"https://sourceforge.net/p/tboot/mailman/message=
/36477790/" target=3D"_blank" rel=3D"noopener noreferrer" id=3D"LPlnk440931=
"><font style=3D"font-family:Calibri,sans-serif,serif,&quot;EmojiFont&quot;=
" face=3D"Calibri,sans-serif"><span id=3D"LPlnk440931">https://sourceforge.=
net/p/tboot/mailman/message/36477790/</span></font></a><font style=3D"font-=
family:Calibri,sans-serif,serif,&quot;EmojiFont&quot;" face=3D"Calibri,sans=
-serif" color=3D"black">)</font><font style=3D"font-family:Calibri,sans-ser=
if,serif,&quot;EmojiFont&quot;" face=3D"Calibri,sans-serif" color=3D"black"=
><br>
Dump of the platform owner NVram definition with functional LCP_ANY policy:=
</font><font style=3D"font-family:Calibri,sans-serif,serif,&quot;EmojiFont&=
quot;" face=3D"Calibri,sans-serif" color=3D"black"><br>
</font><font style=3D"font-family:Calibri,sans-serif,serif,&quot;EmojiFont&=
quot;" face=3D"Calibri,sans-serif" color=3D"black"><br>
</font><font style=3D"font-family:Lucida Console,serif,&quot;EmojiFont&quot=
;" face=3D"Lucida Console" size=3D"2" color=3D"black"><span style=3D"font-s=
ize:11pt">00000016: 00 03 0b 00 01 00 00 00 00 00 00 00 00 00 00 00 .......=
.........</span></font><font style=3D"font-family:Calibri,sans-serif,serif,=
&quot;EmojiFont&quot;" face=3D"Calibri,sans-serif" color=3D"black"><br>
</font><font style=3D"font-family:Lucida Console,serif,&quot;EmojiFont&quot=
;" face=3D"Lucida Console" size=3D"2" color=3D"black"><span style=3D"font-s=
ize:11pt">00000032: 00 00 00 00 00 00 02 00 00 00 00 00 c8 00 08 30 .......=
........0</span></font><font style=3D"font-family:Calibri,sans-serif,serif,=
&quot;EmojiFont&quot;" face=3D"Calibri,sans-serif" color=3D"black"><br>
</font><font style=3D"font-family:Lucida Console,serif,&quot;EmojiFont&quot=
;" face=3D"Lucida Console" size=3D"2" color=3D"black"><span style=3D"font-s=
ize:11pt">00000048: 00 00 08 00 00 00 00 00 00 00 00 00 00 00 00 00 .......=
.........</span></font><font style=3D"font-family:Calibri,sans-serif,serif,=
&quot;EmojiFont&quot;" face=3D"Calibri,sans-serif" color=3D"black"><br>
</font><font style=3D"font-family:Lucida Console,serif,&quot;EmojiFont&quot=
;" face=3D"Lucida Console" size=3D"2" color=3D"black"><span style=3D"font-s=
ize:11pt">00000064: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 .......=
.........</span></font><font style=3D"font-family:Calibri,sans-serif,serif,=
&quot;EmojiFont&quot;" face=3D"Calibri,sans-serif" color=3D"black"><br>
</font><font style=3D"font-family:Lucida Console,serif,&quot;EmojiFont&quot=
;" face=3D"Lucida Console" size=3D"2" color=3D"black"><span style=3D"font-s=
ize:11pt">00000070: 00 00 00 00 00 00&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; .......=
.........</span></font><font style=3D"font-family:Calibri,sans-serif,serif,=
&quot;EmojiFont&quot;" face=3D"Calibri,sans-serif" color=3D"black"><br>
</font><font style=3D"font-family:Calibri,sans-serif,serif,&quot;EmojiFont&=
quot;" face=3D"Calibri,sans-serif" color=3D"black"><br>
</font><font style=3D"font-family:Lucida Console,serif,&quot;EmojiFont&quot=
;" face=3D"Lucida Console" size=3D"2" color=3D"black"><span style=3D"font-s=
ize:11pt">Attributes: 0x224000a</span></font><font style=3D"font-family:Cal=
ibri,sans-serif,serif,&quot;EmojiFont&quot;" face=3D"Calibri,sans-serif" co=
lor=3D"black"><br>
</font><font style=3D"font-family:Lucida Console,serif,&quot;EmojiFont&quot=
;" face=3D"Lucida Console" size=3D"2" color=3D"black"><span style=3D"font-s=
ize:11pt">&nbsp;&nbsp; &nbsp;OWNERWRITE</span></font><font style=3D"font-fa=
mily:Calibri,sans-serif,serif,&quot;EmojiFont&quot;" face=3D"Calibri,sans-s=
erif" color=3D"black"><br>
</font><font style=3D"font-family:Lucida Console,serif,&quot;EmojiFont&quot=
;" face=3D"Lucida Console" size=3D"2" color=3D"black"><span style=3D"font-s=
ize:11pt">&nbsp;&nbsp; &nbsp;POLICYWRITE</span></font><font style=3D"font-f=
amily:Calibri,sans-serif,serif,&quot;EmojiFont&quot;" face=3D"Calibri,sans-=
serif" color=3D"black"><br>
</font><font style=3D"font-family:Lucida Console,serif,&quot;EmojiFont&quot=
;" face=3D"Lucida Console" size=3D"2" color=3D"black"><span style=3D"font-s=
ize:11pt">&nbsp;&nbsp; &nbsp;AUTHREAD</span></font><font style=3D"font-fami=
ly:Calibri,sans-serif,serif,&quot;EmojiFont&quot;" face=3D"Calibri,sans-ser=
if" color=3D"black"><br>
</font><font style=3D"font-family:Lucida Console,serif,&quot;EmojiFont&quot=
;" face=3D"Lucida Console" size=3D"2" color=3D"black"><span style=3D"font-s=
ize:11pt">&nbsp;&nbsp; &nbsp;NO_DA</span></font><font style=3D"font-family:=
Calibri,sans-serif,serif,&quot;EmojiFont&quot;" face=3D"Calibri,sans-serif"=
 color=3D"black"><br>
</font><font style=3D"font-family:Lucida Console,serif,&quot;EmojiFont&quot=
;" face=3D"Lucida Console" size=3D"2" color=3D"black"><span style=3D"font-s=
ize:11pt">&nbsp;&nbsp; &nbsp;WRITTEN</span></font><font style=3D"font-famil=
y:Calibri,sans-serif,serif,&quot;EmojiFont&quot;" face=3D"Calibri,sans-seri=
f" color=3D"black"><br>
and NVram index to </font><font style=3D"font-family:Lucida Console,serif,&=
quot;EmojiFont&quot;" face=3D"Lucida Console" size=3D"2" color=3D"black"><s=
pan style=3D"font-size:11pt">0x1c10106</span></font><font style=3D"font-fam=
ily:Calibri,sans-serif,serif,&quot;EmojiFont&quot;" face=3D"Calibri,sans-se=
rif" color=3D"black">
 for <font face=3D"Calibri,sans-serif">my</font> Cascade Lake Intel Xeon Si=
lver 4216 CPU based chipset.</font><font style=3D"font-family:Calibri,sans-=
serif,serif,&quot;EmojiFont&quot;" face=3D"Calibri,sans-serif" color=3D"bla=
ck"><br>
</font><font style=3D"font-family:Calibri,sans-serif,serif,&quot;EmojiFont&=
quot;" face=3D"Calibri,sans-serif" color=3D"black"><br>
These two policies fail with following tboot error:</font><font style=3D"fo=
nt-family:Calibri,sans-serif,serif,&quot;EmojiFont&quot;" face=3D"Calibri,s=
ans-serif" color=3D"black"><br>
</font><font style=3D"font-family:Lucida Console,serif,&quot;EmojiFont&quot=
;" face=3D"Lucida Console" size=3D"2" color=3D"black"><span style=3D"font-s=
ize:11pt">TBOOT: no SINIT provided by bootloader; using BIOS SINIT</span></=
font><font style=3D"font-family:Calibri,sans-serif,serif,&quot;EmojiFont&qu=
ot;" face=3D"Calibri,sans-serif" color=3D"black"><br>
</font><font style=3D"font-family:Lucida Console,serif,&quot;EmojiFont&quot=
;" face=3D"Lucida Console" size=3D"2" color=3D"black"><span style=3D"font-s=
ize:11pt">...</span></font><font style=3D"font-family:Calibri,sans-serif,se=
rif,&quot;EmojiFont&quot;" face=3D"Calibri,sans-serif" color=3D"black"><br>
</font><font style=3D"font-family:Lucida Console,serif,&quot;EmojiFont&quot=
;" face=3D"Lucida Console" size=3D"2" color=3D"black"><span style=3D"font-s=
ize:11pt">TBOOT: reading Verified Launch Policy from TPM NV...</span></font=
><font style=3D"font-family:Calibri,sans-serif,serif,&quot;EmojiFont&quot;"=
 face=3D"Calibri,sans-serif" color=3D"black"><br>
</font><font style=3D"font-family:Lucida Console,serif,&quot;EmojiFont&quot=
;" face=3D"Lucida Console" size=3D"2" color=3D"black"><span style=3D"font-s=
ize:11pt">TBOOT: TPM: fail to get public data of 0x01C10131 in TPM NV</span=
></font><font style=3D"font-family:Calibri,sans-serif,serif,&quot;EmojiFont=
&quot;" face=3D"Calibri,sans-serif" color=3D"black"><br>
</font><font style=3D"font-family:Lucida Console,serif,&quot;EmojiFont&quot=
;" face=3D"Lucida Console" size=3D"2" color=3D"black"><span style=3D"font-s=
ize:11pt">TBOOT: &nbsp;&nbsp; &nbsp;:reading failed</span></font><font styl=
e=3D"font-family:Calibri,sans-serif,serif,&quot;EmojiFont&quot;" face=3D"Ca=
libri,sans-serif" color=3D"black"><br>
</font><font style=3D"font-family:Lucida Console,serif,&quot;EmojiFont&quot=
;" face=3D"Lucida Console" size=3D"2" color=3D"black"><span style=3D"font-s=
ize:11pt">TBOOT: reading Launch Control Policy from TPM NV...</span></font>=
<font style=3D"font-family:Calibri,sans-serif,serif,&quot;EmojiFont&quot;" =
face=3D"Calibri,sans-serif" color=3D"black"><br>
</font><font style=3D"font-family:Lucida Console,serif,&quot;EmojiFont&quot=
;" face=3D"Lucida Console" size=3D"2" color=3D"black"><span style=3D"font-s=
ize:11pt">TBOOT: &nbsp;&nbsp; &nbsp;:70 bytes read</span></font><font style=
=3D"font-family:Calibri,sans-serif,serif,&quot;EmojiFont&quot;" face=3D"Cal=
ibri,sans-serif" color=3D"black"><br>
</font><font style=3D"font-family:Lucida Console,serif,&quot;EmojiFont&quot=
;" face=3D"Lucida Console" size=3D"2" color=3D"black"><span style=3D"font-s=
ize:11pt">TBOOT: &nbsp;&nbsp; &nbsp;:reading failed</span></font><font styl=
e=3D"font-family:Calibri,sans-serif,serif,&quot;EmojiFont&quot;" face=3D"Ca=
libri,sans-serif" color=3D"black"><br>
</font><font style=3D"font-family:Lucida Console,serif,&quot;EmojiFont&quot=
;" face=3D"Lucida Console" size=3D"2" color=3D"black"><span style=3D"font-s=
ize:11pt">TBOOT: failed to read policy from TPM NV, using default</span></f=
ont><font style=3D"font-family:Calibri,sans-serif,serif,&quot;EmojiFont&quo=
t;" face=3D"Calibri,sans-serif" color=3D"black"><br>
</font><font style=3D"font-family:Lucida Console,serif,&quot;EmojiFont&quot=
;" face=3D"Lucida Console" size=3D"2" color=3D"black"><span style=3D"font-s=
ize:11pt">TBOOT: policy:</span></font><font style=3D"font-family:Calibri,sa=
ns-serif,serif,&quot;EmojiFont&quot;" face=3D"Calibri,sans-serif" color=3D"=
black"><br>
</font></span></font></span></p>
<p><br>
</p>
<p></p>
<div>The point is the SINIT ACM reads my LCP_ANY policy from TPM2 NVram but=
 doesn't seem to understand it.<br>
<br>
There are no reason indicated in the TBOOT log.<br>
<br>
One reason I think of could be that the NVram index <span style=3D"font-fam=
ily:&quot;Lucida Console&quot;,Monaco,monospace; font-size:11pt">
0x01C10106</span> wasn't defined with proper attributes.<br>
I define it with:<br>
<br>
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace; fon=
t-size:11pt">tpm2_nvdefine -x 0x01c10106 -a 0x40000001 -s 70 -t 0x0204000a =
-P password</span><br>
<br>
Hoping someone will help me solve this problem,</div>
<br>
<p></p>
<p><br>
</p>
<div id=3D"Signature">
<div class=3D"BodyFragment"><font size=3D"2">
<div class=3D"PlainText">Cordialement / regards,<br>
<br>
Olivier le Roy (contractor)<br>
<br>
HW =96 SW development engineer<br>
Thales LAS France<br>
Tel.: &#43;33 1 64 91 66 43<br>
Mobile : &#43;33 6 26 56 44 99</div>
</font></div>
</div>
</div>
</body>
</html>

--_000_3efd665c3f1b4681a0414f12c9c4e666externalthalesgroupcom_--


--===============0225751430340769924==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============0225751430340769924==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel

--===============0225751430340769924==--

