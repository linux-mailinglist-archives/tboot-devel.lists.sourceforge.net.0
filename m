Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F3C83ADA27
	for <lists+tboot-devel@lfdr.de>; Mon,  9 Sep 2019 15:41:15 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1i7Juj-00082Z-9R; Mon, 09 Sep 2019 13:41:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <robert.haskins@lmco.com>) id 1i7Juh-00082S-NT
 for tboot-devel@lists.sourceforge.net; Mon, 09 Sep 2019 13:41:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:In-Reply-To:References:
 Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1uDnxphFpo8kEJxZr8L1ZcsHPQUVdl7IrDsKVxEQJCs=; b=EwQRLU0o7rTaL6jy58DE22eQ4I
 zp+c7lYt0Fi0XcFVe0+4YnSXVGOezENrJliy0fdGCXo13UQWaehqt3ylonZCh/kwIdaHYfPIPJcwb
 w9jQbzz7Ag4uMFv7gcBtKqjInCVj2mgE/0TIXIMAYfRnGQF6JXQSTgH0fbIB/+Cs+9EI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:
 CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=1uDnxphFpo8kEJxZr8L1ZcsHPQUVdl7IrDsKVxEQJCs=; b=aFlD1/ieVHOWoeOR6B5a17Y8eI
 +3BY4MyLTNnuRL4K55tut8jpQPEQFXIW/hfR8FaEmSWIjgR2ih7eFDsM350rfJuwZteHHwwxk87jP
 XzHc5FnXUnhuPht6wsGVtGQsmwHpVxFqMNtTpcg5C4isy4/AR/G47XPAfJoMvb4RUOAQ=;
Received: from mailfo02.lmco.com ([192.35.35.12])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1i7Jud-00FbOx-M1
 for tboot-devel@lists.sourceforge.net; Mon, 09 Sep 2019 13:41:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lmco.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 mime-version; s=corpgw190711;
 bh=1uDnxphFpo8kEJxZr8L1ZcsHPQUVdl7IrDsKVxEQJCs=;
 b=KVgNHlBrnkbFkNYTouBQGiC3WUI4qe2Og3z4IgJ21p/wDXWS5V9/ZaooJyOowB9xt7d+
 u3hskbtl0jjnyZhkvnZP2Yna3wQiQJVCzpo+WOYKV83NTo8uUdXPnDptjHzI6Qj/39Zu
 Q27WMvqGs4AkjfQpO+DXS8XyLgP5nie1FB6XGXXfFxbKsq9ER3KPdMb3tLK/K45jE7dp
 3cL6MPp/bb8GA12iooUGkDNKag35RTX8CnbEidPu0dNUYhSQD2Uqy/XyhW3FkL1Zv8b1
 HyWuc6MORI6UO2j2XUauCppcmkUneC/X8E0bT3jh2a/KwU+bVItaPxVsIg9LAeYeRyeu yA== 
Received: from lmxpvfgd08w01.us.lmco.com (lmxpvfg08w01.ems.lmco.com
 [172.23.84.48])
 by mailfo02.lmco.com (8.16.0.22/8.16.0.22) with ESMTP id x89DePQO001449;
 Mon, 9 Sep 2019 13:40:35 GMT
Received: from lmxpvfgd08w05.us.lmco.com (172.23.84.52) by
 lmxpvfgd08w01.us.lmco.com (172.23.84.48) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
 15.1.1466.3; Mon, 9 Sep 2019 09:40:13 -0400
Received: from lmxpvfgd08w05.us.lmco.com ([172.23.84.52]) by
 lmxpvfgd08w05.us.lmco.com ([172.23.84.52]) with mapi id 15.01.1466.003; Mon,
 9 Sep 2019 09:40:13 -0400
From: "Haskins, Robert" <robert.haskins@lmco.com>
To: "greg@idfusion.net" <greg@idfusion.net>
Thread-Topic: EXTERNAL: Re: [tboot-devel] GETSEC[SENTER]....and then reset
Thread-Index: AdVijl5TUWltJHjOR6SN943Yoh6R4ADVv9OAAEtsstA=
Date: Mon, 9 Sep 2019 13:40:13 +0000
Message-ID: <20714fedc99d4e0d8b8c8d54434b3e1a@lmco.com>
References: <fc9d52706f3d43549996876d4a0b7030@lmco.com>
 <20190907213307.GA12122@wind.enjellic.com>
In-Reply-To: <20190907213307.GA12122@wind.enjellic.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [172.23.84.15]
MIME-Version: 1.0
X-LM-Outbound: External 172.23.84.48 cntry=**
 g=1S_cOWij1VVFunklrhIgjToKjYIvWQlH q=x89DePQO001449 m=6
X-LM-OSENDER: robert.haskins@lmco.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-09-09_06:, , signatures=0
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.5 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1i7Jud-00FbOx-M1
Subject: Re: [tboot-devel] EXTERNAL: Re:  GETSEC[SENTER]....and then reset
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
Cc: "tboot-devel@lists.sourceforge.net" <tboot-devel@lists.sourceforge.net>
Content-Type: multipart/mixed; boundary="===============7909836660540703964=="
Errors-To: tboot-devel-bounces@lists.sourceforge.net

--===============7909836660540703964==
Content-Language: en-US
Content-Type: multipart/signed; protocol="application/x-pkcs7-signature";
	micalg=SHA1; boundary="----=_NextPart_000_025C_01D566F2.934948F0"

