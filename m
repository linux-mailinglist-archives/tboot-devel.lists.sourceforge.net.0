Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EAFB12AE90
	for <lists+tboot-devel@lfdr.de>; Mon, 27 May 2019 08:24:33 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1hV93a-0007Ka-Ep; Mon, 27 May 2019 06:24:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lukasz.hawrylko@intel.com>) id 1hV93Z-0007KU-Jf
 for tboot-devel@lists.sourceforge.net; Mon, 27 May 2019 06:24:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:In-Reply-To:References:Message-ID:Date
 :Subject:To:From:Content-Type:Sender:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DbkLr8Kdg+GZa7wVC+SRxqOOGaYEhpTgEAKhZ3Qww2Y=; b=OiqwuAqAXTu3k2FZ747j2KPFZy
 wuMJtbp6f6R7MiU2s6dfkbHAnxZSmis1sTgbZ5JVr8TQHb1sAvf0AGoGsvFgdymMyU4gWMDr5W1JD
 79wJPDDUFtqIVkmRVm2A/54gKqv+uRgBAaKa/xF2lVgXM/g6S5tpViqROZYeGlKo1HkU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:In-Reply-To:References:Message-ID:Date:Subject:To:From:
 Content-Type:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=DbkLr8Kdg+GZa7wVC+SRxqOOGaYEhpTgEAKhZ3Qww2Y=; b=llWxfGGrCvt8/2UqVycgPuh3jr
 2Zmy9+ursYWq1o2/HHXR8MASfgFtbYw+JPmUOzbEHuoyn4/iDt1GhtzrDDDP/3fZw2/rPWjdEeE4z
 9xjb60Sieu7yNVfMJQj+XRHLnd7GD2BKtxFwxj7yXM8w+bEiaUB9rDsWqmCbnaMzLfWI=;
Received: from mga14.intel.com ([192.55.52.115])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hV93X-00EmXD-Fl
 for tboot-devel@lists.sourceforge.net; Mon, 27 May 2019 06:24:25 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Content-Type: multipart/mixed; boundary="===============8796955237818137106=="
MIME-Version: 1.0
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 May 2019 23:24:15 -0700
X-ExtLoop1: 1
Received: from irsmsx151.ger.corp.intel.com ([163.33.192.59])
 by orsmga008.jf.intel.com with ESMTP; 26 May 2019 23:24:14 -0700
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.93]) by
 IRSMSX151.ger.corp.intel.com ([169.254.4.155]) with mapi id 14.03.0415.000;
 Mon, 27 May 2019 07:24:13 +0100
From: "Hawrylko, Lukasz" <lukasz.hawrylko@intel.com>
To: "tboot-devel@lists.sourceforge.net" <tboot-devel@lists.sourceforge.net>
Thread-Topic: [tboot-devel] Create LCP_PCONF_ELEMENT with TPM 2.0
Thread-Index: AQHVEdZncPpEx2WG00OR6IqUEWISMqZ+dSYA
Date: Mon, 27 May 2019 06:24:12 +0000
Message-ID: <612878ba3e41d9ac7060976d94c2d8511e2a8c08.camel@intel.com>
References: <CAMD4Mu7yGO3Vm6G9PWup_MhB6Ab3RD3z4BRSec2wQQ8TbcpepQ@mail.gmail.com>
In-Reply-To: <CAMD4Mu7yGO3Vm6G9PWup_MhB6Ab3RD3z4BRSec2wQQ8TbcpepQ@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [172.28.180.110]
MIME-Version: 1.0
X-Spam-Score: 1.0 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
X-Headers-End: 1hV93X-00EmXD-Fl
Subject: Re: [tboot-devel] Create LCP_PCONF_ELEMENT with TPM 2.0
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
Errors-To: tboot-devel-bounces@lists.sourceforge.net

--===============8796955237818137106==
Content-Language: en-US
Content-Type: multipart/signed; micalg=sha-1;
	protocol="application/x-pkcs7-signature"; boundary="=-wm5KEdPWB6Cep7Rg/1KZ"

--=-wm5KEdPWB6Cep7Rg/1KZ
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Dirk

LCP for TPM 2.0 is supported by lcp-gen2 tool. This tool allows to add PCON=
F element.

Thanks,
Lukasz

-----Original Message-----
From: Dirk <xanthein310@gmail.com>
To: tboot-devel@lists.sourceforge.net
Subject: [tboot-devel] Create LCP_PCONF_ELEMENT with TPM 2.0
Date: Fri, 24 May 2019 10:13:27 +0800

