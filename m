Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BDAD4D60BF
	for <lists+tboot-devel@lfdr.de>; Fri, 11 Mar 2022 12:39:43 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1nSdcQ-0006iZ-C6; Fri, 11 Mar 2022 11:39:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <lukasz@hawrylko.pl>) id 1nSdcN-0006iT-8W
 for tboot-devel@lists.sourceforge.net; Fri, 11 Mar 2022 11:39:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :References:In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZT61uHDivRxDs6w+uKsdCyy5+Jbsrj3gwB4c6d6/DIQ=; b=egx9zwLz119gLTsuBwXZuNOQMS
 vFU8y/Y15pA4dewl21tDV8Y5OcZ99U3KOdwpY4PnHWCGKvryjwGYID4c/FG2UDIRlZQUGx6jh6Ucm
 UKQu4ldJalXcQiWd4MduliznRTTegYyFD5iEpKv+aEwnUBH+SJyexTewJrZaGKFmhQaU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:References:
 In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ZT61uHDivRxDs6w+uKsdCyy5+Jbsrj3gwB4c6d6/DIQ=; b=Fikajwr2kKLwHdWvHilr5Cl5rp
 T8hwEEv8Xw/E/2lPi/QMmGr+ZpDCQW619pgD//wPPz5Cli55HBMSchHWh+wQwjJBJ5NGMouprRi2Z
 vPvOLdMOhbeQfid+u9t919WcKueYLVeP3AKT2WVP2RkO+FiPdLIKJ/5xQW/Pb98ZnCxo=;
Received: from hawrylko.pl ([54.37.138.145])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nSdcG-00C4NL-KF
 for tboot-devel@lists.sourceforge.net; Fri, 11 Mar 2022 11:39:33 +0000
Received: from lh-lnx.vector.com.pl (unknown [193.109.59.18])
 by hawrylko.pl (Postfix) with ESMTPSA id BF1F94348E;
 Fri, 11 Mar 2022 12:20:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=hawrylko.pl;
 s=201812; t=1646997623;
 bh=ZT61uHDivRxDs6w+uKsdCyy5+Jbsrj3gwB4c6d6/DIQ=;
 h=Subject:From:To:Date:In-Reply-To:References:From;
 b=waivPR9DqCFmr/xrY8id4vu+QSAsjyw4ork/oSF9/RFwVxma+EXJiwgSsa+Txx2LZ
 9D0wfjz/SESl3nDnSZdrXhgiDyLamO/iR9dBvHcieWY+/yq1hhGb4csMZOwvoNUjyl
 /9uuPyV62YVRD5P9QpuFbhZqX3fh/9bhd97mbkyyuB8SNNlfX2U6XVuiTAdLDE/KR5
 9YAy5P2K/koY1MoL2doZIsYM2lAv6vO06eDwN0XLrgg0PMHX3A3YCSgFJfArMVJzwX
 N/pIe0IB6a7BUXGOdPkk/waUS6WEcwkatzc2HoM1GEbVgB9rqrCLKxpnDk5gupQ1BQ
 TUaCNM3FtzP/Q==
Message-ID: <6981e56e786ff0c7e9ebe67cd7465bcb0c87a4e1.camel@hawrylko.pl>
To: Timo Lindfors <timo.lindfors@iki.fi>, tboot-devel@lists.sourceforge.net
Date: Fri, 11 Mar 2022 12:20:23 +0100
In-Reply-To: <alpine.DEB.2.20.2203110900580.24286@mail.home>
References: <alpine.DEB.2.20.2203110900580.24286@mail.home>
User-Agent: Evolution 3.43.2-2 
MIME-Version: 1.0
X-Helo-Check: bad, Forged Random Domain (hawrylko.pl)
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Timo On Fri, 2022-03-11 at 09:09 +0200,
 Timo Lindfors wrote:
 > Hi, > > in https://sourceforge.net/p/tboot/mailman/message/37340469/ there
 was a > discussion about needing to get grub to accept a patch to r [...]
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1nSdcG-00C4NL-KF
Subject: Re: [tboot-devel] status of the grub patch to support multiple
 SINIT modules?
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
From: =?UTF-8?Q?=C5=81ukasz_Hawry=C5=82ko?= via tboot-devel
 <tboot-devel@lists.sourceforge.net>
Reply-To: =?UTF-8?Q?=C5=81ukasz_Hawry=C5=82ko?= <lukasz@hawrylko.pl>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: tboot-devel-bounces@lists.sourceforge.net

