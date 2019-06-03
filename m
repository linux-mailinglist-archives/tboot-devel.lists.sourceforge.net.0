Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B936832CB1
	for <lists+tboot-devel@lfdr.de>; Mon,  3 Jun 2019 11:23:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1hXjBb-0000VT-MQ; Mon, 03 Jun 2019 09:23:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lukasz.hawrylko@intel.com>) id 1hXjBa-0000VN-RD
 for tboot-devel@lists.sourceforge.net; Mon, 03 Jun 2019 09:23:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:In-Reply-To:References:Message-ID:Date
 :Subject:To:From:Content-Type:Sender:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=R87RbIBpnBOnlPGs2nltR5zc7WFSV3EUx+goNLk1s80=; b=C5jkmQJ1jZajePpl9qVueftBC5
 sYOnZ/Q5IoynWfecrZx0myaP0hbi7j2K918O9wqr9MeZLywMJc7xqSJc1+gWMS2ixdlido2I8hW84
 O07GV+F12NmbtnX6TvEFlmoGZz6YdMm/LeUu7dONwlQ/95lOp0avhxPssxMVN2MuZ6oA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:In-Reply-To:References:Message-ID:Date:Subject:To:From:
 Content-Type:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=R87RbIBpnBOnlPGs2nltR5zc7WFSV3EUx+goNLk1s80=; b=aSmsnJ/N1dXha9yjX6dPSmhQJx
 AOGlCK439PkdhOVta9nurMI0foi3z6f7SwFK8kyfoWbmnHfTk4Y0CrcTgCbBdRpQyqHvQzpR0I/SH
 Cssd1sxDJlv4RUdc08TJirdMMwsdc7TUgTIbbS+j/Whbgz3CL6N7gkH3lQXcRChlXTcI=;
Received: from mga05.intel.com ([192.55.52.43])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hXjBY-0031Bd-8r
 for tboot-devel@lists.sourceforge.net; Mon, 03 Jun 2019 09:23:22 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Content-Type: multipart/mixed; boundary="===============4219743019962154792=="
MIME-Version: 1.0
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Jun 2019 02:23:14 -0700
X-ExtLoop1: 1
Received: from irsmsx152.ger.corp.intel.com ([163.33.192.66])
 by fmsmga008.fm.intel.com with ESMTP; 03 Jun 2019 02:23:13 -0700
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.93]) by
 IRSMSX152.ger.corp.intel.com ([169.254.6.31]) with mapi id 14.03.0415.000;
 Mon, 3 Jun 2019 10:23:13 +0100
From: "Hawrylko, Lukasz" <lukasz.hawrylko@intel.com>
To: "xanthein310@gmail.com" <xanthein310@gmail.com>,
 "tboot-devel@lists.sourceforge.net" <tboot-devel@lists.sourceforge.net>
Thread-Topic: [tboot-devel] Create LCP_PCONF_ELEMENT with TPM 2.0
Thread-Index: AQHVEdZncPpEx2WG00OR6IqUEWISMqZ+dSYAgAHBAYCACXFTgA==
Date: Mon, 3 Jun 2019 09:23:11 +0000
Message-ID: <7df61eeaba0339c5b11826d3b4eee953b1e6906d.camel@intel.com>
References: <CAMD4Mu7yGO3Vm6G9PWup_MhB6Ab3RD3z4BRSec2wQQ8TbcpepQ@mail.gmail.com>
 <612878ba3e41d9ac7060976d94c2d8511e2a8c08.camel@intel.com>
 <CAMD4Mu4tUOOBDjh3q6SHQhEzx+5_=UCVdvJaB+XvNE+49pEyAQ@mail.gmail.com>
In-Reply-To: <CAMD4Mu4tUOOBDjh3q6SHQhEzx+5_=UCVdvJaB+XvNE+49pEyAQ@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [172.28.180.110]
MIME-Version: 1.0
X-Spam-Score: 1.0 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: intel.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
X-Headers-End: 1hXjBY-0031Bd-8r
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

--===============4219743019962154792==
Content-Language: en-US
Content-Type: multipart/signed; micalg=sha-1;
	protocol="application/x-pkcs7-signature"; boundary="=-Qqa470orhITprxyqHtqq"

