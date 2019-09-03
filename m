Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E23BA763E
	for <lists+tboot-devel@lfdr.de>; Tue,  3 Sep 2019 23:31:27 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1i5GOT-00029N-Qg; Tue, 03 Sep 2019 21:31:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <robert.haskins@lmco.com>) id 1i5GOR-000298-SC
 for tboot-devel@lists.sourceforge.net; Tue, 03 Sep 2019 21:31:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gZz/5ueiV6Py0x0Jk33BqZe701FOl9GeJsC4I2Y78iI=; b=asv0fgf2lPnBaL12wE49MEEfuL
 ZIgRCyllk6WFl0wCzysDO3DkkkjpPwOQ/VqJjDYg+Bv852YzXHoAia0dsOFwMgMI5pr+HEHaPCYWr
 X5NH8vx6mQoqWCT/puBGandG14Iu1DrCabVxlIrNjH5l6W/lHpPr4eY1uMbzg+wReDJk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Message-ID:Date:Subject:To:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=gZz/5ueiV6Py0x0Jk33BqZe701FOl9GeJsC4I2Y78iI=; b=l
 h0Un+gdJzY6XVsrGpYAXY5dX9PCOC2Jq/DK4H1b0pi4QqBTbXlr4HOc7fZBe5fDjLUf8cNcsOk8x4
 4HtPTGmoTzm9T446eU3F6yb2Oy6NpC7wJ+kyNSpevLhJVPwhjU0uGuammvfJ/NolALVyMBs+tClPw
 CG/+P5tVhdm8btyQ=;
Received: from mailfo02.lmco.com ([192.35.35.12])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1i5GOM-00F6Fj-Q0
 for tboot-devel@lists.sourceforge.net; Tue, 03 Sep 2019 21:31:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lmco.com;
 h=from : to : subject :
 date : message-id : content-type : mime-version; s=corpgw190711;
 bh=gZz/5ueiV6Py0x0Jk33BqZe701FOl9GeJsC4I2Y78iI=;
 b=aYazgAa9puiYIIPUlr9dSq/Y5tOjkhe9gBsLVYNS+xgMClqTDIO9LHTSfDroe95MFc93
 p686BTlL8Ro0KZNoc9FC0Cne1p4luhRxiVnQrKkVSoyCS0ihY5SxDy/a9v1HuJof5zO4
 Ddh1oHeysTV5jisJ9QHDIndXtkyP3d478/XHir3GjvJSfeXsZHe8UtKccmotzP7342r6
 RpRKCOv35LaiQlmSlIo9v+DwBW6XpoQ0y2yqj0aoemkMGf7dOmmf1cicrJlLtFD/dHbh
 AsCIHnAwsn84sw0adyR2HwYDS5X6qOcLd6i1qRhpZR05kAspLIKJLqSr4wKLVfIr2b+J QA== 
Received: from lmxpvfgd08w04.us.lmco.com (lmxpvfg08w04.ems.lmco.com
 [172.23.84.51])
 by mailfo02.lmco.com (8.16.0.22/8.16.0.22) with ESMTP id x83KagB9031231
 for <tboot-devel@lists.sourceforge.net>; Tue, 3 Sep 2019 20:36:42 GMT
Received: from lmxpvfgd08w05.us.lmco.com (172.23.84.52) by
 lmxpvfgd08w04.us.lmco.com (172.23.84.51) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
 15.1.1466.3; Tue, 3 Sep 2019 16:37:06 -0400
Received: from lmxpvfgd08w05.us.lmco.com ([172.23.84.52]) by
 lmxpvfgd08w05.us.lmco.com ([172.23.84.52]) with mapi id 15.01.1466.003; Tue,
 3 Sep 2019 16:37:06 -0400
From: "Haskins, Robert" <robert.haskins@lmco.com>
To: "tboot-devel@lists.sourceforge.net" <tboot-devel@lists.sourceforge.net>
Thread-Topic: GETSEC[SENTER]....and then reset
Thread-Index: AdVijl5TUWltJHjOR6SN943Yoh6R4A==
Date: Tue, 3 Sep 2019 20:37:06 +0000
Message-ID: <fc9d52706f3d43549996876d4a0b7030@lmco.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [172.23.84.15]
MIME-Version: 1.0
X-LM-Outbound: External 172.23.84.51 cntry=**
 g=tZK5ExjNIh3Pg1OixnqQmQzdjmezSJtr q=x83KagB9031231 m=1
