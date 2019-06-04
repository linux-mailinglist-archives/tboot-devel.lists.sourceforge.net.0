Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C48AF33D37
	for <lists+tboot-devel@lfdr.de>; Tue,  4 Jun 2019 04:34:10 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1hXzGw-0006Jo-Aa; Tue, 04 Jun 2019 02:33:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <xanthein310@gmail.com>) id 1hXzGv-0006Ji-2T
 for tboot-devel@lists.sourceforge.net; Tue, 04 Jun 2019 02:33:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Cc:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3Sclaf8IRBxHViWtzbf39yshgMtr/giAtYnUmZY8zT0=; b=hz7kOeXBOLdPTFLBRelgxLe7H
 AJ1XOToL8yMt/bqQIp7aDOqTUdVS3vFEn5rlt2HJd71IB+SVpgElMeapskMx6MS9NhsBgvkdAGGqJ
 G+KyEToF793FAmgU4rjuHm761L2BwpOpMNacj6UEryYYEWjBN50mwSD+88as9pcFMU7i4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=3Sclaf8IRBxHViWtzbf39yshgMtr/giAtYnUmZY8zT0=; b=hLFxgMW+qviM03KFD7cxvTX4DG
 u+CBvqx+FAIltpqw2XBf3GdH5Fuu8vY1k/KQ8HswcC9gz4NWRKjO+yGZYlPipbtExTJxin8fbKpXC
 HU+cJ6J3pzHqDSrkRlQttY2wG1zqeXBxieQ3hTfVrpA1tg5ot74CzQPyALIqsQV1oWfs=;
Received: from mail-io1-f49.google.com ([209.85.166.49])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hXzGt-005PCF-0K
 for tboot-devel@lists.sourceforge.net; Tue, 04 Jun 2019 02:33:57 +0000
Received: by mail-io1-f49.google.com with SMTP id r185so16098598iod.6
 for <tboot-devel@lists.sourceforge.net>; Mon, 03 Jun 2019 19:33:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=3Sclaf8IRBxHViWtzbf39yshgMtr/giAtYnUmZY8zT0=;
 b=m2oXgCvue6oQ8Fai6mZe2nxvOMvfdF35q9ih7ZSuWvgOoo9fuJnkFFfrjFtonBLEKm
 UbGutLVdlPH1vRUSt2Uik3hhpO/tBw8nUgTkWTQ83tQgp488Ajhz7Cp2/8gaJmXQ33M2
 CvICzTStaah63G3yECfOPRfEE1uyIlUr/YckJ+Es6JwRcs+4wd0ty24PK0yjJF32Tvjc
 9dK013Bsn7+km81uvgrGmYVoRVoLhdQSoh4MZPlFZuO4jqzP8Zvi1Jhe7IlXUqAF332/
 JWftKHyojGnVCRz3LXuBbiLqlnv/8/aq0a3yhJgVZaTVML4N5zY63IJn/O9sp7bh4PMQ
 Q16A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=3Sclaf8IRBxHViWtzbf39yshgMtr/giAtYnUmZY8zT0=;
 b=osS54I9BiFPKbndrnYbpHDS4g3p710ZpF+8RCPKbQ6xx6Ze8d5SBfj8Sz7s81EFRtB
 eYeaTaAx3qIiU+03LY+8QD6XGAlSqqRO8+dIYorwcxJ3HNmD5ZSiqxL5MeECyUILpwF/
 Y7pZfsEF4JOg7VqB5bt4N3Ot07N2fq+k/KPuT6ipEmBwLfNE0vlCc3DZ5ZYvn34PnJZg
 BkGtO027Vu0pxKEoIjMyYGvB8bQbmSjJvBikiVBarL/K7dq5AjGMiP3NIKNPmpb32GS7
 soaHS81ILAxp8otH5bdChMCOIQyRdQAFyf9tR9cLgJhS9MZ7gDzpPBRXj1V3JIYqqVZY
 gHEw==
X-Gm-Message-State: APjAAAXu1eXC9Fjy3ke49QLiIy8VEt2y+6zIqgZqukg5icAteTVpbiPx
 tZJjKiLraL2AwgyqxsszX4gxL8kdyYa1qoASvl8PX+qv
X-Google-Smtp-Source: APXvYqzK30xUecItQQqAU7Qf4+l/95wHPevmK0MxwWyHq182aD+hipErMW7/qkqVPumkdb9Sdnyfi8C8LlJjdakdAUs=
X-Received: by 2002:a6b:f716:: with SMTP id k22mr2592002iog.115.1559615628978; 
 Mon, 03 Jun 2019 19:33:48 -0700 (PDT)
MIME-Version: 1.0
References: <CAMD4Mu7yGO3Vm6G9PWup_MhB6Ab3RD3z4BRSec2wQQ8TbcpepQ@mail.gmail.com>
 <612878ba3e41d9ac7060976d94c2d8511e2a8c08.camel@intel.com>
 <CAMD4Mu4tUOOBDjh3q6SHQhEzx+5_=UCVdvJaB+XvNE+49pEyAQ@mail.gmail.com>
 <7df61eeaba0339c5b11826d3b4eee953b1e6906d.camel@intel.com>
