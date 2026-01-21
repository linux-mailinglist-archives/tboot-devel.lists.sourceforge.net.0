Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
Delivered-To: lists+tboot-devel@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cDhPJhuycGmKZAAAu9opvQ
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	for <lists+tboot-devel@lfdr.de>; Wed, 21 Jan 2026 12:01:47 +0100
X-Original-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7864055A5E
	for <lists+tboot-devel@lfdr.de>; Wed, 21 Jan 2026 12:01:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Content-Transfer-Encoding:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:References:To:From:MIME-Version:Date:Message-ID:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tyAMWC0tzmhghhxYgau05GkSlYAY6G7Jag46v/6g5Mw=; b=U9qQJHs3qSVenH6+UkWZxRNtJ5
	nKSKQKBjgB34yUhfB2VUzvpgE+kxG/BzZUCi/YZKgvXQDZH266gk3rw4gvjLRlmjUJtBZpkDYsPRU
	2+MYICcA65OKkpXMYyxXeeiz7oBmC0Z0QtLNGS1DCvEz69XL7Z7/1J60PmAU8GFsuNJU=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1viVxl-0006jH-VM;
	Wed, 21 Jan 2026 11:01:25 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <michal.camacho.romero@linux.intel.com>)
 id 1viVxk-0006jA-9G for tboot-devel@lists.sourceforge.net;
 Wed, 21 Jan 2026 11:01:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Cc:To:Subject:From:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=w7h550Gr8guZb1cgaw1NL+RZf5F/gOKnHEXxWV1tA2o=; b=lqPgufcmXr2d6hasJvqbgB/7tt
 7UAzP+L1ye+7WTJq9HgBJd86OQoeH0yfGVFC6nLf5QOXH790BOkkMDFzVTdJEnyGI1wKW3++5nrWo
 cH2096QgZPkbpWD3V1gOtLRKfUngjvKPu9NoFtH2Zrzy50KhUMfVF+rOCItViA5a1DC0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Cc:To:
 Subject:From:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=w7h550Gr8guZb1cgaw1NL+RZf5F/gOKnHEXxWV1tA2o=; b=QH0wR3yBbRpZYq8c1Jq8K5w1yI
 ovCGlkV7rMCnkA8QB94p1ExU1WvpKxfoUSZMg5sJT1hflOuyrcpx835Shll8Q/nDb2fWPirRhQnNA
 5Ybi/mUqTyzzb6lNgTFmahlOin0E2u3gRuGVKLKtGrAQ4lxRSjzvnpVmIfjLtecHq/CQ=;
Received: from mgamail.intel.com ([198.175.65.16])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1viVxj-0005n0-Mb for tboot-devel@lists.sourceforge.net;
 Wed, 21 Jan 2026 11:01:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768993283; x=1800529283;
 h=message-id:date:mime-version:from:subject:to:cc:
 references:in-reply-to:content-transfer-encoding;
 bh=NdJN0HdnSEhCWg3aLo0Z+jfv3MunjpOfYXRJ9OYqznc=;
 b=HTh69Pc/qcyU6mqEX3eCtbiWD2iykwFVfT3x1FWgfMQOamIaNq0JcDnP
 wZedWZXD98DZxtPlglGdNCoZ11SBQRpqZ8UvAM3UHpqq4mf0Je0ZtYaN9
 Tlf/XX1xiyCQ7tWrv0pVw6RtEQ6+SQ/BF+yl4LGY6ZBpODteo3qQuDhks
 A0Rs0t/J93JtpGqrV3hNK2LpoxLi3PpiTBfNVG94f6NUcUUqQnrRlbv0j
 GJmiCH3LRn7u2pw6BWS4lsttnMknsNxwc4fboH65ht9BljnyJ0cU7r0q+
 NqhrDuUJOAGEN8uUjAIiSoEPaPESWk9JwU2ZFqnyQpjQRLuGZVCEnKwCq w==;