X-LM-OSENDER: robert.haskins@lmco.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-09-03_04:, , signatures=0
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1i5GOM-00F6Fj-Q0
Subject: [tboot-devel] GETSEC[SENTER]....and then reset
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
Content-Type: multipart/mixed; boundary="===============6325003416344739995=="
Errors-To: tboot-devel-bounces@lists.sourceforge.net

--===============6325003416344739995==
Content-Language: en-US
Content-Type: multipart/signed; protocol="application/x-pkcs7-signature";
	micalg=SHA1; boundary="----=_NextPart_000_0123_01D56275.D21784B0"

------=_NextPart_000_0123_01D56275.D21784B0
Content-Type: multipart/alternative;
	boundary="----=_NextPart_001_0124_01D56275.D21784B0"


------=_NextPart_001_0124_01D56275.D21784B0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

I have a Getac S410 G2 that I am trying to get TBOOT working on under a
vanilla RHEL 7.6 O/S with TBOOT 1.9.10. The TBOOT startup looks fine:

 

TXT.ERRCODE: 0x0

SINIT match on "the 6th_7th_gen_i5_i7-SINIT_79.bin" file

"last boot has no error"

 

Once it gets to GETSEC[SENTER], it just resets back to grub/startup screen.

 

What am I doing wrong?

 

 

 

 


------=_NextPart_001_0124_01D56275.D21784B0
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><META =
HTTP-EQUIV=3D"Content-Type" CONTENT=3D"text/html; =
charset=3Dus-ascii"><meta name=3DGenerator content=3D"Microsoft Word 15 =
(filtered medium)"><style><!--
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
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US =
link=3D"#0563C1" vlink=3D"#954F72"><div class=3DWordSection1><p =
class=3DMsoNormal>I have a Getac S410 G2 that I am trying to get TBOOT =
working on under a vanilla RHEL 7.6 O/S with TBOOT 1.9.10. The TBOOT =
startup looks fine:<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>TXT.ERRCODE: =
0x0<o:p></o:p></p><p class=3DMsoNormal>SINIT match on &#8220;the =
6th_7th_gen_i5_i7-SINIT_79.bin&#8221; file<o:p></o:p></p><p =
class=3DMsoNormal>&#8220;last boot has no error&#8221;<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>Once it gets =
to GETSEC[SENTER], it just resets back to grub/startup =
screen.<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>What am I doing wrong?<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></body></html>
------=_NextPart_001_0124_01D56275.D21784B0--

------=_NextPart_000_0123_01D56275.D21784B0
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"

