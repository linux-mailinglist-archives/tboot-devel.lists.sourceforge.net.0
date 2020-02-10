Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D7EF157006
	for <lists+tboot-devel@lfdr.de>; Mon, 10 Feb 2020 08:43:28 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1j13ir-0006Vx-Ah; Mon, 10 Feb 2020 07:43:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <olivier.leroy@external.thalesgroup.com>)
 id 1j13ip-0006Vg-J5
 for tboot-devel@lists.sourceforge.net; Mon, 10 Feb 2020 07:43:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:In-Reply-To:References:
 Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yhv8uSOgVGHdPUmZ9C+4hbc2L6yhRovd2CZMG233rj8=; b=ak9CG5JloSWNKnO7rbnUiE5wiZ
 j3+KLriXZ3c0ZAk3FEtC+j15ZA16+sJgGDkddGYmW65H68x7Q7tHr5jzN049VxArhHuqrdmfrXm5w
 cmCq+xZm7UJWpn1K+ng8f1c4OXiPd5vYZPYt8V9C/LERJ5HKcoRxib2245K/Fg34TUqk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=yhv8uSOgVGHdPUmZ9C+4hbc2L6yhRovd2CZMG233rj8=; b=UYUl+atj0Aongj/lRCufWvoHkD
 2YvtxT2ngMgDcEAIdhNf6MriSaPbE2B6MlY2V7WcoE/NsAlVmhM2X0u7J8VdSN4pZkGSgDbZ+pfnG
 DCPlH73yaGnmM717dc6iHsXjGnMcetZxtjNtGy1BPJ25CI9JZoB1XOAlnUtZ2/TgCNPI=;
Received: from thsbbfxrt01p.thalesgroup.com ([192.54.144.131])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1j13im-007Agz-FW
 for tboot-devel@lists.sourceforge.net; Mon, 10 Feb 2020 07:43:11 +0000
Received: from thsbbfxrt01p.thalesgroup.com (localhost [127.0.0.1])
 by localhost (Postfix) with SMTP id 48GHv53mz1z45KZ
 for <tboot-devel@lists.sourceforge.net>; Mon, 10 Feb 2020 08:42:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=external.thalesgroup.com; s=xrt20181201; t=1581320577;
 bh=yhv8uSOgVGHdPUmZ9C+4hbc2L6yhRovd2CZMG233rj8=;
 h=From:To:Subject:Date:Message-ID:References:In-Reply-To:
 MIME-Version:From;
 b=Wvf3wOK2Nm0+xEoxl3HTNar8lyoE4RbCQm2tjNMUkFhXgrKo0Q0JI07aosVy+bGjr
 QSWzoYVZG9h2Ire6DxnrJrQ9ZWPei+1J+iXf2V2s3Bd4pjVCEwgL32K0iZ8OcwgO8I
 OrSy6RVE21GF+bQozazMDDVJbEPDcjpRxYoy0OoimwbKQFcJIzwvMpQ31KlJKHq1vf
 qafpbj7AVn8mPdNoja3WC/OAuyVdTEzyTc0aipcRQgojkiMpn/RADICsifMSyXVn0h
 KXx3KbYxTYZMaD5f5ksgB4/0uWMlPFSMbi9e3OY7UL8ZeFINWQdZut2YkP9VePv6/O
 3jkjVrQAMaq6w==
From: LE ROY Olivier - Contractor <olivier.leroy@external.thalesgroup.com>
To: "tboot-devel@lists.sourceforge.net" <tboot-devel@lists.sourceforge.net>
Thread-Topic: [tboot-devel] Intel TXT + TBOOT + TPM 2.0: can't get LCP_ANY
 policy working on Supermicro X11SPM-TF
Thread-Index: AQHV22EGqt0P81817Ums16JNP8TN2qgLJRsAgAGB/Y6AAS9hgIAGOl0u
Date: Mon, 10 Feb 2020 07:42:56 +0000
Message-ID: <bd66588d49c445809f3540066b7388a9@external.thalesgroup.com>
References: <3efd665c3f1b4681a0414f12c9c4e666@external.thalesgroup.com>	,
 <150ceed6d58de2df2db789ff1346949dbedc4319.camel@linux.intel.com>
 <8af07dee186740a1bcb1f0632a838e9b@external.thalesgroup.com>,
 <2e78770ad67265f6452203f4383b6ddb8c2671f0.camel@linux.intel.com>
