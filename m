Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
Delivered-To: lists+tboot-devel@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KICsAP+NjGn5qwAAu9opvQ
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	for <lists+tboot-devel@lfdr.de>; Wed, 11 Feb 2026 15:11:11 +0100
X-Original-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E492712516E
	for <lists+tboot-devel@lfdr.de>; Wed, 11 Feb 2026 15:11:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Content-Transfer-Encoding:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:From:References:To:MIME-Version:Date:Message-ID:Sender:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Z8rU3bsZHlR0J+5iZ/vWGKqQJ0mS1HBBMKBi0MyozRc=; b=a6cXK1juapdUb1uyrB0ALEKNGa
	KKHaHds3/qkos0OofA1r6l2hvImBn9ikxoxWoDZWOGp5cpWDFUcYHV5OHS/tElajt63/YCWnue2ho
	z7WPQ2jyn5Ixl2qXYP+hT/ZP7PMk0SndjOVcSNysiHH/5vTJDOiwTSpXY2cob68J+xow=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1vqAvh-0002B8-EE;
	Wed, 11 Feb 2026 14:10:57 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <michal.camacho.romero@linux.intel.com>)
 id 1vqAvf-0002Av-0l for tboot-devel@lists.sourceforge.net;
 Wed, 11 Feb 2026 14:10:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JnGm5azzmVDV3qbBppkFYuuBqs1XGBC2ftdJ3jkY9E8=; b=J+94xD115NzJVoD2KzeJdNdjT6
 m6ZH9Vp3gBq1d6FEm1lNErd3CcMz/Y0N5wVRi3YaijrG8HoHV/hMGsWyPMnpTNf97TMjhsogHixqN
 Wr/rM6ZNwhr9FxuZO1elSLT7o3yk6jyOYIL1n4qvItscW4PNf+H83bqTCKBCK3NAqPdo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=JnGm5azzmVDV3qbBppkFYuuBqs1XGBC2ftdJ3jkY9E8=; b=A9JU/3gifGLQ1dHLKhu+UVwEhz
 ian8gCMR/YQ6SmnBZ8i8RL/v7Kg/5wx4jTwSNDA27AHDi7NT622GPfhf4hFin+Ceh3YqS182YL6uX
 A9mrF2bXpXBDrTPYIRp5pSlO1iFR7tz8hhJlWJ3bwph3GcsnbgvvajhfMSREqurxISsU=;
Received: from mgamail.intel.com ([192.198.163.13])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vqAve-0008U3-FT for tboot-devel@lists.sourceforge.net;
 Wed, 11 Feb 2026 14:10:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770819054; x=1802355054;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=DMhv6Z3HN6KXH+NI56Zpb5zf+7EpZP/j9Ovbq6XV+z8=;
 b=Dd44kAILZJnGKBHjmkq4cUiOXHGv/Fiz4qprY8Jtstf71WIEpykVwZ5p
 bbwQREpa1e2Ada/Ryfm6Yb19sD4aTo3xqTMN9kZha0AazGSjlj3zagBz3
 S3nSxAWexpECa0/3owyQv0zwj0/OzFSPlIlJUoSxE/AWCR3q/3VkF6l4W
 m2wNejVwxibzcVRMvn7BDWp59ignwPRQWRNxFAF/X6u7aKNLHTRUc/dTT
 yd47F2EmF9NaDdihLzh4AJrkE2e1l7SS/dqjzu/4vfTugguNSDW9kbcvk
 KnAZQwLPQfdc7TarShTa7T0SWOCMoK6zxXKgH0mr0CJc9LrwfTcHGDKN+ A==;
X-CSE-ConnectionGUID: 1KzEPF1qRvWztR7rbwxtVQ==
X-CSE-MsgGUID: MJvtK3hCRby2eOOWgvELSw==
X-IronPort-AV: E=McAfee;i="6800,10657,11698"; a="74563125"
X-IronPort-AV: E=Sophos;i="6.21,283,1763452800"; d="scan'208";a="74563125"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2026 06:10:49 -0800
X-CSE-ConnectionGUID: q6zBzG+MTY66o73bsvShhg==
X-CSE-MsgGUID: mCsZnSWQQ+Wbax+5bd1Kpg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,283,1763452800"; d="scan'208";a="212087932"
Received: from soc-5cg4396x73.clients.intel.com (HELO [10.102.88.34])
 ([10.102.88.34])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2026 06:10:48 -0800
Message-ID: <824febaf-b67b-4c01-a2ad-ec557df3705b@linux.intel.com>
Date: Wed, 11 Feb 2026 15:10:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Matthias Gerstner <mgerstner@suse.de>, tboot-devel@lists.sourceforge.net
References: <aXNWh0OHTdtfvzFj@kasco.suse.de>
Content-Language: en-US
From: "Camacho Romero, Michal" <michal.camacho.romero@linux.intel.com>
In-Reply-To: <aXNWh0OHTdtfvzFj@kasco.suse.de>
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello Matthias,
 We will review your patch in the future. However
 our team needs first to implement several urgent features for TBOOT MLE,
 before we take care of your changeset. Regards, Michal Camacho Romero 
 Content analysis details:   (-0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1vqAve-0008U3-FT
Subject: Re: [tboot-devel] 
 =?utf-8?q?=5BPatch=5D_gcc-16_compile_error_in_strp?=
 =?utf-8?b?YnJrX3MoKTogdmFyaWFibGUg4oCYbGVu4oCZIHNldCBidXQgbm90IHVzZWQ=?=
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: tboot-devel-bounces@lists.sourceforge.net
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.51 / 15.00];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:mgerstner@suse.de,m:tboot-devel@lists.sourceforge.net,s:lists@lfdr.de];
	RCPT_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[michal.camacho.romero@linux.intel.com,tboot-devel-bounces@lists.sourceforge.net];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[tboot-devel@lists.sourceforge.net];
	RCVD_TLS_LAST(0.00)[];
	DKIM_MIXED(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[michal.camacho.romero@linux.intel.com,tboot-devel-bounces@lists.sourceforge.net];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,intel.com:s=Intel];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	TAGGED_RCPT(0.00)[tboot-devel];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,intel.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.sourceforge.net:rdns,lists.sourceforge.net:helo,lists.sourceforge.net:dkim]
