Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BDF68151CC7
	for <lists+tboot-devel@lfdr.de>; Tue,  4 Feb 2020 16:00:46 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1iyzgj-0001Ji-8z; Tue, 04 Feb 2020 15:00:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <olivier.leroy@external.thalesgroup.com>)
 id 1iyzgh-0001Ja-U6
 for tboot-devel@lists.sourceforge.net; Tue, 04 Feb 2020 15:00:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:In-Reply-To:References:
 Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JfmQWucIBOhbw49p2SksKfD5j79gpX/g04wB4cLFYGI=; b=ljJSh1H35z/eeBgyhF0Vz2EsSo
 n74/CE8ROMhLCXiUtGUlqDj9EM5u0rcc1v8MWJ3lj9wJWDnZFfjmQKqDAfwt8N7QNHhF3hodWL1en
 apU7tKH/ijI/X1sgUQHAanGnGWJWivKKjX54SbQZdDgvNw/At5sYKUtJEqZT7LEuGzuk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=JfmQWucIBOhbw49p2SksKfD5j79gpX/g04wB4cLFYGI=; b=Gi74v/vSL8VktvqVNDlGR2nxQb
 gMG20dgAHg5rvqIFR4z1cMvFaaE8kuLDJhWbruE1mAjlqpkubcqoWMv8tbqkJtR+z0nSX+5ubGUJd
 ntjgYbgwN8nV08+HFQrwsIV1l6JO/k0iHBUSjvMv9EdNg66jNqfd7O4WJF2mxhwwnlc0=;
Received: from thsbbfxrt01p.thalesgroup.com ([192.54.144.131])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iyzgd-00A7d1-OA
 for tboot-devel@lists.sourceforge.net; Tue, 04 Feb 2020 15:00:27 +0000
Received: from thsbbfxrt01p.thalesgroup.com (localhost [127.0.0.1])
 by localhost (Postfix) with SMTP id 48BntT250fz45fb
 for <tboot-devel@lists.sourceforge.net>; Tue,  4 Feb 2020 16:00:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=external.thalesgroup.com; s=xrt20181201; t=1580828417;
 bh=JfmQWucIBOhbw49p2SksKfD5j79gpX/g04wB4cLFYGI=;
 h=From:To:Subject:Date:Message-ID:References:In-Reply-To:
 MIME-Version:From;
 b=eiVlu+o88PWfWg9M0MoqA3vyL1/rCqtmJgr2WvPmWtn+OUb9yTjjalEVDs6cpgwSf
 Jmv9WUO9Kac5FnS8BJ10m33pyl976w/CJG+T80jZvbJO7+L7lUUrW0phr0qrJMnp+k
 SSAKKf/3FQUXr50JEy/BwtUp4rhFa2coq9VsGP4YWVHQ6yRu+3LKfwvWEmHwMR7eaK
 34TCAYVeiuSCqwUfLFNrH7RCbnh5vMZPflF1htyguY5QoS4+1SsExmCZm7BwraRU52
 tF8lkwYyrBFcN8+kzrU2uJXBzlPwZ051+Talv+1fOFTZgW0CsV2rG6YkZyLG4Rhand
 deJ7pRXksDxAA==
From: LE ROY Olivier - Contractor <olivier.leroy@external.thalesgroup.com>
To: "tboot-devel@lists.sourceforge.net" <tboot-devel@lists.sourceforge.net>
Thread-Topic: [tboot-devel] Intel TXT + TBOOT + TPM 2.0: can't get LCP_ANY
 policy working on Supermicro X11SPM-TF
Thread-Index: AQHV22EGqt0P81817Ums16JNP8TN2qgLHGKAgAABlEM=
Date: Tue, 4 Feb 2020 14:59:46 +0000
Message-ID: <bd789e03f5bb40b0a9cf0e734094a39c@external.thalesgroup.com>
References: <3efd665c3f1b4681a0414f12c9c4e666@external.thalesgroup.com>,
 <19895b6c0f53d73cf695e251cfd0b058c963b67a.camel@cisco.com>
