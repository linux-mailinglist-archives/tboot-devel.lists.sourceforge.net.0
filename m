Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AE461262AF4
	for <lists+tboot-devel@lfdr.de>; Wed,  9 Sep 2020 10:53:17 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1kFvqg-0007U4-F7; Wed, 09 Sep 2020 08:53:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lukasz.hawrylko@linux.intel.com>) id 1kFvqc-0007TA-TY
 for tboot-devel@lists.sourceforge.net; Wed, 09 Sep 2020 08:52:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:References:In-Reply-To:
 Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uVCxY03hoa2rfQ/gjjbbiuPGb5kptCcmLR32RbTxgOk=; b=Eq30eaI6BlTS5EGzuDrSXjSggL
 6ub45w4cQ+dPstVXJtZ0V5CN2A6NTru3jfqsPtwYvsDyU1i8d/j20Adzrduys9V76QAj8sM2ppiBA
 eSMpZbStEwkxJnGbZBII72sPSrpXDdVPEvMdJq6Pg5EThB4R1RqOq6+P6+lZEFF/Iq/Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:References:In-Reply-To:Date:To:From:Subject:
 Message-ID:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=uVCxY03hoa2rfQ/gjjbbiuPGb5kptCcmLR32RbTxgOk=; b=Dh7RKegv6sIxX7XgQvrGNoglH0
 STHYScriARo5yuiUENVn5vc3nEESSRVpwZ/hF+jO2iferdAUJBU7f3IAGwG5nC8fmyqYECYc5VvZr
 KZfmryUFPeA7CZr4xRPRY2zPmLWq/JIaLUJ14zAj4jHY9VHADXuZx9YRrek+ApsHq2Vw=;
Received: from mga11.intel.com ([192.55.52.93])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kFvqW-000J7R-Br
 for tboot-devel@lists.sourceforge.net; Wed, 09 Sep 2020 08:52:58 +0000
IronPort-SDR: FHcdKvXYVleWK9qYRT99iTXsvk0ZGbeKZileky4pg9cQFgP+oHUbhfBGsiJ8lTs99s4THxC55T
 d08C9bIXtzMQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9738"; a="155771335"
X-IronPort-AV: E=Sophos;i="5.76,409,1592895600"; 
 d="scan'208,217";a="155771335"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2020 01:52:39 -0700
IronPort-SDR: XtvV7wiF0CAEupeNTT+IIbZhmU2Jb+SSPBuNnWbBPaVExPdnOtqzFhoglhja69qZJ0C3hkGxVZ
 fi+6/euRkDMQ==
X-IronPort-AV: E=Sophos;i="5.76,409,1592895600"; 
 d="scan'208,217";a="304424065"
Received: from lhawrylk-desk.ger.corp.intel.com ([10.249.129.230])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2020 01:52:38 -0700
Message-ID: <25d0ae33c97ccd64efb006ec3af3db66f8e20531.camel@linux.intel.com>
From: Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>
To: LE ROY Olivier - Contractor <olivier.leroy@external.thalesgroup.com>, 
 "tboot-devel@lists.sourceforge.net" <tboot-devel@lists.sourceforge.net>
Date: Wed, 09 Sep 2020 10:52:36 +0200
In-Reply-To: <7a2b32018e1f475680812659148a9f2a@external.thalesgroup.com>
References: <6e0aeb936ee041f3853388cb4a14e183@external.thalesgroup.com>
 ,<82c6c54a780c08a4f12c157415d66d3b44adea34.camel@linux.intel.com>
 <7a2b32018e1f475680812659148a9f2a@external.thalesgroup.com>
User-Agent: Evolution 3.34.4 (3.34.4-1.fc31) 
MIME-Version: 1.0
X-Spam-Score: 1.0 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: intel.com]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
X-Headers-End: 1kFvqW-000J7R-Br
Subject: Re: [tboot-devel] "no LCP module found" on Getac X500 G3
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
Content-Type: multipart/mixed; boundary="===============7406246825720135466=="
Errors-To: tboot-devel-bounces@lists.sourceforge.net


--===============7406246825720135466==
Content-Type: multipart/alternative; boundary="=-vIyOttyFn0eTFQjq7O+w"


--=-vIyOttyFn0eTFQjq7O+w
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

Did you add LCP data part to grub.cfg as module2 entry? If you have
multiple SINITs in grub.cfg, please leave only good one and check if it
helps.

Thanks,
Lukasz

