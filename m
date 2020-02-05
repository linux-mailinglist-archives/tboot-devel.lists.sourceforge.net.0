Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C1046153336
	for <lists+tboot-devel@lfdr.de>; Wed,  5 Feb 2020 15:42:08 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1izLsR-0001b2-ST; Wed, 05 Feb 2020 14:42:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <olivier.leroy@external.thalesgroup.com>)
 id 1izLsQ-0001aq-KS
 for tboot-devel@lists.sourceforge.net; Wed, 05 Feb 2020 14:42:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:In-Reply-To:References:
 Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=F2Yb4FytCYqnl9FjkEpqPw24CJvWObIw1ezJxyR/UdE=; b=RYSjS7NXlkJaPgT6xtkd0gh8gy
 hhJB6s03bDUUhcjaUmg9tc59TVWIt50CwQKaZBAHVGFVrJ73Ydb63B6atievZXbfDNf5WJ6940ASR
 kVM7Xd0HK9feXkir2jYjkiR8VuQlDoPiRPWRyxXiEAT3WnFzrdFqpMxuB8w2+bf8O4L8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=F2Yb4FytCYqnl9FjkEpqPw24CJvWObIw1ezJxyR/UdE=; b=XYtlPn41jkeq41Wna1DuprQXRQ
 7QEHl1wnbbp4Qvir1e31wDkxvWIvGvRawiAKWSa1Wgj5WV5Ag9DwpDllHpG54jdWbrzRlAZzcM6vG
 DTWPw/ZzkeAoTZkk3gmcwNnk9C6y7rCHLbbF/vitu2wLLtdWQtzFTltQVVZ+2wgxtU/Q=;
Received: from thsbbfxrt01p.thalesgroup.com ([192.54.144.131])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1izLsM-00B0AF-1u
 for tboot-devel@lists.sourceforge.net; Wed, 05 Feb 2020 14:42:02 +0000
Received: from thsbbfxrt01p.thalesgroup.com (localhost [127.0.0.1])
 by localhost (Postfix) with SMTP id 48CPQk2bw2z45MC
 for <tboot-devel@lists.sourceforge.net>; Wed,  5 Feb 2020 15:41:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=external.thalesgroup.com; s=xrt20181201; t=1580913710;
 bh=F2Yb4FytCYqnl9FjkEpqPw24CJvWObIw1ezJxyR/UdE=;
 h=From:To:Subject:Date:Message-ID:References:In-Reply-To:
 MIME-Version:From;
 b=jXogmD67+7B+e0Akp0i7+lJFTZyqGPomJ9+omkft3S62CSbYUREm3++RqvwAwcGeP
 G1KGGPFlWTLCIzYg8e5qQhfH6wyNaLNvHC9CWQ76mnZ6eyOMNVbjK9p3nhgQY1+VqA
 jPTKTSiafrK9Evo5Hl1k5fizRY93dgHzo5o76/6/xNR6+AGj73LuNp2mFNmgfZNFME
 A91HyakKRdi/A5kFu8Qwh4LQUiWpfQNU9gzsSWw0drCDY2uL9E/4+x9kqlpacqyZZk
 AEjrlFCZbWICqbMKVLeUpL6FJwuOHoRT4qwOiJNSu0LZ7BBvUmx15q/epFagaIMBIr
 M8m9p0bxqSvnw==
From: LE ROY Olivier - Contractor <olivier.leroy@external.thalesgroup.com>
To: "tboot-devel@lists.sourceforge.net" <tboot-devel@lists.sourceforge.net>
Thread-Topic: [tboot-devel] Intel TXT + TBOOT + TPM 2.0: can't get LCP_ANY
 policy working on Supermicro X11SPM-TF
Thread-Index: AQHV22EGqt0P81817Ums16JNP8TN2qgLJRsAgAGB/Y4=
Date: Wed, 5 Feb 2020 14:41:49 +0000
Message-ID: <8af07dee186740a1bcb1f0632a838e9b@external.thalesgroup.com>
References: <3efd665c3f1b4681a0414f12c9c4e666@external.thalesgroup.com>,
 <150ceed6d58de2df2db789ff1346949dbedc4319.camel@linux.intel.com>
