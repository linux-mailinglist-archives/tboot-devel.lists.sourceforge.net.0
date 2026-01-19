Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E4ACD3B6F0
	for <lists+tboot-devel@lfdr.de>; Mon, 19 Jan 2026 20:12:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Content-Transfer-Encoding:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:References:To:From:MIME-Version:Date:Message-ID:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=aXhhbqEGfEMer2vU81aINixRX8JBqOiyuVP0rknd1b8=; b=K9l8S1gFKoK1TxBr5W2taPo56J
	8xFmiS3KoMiZ8CicJPUsGujFmwQ9ETFiVC+93AVF8HdkCAGD2AC0K1mzGaNCyzl47YjuKqQqNDFEN
	0OGogKGoyLfDfBteLxZzjdGKvSiKuxnnxgyfgk8xU+DCTelzMzpov2bsjrCemTXT0U94=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1vhuff-0003aK-3F;
	Mon, 19 Jan 2026 19:12:15 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <michal.camacho.romero@linux.intel.com>)
 id 1vhufb-0003aB-Tj for tboot-devel@lists.sourceforge.net;
 Mon, 19 Jan 2026 19:12:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Cc:To:From:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LSN3LXCYXn5kKReKrHuqziTSNUvMlAAqqvpunsUO96M=; b=GgHsVgQf7Re5WObOzW4c355rJR
 H/MFZ1pnGlzgIyqRRLO+OmW2Dx7roRkOVj6UFJf5z71vCcW8pgcq10u4komA8nTs80kZQ5JglDQbT
 BvMg1EBIJWeyGm9j4rNTZ4ZC916TiOasEkjxbe2tHi5UPMk3oySs3bp0AVsZXd7CSoSo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Cc:To:From:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=LSN3LXCYXn5kKReKrHuqziTSNUvMlAAqqvpunsUO96M=; b=Q0Rw7Wbi/9pxe0N1f1B3yLbUws
 VJNhi8H2CZO64y7AP7vmYuG1OM28Z3kq/nHN1sHfqLj812HnEqA58vwCMA03U9zyZcF5c9rFaOl+U
 rgGjQogwhia3tV7wjDvSh6ZzT0kwmNGKYW11ao1S8kYm9nBoe0e/qZcU7sR7pmN4hjmk=;
Received: from mgamail.intel.com ([198.175.65.16])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vhufb-0007ZV-8W for tboot-devel@lists.sourceforge.net;
 Mon, 19 Jan 2026 19:12:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768849931; x=1800385931;
 h=message-id:date:mime-version:subject:from:to:cc:
 references:in-reply-to:content-transfer-encoding;
 bh=LSN3LXCYXn5kKReKrHuqziTSNUvMlAAqqvpunsUO96M=;
 b=oCg8+nH10TzOxUGt8DH4mkScmdCw7oidWwaJw6ooZhHRlT5tMI5rXYWM
 UVi6g1tb2S5xrJ7TXtfKg9nbio4/XYh76kawQ/rsr3AIAvDmKdWgG1PzY
 e2RidFqFivkV+QmZowUxBxSq49y35ZyvL9lDN8I1z3xVBX6i12UDLEk5p
 jRDWLDYhgsNnk/8P0hRW4RDYKlad5aEyT/exCgu20Q2rtRUaAJuMwm7Zk
 fMrAD0YSH3fbdNsMQY81cDTDzAx0sm+jFGyQDVHR/v/YdVd73UrsAgH0o
 x9uChLZBA4tdHs2rmLbb/7OyGGPViMUCf3TZi5F9wg0GijbqTqVHTp6i3 Q==;
X-CSE-ConnectionGUID: YPH89kDGTzudd5uuhzVWWg==
X-CSE-MsgGUID: rQYSfgPQRx2SYbqp++2Cxg==
X-IronPort-AV: E=McAfee;i="6800,10657,11676"; a="70226436"
X-IronPort-AV: E=Sophos;i="6.21,238,1763452800"; d="scan'208";a="70226436"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2026 11:12:06 -0800
X-CSE-ConnectionGUID: DnF2pfKTTGa55Q0gDRU3mw==
X-CSE-MsgGUID: TV1BuyCvRyKH7M0H/hSH2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,238,1763452800"; d="scan'208";a="243518077"
Received: from jklasson-mobl1.ger.corp.intel.com (HELO [10.246.17.177])
 ([10.246.17.177])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2026 11:12:04 -0800
Message-ID: <d8fe45d5-168b-44e7-b3af-ce64b7ca3a69@linux.intel.com>
Date: Mon, 19 Jan 2026 20:12:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: "Camacho Romero, Michal" <michal.camacho.romero@linux.intel.com>
To: tboot-devel@lists.sourceforge.net
References: <patchbomb.1768849653@gklab-219-098>
Content-Language: en-US
In-Reply-To: <patchbomb.1768849653@gklab-219-098>
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Please ignore the given message. There is a lack of the last
 4th patch. On 1/19/2026 8:07 PM, michal.camacho.romero@linux.intel.com wrote:
 > > > > tboot-devel mailing list > tboot-devel@lists.sourceforge.net >
 https://lists. [...] 
 Content analysis details:   (-0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URI: intel.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1vhufb-0007ZV-8W
Subject: Re: [tboot-devel] [PATCH 0 of 3] Define additional force_pmrs TBOOT
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: tboot-devel-bounces@lists.sourceforge.net

Please ignore the given message. There is a lack of the last 4th patch.

On 1/19/2026 8:07 PM, michal.camacho.romero@linux.intel.com wrote:
>
>
> _______________________________________________
> tboot-devel mailing list
> tboot-devel@lists.sourceforge.net
> https://lists.sourceforge.net/lists/listinfo/tboot-devel


_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