In-Reply-To: <19895b6c0f53d73cf695e251cfd0b058c963b67a.camel@cisco.com>
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
 for more information. [URIs: cisco.com]
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
X-Headers-End: 1iyzgd-00A7d1-OA
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
Content-Type: multipart/mixed; boundary="===============3111507196501689947=="
Errors-To: tboot-devel-bounces@lists.sourceforge.net

--===============3111507196501689947==
Content-Language: fr-FR
Content-Type: multipart/alternative;
	boundary="_000_bd789e03f5bb40b0a9cf0e734094a39cexternalthalesgroupcom_"

--_000_bd789e03f5bb40b0a9cf0e734094a39cexternalthalesgroupcom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,


thanks for this checklist , but unfortunately, I already observed these man=
ipulations, without success.


I must say the same attempt was done on two Supermicro platforms (Brodwell =
based and Cascade Lake based) with same result:


TBOOT:     :70 bytes read
TBOOT:     :reading failed


Regards,

Olivier le Roy



________________________________
De : Paul Moore (pmoore2) <pmoore2@cisco.com>
Envoy=E9 : mardi 4 f=E9vrier 2020 15:44
=C0 : LE ROY Olivier - Contractor; tboot-devel@lists.sourceforge.net
Objet : Re: [tboot-devel] Intel TXT + TBOOT + TPM 2.0: can't get LCP_ANY po=
licy working on Supermicro X11SPM-TF

On Tue, 2020-02-04 at 13:50 +0000, LE ROY Olivier - Contractor wrote:
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
>
> The point is the SINIT ACM reads my LCP_ANY policy from TPM2 NVram but
> doesn't seem to understand it.
>
> There are no reason indicated in the TBOOT log.
>
> One reason I think of could be that the NVram index 0x01C10106 wasn't
> defined with proper attributes.
> I define it with:
>
> tpm2_nvdefine -x 0x01c10106 -a 0x40000001 -s 70 -t 0x0204000a -P
> password
>
> Hoping someone will help me solve this problem,

Hi,

I'm not sure if this would help, but here is the process I typically
follow when first getting TXT working on a TPM2 system.

1. Reset / Clear the TPM and Take Ownership

This may not be strictly necessary if you can guarantee the TPM is in a
known good state, but if you aren't certain and you don't have anything
stored in the TPM I think a full TPM reset/clear is a smart idea.  You
typically need to do the TPM clear via the BIOS menu system, and on some
systems you need an admin/supervisor password set before you can access
the TPM clear option.  Once the TPM is cleared you can take ownership
with the following command:

  # tpm2_takeownership -o <password> -e <password> -l <password>

2. Define the LCP Index

You already know how to do this, but after you clear the TPM you will
need to redefine the NVRAM index on the TPM.

  # tpm2_nvdefine -x 0x1c10106 -a 0x40000001 -P <password> \
                  -s 70 -t 0x204000A

3. Write the TPM's Portion of the LCP into the TPM

The LCP is too large to fit into the TPM so we split into *.data and
*.pol files when generating it via the lcp2_crtpol tool.  You'll want to
pass the *.data file to tboot during boot and the *.pol file (lists.pol
in the example below) you'll want to write to the TPM using the
following command:

  # tpm2_nvwrite -x 0x1c10106 -a 0x40000001 -P <password> lists.pol

Hopefully that gets you closer to a working system.  I'm in the process
of writing up some better notes, I'll send a note to the list when they
are available.

Good luck!

-Paul


--_000_bd789e03f5bb40b0a9cf0e734094a39cexternalthalesgroupcom_
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
<p>Hi,</p>
<p><br>
</p>
<p>thanks for this checklist , but unfortunately, I already observed these =
manipulations, without success.<br>
</p>
<p><br>
</p>
<p>I must say the same attempt was done on two Supermicro platforms (Brodwe=
ll based and Cascade Lake based) with same result:</p>
<p><br>
</p>
<p><font size=3D"2"><span style=3D"font-size:10pt;">TBOOT:&nbsp;&nbsp;&nbsp=
;&nbsp; :70 bytes read<br>
TBOOT:&nbsp;&nbsp;&nbsp;&nbsp; :reading failed</span></font><br>
</p>
<p><br>
</p>
<div id=3D"Signature">
<div class=3D"BodyFragment"><font size=3D"2">
<div class=3D"PlainText">Regards,<br>
<br>
Olivier le Roy<br>
<br>
</div>
</font></div>
</div>
<br>
<br>
<div style=3D"color: rgb(0, 0, 0);">
<div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" face=
=3D"Calibri, sans-serif" color=3D"#000000"><b>De :</b> Paul Moore (pmoore2)=
 &lt;pmoore2@cisco.com&gt;<br>