In-Reply-To: <2e78770ad67265f6452203f4383b6ddb8c2671f0.camel@linux.intel.com>
Accept-Language: fr-FR, en-US
Content-Language: fr-FR
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-pmwin-version: 4.0.3, Antivirus-Engine: 3.77.1, Antivirus-Data: 5.72
MIME-Version: 1.0
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [192.54.144.131 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1j13im-007Agz-FW
Subject: Re: [tboot-devel] Intel TXT + TBOOT + TPM 2.0: can't get LCP_ANY
 policy working on Supermicro X11SPM-TF
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
Content-Type: multipart/mixed; boundary="===============7916512561687411380=="
Errors-To: tboot-devel-bounces@lists.sourceforge.net

--===============7916512561687411380==
Content-Language: fr-FR
Content-Type: multipart/alternative;
	boundary="_000_bd66588d49c445809f3540066b7388a9externalthalesgroupcom_"

--_000_bd66588d49c445809f3540066b7388a9externalthalesgroupcom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,


thanks Lukasz for your hints and advice on this mailing list,

thanks Paul for your comprehensive README.md at https://github.com/anuvu/tb=
oot,


I was able to setup a LCP policy that checks integrity of tboot + cmdline a=
nd a VLP policy that checks integrity of kernel + cmdline and initramfs on =
my Supermicro X11SPM-TF server.


Regards,

Olivier
________________________________
De : Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>
Envoy=E9 : jeudi 6 f=E9vrier 2020 10:22:49
=C0 : LE ROY Olivier - Contractor; tboot-devel@lists.sourceforge.net
Objet : Re: [tboot-devel] Intel TXT + TBOOT + TPM 2.0: can't get LCP_ANY po=
licy working on Supermicro X11SPM-TF

On Wed, 2020-02-05 at 14:41 +0000, LE ROY Olivier - Contractor wrote:
> Hi Lukasz,
>
> > What exactly did you add to that policy in lcp-gen2 tool? LCP is a
> policy dedicated for SINIT, not for TBOOT.
> > The another approach is to create separate index for VLP (0x01C10131)
> and put VLP there.
>
> I understand better why there weren't any log for the LCP_ANY policy and =
why tboot expects a VLP.
> Thanks for the comprehensive answer.
> I am still learning to implement policies in TPM2.0, trying to transpose =
what was done in a previous TPM1.2 based project.
>
> > What do mean "doesn't seem to understand it"? With LCP_ANY SINIT will
> allow any MLE to be executed.
>
> I was following the recommendation to start with something simple, i.e. L=
CP_ANY.
> Presently, I am trying a list policy, with an MLE element which hash is t=
he tboot.gz hash, to implement a VLP at 0x01c10131.
>
> TBOOT logs are as follows:
> TBOOT: reading Verified Launch Policy from TPM NV...
> TBOOT:     :70 bytes read
> TBOOT: policy:
> TBOOT: unsupported version (1)
> TBOOT:     :reading failed
> TBOOT: reading Launch Control Policy from TPM NV...
> TBOOT:     :70 bytes read
> TBOOT:     :reading failed
> TBOOT: failed to read policy from TPM NV, using default
> TBOOT: policy:
> TBOOT:      version: 2
>
> The policy was created using lcp-gen2 from tboot-1.9.9 python tools (tboo=
t-1.9.11 has the same results).
> Do you have a hint why the generated policy has "version (1)" while tboot=
 expects a version: 2?
>
> Regards,
>
> Olivier
>

MLE element goes to LCP and is consumed by SINIT, not TBOOT. You can't
provision VLP index with LCP.

To create VLP you have to use tb_polgen tool. Here is an example:

  # create policy
  tb_polgen --create --ctrl 0x00 --type continue vl.pol

  # add kernel and its cmdline hash, extend PCR19
  tb_polgen --add --num 0 --pcr 19 --hash image --cmdline "..." \
            --image bzImage

  # add initrd hash, extend PCR20
  tb_polgen --add --num 1 --pcr 20 --hash image --cmdline "" \
            --image initrd.img

If you want to create policy with MLE element you have to use lcp-gen2
tool and provision it to LCP index. But as I said, TBOOT has nothing to
do with it, you should not expect that TBOOT will measure itself :)

Thanks,
Lukasz



