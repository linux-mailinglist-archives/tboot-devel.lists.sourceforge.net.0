Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DAD141EE10
	for <lists+tboot-devel@lfdr.de>; Fri,  1 Oct 2021 15:02:28 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1mWIB6-0000Hk-Kw; Fri, 01 Oct 2021 13:02:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <lukasz.hawrylko@linux.intel.com>) id 1mWIB5-0000HX-6i
 for tboot-devel@lists.sourceforge.net; Fri, 01 Oct 2021 13:02:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:References:In-Reply-To:
 Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RLzchno0rR3hSfUSJGScUihbTZD0pAu99VZ3ukmocrQ=; b=JJGt8rZ+FvuQ6QcLJeXtAGT1y7
 MjVBHuUJLZzh50ul/6tVq01eU89jMo2/gqPsY3zFotz3R4jjUqghJgZBYX+j3utXqP1OewIhGmkFY
 uYTzz46OI+ZbaESIYzJerjr44zRJyoRWng6QNkU7XjMuf4qt1ti8+IkEhFQf9LXlPrwc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:References:In-Reply-To:Date:To:From:Subject:
 Message-ID:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=RLzchno0rR3hSfUSJGScUihbTZD0pAu99VZ3ukmocrQ=; b=M+v1e9/qWf9qk6Scb2GvR4BXRI
 +WZZjU+Gqti0BahN05173vDbMa62VNqezlNkAPpNpeYAb43PstWGdS13a+g2L/LXA8gTqOEjKOrYd
 /aTKRTJBkB6r7BHH7dyNWqHmY0gnUJzXP1qQO+UN+u93aTHQV82MdzgHAdppy/qCRrBU=;
Received: from mga11.intel.com ([192.55.52.93])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mWIB4-0002MY-Bw
 for tboot-devel@lists.sourceforge.net; Fri, 01 Oct 2021 13:02:15 +0000
X-IronPort-AV: E=McAfee;i="6200,9189,10123"; a="222225986"
X-IronPort-AV: E=Sophos;i="5.85,339,1624345200"; 
 d="scan'208,217";a="222225986"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2021 06:01:30 -0700
X-IronPort-AV: E=Sophos;i="5.85,339,1624345200"; 
 d="scan'208,217";a="619077080"
Received: from skirillo-mobl1.ccr.corp.intel.com ([10.252.55.172])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2021 06:01:28 -0700
Message-ID: <5d181f239830a04d65031feded30640a00399c90.camel@linux.intel.com>
From: Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>
To: Loris Wilbert <loris.wilbert@outlook.fr>, 
 "tboot-devel@lists.sourceforge.net" <tboot-devel@lists.sourceforge.net>
Date: Fri, 01 Oct 2021 15:01:26 +0200
In-Reply-To: <PA4P191MB1664B832D84B818805C91A3B9FA99@PA4P191MB1664.EURP191.PROD.OUTLOOK.COM>
References: <PA4P191MB1664AB08B4D7E7B035C25D309FA19@PA4P191MB1664.EURP191.PROD.OUTLOOK.COM>
 <e069c86ccfbb0b0068c2244fe6835d1324f52e9b.camel@linux.intel.com>
 <PA4P191MB1664C5127164099A9989D8009FA29@PA4P191MB1664.EURP191.PROD.OUTLOOK.COM>
 <efa17770eb9ecd5d34be353793450171ab95f5a5.camel@linux.intel.com>
 <PA4P191MB1664B832D84B818805C91A3B9FA99@PA4P191MB1664.EURP191.PROD.OUTLOOK.COM>