In-Reply-To: <150ceed6d58de2df2db789ff1346949dbedc4319.camel@linux.intel.com>
Accept-Language: fr-FR, en-US
Content-Language: fr-FR
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-pmwin-version: 4.0.3, Antivirus-Engine: 3.77.1, Antivirus-Data: 5.72
MIME-Version: 1.0
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: intel.com]
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
X-Headers-End: 1izLsM-00B0AF-1u
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
Content-Type: multipart/mixed; boundary="===============9087383401889278097=="
Errors-To: tboot-devel-bounces@lists.sourceforge.net

--===============9087383401889278097==
Content-Language: fr-FR
Content-Type: multipart/alternative;
	boundary="_000_8af07dee186740a1bcb1f0632a838e9bexternalthalesgroupcom_"

--_000_8af07dee186740a1bcb1f0632a838e9bexternalthalesgroupcom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Lukasz,


> What exactly did you add to that policy in lcp-gen2 tool? LCP is a
policy dedicated for SINIT, not for TBOOT.

> The another approach is to create separate index for VLP (0x01C10131)
and put VLP there.


I understand better why there weren't any log for the LCP_ANY policy and wh=
y tboot expects a VLP.

Thanks for the comprehensive answer.

I am still learning to implement policies in TPM2.0, trying to transpose wh=
at was done in a previous TPM1.2 based project.


> What do mean "doesn't seem to understand it"? With LCP_ANY SINIT will
allow any MLE to be executed.


I was following the recommendation to start with something simple, i.e. LCP=
_ANY.

Presently, I am trying a list policy, with an MLE element which hash is the=
 tboot.gz hash, to implement a VLP at 0x01c10131.


TBOOT logs are as follows:

TBOOT: reading Verified Launch Policy from TPM NV...
TBOOT:     :70 bytes read
TBOOT: policy:
TBOOT: unsupported version (1)
TBOOT:     :reading failed
TBOOT: reading Launch Control Policy from TPM NV...
TBOOT:     :70 bytes read
TBOOT:     :reading failed
TBOOT: failed to read policy from TPM NV, using default
TBOOT: policy:
TBOOT:      version: 2


The policy was created using lcp-gen2 from tboot-1.9.9 python tools (tboot-=
1.9.11 has the same results).

Do you have a hint why the generated policy has "version (1)" while tboot e=
xpects a version: 2?


Regards,

Olivier


________________________________
De : Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>
Envoy=E9 : mardi 4 f=E9vrier 2020 17:15
=C0 : LE ROY Olivier - Contractor; tboot-devel@lists.sourceforge.net
Objet : Re: [tboot-devel] Intel TXT + TBOOT + TPM 2.0: can't get LCP_ANY po=
licy working on Supermicro X11SPM-TF

Hi Olivier