------=_NextPart_000_025C_01D566F2.934948F0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Thanks for your response! My responses are here:

1) We do have serial logging setup and working. I will work to get the logs
off the machine.
2) The platform is TPM2.
3) I am not sure what you mean by this question. Are you referring to index
0x1c10103? (see https://sourceforge.net/p/tboot/mailman/message/35551544/)
4) We are not implementing any launch control policy.

Thank you for your help!

-----Original Message-----
From: Dr. Greg <greg@idfusion.net> 
Sent: Saturday, September 7, 2019 5:33 PM
To: Haskins, Robert (US N-INCADENCE STRATEGIC SOLUTIONS CORPORATION)
<robert.haskins@lmco.com>
Cc: tboot-devel@lists.sourceforge.net
Subject: EXTERNAL: Re: [tboot-devel] GETSEC[SENTER]....and then reset

On Tue, Sep 03, 2019 at 08:37:06PM +0000, Haskins, Robert wrote:

Good afternoon Robert, I hope your weekend is going well.

> I have a Getac S410 G2 that I am trying to get TBOOT working on under 
> a vanilla RHEL 7.6 O/S with TBOOT 1.9.10. The TBOOT startup looks fine:
> 
> TXT.ERRCODE: 0x0
> 
> SINIT match on "the 6th_7th_gen_i5_i7-SINIT_79.bin" file
> 
> "last boot has no error"
> 
> Once it gets to GETSEC[SENTER], it just resets back to grub/startup
screen.
> 
> What am I doing wrong?

It could be a plethora of things.

It would be helpful to have logs from the first phase execution of tboot.
Since tboot is generating a hard platform reset you will need serial logging
or something else to capture the logs unless you are able to get memory
based logging to work.

Is the platform TPM1 or TPM2?  Given it is i6/i7 I'm assuming the latter.

Are the required TPM NVRAM locations configured?

Are you attempting to implement any type of launch control policy?

Logs and answers to the above questions should help get a conversation
started.

Have a good evening.

Dr. Greg

As always,
Dr. Greg Wettstein, Ph.D, Worker
IDfusion, LLC               SGX secured infrastructure and
4206 N. 19th Ave.           autonomously self-defensive platforms.
Fargo, ND  58102
PH: 701-281-1686            EMAIL: greg@idfusion.net
----------------------------------------------------------------------------
--
"Sweeny's Law: The length of a progress report is inversely proportional  to
the amount of progress."

------=_NextPart_000_025C_01D566F2.934948F0
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
ggJpMBgGCSqGSIb3DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTE5MDkwOTEzNDAx
MVowIwYJKoZIhvcNAQkEMRYEFMYKyRz8MsTONRefVU5UVDTPZV2mMIGTBgkqhkiG9w0BCQ8xgYUw
gYIwCwYJYIZIAWUDBAEqMAsGCWCGSAFlAwQBFjAKBggqhkiG9w0DBzALBglghkgBZQMEAQIwDgYI
KoZIhvcNAwICAgCAMA0GCCqGSIb3DQMCAgFAMAcGBSsOAwIaMAsGCWCGSAFlAwQCAzALBglghkgB
ZQMEAgIwCwYJYIZIAWUDBAIBMIG3BgkrBgEEAYI3EAQxgakwgaYwgY4xCzAJBgNVBAYTAlVTMSQw
IgYDVQQKExtMb2NraGVlZCBNYXJ0aW4gQ29ycG9yYXRpb24xIjAgBgNVBAsTGUNlcnRpZmljYXRp
b24gQXV0aG9yaXRpZXMxNTAzBgNVBAMTLExvY2toZWVkIE1hcnRpbiBDZXJ0aWZpY2F0aW9uIEF1
dGhvcml0eSA3IEcyAhMTAAVn3SQ+Al3H/XaCAAAABWfdMIG5BgsqhkiG9w0BCRACCzGBqaCBpjCB
jjELMAkGA1UEBhMCVVMxJDAiBgNVBAoTG0xvY2toZWVkIE1hcnRpbiBDb3Jwb3JhdGlvbjEiMCAG
A1UECxMZQ2VydGlmaWNhdGlvbiBBdXRob3JpdGllczE1MDMGA1UEAxMsTG9ja2hlZWQgTWFydGlu
IENlcnRpZmljYXRpb24gQXV0aG9yaXR5IDcgRzICExMABWfdJD4CXcf9doIAAAAFZ90wDQYJKoZI
hvcNAQEBBQAEggEAQ1fN5OVJ9o/lkg77Zd1XLTrhuzh9J0zabMvkpfceaf8rXq8aI/QXJQSgzVMd
zoA3zc4T0IS0fS/Q+V09ss6M4iD8IW8/U7a140YWKU+fHNPc5lkGFF62XdPQOuDaCll49q6W9q2+
rQ8H0UzstdDBGht5ygj8nC3FuL+mJCSYPn9UsHIkd/as4XgCYTFA4vaoUgIB+lVhFmESf6m0caoK
FdU8UWpcwSF3b+qo3Zd7N/lUowadO2UYfvedh2117YPTLDoRy+8mnBcg2eVOPizqYbU5jLIIafaE
J2viQKUCxWOUslGuW6LVH/1pG72JpdDlILJNeDXslDj+tMXNv/GOugAAAAAAAA==

------=_NextPart_000_025C_01D566F2.934948F0--


--===============7909836660540703964==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============7909836660540703964==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel

--===============7909836660540703964==--

