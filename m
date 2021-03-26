Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 71AAB34AA64
	for <lists+tboot-devel@lfdr.de>; Fri, 26 Mar 2021 15:46:22 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1lPniy-0006cI-RU; Fri, 26 Mar 2021 14:46:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <lukasz.hawrylko@linux.intel.com>) id 1lPnix-0006cB-SA
 for tboot-devel@lists.sourceforge.net; Fri, 26 Mar 2021 14:46:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=w0DFRxzPpEogkhVm0HS6lY+x1LNb4afjfSZCVcnUxrg=; b=E/CY+MMJvjRyXUYt3DQUq95OYx
 ENxo3TvRpqz8cE5nMBg3NgHE0Dq1lXz0yqJHNCvLROEk+RHKTvDPVgVxPhXIckNzuzy9qzIrI3u90
 jCLtcsEejnDRkCUEWvo9VGihKLbFXb+QhTQGhE83FmbTnLf+dYq927oxga34CTIBLAls=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=w0DFRxzPpEogkhVm0HS6lY+x1LNb4afjfSZCVcnUxrg=; b=CsIKreDPzcZDuILFJneVI4heCM
 zsGghSwMO/Ola8njFmdzTZ94+kS54OIfftGvP530Q5JmenJaY0Bui/FEbvN+Fg1JKz82mtRVaxPD7
 q9Kw2+5U3XHno8qtrLrS9Rxj2G88fzikoSrpsbFzahniik27ui0XGvZf6FP09RBxw954=;
Received: from mga01.intel.com ([192.55.52.88])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lPnij-00EEqj-61
 for tboot-devel@lists.sourceforge.net; Fri, 26 Mar 2021 14:46:07 +0000
IronPort-SDR: VzgMHxmKeNT6nY8hi/ekHkNoIbN7OEiOzpOVESLe18Trxm+8B4H3GfVi1mapQsbW7AX8fPAQGZ
 Sq/c+XreCQhg==
X-IronPort-AV: E=McAfee;i="6000,8403,9935"; a="211321708"
X-IronPort-AV: E=Sophos;i="5.81,280,1610438400"; d="scan'208";a="211321708"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2021 07:45:47 -0700
IronPort-SDR: KGWcGzAgJPlSZ0Mni02ZSKEWi9aZQwTqKhViPHeuD+0IA6qSrw6tg6YJTs6RCh86QaWd6GMyLl
 GEeSFseBwUAg==
X-IronPort-AV: E=Sophos;i="5.81,280,1610438400"; d="scan'208";a="416562862"
Received: from mpatelcz-mobl1.ger.corp.intel.com ([10.213.23.162])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2021 07:45:45 -0700
Message-ID: <ba48dabaf0879592ee9c52c47e48f65f8ec03571.camel@linux.intel.com>
From: Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>
To: "Oliver, Dario N" <dario.n.oliver@intel.com>, 
 "tboot-devel@lists.sourceforge.net" <tboot-devel@lists.sourceforge.net>
Date: Fri, 26 Mar 2021 15:45:42 +0100
In-Reply-To: <DM6PR11MB442514E1640888CED9638855DB629@DM6PR11MB4425.namprd11.prod.outlook.com>
References: <DM6PR11MB4425A4A47E94DAE32961A0E2DB699@DM6PR11MB4425.namprd11.prod.outlook.com>
 <a92b3ea469052bd058299e4d0edeca0149945d69.camel@linux.intel.com>
 <DM6PR11MB4425DA36A939D9937F14CE8EDB689@DM6PR11MB4425.namprd11.prod.outlook.com>
 <d1f2f9b8c131ca0ad35eba2819e8ba0dc9699127.camel@linux.intel.com>
 <DM6PR11MB442514E1640888CED9638855DB629@DM6PR11MB4425.namprd11.prod.outlook.com>