--_000_bd66588d49c445809f3540066b7388a9externalthalesgroupcom_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<meta name=3D"Generator" content=3D"Microsoft Exchange Server">
<!-- converted from text --><style><!-- .EmailQuote { margin-left: 1pt; pad=
ding-left: 4pt; border-left: #800000 2px solid; } --></style>
</head>
<body>
<meta content=3D"text/html; charset=3DUTF-8">
<style type=3D"text/css" style=3D"">
<!--
p
	{margin-top:0;
	margin-bottom:0}
-->
</style>
<div dir=3D"ltr">
<div id=3D"x_divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; col=
or:#000000; font-family:Calibri,Helvetica,sans-serif">
<p>Hi,</p>
<p><br>
</p>
<p>thanks Lukasz for your hints and advice on this mailing list,</p>
<p>thanks Paul for your comprehensive <span>README.md at </span><a id=3D"LP=
lnk611759" href=3D"https://github.com/anuvu/tboot" class=3D"x_OWAAutoLink">=
https://github.com/anuvu/tboot</a>,</p>
<p><br>
</p>
<p>I was able to setup <span>a LCP policy that checks integrity of tboot &#=
43; cmdline</span> and a VLP policy that checks integrity of kernel &#43; c=
mdline and initramfs on my Supermicro X11SPM-TF server.</p>
<p><br>
</p>
<div id=3D"x_Signature">
<div class=3D"x_BodyFragment"><font size=3D"2">
<div class=3D"x_PlainText">Regards,<br>
<br>
Olivier</div>
</font></div>
</div>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>De :</b> Lukasz Hawrylko &lt;=
lukasz.hawrylko@linux.intel.com&gt;<br>
<b>Envoy=E9 :</b> jeudi 6 f=E9vrier 2020 10:22:49<br>
<b>=C0 :</b> LE ROY Olivier - Contractor; tboot-devel@lists.sourceforge.net=
<br>
<b>Objet :</b> Re: [tboot-devel] Intel TXT &#43; TBOOT &#43; TPM 2.0: can't=
 get LCP_ANY policy working on Supermicro X11SPM-TF</font>
<div>&nbsp;</div>
</div>
</div>
<font size=3D"2"><span style=3D"font-size:10pt;">
<div class=3D"PlainText">On Wed, 2020-02-05 at 14:41 &#43;0000, LE ROY Oliv=
ier - Contractor wrote:<br>
&gt; Hi Lukasz,<br>
&gt; <br>
&gt; &gt; What exactly did you add to that policy in lcp-gen2 tool? LCP is =
a<br>
&gt; policy dedicated for SINIT, not for TBOOT. <br>
&gt; &gt; The another approach is to create separate index for VLP (0x01C10=
131)<br>
&gt; and put VLP there. <br>
&gt; <br>
&gt; I understand better why there weren't any log for the LCP_ANY policy a=
nd why tboot expects a VLP.<br>
&gt; Thanks for the comprehensive answer.<br>
&gt; I am still learning to implement policies in TPM2.0, trying to transpo=
se what was done in a previous TPM1.2 based project.<br>
&gt; <br>
&gt; &gt; What do mean &quot;doesn't seem to understand it&quot;? With LCP_=
ANY SINIT will<br>
&gt; allow any MLE to be executed.<br>
&gt; <br>
&gt; I was following the recommendation to start with something simple, i.e=
. LCP_ANY.<br>
&gt; Presently, I am trying a list policy, with an MLE element which hash i=
s the tboot.gz hash, to implement a VLP at 0x01c10131.<br>
&gt; <br>
&gt; TBOOT logs are as follows:<br>
&gt; TBOOT: reading Verified Launch Policy from TPM NV...<br>
&gt; TBOOT:&nbsp;&nbsp;&nbsp;&nbsp; :70 bytes read<br>
&gt; TBOOT: policy:<br>
&gt; TBOOT: unsupported version (1)<br>
&gt; TBOOT:&nbsp;&nbsp;&nbsp;&nbsp; :reading failed<br>
&gt; TBOOT: reading Launch Control Policy from TPM NV...<br>
&gt; TBOOT:&nbsp;&nbsp;&nbsp;&nbsp; :70 bytes read<br>
&gt; TBOOT:&nbsp;&nbsp;&nbsp;&nbsp; :reading failed<br>
&gt; TBOOT: failed to read policy from TPM NV, using default<br>
&gt; TBOOT: policy:<br>
&gt; TBOOT:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; version: 2<br>
&gt; <br>
&gt; The policy was created using lcp-gen2 from tboot-1.9.9 python tools (t=
boot-1.9.11 has the same results).<br>
&gt; Do you have a hint why the generated policy has &quot;version (1)&quot=
; while tboot expects a version: 2?<br>
&gt; <br>
&gt; Regards,<br>
&gt; <br>
&gt; Olivier<br>
&gt; <br>
<br>
MLE element goes to LCP and is consumed by SINIT, not TBOOT. You can't<br>
provision VLP index with LCP.<br>
<br>
To create VLP you have to use tb_polgen tool. Here is an example:<br>
<br>
&nbsp; # create policy<br>
&nbsp; tb_polgen --create --ctrl 0x00 --type continue vl.pol<br>
<br>
&nbsp; # add kernel and its cmdline hash, extend PCR19<br>
&nbsp; tb_polgen --add --num 0 --pcr 19 --hash image --cmdline &quot;...&qu=
ot; \<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --image =
bzImage<br>
<br>
&nbsp; # add initrd hash, extend PCR20<br>
&nbsp; tb_polgen --add --num 1 --pcr 20 --hash image --cmdline &quot;&quot;=
 \<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --image =
initrd.img<br>
<br>
If you want to create policy with MLE element you have to use lcp-gen2<br>
tool and provision it to LCP index. But as I said, TBOOT has nothing to<br>
do with it, you should not expect that TBOOT will measure itself :)<br>
<br>
Thanks,<br>
Lukasz<br>
&nbsp; <br>
<br>
</div>
</span></font>
</body>
</html>

--_000_bd66588d49c445809f3540066b7388a9externalthalesgroupcom_--


--===============7916512561687411380==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============7916512561687411380==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel

--===============7916512561687411380==--