On Tue, 2020-09-08 at 08:29 +0000, LE ROY Olivier - Contractor wrote:
> 
> <!--
> p
> 	{margin-top:0;
> 	margin-bottom:0}
> -->
> 
> 
> 
> Hi Lukasz and all,
> 
> 
> 
> thanks for your insight.
> 
> 
> 
> I understand that 
> 
> 
> > it is an expected behaviour that TBOOT is unable to read
> 
> 
> my LCP policy with an MLE element.
> 
> 
> 
> 
> 
> But I don't see the reason why, on a Supermicro platform, TBOOT logs are:
> 
> TBOOT: bios_data (@0x77f00008, 0x2c):
> 
> TBOOT:      version: 3
> 
> TBOOT:      bios_sinit_size: 0x40000 (262144)
> 
> 
> TBOOT:      lcp_pd_base: 0x0
> 
> TBOOT:      lcp_pd_size: 0x0 (0)
> 
> TBOOT:      lcp_pd_base: 0x0
> 
> TBOOT:      lcp_pd_size: 0x0 (0)
> 
> ...
> 
> TBOOT: v2 LCP policy data found
> 
> TBOOT:      lcp_po_base: 0x77f0014c
> 
> TBOOT:      lcp_po_size: 0x5e (94)
> 
> TBOOT:      lcp_pd_base: 0x0
> 
> TBOOT:      lcp_pd_size: 0x0 (0)
> 
> TBOOT:      lcp_pd_base: 0x0
> 
> TBOOT:      lcp_pd_size: 0x0 (0)
> 
> ...
> 
> TBOOT:      lcp_po_base: 0x77f0014c
> 
> TBOOT:      lcp_po_size: 0x5e (94)
> 
> TBOOT:      lcp_policy_hash:
> 
>     00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 
> 
> TBOOT:      lcp_policy_control: 0x00000000
> 
> ...
> 
> TBOOT: v2 LCP policy data found
> 
> TBOOT: no LCP module found
> 
> 
> 
> 
> 
> whereas and on a Getac platform, same policy ouptuts following TBOOT logs:
> reading
>  Launch Control Policy from TPM NV...
> 
> TBOOT:     :70 bytes read
> 
> TBOOT: in unwrap_lcp_policy
> 
> TBOOT: no LCP module found
> 
> TBOOT:     :reading failed
> 
> TBOOT: failed to read policy from TPM NV, using default
> 
> TBOOT: policy:
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> Cordialement / regards,
> 
> 
> 
> Olivier le Roy (contractor)
> 
> 
> 
> HW – SW development engineer
> 
> Thales LAS France
> 
> Tel.: +33 1 64 91 66 43
> 
> Mobile : +33 6 26 56 44 99
> 
> 
> 
> 
> De : Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>
> 
> Envoyé : lundi 7 septembre 2020 14:25:58
> 
> À : LE ROY Olivier - Contractor; tboot-devel@lists.sourceforge.net
> 
> Objet : Re: [tboot-devel] "no LCP module found" on Getac X500 G3
>  
> 
> 
> 
> Hi Olivier
> 
> 
> 
> On Fri, 2020-09-04 at 09:28 +0000, LE ROY Olivier - Contractor wrote:
> 
> 
> 
> > I tried to implement a LCP @ 0x01400001 and a VLP @ 0x01200001. These 2 policies were known to work on same OS but different platform (Supermicro).
> 
> > For LCP, I have the following error:
> 
> > 
> 
> > reading Launch Control Policy from TPM NV...
> 
> > TBOOT:     :70 bytes read
> 
> > TBOOT: in unwrap_lcp_policy
> 
> > TBOOT: no LCP module found
> 
> > TBOOT:     :reading failed
> 
> > TBOOT: failed to read policy from TPM NV, using default
> 
> > TBOOT: policy:
> 
> 
> 
> [snip]
> 
> 
> 
> > My LCP is created the following manner:
> 
> > 
> 
> >         tpm2_nvdefine -x 0x01400001 -a 0x40000001 -s 70 -t 0x204000a -P $TPM_OWNER_PASSWORD
> 
> >         lcp2_mlehash --create --alg sha256 --cmdline "extpol=sha256 logging=serial,memory" /boot/tboot.gz > mle_hash
> 
> >         lcp2_crtpolelt --create --type mle --alg sha256 --ctrl 0x00 --minver 0 --out mle.elt mle_hash
> 
> >         lcp2_crtpollist --create --out list_unsig.lst mle.elt
> 
> >         lcp2_crtpol --create --type list --pol list.pol --alg sha256 --sign 0x0A --ctrl 0x00 --data list.data list_unsig.lst
> 
> >         tpm2_nvwrite -x 0x01400001 -a 0x40000001 -P $TPM_OWNER_PASSWORD list.pol
> 
> >         cp -f list.data /boot/
> 
> > 
> 
> > Any idea why this LCP, which consists in just an mle element, could be functional on a platform and not on another?
> 
> 
> 
> With these commands you create LCP with MLE element that is consumed by
> 
> SINIT. It is an expected behaviour that TBOOT is unable to read it.
> 
> 
> 
> To create policy for TBOOT (VLP) you have to use tb_polgen tool, ex.:
> 
> 
> 
>     tb_polgen --create --ctrl 0x00 --type continue vl.pol
> 
>     tb_polgen --add --num 0 --pcr 19 --hash image \
> 
>               --cmdline "intel_iommu=on console=ttyS0,115200n8" \
> 
>               --image /boot/bzImage vl.pol
> 
> 
> 
> Then you have two options how to provision it to TPM:
> 
>  * provision as standalone policy
> 
>  * add it to LCP as custom element
> 
> 
> 
> If you already use LCP, easier way is to add custom element with TBOOT's
> 
> policy.
> 
> 
> 
>     lcp2_crtpolelt --create --ctrl 0x00 --type custom --out vl.elt \
> 
>                    --uuid tboot vl.pol
> 
> 
> 
> Then build LCP list with all elements that you want to have, provision
> 
> it to TPM and copy .data file to /boot (and add entry to grub.cfg).
> 
> 
> 
> If anything is unclear, please ask. It would be helpful if you can
> 
> describe what is your goal, what behaviour you want to achieve.
> 
> 
> 
> Thanks,
> 
> Lukasz
> 
> 
> 
> 
> 
> 
> 



