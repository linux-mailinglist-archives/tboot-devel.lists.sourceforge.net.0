Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B3DC3F5F30
	for <lists+tboot-devel@lfdr.de>; Tue, 24 Aug 2021 15:32:19 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1mIWXE-0007nG-Qg; Tue, 24 Aug 2021 13:32:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lukasz.hawrylko@linux.intel.com>) id 1mIWXD-0007nA-5S
 for tboot-devel@lists.sourceforge.net; Tue, 24 Aug 2021 13:32:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=y1FbXCFSZ39wSuHi9dEgZPf74/bH9G8A418YbbdRrbA=; b=X4zrXH2nrkabCiATCq0kS1eI6c
 RTffQ1nZ5z+2uDWMtmSlGL8hcOVI9clPsYAqqf5msmYsvIejmjClQugTe6V6UQT0CyQQ8CVasGHf5
 lKSBJ9PN5NfQULZmTZYeQleCpYQ8CxyVSNvoS7HumHw8j6kQRpkrDOv3SCRti7OrZBNg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=y1FbXCFSZ39wSuHi9dEgZPf74/bH9G8A418YbbdRrbA=; b=bSMRUbERiKp9MurMes2gDsKYIT
 8HYG9m3XAROmp3zXox7DtRYhKCrmvIYcrti0RySJ5lGnMTNlwXYzqxn+1A271mm5uCBPb0xgvJoQR
 PhZBlTCJCEI8eDTmc4BUguXxnPlJWZQMxniMzPKbcpU5L+HmaQLfLZ6VceGK7g7Y0/zM=;
Received: from mga18.intel.com ([134.134.136.126])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mIWXB-000232-Aj
 for tboot-devel@lists.sourceforge.net; Tue, 24 Aug 2021 13:32:11 +0000
X-IronPort-AV: E=McAfee;i="6200,9189,10085"; a="204441930"
X-IronPort-AV: E=Sophos;i="5.84,347,1620716400"; d="scan'208";a="204441930"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2021 06:16:33 -0700
X-IronPort-AV: E=Sophos;i="5.84,347,1620716400"; d="scan'208";a="535799789"
Received: from lukaszmi-mobl1.ger.corp.intel.com ([10.249.146.84])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2021 06:16:32 -0700
Message-ID: <c01fa6f344653792d5a02a16f6bde7e205463489.camel@linux.intel.com>
From: Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>
To: Timo Lindfors <timo.lindfors@iki.fi>, tboot-devel@lists.sourceforge.net
Date: Tue, 24 Aug 2021 15:16:30 +0200
In-Reply-To: <alpine.DEB.2.20.2108241037560.5749@mail.home>
References: <alpine.DEB.2.20.2108241037560.5749@mail.home>
User-Agent: Evolution 3.38.3 (3.38.3-1.fc33) 
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1mIWXB-000232-Aj
Subject: Re: [tboot-devel] increase maximum supported framebuffer size?
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

SGkgVGltbwoKT24gVHVlLCAyMDIxLTA4LTI0IGF0IDEwOjQwICswMzAwLCBUaW1vIExpbmRmb3Jz
IHdyb3RlOgo+IEhpLAo+IAo+IHdvdWxkIGl0IGJlIHBvc3NpYmxlIHRvIGluY3JlYXNlIHRoZSBt
YXhpbXVtIHN1cHBvcnRlZCBmcmFtZWJ1ZmZlciBzaXplIAo+IG9yIGlzIG1lbW9yeSB1c2FnZSBh
biBpc3N1ZT8gSSBkb24ndCBnZXQgYW55IG91dHB1dCB1c2luZyB0aGUgZm9sbG93aW5nOgo+IAo+
IEZyYW1lYnVmZmVyIGluZm86Cj4gwqDCoMKgwqDCoGFkZHJlc3M6IDB4YzAwMDAwMDAKPiDCoMKg
wqDCoMKgcGl0Y2g6IDEwMjQwCj4gwqDCoMKgwqDCoHdpZHRoOiAyNTYwCj4gwqDCoMKgwqDCoGhl
aWdodDogMTQ0MAo+IMKgwqDCoMKgwqBicHA6IDMyCj4gwqDCoMKgwqDCoHR5cGU6IDEKPiBOb3Qg
c3VwcG9ydGVkIGZyYW1lYnVmZmVyIHNpemUvYnBwCj4gCj4gVGhpcyBpcyBhbiBIUCBFbGl0ZWRl
c2sgODAwIEcyIGluIFVFRkktb25seSBtb2RlLgo+IAoKVG8gYmUgaG9uZXN0IEkgZG9uJ3QgaGF2
ZSBhY2Nlc3MgdG8gVFhUIGVuYWJsZWQgc3lzdGVtIHdpdGggc2NyZWVuCmJpZ2dlciB0aGFuIDE5
MjB4MTA4MCB0aGF0J3Mgd2h5IEkgY2hvb3NlIHRoaXMgdmFsdWUuIFlvdSBjYW4gdHJ5IHRvCmVk
aXQgRkJfTUFYX0hSRVMgYW5kIEZCX01BWF9WUkVTIGluIGNvbmZpZy5oIGFuZCBjaGVjayBpZiB0
aGVyZSBhcmUgYW55CnByb2JsZW1zIHdpdGggYmlnZ2VyIHZhbHVlcy4KClRoYW5rcywKTHVrYXN6
CgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCnRib290
LWRldmVsIG1haWxpbmcgbGlzdAp0Ym9vdC1kZXZlbEBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0
cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdGJvb3QtZGV2ZWwK
