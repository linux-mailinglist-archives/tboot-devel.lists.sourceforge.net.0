Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 18E8E36D328
	for <lists+tboot-devel@lfdr.de>; Wed, 28 Apr 2021 09:31:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Reply-To:From:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:
	MIME-Version:Message-ID:Date:To:Sender:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=NQfnsydsurFVCJDJsOIWlBTwWydFMu54qK6RXMlYeFU=; b=MP2M9EhsAq9Ky3yrxAhcM/dQUL
	6iaMw9EJ0+JgI/NLsoPc5hIvTCIWdY01MtnDKTGL/qOb0i9qZNKxGPJ+chZ7QZP8tKNtalRPg0QWP
	rDxpocaUHj3O+NAAZdo72i5A3Lu0PME4YCm9FRbsxO6UGPOCLWCiaU+x0VtxgHM318Nw=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1lbefF-0007Bq-J6; Wed, 28 Apr 2021 07:31:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <olivier.leroy@external.thalesgroup.com>)
 id 1lbefD-0007BI-Jo
 for tboot-devel@lists.sourceforge.net; Wed, 28 Apr 2021 07:31:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7ApyzmbVrqDPNU5owgEDU1CRpFnEcUmzy9fH2r4iBOI=; b=H5d9Iy4hYtfjkrrk6DShMBYC8I
 2KtKPJ66DS90PGIyQwBlxTnBVvTCOuWTjLrHnRozgEaEuPk9Um9Vus84quCNN8pQRtWYdL/TE/dSo
 0T+XKPmd+WQbFpCKqywwGLNwvH/E2sFCfE0OukBoPJQ6k+EBLtog9qE4io6iYIkc3JUw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Message-ID:Date:Subject:To:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=7ApyzmbVrqDPNU5owgEDU1CRpFnEcUmzy9fH2r4iBOI=; b=C
 uIzc2S9N0KKdf+n24cjFl6cMT9datA0SMCupKah498PVyw03alfnZlO+X0njAa1yldsz/XuluDS3M
 O62XR+q/6cFQqqhnc4PXmZMPHqGwYOIfJ/umY9AI40I8+v4Vg0jyTsBuBwF7Lo8R9oLiu/Dt+4Mpf
 687IFMra1PB8FEr0=;
Received: from thsbbfxrt02p.thalesgroup.com ([192.93.158.29])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lbefA-0036kM-2s
 for tboot-devel@lists.sourceforge.net; Wed, 28 Apr 2021 07:31:15 +0000
Received: from thsbbfxrt02p.thalesgroup.com (localhost [127.0.0.1])
 by localhost (Postfix) with SMTP id 4FVV5m1d4bzJn0g
 for <tboot-devel@lists.sourceforge.net>; Wed, 28 Apr 2021 09:05:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=external.thalesgroup.com; s=xrt20181201; t=1619593548;
 bh=7ApyzmbVrqDPNU5owgEDU1CRpFnEcUmzy9fH2r4iBOI=;
 h=From:To:Subject:Date:Message-ID:MIME-Version:From;
 b=crnS9FJaTFj52rTWBPihaA/Kf7i7NSa+fs36SMa6gvy1+7Gyx0adNbdvoc5Su5RAs
 hLLLoc5+Q9mfazmcHUAtpHgCYU2NlnMRblC3+uzUzAnsUvrDDRlYhr8mPNeZaoLlcg
 2CMXPtcQauV4rogVADNh7I6bc6FVSi2U0A34NE8iIOD9UwvxxkBVOJ9TXTx7Y07N27
 rZzbVG6r07tXuDE2avKGgfEF779jzdrngISu9Y50ohdRzB2zdesItHpnXRpqzTHEop
 mYHw5ZqPdc0wxIUTunyY6SDDYSShFA6Ciojito8Nv/QAugcCPTDxm67Um6Gn2IyCQo
 T679mxee0akjw==
To: "tboot-devel@lists.sourceforge.net" <tboot-devel@lists.sourceforge.net>
Thread-Topic: Issue with grub2-2.02-0.86 and tboot-1.9.11
Thread-Index: AQHXO/ylAfYrCITRgEKGA4tlzWlOGw==
Date: Wed, 28 Apr 2021 07:05:47 +0000
Message-ID: <e492a33df1e64323bc28f727eee0f2b2@external.thalesgroup.com>
Accept-Language: fr-FR, en-US
Content-Language: fr-FR
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-pmwin-version: 4.0.3, Antivirus-Engine: 3.80.1, Antivirus-Data: 5.83
MIME-Version: 1.0
X-Spam-Score: 1.9 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [192.93.158.29 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 1.0 PDS_BAD_THREAD_QP_64   Bad thread header - short QP
X-Headers-End: 1lbefA-0036kM-2s
Subject: [tboot-devel] Issue with grub2-2.02-0.86 and tboot-1.9.11
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
From: LE ROY Olivier - Contractor via tboot-devel
 <tboot-devel@lists.sourceforge.net>
Reply-To: LE ROY Olivier - Contractor <olivier.leroy@external.thalesgroup.com>
Content-Type: multipart/mixed; boundary="===============1459645918775547330=="
Errors-To: tboot-devel-bounces@lists.sourceforge.net

--===============1459645918775547330==
Content-Language: fr-FR
Content-Type: multipart/alternative;
	boundary="_000_e492a33df1e64323bc28f727eee0f2b2externalthalesgroupcom_"

--_000_e492a33df1e64323bc28f727eee0f2b2externalthalesgroupcom_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi,


 I have an issue with grub2-2.02-0.86 which I hadn't with grub2-2.02-0.80.


TBOOT: Error: Linux setup sectors 212 exceed maximum limitation 64.


Has anyone experienced the same error?


Cordialement / regards,

Olivier le Roy (contractor)

HW =96 SW development engineer
Thales LAS France


--_000_e492a33df1e64323bc28f727eee0f2b2externalthalesgroupcom_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p>Hi,</p>
<p><br>
</p>
<p>&nbsp;I have an issue with <span style=3D"font-family: &quot;Lucida Cons=
ole&quot;, Monaco, monospace; font-size: 11pt;">
grub2-2.02-0.86</span> which I hadn't with <span style=3D"font-family: &quo=
t;Lucida Console&quot;, Monaco, monospace; font-size: 11pt;">
grub2-2.02-0.80</span>.</p>
<p><br>
</p>
<p><span style=3D"font-family: &quot;Lucida Console&quot;, Monaco, monospac=
e; font-size: 11pt;">TBOOT: Error: Linux setup sectors 212 exceed maximum l=
imitation 64.</span></p>
<p><br>
</p>
<p>Has anyone experienced the same error?<br>
</p>
<p><br>
</p>
<div id=3D"Signature">
<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size: 12pt; colo=
r: rgb(0, 0, 0); font-family: Calibri, Helvetica, sans-serif, &quot;EmojiFo=
nt&quot;, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoCo=
lorEmoji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymb=
ols;">
<div class=3D"BodyFragment"><font size=3D"2">
<div class=3D"PlainText">Cordialement / regards,<br>
<br>
Olivier le Roy (contractor)<br>
<br>
HW =96 SW development engineer<br>
Thales LAS France<br>
<br>
</div>
</font></div>
</div>
</div>
</div>
</body>
</html>

--_000_e492a33df1e64323bc28f727eee0f2b2externalthalesgroupcom_--


--===============1459645918775547330==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============1459645918775547330==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel

--===============1459645918775547330==--