X-CSE-ConnectionGUID: iewyDPaNSDaXI4WpH1EAcA==
X-CSE-MsgGUID: N0AfPoJIT32YfB6NX8PlDg==
X-IronPort-AV: E=McAfee;i="6800,10657,11677"; a="70382300"
X-IronPort-AV: E=Sophos;i="6.21,242,1763452800"; d="scan'208";a="70382300"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2026 03:01:12 -0800
X-CSE-ConnectionGUID: xBrEgIJjQlyhi1dfMz5dqw==
X-CSE-MsgGUID: gBclQ6O7RLm3x0QSIs1jfg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,242,1763452800"; d="scan'208";a="205553111"
Received: from soc-5cg4396x73.clients.intel.com (HELO [10.102.88.76])
 ([10.102.88.76])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2026 03:01:11 -0800
Message-ID: <71de1246-ab8c-4ffa-b07e-2b7adb4f397c@linux.intel.com>
Date: Wed, 21 Jan 2026 12:01:03 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: "Camacho Romero, Michal" <michal.camacho.romero@linux.intel.com>
To: tboot-devel@lists.sourceforge.net, =?UTF-8?B?xYF1a2FzeiBIYXdyecWCa28=?=
 <lukasz@hawrylko.pl>, timo.lindfors@iki.fi, Tony Camuso <tcamuso@redhat.com>
References: <patchbomb.1768849808@gklab-219-098>
Content-Language: en-US
In-Reply-To: <patchbomb.1768849808@gklab-219-098>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello Lukasz, Timo and Tony, I've prepared 4 patches, which
 provide the additional option for TBOOT cmdline - "force_pmrs". It's purpose
 is to force TBOOT and SINIT ACM to configure IOMMU PMRs (Protected Memory
 Ranges) , instead [...] 
 Content analysis details:   (-0.1 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1viVxj-0005n0-Mb
Subject: Re: [tboot-devel] [PATCH 0 of 4] Define additional force_pmrs TBOOT
 cmdline option,
 which forces to use PMRs instead of TPRs as memory protection mechanism
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
Cc: adamx.pawlicki@intel.com, mateusz.mowka@linux.intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: tboot-devel-bounces@lists.sourceforge.net
X-Spamd-Result: default: False [-0.91 / 15.00];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,intel.com:s=Intel];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,intel.com:-];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[michal.camacho.romero@linux.intel.com,tboot-devel-bounces@lists.sourceforge.net];
	FROM_HAS_DN(0.00)[];
	DKIM_MIXED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	TAGGED_RCPT(0.00)[tboot-devel];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,linux.intel.com:mid]
X-Rspamd-Queue-Id: 7864055A5E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

