Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D2205355A9
	for <lists+tboot-devel@lfdr.de>; Wed,  5 Jun 2019 05:30:59 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1hYMdP-0008IU-To; Wed, 05 Jun 2019 03:30:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <xanthein310@gmail.com>) id 1hYMdN-0008IM-Bz
 for tboot-devel@lists.sourceforge.net; Wed, 05 Jun 2019 03:30:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Cc:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0qpEwu4QVXmeUbi2ZJxOwmLiM+23tCn/MWxdw8hvtlE=; b=bpbzWhrlO7bXyicMfb4lww55b
 Bm/ULAj8HMDoyXjteywXEO5BsipXFst7Y9TmUmMOA8hnl+Pm/V4/6DHB9G4k5DdcrBQOLOiraJZG6
 uXp+gsJLpDpx98zX8cQbVUYjpsyftZ1u3WMlyz1fEqMe0FHKHefzmVlZWAj7KyiJm+CPk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=0qpEwu4QVXmeUbi2ZJxOwmLiM+23tCn/MWxdw8hvtlE=; b=T8TEl5QNMhf/Jv4EtDH/8t/XFF
 6N5QBr3trZOiXJkmzM/WI/Ae4Pk7v7pp7FsE6iaablH0bDjYWoNOAIy3pc7Budb4MCi4Mec+ZCUY2
 5w5IxF2hQ1iw+1NTFiMcSEwigigD4GfeYs5Fv2OD2OXFQjK+SVWwpgyuIc7+aoZHBkxo=;
Received: from mail-it1-f181.google.com ([209.85.166.181])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hYMdL-00HFgS-Av
 for tboot-devel@lists.sourceforge.net; Wed, 05 Jun 2019 03:30:41 +0000
Received: by mail-it1-f181.google.com with SMTP id s16so1452643ita.2
 for <tboot-devel@lists.sourceforge.net>; Tue, 04 Jun 2019 20:30:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=0qpEwu4QVXmeUbi2ZJxOwmLiM+23tCn/MWxdw8hvtlE=;
 b=BGyOCMxUq1gIG3wJYBD6qfbwdaYK6pnSvfgjY6cJyxsDM0x2Jk1z/i3e/4rBV1x0tQ
 jnJx8H140dIlhP0t/xe863bQ6bcErj9J16VnNcYCTFqLwv+6gzPfwOofCTmEi7Ot8rb7
 QSWZ+kL02RuFHBnmp/q2OWnj3iE9IwBj3skez+pRGB6tG/UiGX/2jN3xQNZWsHF9KFE+
 nDM0X8ASDg5IBBGrR7YobOs193XmZqKcBoNwAGaJGjF5hmDd//13PRsSiSBDG1Ih+n25
 XtJDB/TAQ7DVgsfcb86bF6lLKhskaNYpPlxqEKXj6ga/jY5bLTr5ITt1zhm0qHriXlld
 Okfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=0qpEwu4QVXmeUbi2ZJxOwmLiM+23tCn/MWxdw8hvtlE=;
 b=V/LdaiwTSmmwGgs0C7agucuI5OighVEa69qY1uf0nxeGgMO2AFfmDj9QETIWVCRgOh
 cPBDyXczoGzVXZiFMNpefCrr0jY4U5JPNdq+ytnZ6FgW+mkPosWWieOTWuz4S6fictRB
 4+R88xg8HUqiAW/PaApQu3B9MdxolnCXFJmrRlflrIh3qGntlUF1cqAf9vr62u6AoY1T
 NvMmp0VIPxAlbb+T5rhfCE9n70BGPmDtRcrRkdwr/gOHrZ2hZsB0cA+q1xKLAdSL6ye0
 VyoZawKB3rL+1iwEOraAvwFuL3zeT4LdO4kGGdDEpSocaO3qjLaP4yzKSMyteDf3Bakn
 MWtA==
X-Gm-Message-State: APjAAAU6E5VRIzdqwjiJsx5QKCZalKlIAt4+hmyzJFl8rJokVZRrPZbx
 NjWq+AudQr/jfQB7dK8EA99GPj2bno7fEwlxLHnOteeF
X-Google-Smtp-Source: APXvYqy1eqe6GwIAx4qxsG3l7GbtBGzhIxNf/rhxVcSEnYwrEMuAxzynktVHctEPfIzFWQ5ANHJO2Wirb8rMr5pVcsU=
X-Received: by 2002:a24:7401:: with SMTP id o1mr1681090itc.124.1559705432820; 
 Tue, 04 Jun 2019 20:30:32 -0700 (PDT)