On Tue, 2020-02-04 at 13:50 +0000, LE ROY Olivier - Contractor wrote:
> Hi,
>
> I am trying to get a simple LCP_ANY launch control policy to work on a Su=
permicro X11SPM-TF server with AOM-TPM-9670V TPM 2.0 module, without succes=
s. I get the "read error" from SINIT ACM each time.
>
> I am using tboot version 1.9.9.
>
> The LCP_ANY policy was created using two different ways:
>
> 1/ with lcp-gen2 python tools available in tboot sources,
>
> 2/ using a ready-made binary file, which is known to work, that is provid=
ed by Dr. G.W. Wettstein, and was contributed on this mailing list: (https:=
//sourceforge.net/p/tboot/mailman/message/36477790/)
> Dump of the platform owner NVram definition with functional LCP_ANY polic=
y:
>
> 00000016: 00 03 0b 00 01 00 00 00 00 00 00 00 00 00 00 00 ...............=
.
> 00000032: 00 00 00 00 00 00 02 00 00 00 00 00 c8 00 08 30 ...............=
0
> 00000048: 00 00 08 00 00 00 00 00 00 00 00 00 00 00 00 00 ...............=
.
> 00000064: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ...............=
.
> 00000070: 00 00 00 00 00 00                               ...............=
.
>
> Attributes: 0x224000a
>     OWNERWRITE
>     POLICYWRITE
>     AUTHREAD
>     NO_DA
>     WRITTEN
> and NVram index to 0x1c10106 for my Cascade Lake Intel Xeon Silver 4216 C=
PU based chipset.
>
> These two policies fail with following tboot error:
> TBOOT: no SINIT provided by bootloader; using BIOS SINIT
> ...
> TBOOT: reading Verified Launch Policy from TPM NV...
> TBOOT: TPM: fail to get public data of 0x01C10131 in TPM NV
> TBOOT:     :reading failed
> TBOOT: reading Launch Control Policy from TPM NV...
> TBOOT:     :70 bytes read
> TBOOT:     :reading failed
> TBOOT: failed to read policy from TPM NV, using default
> TBOOT: policy:

What exactly did you add to that policy in lcp-gen2 tool? LCP is a
policy dedicated for SINIT, not for TBOOT. There is a possibility to add
additional data to LCP called custom element. TBOOT reads LCP and than
checks if there is a custom element that it can use as its own policy
(called VLP). If it does not find any, it will throw "reading failed"
error.

The another approach is to create separate index for VLP (0x01C10131)
and put VLP there.

> The point is the SINIT ACM reads my LCP_ANY policy from TPM2 NVram but do=
esn't seem to understand it.
>
> There are no reason indicated in the TBOOT log.

What do mean "doesn't seem to understand it"? With LCP_ANY SINIT will
allow any MLE to be executed.

As I write above - TBOOT does not parse and apply LCP it only searches
for embedded VLP, so you will not get any information in logs.

>
> One reason I think of could be that the NVram index 0x01C10106 wasn't def=
ined with proper attributes.
> I define it with:
>
> tpm2_nvdefine -x 0x01c10106 -a 0x40000001 -s 70 -t 0x0204000a -P password

That looks correct.

Thanks,
Lukasz


--_000_8af07dee186740a1bcb1f0632a838e9bexternalthalesgroupcom_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size: 12pt; color: rgb(0, 0,=
 0); font-family: Calibri,Helvetica,sans-serif,&quot;EmojiFont&quot;,&quot;=
Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Seg=
oe UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols;" dir=3D"ltr">
<p>Hi Lukasz,</p>
<p><br>
</p>
<p>&gt; <font size=3D"2"><span style=3D"font-size:10pt;">What exactly did y=
ou add to that policy in lcp-gen2 tool? LCP is a<br>
policy dedicated for SINIT, not for TBOOT. </span></font><br>
</p>
<p>&gt; <font size=3D"2"><span style=3D"font-size:10pt;">The another approa=
ch is to create separate index for VLP (0x01C10131)<br>
and put VLP there. </span></font><br>
</p>
<p><br>
</p>
<p>I understand better why there weren't any log for the LCP_ANY policy and=
 why tboot expects a VLP.</p>
<p>Thanks for the comprehensive answer.</p>
<p>I am still learning to implement policies in TPM2.0, trying to transpose=
 what was done in a previous TPM1.2 based project.</p>
<p><br>
</p>
<p>&gt; <font size=3D"2"><span style=3D"font-size:10pt;">What do mean &quot=
;doesn't seem to understand it&quot;? With LCP_ANY SINIT will<br>
allow any MLE to be executed.</span></font></p>
<p><br>
</p>
<p>I was following the recommendation to start with something simple, i.e. =
LCP_ANY.</p>
<p>Presently, I am trying a <span>list policy,</span> with an MLE element w=
hich hash is the tboot.gz hash, to implement a VLP at 0x01c10131.</p>
<p><br>
</p>
<p>TBOOT logs are as follows:</p>
<p></p>
<div><span style=3D"font-family: &quot;Lucida Console&quot;,Monaco,monospac=
e; font-size: 11pt;">TBOOT: reading Verified Launch Policy from TPM NV...</=
span><br>
<span style=3D"font-family: &quot;Lucida Console&quot;,Monaco,monospace; fo=
nt-size: 11pt;">TBOOT: &nbsp;&nbsp; &nbsp;:70 bytes read</span><br>
<span style=3D"font-family: &quot;Lucida Console&quot;,Monaco,monospace; fo=
nt-size: 11pt;">TBOOT: policy:</span><br>
<span style=3D"font-family: &quot;Lucida Console&quot;,Monaco,monospace; fo=
nt-size: 11pt;">TBOOT: unsupported version (1)</span><br>
<span style=3D"font-family: &quot;Lucida Console&quot;,Monaco,monospace; fo=
nt-size: 11pt;">TBOOT: &nbsp;&nbsp; &nbsp;:reading failed</span><br>
<span style=3D"font-family: &quot;Lucida Console&quot;,Monaco,monospace; fo=
nt-size: 11pt;">TBOOT: reading Launch Control Policy from TPM NV...</span><=
br>
<span style=3D"font-family: &quot;Lucida Console&quot;,Monaco,monospace; fo=
nt-size: 11pt;">TBOOT: &nbsp;&nbsp; &nbsp;:70 bytes read</span><br>
<span style=3D"font-family: &quot;Lucida Console&quot;,Monaco,monospace; fo=
nt-size: 11pt;">TBOOT: &nbsp;&nbsp; &nbsp;:reading failed</span><br>
<span style=3D"font-family: &quot;Lucida Console&quot;,Monaco,monospace; fo=
nt-size: 11pt;">TBOOT: failed to read policy from TPM NV, using default</sp=
an><br>
<span style=3D"font-family: &quot;Lucida Console&quot;,Monaco,monospace; fo=
nt-size: 11pt;">TBOOT: policy:</span><br>
<span style=3D"font-family: &quot;Lucida Console&quot;,Monaco,monospace; fo=
nt-size: 11pt;">TBOOT: &nbsp;&nbsp; &nbsp; version: 2</span></div>
<br>
<p></p>
<p>The policy was created using <span>lcp-gen2</span> from tboot-1.9.9 pyth=
on tools (tboot-1.9.11 has the same results).</p>
<p>Do you have a hint why the generated policy has &quot;version (1)&quot; =
while tboot expects a version: 2?<br>
</p>
<p><br>
</p>
<div id=3D"Signature">
<div class=3D"BodyFragment"><font size=3D"2">
<div class=3D"PlainText">Regards,<br>
<br>
Olivier<br>
</div>
</font></div>
</div>
<br>
<br>
<div style=3D"color: rgb(0, 0, 0);">
<div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" face=
=3D"Calibri, sans-serif" color=3D"#000000"><b>De :</b> Lukasz Hawrylko &lt;=
lukasz.hawrylko@linux.intel.com&gt;<br>
<b>Envoy=E9 :</b> mardi 4 f=E9vrier 2020 17:15<br>
<b>=C0 :</b> LE ROY Olivier - Contractor; tboot-devel@lists.sourceforge.net=
<br>
<b>Objet :</b> Re: [tboot-devel] Intel TXT &#43; TBOOT &#43; TPM 2.0: can't=
 get LCP_ANY policy working on Supermicro X11SPM-TF</font>
<div>&nbsp;</div>
</div>
</div>
<font size=3D"2"><span style=3D"font-size:10pt;">
<div class=3D"PlainText">Hi Olivier<br>
<br>
On Tue, 2020-02-04 at 13:50 &#43;0000, LE ROY Olivier - Contractor wrote:<b=
r>
&gt; Hi,<br>
&gt; <br>
&gt; I am trying to get a simple LCP_ANY launch control policy to work on a=
 Supermicro X11SPM-TF server with AOM-TPM-9670V TPM 2.0 module, without suc=
cess. I get the &quot;read error&quot; from SINIT ACM each time.<br>
&gt; <br>
&gt; I am using tboot version 1.9.9.<br>
&gt; <br>
&gt; The LCP_ANY policy was created using two different ways:<br>
&gt; <br>
&gt; 1/ with lcp-gen2 python tools available in tboot sources,<br>
&gt; <br>
&gt; 2/ using a ready-made binary file, which is known to work, that is pro=
vided by Dr. G.W. Wettstein, and was contributed on this mailing list: (<a =
previewremoved=3D"true" id=3D"LPlnk698524" href=3D"https://sourceforge.net/=
p/tboot/mailman/message/36477790/">https://sourceforge.net/p/tboot/mailman/=
message/36477790/</a>)<br>
&gt; Dump of the platform owner NVram definition with functional LCP_ANY po=
licy:<br>
&gt; <br>
&gt; 00000016: 00 03 0b 00 01 00 00 00 00 00 00 00 00 00 00 00 ............=
....<br>
&gt; 00000032: 00 00 00 00 00 00 02 00 00 00 00 00 c8 00 08 30 ............=
...0<br>
&gt; 00000048: 00 00 08 00 00 00 00 00 00 00 00 00 00 00 00 00 ............=
....<br>
&gt; 00000064: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ............=
....<br>
&gt; 00000070: 00 00 00 00 00 00&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ............=
....<br>
&gt; <br>
&gt; Attributes: 0x224000a<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; OWNERWRITE<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; POLICYWRITE<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; AUTHREAD<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; NO_DA<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; WRITTEN<br>
&gt; and NVram index to 0x1c10106 for my Cascade Lake Intel Xeon Silver 421=
6 CPU based chipset.<br>
&gt; <br>
&gt; These two policies fail with following tboot error:<br>
&gt; TBOOT: no SINIT provided by bootloader; using BIOS SINIT<br>
&gt; ...<br>
&gt; TBOOT: reading Verified Launch Policy from TPM NV...<br>
&gt; TBOOT: TPM: fail to get public data of 0x01C10131 in TPM NV<br>
&gt; TBOOT:&nbsp;&nbsp;&nbsp;&nbsp; :reading failed<br>
&gt; TBOOT: reading Launch Control Policy from TPM NV...<br>
&gt; TBOOT:&nbsp;&nbsp;&nbsp;&nbsp; :70 bytes read<br>
&gt; TBOOT:&nbsp;&nbsp;&nbsp;&nbsp; :reading failed<br>
&gt; TBOOT: failed to read policy from TPM NV, using default<br>
&gt; TBOOT: policy:<br>
<br>
What exactly did you add to that policy in lcp-gen2 tool? LCP is a<br>
policy dedicated for SINIT, not for TBOOT. There is a possibility to add<br=
>
additional data to LCP called custom element. TBOOT reads LCP and than<br>
checks if there is a custom element that it can use as its own policy<br>
(called VLP). If it does not find any, it will throw &quot;reading failed&q=
uot;<br>
error.<br>
<br>
The another approach is to create separate index for VLP (0x01C10131)<br>
and put VLP there. <br>
<br>
&gt; The point is the SINIT ACM reads my LCP_ANY policy from TPM2 NVram but=
 doesn't seem to understand it.<br>
&gt; <br>
&gt; There are no reason indicated in the TBOOT log.<br>
<br>
What do mean &quot;doesn't seem to understand it&quot;? With LCP_ANY SINIT =
will<br>
allow any MLE to be executed.<br>
<br>
As I write above - TBOOT does not parse and apply LCP it only searches<br>
for embedded VLP, so you will not get any information in logs.<br>
<br>
&gt; <br>
&gt; One reason I think of could be that the NVram index 0x01C10106 wasn't =
defined with proper attributes.<br>
&gt; I define it with:<br>
&gt; <br>
&gt; tpm2_nvdefine -x 0x01c10106 -a 0x40000001 -s 70 -t 0x0204000a -P passw=
ord<br>
<br>
That looks correct.<br>
<br>
Thanks,<br>
Lukasz<br>
<br>
</div>
</span></font></div>
</div>
</body>
</html>

--_000_8af07dee186740a1bcb1f0632a838e9bexternalthalesgroupcom_--


--===============9087383401889278097==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============9087383401889278097==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel

--===============9087383401889278097==--

