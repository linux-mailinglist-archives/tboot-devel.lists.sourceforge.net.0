Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D8E6D4D610F
	for <lists+tboot-devel@lfdr.de>; Fri, 11 Mar 2022 12:56:23 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1nSdsY-00077p-5M; Fri, 11 Mar 2022 11:56:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <lukasz@hawrylko.pl>) id 1nSdsV-00077i-CH
 for tboot-devel@lists.sourceforge.net; Fri, 11 Mar 2022 11:56:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :References:In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FmYxrRlL2IFdsi+E9dBsp5SVAMKKTH58Kh+ZF2j5mQI=; b=nNkOrUX79+oa8jhT4is16DMlh+
 WZZiELBuEtEusZtpMe3CW1mptXpdL9W+ip82+zfcH01bw/82swkrKSIRpJdiHJhZhgqwSyJ7Oi/H2
 5Sfx63xJoCKTxmeH6Bh0JUlfMhTvrDd46PgX+hFab+d4ee4zharlPEHCKSLAGt0NiIME=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:References:
 In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=FmYxrRlL2IFdsi+E9dBsp5SVAMKKTH58Kh+ZF2j5mQI=; b=g2oJ09rJx8AgFzwH9m6FqLS8Cu
 WrtOlb10fhJ2dUeQ+vUrQnzqHLTpuoyTHsmmbmbLKGQipUzZET9Ge+x0qtuVBxAVYkiryhceh12/R
 /1LJ5xi3Dm9xAWK4KIwRoAFfmdEXxIxiyk695XaxVUmjw6Ov4Lg/rlGbNM6SlzwwEMk0=;
Received: from hawrylko.pl ([54.37.138.145])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nSdsR-00C4wd-K4
 for tboot-devel@lists.sourceforge.net; Fri, 11 Mar 2022 11:56:13 +0000
Received: from lh-lnx.vector.com.pl (unknown [193.109.59.18])
 by hawrylko.pl (Postfix) with ESMTPSA id 2FDCB4348E;
 Fri, 11 Mar 2022 12:56:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=hawrylko.pl;
 s=201812; t=1646999765;
 bh=FmYxrRlL2IFdsi+E9dBsp5SVAMKKTH58Kh+ZF2j5mQI=;
 h=Subject:From:To:Date:In-Reply-To:References:From;
 b=E9Esef8CUUAa9jkoc7C5rcrXve0trwzilp049OsY9nS8/VH5fjO6FOCZOl+g0RQ0I
 jUD9Fxoj9xtK1PF1zxOX8pmv0X3Z1ZZQCza/Gc2f9BdzeUro4SPD2oiB5axApWxGRI
 kckwNsQHm1m4T9CuBU57eIdhwNMBrP8aI1oFT9IU2L29plDJnMBwct8pNu5P0kBGju
 0RwR6yzFkcghtpEUvkqG0sHGF+ONx69cwQhhIn1uAdjO+SHBcmqpKx0SEiZGE+djhY
 XOJfUlRA5rJniFm+WRvQc92CQqcE7Lg/HRZ8u0towkEjbVcXHAFZM/IacCkmMFgs8Y
 u45PbFsFRsJyQ==
Message-ID: <47436efda1c61ed2c5267dad2347a0a7859375f0.camel@hawrylko.pl>
To: Timo Lindfors <timo.lindfors@iki.fi>, tboot-devel@lists.sourceforge.net
Date: Fri, 11 Mar 2022 12:56:04 +0100
In-Reply-To: <alpine.DEB.2.20.2203111121420.24510@mail.home>
References: <alpine.DEB.2.20.2203110900580.24286@mail.home>
 <6981e56e786ff0c7e9ebe67cd7465bcb0c87a4e1.camel@hawrylko.pl>
 <alpine.DEB.2.20.2203111121420.24510@mail.home>
