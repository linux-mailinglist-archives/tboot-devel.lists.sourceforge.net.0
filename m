Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CC9F03F86AF
	for <lists+tboot-devel@lfdr.de>; Thu, 26 Aug 2021 13:48:49 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1mJDs3-0001aR-Vi; Thu, 26 Aug 2021 11:48:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lukasz.hawrylko@linux.intel.com>) id 1mJDs1-0001Zy-Qo
 for tboot-devel@lists.sourceforge.net; Thu, 26 Aug 2021 11:48:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ROYQysUyLg77yL9X23goTPfYy2EAWtP/pr41P9JbmvQ=; b=evbOFLg4eBN1B41VhCzlimKz0x
 nxQG4AgMlQv3sSa4mnA55jnuZV6WO03XMD83m4kB+NIBORQzYNZr6uIOnTdwKppOARPpSAs50w9MC
 vpE/xIA1ebQYmOwm+8BPyp+69JTEbR8DioCViC52I5Lpve++r/1jGXOAxIsPfaqy9KJI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ROYQysUyLg77yL9X23goTPfYy2EAWtP/pr41P9JbmvQ=; b=h/OVqwv6m3xlZPMpZlS59VeSLZ
 xE4OQpRt4hLSsZaNJ1aVQYyHB5RxBDb/+7m/AxlVY5Y6tAsBuQLeSzZJLPXBYk4mBRo7a/NhdQE2/
 g3hhbtePbLriqHodQJKj6byZ8X9X+vKNGktGi1TKyM4iuQ1NcJXYeQ/ibMmIBfzaFof4=;
Received: from mga05.intel.com ([192.55.52.43])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mJDrx-001grj-8a
 for tboot-devel@lists.sourceforge.net; Thu, 26 Aug 2021 11:48:33 +0000
