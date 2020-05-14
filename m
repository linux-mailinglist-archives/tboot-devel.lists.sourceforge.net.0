Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DB1D61D3086
	for <lists+tboot-devel@lfdr.de>; Thu, 14 May 2020 15:01:03 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1jZDTy-0007cA-5g; Thu, 14 May 2020 13:01:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lukasz.hawrylko@linux.intel.com>) id 1jZDTx-0007bm-Cm
 for tboot-devel@lists.sourceforge.net; Thu, 14 May 2020 13:01:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=F5fm6FotOnI9PZDozAV959AdgraepDpXqEPk5XoyyU4=; b=mQYXeGSjIiMoYP9nJD8CDAUmIz
 h28KhjaxOLv/3XeKqlorP/Kf0hTX5fhO6VzNvWOcZYIEOYvFZQV1+YPBCbS0xdzYSYgnFLviQNhR8
 HibArCLUhhpSqJXV58PK8JjNsnDOCbHyX0HuaI+Ym/j62CBfmdFrbW65BS48vPmq/NEM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=F5fm6FotOnI9PZDozAV959AdgraepDpXqEPk5XoyyU4=; b=ahcikixTaqMKUvvubqRPu+32nP
 LNSNesqXZlOFklmfVGsBpqpPFM+0FQJ3yjB95kSsP7pSMM6e8UCWJnmO5Zr6XL1gPeRxmht7/h1IY
 A+bfNmm2Pwm6zYbevOxQAZWKObDyY+KT5eD1NqVrgbx+ZDYSL6fd6HBBob9cD/90XE48=;
Received: from mga11.intel.com ([192.55.52.93])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jZDTt-009x6C-Ks
 for tboot-devel@lists.sourceforge.net; Thu, 14 May 2020 13:01:01 +0000
IronPort-SDR: 84pH8E4Ddv6peHPU0LBXkGGq0fF8s1OeGWlLYiGCatFqrYZX/pu0/HMFOgcQiKRcfllgA4Ytlk
 0u1B8nIs4NeA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2020 06:00:52 -0700
IronPort-SDR: iAiv5QhjVHn87ZsNhzH0QW+Ke4HxQ66PRt3N9uJgdYYFxqWenCHgYjhuQ8PaMtJ39yrTaDQhUn
 ihh2HMkg4g+A==
X-IronPort-AV: E=Sophos;i="5.73,391,1583222400"; d="scan'208";a="464322824"
Received: from lhawrylk-desk.ger.corp.intel.com ([10.213.19.91])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2020 06:00:51 -0700
Message-ID: <2189288e89c4844c3791b5cba47221ccb33b779e.camel@linux.intel.com>
From: Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>
To: Timo Lindfors <timo.lindfors@iki.fi>, tboot-devel@lists.sourceforge.net
Date: Thu, 14 May 2020 15:00:48 +0200
In-Reply-To: <alpine.DEB.2.20.2005102341440.5921@mail.home>
References: <alpine.DEB.2.20.2005102341440.5921@mail.home>
User-Agent: Evolution 3.34.4 (3.34.4-1.fc31) 
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jZDTt-009x6C-Ks
Subject: Re: [tboot-devel] PATCH: add missing man pages
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

On Sun, 2020-05-10 at 23:43 +0300, Timo Lindfors wrote:
> Hi,
> 
> many commands installed by tboot don't seem to have man pages. I did some 
> detective work based on --help output and source code and wrote the 
> missing pages. Can you please take a look that they are accurate?
> 
> You can find the pages in the feature/add-missing-man-pages-1 branch at
> 
> https://lindi.iki.fi/lindi/hg/tboot/
> 
> -Timo
> 

Thanks for awesome work. I did few changes and it is now merged to
upstream.

Thanks,
Lukasz



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
