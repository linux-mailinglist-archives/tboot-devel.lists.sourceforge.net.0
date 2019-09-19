Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 11260B877D
	for <lists+tboot-devel@lfdr.de>; Fri, 20 Sep 2019 00:37:39 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1iB53O-0003HV-Ek; Thu, 19 Sep 2019 22:37:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <persaur@gmail.com>) id 1iB53N-0003HN-3z
 for tboot-devel@lists.sourceforge.net; Thu, 19 Sep 2019 22:37:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=To:In-Reply-To:References:Message-Id:Subject:Date:
 Mime-Version:Content-Transfer-Encoding:Content-Type:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KS8KghujPoR7NIskGjSDh3PfRl8PW2HE0pdnBuJUcqs=; b=D5wjzStA+PXw/L4z26AlCkvvym
 sGwvXdO/5SwYzrR7jI9zGcpb/yDHpsvyJWd+t8d3TPlEbp6Mb2X/Av8M4fHHp0sMYwXD9mMaYOx6V
 WVRKj2fN+eDL1GFV7ROXB3sqCdFsSI80w5BuIoF43QbCw/S2+s8rY9wm96rlSk/GkqnY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=To:In-Reply-To:References:Message-Id:Subject:Date:Mime-Version:
 Content-Transfer-Encoding:Content-Type:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=KS8KghujPoR7NIskGjSDh3PfRl8PW2HE0pdnBuJUcqs=; b=L9gQALzDVGD0eFx1k7PbW72XtS
 VO23iBf+wZxQfnswY2heN2EfxCHC2Scd50JxuN1xMgo2LtVovgFrSdNmvSTNiJAJFF+4kNAZ/3ixQ
 BA3cG3S9XbBDSiMQ/lwU0W49Os9mtDeRnzkrMjhqHd6r4sjoq31kM+V08n4j1YGrOEQY=;
Received: from mail-io1-f52.google.com ([209.85.166.52])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1iB53L-004VCO-G7
 for tboot-devel@lists.sourceforge.net; Thu, 19 Sep 2019 22:37:33 +0000
Received: by mail-io1-f52.google.com with SMTP id r26so11637504ioh.8
 for <tboot-devel@lists.sourceforge.net>; Thu, 19 Sep 2019 15:37:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:content-transfer-encoding:mime-version:date:subject:message-id
 :references:in-reply-to:to;
 bh=KS8KghujPoR7NIskGjSDh3PfRl8PW2HE0pdnBuJUcqs=;
 b=IXqG7zcXZ7yxTYY9hfVC538Xk13fdwjFwmtezuCGmW3zR5xTdcXiJdsKP1ZaXGO4Iv
 51fG2w8+JTPZWbtITDSD6wXdUVodR1rfuJGy90OwY0UzqsOPJ4I74G+6OeGeGxnL89Be
 cEvru8bgxX2iczTRZqMB2F2C2p2Q55zymqeQ/JjytDOxGN9jnGGScDWd4NVugZErds0b
 1Bw0dUqvzMGJAktMcZtP9i7bT8YTN6D4XezyWdmZ3YY/jbUSY2YmOzVHzRCNitf2aOVr
 oqBu+QhG/q5ISWBoSiLPeZ/ohpw4Vll669JKogYiu6j04udARsFBUQZH5k14GVgD87T8
 1VTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:content-transfer-encoding:mime-version:date
 :subject:message-id:references:in-reply-to:to;
 bh=KS8KghujPoR7NIskGjSDh3PfRl8PW2HE0pdnBuJUcqs=;
 b=k4WOvEW8NeMtj4U6NDtCcHnWmBhRx9iI136rLyGqU/x9pxYTZzEbsDUKj5TK31W/h/
 lo5fDpXfcbaoGwPEDQFDx3PXAlpI8n2gD4xmbt8zJF6GTf7j6iuRPo9bK+UeAiD9lm4V
 S17i1zNL7HZ6tV3Z3A3KZB/jI5BVI6k45zQFjzuMICeVXa52Gw1pueY/jzXDs3liMwss
 YIVQ2ajwEsgajf6QBlJxf/SFjzApYb84116KEKdzRXSXORk8Ypx0LXAU/W18iV8r/UG3
 HBHZACu1LTWXHmcRJ0KiAHAd7eYC9QgLmwzn8aPetChOfu4B52RyOeGleim1VQu7pXlp
 2TKg==