User-Agent: Evolution 3.43.2-2 
MIME-Version: 1.0
X-Helo-Check: bad, Forged Random Domain (hawrylko.pl)
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Fri, 2022-03-11 at 11:23 +0200, Timo Lindfors wrote: >
   Hi, > > On Fri, 11 Mar 2022, Łukasz Hawryłko wrote: > > In few words - when
    multiple SINITs is loaded, there is a chance that > > one (or mo [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1nSdsR-00C4wd-K4
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

T24gRnJpLCAyMDIyLTAzLTExIGF0IDExOjIzICswMjAwLCBUaW1vIExpbmRmb3JzIHdyb3RlOgo+
IEhpLAo+IAo+IE9uIEZyaSwgMTEgTWFyIDIwMjIsIMWBdWthc3ogSGF3cnnFgmtvIHdyb3RlOgo+
ID4gSW4gZmV3IHdvcmRzIC0gd2hlbiBtdWx0aXBsZSBTSU5JVHMgaXMgbG9hZGVkLCB0aGVyZSBp
cyBhIGNoYW5jZSB0aGF0Cj4gPiBvbmUgKG9yIG1vcmUpIG9mIHRoZW0gd2lsbCBiZSBvdmVyd3Jp
dHRlbiBieSBzb21lIFRCT09UIGRhdGEgc3RydWN0dXJlcwo+ID4gdGhhdCBoYXZlIGhhcmRjb2Rl
ZCBhZGRyZXNzZXMuIEluIG1vc3QgY2FzZXMgaXQgaXMgbWVtb3J5IGxvZywgYnV0IHRoaXMKPiA+
IGlzIG5vdCBhIHJ1bGUuCj4gCj4gVGhpcyBzb3VuZHMgYW5ub3lpbmcgaW5kZWVkLiBXb3VsZCBp
dCBoZWxwIGlmIHdlIGNvdWxkIHNvbWVob3cgZW1iZWQgCj4gb3IgYXBwZW5kIHRoZSBTSU5JVCBt
b2R1bGVzIHRvIHRib290Lmd6IGl0c2VsZj8gSSdtIHRyeWluZyB0byBtYWtlIHRoZSAKPiB0ZWNo
bm9sb2d5IGFzIGVhc3kgdG8gdXNlIGFuZCByb2J1c3QgYXMgcG9zc2libGUuIEJlaW5nIGFibGUg
dG8gdXNlIGUuZy4gCj4gdGhlIHNhbWUgTGl2ZSBDRCBvbiBhbGwgcGllY2VzIG9mIGhhcmR3YXJl
IHdvdWxkIGJlIGEgaHVnZSB3aW4uCj4gCgpUaGF0IGNvdWxkIGhlbHAsIGJ1dCBJIGNhbid0IGdp
dmUgeW91IGEgZGVmaW5pdGUgYW5zd2VyLiBUaGVyZSBpcyBhbHNvCmEgcmlzayB0aGF0IGJpZ2dl
ciB0Ym9vdC5neiB3aWxsIGNhdXNlIHNvbWUgb3RoZXIgbWVtb3J5IGNvcnJ1cHRpb24KZXJyb3Jz
LiBLZWVwIGluIG1pbmQgdGhhdCBiZXNpZGVzIHRib290Lmd6IGFuZCBTSU5JVHMsIEdSVUIgbG9h
ZHMgYWxzbwprZXJuZWwgaW1hZ2UgYW5kIGluaXRyZC4gVGhlIGJlc3Qgd2F5IHRvIGZpeCBhbGwg
cG9zc2libGUgcHJvYmxlbXMgaXMKdG8gaW5zdHJ1Y3QgR1JVQiBub3QgdG8gbG9hZCBhbnl0aGlu
ZyBpbiBtZW1vcnkgcmVnaW9ucyBvY2N1cGllZCBieQp0Ym9vdCdzIGhhcmRjb2RlZCBzdHJ1Y3R1
cmVzLgoKSSBzZWUgdGhhdCB5b3UgaGF2ZSBxdWl0ZSBjb21wbGV4IGVudmlyb25tZW50IGZvciB0
ZXN0aW5nIHRib290LCBpZiBJCmZpbmQgbXkgb2xkIEdSVUIgcGF0Y2ggYW5kIHByZXBhcmUgcGF0
Y2ggZm9yIHRib290IHRoYXQgY29tYmluZWQgc2hvdWxkCmZpeCB0aGUgaXNzdWUsIHdpbGwgeW91
IGJlIGFibGUgdG8gcnVuIHRlc3RzPwoKVGhhbmtzLApMdWthc3oKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwp0Ym9vdC1kZXZlbCBtYWlsaW5nIGxpc3QK
dGJvb3QtZGV2ZWxAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9y
Z2UubmV0L2xpc3RzL2xpc3RpbmZvL3Rib290LWRldmVsCg==
