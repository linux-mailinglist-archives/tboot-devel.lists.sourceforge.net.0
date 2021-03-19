Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 35951341C14
	for <lists+tboot-devel@lfdr.de>; Fri, 19 Mar 2021 13:17:31 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1lNE4B-0000gU-5G; Fri, 19 Mar 2021 12:17:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lukasz.hawrylko@linux.intel.com>) id 1lNE49-0000gG-Q2
 for tboot-devel@lists.sourceforge.net; Fri, 19 Mar 2021 12:17:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OGtVVGHuTQWl11QSOPUjpvOzNwfo5OuSLmPDs70znJY=; b=kmGt5HL+W40+QnoBCzctalkG4L
 ZAfFmIqCxvtn4sqwDtMiPh6lMrBn9zSYLIiw0DxVHpZk5oM3+7l8Fi8MkE807HCc9tp+892opmeA9
 6KBrhV6Ccr03VQU3x5Ay0mU3hwMAwcXy6Yr/EEtcCoQwzlYJEloLg9Lf0Jwg+N+45kgA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=OGtVVGHuTQWl11QSOPUjpvOzNwfo5OuSLmPDs70znJY=; b=G4Hjlj6xJz0dqw6ud10JdSRa9p
 ofqJuxfIKyrLpUtGGI/uoW6tjXWL2EIfN7dOJ4e0Bi4cPeXcot8Btn7lpYnPj0l/5wkgR1/5Jb2pv
 Zw+90LnRiEFPrFh1rzQaQCfuMKJtSE8O/FPk8USMW9RQEkhiUUv2zt4HViSXazPxHnKg=;
Received: from mga05.intel.com ([192.55.52.43])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lNE3w-001W1g-27
 for tboot-devel@lists.sourceforge.net; Fri, 19 Mar 2021 12:17:21 +0000
IronPort-SDR: Zo6SpLB3gp1m0J3mIZ/9/JSUZltNGXbeAU0rRVTTYDE4u8ZhgWtGEJ0xpiWSWF+uWZ4negOOWY
 zAPttx8CBJeg==
X-IronPort-AV: E=McAfee;i="6000,8403,9927"; a="274951898"
X-IronPort-AV: E=Sophos;i="5.81,261,1610438400"; d="scan'208";a="274951898"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2021 05:17:02 -0700
IronPort-SDR: Tg6gjSh+PNXV/mvu7ygzgAw0t0DIIKtkxXmhbfuqxj3nqVYnOJh3Nzaw4OjBA0KxQ2Tc+/+yFq
 G6dEfJdfxpnw==
X-IronPort-AV: E=Sophos;i="5.81,261,1610438400"; d="scan'208";a="406765934"
Received: from tkpiesnx-mobl3.ger.corp.intel.com ([10.213.21.209])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2021 05:17:00 -0700
Message-ID: <a92b3ea469052bd058299e4d0edeca0149945d69.camel@linux.intel.com>
From: Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>
To: "Oliver, Dario N" <dario.n.oliver@intel.com>, 
 "tboot-devel@lists.sourceforge.net" <tboot-devel@lists.sourceforge.net>
Date: Fri, 19 Mar 2021 13:16:57 +0100
In-Reply-To: <DM6PR11MB4425A4A47E94DAE32961A0E2DB699@DM6PR11MB4425.namprd11.prod.outlook.com>
References: <DM6PR11MB4425A4A47E94DAE32961A0E2DB699@DM6PR11MB4425.namprd11.prod.outlook.com>
User-Agent: Evolution 3.38.3 (3.38.3-1.fc33) 
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1lNE3w-001W1g-27
Subject: Re: [tboot-devel] Tboot on Intel NUC8i7HVK and Fedora 33
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

