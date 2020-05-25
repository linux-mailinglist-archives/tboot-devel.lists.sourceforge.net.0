Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CB0001E099C
	for <lists+tboot-devel@lfdr.de>; Mon, 25 May 2020 11:04:59 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1jd92T-0002s8-Vq; Mon, 25 May 2020 09:04:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lukasz.hawrylko@linux.intel.com>) id 1jd92Q-0002rx-4r
 for tboot-devel@lists.sourceforge.net; Mon, 25 May 2020 09:04:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NqAaYVJDcAPIEZt4rV/sasiudHxyqlZnUwQT8ijiI64=; b=DwYjDUO8nSolcrTxCe/izDpDHv
 iHnwCzjQBRFtQnlVd8bEdpqR/k+TRsLC/BpM0dLYp5UlmJRc62eWNqcooLv1rHfCe5ld3bzHSusx1
 fPbdFzn2sO/tHTOXJTGZwwS/XVEMrJdPU42FUBza7SIohjAmXxim2cCC4FRr/N6DTrJA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=NqAaYVJDcAPIEZt4rV/sasiudHxyqlZnUwQT8ijiI64=; b=bkUAGzqOOeG/3vi2HRlz4erp4V
 Ahe5YHWc6trhuVRu74RdSBxGGpD7h/+HpRKtg0mmE8Q/OnowrTumncw+AhbEWsuAV5CyNZ7gwn5se
 1pMk2z6Ap2YeKeunDCAg5HUPKtj1B44vZesAPHlTT+4cpEOs+n02LxfkTQJEOpamwgKU=;
Received: from mga17.intel.com ([192.55.52.151])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jd92O-00Adqe-Hp
 for tboot-devel@lists.sourceforge.net; Mon, 25 May 2020 09:04:49 +0000
IronPort-SDR: NknFKufLBtScwIF38ZK5RWQuiZooU5nvxNN+/Z+sYgN9t/ZY5HggUBqx3Y7GjCrv++OHB4dak4
 IymsEDMh368g==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2020 02:04:43 -0700
IronPort-SDR: JL1zzr5YHSgkGY77otqSeZjBlS9xJTmciECm7ZuJvPDn6pkQ1+22ECzLC/TSbZRLAVpGhTQbSD
 yDp/Jma0mE4w==
X-IronPort-AV: E=Sophos;i="5.73,432,1583222400"; d="scan'208";a="467906908"
Received: from lhawrylk-desk.ger.corp.intel.com ([10.213.8.237])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2020 02:04:42 -0700
Message-ID: <6b1c98aa310cf44f66544afb06b154481e2abd2e.camel@linux.intel.com>
From: Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>
To: Timo Juhani Lindfors <timo.lindfors@iki.fi>, 
 tboot-devel@lists.sourceforge.net
Date: Mon, 25 May 2020 11:04:40 +0200
In-Reply-To: <21e7be142605955977ea.1590256865@sec-589.nixu.fi>
References: <21e7be142605955977ea.1590256865@sec-589.nixu.fi>
User-Agent: Evolution 3.34.4 (3.34.4-1.fc31) 
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1jd92O-00Adqe-Hp
Subject: Re: [tboot-devel] [PATCH] Fix man page syntax error
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tboot-devel-bounces@lists.sourceforge.net

On Sat, 2020-05-23 at 21:01 +0300, Timo Juhani Lindfors wrote:
> # HG changeset patch
> # User Timo Juhani Lindfors <timo.lindfors@iki.fi>
> # Date 1590255451 -10800
> #      Sat May 23 20:37:31 2020 +0300
> # Branch fix/manpage-syntax1
> # Node ID 21e7be142605955977ea1e36b781f313058da8c9
> # Parent  2f505db817e62cf84a6a83649d259520e5915e24
> Fix man page syntax error
> 
> Previously man docs/man/lcp2_crtpol.8 >/dev/null printed
> 
> an-old.tmac: <standard input>: line 22: 'R' is a string (producing the registered sign), not a macro.
> 
> Signed-off-by: Timo Juhani Lindfors <timo.lindfors@iki.fi>
> 
> diff -r 2f505db817e6 -r 21e7be142605 docs/man/lcp2_crtpol.8
> --- a/docs/man/lcp2_crtpol.8	Wed May 20 10:48:26 2020 +0200
> +++ b/docs/man/lcp2_crtpol.8	Sat May 23 20:37:31 2020 +0300
> @@ -19,7 +19,7 @@
>  .IR <pol_ctrl> ]
>  .B --pol
>  .I <POLICY\ FILE>
> -.R [ --data
> +.RB [ --data
>  .IR <POLICY\ DATA\ FILE> ]
>  .RB [ --mask
>  .IR mask ]
> 
> 

Merged.

Thanks,
Lukasz



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