X-IronPort-AV: E=McAfee;i="6200,9189,10087"; a="303301933"
X-IronPort-AV: E=Sophos;i="5.84,353,1620716400"; d="scan'208";a="303301933"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2021 04:48:23 -0700
X-IronPort-AV: E=Sophos;i="5.84,353,1620716400"; d="scan'208";a="537311732"
Received: from dkilanow-mobl.ger.corp.intel.com ([10.249.147.252])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2021 04:48:22 -0700
Message-ID: <8a9a312d2144f1a86213388c38bdd52fd3b4384c.camel@linux.intel.com>
From: Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>
To: Timo Lindfors <timo.lindfors@iki.fi>, tboot-devel@lists.sourceforge.net
Date: Thu, 26 Aug 2021 13:48:20 +0200
In-Reply-To: <alpine.DEB.2.20.2108251137290.6587@mail.home>
References: <alpine.DEB.2.20.2108251137290.6587@mail.home>
User-Agent: Evolution 3.38.3 (3.38.3-1.fc33) 
MIME-Version: 1.0
X-Spam-Score: -2.3 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Timo On Wed, 2021-08-25 at 11:47 +0300,
 Timo Lindfors wrote:
 > Hi, > > txt-acminfo 5th_gen_i5_i7_SINIT_79.BIN > > segfaults on my system:
 > > Program received signal SIGSEGV, Segmentation fault. > does_acm [...]
 Content analysis details:   (-2.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.43 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
X-Headers-End: 1mJDrx-001grj-8a
Subject: Re: [tboot-devel] txt-acminfo segfaults
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: tboot-devel-bounces@lists.sourceforge.net

SGkgVGltbwoKT24gV2VkLCAyMDIxLTA4LTI1IGF0IDExOjQ3ICswMzAwLCBUaW1vIExpbmRmb3Jz
IHdyb3RlOgo+IEhpLAo+IAo+IHR4dC1hY21pbmZvIDV0aF9nZW5faTVfaTdfU0lOSVRfNzkuQklO
Cj4gCj4gc2VnZmF1bHRzIG9uIG15IHN5c3RlbToKPiAKPiBQcm9ncmFtIHJlY2VpdmVkIHNpZ25h
bCBTSUdTRUdWLCBTZWdtZW50YXRpb24gZmF1bHQuCj4gZG9lc19hY21vZF9tYXRjaF9wbGF0Zm9y
bSAoaGRyPWhkckBlbnRyeT0weDdmZmZmN2ZjMzAwMCkgYXQgLi4vdGJvb3QvdHh0L2FjbW9kLmM6
NTkwCj4gNTkwCSAgICB0eHRfaGVhcF90ICp0eHRfaGVhcCA9IGdldF90eHRfaGVhcCgpOwo+IChn
ZGIpIGJ0Cj4gIzAgIGRvZXNfYWNtb2RfbWF0Y2hfcGxhdGZvcm0gKGhkcj1oZHJAZW50cnk9MHg3
ZmZmZjdmYzMwMDApIGF0IC4uL3Rib290L3R4dC9hY21vZC5jOjU5MAo+ICMxICAweDAwMDA1NTU1
NTU1NTUyZGUgaW4gbWF0Y2hfcGxhdGZvcm0gKGhkcj0weDdmZmZmN2ZjMzAwMCkgYXQgdHh0LWFj
bWluZm8uYzoyMDcKPiAjMiAgbWFpbiAoYXJnYz08b3B0aW1pemVkIG91dD4sIGFyZ3Y9PG9wdGlt
aXplZCBvdXQ+KSBhdCB0eHQtYWNtaW5mby5jOjI0NAo+IChnZGIpIHgvNGkgJHJpcAo+ID0+IDB4
NTU1NTU1NTU2NjEyIDxkb2VzX2FjbW9kX21hdGNoX3BsYXRmb3JtKzUwPjoJbW92YWJzIDB4ZmVk
MzAzMDAsJXJheAo+IMKgwqDCoMKgMHg1NTU1NTU1NTY2MWMgPGRvZXNfYWNtb2RfbWF0Y2hfcGxh
dGZvcm0rNjA+OgljbXBiICAgJDB4NCwweDExKCVyYnApCj4gwqDCoMKgwqAweDU1NTU1NTU1NjYy
MCA8ZG9lc19hY21vZF9tYXRjaF9wbGF0Zm9ybSs2ND46CWpiZSAgICAweDU1NTU1NTU1NjY2MCA8
ZG9lc19hY21vZF9tYXRjaF9wbGF0Zm9ybSsxMjg+Cj4gwqDCoMKgwqAweDU1NTU1NTU1NjYyMiA8
ZG9lc19hY21vZF9tYXRjaF9wbGF0Zm9ybSs2Nj46CWNtcGwgICAkMHg1LDB4OCglcmF4KQo+IAo+
IEl0IHNlZW1zIGhlYXAuaCBkZWZpbmVzIGdldF90eHRfaGVhcCgpIHRoYXQgcmVmZXJzIHRvIHRo
ZSByZWFsIAo+IHJlYWRfcHViX2NvbmZpZ19yZWcoKSBiZWZvcmUgaXQgaXMgI2RlZmluZSdkIGxh
dGVyLiBBZnRlciBJIGZpeGVkIHRoaXMgSSAKPiBub3RpY2VkIHRoYXQgZG9lc19hY21vZF9tYXRj
aF9wbGF0Zm9ybSgpIHRoZW4gc2VnZmF1bHRzIHdoZW4gaXQgdHJpZXMgdG8gCj4gZGVyZWZlcmVu
Y2UgdGhlIHBvaW50ZXIgcmV0dXJuZWQgYnkgZ2V0X3R4dF9oZWFwKCkuCj4gCj4gSSBndWVzcyB0
eHQtYWNtaW5mbyBzaG91bGQgbW1hcCgpIFRYVCBoZWFwPyBTaG91bGQgd2UgdGhlbiBtb2RpZnkg
Cj4gZ2V0X3R4dF9oZWFwKCkgdG8gYmVoYXZlIGRpZmZlcmVudGx5IGRlcGVuZGluZyBvbiB0aGUg
Y29udGV4dCBvciBwZXJoYXBzIAo+IG1vZGlmeSBkb2VzX2FjbW9kX21hdGNoX3BsYXRmb3JtKCkg
dG8gdGFrZSBhIHBvaW50ZXIgdG8gdGhlIFRYVCBoZWFwIGFzIGFuIAo+IGFyZ3VtZW50IHRvIGF2
b2lkIHRoaXM/Cj4gCgpJdCBsb29rcyBsaWtlIHRoYXQgdGhpcyBpc3N1ZSB3YXMgaW50cm9kdWNl
ZCBpbjoKCm8gIGNoYW5nZXNldDogICA2Mjc6ZDhhOGUxN2Y2ZDQxCnwgIHVzZXI6ICAgICAgICBM
dWthc3ogSGF3cnlsa28gPGx1a2Fzei5oYXdyeWxrb0BpbnRlbC5jb20+CnwgIGRhdGU6ICAgICAg
ICBUaHUgTWF5IDEzIDE2OjA0OjI3IDIwMjEgKzAyMDAKfCAgc3VtbWFyeTogICAgIENoZWNrIGZv
ciBjbGllbnQvc2VydmVyIG1hdGNoIHdoZW4gc2VsZWN0aW5nIFNJTklUCgpUbyBzb2x2ZSB0aGF0
IHR4dC1hY21pbmZvIHNob3VsZCBtYXAgVFhUIGhlYXAgYW5kIHRoZW4gcGFzcyBwb2ludGVyIHRv
CmRvZXNfYWNtb2RfbWF0Y2hfcGxhdGZvcm0oKSBmdW5jdGlvbi4gSSB0aGluayB0aGF0IHRoaXMg
d2lsbCBiZSB0aGUgYmVzdApzb2x1dGlvbi4KCk1heSBJIGFzayB5b3UgdG8gcHJlcGFyZSB0aGUg
cGF0Y2g/CgpUaGFua3MsCkx1a2FzegoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwp0Ym9vdC1kZXZlbCBtYWlsaW5nIGxpc3QKdGJvb3QtZGV2ZWxAbGlz
dHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xp
c3RpbmZvL3Rib290LWRldmVsCg==
