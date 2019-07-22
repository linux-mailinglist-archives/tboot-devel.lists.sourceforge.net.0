Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B653C7029F
	for <lists+tboot-devel@lfdr.de>; Mon, 22 Jul 2019 16:48:55 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1hpZcM-000205-Q5; Mon, 22 Jul 2019 14:48:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <persaur@gmail.com>) id 1hpZcM-0001zl-1C
 for tboot-devel@lists.sourceforge.net; Mon, 22 Jul 2019 14:48:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=To:Date:Message-Id:Subject:Mime-Version:From:
 Content-Type:Content-Transfer-Encoding:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=woYRy1GFvZPL9K54fBA/JFqV9WCfuZP2DmoWk1AhAOk=; b=OenNlnkAvtTUOQM4SPgZkP9YzX
 J5Yro3HfSUMntpAfA3XoE2K996EmD120o+eaYjsbaK87ykCOBoLEYnRfFWM5aDIcbQT8S8CSu1JQ1
 GROIBz9YSCUdnsz6E1NG2ar5jquO85/VToX3vdUVzB0TfUADC2PP6ZWyPsvK4/iJzuBs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ; h=To:Date:Message-Id:Subject:Mime-Version:From:Content-Type:
 Content-Transfer-Encoding:Sender:Reply-To:Cc:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=woYRy1GFvZPL9K54fBA/JFqV9WCfuZP2DmoWk1AhAOk=; b=PTFuhyh1nF+JCBCU2j+oPj8ZX0
 LF3Tgr0nAMlgvwwMgpD/2XMiKqiQt6t8xuUNrixgOD5qbI7NjtDuffae7ZYV8BKx3L4a99fOyyVuG
 82Czbd1gU/TR7t2jk7M1/uQQv7zxTyx6exufQ13qzfukKaRuPmzUE4xa2LrKsGxbPJ40=;
Received: from mail-io1-f43.google.com ([209.85.166.43])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hpZcK-00AqrK-8c
 for tboot-devel@lists.sourceforge.net; Mon, 22 Jul 2019 14:48:45 +0000
Received: by mail-io1-f43.google.com with SMTP id q22so74486109iog.4
 for <tboot-devel@lists.sourceforge.net>; Mon, 22 Jul 2019 07:48:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:message-id:date
 :to; bh=woYRy1GFvZPL9K54fBA/JFqV9WCfuZP2DmoWk1AhAOk=;
 b=tjI1leW6BDRRQOlW35wrIhI4Cu8ztlve/GTFpx1cQrglwYlU4P5OO77ByY5sckfoZh
 wCQQHkfDf7kDQwG10Fx9XqK5+aN61MdhvRw+apm55bdBGNUBkJDAzsW4DCtKKy0lmF5j
 MiN++i5GTwqnHMWdeHxogOEs0rnqEeGUk2Hfyup0DHgDEZZGYEONl4ss+fW/cSz2tXD9
 hqwyz68xhZxEZDrLx+AYlQFWtaz4prQ4MP8xIuq8E9RIP6jW6NJ/hXyHhZIyQlPWbCjf
 c0jDVOd+5GvT8iai8JE+nv40rJtR1M2IkMnS5XYK9kXnSH4ETTpJ03ktszMgFTtoZI5a
 8ULA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:message-id:date:to;
 bh=woYRy1GFvZPL9K54fBA/JFqV9WCfuZP2DmoWk1AhAOk=;
 b=VSCeJGsrct6DvTiUvE2R+MG2VBR4Z73VwIvayjXJ3HIKJw6mZ59Y/AIpIGh4C8VuPA
 lwavWrk4hFYqWcOWWkTYgFyoXdZDhgWush7w5bMRRAHdYscClbUHUkX0BfvAOupaEQRq
 e98iQpe7ieP+nuOQmRe0cFV6ICUiOSoeDde3DiAcomDWlzi/xIFxpSr7jxs4IW/C3kbN
 sENYkV1njSeP4mfwXH6c3kVxAxPkGvXVnMgLK5a9uc03OIH2ssGXDA0vKpXPjGIClQp7
 Zgyij0383Ed0IB2MV3YuRB6Bcy2wyAzZeWTjwcDMg2qaAceHOAo85ZeO0BaI4uB4ohJw
 upJA==
X-Gm-Message-State: APjAAAV3cEDYhChV764hjK6SHOdGzuZLmfZ7kEcOUnd/xzfxlEPhzJDx
 oBVKSxzZT4ROnnicZYzKIYfV02yAFHE=
X-Google-Smtp-Source: APXvYqyk+iIuBnb3VZrExVkA7++3PYb6e1grsAfsO8oFPPw/vLqDP7Vuo+zwDDD5v4/tuC+/ZQIICg==
X-Received: by 2002:a5d:8497:: with SMTP id t23mr40501346iom.298.1563806918342; 
 Mon, 22 Jul 2019 07:48:38 -0700 (PDT)