In-Reply-To: <7df61eeaba0339c5b11826d3b4eee953b1e6906d.camel@intel.com>
From: Dirk <xanthein310@gmail.com>
Date: Tue, 4 Jun 2019 10:33:37 +0800
Message-ID: <CAMD4Mu610_KqfOyR6GLSLn1e+Hd=5FJAAmis5xCPR6194Z0UVA@mail.gmail.com>
To: "tboot-devel@lists.sourceforge.net" <tboot-devel@lists.sourceforge.net>
Content-Type: multipart/mixed; boundary="0000000000008d64bf058a764fa4"
X-Spam-Score: 1.2 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (xanthein310[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.166.49 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
 digit (xanthein310[at]gmail.com)
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1hXzGt-005PCF-0K
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

--0000000000008d64bf058a764fa4
Content-Type: multipart/alternative; boundary="0000000000008d64bc058a764fa2"

--0000000000008d64bc058a764fa2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Lukasz,

I try to add PCONF element type support to lcptools-v2. It can worked with
tpm2-tools
to generate PCONF element by following commands.

sudo tpm2_pcrlist -L sha256:0,1,2,3,4,5,6,7 --tcti=3Ddevice | awk 'NR!=3D1
{print $3}' | sed 's/0x//g' | sed -E 's/(.{2})/\1\ /g' > pcr
lcp2_crtpolelt --create --type pconf --alg sha256 --pcr_hash sha256 --pcr
0,1,2,3,4,5,6,7 --ctrl 0x00 --out pconf.elt pcr

Regards,
Dirk

Hawrylko, Lukasz <lukasz.hawrylko@intel.com> =E6=96=BC 2019=E5=B9=B46=E6=9C=
=883=E6=97=A5 =E9=80=B1=E4=B8=80 =E4=B8=8B=E5=8D=885:23=E5=AF=AB=E9=81=93=
=EF=BC=9A

> Hi Dirk
>
> I don't know if there any any official, public accessible tool for dumpin=
g
> PCRs. However structure of file required by lcp-gen2 is quite simple, it =
is
> described in util.py line 355.
>
> Thanks,
> Lukasz
>
> -----Original Message-----
> *From*: Dirk <xanthein310@gmail.com <Dirk%20%3cxanthein310@gmail.com%3e>>
> *To*: tboot-devel@lists.sourceforge.net <tboot-devel@lists.sourceforge.ne=
t
> <%22tboot-devel@lists.sourceforge.net%22%20%3ctboot-devel@lists.sourcefor=
ge.net%3e>
> >
> *Subject*: Re: [tboot-devel] Create LCP_PCONF_ELEMENT with TPM 2.0
> *Date*: Tue, 28 May 2019 17:11:13 +0800
>
> Hi Lukasz,
>
> Thanks for the reply. I tried to run lcp-gen2 tool and found I can't
> create valid PCR dump
> file. In UserGuide.txt of lcp-gen2, mentioned that the PCR dump file can
> be created by
> PCRDump2. But I can't find the tool. Do you have any suggestion which too=
l
> I can use
> to dump the PCR file?
>
> Regards,
> Dirk
>
> Hawrylko, Lukasz <lukasz.hawrylko@intel.com> =E6=96=BC 2019=E5=B9=B45=E6=
=9C=8827=E6=97=A5 =E9=80=B1=E4=B8=80 =E4=B8=8B=E5=8D=882:24=E5=AF=AB=E9=81=
=93=EF=BC=9A
>
> Hi Dirk
>
> LCP for TPM 2.0 is supported by lcp-gen2 tool. This tool allows to add
> PCONF element.
>
> Thanks,
> Lukasz
>
> -----Original Message-----
> From: Dirk <xanthein310@gmail.com>
> To: tboot-devel@lists.sourceforge.net
> Subject: [tboot-devel] Create LCP_PCONF_ELEMENT with TPM 2.0
> Date: Fri, 24 May 2019 10:13:27 +0800
>
> Hi,
>
> I am using tboot 1.9.9 and find there seems no way to create
> LCP_PCONF_ELEMENT
> with TPM 2.0. Tool lcp2_crtpolelt only support mle, custom, sbios and stm=
.
> Is there any
> way to create pconf element?
>
> Regards,
> Dirk
>
> _______________________________________________
> tboot-devel mailing list
> tboot-devel@lists.sourceforge.net
>
> https://lists.sourceforge.net/lists/listinfo/tboot-devel
>
>
> ---------------------------------------------------------------------
>
> *Intel Technology Poland sp. z o.o.*ul. S&#322owackiego 173 | 80-298
> Gda&#324sk | S&#261d Rejonowy Gda&#324sk P&#243&#322noc | VII Wydzia&#322
> Gospodarczy Krajowego Rejestru S&#261dowego - KRS 101882 | NIP
> 957-07-52-316 | Kapita&#322 zak&#322adowy 200.000 PLN.
>
> Ta wiadomo&#347&#263 wraz z za&#322&#261cznikami jest przeznaczona dla
> okre&#347lonego adresata i mo&#380e zawiera&#263 informacje poufne. W raz=
ie
> przypadkowego otrzymania tej wiadomo&#347ci, prosimy o powiadomienie
> nadawcy oraz trwa&#322e jej usuni&#281cie; jakiekolwiek przegl&#261danie
> lub rozpowszechnianie jest zabronione.
> This e-mail and any attachments may contain confidential material for the
> sole use of the intended recipient(s). If you are not the intended
> recipient, please contact the sender and delete all copies; any review or
> distribution by others is strictly prohibited.
>
> _______________________________________________
> tboot-devel mailing list
> tboot-devel@lists.sourceforge.net
> https://lists.sourceforge.net/lists/listinfo/tboot-devel
>
> _______________________________________________
>
> tboot-devel mailing list
>
> tboot-devel@lists.sourceforge.net
>
>
> https://lists.sourceforge.net/lists/listinfo/tboot-devel
>
>
> ---------------------------------------------------------------------
>
> *Intel Technology Poland sp. z o.o.*ul. S&#322owackiego 173 | 80-298
> Gda&#324sk | S&#261d Rejonowy Gda&#324sk P&#243&#322noc | VII Wydzia&#322
> Gospodarczy Krajowego Rejestru S&#261dowego - KRS 101882 | NIP
> 957-07-52-316 | Kapita&#322 zak&#322adowy 200.000 PLN.
>
> Ta wiadomo&#347&#263 wraz z za&#322&#261cznikami jest przeznaczona dla
> okre&#347lonego adresata i mo&#380e zawiera&#263 informacje poufne. W raz=
ie
> przypadkowego otrzymania tej wiadomo&#347ci, prosimy o powiadomienie
> nadawcy oraz trwa&#322e jej usuni&#281cie; jakiekolwiek przegl&#261danie
> lub rozpowszechnianie jest zabronione.
> This e-mail and any attachments may contain confidential material for the
> sole use of the intended recipient(s). If you are not the intended
> recipient, please contact the sender and delete all copies; any review or
> distribution by others is strictly prohibited.
>
>

--0000000000008d64bc058a764fa2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Lukasz,</div><div><br></div><div>I try to add PCON=
F element type support to lcptools-v2. It can worked with tpm2-tools</div><=
div>to generate PCONF element by following commands.</div><div><br></div><d=
iv>sudo tpm2_pcrlist -L sha256:0,1,2,3,4,5,6,7 --tcti=3Ddevice | awk &#39;N=
R!=3D1 {print $3}&#39; | sed &#39;s/0x//g&#39; | sed -E &#39;s/(.{2})/\1\ /=
g&#39; &gt; pcr<br>lcp2_crtpolelt --create --type pconf --alg sha256 --pcr_=
hash sha256 --pcr 0,1,2,3,4,5,6,7 --ctrl 0x00 --out pconf.elt pcr</div><div=
><br></div><div>Regards,</div><div>Dirk<br></div></div><br><div class=3D"gm=
ail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Hawrylko, Lukasz &lt;<a hr=
ef=3D"mailto:lukasz.hawrylko@intel.com">lukasz.hawrylko@intel.com</a>&gt; =
=E6=96=BC 2019=E5=B9=B46=E6=9C=883=E6=97=A5 =E9=80=B1=E4=B8=80 =E4=B8=8B=E5=
=8D=885:23=E5=AF=AB=E9=81=93=EF=BC=9A<br></div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex"><div style=3D"text-align:left;direction:ltr"><div>Hi =
Dirk</div><div><br></div><div>I don&#39;t know if there any any official, p=
ublic accessible tool for dumping PCRs. However structure of file required =
by lcp-gen2 is quite simple, it is described in util.py line 355.</div><div=
><br></div><div>Thanks,</div><div>Lukasz</div><div><br></div><div>-----Orig=
inal Message-----</div><div><b>From</b>: Dirk &lt;<a href=3D"mailto:Dirk%20=
%3cxanthein310@gmail.com%3e" target=3D"_blank">xanthein310@gmail.com</a>&gt=
;</div><div><b>To</b>: <a href=3D"mailto:tboot-devel@lists.sourceforge.net"=
 target=3D"_blank">tboot-devel@lists.sourceforge.net</a> &lt;<a href=3D"mai=
lto:%22tboot-devel@lists.sourceforge.net%22%20%3ctboot-devel@lists.sourcefo=
rge.net%3e" target=3D"_blank">tboot-devel@lists.sourceforge.net</a>&gt;</di=
v><div><b>Subject</b>: Re: [tboot-devel] Create LCP_PCONF_ELEMENT with TPM =
2.0</div><div><b>Date</b>: Tue, 28 May 2019 17:11:13 +0800</div><div><br></=
div><div dir=3D"ltr"><div>Hi Lukasz,</div><div><br></div><div>Thanks for th=
e reply. I tried to run lcp-gen2 tool and found I can&#39;t create valid PC=
R dump <br></div><div>file. In UserGuide.txt of lcp-gen2, mentioned that th=
e PCR dump file can be created by</div><div>PCRDump2. But I can&#39;t find =
the tool. Do you have any suggestion which tool I can use</div><div>to dump=
 the PCR file?</div><div><br></div><div>Regards,</div><div>Dirk<br> </div><=
br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Hawrylk=
o, Lukasz &lt;<a href=3D"mailto:lukasz.hawrylko@intel.com" target=3D"_blank=
">lukasz.hawrylko@intel.com</a>&gt; =E6=96=BC 2019=E5=B9=B45=E6=9C=8827=E6=
=97=A5 =E9=80=B1=E4=B8=80 =E4=B8=8B=E5=8D=882:24=E5=AF=AB=E9=81=93=EF=BC=9A=
<br></div><blockquote type=3D"cite" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:2px solid rgb(114,159,207);padding-left:1ex">Hi Dirk<br>
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
mailing list</pre><a href=3D"mailto:tboot-devel@lists.sourceforge.net" targ=
et=3D"_blank"><pre>tboot-devel@lists.sourceforge.net</pre></a><pre><br></pr=
e><a href=3D"https://lists.sourceforge.net/lists/listinfo/tboot-devel" targ=
et=3D"_blank"><pre>https://lists.sourceforge.net/lists/listinfo/tboot-devel=
</pre></a><pre><br></pre></div>
<p>---------------------------------------------------------------------<br=
>
<strong style=3D"line-height:11.25pt"><span style=3D"font-size:9pt;color:rg=
b(89,89,89)"><span style=3D"font-family:&quot;Arial Narrow&quot;,sans-serif=
">Intel
Technology Poland sp. z o.o.<br></span></span></strong><span style=3D"color=
:rgb(89,89,89);font-family:&quot;Arial Narrow&quot;,sans-serif;font-size:9p=
t;line-height:11.25pt">ul. S&amp;#322owackiego 173 | 80-298 Gda&amp;#324sk =
| S&amp;#261d Rejonowy Gda&amp;#324sk
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
</blockquote></div>

--0000000000008d64bc058a764fa2--
--0000000000008d64bf058a764fa4
Content-Type: text/x-patch; charset="US-ASCII"; name="add_pconf_element.patch"
Content-Disposition: attachment; filename="add_pconf_element.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_jwh6tdff0>
X-Attachment-Id: f_jwh6tdff0

ZGlmZiAtciBjYTkzNTcwOWQ4YTYgaW5jbHVkZS9sY3AzLmgKLS0tIGEvaW5jbHVkZS9sY3AzLmgJ
VGh1IE1heSAwOSAxMzowOTowMSAyMDE5ICswMjAwCisrKyBiL2luY2x1ZGUvbGNwMy5oCVR1ZSBK
dW4gMDQgMTA6MTI6MTIgMjAxOSArMDgwMApAQCAtMjEyLDcgKzIxMiw3IEBACiB0eXBlZGVmIHN0
cnVjdCBfX3BhY2tlZCB7CiAgICAgdWludDE2X3QgICAgICAgICAgICAgaGFzaF9hbGc7CiAgICAg
dWludDE2X3QgICAgICAgICAgICAgbnVtX3Bjcl9pbmZvczsKLSAgICB0cG1zX3F1b3RlX2luZm9f
dCAgICBwcmNfaW5mb3NbXTsKKyAgICB0cG1zX3F1b3RlX2luZm9fdCAgICBwY3JfaW5mb3NbXTsK
IH0gbGNwX3Bjb25mX2VsZW1lbnRfdDI7CiAKICNkZWZpbmUgTENQX1BPTEVMVF9UWVBFX1NCSU9T
MiAgICAgMHgxMgpkaWZmIC1yIGNhOTM1NzA5ZDhhNiBsY3B0b29scy12Mi9NYWtlZmlsZQotLS0g
YS9sY3B0b29scy12Mi9NYWtlZmlsZQlUaHUgTWF5IDA5IDEzOjA5OjAxIDIwMTkgKzAyMDAKKysr
IGIvbGNwdG9vbHMtdjIvTWFrZWZpbGUJVHVlIEp1biAwNCAxMDoxMjoxMiAyMDE5ICswODAwCkBA
IC02Miw3ICs2Miw3IEBACiAKICMgTENQIHYyCiAKLVBPTEVMVF9QTFVHSU5TIDo9IG1sZV9lbHQu
byBjdXN0b21fZWx0Lm8gc2Jpb3NfZWx0Lm8gc3RtX2VsdC5vCitQT0xFTFRfUExVR0lOUyA6PSBw
Y29uZl9lbHQubyBtbGVfZWx0Lm8gY3VzdG9tX2VsdC5vIHNiaW9zX2VsdC5vIHN0bV9lbHQubwog
CiBMQ1AyX0xJQiA6PSBsaWJsY3AuYQogCmRpZmYgLXIgY2E5MzU3MDlkOGE2IGxjcHRvb2xzLXYy
L3Bjb25mX2VsdC5jCi0tLSAvZGV2L251bGwJVGh1IEphbiAwMSAwMDowMDowMCAxOTcwICswMDAw
CisrKyBiL2xjcHRvb2xzLXYyL3Bjb25mX2VsdC5jCVR1ZSBKdW4gMDQgMTA6MTI6MTIgMjAxOSAr
MDgwMApAQCAtMCwwICsxLDI1MyBAQAorLyoKKyAqIHBjb25mX2VsdC5jOiBQQ09ORiBwb2xpY3kg
ZWxlbWVudCAoTENQX1BDT05GX0VMRU1FTlQpIHBsdWdpbgorICoKKyAqIENvcHlyaWdodCAoYykg
MjAxNCwgSW50ZWwgQ29ycG9yYXRpb24KKyAqIEFsbCByaWdodHMgcmVzZXJ2ZWQuCisgKgorICog
UmVkaXN0cmlidXRpb24gYW5kIHVzZSBpbiBzb3VyY2UgYW5kIGJpbmFyeSBmb3Jtcywgd2l0aCBv
ciB3aXRob3V0CisgKiBtb2RpZmljYXRpb24sIGFyZSBwZXJtaXR0ZWQgcHJvdmlkZWQgdGhhdCB0
aGUgZm9sbG93aW5nIGNvbmRpdGlvbnMKKyAqIGFyZSBtZXQ6CisgKgorICogICAqIFJlZGlzdHJp
YnV0aW9ucyBvZiBzb3VyY2UgY29kZSBtdXN0IHJldGFpbiB0aGUgYWJvdmUgY29weXJpZ2h0Cisg
KiAgICAgbm90aWNlLCB0aGlzIGxpc3Qgb2YgY29uZGl0aW9ucyBhbmQgdGhlIGZvbGxvd2luZyBk
aXNjbGFpbWVyLgorICogICAqIFJlZGlzdHJpYnV0aW9ucyBpbiBiaW5hcnkgZm9ybSBtdXN0IHJl
cHJvZHVjZSB0aGUgYWJvdmUKKyAqICAgICBjb3B5cmlnaHQgbm90aWNlLCB0aGlzIGxpc3Qgb2Yg
Y29uZGl0aW9ucyBhbmQgdGhlIGZvbGxvd2luZworICogICAgIGRpc2NsYWltZXIgaW4gdGhlIGRv
Y3VtZW50YXRpb24gYW5kL29yIG90aGVyIG1hdGVyaWFscyBwcm92aWRlZAorICogICAgIHdpdGgg
dGhlIGRpc3RyaWJ1dGlvbi4KKyAqICAgKiBOZWl0aGVyIHRoZSBuYW1lIG9mIHRoZSBJbnRlbCBD
b3Jwb3JhdGlvbiBub3IgdGhlIG5hbWVzIG9mIGl0cworICogICAgIGNvbnRyaWJ1dG9ycyBtYXkg
YmUgdXNlZCB0byBlbmRvcnNlIG9yIHByb21vdGUgcHJvZHVjdHMgZGVyaXZlZAorICogICAgIGZy
b20gdGhpcyBzb2Z0d2FyZSB3aXRob3V0IHNwZWNpZmljIHByaW9yIHdyaXR0ZW4gcGVybWlzc2lv
bi4KKyAqCisgKiBUSElTIFNPRlRXQVJFIElTIFBST1ZJREVEIEJZIFRIRSBDT1BZUklHSFQgSE9M
REVSUyBBTkQgQ09OVFJJQlVUT1JTCisgKiAiQVMgSVMiIEFORCBBTlkgRVhQUkVTUyBPUiBJTVBM
SUVEIFdBUlJBTlRJRVMsIElOQ0xVRElORywgQlVUIE5PVAorICogTElNSVRFRCBUTywgVEhFIElN
UExJRUQgV0FSUkFOVElFUyBPRiBNRVJDSEFOVEFCSUxJVFkgQU5EIEZJVE5FU1MKKyAqIEZPUiBB
IFBBUlRJQ1VMQVIgUFVSUE9TRSBBUkUgRElTQ0xBSU1FRC4gSU4gTk8gRVZFTlQgU0hBTEwgVEhF
CisgKiBDT1BZUklHSFQgT1dORVIgT1IgQ09OVFJJQlVUT1JTIEJFIExJQUJMRSBGT1IgQU5ZIERJ
UkVDVCwgSU5ESVJFQ1QsCisgKiBJTkNJREVOVEFMLCBTUEVDSUFMLCBFWEVNUExBUlksIE9SIENP
TlNFUVVFTlRJQUwgREFNQUdFUworICogKElOQ0xVRElORywgQlVUIE5PVCBMSU1JVEVEIFRPLCBQ
Uk9DVVJFTUVOVCBPRiBTVUJTVElUVVRFIEdPT0RTIE9SCisgKiBTRVJWSUNFUzsgTE9TUyBPRiBV
U0UsIERBVEEsIE9SIFBST0ZJVFM7IE9SIEJVU0lORVNTIElOVEVSUlVQVElPTikKKyAqIEhPV0VW
RVIgQ0FVU0VEIEFORCBPTiBBTlkgVEhFT1JZIE9GIExJQUJJTElUWSwgV0hFVEhFUiBJTiBDT05U
UkFDVCwKKyAqIFNUUklDVCBMSUFCSUxJVFksIE9SIFRPUlQgKElOQ0xVRElORyBORUdMSUdFTkNF
IE9SIE9USEVSV0lTRSkKKyAqIEFSSVNJTkcgSU4gQU5ZIFdBWSBPVVQgT0YgVEhFIFVTRSBPRiBU
SElTIFNPRlRXQVJFLCBFVkVOIElGIEFEVklTRUQKKyAqIE9GIFRIRSBQT1NTSUJJTElUWSBPRiBT
VUNIIERBTUFHRS4KKyAqCisgKi8KKworI2luY2x1ZGUgPHN0ZGlvLmg+CisjaW5jbHVkZSA8c3Rk
bGliLmg+CisjaW5jbHVkZSA8c3RkaW50Lmg+CisjaW5jbHVkZSA8c3RkYm9vbC5oPgorI2luY2x1
ZGUgPHN0cmluZy5oPgorI2luY2x1ZGUgPGFycGEvaW5ldC5oPgorI2RlZmluZSBfR05VX1NPVVJD
RQorI2luY2x1ZGUgPGdldG9wdC5oPgorI2luY2x1ZGUgPHNhZmVfbGliLmg+CisjaW5jbHVkZSAi
b3BlbnNzbC9zaGEuaCIKKyNkZWZpbmUgUFJJTlQgICBwcmludGYKKyNpbmNsdWRlICIuLi9pbmNs
dWRlL2NvbmZpZy5oIgorI2luY2x1ZGUgIi4uL2luY2x1ZGUvaGFzaC5oIgorI2luY2x1ZGUgIi4u
L2luY2x1ZGUvdXVpZC5oIgorI2luY2x1ZGUgIi4uL2luY2x1ZGUvbGNwMy5oIgorI2luY2x1ZGUg
InBvbGVsdF9wbHVnaW4uaCIKKyNpbmNsdWRlICJsY3B1dGlscy5oIgorCisjZGVmaW5lIE1BWF9I
QVNIRVMgICAgICAgMzIKKworc3RhdGljIHVpbnQ4X3QgcGNyX3NlbGVjdGVkOworc3RhdGljIHVu
c2lnbmVkIGludCBucl9oYXNoZXM7CitzdGF0aWMgdGJfaGFzaF90IGhhc2hlc1tNQVhfSEFTSEVT
XTsKK3N0YXRpYyBjaGFyIHBjcl9hbGdfbmFtZVszMl0gPSAic2hhMSI7CitzdGF0aWMgdWludDE2
X3QgcGNyX2FsZ190eXBlID0gVFBNX0FMR19TSEExOworc3RhdGljIGNoYXIgYWxnX25hbWVbMzJd
ID0gInNoYTEiOworc3RhdGljIHVpbnQxNl90IGFsZ190eXBlID0gVFBNX0FMR19TSEExOworCitz
dGF0aWMgYm9vbCBwYXJzZV9wY29uZl9saW5lKGNvbnN0IGNoYXIgKmxpbmUpCit7CisgICAgaWYg
KCBucl9oYXNoZXMgPT0gTUFYX0hBU0hFUyApCisgICAgICAgIHJldHVybiBmYWxzZTsKKworICAg
IHJldHVybiBwYXJzZV9saW5lX2hhc2hlcyhsaW5lLCAmaGFzaGVzW25yX2hhc2hlcysrXSwgcGNy
X2FsZ190eXBlKTsKK30KKworc3RhdGljIHZvaWQgcHJvY2Vzc19zaGEodWludDE2X3QgYWxnX3R5
cGUsIHZvaWQgKmRhdGEsIGludCBkYXRhX3NpemUsIHZvaWQgKm91dHB1dEJ1ZmZlcikKK3sKKyAg
ICBTSEFfQ1RYIHNoYTE7CisgICAgU0hBMjU2X0NUWCBzaGEyNTY7CisgICAgU0hBNTEyX0NUWCBz
aGE1MTI7CisKKyAgICBzd2l0Y2goYWxnX3R5cGUpIHsKKyAgICAgICAgY2FzZSBUUE1fQUxHX1NI
QTE6CisgICAgICAgICAgICBTSEExX0luaXQoJnNoYTEpOworICAgICAgICAgICAgU0hBMV9VcGRh
dGUoJnNoYTEsIGRhdGEsIGRhdGFfc2l6ZSk7CisgICAgICAgICAgICBTSEExX0ZpbmFsKG91dHB1
dEJ1ZmZlciwgJnNoYTEpOworICAgICAgICAgICAgYnJlYWs7CisgICAgICAgIGNhc2UgVFBNX0FM
R19TSEEyNTY6CisgICAgICAgICAgICBTSEEyNTZfSW5pdCgmc2hhMjU2KTsKKyAgICAgICAgICAg
IFNIQTI1Nl9VcGRhdGUoJnNoYTI1NiwgZGF0YSwgZGF0YV9zaXplKTsKKyAgICAgICAgICAgIFNI
QTI1Nl9GaW5hbChvdXRwdXRCdWZmZXIsICZzaGEyNTYpOworICAgICAgICAgICAgYnJlYWs7Cisg
ICAgICAgIGNhc2UgVFBNX0FMR19TSEEzODQ6CisgICAgICAgICAgICBTSEEzODRfSW5pdCgmc2hh
NTEyKTsKKyAgICAgICAgICAgIFNIQTM4NF9VcGRhdGUoJnNoYTUxMiwgZGF0YSwgZGF0YV9zaXpl
KTsKKyAgICAgICAgICAgIFNIQTM4NF9GaW5hbChvdXRwdXRCdWZmZXIsICZzaGE1MTIpOworICAg
ICAgICAgICAgYnJlYWs7CisgICAgICAgIGNhc2UgVFBNX0FMR19TSEE1MTI6CisgICAgICAgICAg
ICBTSEE1MTJfSW5pdCgmc2hhNTEyKTsKKyAgICAgICAgICAgIFNIQTUxMl9VcGRhdGUoJnNoYTUx
MiwgZGF0YSwgZGF0YV9zaXplKTsKKyAgICAgICAgICAgIFNIQTUxMl9GaW5hbChvdXRwdXRCdWZm
ZXIsICZzaGE1MTIpOworICAgICAgICAgICAgYnJlYWs7CisgICAgICAgIGRlZmF1bHQ6CisgICAg
ICAgICAgICBMT0coImFsZ190eXBlICVkIG5vdCBzdXBwb3J0ZWRcbiIsYWxnX3R5cGUpOworICAg
ICAgICAgICAgYnJlYWs7CisgICAgfQorfQorCitzdGF0aWMgYm9vbCBwYXJzZV9wY3Jfc3RyaW5n
KGNvbnN0IGNoYXIgKnN0cikKK3sKKyAgICBjb25zdCBjaGFyICpzdHJDdXJyZW50ID0gc3RyOwor
ICAgIGNoYXIgKnB0cjsKKyAgICB1aW50OF90IHBjcjsKKworICAgIGRvIHsKKyAgICAgICAgcGNy
ID0gKHVpbnQ4X3Qpc3RydG91bChzdHJDdXJyZW50LCAmcHRyLCAwKTsKKyAgICAgICAgaWYgKHBj
ciA+IDcpCisgICAgICAgICAgICByZXR1cm4gZmFsc2U7CisgICAgICAgIHBjcl9zZWxlY3RlZCB8
PSAxPDxwY3I7CisKKyAgICAgICAgaWYgKCpwdHIgIT0gJ1wwJykgeworICAgICAgICAgICAgc3Ry
Q3VycmVudCA9ICsrcHRyOworICAgICAgICB9CisgICAgICAgIGVsc2UKKyAgICAgICAgICAgIGJy
ZWFrOworICAgIH0gd2hpbGUgKHN0ckN1cnJlbnQpOworCisgICAgcHJpbnRmKCJwY3Jfc2VsZWN0
ZWQgPSAweCV4XG4iLCBwY3Jfc2VsZWN0ZWQpOworCisgICAgcmV0dXJuIHRydWU7Cit9CisKK3N0
YXRpYyBib29sIGNtZGxpbmVfaGFuZGxlcihpbnQgYywgY29uc3QgY2hhciAqb3B0KQoreworICAg
IGlmIChjID09ICdwJykgeworICAgICAgICByZXR1cm4gcGFyc2VfcGNyX3N0cmluZyhvcHQpOwor
ICAgIH0KKyAgICBlbHNlIGlmIChjID09ICdoJykgeworICAgICAgICBzdHJsY3B5KHBjcl9hbGdf
bmFtZSwgb3B0LHNpemVvZihwY3JfYWxnX25hbWUpKTsKKyAgICAgICAgcGNyX2FsZ190eXBlID0g
c3RyX3RvX2hhc2hfYWxnKHBjcl9hbGdfbmFtZSk7CisgICAgICAgIExPRygiY21kbGluZSBvcHQ6
IHBjciBhbGc6ICVzXG4iLHBjcl9hbGdfbmFtZSk7CisgICAgICAgIGlmIChwY3JfYWxnX3R5cGUg
IT0gVFBNX0FMR19TSEExICYmIHBjcl9hbGdfdHlwZSAhPSBUUE1fQUxHX1NIQTI1NikKKyAgICAg
ICAgICAgIHJldHVybiBmYWxzZTsKKyAgICAgICAgcmV0dXJuIHRydWU7CisgICAgfQorICAgIGVs
c2UgaWYgKGMgPT0gJ2EnKSB7CisgICAgICAgIHN0cmxjcHkoYWxnX25hbWUsIG9wdCxzaXplb2Yo
YWxnX25hbWUpKTsKKyAgICAgICAgYWxnX3R5cGUgPSBzdHJfdG9faGFzaF9hbGcoYWxnX25hbWUp
OworICAgICAgICBMT0coImNtZGxpbmUgb3B0OiBoYXNoIGFsZzogJXNcbiIsYWxnX25hbWUpOwor
ICAgICAgICByZXR1cm4gdHJ1ZTsKKyAgICB9CisgICAgZWxzZSBpZiAoIGMgIT0gMCApIHsKKyAg
ICAgICAgRVJST1IoIkVycm9yOiB1bmtub3duIG9wdGlvbiBmb3IgUENPTkYgdHlwZVxuIik7Cisg
ICAgICAgIHJldHVybiBmYWxzZTsKKyAgICB9CisKKyAgICAvKiBNTEUgaGFzaCBmaWxlcyAqLwor
ICAgIExPRygiY21kbGluZSBvcHQ6IHBjb25mIGhhc2ggZmlsZTogJXNcbiIsIG9wdCk7CisgICAg
aWYgKCAhcGFyc2VfZmlsZShvcHQsIHBhcnNlX3Bjb25mX2xpbmUpICkKKyAgICAgICAgcmV0dXJu
IGZhbHNlOworCisgICAgcmV0dXJuIHRydWU7Cit9CisKK3N0YXRpYyBsY3BfcG9saWN5X2VsZW1l
bnRfdCAqY3JlYXRlKHZvaWQpCit7CisgICAgTE9HKCJbY3JlYXRlXVxuIik7CisgICAgc2l6ZV90
IGRhdGFfc2l6ZSA9ICBzaXplb2YobGNwX3Bjb25mX2VsZW1lbnRfdDIpICsKKyAgICAgICAgc2l6
ZW9mKHRwbXNfcXVvdGVfaW5mb190KSArIDMgKyBnZXRfaGFzaF9zaXplKGFsZ190eXBlKTsKKyAg
ICBsY3BfcG9saWN5X2VsZW1lbnRfdCAqZWx0ID0gbWFsbG9jKHNpemVvZigqZWx0KSArIGRhdGFf
c2l6ZSk7CisgICAgaWYgKCBlbHQgPT0gTlVMTCApIHsKKyAgICAgICAgRVJST1IoIkVycm9yOiBm
YWlsZWQgdG8gYWxsb2NhdGUgZWxlbWVudFxuIik7CisgICAgICAgIHJldHVybiBOVUxMOworICAg
IH0KKworICAgIG1lbXNldF9zKGVsdCwgc2l6ZW9mKCplbHQpICsgZGF0YV9zaXplLCAwKTsKKyAg
ICBlbHQtPnNpemUgPSBzaXplb2YoKmVsdCkgKyBkYXRhX3NpemU7CisgICAgbGNwX3Bjb25mX2Vs
ZW1lbnRfdDIgKnBjb25mID0gKGxjcF9wY29uZl9lbGVtZW50X3QyICopJmVsdC0+ZGF0YTsKKyAg
ICB0cG1zX3F1b3RlX2luZm9fdCAqcGNyX2luZm9zID0gKHRwbXNfcXVvdGVfaW5mb190ICopJnBj
b25mLT5wY3JfaW5mb3M7CisgICAgdHBtbF9wY3Jfc2VsZWN0aW9uX3QgKnBjcl9zZWxlY3RfbCA9
ICh0cG1sX3Bjcl9zZWxlY3Rpb25fdCAqKSZwY3JfaW5mb3MtPnBjcl9zZWxlY3Rpb247CisgICAg
dHBtc19wY3Jfc2VsZWN0aW9uX3QgKnBjcl9zZWxlY3RfcyA9ICh0cG1zX3Bjcl9zZWxlY3Rpb25f
dCAqKSZwY3Jfc2VsZWN0X2wtPnBjcl9zZWxlY3Rpb25zOworICAgIHVpbnQ4X3QgKnBjcl9zZWxl
Y3QgPSAodWludDhfdCAqKSZwY3Jfc2VsZWN0X3MtPnBjcl9zZWxlY3Q7CisgICAgdHBtMmJfZGln
ZXN0X3QgKnBjcl9kaWdlc3QgPSAodHBtMmJfZGlnZXN0X3QgKikocGNyX3NlbGVjdCArIDMpOwor
CisgICAgcGNvbmYtPmhhc2hfYWxnID0gYWxnX3R5cGU7CisgICAgcGNvbmYtPm51bV9wY3JfaW5m
b3MgPSAxOworICAgIHBjcl9zZWxlY3RfbC0+Y291bnQgPSBodG9ubCgxKTsKKyAgICBwY3Jfc2Vs
ZWN0X3MtPmhhc2hfYWxnID0gaHRvbnMoYWxnX3R5cGUpOworICAgIHBjcl9zZWxlY3Rfcy0+c2l6
ZV9vZl9zZWxlY3QgPSAzOworICAgIHBjcl9zZWxlY3RbMF0gPSBwY3Jfc2VsZWN0ZWQ7CisgICAg
cGNyX2RpZ2VzdC0+c2l6ZSA9IGh0b25zKGdldF9oYXNoX3NpemUoYWxnX3R5cGUpKTsKKworICAg
IGxjcF9oYXNoX3QyICpoYXNoID0gKGxjcF9oYXNoX3QyICopJnBjcl9kaWdlc3QtPmJ1ZmZlcjsK
KyAgICB1aW50OF90ICpwY3JfY29uY2F0ZW5hdGUgPSBtYWxsb2MobnJfaGFzaGVzICogZ2V0X2hh
c2hfc2l6ZShwY3JfYWxnX3R5cGUpKTsKKyAgICBmb3IgKCB1bnNpZ25lZCBpbnQgaSA9IDA7IGkg
PCBucl9oYXNoZXM7IGkrKyApCisgICAgICAgIG1lbWNweShwY3JfY29uY2F0ZW5hdGUgKyBpICog
Z2V0X2hhc2hfc2l6ZShwY3JfYWxnX3R5cGUpLCAmaGFzaGVzW2ldLCBnZXRfaGFzaF9zaXplKHBj
cl9hbGdfdHlwZSkpOworICAgIHByb2Nlc3Nfc2hhKGFsZ190eXBlLCBwY3JfY29uY2F0ZW5hdGUs
IG5yX2hhc2hlcyAqIGdldF9oYXNoX3NpemUocGNyX2FsZ190eXBlKSwgaGFzaCk7CisgICAgZnJl
ZShwY3JfY29uY2F0ZW5hdGUpOworICAgIExPRygiY3JlYXRlIHBjb25mIGVsZW1lbnQgc3VjY2Vl
ZCFcbiIpOworICAgIHJldHVybiBlbHQ7Cit9CisKK3N0YXRpYyB2b2lkIGRpc3BsYXkoY29uc3Qg
Y2hhciAqcHJlZml4LCBjb25zdCBsY3BfcG9saWN5X2VsZW1lbnRfdCAqZWx0KQoreworICAgIGxj
cF9wY29uZl9lbGVtZW50X3QyICpwY29uZiA9IChsY3BfcGNvbmZfZWxlbWVudF90MiAqKWVsdC0+
ZGF0YTsKKyAgICB0cG1zX3F1b3RlX2luZm9fdCAqcGNyX2luZm9zID0gKHRwbXNfcXVvdGVfaW5m
b190ICopJnBjb25mLT5wY3JfaW5mb3M7CisgICAgdHBtbF9wY3Jfc2VsZWN0aW9uX3QgKnBjcl9z
ZWxlY3RfbCA9ICh0cG1sX3Bjcl9zZWxlY3Rpb25fdCAqKSZwY3JfaW5mb3MtPnBjcl9zZWxlY3Rp
b247CisgICAgdHBtc19wY3Jfc2VsZWN0aW9uX3QgKnBjcl9zZWxlY3RfcyA9ICh0cG1zX3Bjcl9z
ZWxlY3Rpb25fdCAqKSZwY3Jfc2VsZWN0X2wtPnBjcl9zZWxlY3Rpb25zOworICAgIHVpbnQ4X3Qg
KnBjcl9zZWxlY3QgPSAodWludDhfdCAqKSZwY3Jfc2VsZWN0X3MtPnBjcl9zZWxlY3Q7CisgICAg
dHBtMmJfZGlnZXN0X3QgKnBjcl9kaWdlc3QgPSAodHBtMmJfZGlnZXN0X3QgKikocGNyX3NlbGVj
dCArIDMpOworCisgICAgRElTUExBWSgiJXMgaGFzaF9hbGc6ICVzXG4iLCBwcmVmaXgsIGhhc2hf
YWxnX3RvX3N0cihwY29uZi0+aGFzaF9hbGcpKTsKKyAgICBESVNQTEFZKCIlcyBQQ1IgcXVvdGU6
ICIsIHByZWZpeCk7CisgICAgZm9yICggdW5zaWduZWQgaW50IGkgPSAwOyBpIDwgODsgaSsrICkK
KyAgICAgICAgaWYgKCBwY3Jfc2VsZWN0WzBdICYgKDE8PGkpKSBESVNQTEFZKCIlZCAiLCBpKTsK
KyAgICBESVNQTEFZKCJcbiIpOworCisgICAgdWludDhfdCAqaGFzaCA9ICh1aW50OF90ICopcGNy
X2RpZ2VzdC0+YnVmZmVyOworICAgIHVuc2lnbmVkIGludCBoYXNoX3NpemUgPSBnZXRfaGFzaF9z
aXplKHBjb25mLT5oYXNoX2FsZyk7CisgICAgRElTUExBWSgiaGFzaGVzOiAiKTsKKyAgICBwcmlu
dF9oZXgoIiIsIGhhc2gsIGhhc2hfc2l6ZSk7Cit9CisKKworc3RhdGljIHN0cnVjdCBvcHRpb24g
b3B0c1tdID0geworICAgIHsiYWxnIiwgICAgICAgICAgICByZXF1aXJlZF9hcmd1bWVudCwgICAg
TlVMTCwgICAgICdhJ30sCisgICAgeyJwY3JfaGFzaCIsICAgICAgIHJlcXVpcmVkX2FyZ3VtZW50
LCAgICBOVUxMLCAgICAgJ2gnfSwKKyAgICB7InBjciIsICAgICAgICAgICAgcmVxdWlyZWRfYXJn
dW1lbnQsICAgIE5VTEwsICAgICAncCd9LAorICAgIHswLCAwLCAwLCAwfQorfTsKKworc3RhdGlj
IHBvbGVsdF9wbHVnaW5fdCBwbHVnaW4gPSB7CisgICAgInBjb25mIiwKKyAgICBvcHRzLAorICAg
ICIgICAgICBwY29uZlxuIgorICAgICIgICAgICAgIFstLWFsZyA8c2hhMXxzaGEyNTZ8c2hhMzg0
fHNoYTUxMj5dICAgIGhhc2ggYWxnIG9mIGVsZW1lbnRcbiIKKyAgICAiICAgICAgICBbLS1wY3Jf
aGFzaCA8c2hhMXxzaGEyNTY+XSAgICBoYXNoIGFsZyBvZiBpbnB1dCBwY3JcbiIKKyAgICAiICAg
ICAgICBbLS1wY3IgPDB8MXwyfDN8NHw1fDZ8Nz5dICAgIHBjcnMgcXVvdGVkXG4iCisgICAgIiAg
ICAgICAgPEhBU0ggRklMRT4gICAgICAgICAgICAgZmlsZSBjb250YWluaW5nIHBjciBoYXNoKGVz
KVxuIiwKKyAgICBMQ1BfUE9MRUxUX1RZUEVfUENPTkYyLAorICAgICZjbWRsaW5lX2hhbmRsZXIs
CisgICAgJmNyZWF0ZSwKKyAgICAmZGlzcGxheQorfTsKKworUkVHX1BPTEVMVF9QTFVHSU4oJnBs
dWdpbikKKworCisvKgorICogTG9jYWwgdmFyaWFibGVzOgorICogbW9kZTogQworICogYy1zZXQt
c3R5bGU6ICJCU0QiCisgKiBjLWJhc2ljLW9mZnNldDogNAorICogdGFiLXdpZHRoOiA0CisgKiBp
bmRlbnQtdGFicy1tb2RlOiBuaWwKKyAqIEVuZDoKKyAqLwo=
--0000000000008d64bf058a764fa4
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--0000000000008d64bf058a764fa4
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel

--0000000000008d64bf058a764fa4--