MIAGCSqGSIb3DQEHAqCAMIACAQExCzAJBgUrDgMCGgUAMIAGCSqGSIb3DQEHAQAAoIIYbjCCBUgw
ggOwoAMCAQICED0iwxgXQWuDTuHIobIkRkgwDQYJKoZIhvcNAQELBQAwgbQxCzAJBgNVBAYTAlVT
MREwDwYDVQQIEwhDb2xvcmFkbzEPMA0GA1UEBxMGRGVudmVyMSQwIgYDVQQKExtMb2NraGVlZCBN
YXJ0aW4gQ29ycG9yYXRpb24xIjAgBgNVBAsTGUNlcnRpZmljYXRpb24gQXV0aG9yaXRpZXMxNzA1
BgNVBAMTLkxvY2toZWVkIE1hcnRpbiBSb290IENlcnRpZmljYXRpb24gQXV0aG9yaXR5IDMwHhcN
MTUwOTA5MTkxMzUzWhcNNDAwOTA5MTkxODAyWjCBtDELMAkGA1UEBhMCVVMxETAPBgNVBAgTCENv
bG9yYWRvMQ8wDQYDVQQHEwZEZW52ZXIxJDAiBgNVBAoTG0xvY2toZWVkIE1hcnRpbiBDb3Jwb3Jh
dGlvbjEiMCAGA1UECxMZQ2VydGlmaWNhdGlvbiBBdXRob3JpdGllczE3MDUGA1UEAxMuTG9ja2hl
ZWQgTWFydGluIFJvb3QgQ2VydGlmaWNhdGlvbiBBdXRob3JpdHkgMzCCAaIwDQYJKoZIhvcNAQEB
BQADggGPADCCAYoCggGBAJ8SncFQtUArHQZfhqRa1B0xJnntx8d5gH2pvnNIehp7s8hwjrWQFeYU
MGqRfjkriQJ1L64vr5szzixJNt2oQcU8noR/ZgLGaUQylYgpeszqcQahPBS+p3qNr/Fw3idiNURb
cFyoRXz8mlH5DcjNm5Ol1FjaGaklJ5dXBBg4j0F0wJnGkDx5/2SJFznQer/9Tz2l6fxE41AFGipR
yGcqYPjlpeiNwFWXwjCRUCLFeDJD+EqTnJ3rj5UNpw5aFG4nkegAckQBWSxRFywNuwVPvPj6743j
fZPdGlDl9T6FIcGQ1GItvRg3H3+g5dNXOWy1JNnDohxmF+vSyn/peBicwt0INbyycd8p0oihuoCJ
OJ82XkerKBQRjD2vifK/8RLbwDtZHc3uWLKAjb0ls+VYNOeI1MGp0nFEz60E7zGvVyWSXMS4RUNd
EmzINJLAvtuJZylVBAfzxhC19ZytsGERjr+rbDprhQWkz5SOkeytV+xvD5Tfekv67CAqBS7BnnYQ
+wIDAQABo1QwUjAOBgNVHQ8BAf8EBAMCAcYwDwYDVR0TAQH/BAUwAwEB/zAdBgNVHQ4EFgQUagkc
j+L7W4vsq23LidV5X1vMyK4wEAYJKwYBBAGCNxUBBAMCAQAwDQYJKoZIhvcNAQELBQADggGBAH6c
JT1R9VIUX0/LrStRdMlvBZDTznP0oDLauicKbIewhlgvFdW0xJsmdWOO++ZKJ++q0tJdl8UXSrUv
Be7GBXG5FvHkMD2bulmbURz8hoFmFmgQAUEvPRtMQvRINuIww790miwc1vKyh5PLghKj14FX14pU
ckCP2AKjLLZ2iwLcz2av1eUBbneuQVEiyIO8ahXdi+jtwFlKfS6PtWVtlh13bwr8JaXMaD69cRGo
Ov6M+jGHHSTW0kWIL10yCdzA5MxOG5WJWFG5fJTS4yWManlAnJNO9ltNbc+WPI+RNLdyeoJG/MGJ
F3yeHg3gdViVrAOAzwx56lejBg55yUFudvh3hwyYYeQB8pRqA+Nx1t+uZypqhQrYat6ujv18WUHE
L7wgZcp0zbRJfAfAq74xbpljsvHsW5QV0un/pQv7egAXxYuFiVYKxf67yNXu6fDebr3yMWNQwLN3
LyYu/T2GsKnS4F2UUKXhdoK72TWPEOlkv0WWBzd2ZMHuqVde9FvwaDCCBaIwggQKoAMCAQICE0gA
AAApE/aPZV6t5vkAAAAAACkwDQYJKoZIhvcNAQELBQAwgbQxCzAJBgNVBAYTAlVTMREwDwYDVQQI
EwhDb2xvcmFkbzEPMA0GA1UEBxMGRGVudmVyMSQwIgYDVQQKExtMb2NraGVlZCBNYXJ0aW4gQ29y
cG9yYXRpb24xIjAgBgNVBAsTGUNlcnRpZmljYXRpb24gQXV0aG9yaXRpZXMxNzA1BgNVBAMTLkxv
Y2toZWVkIE1hcnRpbiBSb290IENlcnRpZmljYXRpb24gQXV0aG9yaXR5IDMwHhcNMTkwMjIwMDA0
NTIyWhcNMjUwOTEwMDA1NTIyWjCBjjELMAkGA1UEBhMCVVMxJDAiBgNVBAoTG0xvY2toZWVkIE1h
cnRpbiBDb3Jwb3JhdGlvbjEiMCAGA1UECxMZQ2VydGlmaWNhdGlvbiBBdXRob3JpdGllczE1MDMG
A1UEAxMsTG9ja2hlZWQgTWFydGluIENlcnRpZmljYXRpb24gQXV0aG9yaXR5IDcgRzIwggEiMA0G
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
dHBzOi8vY3JsLmV4dGVybmFsLmxtY28uY29tL2NybC9jZXJ0dXBkL2RvY3MvTE1DUC5wZGYAMB0G
A1UdDgQWBBR/MsVjIyPSxXFdD8p8UC9BPNBUmzAfBgNVHSMEGDAWgBTe3150PhWwev7Kk7mGxqpD
MbLbqzB0BgNVHR8EbTBrMGmgZ6BlhmNodHRwOi8vY3JsLmV4dGVybmFsLmxtY28uY29tL2NybC9j
ZXJ0dXBkL0xvY2toZWVkJTIwTWFydGluJTIwQ2VydGlmaWNhdGlvbiUyMEF1dGhvcml0eSUyMDcl
MjBHMi5jcmwwggFSBggrBgEFBQcBAQSCAUQwggFAMIGFBggrBgEFBQcwAoZ5aHR0cDovL2NybC5l
eHRlcm5hbC5sbWNvLmNvbS9jcmwvY2VydHVwZC91c2Fwa2NzMDcudXMubG1jby5jb21fTG9ja2hl
ZWQlMjBNYXJ0aW4lMjBDZXJ0aWZpY2F0aW9uJTIwQXV0aG9yaXR5JTIwNyUyMEcyLnA3YzCBhQYI
KwYBBQUHMAKGeWh0dHA6Ly9jcmwuZXh0ZXJuYWwubG1jby5jb20vY3JsL2NlcnR1cGQvdXNhcGtj
czA3LnVzLmxtY28uY29tX0xvY2toZWVkJTIwTWFydGluJTIwQ2VydGlmaWNhdGlvbiUyMEF1dGhv
cml0eSUyMDclMjBHMi5jcnQwLgYIKwYBBQUHMAGGImh0dHA6Ly9vY3NwLmV4dGVybmFsLmxtY28u
Y29tL29jc3AwRgYDVR0RBD8wPaAiBgorBgEEAYI3FAIDoBQMEm41NDQ1YUB1cy5sbWNvLmNvbYEX
cm9iZXJ0Lmhhc2tpbnNAbG1jby5jb20wDQYJKoZIhvcNAQELBQADggEBAFbXIEGHjH00A4T+BHmp
FAgCdFK09w6SiidIgJWpKFOInSB3qStj/cyrmt8+UHCtabm93cWXtIzL3Yv8V209aBnSLC0DzBdx
fYsmDNwzO0cvjnwH/M9Ptztw6j9WOozgPrt9QFr9ftjncy7QTiladuSwgtlWFfVZ2bfCmGX2cdsM
mDNhdtfS0mlXiPtkYiNN5Af9NguVrtL8aol+5zd98c0AGWvhmsV3NZ9JdZVqC1QgzEK+nIJNq9Ll
brV+X6Sk2eWa6dwd6Cj6b1pqmMYkWDRg6xgO12Yo9TQVnXn9BEKK4v8j/QSl/GFig7kuHDi4Ed0Z
7G2+RVd7YS9yOAzEq44wggbAMIIFqKADAgECAhMTAAVoB3M+k44vsmd1AAAABWgHMA0GCSqGSIb3
DQEBCwUAMIGOMQswCQYDVQQGEwJVUzEkMCIGA1UEChMbTG9ja2hlZWQgTWFydGluIENvcnBvcmF0
aW9uMSIwIAYDVQQLExlDZXJ0aWZpY2F0aW9uIEF1dGhvcml0aWVzMTUwMwYDVQQDEyxMb2NraGVl
ZCBNYXJ0aW4gQ2VydGlmaWNhdGlvbiBBdXRob3JpdHkgNyBHMjAeFw0xOTA0MDIxNjU5MjhaFw0y
MDA0MDExNjU5MjhaMHcxEzARBgoJkiaJk/IsZAEZFgNjb20xFDASBgoJkiaJk/IsZAEZFgRsbWNv
MRIwEAYKCZImiZPyLGQBGRYCdXMxDDAKBgNVBAsTA01TMjEOMAwGA1UECxMFVXNlcnMxGDAWBgNV
BAMTD0hhc2tpbnMsIFJvYmVydDCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAORUs26w
ht3zTl8ZibTFEo3DAw4ZFQR+ektiZD2VdnG6Ei2JDLU07cMKWfG6BitSHqOfuIVZohru5+Y6babS
zk7c9mSCZTAiNL5dWcii/zslAUeRs+BfYYvQp7cSEVBWyI92zBPcUevFW46MVABhTbU6wnzud19B
nm02yvqycJpbuovLhUDTM3xddRsRuOLxxcmVPWZzLZeL3djN+6c16yDwOyKjvDbz3yrwwLksWBSb
gKhT+gw6wClRyUqHsFAHVI2IZxwKnbN3Ms9VNc6rHD+7SO63g5H8PGi1hgwr0c7kLf9ytyZPojbm
vjZyfIo7ZDt3N0hLxfoAS+s4zmU/NdkCAwEAAaOCAyswggMnMD4GCSsGAQQBgjcVBwQxMC8GJysG
AQQBgjcVCIH/jRmD4rNLhd2TKIfS8EOCh6JBgTaE0rcDg/nwegIBZAIBCzAfBgNVHSUEGDAWBgor
BgEEAYI3CgMMBggrBgEFBQcDBDAOBgNVHQ8BAf8EBAMCBsAwYAYDVR0gBFkwVzBVBgsrBgEEAWdk
AQICBTBGMEQGCCsGAQUFBwIBFjhodHRwczovL2NybC5leHRlcm5hbC5sbWNvLmNvbS9jcmwvY2Vy
dHVwZC9kb2NzL0xNQ1AucGRmADAdBgNVHQ4EFgQU19DxyKjUWZjgpi3jGI6f3UMmlFAwHwYDVR0j
BBgwFoAU3t9edD4VsHr+ypO5hsaqQzGy26swdAYDVR0fBG0wazBpoGegZYZjaHR0cDovL2NybC5l
eHRlcm5hbC5sbWNvLmNvbS9jcmwvY2VydHVwZC9Mb2NraGVlZCUyME1hcnRpbiUyMENlcnRpZmlj
YXRpb24lMjBBdXRob3JpdHklMjA3JTIwRzIuY3JsMIIBUgYIKwYBBQUHAQEEggFEMIIBQDCBhQYI
KwYBBQUHMAKGeWh0dHA6Ly9jcmwuZXh0ZXJuYWwubG1jby5jb20vY3JsL2NlcnR1cGQvdXNhcGtj
czA3LnVzLmxtY28uY29tX0xvY2toZWVkJTIwTWFydGluJTIwQ2VydGlmaWNhdGlvbiUyMEF1dGhv
cml0eSUyMDclMjBHMi5wN2MwgYUGCCsGAQUFBzAChnlodHRwOi8vY3JsLmV4dGVybmFsLmxtY28u
Y29tL2NybC9jZXJ0dXBkL3VzYXBrY3MwNy51cy5sbWNvLmNvbV9Mb2NraGVlZCUyME1hcnRpbiUy
MENlcnRpZmljYXRpb24lMjBBdXRob3JpdHklMjA3JTIwRzIuY3J0MC4GCCsGAQUFBzABhiJodHRw
Oi8vb2NzcC5leHRlcm5hbC5sbWNvLmNvbS9vY3NwMEYGA1UdEQQ/MD2gIgYKKwYBBAGCNxQCA6AU
DBJuNTQ0NWFAdXMubG1jby5jb22BF3JvYmVydC5oYXNraW5zQGxtY28uY29tMA0GCSqGSIb3DQEB
CwUAA4IBAQBReZFQ0lIxX5uJv5sh/tN4w+F9tPmFHZIqREULbWpfavQBxYY52IcdbDflDTVFmNCg
ZEN7gib8mlP6F7vpGPh5GpVBVWWo0koI0FEhxl5jbzYeizjpY+l3q5SMewAb17WI1rIqLGvU8Zql
GpkjhvQi818EnWCGQ8Xr59ClhLdsChyHT33b6j7cBGrD3Ff6mcDPWHsXiGfgt/dCrIsMPo37P0xI
7N8YwEeuUVKcYMnfVQl6Ei5GTQ0lDkIVSxuV9U469clhX+KdTVgfcesi4f0TdavirQrkz7hC3/vX
Z6wLd6bH7TBD5od6CyRciiCgLBj28ovN7OxehUGmnSwoTEhmMYIEOzCCBDcCAQEwgaYwgY4xCzAJ
BgNVBAYTAlVTMSQwIgYDVQQKExtMb2NraGVlZCBNYXJ0aW4gQ29ycG9yYXRpb24xIjAgBgNVBAsT
GUNlcnRpZmljYXRpb24gQXV0aG9yaXRpZXMxNTAzBgNVBAMTLExvY2toZWVkIE1hcnRpbiBDZXJ0
aWZpY2F0aW9uIEF1dGhvcml0eSA3IEcyAhMTAAVoB3M+k44vsmd1AAAABWgHMAkGBSsOAwIaBQCg
ggJpMBgGCSqGSIb3DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTE5MDkwMzIwMzcw
NVowIwYJKoZIhvcNAQkEMRYEFHo8Je3nzr0N3sEns1LeJNmoTMMsMIGTBgkqhkiG9w0BCQ8xgYUw
gYIwCwYJYIZIAWUDBAEqMAsGCWCGSAFlAwQBFjAKBggqhkiG9w0DBzALBglghkgBZQMEAQIwDgYI
KoZIhvcNAwICAgCAMA0GCCqGSIb3DQMCAgFAMAcGBSsOAwIaMAsGCWCGSAFlAwQCAzALBglghkgB
ZQMEAgIwCwYJYIZIAWUDBAIBMIG3BgkrBgEEAYI3EAQxgakwgaYwgY4xCzAJBgNVBAYTAlVTMSQw
IgYDVQQKExtMb2NraGVlZCBNYXJ0aW4gQ29ycG9yYXRpb24xIjAgBgNVBAsTGUNlcnRpZmljYXRp
b24gQXV0aG9yaXRpZXMxNTAzBgNVBAMTLExvY2toZWVkIE1hcnRpbiBDZXJ0aWZpY2F0aW9uIEF1
dGhvcml0eSA3IEcyAhMTAAVn3SQ+Al3H/XaCAAAABWfdMIG5BgsqhkiG9w0BCRACCzGBqaCBpjCB
jjELMAkGA1UEBhMCVVMxJDAiBgNVBAoTG0xvY2toZWVkIE1hcnRpbiBDb3Jwb3JhdGlvbjEiMCAG
A1UECxMZQ2VydGlmaWNhdGlvbiBBdXRob3JpdGllczE1MDMGA1UEAxMsTG9ja2hlZWQgTWFydGlu
IENlcnRpZmljYXRpb24gQXV0aG9yaXR5IDcgRzICExMABWfdJD4CXcf9doIAAAAFZ90wDQYJKoZI
hvcNAQEBBQAEggEAtkoqjBrLA9ePcdoZGsF75w9lzWDCRb1fAIZlndFp6xGQxAQKgpGSUZ1lJ0az
V++uOW0BwsJU6f9BlZatiZADOVkc0AtxbrYVSei2aFAgZhGRT2/LdSti/WblIUI6gxYY9WBPC5bH
sWculKSxkhqkUTtETT41hnHGUs8iiYV7poMaX5sE4W/0mXvJjaa74DzkHWmsLgRuxL8Yc4DkmUKK
hh4YxloeCv4o4ntgFJxa00swEdhrD9foPlPA5k/l2GIxrrT9A+nvqiiNTlWdq7SMHDp1eOXEig6o
9CGFn/0u8zUUntQSO36/BT6NjppkJuDsuNO5V41ltu4OOsszoHkcVAAAAAAAAA==

------=_NextPart_000_0123_01D56275.D21784B0--


--===============6325003416344739995==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============6325003416344739995==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel

--===============6325003416344739995==--