User-Agent: Evolution 3.38.3 (3.38.3-1.fc33) 
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: gnu.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [192.55.52.88 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1lPnij-00EEqj-61
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

T24gVGh1LCAyMDIxLTAzLTI1IGF0IDAwOjE2ICswMDAwLCBPbGl2ZXIsIERhcmlvIE4gd3JvdGU6
Cj4gSGkgTHVrYXN6LAo+IAo+IEkgYW0gaGF2aW5nIHNvbWUgcHJvYmxlbXMgdG8gZ2V0IHRoYXQg
Y3VzdG9tIGdydWIgcnVubmluZyB3aXRoIFNlY3VyZSBCb290Lgo+IEkgYW0gdXNpbmcgYW4gSHlw
ZXItViBWTSB3aXRoIEZlZG9yYSAzMyB0byB0ZXN0IHRoaXMsIGFmdGVyIGhhdmluZyB0byByZWlu
c3RhbGwgdGhlIE9TIHR3aWNlIGluIG15IE5VQy4KPiBJIGd1ZXNzIHRoZSBlbmQgcmVzdWx0IHdp
bGwgYmUgdGhlIHNhbWUgaW4gdGhlIFZNIGFuZCB0aGUgTlVDIHdpdGhvdXQgVFhUIHN1cHBvcnQu
Cj4gCj4gTXkgYnVpbGQgaW5zdHJ1Y3Rpb25zIGZvciBncnViIGFyZSByZXByZXNlbnRlZCBpbiB0
aGUgZm9sbG93aW5nIERvY2tlcmZpbGU6Cj4gCj4gRlJPTSBmZWRvcmE6MzMKPiBSVU4gZG5mIGlu
c3RhbGwgLXkgZ2l0IGF1dG9jb25mIGF1dG9tYWtlIGdldHRleHQtZGV2ZWwgYmlzb24gXAo+IMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZmluZHV0aWxzIHBrZ2NvbmYtcGtn
LWNvbmZpZyBweXRob24tdW52ZXJzaW9uZWQtY29tbWFuZCBcCj4gwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqBwYXRjaCBnaXQtbWVyZ2UtY2hhbmdlbG9nIGdjYyBmbGV4Cj4g
UlVOIGdpdCBjbG9uZSBodHRwczovL2dpdC5zYXZhbm5haC5nbnUub3JnL2dpdC9ncnViLmdpdAo+
IFdPUktESVIgZ3J1Ygo+IFJVTiAuL2Jvb3RzdHJhcCAmJiAuL2NvbmZpZ3VyZSAtLXdpdGgtcGxh
dGZvcm09ZWZpIC0tdGFyZ2V0PXg4Nl82NCAmJiBtYWtlCj4gCj4gVGhlbiwgdGhlIHByb2Nlc3Mg
SSBmb2xsb3cgdG8gaW5zdGFsbCBpdCBpbiBteSBWTSBhcmU6Cj4gCj4gZ3J1Yi1pbnN0YWxsIC0t
ZWZpLWRpcmVjdG9yeT0vYm9vdC9lZmkKPiAvdXNyL2xvY2FsL3NiaW4vZ3J1Yi1ta2NvbmZpZyAt
byAvYm9vdC9ncnViL2dydWIuY2ZnCj4gCj4gQWZ0ZXIgdGhpcywgaWYgSSBkaXNhYmxlIHNlY3Vy
ZSBib290IG9uIHRoZSBWTSwgbXkgY3VzdG9tIGdydWIgKGluIC9ib290L2VmaS9FRkkvZ3J1Yi9n
cnVieDY0LmVmaSkgZ2V0cyBjYWxsZWQgaW4gdGhlIGJvb3QgY2hhaW4uCj4gQnV0IGlmIEkgZW5h
YmxlIHNlY3VyZSBib290LCB0aGUgZGVmYXVsdCBmZWRvcmEgYm9vdGxvYWRlciBpcyBjYWxsZWQg
KC9ib290L2VmaS9FRkkvZmVkb3JhL2dydWJ4NjQuZWZpKSAKPiBUbyBzaWduIG15IGN1c3RvbSBn
cnViLCBJIGFtIHVzaW5nIHRoZSBmb2xsb3dpbmcgKEkga25vdyB0aGF0IGl0IHdvcmtzIGZvciBr
ZXJuZWxzLCBub3Qgc3VyZSBmb3IgZ3J1Yik6Cj4gCj4gZG5mIGluc3RhbGwgLXkgc2JzaWdudG9v
bHMKPiBjYXQgPiBvcGVuc3NsLmNuZiA8PCBFT0YKPiBbIHJlcSBdCj4gZGlzdGluZ3Vpc2hlZF9u
YW1lICAgICAgPSByZXFfZGlzdGluZ3Vpc2hlZF9uYW1lCj4geDUwOV9leHRlbnNpb25zICAgICAg
ICAgPSB2Mwo+IHN0cmluZ19tYXNrICAgICAgICAgICAgID0gdXRmOG9ubHkKPiBwcm9tcHQgICAg
ICAgICAgICAgICAgICA9IG5vCj4gWyByZXFfZGlzdGluZ3Vpc2hlZF9uYW1lIF0KPiBjb3VudHJ5
TmFtZSAgICAgICAgICAgICA9IFVTCj4gc3RhdGVPclByb3ZpbmNlTmFtZSAgICAgPSBPUgo+IGxv
Y2FsaXR5TmFtZSAgICAgICAgICAgID0gSGlsbHNib3JvCj4gMC5vcmdhbml6YXRpb25OYW1lICAg
ICAgPSBPcmdhbml6YXRpb24KPiBjb21tb25OYW1lICAgICAgICAgICAgICA9IFNlY3VyZSBCb290
IFNpZ25pbmcKPiBlbWFpbEFkZHJlc3MgICAgICAgICAgICA9IHNlY3VyZWJvb3RAdGVzdC5jb20K
PiBbIHYzIF0KPiBzdWJqZWN0S2V5SWRlbnRpZmllciAgICA9IGhhc2gKPiBhdXRob3JpdHlLZXlJ
ZGVudGlmaWVyICA9IGtleWlkOmFsd2F5cyxpc3N1ZXIKPiBiYXNpY0NvbnN0cmFpbnRzICAgICAg
ICA9IGNyaXRpY2FsLENBOkZBTFNFCj4gZXh0ZW5kZWRLZXlVc2FnZSAgICAgICAgPSBjb2RlU2ln
bmluZywxLjMuNi4xLjQuMS4zMTEuMTAuMy42Cj4gbnNDb21tZW50ICAgICAgICAgICAgICAgPSAi
T3BlblNTTCBHZW5lcmF0ZWQgQ2VydGlmaWNhdGUiCj4gRU9GCj4gb3BlbnNzbCByZXEgLWNvbmZp
ZyAuL29wZW5zc2wuY25mIFwKPiDCoMKgwqDCoMKgwqDCoMKgLW5ldyAteDUwOSAtbmV3a2V5IHJz
YToyMDQ4IFwKPiDCoMKgwqDCoMKgwqDCoMKgLW5vZGVzIC1kYXlzIDM2NTAgLW91dGZvcm0gREVS
IFwKPiDCoMKgwqDCoMKgwqDCoMKgLWtleW91dCBNT0sua2V5IFwKPiDCoMKgwqDCoMKgwqDCoMKg
LW91dCBNT0suZGVyCj4gb3BlbnNzbCB4NTA5IC1pbiBNT0suZGVyIC1pbmZvcm0gREVSIC1vdXRm
b3JtIFBFTSAtb3V0IE1PSy5wZW0gICAgICAgIAo+IHNic2lnbiAtLWtleSBNT0sua2V5IC0tY2Vy
dCBNT0sucGVtIFwKPiDCoMKgwqDCoMKgwqDCoC0tb3V0cHV0IC4vZ3J1Yng2NC5lZmkgL2Jvb3Qv
ZWZpL0VGSS9ncnViL2dydWJ4NjQuZWZpCj4gY3AgLi9ncnVieDY0LmVmaSAvYm9vdC9lZmkvRUZJ
L2dydWIvZ3J1Yng2NC5lZmkKPiBtb2t1dGlsIC0taW1wb3J0IE1PSy5kZXIKPiAKPiBBZnRlciB0
aGUgcmVib290LCBJIGRvIE1vayBNYW5hZ2VtZW50IHRvIGltcG9ydCB0aGUga2V5Lgo+IEJ1dCB0
aGUgc3lzdGVtIGtlZXBzIGJvb3Rpbmcgd2l0aCB0aGUgIC9ib290L2VmaS9FRkkvZ3J1Yi9ncnVi
eDY0LmVmaSBJbnN0ZWFkIG9mIG15IGN1c3RvbSBvbmUuCj4gCj4gSnVzdCB0byBzZWUgd2hhdCBo
YXBwZW5zLCBJIHJlcGxhY2VkIHRoZSBmZWRvcmEgYm9vdGxvYWRlciB3aXRoIG15IGN1c3RvbSBv
bmUsIGFuZCBJIGdvdCB0aGUgZm9sbG93aW5nIGVycm9yOgo+IAo+IGVycm9yOiB2ZXJpZmljYXRp
b24gcmVxdWVzdGVkIGJ1dCBub2JvZHkgY2FyZXM6IChoZDAsZ3B0MikvZ3J1Yi94ODZfNjQtZWZp
L25vcm1hbC5tb2QKPiBFbnRlcmluZyByZXNjdWUgbW9kZQo+IGdydWIgcmVzY3VlPgo+IAo+IEFu
eSBoaW50cyBvbiB3aGF0IGlzIGhhcHBlbmluZz8gCgpMb29rcyBsaWtlIHlvdSBkaWQgZXZlcnl0
aGluZyBjb3JyZWN0LCBJIGFtIG5vdCBxdWl0ZSBzdXJlIGhvdyBncnViLQppbnN0YWxsIHdvcmtz
LCBpZiBpdCBjb3BpZXMgR1JVQiBtb2R1bGVzIGFzIHN0YW5kYWxvbmUgZmlsZXMgeW91IG1heQpo
YXZlIHRvIHNpZ24gdGhlbSB0b28uIFBsZWFzZSB0cnkgdG8gaW5zdGFsbCBHUlVCIHVzaW5nIGdy
dWItbWtpbWFnZQpjb21tYW5kLiBUaGF0IGFsbG93cyB0byBpbmNsdWRlIGFsbCByZXF1aXJlZCBt
b2R1bGVzIGluIEdSVUIgYmluYXJ5LApoZXJlIGlzIGFuIGV4YW1wbGUgdXNhZ2U6CgouL2dydWIt
bWtpbWFnZSAtZCBncnViLWNvcmUgLU8geDg2XzY0LWVmaSAtbyBncnVieDY0LmVmaSAtcCAiL0VG
SS9CT09UIgplY2hvIGFsbF92aWRlbyBib290IGJ0cmZzIGNhdCBjaGFpbiBjb25maWdmaWxlIGVj
aG8gZWZpZndzZXR1cCBlZmluZXQKZXh0MiBmYXQgZm9udCBnZnhtZW51IGdmeHRlcm0gZ3ppbyBo
YWx0IGhmc3BsdXMgaXNvOTY2MCBqcGVnIGxvYWRlbnYgbHZtCm1kcmFpZDA5IG1kcmFpZDF4IG1p
bmljbWQgbm9ybWFsIHBhcnRfYXBwbGUgcGFydF9tc2RvcyBwYXJ0X2dwdApwYXNzd29yZF9wYmtk
ZjIgcG5nIHJlYm9vdCBzZWFyY2ggc2VhcmNoX2ZzX3V1aWQgc2VhcmNoX2ZzX2ZpbGUKc2VhcmNo
X2xhYmVsIHNsZWVwIHN5c2xpbnV4Y2ZnIHRlc3QgdGZ0cCByZWdleHAgdmlkZW8geGZzIHJlbG9j
YXRvcgptdWx0aWJvb3QyIGxpbnV4IGVmaW5ldCB0ZnRwIHNlcmlhbCBzaGltX2xvY2sgbXVsdGli
b290CgpBcyBhIHJlc3VsdCB5b3Ugd2lsbCBnZXQgZ3J1Yng2NC5lZmkgZmlsZSB0aGF0IHlvdSBj
YW4gc2lnbiBhbmQgY29weSB0bwovYm9vdCBwYXJ0aXRpb24gcmVwbGFjaW5nIEZlZG9yYSdzIEdS
VUIuCgpJIGhhdmUgcHJlcGFyZWQgZm9yIHlvdSBkZW1vIHdpdGggR1JVQiBhbmQgVEJPT1QgdGhh
dCBzaG91bGQgd29yayB1bmRlcgpTZWN1cmUgQm9vdCBlbmFibGVkIHN5c3RlbXMgWzFdLiBZb3Ug
Y2FuIGNvcHkgYWxsIGZpbGVzIHRvIGFueSBVU0Igc3RpY2sKYW5kIHRyeSBib290IHlvdXIgTlVD
IGZyb20gaXQuIE9mIGNvdXJzZSB5b3Ugd2lsbCBoYXZlIHRvIGFkZCBrZXkgdG8gTU9LCmRhdGFi
YXNlLiBZb3UgY2FuIHVzZSBmb3IgdGhhdCBtbXg2NC5lZmkgdG9vbCwga2V5IHRoYXQgd2FzIHVz
ZWQgdG8gc2lnbgpiaW5hcmllcyBmcm9tIHRoZSBkZW1vIGlzIGFsc28gaW5jbHVkZWQuCgpbMV0g
aHR0cHM6Ly9jbG91ZC5oYXdyeWxrby5wbC9zL2dWRDRwRlFlaERhTm1icAoKTHVrYXN6CgoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCnRib290LWRldmVs
IG1haWxpbmcgbGlzdAp0Ym9vdC1kZXZlbEBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9s
aXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdGJvb3QtZGV2ZWwK