X-Rspamd-Queue-Id: E492712516E
X-Rspamd-Action: no action

SGVsbG8gTWF0dGhpYXMsCgpXZSB3aWxsIHJldmlldyB5b3VyIHBhdGNoIGluIHRoZSBmdXR1cmUu
IEhvd2V2ZXIgb3VyIHRlYW0gbmVlZHMgZmlyc3QgdG8gCmltcGxlbWVudApzZXZlcmFsIHVyZ2Vu
dCBmZWF0dXJlcyBmb3IgVEJPT1QgTUxFLCBiZWZvcmUgd2UgdGFrZSBjYXJlIG9mIHlvdXIgCmNo
YW5nZXNldC4KClJlZ2FyZHMsCk1pY2hhbCBDYW1hY2hvIFJvbWVybwoKT24gMS8yMy8yMDI2IDEy
OjA3IFBNLCBNYXR0aGlhcyBHZXJzdG5lciB3cm90ZToKPiBIZWxsbyBsaXN0LAo+Cj4gYWx0aG91
Z2ggaXQgc2VlbXMgdGhlcmUgaXMgbm8gbG9uZ2VyIGFuIGFjdGl2ZSB1cHN0cmVhbSBmb3IgdGJv
b3QsIGhlcmUKPiBpcyBhIHBhdGNoIGZvciBhIGNvbXBpbGVyIGVycm9yL3dhcm5pbmcgaW4gdGJv
b3Qgd2hpY2ggb2NjdXJzIHdpdGgKPiBnY2MtMTYuIE1heWJlIGF0IGxlYXN0IG90aGVyIHVzZXJz
IG9mIHRib290IGNhbiBtYWtlIHVzZSBvZiBpdC4KPgo+IFRoZSBkaWFnbm9zdGljIGlzIGFzIGZv
bGxvd3M6Cj4KPiAgICAgIHNhZmVjbGliL3N0cnBicmtfcy5jOiBJbiBmdW5jdGlvbiDigJhzdHJw
YnJrX3PigJk6Cj4gICAgICBzYWZlY2xpYi9zdHJwYnJrX3MuYzo5NToxMzogZXJyb3I6IHZhcmlh
YmxlIOKAmGxlbuKAmSBzZXQgYnV0IG5vdCB1c2VkIFstV2Vycm9yPXVudXNlZC1idXQtc2V0LXZh
cmlhYmxlPV0KPiAgICAgICAgICA5NSB8ICAgICByc2l6ZV90IGxlbjsKPiAgICAgICAgICAgICB8
ICAgICAgICAgICAgIF5+fgo+ICAgICAgY2MxOiBhbGwgd2FybmluZ3MgYmVpbmcgdHJlYXRlZCBh
cyBlcnJvcnMKPgo+IEl0IHNlZW1zIHRoYXQgdGhpcyBmdW5jdGlvbiBkb2VzIG5vdCB0YWtlIHRo
ZSBgc2xlbmAgcGFyYW1ldGVyIGludG8KPiBhY2NvdW50IGF0IGFsbCwgdGhlcmVieSBub3QgcHJv
dmlkaW5nIHRoZSBzYWZldHkgZ3VhcmFudGVlcyB0aGF0IHRoZQo+IGZ1bmN0aW9uJ3Mgc2lnbmF0
dXJlIHN1Z2dlc3RzLiBNeSB0YWtlIG9uIGZpeGluZyB0aGUgaXNzdWUgaXMgZm91bmQgaW4KPiB0
aGUgYXR0YWNoZWQgcGF0Y2guIEhvcGVmdWxseSB0aGlzIGRvZXNuJ3QgY2F1c2UgYW55IHJlZ3Jl
c3Npb25zIGluCj4gc3BvdHMgd2hlcmUgdGhpcyBzaG9ydGNvbWluZyBoYXMgbWFza2VkIGVycm9y
cyBiZWZvcmUuCj4KPiBDaGVlcnMKPgo+IE1hdHRoaWFzCj4KPgo+Cj4gX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiB0Ym9vdC1kZXZlbCBtYWlsaW5nIGxp
c3QKPiB0Ym9vdC1kZXZlbEBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKPiBodHRwczovL2xpc3RzLnNv
dXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby90Ym9vdC1kZXZlbAoKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwp0Ym9vdC1kZXZlbCBtYWlsaW5nIGxp
c3QKdGJvb3QtZGV2ZWxAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNl
Zm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3Rib290LWRldmVsCg==