SGVsbG8gTHVrYXN6LCBUaW1vIGFuZCBUb255LAoKSSd2ZSBwcmVwYXJlZCA0IHBhdGNoZXMsIHdo
aWNoIHByb3ZpZGUgdGhlIGFkZGl0aW9uYWwgb3B0aW9uIGZvciBUQk9PVCAKY21kbGluZSAtICJm
b3JjZV9wbXJzIi4gSXQncyBwdXJwb3NlIGlzIHRvIGZvcmNlIFRCT09UIGFuZCBTSU5JVCBBQ00g
dG8gCmNvbmZpZ3VyZSBJT01NVSBQTVJzIChQcm90ZWN0ZWQgTWVtb3J5IFJhbmdlcykgLCBpbnN0
ZWFkIG9mIFRQUnMgKEludGVsIApUWFQgUHJvdGVjdGlvbiBSYW5nZXMpIG9uIHRoZSBJbnRlbCBQ
cm9jZXNzb3JzLCB3aGljaCBzdXBwb3J0IHRoZSBzZWNvbmQgCm9uZXMuIFRoaXMgb3B0aW9uIHdp
bGwgYmUgbmVlZGVkIHRvIG9taXQgcG90ZW50aWFsIEtlcm5lbCBoYW5naW5nIAppc3N1ZXMsIGNh
dXNlZCBieSB0aGUgbGFjayBvZiBUUFIgc3VwcG9ydC4gQmVsb3cgSSd2ZSBzaGFyZWQgYW4gZXhh
bXBsZSAKb2Ygc3VjaCBmYWlsdXJlcywgd2hpY2ggYXBwZWFyZWQgZm9yIHRoZSBNVEwgQ1BVczoK
CiIKClvCoCDCoCA4LjQ0ODk4NF0gQUNQSTogQWRkZWQgX09TSSgzLjAgX1NDUCBFeHRlbnNpb25z
KQpbwqAgwqAgOC40NDk5ODRdIEFDUEk6IEFkZGVkIF9PU0koUHJvY2Vzc29yIEFnZ3JlZ2F0b3Ig
RGV2aWNlKQpbwqAgwqAgOC44NjM4OTNdIEFDUEk6IDEzIEFDUEkgQU1MIHRhYmxlcyBzdWNjZXNz
ZnVsbHkgYWNxdWlyZWQgYW5kIGxvYWRlZApbwqAgwqAgOC44ODMwMDBdIERNQVI6IFZULWQgZGV0
ZWN0ZWQgSW52YWxpZGF0aW9uIFF1ZXVlIEVycm9yOiBSZWFzb24gMgpbwqAgwqAgOC44ODMwMDNd
IERNQVI6IFFJIEhFQUQ6IEludGVycnVwdCBFbnRyeSBDYWNoZSBJbnZhbGlkYXRpb24gcXcwID0g
CjB4ODAwMDAwMDE0LCBxdzEgPSAweDAKW8KgIMKgIDguODgzMDA3XSBETUFSOiBEUkhEOiBoYW5k
bGluZyBmYXVsdCBzdGF0dXMgcmVnIDEwClvCoCDCoCA4Ljg4Mzk4MV0gRE1BUjogUUkgUFJJT1I6
IFVOS05PV04gcXcwID0gMHgwLCBxdzEgPSAweDAKW8KgIMKgIDguODgzOTgxXSBETUFSOiBJbnZh
bGlkYXRpb24gUXVldWUgRXJyb3IgKElRRSkgY2xlYXJlZApbwqAgwqAgOC45MDk5ODJdIERNQVI6
IERSSEQ6IGhhbmRsaW5nIGZhdWx0IHN0YXR1cyByZWcgMTAKW8KgIMKgIDguODgzOTgxXSBETUFS
OiBWVC1kIGRldGVjdGVkIEludmFsaWRhdGlvbiBRdWV1ZSBFcnJvcjogUmVhc29uIDIKW8KgIMKg
IDguODgzOTgxXSBETUFSOiBRSSBIRUFEOiBJbnZhbGlkYXRpb24gV2FpdCBxdzAgPSAweDIwMDAw
MDAyNSwgcXcxID0gCjB4MTAwMzUxODA0ClvCoCDCoCA4Ljg4Mzk4MV0gRE1BUjogUUkgUFJJT1I6
IFVOS05PV04gcXcwID0gMHgwLCBxdzEgPSAweDAKW8KgIMKgIDguODgzOTgxXSBETUFSOiBWVC1k
IGRldGVjdGVkIEludmFsaWRhdGlvbiBRdWV1ZSBFcnJvcjogUmVhc29uIDIKW8KgIMKgIDguODgz
OTgxXSBETUFSOiBRSSBIRUFEOiBJbnZhbGlkYXRpb24gV2FpdCBxdzAgPSAweDIwMDAwMDAyNSwg
cXcxID0gCjB4MTAwMzUxODA0ClvCoCDCoCA4Ljg4Mzk4MV0gRE1BUjogUUkgUFJJT1I6IFVOS05P
V04gcXcwID0gMHgwLCBxdzEgPSAweDAKW8KgIMKgIDguODgzOTgxXSBETUFSOiBWVC1kIGRldGVj
dGVkIEludmFsaWRhdGlvbiBRdWV1ZSBFcnJvcjogUmVhc29uIDIKW8KgIMKgIDguODgzOTgxXSBE
TUFSOiBRSSBIRUFEOiBJbnZhbGlkYXRpb24gV2FpdCBxdzAgPSAweDIwMDAwMDAyNSwgcXcxID0g
CjB4MTAwMzUxODA0ClvCoCDCoCA4Ljg4Mzk4MV0gRE1BUjogUUkgUFJJT1I6IFVOS05PV04gcXcw
ID0gMHgwLCBxdzEgPSAweDAKW8KgIMKgIDguODgzOTgxXSBETUFSOiBWVC1kIGRldGVjdGVkIElu
dmFsaWRhdGlvbiBRdWV1ZSBFcnJvcjogUmVhc29uIDIKW8KgIMKgIDguODgzOTgxXSBETUFSOiBR
SSBIRUFEOiBJbnZhbGlkYXRpb24gV2FpdCBxdzAgPSAweDIwMDAwMDAyNSwgcXcxID0gCjB4MTAw
MzUxODA0ClvCoCDCoCA4Ljg4Mzk4MV0gRE1BUjogUUkgUFJJT1I6IFVOS05PV04gcXcwID0gMHgw
LCBxdzEgPSAweDAKW8KgIMKgIDguODgzOTgxXSBETUFSOiBWVC1kIGRldGVjdGVkIEludmFsaWRh
dGlvbiBRdWV1ZSBFcnJvcjogUmVhc29uIDIKW8KgIMKgIDguODgzOTgxXSBETUFSOiBRSSBIRUFE
OiBJbnZhbGlkYXRpb24gV2FpdCBxdzAgPSAweDIwMDAwMDAyNSwgcXcxID0gCjB4MTAwMzUxODA0
ClvCoCDCoCA4Ljg4Mzk4MV0gRE1BUjogUUkgUFJJT1I6IFVOS05PV04gcXcwID0gMHgwLCBxdzEg
PSAweDAKW8KgIMKgIDguODgzOTgxXSBETUFSOiBWVC1kIGRldGVjdGVkIEludmFsaWRhdGlvbiBR
dWV1ZSBFcnJvcjogUmVhc29uIDIKW8KgIMKgIDguODgzOTgxXSBETUFSOiBRSSBIRUFEOiBJbnZh
bGlkYXRpb24gV2FpdCBxdzAgPSAweDIwMDAwMDAyNSwgcXcxID0gCjB4MTAwMzUxODA0ClvCoCDC
oCA4Ljg4Mzk4MV0gRE1BUjogUUkgUFJJT1I6IFVOS05PV04gcXcwID0gMHgwLCBxdzEgPSAweDAK
W8KgIMKgIDguODgzOTgxXSBETUFSOiBWVC1kIGRldGVjdGVkIEludmFsaWRhdGlvbiBRdWV1ZSBF
cnJvcjogUmVhc29uIDIKW8KgIMKgIDguODgzOTgxXSBETUFSOiBRSSBIRUFEOiBJbnZhbGlkYXRp
b24gV2FpdCBxdzAgPSAweDIwMDAwMDAyNSwgcXcxID0gCjB4MTAwMzUxODA0ClvCoCDCoCA4Ljg4
Mzk4MV0gRE1BUjogUUkgUFJJT1I6IFVOS05PV04gcXcwID0gMHgwLCBxdzEgPSAweDAKCiIKCkNv
dWxkIHlvdSBwbGVhc2Ugc2hhcmUgeW91IG9waW5pb25zIGFib3V0IHRoZXNlIDQgcGF0Y2hlcz8K
ClJlZ2FyZHMsCgpNaWNoYWwgQ2FtYWNobyBSb21lcm8KCk9uIDEvMTkvMjAyNiA4OjEwIFBNLCBt
aWNoYWwuY2FtYWNoby5yb21lcm9AbGludXguaW50ZWwuY29tIHdyb3RlOgo+IF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gdGJvb3QtZGV2ZWwgbWFpbGlu
ZyBsaXN0Cj4gdGJvb3QtZGV2ZWxAbGlzdHMuc291cmNlZm9yZ2UubmV0Cj4gaHR0cHM6Ly9saXN0
cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdGJvb3QtZGV2ZWwKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwp0Ym9vdC1kZXZlbCBtYWlsaW5n
IGxpc3QKdGJvb3QtZGV2ZWxAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291
cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3Rib290LWRldmVsCg==
