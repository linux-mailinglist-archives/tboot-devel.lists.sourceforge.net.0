Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D7F2D1D3077
	for <lists+tboot-devel@lfdr.de>; Thu, 14 May 2020 14:59:31 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1jZDSQ-0007XC-UJ; Thu, 14 May 2020 12:59:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lukasz.hawrylko@linux.intel.com>) id 1jZDSP-0007X1-7w
 for tboot-devel@lists.sourceforge.net; Thu, 14 May 2020 12:59:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=W8vGyOZ9b4ubN8Iu1Awy2mtT/UvtDh2z6CXaPgq1vb4=; b=GVYmAD+DIhLkpH5Pp99/UKblVT
 NMzIuFP+WC6lG2bfYT++I/rAS6YknbSWYjruOo4NrSksSO2HMH3RRJ7hyDs2aAjukKgURa6/m7Qnn
 njru5SE4TDuSm+g+LPCcOpzT+osAX9gShdL4DidpsB91L06KXNLbaBzgI8tHnTMjgKUo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=W8vGyOZ9b4ubN8Iu1Awy2mtT/UvtDh2z6CXaPgq1vb4=; b=id/69CDV1a11kgbw5+rZpimrz4
 LZw8tQEZltrlGHKQoGNyTIfOWN5y+3Jds9VCH1ZUL/pt8/JFGkj93Pi3LtjXcAfPXbv/UlkwFQcAa
 fdPySvXD8KI9173rvXPoaDMFcv6dfOOS42X5g5s1o1tkaN2MhyVt81SySpcbb2zKTv8Q=;
Received: from mga04.intel.com ([192.55.52.120])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jZDSN-009wyu-LG
 for tboot-devel@lists.sourceforge.net; Thu, 14 May 2020 12:59:25 +0000
IronPort-SDR: fmHcV16In7Bioy85EA9fQfQSC9pUd5rdmYGO9memFRdi1o86pTHn8Ctx4uu8qedin2YO5mCyz6
 tSa8pZ30f07A==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2020 05:59:18 -0700
IronPort-SDR: glKbFnlNGFOulS8O9jlTz/z1rZfLB5j08YYKkPIufgR3VmaGYmot7PRRVnZcjUJEHUxWbSn43+
 WOU3Wn8sh3sw==
X-IronPort-AV: E=Sophos;i="5.73,391,1583222400"; d="scan'208";a="437895276"
Received: from lhawrylk-desk.ger.corp.intel.com ([10.213.19.91])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2020 05:59:17 -0700
Message-ID: <024cc4e9cdc1d32f38469fbe45c35edeb2f1905f.camel@linux.intel.com>
From: Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>
To: Timo Lindfors <timo.lindfors@iki.fi>, tboot-devel@lists.sourceforge.net
Date: Thu, 14 May 2020 14:59:14 +0200
In-Reply-To: <alpine.DEB.2.20.2005101558550.5531@mail.home>
References: <alpine.DEB.2.20.2005101558550.5531@mail.home>
User-Agent: Evolution 3.34.4 (3.34.4-1.fc31) 
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jZDSN-009wyu-LG
Subject: Re: [tboot-devel] PATCH: man pages installed for tools that are not
 installed
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

On Sun, 2020-05-10 at 16:08 +0300, Timo Lindfors wrote:
> Hi,
> 
> currently tboot installs man pages for the following commands that are not 
> installed:
> 
> lcp_crtpconf lcp_crtpol lcp_crtpol2 lcp_crtpolelt lcp_crtpollist 
> lcp_mlehash
> 
> These tools were removed in
> 
> commit 225ff1be2e43611d3055b2f02aaa418e47fab0ed
> Author: Gang Wei <gang.wei@intel.com>
> Date:   Fri Nov 30 08:53:10 2018 +0800
> 
>      lcptools: remove tools supporting platforms before 2008
> 
>      Signed-off-by: Gang Wei <gang.wei@intel.com>
> 
> You can pull a fix from the fix/remove-obsolete-man-pages-1 branch at
> 
> http://lindi.iki.fi/lindi/hg/tboot/
> 
> 
> -Timo
> 
> 

Merged.

Thanks,
Lukasz



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