MIME-Version: 1.0
References: <CAMD4Mu7yGO3Vm6G9PWup_MhB6Ab3RD3z4BRSec2wQQ8TbcpepQ@mail.gmail.com>
 <612878ba3e41d9ac7060976d94c2d8511e2a8c08.camel@intel.com>
 <CAMD4Mu4tUOOBDjh3q6SHQhEzx+5_=UCVdvJaB+XvNE+49pEyAQ@mail.gmail.com>
 <7df61eeaba0339c5b11826d3b4eee953b1e6906d.camel@intel.com>
 <CAMD4Mu610_KqfOyR6GLSLn1e+Hd=5FJAAmis5xCPR6194Z0UVA@mail.gmail.com>
 <42c8b88116816fbe36ab41998b67888979eb88fa.camel@intel.com>
In-Reply-To: <42c8b88116816fbe36ab41998b67888979eb88fa.camel@intel.com>
From: Dirk <xanthein310@gmail.com>
Date: Wed, 5 Jun 2019 11:30:21 +0800
Message-ID: <CAMD4Mu5psZZmwK=JnLaBjf6xoPCoEGX-9BYK1wsH4onTvvzonw@mail.gmail.com>
To: "tboot-devel@lists.sourceforge.net" <tboot-devel@lists.sourceforge.net>
X-Spam-Score: 0.8 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.166.181 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (xanthein310[at]gmail.com)
 -0.7 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.181 listed in wl.mailspike.net]
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
 0.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1hYMdL-00HFgS-Av
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
Content-Type: multipart/mixed; boundary="===============6084475830024982328=="
Errors-To: tboot-devel-bounces@lists.sourceforge.net

--===============6084475830024982328==
Content-Type: multipart/alternative; boundary="00000000000047111a058a8b381c"

--00000000000047111a058a8b381c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Lukasz,

Yes, I did provisioned TPM with the policy. And everything works fine. The
platform I used for test is Supermicro X11SDV-16C, TPM is Infineon SLB9670.

Regards,
Dirk

Hawrylko, Lukasz <lukasz.hawrylko@intel.com> =E6=96=BC 2019=E5=B9=B46=E6=9C=
=884=E6=97=A5 =E9=80=B1=E4=BA=8C =E4=B8=8B=E5=8D=888:01=E5=AF=AB=E9=81=93=
=EF=BC=9A

> Great, I will check your patch. Did you try to provision TPM with that
> policy and check if it works?
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
> *Date*: Tue, 04 Jun 2019 10:33:37 +0800
>
> Hi Lukasz,
>
> I try to add PCONF element type support to lcptools-v2. It can worked wit=
h
> tpm2-tools
> to generate PCONF element by following commands.
>
> sudo tpm2_pcrlist -L sha256:0,1,2,3,4,5,6,7 --tcti=3Ddevice | awk 'NR!=3D=
1
> {print $3}' | sed 's/0x//g' | sed -E 's/(.{2})/\1\ /g' > pcr
> lcp2_crtpolelt --create --type pconf --alg sha256 --pcr_hash sha256 --pcr
> 0,1,2,3,4,5,6,7 --ctrl 0x00 --out pconf.elt pcr
>
> Regards,
> Dirk
>
> Hawrylko, Lukasz <lukasz.hawrylko@intel.com> =E6=96=BC 2019=E5=B9=B46=E6=
=9C=883=E6=97=A5 =E9=80=B1=E4=B8=80 =E4=B8=8B=E5=8D=885:23=E5=AF=AB=E9=81=
=93=EF=BC=9A
>
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

--00000000000047111a058a8b381c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Lukasz,</div><div><br></div><div>Yes, I did provis=
ioned TPM with the policy. And everything works fine. The platform I used f=
or test is Supermicro X11SDV-16C, TPM is Infineon SLB9670.</div><div><br></=
div><div>Regards,</div><div>Dirk<br></div></div><br><div class=3D"gmail_quo=
te"><div dir=3D"ltr" class=3D"gmail_attr">Hawrylko, Lukasz &lt;<a href=3D"m=
ailto:lukasz.hawrylko@intel.com">lukasz.hawrylko@intel.com</a>&gt; =E6=96=
=BC 2019=E5=B9=B46=E6=9C=884=E6=97=A5 =E9=80=B1=E4=BA=8C =E4=B8=8B=E5=8D=88=
8:01=E5=AF=AB=E9=81=93=EF=BC=9A<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex"><div style=3D"text-align:left;direction:ltr"><div>Great, I =
will check your patch. Did you try to provision TPM with that policy and ch=
eck if it works?</div><div><br></div><div>Thanks,</div><div>Lukasz</div><di=
v><br></div><div>-----Original Message-----</div><div><b>From</b>: Dirk &lt=
;<a href=3D"mailto:Dirk%20%3cxanthein310@gmail.com%3e" target=3D"_blank">xa=
nthein310@gmail.com</a>&gt;</div><div><b>To</b>: <a href=3D"mailto:tboot-de=
vel@lists.sourceforge.net" target=3D"_blank">tboot-devel@lists.sourceforge.=
net</a> &lt;<a href=3D"mailto:%22tboot-devel@lists.sourceforge.net%22%20%3c=
tboot-devel@lists.sourceforge.net%3e" target=3D"_blank">tboot-devel@lists.s=
ourceforge.net</a>&gt;</div><div><b>Subject</b>: Re: [tboot-devel] Create L=
CP_PCONF_ELEMENT with TPM 2.0</div><div><b>Date</b>: Tue, 04 Jun 2019 10:33=
:37 +0800</div><div><br></div><div dir=3D"ltr"><div>Hi Lukasz,</div><div><b=
r></div><div>I try to add PCONF element type support to lcptools-v2. It can=
 worked with tpm2-tools</div><div>to generate PCONF element by following co=