Hi,

I am using tboot 1.9.9 and find there seems no way to create LCP_PCONF_ELEM=
ENT
with TPM 2.0. Tool lcp2_crtpolelt only support mle, custom, sbios and stm. =
Is there any
way to create pconf element?

Regards,
Dirk

_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net

https://lists.sourceforge.net/lists/listinfo/tboot-devel



--=-wm5KEdPWB6Cep7Rg/1KZ
Content-Type: application/x-pkcs7-signature; name="smime.p7s"
Content-Disposition: attachment; filename="smime.p7s"
Content-Transfer-Encoding: base64

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
qaf3z+pX4yJmyPzdHQO5UxfwvHA8hHPUXhX83MDYcYYDjP+aNwVPjwo+m9bLf7GrO/d5e0EVsQID
AQABo4ICNTCCAjEwHQYDVR0OBBYEFPHUkwveLWwE8tkGA3QLJU3A3VOqMB8GA1UdIwQYMBaAFNpB
I5xaj3GvV4M+INPjZdsMywvbMGUGA1UdHwReMFwwWqBYoFaGVGh0dHA6Ly93d3cuaW50ZWwuY29t
L3JlcG9zaXRvcnkvQ1JML0ludGVsJTIwRXh0ZXJuYWwlMjBCYXNpYyUyMElzc3VpbmclMjBDQSUy
MDRCLmNybDCBnwYIKwYBBQUHAQEEgZIwgY8wIgYIKwYBBQUHMAGGFmh0dHA6Ly9vY3NwLmludGVs
LmNvbS8waQYIKwYBBQUHMAKGXWh0dHA6Ly93d3cuaW50ZWwuY29tL3JlcG9zaXRvcnkvY2VydGlm
aWNhdGVzL0ludGVsJTIwRXh0ZXJuYWwlMjBCYXNpYyUyMElzc3VpbmclMjBDQSUyMDRCLmNydDAL
BgNVHQ8EBAMCB4AwPAYJKwYBBAGCNxUHBC8wLQYlKwYBBAGCNxUIhsOMdYSZ5VGD/YEohY6fU4KR
wAlngd69OZXwQwIBZAIBCTAfBgNVHSUEGDAWBggrBgEFBQcDBAYKKwYBBAGCNwoDDDApBgkrBgEE
AYI3FQoEHDAaMAoGCCsGAQUFBwMEMAwGCisGAQQBgjcKAwwwTwYDVR0RBEgwRqApBgorBgEEAYI3
FAIDoBsMGWx1a2Fzei5oYXdyeWxrb0BpbnRlbC5jb22BGWx1a2Fzei5oYXdyeWxrb0BpbnRlbC5j
b20wDQYJKoZIhvcNAQEFBQADggEBAG4Dd2NWIH5N3CXQQGWtunka9jgZG0cYpO1uXoBzRliNvmIC
sjfFEnt6UtzYcJ3i3muLy8vlanT5KF8gHM3I/SwCG9f1LgAV1UgDgoUQuInQEi4llIVJcBeAawXi
Zo3vp286gOi+Hqlo4On9k+p2QK8+TVNWJVby/CLQwO59HuZ7vevmn3xWJaFW06Z7Brr6rnPUFJsH
B5zWdoSc3ije0IRrVc7dquyRjfPsdIwShbhc9NgogaQcGYjTG8JfjaALcrE8Gg5dswDn+9bjooAz
nuQtivo1KlO0nUh36bi3oOd96SR6RfrnnBqmBK8DFyEhra8gDv82ztn/A4AhtvoCkjMxggIXMIIC
EwIBATCBkDB5MQswCQYDVQQGEwJVUzELMAkGA1UECBMCQ0ExFDASBgNVBAcTC1NhbnRhIENsYXJh
MRowGAYDVQQKExFJbnRlbCBDb3Jwb3JhdGlvbjErMCkGA1UEAxMiSW50ZWwgRXh0ZXJuYWwgQmFz
aWMgSXNzdWluZyBDQSA0QgITMwAAcfNga0/++LqE0AAAAABx8zAJBgUrDgMCGgUAoF0wGAYJKoZI
hvcNAQkDMQsGCSqGSIb3DQEHATAcBgkqhkiG9w0BCQUxDxcNMTkwNTI3MDYyNDEwWjAjBgkqhkiG
9w0BCQQxFgQUqsbXy8jaNj5n5cevtF419cWrw/EwDQYJKoZIhvcNAQEBBQAEggEAwpf+cvAJElqa
B7jrq29ppfn1Fdhc1dRPxHwhKpmqv6b0DzYB/zYfyMUKc4LKW9nBnHPhZpHucr3L5nptYQu84IZf
+54eJSrYbPGADVz4lKdfGqD1TQSdsmps9MftUzkTi/2fsR2V/th2YVNrS+/y606tuTYl/9BamQcC
BXFq1/EjByH0W2TqYSJCBj9pXInlbhOjMCdTPD4q5nMyMV4TWUWY94rJ54ns9jgOz+sP0zfmDoon
QcH8pOoQul2U4rlhEMWnQRdIawbcTaZBksv03sqOtaFLu7bE1Xi9+t2MzljhBK1ijmA4K9+1/aSD
auyt4vPdGBxhGZ/GgnuBOCImYgAAAAAAAA==