--=-vIyOttyFn0eTFQjq7O+w
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html dir=3D"ltr"><head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
<meta name=3D"Generator" content=3D"Microsoft Exchange Server">
<!-- converted from text --><style><!-- .EmailQuote { margin-left: 1pt; pad=
ding-left: 4pt; border-left: #800000 2px solid; } --></style>
</head>
<body style=3D"text-align:left; direction:ltr;"><div>Did you add LCP data p=
art to grub.cfg as module2 entry? If you have<br>multiple SINITs in grub.cf=
g, please leave only good one and check if it<br>helps.</div><div><br></div=
><div>Thanks,</div><div>Lukasz</div><div><br></div><div>On Tue, 2020-09-08 =
at 08:29 +0000, LE ROY Olivier - Contractor wrote:</div><blockquote type=3D=
"cite" style=3D"margin:0 0 0 .8ex; border-left:2px #729fcf solid;padding-le=
ft:1ex">
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
<p>Hi Lukasz and all,</p>
<p><br>
</p>
<p>thanks for your insight.</p>
<p><br>
</p>
<p><span>I understand that <i><br>
</i></span></p>
<p><span><i>&gt; it is an expected behaviour that TBOOT is unable to read</=
i><br>
</span></p>
<p><span>my LCP policy with an MLE element.</span><br>
</p>
<p><br>
</p>
<p>But I don't see the reason why, on a Supermicro platform, TBOOT logs are=
:</p>
<p></p>
<div><span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace=
; font-size:11pt">T</span><span style=3D"font-family:&quot;Lucida Console&q=
uot;,Monaco,monospace; font-size:11pt">BOOT: bios_data (@0x77f00008, 0x2c):=
</span><br>
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace; fon=
t-size:11pt">TBOOT: &nbsp;&nbsp; &nbsp; version: 3</span><br>
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace; fon=
t-size:11pt">TBOOT: &nbsp;&nbsp; &nbsp; bios_sinit_size: 0x40000 (262144)</=
span></div>
<p></p>
<p></p>
<div><span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace=
; font-size:11pt">TBOOT: &nbsp;&nbsp; &nbsp; lcp_pd_base: 0x0</span><br>
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace; fon=
t-size:11pt">TBOOT: &nbsp;&nbsp; &nbsp; lcp_pd_size: 0x0 (0)</span><br>
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace; fon=
t-size:11pt">TBOOT: &nbsp;&nbsp; &nbsp; lcp_pd_base: 0x0</span><br>
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace; fon=
t-size:11pt">TBOOT: &nbsp;&nbsp; &nbsp; lcp_pd_size: 0x0 (0)<br>
...<br>
</span><span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospa=
ce; font-size:11pt">TBOOT: v2 LCP policy data found</span><br>
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace; fon=
t-size:11pt">TBOOT: &nbsp;&nbsp; &nbsp; lcp_po_base: 0x77f0014c</span><br>
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace; fon=
t-size:11pt">TBOOT: &nbsp;&nbsp; &nbsp; lcp_po_size: 0x5e (94)</span><br>
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace; fon=
t-size:11pt">TBOOT: &nbsp;&nbsp; &nbsp; lcp_pd_base: 0x0</span><br>
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace; fon=
t-size:11pt">TBOOT: &nbsp;&nbsp; &nbsp; lcp_pd_size: 0x0 (0)</span><br>
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace; fon=
t-size:11pt">TBOOT: &nbsp;&nbsp; &nbsp; lcp_pd_base: 0x0</span><br>
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace; fon=
t-size:11pt">TBOOT: &nbsp;&nbsp; &nbsp; lcp_pd_size: 0x0 (0)</span><br>
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace; fon=
t-size:11pt">...<br>
TBOOT: &nbsp;&nbsp; &nbsp; lcp_po_base: 0x77f0014c</span><br>
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace; fon=
t-size:11pt">TBOOT: &nbsp;&nbsp; &nbsp; lcp_po_size: 0x5e (94)</span><br>
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace; fon=
t-size:11pt">TBOOT: &nbsp;&nbsp; &nbsp; lcp_policy_hash:</span><br>
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace; fon=
t-size:11pt">&nbsp;&nbsp;&nbsp; 00 00 00 00 00 00 00 00 00 00 00 00 00 00 0=
0 00 00 00 00 00&nbsp;</span><br>
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace; fon=
t-size:11pt">TBOOT: &nbsp;&nbsp; &nbsp; lcp_policy_control: 0x00000000<br>
...<br>
</span><span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospa=
ce; font-size:11pt">TBOOT: v2 LCP policy data found</span><br>
<span style=3D"font-family:&quot;Lucida Console&quot;,Monaco,monospace; fon=
t-size:11pt">TBOOT: no LCP module found</span></div>
<br>
<p></p>
<p><br>
whereas and on a Getac platform, same policy ouptuts following TBOOT logs:<=
/p>
<p><font color=3D"black" face=3D"Calibri,Helvetica,sans-serif,EmojiFont,App=
le Color Emoji,Segoe UI Emoji,NotoColorEmoji,Segoe UI Symbol,Android Emoji,=
EmojiSymbols" size=3D"3"><span id=3D"x_divtagdefaultwrapper" style=3D"font-=
size:12pt"><font face=3D"Lucida Console,Monaco,monospace,serif,EmojiFont" s=
ize=3D"2"><span style=3D"font-size:11pt">reading
 Launch Control Policy from TPM NV...</span></font><br>
<font face=3D"Lucida Console,Monaco,monospace,serif,EmojiFont" size=3D"2"><=
span style=3D"font-size:11pt">TBOOT: &nbsp;&nbsp; &nbsp;:70 bytes read</spa=
n></font><br>
<font face=3D"Lucida Console,Monaco,monospace,serif,EmojiFont" size=3D"2"><=
span style=3D"font-size:11pt">TBOOT: in unwrap_lcp_policy</span></font><br>
<font face=3D"Lucida Console,Monaco,monospace,serif,EmojiFont" size=3D"2"><=
span style=3D"font-size:11pt">TBOOT: no LCP module found</span></font><br>
<font face=3D"Lucida Console,Monaco,monospace,serif,EmojiFont" size=3D"2"><=
span style=3D"font-size:11pt">TBOOT: &nbsp;&nbsp; &nbsp;:reading failed</sp=
an></font><br>
<font face=3D"Lucida Console,Monaco,monospace,serif,EmojiFont" size=3D"2"><=
span style=3D"font-size:11pt">TBOOT: failed to read policy from TPM NV, usi=
ng default</span></font><br>
<font face=3D"Lucida Console,Monaco,monospace,serif,EmojiFont" size=3D"2"><=
span style=3D"font-size:11pt">TBOOT: policy:</span></font></span></font><br=
>
</p>
<p><br>
</p>
<p><br>
</p>
<div id=3D"x_Signature">
<div class=3D"x_BodyFragment"><font size=3D"2">
<div class=3D"x_PlainText">Cordialement / regards,<br>
<br>
Olivier le Roy (contractor)<br>
<br>
HW =E2=80=93 SW development engineer<br>
Thales LAS France<br>
Tel.: +33 1 64 91 66 43<br>
Mobile : +33 6 26 56 44 99</div>
</font></div>
</div>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>De :</b> Lukasz Hawrylko &lt;=
lukasz.hawrylko@linux.intel.com&gt;<br>
<b>Envoy=C3=A9 :</b> lundi 7 septembre 2020 14:25:58<br>
<b>=C3=80 :</b> LE ROY Olivier - Contractor; tboot-devel@lists.sourceforge.=
net<br>
<b>Objet :</b> Re: [tboot-devel] "no LCP module found" on Getac X500 G3</fo=
nt>
<div>&nbsp;</div>
</div>
</div>
<font size=3D"2"><span style=3D"font-size:10pt;">
<div class=3D"PlainText">Hi Olivier<br>
<br>
On Fri, 2020-09-04 at 09:28 +0000, LE ROY Olivier - Contractor wrote:<br>
<br>
&gt; I tried to implement a LCP @ 0x01400001 and a VLP @ 0x01200001. These =
2 policies were known to work on same OS but different platform (Supermicro=
).<br>
&gt; For LCP, I have the following error:<br>
&gt; <br>
&gt; reading Launch Control Policy from TPM NV...<br>
&gt; TBOOT:&nbsp;&nbsp;&nbsp;&nbsp; :70 bytes read<br>
&gt; TBOOT: in unwrap_lcp_policy<br>
&gt; TBOOT: no LCP module found<br>
&gt; TBOOT:&nbsp;&nbsp;&nbsp;&nbsp; :reading failed<br>
&gt; TBOOT: failed to read policy from TPM NV, using default<br>
&gt; TBOOT: policy:<br>
<br>
[snip]<br>
<br>
&gt; My LCP is created the following manner:<br>
&gt; <br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; tpm2_nvdefine -x 0x014=
00001 -a 0x40000001 -s 70 -t 0x204000a -P $TPM_OWNER_PASSWORD<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; lcp2_mlehash --create =
--alg sha256 --cmdline "extpol=3Dsha256 logging=3Dserial,memory" /boot/tboo=
t.gz &gt; mle_hash<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; lcp2_crtpolelt --creat=
e --type mle --alg sha256 --ctrl 0x00 --minver 0 --out mle.elt mle_hash<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; lcp2_crtpollist --crea=
te --out list_unsig.lst mle.elt<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; lcp2_crtpol --create -=
-type list --pol list.pol --alg sha256 --sign 0x0A --ctrl 0x00 --data list.=
data list_unsig.lst<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; tpm2_nvwrite -x 0x0140=
0001 -a 0x40000001 -P $TPM_OWNER_PASSWORD list.pol<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; cp -f list.data /boot/=
<br>
&gt; <br>
&gt; Any idea why this LCP, which consists in just an mle element, could be=
 functional on a platform and not on another?<br>
<br>
With these commands you create LCP with MLE element that is consumed by<br>
SINIT. It is an expected behaviour that TBOOT is unable to read it.<br>
<br>
To create policy for TBOOT (VLP) you have to use tb_polgen tool, ex.:<br>
<br>
&nbsp;&nbsp;&nbsp; tb_polgen --create --ctrl 0x00 --type continue vl.pol<br=
>
&nbsp;&nbsp;&nbsp; tb_polgen --add --num 0 --pcr 19 --hash image \<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; --cmdline "intel_iommu=3Don console=3DttyS0,115200n8" \<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; --image /boot/bzImage vl.pol<br>
<br>
Then you have two options how to provision it to TPM:<br>
&nbsp;* provision as standalone policy<br>
&nbsp;* add it to LCP as custom element<br>
<br>
If you already use LCP, easier way is to add custom element with TBOOT's<br=
>
policy.<br>
<br>
&nbsp;&nbsp;&nbsp; lcp2_crtpolelt --create --ctrl 0x00 --type custom --out =
vl.elt \<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --uuid tboot vl.pol<br>
<br>
Then build LCP list with all elements that you want to have, provision<br>
it to TPM and copy .data file to /boot (and add entry to grub.cfg).<br>
<br>
If anything is unclear, please ask. It would be helpful if you can<br>
describe what is your goal, what behaviour you want to achieve.<br>
<br>
Thanks,<br>
Lukasz<br>
<br>
</div>
</span></font>


</blockquote><div><br></div></body></html>

--=-vIyOttyFn0eTFQjq7O+w--



--===============7406246825720135466==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============7406246825720135466==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel

--===============7406246825720135466==--