SGkgVGltbwoKT24gRnJpLCAyMDIyLTAzLTExIGF0IDA5OjA5ICswMjAwLCBUaW1vIExpbmRmb3Jz
IHdyb3RlOgo+IEhpLAo+IAo+IGluIGh0dHBzOi8vc291cmNlZm9yZ2UubmV0L3AvdGJvb3QvbWFp
bG1hbi9tZXNzYWdlLzM3MzQwNDY5LyB0aGVyZSB3YXMgYSAKPiBkaXNjdXNzaW9uIGFib3V0IG5l
ZWRpbmcgdG8gZ2V0IGdydWIgdG8gYWNjZXB0IGEgcGF0Y2ggdG8gcmVsaWFibHkgc3VwcG9ydCAK
PiBtdWx0aXBsZSBTSU5JVCBtb2R1bGVzLiBBbnkgaWRlYSB3aGF0J3MgdGhlIHN0YXR1cyBvZiB0
aGlzIHBhdGNoPwo+IAo+IFVzaW5nIG11bHRpcGxlIFNJTklUIG1vZHVsZXMgaXMgdXNlZnVsIGlm
IHlvdSB3YW50IHRvIGhhdmUgYSBzaW5nbGUgaW1hZ2UgCj4gdGhhdCB3b3JrcyBvbiBtdWx0aXBs
ZSBkZXZpY2VzLiBUaGUgaW50ZWwtYWNtIHBhY2thZ2UgaW4gRGViaWFuIG5vbi1mcmVlIAo+IHBy
b3ZpZGVzIHRoZXNlIGluIC9ib290IGFuZCBpdCBpcyB2ZXJ5IGNvbnZlbmllbnQgdGhhdCB0Ym9v
dCBjYW4gCj4gY2hvb3NlIHRoZSBtYXRjaGluZyBTSU5JVCBtb2R1bGUgYXQgcnVudGltZS4KCkFz
IEkgbGVmdCBJbnRlbCBhbmQgbm9ib2R5IGhhcyB0YWtlbiBjYXJlIGFib3V0IHRoaXMgcGF0Y2gs
IGl0IGhhcyBiZWVuCmFiYW5kb25lZC4gQXMgZmFyIGFzIEkgcmVtZW1iZXIsIHRoZXJlIHdlcmUg
c29tZSBtaW5vciBjaGFuZ2VzCnJlcXVlc3RlZCBieSBHUlVCIG1haW50YWluZXJzLCBidXQgb3Zl
cmFsbCBpZGVhIGhhcyBiZWVuIGFjY2VwdGVkLgoKPiAKPiBJIHdhcyByZW1pbmRlZCBvZiB0aGlz
IGlzc3VlIHNpbmNlIEkgaGl0IGl0IGFnYWluIG9uIGRpZmZlcmVudCBoYXJkd2FyZS4KPiAKPiBJ
J3ZlIGF0dGFjaGVkIHR3byBzZXJpYWwgY29uc29sZSBsb2dzIGZvciB0Ym9vdCBtZXJjdXJpYWwg
dGlwIAo+ICg5YzYyNWFiMjAzNWIpOgo+IAo+IHRib290XzljNjI1YWIyMDM1Yl8yX1NJTklUX3dv
cmtpbmcudHh0Ogo+IC0gdHdvIFNJTklUIEFDTXMgYXJlIHNwZWNpZmllZCBhbmQgdGhlIHN5c3Rl
bSBib290cyBjb3JyZWN0bHkuCj4gCj4gdGJvb3RfOWM2MjVhYjIwMzViXzI2X1NJTklUX3JlYm9v
dC50eHQ6Cj4gLSAyNiBTSU5JVCBBQ01zIGFyZSBzcGVjaWZpZWQgYW5kIHRoZSBzeXN0ZW0gZW50
ZXJzIGFuIGluZmluw690ZSByZWJvb3QgCj4gbG9vcC4KPiAKPiBJIGRvIG5vdCBzZWUgdGhpcyBw
cm9ibGVtIG9uIG15IEJJT1Mgc3lzdGVtLCBvbmx5IFVFRkkgc3lzdGVtLCBidXQgaXQgaXMgCj4g
aXMgZGlmZmljdWx0IHRvIHNheSBpZiB0aGlzIGlzIGFjdHVhbGx5IHJlbGF0ZWQgdG8gdGhlIGlz
c3VlLgo+IAo+IFlvdSBjYW4gc2VlIG1vcmUgbG9ncyBhdCBodHRwczovL2xpbmRpLmlraS5maS9s
aW5kaS90Ym9vdC9zbW9rZXRlc3QvcmVzdWx0cy5odG1sCj4gVGhlIGF0dGFjaGVkIGxvZ3MgYXJl
IGFsbCBmcm9tIHRlc3QgcnVuIDE2NDY5NDIwMTkuCj4gCgpJbiBmZXcgd29yZHMgLSB3aGVuIG11
bHRpcGxlIFNJTklUcyBpcyBsb2FkZWQsIHRoZXJlIGlzIGEgY2hhbmNlIHRoYXQKb25lIChvciBt
b3JlKSBvZiB0aGVtIHdpbGwgYmUgb3ZlcndyaXR0ZW4gYnkgc29tZSBUQk9PVCBkYXRhIHN0cnVj
dHVyZXMKdGhhdCBoYXZlIGhhcmRjb2RlZCBhZGRyZXNzZXMuIEluIG1vc3QgY2FzZXMgaXQgaXMg
bWVtb3J5IGxvZywgYnV0IHRoaXMKaXMgbm90IGEgcnVsZS4KCkV2ZXJ5dGhpbmcgZGVwZW5kcyBv
biBzeXN0ZW0gbWVtb3J5IG1hcCBhbmQgd2hlcmUgR1JVQiBkZWNpZGVkIHRvIHB1dApTSU5JVHMu
IE9uIHNvbWUgcGxhdGZvcm1zIHlvdSBjYW4gbG9hZCBhcyBtYW55IFNJTlRJcyBhcyB5b3Ugd2Fu
dCwgb24Kb3RoZXIgLSBvbmx5IDIgb3IgMy4gU28gdGhhdCdzIHBsYXRmb3JtIHNwZWNpZmljIGlz
c3VlLCBmb3J0dW5hdGVseSwgSQpkaWRuJ3QgY29tZSBhY3Jvc3MgYSBwbGF0Zm9ybSB3aGVyZSB0
aGlzIHByb2JsZW0gaGFwcGVucyBldmVuIHdpdGggMQpTSU5JVCBsb2FkZWQuCgpJIHdpbGwgdHJ5
IHRvIGZpbmQgc29tZSB0aW1lIHRvIGRpZyBpbnRvIGdydWItZGV2ZWwgYXJjaGl2ZSwgZmluZCB0
aGUKcGF0Y2gsIGZpeCBpdCBhbmQgcmVzdWJtaXQgaXQgb25jZSBhZ2Fpbi4gSG93ZXZlciwgaXQg
ZGVwZW5kcyBvbiBPUwp2ZW5kb3JzIHdoZW4gdGhleSB3aWxsIG1lcmdlIGl0IHRvIHRoZWlyIGRp
c3Ryby4KCj4gQXMgYSB3b3JrYXJvdW5kLCB3b3VsZCB5b3UgYWNjZXB0IGEgcGF0Y2ggdGhhdCBt
b2RpZmllcyAKPiB0Ym9vdC8yMF9saW51eF90Ym9vdCB0byB1c2UgdHh0LWFjbWluZm8gdG8gaW5j
bHVkZSBvbmx5IG1hdGNoaW5nIFNJTklUIAo+IG1vZHVsZXMgaW4gZ3J1YiBjb25maWd1cmF0aW9u
PyBJIGNvdWxkIG1ha2UgdGhpcyBjb25maWd1cmFibGUgaW4gCj4gL2V0Yy9kZWZhdWx0L2dydWIt
dGJvb3QuIFdlIGNvdWxkIGZvciBleGFtcGxlIHN1cHBvcnQgdGhlIGZvbGxvd2luZyB0aHJlZSAK
PiBvcHRpb25zOgo+IAo+IEdSVUJfVEJPT1RfU0lOSVQ9YWxsCj4gLSBpbmNsdWRlIGFsbCBTSU5J
VCBtb2R1bGVzIHRoYXQgYXJlIGZvdW5kLCBjdXJyZW50IGJlaGF2aW9yCj4gCj4gR1JVQl9UQk9P
VF9TSU5JVD1kZXRlY3QKPiAtIHVzZSB0eHQtYWNtaW5mbyB0byBmaW5kIFNJTklUIG1vZHVsZXMg
dGhhdCBtYXRjaCB0aGUgY3VycmVudCBzeXN0ZW0uCj4gCj4gR1JVQl9UQk9PVF9TSU5JVF9MSVNU
PSJtb2R1bGUxIG1vZHVsZTIgbW9kdWxlMyIKPiAtIHVzZSBvbmx5IHRoZSBsaXN0ZWQgU0lOSVQg
bW9kdWxlcy4KPiAKClRoYXQncyBzb3VuZHMgZ3JlYXQgdG8gbWUuIEkgYW0gc3VyZSB0aGF0IElu
dGVsIHdpbGwgYWNjZXB0IHRoaXMKY2hhbmdlLiBJdCBpcyBtdWNoIGJldHRlciB0byBzZWxlY3Qg
cHJvcGVyIFNJTklUIGR1cmluZyBpbnN0YWxsYXRpb24KdGhhdCBsb2FkcyBhbGwgcG9zc2libGUg
b25lcyBldmVyeSBib290LCBvbmx5IHRvIGFsd2F5cyBjaG9vc2UgdGhlIHNhbWUKcmlnaHQgb25l
LgoKVGhhbmtzLApMdWthc3oKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwp0Ym9vdC1kZXZlbCBtYWlsaW5nIGxpc3QKdGJvb3QtZGV2ZWxAbGlzdHMuc291
cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZv
L3Rib290LWRldmVsCg==