SGkgT2xpdmVyCgpPbiBUaHUsIDIwMjEtMDMtMTggYXQgMjI6MjkgKzAwMDAsIE9saXZlciwgRGFy
aW8gTiB3cm90ZToKPiBTbywgSSBuZWVkIHRvIHJ1biB3aXRoIFNlY3VyZSBCb290IGRpc2FibGVk
LgoKVEJPT1Qgd2lsbCBub3Qgd29yayB3aXRoIFNlY3VyZSBCb290LCB3aGVuIFNlY3VyZSBCb290
IGlzIGVuYWJsZWQsIEdSVUIKaGFzIHRvIHZlcmlmeSBzaWduYXR1cmUgb2YgYWxsIGNvbXBvbmVu
dHMgdGhhdCBhcmUgZ29pbmcgdG8gYmUgbGF1bmNoZWQuCkFzIHRib290Lmd6IGZpbGUgZG9lcyBu
b3Qgc3VwcG9ydCBzaWduaW5nLCBpdCBpcyB1bmFibGUgdG8gdXNlIGl0IHdpdGgKU2VjdXJlIEJv
b3QuCgpUaGVyZSBpcyBhbiBleHBlcmltZW50YWwgaW1wbGVtZW50YXRpb24gb2YgU2VjdXJlIEJv
b3Qgc3VwcG9ydCBpbiBUQk9PVCwKaXQgaXMgbm90IG9mZmljaWFsbHkgcmVsZWFzZWQsIGJ1dCB5
b3UgY2FuIGxvb2sgYXQgMi54IGJyYW5jaCBpZiB5b3UKd2FudCB0byB0ZXN0IGl0IGJ5IHlvdXJz
ZWxmLgoKPiAqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKgo+IMKgwqDCoMKgwqDCoMKgwqDCoFRYVCBtZWFzdXJlZCBsYXVuY2g6IFRSVUUK
PiDCoMKgwqDCoMKgwqDCoMKgwqBzZWNyZXRzIGZsYWcgc2V0OiBGQUxTRQo+ICoqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqCj4gdW5hYmxl
IHRvIGZpbmQgVEJPT1QgbG9nCj4gCj4gRnJvbSB0aGF0IG91dHB1dCwgSSBndWVzc2VkIHRoYXQg
SSBjYW4gZG8gYSBtZWFzdXJlZCBsYXVuY2ggKCJUWFQgbWVhc3VyZWQgbGF1bmNoOiBUUlVFIiku
IEJ1dCBJIHdhbnRlZCB0byBkb3VibGUgY2hlY2sgdGhhdC4KPiBBY2NvcmRpbmcgdG8gWzFdLCBJ
IGd1ZXNzZWQgdGhhdCBJIG5lZWQgU01YIChTYWZlciBNb2RlIEV4dGVuc2lvbnMpIGluIG15IENQ
VSB0byBhY3R1YWxseSBkbyBhIE1lYXN1cmVkIExhdW5jaCAoYWx0aG91Z2ggdGhpcyBpcyBub3Qg
bWVudGlvbmVkIGluIGFueSBwbGFjZSBpbiB0Ym9vdCBkb2NzKQo+IFVuZm9ydHVuYXRlbHksIGNw
dWlkIHNheSB0aGF0IG15IGhhcmR3YXJlIGRvZXMgbm90IHN1cHBvcnQgU01YOgo+IAo+IFtyb290
QGxvY2FsaG9zdCB0ZXN0XSMgY3B1aWQgfCBncmVwIFNNWAo+IMKgwqDCoMKgwqDCoFNNWDogc2Fm
ZXIgbW9kZSBleHRlbnNpb25zICAgICAgICAgICAgICA9IGZhbHNlCgpUaGF0J3MgYSBtaXNsZWFk
aW5nIG1lc3NhZ2UsICJUWFQgbWVhc3VyZWQgbGF1bmNoIiBzaG91bGQgYmUgZmFsc2UsIEkKZ3Vl
c3MgdGhhdCBiZWNhdXNlIFRYVCBpcyBub3QgYXZhaWxhYmxlIGluIHlvdXIgcGxhdGZvcm0sIHR4
dC1zdGF0IHJlYWRzCnNvbWUgZ2FyYmFnZSBmcm9tIFRYVCByZWdpc3RlcnMgc3BhY2UgYW5kIGJ5
IG1pc3Rha2UgaW50ZXJwcmV0cyB0aGF0IGFzCiJUWFQgbWVhc3VyZWQgbGF1bmNoOiBUUlVFIi4K
CklmIHlvdXIgQ1BVIGRvZXMgbm90IHN1cHBvcnQgU01YIHRoZXJlIGlzIG5vIHBvc3NpYmlsaXR5
IHRvIGRvIFRYVAptZWFzdXJlZCBsYXVuY2guCgo+IFF1ZXN0aW9ucwo+ID09PT09PT09Cj4gCj4g
MS4gQW55IHdheSB0byB0ZXN0IHRib290IGluIGhhcmR3YXJlIHRoYXQgZG9lcyBub3Qgc3VwcG9y
dCBTTVgvVFhUPyBBbnkgc2ltdWxhdG9yIGF2YWlsYWJsZT8KCkl0IGRlcGVuZHMgd2hhdCBkbyB5
b3Ugd2FudCB0byB0ZXN0LiBXaXRob3V0IFRYVCB5b3UgY2FuIG9ubHkgZG8gd2hhdAp5b3UgYWxy
ZWFkeSBkaWQgLSBsb2FkIFRCT09UIHZpYSBtdWx0aWJvb3QyLCB2ZXJpZnkgdGhhdCBwbGF0Zm9y
bSBpcyBub3QKVFhUIGNhcGFibGUgYW5kIGZhbGxiYWNrIHRvIHN0YW5kYXJkIExpbnV4IGJvb3Qu
Cgo+IDIuIERvIEkgYWN0dWFsbHkgbmVlZCBTTVggdG8gZG8gYSBNZWFzdXJlZCBMYXVuY2g/IE9y
IGlzIHRoZSBwcmVzZW5jZSBvZiAiVFhUIG1lYXN1cmVkIGxhdW5jaDogVFJVRSIgc3RyaW5nIHRo
ZSB0eHQtc3RhdCBlbm91Z2ggdG8gc2F5IHRoYXQgbXkgaGFyZHdhcmUgc3VwcG9ydHMgaXQ/CgpJ
biBnZW5lcmFsLCB5b3UgY2FuIG1lYXN1cmUgTGludXggZHVyaW5nIGJvb3QgcHJvY2VzcyB3aXRo
b3V0IFNNWCwKaG93ZXZlciB0aGUgaWRlYSBvZiBUQk9PVCBpcyB0byB1c2UgVFhUIHRvIGRvIGEg
bWVhc3VyZWQgbGF1bmNoIGFuZCBUWFQKcmVxdWlyZXMgU01YLiBObyBTTVggLT4gbm8gVFhUIC0+
IFRCT09UIHdpbGwgbm90IG1lYXN1cmUgYW55dGhpbmcuCgpBcyBJIHBvaW50IGVhcmxpZXIsIHRo
aXMgbWVzc2FnZSBpcyBtaXNsZWFkaW5nLCB5b3VyIGhhcmR3YXJlIGRvZXMgbm90CnN1cHBvcnQg
VFhUIGJlY2F1c2UgIlRCT09UOiBFUlI6IENQVSBkb2VzIG5vdCBzdXBwb3J0IFNNWCIuCgo+IDMu
IElzIHRoZSBpbnZhbGlkIHRib290IGdlbmVyYXRlZCBncnViIGNvbmZpZ3VyYXRpb24gYSBidWc/
IElmIHNvLCB3aGVyZSBzaG91bGQgSSBzdWJtaXQgaXQ/CgpMb29rcyBsaWtlIGEgYnVnLCBJIHdp
bGwgdGFrZSBjYXJlIG9mIGl0LgoKPiA0LiBBbSBJIHVzaW5nIHRoZSBjb3JyZWN0IFNJTklUIEFD
TSBtb2R1bGU/IElzIG15IHJlc3VsdGluZyB0eHQtc3RhdCBvdXRwdXQgdGhlIGV4cGVjdGVkIG9u
ZSBmb3IgbXkgc2NlbmFyaW8/CgpUQk9PVDogY2hpcHNldCBpZHM6IHZlbmRvcjogMHg4MDg2LCBk
ZXZpY2U6IDB4YjAwNiwgcmV2aXNpb246IDB4MQpbLi4uXQpUQk9PVDogICAxIEFDTSBjaGlwc2V0
IGlkIGVudHJpZXM6ClRCT09UOiAgICAgICB2ZW5kb3I6IDB4ODA4NiwgZGV2aWNlOiAweGIwMDgs
IGZsYWdzOiAweDEsIHJldmlzaW9uOiAweDEsIGV4dGVuZGVkOiAweDAKVEJPT1Q6ICAgY2hpcHNl
dCBpZCBtaXNtYXRjaAoKUHJvdmlkZWQgU0lOSVQgZG9lcyBub3Qgc3VwcG9ydCB5b3VyIHBsYXRm
b3JtLCBjaGlwc2V0IGlkcyBkbyBub3QgbWF0Y2guCk5ldmVydGhlbGVzcywgaXQgZG9lcyBub3Qg
Y2hhbmdlIGFueXRoaW5nLCB3aXRob3V0IFNNWCB5b3UgY2FuJ3QgcnVuClNJTklULgoKVGhhbmtz
LApMdWthc3oKCgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwp0Ym9vdC1kZXZlbCBtYWlsaW5nIGxpc3QKdGJvb3QtZGV2ZWxAbGlzdHMuc291cmNlZm9y
Z2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3Rib290
LWRldmVsCg==