--=-Qqa470orhITprxyqHtqq
Content-Type: multipart/alternative; boundary="=-+tvAPU+59pT8zop6XxbG"


--=-+tvAPU+59pT8zop6XxbG
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Dirk

I don't know if there any any official, public accessible tool for dumping =
PCRs. However structure
of file required by lcp-gen2 is quite simple, it is described in util.py li=
ne 355.

Thanks,
Lukasz

-----Original Message-----
From: Dirk <xanthein310@gmail.com>
To: tboot-devel@lists.sourceforge.net <tboot-devel@lists.sourceforge.net>
Subject: Re: [tboot-devel] Create LCP_PCONF_ELEMENT with TPM 2.0
Date: Tue, 28 May 2019 17:11:13 +0800

Hi Lukasz,

Thanks for the reply. I tried to run lcp-gen2 tool and found I can't create=
 valid PCR dump=20
file. In UserGuide.txt of lcp-gen2, mentioned that the PCR dump file can be=
 created by
PCRDump2. But I can't find the tool. Do you have any suggestion which tool =
I can use
to dump the PCR file?

Regards,
Dirk
=20

Hawrylko, Lukasz <lukasz.hawrylko@intel.com> =E6=96=BC 2019=E5=B9=B45=E6=9C=
=8827=E6=97=A5 =E9=80=B1=E4=B8=80 =E4=B8=8B=E5=8D=882:24=E5=AF=AB=E9=81=93=
=EF=BC=9A
> Hi Dirk
>=20
>=20
>=20
> LCP for TPM 2.0 is supported by lcp-gen2 tool. This tool allows to add PC=
ONF element.
>=20
>=20
>=20
> Thanks,
>=20
> Lukasz
>=20
>=20
>=20
> -----Original Message-----
>=20
> From: Dirk <xanthein310@gmail.com>
>=20
> To: tboot-devel@lists.sourceforge.net
>=20
> Subject: [tboot-devel] Create LCP_PCONF_ELEMENT with TPM 2.0
>=20
> Date: Fri, 24 May 2019 10:13:27 +0800
>=20
>=20
>=20
> Hi,
>=20
>=20
>=20
> I am using tboot 1.9.9 and find there seems no way to create LCP_PCONF_EL=
EMENT
>=20
> with TPM 2.0. Tool lcp2_crtpolelt only support mle, custom, sbios and stm=
. Is there any
>=20
> way to create pconf element?
>=20
>=20
>=20
> Regards,
>=20
> Dirk
>=20
>=20
>=20
> _______________________________________________
>=20
> tboot-devel mailing list
>=20
> tboot-devel@lists.sourceforge.net
>=20
>=20
>=20
> https://lists.sourceforge.net/lists/listinfo/tboot-devel
>=20
>=20
>=20
>=20
>=20
> ---------------------------------------------------------------------
>=20
> Intel
> Technology Poland sp. z o.o.
> ul. S&#322owackiego 173 | 80-298 Gda&#324sk | S&#261d Rejonowy Gda&#324sk
> P&#243&#322noc
> | VII Wydzia&#322 Gospodarczy Krajowego Rejestru S&#261dowego - KRS 10188=
2 | NIP
> 957-07-52-316 | Kapita&#322 zak&#322adowy 200.000 PLN.
>=20
> Ta wiadomo&#347&#263 wraz z za&#322&#261cznikami jest przeznaczona dla ok=
re&#347lonego
> adresata i mo&#380e zawiera&#263 informacje poufne. W razie przypadkowego=
 otrzymania
> tej wiadomo&#347ci, prosimy o powiadomienie nadawcy oraz trwa&#322e jej u=
suni&#281cie;
> jakiekolwiek przegl&#261danie lub rozpowszechnianie jest zabronione.
>=20
> This e-mail and any attachments may contain confidential material for the=
 sole
> use of the intended recipient(s). If you are not the intended recipient,
> please
> contact the sender and delete all copies; any review or distribution by o=
thers
> is strictly prohibited.
> _______________________________________________
>=20
> tboot-devel mailing list
>=20
> tboot-devel@lists.sourceforge.net
>=20
> https://lists.sourceforge.net/lists/listinfo/tboot-devel
>=20

_______________________________________________tboot-devel mailing=20
listtboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel


--=-+tvAPU+59pT8zop6XxbG
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html dir=3D"ltr"><head></head><body style=3D"text-align:left; direction:lt=
r;"><div>Hi Dirk</div><div><br></div><div>I don't know if there any any off=
icial, public accessible tool for dumping PCRs. However structure of file r=
equired by lcp-gen2 is quite simple, it is described in util.py line 355.</=
div><div><br></div><div>Thanks,</div><div>Lukasz</div><div><br></div><div>-=
----Original Message-----</div><div><b>From</b>: Dirk &lt;<a href=3D"mailto=
:Dirk%20%3cxanthein310@gmail.com%3e">xanthein310@gmail.com</a>&gt;</div><di=
v><b>To</b>: tboot-devel@lists.sourceforge.net &lt;<a href=3D"mailto:%22tbo=
ot-devel@lists.sourceforge.net%22%20%3ctboot-devel@lists.sourceforge.net%3e=
">tboot-devel@lists.sourceforge.net</a>&gt;</div><div><b>Subject</b>: Re: [=
tboot-devel] Create LCP_PCONF_ELEMENT with TPM 2.0</div><div><b>Date</b>: T=
ue, 28 May 2019 17:11:13 +0800</div><div><br></div><!-- text/html --><meta =
http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8"><div dir=
=3D"ltr"><div>Hi Lukasz,</div><div><br></div><div>Thanks for the reply. I t=
ried to run lcp-gen2 tool and found I can't create valid PCR dump <br></div=
><div>file. In UserGuide.txt of lcp-gen2, mentioned that the PCR dump file =
can be created by</div><div>PCRDump2. But I can't find the tool. Do you hav=
e any suggestion which tool I can use</div><div>to dump the PCR file?</div>=
<div><br></div><div>Regards,</div><div>Dirk<br> </div><br><div class=3D"gma=
il_quote"><div dir=3D"ltr" class=3D"gmail_attr">Hawrylko, Lukasz &lt;<a hre=
f=3D"mailto:lukasz.hawrylko@intel.com">lukasz.hawrylko@intel.com</a>&gt; =
=E6=96=BC 2019=E5=B9=B45=E6=9C=8827=E6=97=A5 =E9=80=B1=E4=B8=80 =E4=B8=8B=
=E5=8D=882:24=E5=AF=AB=E9=81=93=EF=BC=9A<br></div><blockquote type=3D"cite"=
 style=3D"margin:0 0 0 .8ex; border-left:2px #729fcf solid;padding-left:1ex=
">Hi Dirk<br>
<br>
LCP for TPM 2.0 is supported by lcp-gen2 tool. This tool allows to add PCON=
F element.<br>
<br>
Thanks,<br>
Lukasz<br>
<br>
-----Original Message-----<br>
From: Dirk &lt;<a href=3D"mailto:xanthein310@gmail.com" target=3D"_blank">x=
anthein310@gmail.com</a>&gt;<br>
To: <a href=3D"mailto:tboot-devel@lists.sourceforge.net" target=3D"_blank">=
tboot-devel@lists.sourceforge.net</a><br>
Subject: [tboot-devel] Create LCP_PCONF_ELEMENT with TPM 2.0<br>
Date: Fri, 24 May 2019 10:13:27 +0800<br>
<br>
Hi,<br>
<br>
I am using tboot 1.9.9 and find there seems no way to create LCP_PCONF_ELEM=
ENT<br>
with TPM 2.0. Tool lcp2_crtpolelt only support mle, custom, sbios and stm. =
Is there any<br>
way to create pconf element?<br>
<br>
Regards,<br>
Dirk<br>
<br>
_______________________________________________<br>
tboot-devel mailing list<br>
<a href=3D"mailto:tboot-devel@lists.sourceforge.net" target=3D"_blank">tboo=
t-devel@lists.sourceforge.net</a><br>
<br>
<a href=3D"https://lists.sourceforge.net/lists/listinfo/tboot-devel" rel=3D=
"noreferrer" target=3D"_blank">https://lists.sourceforge.net/lists/listinfo=
/tboot-devel</a><br>
<br>
<br>
<p>---------------------------------------------------------------------<br=
>
<b style=3D"line-height:11.25pt"><span style=3D"font-size:9pt;color:rgb(89,=
89,89)"><span style=3D"font-family:&quot;Arial Narrow&quot;,sans-serif">Int=
el
Technology Poland sp. z o.o.<br></span></span></b><span style=3D"color:rgb(=
89,89,89);font-family:&quot;Arial Narrow&quot;,sans-serif;font-size:9pt;lin=
e-height:11.25pt">ul. S&amp;#322owackiego 173 | 80-298 Gda&amp;#324sk | S&a=
mp;#261d Rejonowy Gda&amp;#324sk
P&amp;#243&amp;#322noc
| VII Wydzia&amp;#322 Gospodarczy Krajowego Rejestru S&amp;#261dowego - KRS=
 101882 | NIP