User-Agent: Evolution 3.38.3 (3.38.3-1.fc33) 
MIME-Version: 1.0
X-Spam-Score: -5.0 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Hi Loris I have no idea how can I help you here. Can you ask
 Getac if they have tested X500 with Intel TXT and if it is officially
 supported? Thanks, Lukasz 
 Content analysis details:   (-5.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
X-Headers-End: 1mWIB4-0002MY-Bw
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
Content-Type: multipart/mixed; boundary="===============1629695773561712917=="
Errors-To: tboot-devel-bounces@lists.sourceforge.net


--===============1629695773561712917==
Content-Type: multipart/alternative; boundary="=-MfDnE0cpYcbsJ0ZwKi/h"


--=-MfDnE0cpYcbsJ0ZwKi/h
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

Hi Loris

I have no idea how can I help you here. Can you ask Getac if they have
tested X500 with Intel TXT and if it is officially supported?

Thanks,
Lukasz

-----Original Message-----
From: Loris Wilbert <loris.wilbert@outlook.fr>
To: Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>, tboot-
devel@lists.sourceforge.net <tboot-devel@lists.sourceforge.net>
Subject: RE: [tboot-devel] Issue with warm reboot
Date: Wed, 29 Sep 2021 10:26:02 +0000

Hi Lukasz,

I have this problem with a Getac X500 G3 (CPU : Intel(R) Core(TM) i5-
7440HQ CPU @ 2.80GHz).

I realised the same test on another Getac X500 G3 and the same issue
appear.

Thanks,

Loris
De : Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>
Envoyé : lundi 27 septembre 2021 13:49
À : Loris Wilbert <loris.wilbert@outlook.fr>; tboot-
devel@lists.sourceforge.net <tboot-devel@lists.sourceforge.net>
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






--=-MfDnE0cpYcbsJ0ZwKi/h
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html><head></head><body dir=3D"ltr"><div>Hi Loris</div><div><br></div><div=
>I have no idea how can I help you here. Can you ask Getac if they have tes=
ted X500 with Intel TXT and if it is officially supported?</div><div><br></=
div><div>Thanks,</div><div>Lukasz</div><div><br></div><div>-----Original Me=
ssage-----</div><div><b>From</b>: Loris Wilbert &lt;<a href=3D"mailto:Loris=
%20Wilbert%20%3cloris.wilbert@outlook.fr%3e">loris.wilbert@outlook.fr</a>&g=
t;</div><div><b>To</b>: Lukasz Hawrylko &lt;<a href=3D"mailto:Lukasz%20Hawr=
ylko%20%3clukasz.hawrylko@linux.intel.com%3e">lukasz.hawrylko@linux.intel.c=
om</a>&gt;, tboot-devel@lists.sourceforge.net &lt;<a href=3D"mailto:%22tboo=
t-devel@lists.sourceforge.net%22%20%3ctboot-devel@lists.sourceforge.net%3e"=
>tboot-devel@lists.sourceforge.net</a>&gt;</div><div><b>Subject</b>: RE: [t=
boot-devel] Issue with warm reboot</div><div><b>Date</b>: Wed, 29 Sep 2021 =
10:26:02 +0000</div><div><br></div><!-- text/html --><meta http-equiv=3D"Co=
ntent-Type" content=3D"text/html; charset=3Diso-8859-1"><style type=3D"text=
/css" style=3D"display:none;"> P {margin-top:0;margin-bottom:0;} </style><d=
iv style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size: =
12pt; color: rgb(0, 0, 0);">Hi Lukasz,</div><div style=3D"font-family: Cali=
bri, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);"><=
br></div><div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; =
font-size: 12pt; color: rgb(0, 0, 0);">I have this problem with a Getac X50=
0 G3 (CPU :&nbsp;<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&=
quot;,sans-serif;mso-fareast-font-family:Calibri;mso-fareast-theme-font:min=
or-latin;mso-ansi-language:FR;mso-fareast-language:EN-US;mso-bidi-language:=
AR-SA">Intel(R) Core(TM) i5-7440HQ CPU @ 2.80GHz</span>).</div><div style=
=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size: 12pt; co=
lor: rgb(0, 0, 0);"><br></div><div style=3D"font-family: Calibri, Arial, He=
lvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">I realised the =
same test on another Getac X500 G3 and the same issue appear.</div><div sty=
le=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size: 12pt; =
color: rgb(0, 0, 0);"><br></div><div style=3D"font-family: Calibri, Arial, =
Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">Thanks,</div>=
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);"><br></div><div style=3D"font-family: Calibri,=
 Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">Loris=
</div><div id=3D"appendonsend"></div><hr style=3D"display:inline-block;widt=
h:98%" tabindex=3D"-1"><div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"=
Calibri, sans-serif" style=3D"font-size:11pt" color=3D"#000000"><b>De :</b>=
 Lukasz Hawrylko &lt;lukasz.hawrylko@linux.intel.com&gt;<br><b>Envoy=C3=A9 =
:</b> lundi 27 septembre 2021 13:49<br><b>=C3=80 :</b> Loris Wilbert &lt;lo=
ris.wilbert@outlook.fr&gt;; tboot-devel@lists.sourceforge.net &lt;tboot-dev=
el@lists.sourceforge.net&gt;<br><b>Objet :</b> Re: [tboot-devel] Issue with=
 warm reboot</font><div>&nbsp;</div></div><div class=3D"BodyFragment"><font=
 size=3D"2"><span style=3D"font-size:11pt;"><div class=3D"PlainText">On Wed=
, 2021-09-22 at 08:18 +0000, Loris Wilbert wrote:<br>&gt; Hi Lukasz,<br>&gt=
; <br>&gt; I've attached full TBOOT logs to this mail.<br>&gt; <br>&gt; Tha=
nk you for you assistance.<br><br>This looks like an issue with TPM. Is it =
possible to replace TPM module<br>on the system? Did you try to run TBOOT o=
n another system with the same<br>specs?<br><br>Thanks,<br>Lukasz<br><br><b=
r><br></div></span></font></div><div><br></div><div><br></div><div><span></=
span></div></body></html>

--=-MfDnE0cpYcbsJ0ZwKi/h--



--===============1629695773561712917==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============1629695773561712917==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel

--===============1629695773561712917==--