Received: from [100.64.73.44] ([205.185.206.117])
 by smtp.gmail.com with ESMTPSA id a7sm32493797iok.19.2019.07.22.07.48.37
 for <tboot-devel@lists.sourceforge.net>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 22 Jul 2019 07:48:37 -0700 (PDT)
From: Rich Persaud <persaur@gmail.com>
Mime-Version: 1.0 (1.0)
Message-Id: <2810468B-ED78-4407-9EBD-EAC500248B48@gmail.com>
Date: Mon, 22 Jul 2019 10:48:37 -0400
To: tboot-devel@lists.sourceforge.net
X-Mailer: iPad Mail (16F203)
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: amd.com]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (persaur[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.166.43 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 0.0 MIME_QP_LONG_LINE      RAW: Quoted-printable line longer than 76 chars
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.7 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1hpZcK-00AqrK-8c
Subject: [tboot-devel] [ANNOUNCE] Boot Security microconf at Linux Plumbers
 Conf, Sep 9-11
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
Content-Type: multipart/mixed; boundary="===============4841140647431052815=="
Errors-To: tboot-devel-bounces@lists.sourceforge.net


--===============4841140647431052815==
Content-Transfer-Encoding: 7bit
Content-Type: multipart/alternative;
	boundary=Apple-Mail-B07CFCC2-D408-4BEF-9CAE-DE64913AB6B9


--Apple-Mail-B07CFCC2-D408-4BEF-9CAE-DE64913AB6B9
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable

https://www.linuxplumbersconf.org/blog/2019/system-boot-and-security-microco=
nference-accepted-into-2019-linux-plumbers-conference/

System Boot and Security Microconference has been accepted into the 2019 Lin=
ux Plumbers Conference! Computer-system security is a topic that has gotten a=
 lot of serious attention over the years, but there has not been anywhere ne=
ar as much attention paid to the system firmware. But the firmware is also a=
 target for those looking to wreak havoc on our systems. Firmware is now bei=
ng developed with security in mind, but provides incomplete solutions. This m=
icroconference will focus on the security of the system especially from the t=
ime the system is powered on.

Expected topics for this year include:

TPMs
SRTM and DRTM
Intel TXT
AMD SKINIT
Attestation
UEFI Secure Boot
IMA
Intel SGX
Boot loaders
Firmware
OpenBMC


--Apple-Mail-B07CFCC2-D408-4BEF-9CAE-DE64913AB6B9
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto"><div dir=3D"ltr"><span></span></div><div di=
r=3D"ltr"><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"><div dir=3D"ltr"><span></span></div><div dir=3D"ltr"><meta http-equiv=
=3D"content-type" content=3D"text/html; charset=3Dutf-8"><div dir=3D"ltr"><s=
pan></span></div><div dir=3D"ltr"><meta http-equiv=3D"content-type" content=3D=
"text/html; charset=3Dutf-8"><a href=3D"https://www.linuxplumbersconf.org/bl=
og/2019/system-boot-and-security-microconference-accepted-into-2019-linux-pl=
umbers-conference/">https://www.linuxplumbersconf.org/blog/2019/system-boot-=
and-security-microconference-accepted-into-2019-linux-plumbers-conference/</=
a><div dir=3D"ltr"></div></div><div dir=3D"ltr"><br></div><div dir=3D"ltr"><=
p style=3D"border: 0px none; margin: 0px 0px 1.5em; padding: 0px; vertical-a=
lign: baseline;"><span style=3D"background-color: rgba(255, 255, 255, 0);">S=
ystem Boot and Security Microconference has been accepted into the 2019 Linu=
x Plumbers Conference! Computer-system security is a topic that has gotten a=
 lot of serious attention over the years, but there has not been anywhere ne=
ar as much attention paid to the system firmware. But the firmware is also a=
 target for those looking to wreak havoc on our systems. Firmware is now bei=
ng developed with security in mind, but provides incomplete solutions. This m=
icroconference will focus on the security of the system especially from the t=
ime the system is powered on.</span></p><p style=3D"border: 0px none; margin=
: 0px 0px 1.5em; padding: 0px; vertical-align: baseline;"><span style=3D"bac=
kground-color: rgba(255, 255, 255, 0);">Expected topics for this year includ=
e:</span></p><ul style=3D"border: 0px none; margin: 0px 1.5em 1.5em; padding=
: 0px; vertical-align: baseline; list-style-type: circle;"><li style=3D"bord=
er: 0px none; font-style: inherit; margin: 0px; padding: 0px; vertical-align=
: baseline;"><a href=3D"https://en.wikipedia.org/wiki/Trusted_Platform_Modul=
e" style=3D"border: 0px none; font-style: inherit; margin: 0px; padding: 0px=
; vertical-align: baseline; text-decoration: none; caret-color: rgb(0, 0, 0)=
; background-color: rgba(255, 255, 255, 0);"><font color=3D"#000000">TPMs</f=
ont></a></li><li style=3D"border: 0px none; font-style: inherit; margin: 0px=
; padding: 0px; vertical-align: baseline;"><a href=3D"https://en.wikipedia.o=
rg/wiki/Trusted_Execution_Technology" style=3D"border: 0px none; font-style:=
 inherit; margin: 0px; padding: 0px; vertical-align: baseline; text-decorati=
on: none; caret-color: rgb(0, 0, 0); background-color: rgba(255, 255, 255, 0=
);"><font color=3D"#000000">SRTM and DRTM</font></a></li><li style=3D"border=
: 0px none; font-style: inherit; margin: 0px; padding: 0px; vertical-align: b=
aseline;"><a href=3D"https://en.wikipedia.org/wiki/Trusted_Execution_Technol=
ogy" style=3D"border: 0px none; font-style: inherit; margin: 0px; padding: 0=
px; vertical-align: baseline; text-decoration: none; caret-color: rgb(0, 0, 0=
); background-color: rgba(255, 255, 255, 0);"><font color=3D"#000000">Intel T=
XT</font></a></li><li style=3D"border: 0px none; font-style: inherit; margin=
: 0px; padding: 0px; vertical-align: baseline;"><a href=3D"http://support.am=
d.com/TechDocs/24593.pdf" style=3D"border: 0px none; font-style: inherit; ma=
rgin: 0px; padding: 0px; vertical-align: baseline; text-decoration: none; ca=
ret-color: rgb(0, 0, 0); background-color: rgba(255, 255, 255, 0);"><font co=
lor=3D"#000000">AMD SKINIT</font></a></li><li style=3D"border: 0px none; fon=
t-style: inherit; margin: 0px; padding: 0px; vertical-align: baseline;"><spa=
n style=3D"background-color: rgba(255, 255, 255, 0);">Attestation</span></li=
><li style=3D"border: 0px none; font-style: inherit; margin: 0px; padding: 0=
px; vertical-align: baseline;"><a href=3D"https://uefi.org/sites/default/fil=
es/resources/UEFI_Secure_Boot_in_Modern_Computer_Security_Solutions_2013.pdf=
" style=3D"border: 0px none; font-style: inherit; margin: 0px; padding: 0px;=
 vertical-align: baseline; text-decoration: none; caret-color: rgb(0, 0, 0);=
 background-color: rgba(255, 255, 255, 0);"><font color=3D"#000000">UEFI Sec=
ure Boot</font></a></li><li style=3D"border: 0px none; font-style: inherit; m=
argin: 0px; padding: 0px; vertical-align: baseline;"><a href=3D"https://sour=
ceforge.net/p/linux-ima/wiki/Home/" style=3D"border: 0px none; font-style: i=
nherit; margin: 0px; padding: 0px; vertical-align: baseline; text-decoration=
: none; caret-color: rgb(0, 0, 0); background-color: rgba(255, 255, 255, 0);=
"><font color=3D"#000000">IMA</font></a></li><li style=3D"border: 0px none; f=
ont-style: inherit; margin: 0px; padding: 0px; vertical-align: baseline;"><a=
 href=3D"https://en.wikipedia.org/wiki/Software_Guard_Extensions" style=3D"b=
order: 0px none; font-style: inherit; margin: 0px; padding: 0px; vertical-al=
ign: baseline; text-decoration: none; caret-color: rgb(0, 0, 0); background-=
color: rgba(255, 255, 255, 0);"><font color=3D"#000000">Intel SGX</font></a>=
</li><li style=3D"border: 0px none; font-style: inherit; margin: 0px; paddin=
g: 0px; vertical-align: baseline;"><span style=3D"background-color: rgba(255=
, 255, 255, 0);">Boot loaders</span></li><li style=3D"border: 0px none; font=
-style: inherit; margin: 0px; padding: 0px; vertical-align: baseline;"><span=
 style=3D"background-color: rgba(255, 255, 255, 0);">Firmware</span></li><li=
 style=3D"border: 0px none; font-style: inherit; margin: 0px; padding: 0px; v=
ertical-align: baseline;"><a href=3D"https://github.com/openbmc/openbmc" sty=
le=3D"border: 0px none; font-style: inherit; margin: 0px; padding: 0px; vert=
ical-align: baseline; text-decoration: none; caret-color: rgb(0, 0, 0); back=
ground-color: rgba(255, 255, 255, 0);"><font color=3D"#000000">OpenBMC</font=
></a></li></ul></div><div dir=3D"ltr"><br></div></div></div></body></html>=

--Apple-Mail-B07CFCC2-D408-4BEF-9CAE-DE64913AB6B9--


--===============4841140647431052815==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============4841140647431052815==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel

--===============4841140647431052815==--