mmands.</div><div><br></div><div>sudo tpm2_pcrlist -L sha256:0,1,2,3,4,5,6,=
7 --tcti=3Ddevice | awk &#39;NR!=3D1 {print $3}&#39; | sed &#39;s/0x//g&#39=
; | sed -E &#39;s/(.{2})/\1\ /g&#39; &gt; pcr<br>lcp2_crtpolelt --create --=
type pconf --alg sha256 --pcr_hash sha256 --pcr 0,1,2,3,4,5,6,7 --ctrl 0x00=
 --out pconf.elt pcr</div><div><br></div><div>Regards,</div><div>Dirk<br></=
div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_at=
tr">Hawrylko, Lukasz &lt;<a href=3D"mailto:lukasz.hawrylko@intel.com" targe=
t=3D"_blank">lukasz.hawrylko@intel.com</a>&gt; =E6=96=BC 2019=E5=B9=B46=E6=
=9C=883=E6=97=A5 =E9=80=B1=E4=B8=80 =E4=B8=8B=E5=8D=885:23=E5=AF=AB=E9=81=
=93=EF=BC=9A<br></div><blockquote type=3D"cite" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:2px solid rgb(114,159,207);padding-left:1ex"><div style=
=3D"text-align:left;direction:ltr"><div>Hi Dirk</div><div><br></div><div>I =
don&#39;t know if there any any official, public accessible tool for dumpin=
g PCRs. However structure of file required by lcp-gen2 is quite simple, it =
is described in util.py line 355.</div><div><br></div><div>Thanks,</div><di=
v>Lukasz</div><div><br></div><div>-----Original Message-----</div><div><b>F=
rom</b>: Dirk &lt;<a href=3D"mailto:Dirk%20%3cxanthein310@gmail.com%3e" tar=
get=3D"_blank">xanthein310@gmail.com</a>&gt;</div><div><b>To</b>: <a href=
=3D"mailto:tboot-devel@lists.sourceforge.net" target=3D"_blank">tboot-devel=
@lists.sourceforge.net</a> &lt;<a href=3D"mailto:%22tboot-devel@lists.sourc=
eforge.net%22%20%3ctboot-devel@lists.sourceforge.net%3e" target=3D"_blank">=
tboot-devel@lists.sourceforge.net</a>&gt;</div><div><b>Subject</b>: Re: [tb=
oot-devel] Create LCP_PCONF_ELEMENT with TPM 2.0</div><div><b>Date</b>: Tue=
, 28 May 2019 17:11:13 +0800</div><div><br></div><div dir=3D"ltr"><div>Hi L=
ukasz,</div><div><br></div><div>Thanks for the reply. I tried to run lcp-ge=
n2 tool and found I can&#39;t create valid PCR dump <br></div><div>file. In=
 UserGuide.txt of lcp-gen2, mentioned that the PCR dump file can be created=
 by</div><div>PCRDump2. But I can&#39;t find the tool. Do you have any sugg=
estion which tool I can use</div><div>to dump the PCR file?</div><div><br><=
/div><div>Regards,</div><div>Dirk<br> </div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">Hawrylko, Lukasz &lt;<a href=3D"mailt=
o:lukasz.hawrylko@intel.com" target=3D"_blank">lukasz.hawrylko@intel.com</a=
>&gt; =E6=96=BC 2019=E5=B9=B45=E6=9C=8827=E6=97=A5 =E9=80=B1=E4=B8=80 =E4=
=B8=8B=E5=8D=882:24=E5=AF=AB=E9=81=93=EF=BC=9A<br></div><blockquote type=3D=
"cite" style=3D"margin:0px 0px 0px 0.8ex;border-left:2px solid rgb(114,159,=
207);padding-left:1ex">Hi Dirk<br>
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
et=3D"_blank"><pre>tboot-devel@lists.sourceforge.net</pre></a><br><a href=
=3D"https://lists.sourceforge.net/lists/listinfo/tboot-devel" target=3D"_bl=
ank"><pre>https://lists.sourceforge.net/lists/listinfo/tboot-devel</pre></a=
><br></div>
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

--00000000000047111a058a8b381c--


--===============6084475830024982328==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============6084475830024982328==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel

--===============6084475830024982328==--