<b>Envoy=E9 :</b> mardi 4 f=E9vrier 2020 15:44<br>
<b>=C0 :</b> LE ROY Olivier - Contractor; tboot-devel@lists.sourceforge.net=
<br>
<b>Objet :</b> Re: [tboot-devel] Intel TXT &#43; TBOOT &#43; TPM 2.0: can't=
 get LCP_ANY policy working on Supermicro X11SPM-TF</font>
<div>&nbsp;</div>
</div>
</div>
<font size=3D"2"><span style=3D"font-size:10pt;">
<div class=3D"PlainText">On Tue, 2020-02-04 at 13:50 &#43;0000, LE ROY Oliv=
ier - Contractor wrote:<br>
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
&gt; <br>
&gt; The point is the SINIT ACM reads my LCP_ANY policy from TPM2 NVram but=
<br>
&gt; doesn't seem to understand it.<br>
&gt; <br>
&gt; There are no reason indicated in the TBOOT log.<br>
&gt; <br>
&gt; One reason I think of could be that the NVram index 0x01C10106 wasn't<=
br>
&gt; defined with proper attributes.<br>
&gt; I define it with:<br>
&gt; <br>
&gt; tpm2_nvdefine -x 0x01c10106 -a 0x40000001 -s 70 -t 0x0204000a -P<br>
&gt; password<br>
&gt; <br>
&gt; Hoping someone will help me solve this problem,<br>
<br>
Hi,<br>
<br>
I'm not sure if this would help, but here is the process I typically<br>
follow when first getting TXT working on a TPM2 system.<br>
<br>
1. Reset / Clear the TPM and Take Ownership<br>
<br>
This may not be strictly necessary if you can guarantee the TPM is in a<br>
known good state, but if you aren't certain and you don't have anything<br>
stored in the TPM I think a full TPM reset/clear is a smart idea.&nbsp; You=
<br>
typically need to do the TPM clear via the BIOS menu system, and on some<br=
>
systems you need an admin/supervisor password set before you can access<br>
the TPM clear option.&nbsp; Once the TPM is cleared you can take ownership<=
br>
with the following command:<br>
<br>
&nbsp; # tpm2_takeownership -o &lt;password&gt; -e &lt;password&gt; -l &lt;=
password&gt;<br>
<br>
2. Define the LCP Index<br>
<br>
You already know how to do this, but after you clear the TPM you will<br>
need to redefine the NVRAM index on the TPM.<br>
<br>
&nbsp; # tpm2_nvdefine -x 0x1c10106 -a 0x40000001 -P &lt;password&gt; \<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; -s 70 -t 0x204000A<br>
<br>
3. Write the TPM's Portion of the LCP into the TPM<br>
<br>
The LCP is too large to fit into the TPM so we split into *.data and<br>
*.pol files when generating it via the lcp2_crtpol tool.&nbsp; You'll want =
to<br>
pass the *.data file to tboot during boot and the *.pol file (lists.pol<br>
in the example below) you'll want to write to the TPM using the<br>
following command:<br>
<br>
&nbsp; # tpm2_nvwrite -x 0x1c10106 -a 0x40000001 -P &lt;password&gt; lists.=
pol<br>
<br>
Hopefully that gets you closer to a working system.&nbsp; I'm in the proces=
s<br>
of writing up some better notes, I'll send a note to the list when they<br>
are available.<br>
<br>
Good luck!<br>
<br>
-Paul<br>
<br>
</div>
</span></font></div>
</div>
</body>
</html>

--_000_bd789e03f5bb40b0a9cf0e734094a39cexternalthalesgroupcom_--


--===============3111507196501689947==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============3111507196501689947==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel

--===============3111507196501689947==--

