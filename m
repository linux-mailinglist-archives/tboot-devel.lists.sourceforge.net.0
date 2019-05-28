Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F3FC2C2D0
	for <lists+tboot-devel@lfdr.de>; Tue, 28 May 2019 11:11:49 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1hVY8r-0007xW-Lp; Tue, 28 May 2019 09:11:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <xanthein310@gmail.com>) id 1hVY8q-0007xO-Cf
 for tboot-devel@lists.sourceforge.net; Tue, 28 May 2019 09:11:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Cc:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zLzZwGoAyWdq++ra+2cqmBliWzFSql7DUQdMSuRMn5k=; b=PBtbfQ/d+m+QQ2c7kAktS5B6x
 zfZOsvQ7Rh4oz3KSbFSeGsvaOcFGIVZgdgE3dzvxcYEvPUZHUYwKypaWrW68UuLyCTNK7LsXsIgiY
 gYD++D2xZVHp6pVsdRfKyCSbpSA8PQ7cfNwLfbG2OY1mg4+e/0OeW67+egfDJg4MR3ZQU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=zLzZwGoAyWdq++ra+2cqmBliWzFSql7DUQdMSuRMn5k=; b=Uq/iNjzIyf7nUZFcwRT3wLU0Ys
 xFmAGk26tHQwONMqc8K9BM6ZGYDSh5WJMYr+Ui3dU5RhHpyLb1gA8RllgRsIuK2KJoqAbB4/KdP1P
 4CXc7RkvTmN23tFPR0hD17wlMcxlBCt8Rtt71adoVt+8MoOy/oBAV5lYDCk41oKbGE+4=;
Received: from mail-it1-f182.google.com ([209.85.166.182])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hVY8o-000Dyf-No
 for tboot-devel@lists.sourceforge.net; Tue, 28 May 2019 09:11:32 +0000
Received: by mail-it1-f182.google.com with SMTP id m141so3067272ita.3
 for <tboot-devel@lists.sourceforge.net>; Tue, 28 May 2019 02:11:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=zLzZwGoAyWdq++ra+2cqmBliWzFSql7DUQdMSuRMn5k=;
 b=ZfILdiInD/ExRHXDh855RdmB1a6LcIBc1y9csQP9bIhk7pJpvYR5CTI1ZsqInqGocZ
 Q4oKe8zfnJcAzIf09i3DV2bi6ls+4FnOd9A04S+eHckbn6oLwKfonbF91ZE2QwA/QnH5
 cH8yq4/9CNACT0GSIqAqGR2xgQjHNe9H4n67wBOBF4kI0boUz+6BnCHbUYjwd0K272sa
 JO/11yFXcE7nF354bBtVFO9s7YcdnO2Mmuf7OJNIBuvE/MvKmxv34ahxSAETgEXUUOW8
 Pbz8/QKfmGkNsw48oni0kanzV70F+RDZ0T0L2e0bRrrCKmehRlFF8sJnsZfTeBEwWH8l
 IIEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=zLzZwGoAyWdq++ra+2cqmBliWzFSql7DUQdMSuRMn5k=;
 b=uaxdA483tqg0Vay6ynqbzvxbtsIz8m8lTryqq1norrx+CwEkfU4743spmfCZA2rHDn
 59fK9gBMN2gir4GtJWfCWw4mdqcQTzu3n8Comy4Gl+P3gIzhHVYZZvxhOy7bD6mlxzYf
 +LFLHPJvjZItVDVDrzN+rzsY6Zzq07Nh9K3eJYsLdWqBZB+P1ER5BeLaNBd26sAGjASz
 Na8k8xu09QahcHUkbz8eRjxKd8YUZopkwqLG1XEhCR8Z2xA9kkqh6tcJ7cb+0VfDJYKn
 Kgm2GTkvk49wNWJzIC0ABBirdJdnF8T1XHqgYw19tK8j1cVPCpVYDnDbUzBW6+rKWSiV
 0yBQ==
