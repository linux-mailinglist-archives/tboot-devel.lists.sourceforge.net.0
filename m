Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F95A1D47C1
	for <lists+tboot-devel@lfdr.de>; Fri, 15 May 2020 10:07:13 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1jZVN7-0003rP-Nk; Fri, 15 May 2020 08:07:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lukasz.hawrylko@linux.intel.com>) id 1jZVN6-0003rH-Is
 for tboot-devel@lists.sourceforge.net; Fri, 15 May 2020 08:07:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8/wFF/USk2ybz320nqxQBsyXg9VvcgDIbM9mOXMrFfE=; b=N+5io/MhoGTAymG9X9okiEmz+0
 9jtM6WpLlrT+5k37vQ/nPANYE0U/SUBejcATd7O91WM9X+ev+f5CYHWqpDYZbjpGRsIC7CIfjKiut
 ebkJwOIX9D+ZKSyZdR7QLWhRlpHC3ClcSnsZgdHTZUHnIJQXO140UdF3e3fTpaQeIYFY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=8/wFF/USk2ybz320nqxQBsyXg9VvcgDIbM9mOXMrFfE=; b=jZEXKNrTT5PgEjng/o2GwKft/4
 y3gaDpRQY0qegBziQaaby/i+o+pgLVw7yjmKmHVAix294d2XDcggraP4yayoNQp9ugzoSQGJ7pPx2
 kMMCWTmfAs2u2YhKqj9Z0tqHLFMhu5utiVD2qY6Hw1jRflgvhJ68vngH1t1ycaKwpStc=;
Received: from mga12.intel.com ([192.55.52.136])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jZVN4-00BLR0-9L
 for tboot-devel@lists.sourceforge.net; Fri, 15 May 2020 08:07:08 +0000
IronPort-SDR: DrGjgIaWycl3nTblNEdufmuoIhFA0/Mf6jjmCwXWODPj5QpGdpIwLmWyNskt4yBk7mahf1q6Ap
 Wz+u/eNdWKIg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2020 01:06:53 -0700
IronPort-SDR: HDcRWJ8jcINwsH0il3r9yxiJ+AmDFVYAnq18rsYYMisXy/r/N+TKrcMVxMV4dXZAPJEXRfufub
 B1c76NT1/n7g==
X-IronPort-AV: E=Sophos;i="5.73,394,1583222400"; d="scan'208";a="464646625"
Received: from lhawrylk-desk.ger.corp.intel.com ([10.213.20.117])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2020 01:06:52 -0700
Message-ID: <de1b7e0f118c30e344ec30f7ba1e1f7cbfa9c0a5.camel@linux.intel.com>
From: Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>
To: Timo Lindfors <timo.lindfors@iki.fi>
Date: Fri, 15 May 2020 10:06:50 +0200
In-Reply-To: <alpine.DEB.2.20.2005121219001.7218@mail.home>
References: <alpine.DEB.2.20.2005101501330.5531@mail.home>
 <0006538262f002e44d5bdc18e338e294fd5185e2.camel@linux.intel.com>
 <alpine.DEB.2.20.2005121219001.7218@mail.home>
User-Agent: Evolution 3.34.4 (3.34.4-1.fc31) 
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jZVN4-00BLR0-9L
Subject: Re: [tboot-devel] packaging for debian,
 some clarifications for licensing?
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
Cc: tboot-devel@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tboot-devel-bounces@lists.sourceforge.net

On Tue, 2020-05-12 at 12:26 +0300, Timo Lindfors wrote:
> Hi
> 
> On Tue, 12 May 2020, Lukasz Hawrylko wrote:
> > The base TBOOT licence is BSD-3-clause, however some files that comes
> > from other projects have different licenses (but all of them are
> > compatible with BSD-3-clause).
> > 
> > I can add information to COPYING file that looks like: "All files that
> > do not have license header, have BSD-3-clause license and are
> > copyrighted by Intel Corporation". Will it solve all license gaps in
> > your opinion?
> 
> Yes, I think that would clarify the situation nicely but I would also 
> include the full license text in COPYING and not just a reference to 
> "BSD-3-clause". With these changes I feel I can upload this to Debian 
> Gitlab (https://salsa.debian.org/debian/tboot/), the actual upload to the 
> archive will of course still go through review by the Debian FTP master 
> team.
> 
> -Timo
> 

Done. Thank you for your support, adding TBOOT to Debian is a great
idea.

Thanks,
Lukasz



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