--=-wm5KEdPWB6Cep7Rg/1KZ--

--===============8796955237818137106==
Content-Type: multipart/alternative; boundary="===============3132995771248077668=="
MIME-Version: 1.0
Content-Disposition: inline

--===============3132995771248077668==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

--------------------------------------------------------------------

Intel Technology Poland sp. z o.o.
ul. Slowackiego 173 | 80-298 Gdansk | Sad Rejonowy Gdansk Polnoc | VII Wydz=
ial Gospodarczy Krajowego Rejestru Sadowego - KRS 101882 | NIP 957-07-52-31=
6 | Kapital zakladowy 200.000 PLN.

Ta wiadomosc wraz z zalacznikami jest przeznaczona dla okreslonego adresata=
 i moze zawierac informacje poufne. W razie przypadkowego otrzymania tej wi=
adomosci, prosimy o powiadomienie nadawcy oraz trwale jej usuniecie; jakiek=
olwiek
przegladanie lub rozpowszechnianie jest zabronione.
This e-mail and any attachments may contain confidential material for the s=
ole use of the intended recipient(s). If you are not the intended recipient=
, please contact the sender and delete all copies; any review or distributi=
on by
others is strictly prohibited.

--===============3132995771248077668==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

<p>---------------------------------------------------------------------<br>
<strong style=3D"line-height: 11.25pt;"><span  style=3D"font-size: 9pt; col=
or:
#595959;"><span style=3D"font-family: 'Arial Narrow', sans-serif;">Intel
Technology Poland sp. z o.o.<br></span></span></strong><span style=3D"color:
#595959; font-family: 'Arial Narrow', sans-serif; font-size: 9pt; line-heig=
ht:
11.25pt;">ul. S&#322owackiego 173 | 80-298 Gda&#324sk | S&#261d Rejonowy Gd=
a&#324sk
P&#243&#322noc
| VII Wydzia&#322 Gospodarczy Krajowego Rejestru S&#261dowego - KRS 101882 =
| NIP
957-07-52-316 | Kapita&#322 zak&#322adowy 200.000 PLN.</span></p><p>

<span style=3D"font-size:8.0pt;font-family:&quot;Arial
Narrow&quot;,&quot;sans-serif&quot;;
mso-fareast-font-family:&quot;Times New
Roman&quot;;mso-bidi-font-family:Arial;
color:#595959;mso-ansi-language:EN-US;mso-fareast-language:EN-US;mso-bidi-l=
anguage:
AR-SA">Ta wiadomo&#347&#263 wraz z za&#322&#261cznikami jest przeznaczona d=
la okre&#347lonego
adresata i mo&#380e zawiera&#263 informacje poufne. W razie przypadkowego o=
trzymania
tej wiadomo&#347ci, prosimy o powiadomienie nadawcy oraz trwa&#322e jej usu=
ni&#281cie;
jakiekolwiek przegl&#261danie lub rozpowszechnianie jest zabronione.<br>
This e-mail and any attachments may contain confidential material for the s=
ole
use of the intended recipient(s). If you are not the intended recipient,
please
contact the sender and delete all copies; any review or distribution by oth=
ers
is strictly prohibited.</span></p><p class=3D"MsoNormal"><o:p></o:p></p>

--===============3132995771248077668==--
--===============8796955237818137106==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============8796955237818137106==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel

--===============8796955237818137106==--