X-Gm-Message-State: APjAAAVAync3sC1NYL5pawZkvPVh6BdwGpsxPc8f0oJ2i8mwD5FMiDhS
 EDTjAL5CLxiJBUdIV+geKm6bxjKdd13DqQ6ES7qY8TSm
X-Google-Smtp-Source: APXvYqzscH0Da0kuSwDlp+KXjH6BOfRYgfHRsLqYScPYl3rY/A9l8bWSGsmXamOH/otYORVu0RGX3nWXz3L22ItDVxw=
X-Received: by 2002:a05:660c:2c5:: with SMTP id
 j5mr2193527itd.41.1559034684755; 
 Tue, 28 May 2019 02:11:24 -0700 (PDT)
MIME-Version: 1.0
References: <CAMD4Mu7yGO3Vm6G9PWup_MhB6Ab3RD3z4BRSec2wQQ8TbcpepQ@mail.gmail.com>
 <612878ba3e41d9ac7060976d94c2d8511e2a8c08.camel@intel.com>
In-Reply-To: <612878ba3e41d9ac7060976d94c2d8511e2a8c08.camel@intel.com>
From: Dirk <xanthein310@gmail.com>
Date: Tue, 28 May 2019 17:11:13 +0800
Message-ID: <CAMD4Mu4tUOOBDjh3q6SHQhEzx+5_=UCVdvJaB+XvNE+49pEyAQ@mail.gmail.com>
To: "tboot-devel@lists.sourceforge.net" <tboot-devel@lists.sourceforge.net>
X-Spam-Score: 1.2 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.166.182 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (xanthein310[at]gmail.com)
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
X-Headers-End: 1hVY8o-000Dyf-No
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
Content-Type: multipart/mixed; boundary="===============3650865181974475490=="
Errors-To: tboot-devel-bounces@lists.sourceforge.net

--===============3650865181974475490==
Content-Type: multipart/alternative; boundary="00000000000093d4b80589ef0cfb"

--00000000000093d4b80589ef0cfb
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Lukasz,

Thanks for the reply. I tried to run lcp-gen2 tool and found I can't create
valid PCR dump
file. In UserGuide.txt of lcp-gen2, mentioned that the PCR dump file can be
created by
PCRDump2. But I can't find the tool. Do you have any suggestion which tool
I can use
to dump the PCR file?

Regards,
Dirk

Hawrylko, Lukasz <lukasz.hawrylko@intel.com> =E6=96=BC 2019=E5=B9=B45=E6=9C=
=8827=E6=97=A5 =E9=80=B1=E4=B8=80 =E4=B8=8B=E5=8D=882:24=E5=AF=AB=E9=81=93=
=EF=BC=9A

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

--00000000000093d4b80589ef0cfb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Lukasz,</div><div><br></div><div>Thanks for the re=
ply. I tried to run lcp-gen2 tool and found I can&#39;t create valid PCR du=
mp <br></div><div>file. In UserGuide.txt of lcp-gen2, mentioned that the PC=
R dump file can be created by</div><div>PCRDump2. But I can&#39;t find the =
tool. Do you have any suggestion which tool I can use</div><div>to dump the=
 PCR file?</div><div><br></div><div>Regards,</div><div>Dirk<br> </div><br><=
div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Hawrylko, L=
ukasz &lt;<a href=3D"mailto:lukasz.hawrylko@intel.com">lukasz.hawrylko@inte=
l.com</a>&gt; =E6=96=BC 2019=E5=B9=B45=E6=9C=8827=E6=97=A5 =E9=80=B1=E4=B8=
=80 =E4=B8=8B=E5=8D=882:24=E5=AF=AB=E9=81=93=EF=BC=9A<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex">Hi Dirk<br>
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

--00000000000093d4b80589ef0cfb--


--===============3650865181974475490==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============3650865181974475490==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel

--===============3650865181974475490==--