X-Gm-Message-State: APjAAAXaLnH5+kncK6U/kY5YdNIxYLHmSPXgsx3BWqSVKnQUOVoCDf5h
 hiSINOA7tSaobZxZ7SngUcOlu/xY
X-Google-Smtp-Source: APXvYqy1xEdmqPRw8Opf0OZ/tWGesaerReVozEraGJaeAhGshiUTgbwMo7nGQN8IGl3Uz3j0e//TxA==
X-Received: by 2002:a05:6638:3:: with SMTP id z3mr15067329jao.54.1568932643689; 
 Thu, 19 Sep 2019 15:37:23 -0700 (PDT)
Received: from [100.64.77.53] ([205.185.206.122])
 by smtp.gmail.com with ESMTPSA id v84sm237409iod.10.2019.09.19.15.37.22
 for <tboot-devel@lists.sourceforge.net>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 19 Sep 2019 15:37:22 -0700 (PDT)
From: Rich Persaud <persaur@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Thu, 19 Sep 2019 18:37:20 -0400
Message-Id: <EC2BA76E-EFE0-42CC-B0D4-D82BBC2CEBAD@gmail.com>
References: <2810468B-ED78-4407-9EBD-EAC500248B48@gmail.com>
In-Reply-To: <2810468B-ED78-4407-9EBD-EAC500248B48@gmail.com>
To: tboot-devel@lists.sourceforge.net
X-Mailer: iPad Mail (16G102)
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: wikipedia.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (persaur[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.166.52 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.52 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 0.0 MIME_QP_LONG_LINE      RAW: Quoted-printable line longer than 76 chars
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1iB53L-004VCO-G7
Subject: Re: [tboot-devel] [ANNOUNCE] Boot Security microconf at Linux
 Plumbers Conf, Sep 9-11
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
Content-Type: multipart/mixed; boundary="===============0109490501030393220=="
Errors-To: tboot-devel-bounces@lists.sourceforge.net


--===============0109490501030393220==
Content-Type: multipart/alternative;
	boundary=Apple-Mail-0690E780-64C1-4C05-A361-EA19D2BA719D
Content-Transfer-Encoding: 7bit


--Apple-Mail-0690E780-64C1-4C05-A361-EA19D2BA719D
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Notes from the LPC session are available:
https://etherpad.net/p/LPC2019_System_Boot_and_Security/export/html

There will be DRTM-related talks at PSEC 2019, Oct 1-3 in Redmond:
https://platformsecuritysummit.com

Rich

> On Jul 22, 2019, at 10:48, Rich Persaud <persaur@gmail.com> wrote:
>=20
> https://www.linuxplumbersconf.org/blog/2019/system-boot-and-security-micro=
conference-accepted-into-2019-linux-plumbers-conference/
>=20
> System Boot and Security Microconference has been accepted into the 2019 L=
inux Plumbers Conference! Computer-system security is a topic that has gotte=
n a lot of serious attention over the years, but there has not been anywhere=
 near as much attention paid to the system firmware. But the firmware is als=
o a target for those looking to wreak havoc on our systems. Firmware is now b=
eing developed with security in mind, but provides incomplete solutions. Thi=
s microconference will focus on the security of the system especially from t=
he time the system is powered on.
>=20
> Expected topics for this year include:
>=20
> TPMs
> SRTM and DRTM
> Intel TXT
> AMD SKINIT
> Attestation
> UEFI Secure Boot
> IMA
> Intel SGX
> Boot loaders
> Firmware
> OpenBMC
>=20

--Apple-Mail-0690E780-64C1-4C05-A361-EA19D2BA719D
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto"><div dir=3D"ltr"></div><div dir=3D"ltr">Not=
es from the LPC session are available:</div><div dir=3D"ltr"><a href=3D"http=
s://etherpad.net/p/LPC2019_System_Boot_and_Security/export/html">https://eth=
erpad.net/p/LPC2019_System_Boot_and_Security/export/html</a></div><div dir=3D=
"ltr"><br></div><div dir=3D"ltr">There will be DRTM-related talks at PSEC 20=
19, Oct 1-3 in Redmond:</div><div dir=3D"ltr"><a href=3D"https://platformsec=
uritysummit.com">https://platformsecuritysummit.com</a></div><div dir=3D"ltr=
"><br></div><div dir=3D"ltr">Rich</div><div dir=3D"ltr"><br>On Jul 22, 2019,=
 at 10:48, Rich Persaud &lt;<a href=3D"mailto:persaur@gmail.com">persaur@gma=
il.com</a>&gt; wrote:<br><br></div><blockquote type=3D"cite"><div dir=3D"ltr=
"><meta http-equiv=3D"content-type" content=3D"text/html; charset=3Dutf-8"><=
div dir=3D"ltr"><span></span></div><div dir=3D"ltr"><meta http-equiv=3D"cont=
ent-type" content=3D"text/html; charset=3Dutf-8"><div dir=3D"ltr"><span></sp=
an></div><div dir=3D"ltr"><meta http-equiv=3D"content-type" content=3D"text/=
html; charset=3Dutf-8"><div dir=3D"ltr"><span></span></div><div dir=3D"ltr">=
<meta http-equiv=3D"content-type" content=3D"text/html; charset=3Dutf-8"><a h=
ref=3D"https://www.linuxplumbersconf.org/blog/2019/system-boot-and-security-=
microconference-accepted-into-2019-linux-plumbers-conference/">https://www.l=
inuxplumbersconf.org/blog/2019/system-boot-and-security-microconference-acce=
pted-into-2019-linux-plumbers-conference/</a><div dir=3D"ltr"></div></div><d=
iv dir=3D"ltr"><br></div><div dir=3D"ltr"><p style=3D"border: 0px none; marg=
in: 0px 0px 1.5em; padding: 0px; vertical-align: baseline;"><span style=3D"b=
ackground-color: rgba(255, 255, 255, 0);">System Boot and Security Microconf=
erence has been accepted into the 2019 Linux Plumbers Conference! Computer-s=
ystem security is a topic that has gotten a lot of serious attention over th=
e years, but there has not been anywhere near as much attention paid to the s=
ystem firmware. But the firmware is also a target for those looking to wreak=
 havoc on our systems. Firmware is now being developed with security in mind=
, but provides incomplete solutions. This microconference will focus on the s=
ecurity of the system especially from the time the system is powered on.</sp=
an></p><p style=3D"border: 0px none; margin: 0px 0px 1.5em; padding: 0px; ve=
rtical-align: baseline;"><span style=3D"background-color: rgba(255, 255, 255=
, 0);">Expected topics for this year include:</span></p><ul style=3D"border:=
 0px none; margin: 0px 1.5em 1.5em; padding: 0px; vertical-align: baseline; l=
ist-style-type: circle;"><li style=3D"border: 0px none; font-style: inherit;=
 margin: 0px; padding: 0px; vertical-align: baseline;"><a href=3D"https://en=
.wikipedia.org/wiki/Trusted_Platform_Module" style=3D"border: 0px none; font=
-style: inherit; margin: 0px; padding: 0px; vertical-align: baseline; text-d=
ecoration: none; caret-color: rgb(0, 0, 0); background-color: rgba(255, 255,=
 255, 0);"><font color=3D"#000000">TPMs</font></a></li><li style=3D"border: 0=
px none; font-style: inherit; margin: 0px; padding: 0px; vertical-align: bas=
eline;"><a href=3D"https://en.wikipedia.org/wiki/Trusted_Execution_Technolog=
y" style=3D"border: 0px none; font-style: inherit; margin: 0px; padding: 0px=
; vertical-align: baseline; text-decoration: none; caret-color: rgb(0, 0, 0)=
; background-color: rgba(255, 255, 255, 0);"><font color=3D"#000000">SRTM an=
d DRTM</font></a></li><li style=3D"border: 0px none; font-style: inherit; ma=
rgin: 0px; padding: 0px; vertical-align: baseline;"><a href=3D"https://en.wi=
kipedia.org/wiki/Trusted_Execution_Technology" style=3D"border: 0px none; fo=
nt-style: inherit; margin: 0px; padding: 0px; vertical-align: baseline; text=
-decoration: none; caret-color: rgb(0, 0, 0); background-color: rgba(255, 25=
5, 255, 0);"><font color=3D"#000000">Intel TXT</font></a></li><li style=3D"b=
order: 0px none; font-style: inherit; margin: 0px; padding: 0px; vertical-al=
ign: baseline;"><a href=3D"http://support.amd.com/TechDocs/24593.pdf" style=3D=
"border: 0px none; font-style: inherit; margin: 0px; padding: 0px; vertical-=
align: baseline; text-decoration: none; caret-color: rgb(0, 0, 0); backgroun=
d-color: rgba(255, 255, 255, 0);"><font color=3D"#000000">AMD SKINIT</font><=
/a></li><li style=3D"border: 0px none; font-style: inherit; margin: 0px; pad=
ding: 0px; vertical-align: baseline;"><span style=3D"background-color: rgba(=
255, 255, 255, 0);">Attestation</span></li><li style=3D"border: 0px none; fo=
nt-style: inherit; margin: 0px; padding: 0px; vertical-align: baseline;"><a h=
ref=3D"https://uefi.org/sites/default/files/resources/UEFI_Secure_Boot_in_Mo=
dern_Computer_Security_Solutions_2013.pdf" style=3D"border: 0px none; font-s=
tyle: inherit; margin: 0px; padding: 0px; vertical-align: baseline; text-dec=
oration: none; caret-color: rgb(0, 0, 0); background-color: rgba(255, 255, 2=
55, 0);"><font color=3D"#000000">UEFI Secure Boot</font></a></li><li style=3D=
"border: 0px none; font-style: inherit; margin: 0px; padding: 0px; vertical-=
align: baseline;"><a href=3D"https://sourceforge.net/p/linux-ima/wiki/Home/"=
 style=3D"border: 0px none; font-style: inherit; margin: 0px; padding: 0px; v=
ertical-align: baseline; text-decoration: none; caret-color: rgb(0, 0, 0); b=
ackground-color: rgba(255, 255, 255, 0);"><font color=3D"#000000">IMA</font>=
</a></li><li style=3D"border: 0px none; font-style: inherit; margin: 0px; pa=
dding: 0px; vertical-align: baseline;"><a href=3D"https://en.wikipedia.org/w=
iki/Software_Guard_Extensions" style=3D"border: 0px none; font-style: inheri=
t; margin: 0px; padding: 0px; vertical-align: baseline; text-decoration: non=
e; caret-color: rgb(0, 0, 0); background-color: rgba(255, 255, 255, 0);"><fo=
nt color=3D"#000000">Intel SGX</font></a></li><li style=3D"border: 0px none;=
 font-style: inherit; margin: 0px; padding: 0px; vertical-align: baseline;">=
<span style=3D"background-color: rgba(255, 255, 255, 0);">Boot loaders</span=
></li><li style=3D"border: 0px none; font-style: inherit; margin: 0px; paddi=
ng: 0px; vertical-align: baseline;"><span style=3D"background-color: rgba(25=
5, 255, 255, 0);">Firmware</span></li><li style=3D"border: 0px none; font-st=
yle: inherit; margin: 0px; padding: 0px; vertical-align: baseline;"><a href=3D=
"https://github.com/openbmc/openbmc" style=3D"border: 0px none; font-style: i=
nherit; margin: 0px; padding: 0px; vertical-align: baseline; text-decoration=
: none; caret-color: rgb(0, 0, 0); background-color: rgba(255, 255, 255, 0);=
"><font color=3D"#000000">OpenBMC</font></a></li></ul></div><div dir=3D"ltr"=
><br></div></div></div></div></blockquote></body></html>=

--Apple-Mail-0690E780-64C1-4C05-A361-EA19D2BA719D--


--===============0109490501030393220==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============0109490501030393220==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel

--===============0109490501030393220==--