957-07-52-316 | Kapita&amp;#322 zak&amp;#322adowy 200.000 PLN.</span></p><p=
>

<span>Ta wiadomo&amp;#347&amp;#263 wraz z za&amp;#322&amp;#261cznikami jest=
 przeznaczona dla okre&amp;#347lonego
adresata i mo&amp;#380e zawiera&amp;#263 informacje poufne. W razie przypad=
kowego otrzymania
tej wiadomo&amp;#347ci, prosimy o powiadomienie nadawcy oraz trwa&amp;#322e=
 jej usuni&amp;#281cie;
jakiekolwiek przegl&amp;#261danie lub rozpowszechnianie jest zabronione.<br=
>
This e-mail and any attachments may contain confidential material for the s=
ole
use of the intended recipient(s). If you are not the intended recipient,
please
contact the sender and delete all copies; any review or distribution by oth=
ers
is strictly prohibited.</span></p><p class=3D"MsoNormal"><u></u><u></u></p>
_______________________________________________<br>
tboot-devel mailing list<br>
<a href=3D"mailto:tboot-devel@lists.sourceforge.net" target=3D"_blank">tboo=
t-devel@lists.sourceforge.net</a><br>
<a href=3D"https://lists.sourceforge.net/lists/listinfo/tboot-devel" rel=3D=
"noreferrer" target=3D"_blank">https://lists.sourceforge.net/lists/listinfo=
/tboot-devel</a><br>
</blockquote></div></div>
<pre>_______________________________________________</pre><pre>tboot-devel =
mailing list</pre><a href=3D"mailto:tboot-devel@lists.sourceforge.net"><pre=
>tboot-devel@lists.sourceforge.net</pre></a><pre><br></pre><a href=3D"https=
://lists.sourceforge.net/lists/listinfo/tboot-devel"><pre>https://lists.sou=
rceforge.net/lists/listinfo/tboot-devel</pre></a><pre><br></pre></body></ht=
ml>

--=-+tvAPU+59pT8zop6XxbG--

--=-Qqa470orhITprxyqHtqq
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
hvcNAQkDMQsGCSqGSIb3DQEHATAcBgkqhkiG9w0BCQUxDxcNMTkwNjAzMDkyMzA5WjAjBgkqhkiG
9w0BCQQxFgQUVITVn0WV13evDLR+nRpAlz6dUiswDQYJKoZIhvcNAQEBBQAEggEAgADK6yE+bR7X
1+k08ZILeEpL+uR7sMKEiJyo8wh9qtbXUf+uKtWHIp4bJct4FD9rnxDnOzfIwvWvv0bnGIb4Sx51
cqxG8SovBvMbE1JL2qvoIENwxkFHAiR9uMUFtj5CWoov0xJnNQG2+N9EJgQJnzHbK9vrIGbjOIIE
GBVb4bJ9C0pftpll/msoYiCM5ikLEVe5PFZx+FWsZMUrTWenYtdv2ECo2k5YtFIsbuXbjNyUGJ6Z
rBg4xJikQ+MULtoy2mviowJcqdasLX5vS1xuacy4if9S9U6qn6wxwUPjcjYJQJnpduHnD17I70nN
WvW8BpgexVMy8BbD8eW8n5z8xAAAAAAAAA==


--=-Qqa470orhITprxyqHtqq--

--===============4219743019962154792==
Content-Type: multipart/alternative; boundary="===============8032390738014505656=="
MIME-Version: 1.0
Content-Disposition: inline

--===============8032390738014505656==
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

--===============8032390738014505656==
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

--===============8032390738014505656==--
--===============4219743019962154792==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============4219743019962154792==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel

--===============4219743019962154792==--

