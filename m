Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 68A5E3F842C
	for <lists+tboot-devel@lfdr.de>; Thu, 26 Aug 2021 11:10:54 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1mJBPM-0000t6-0w; Thu, 26 Aug 2021 09:10:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lukasz.hawrylko@linux.intel.com>) id 1mJBPK-0000sw-OA
 for tboot-devel@lists.sourceforge.net; Thu, 26 Aug 2021 09:10:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=O9V2c63NUHn6SUQNQZlfz++d/iFuQ9tCI86DAPMP7Ik=; b=cDIagpKcCaMoNH6Nag0ANW3wXv
 1Ds/rZQqTpmr1gwJ2r+zbV7+cffRYANsKS0+Kah2Fd4r3vzasXqGLM9ESZj5gfZLWKrY9qpGxUDAL
 cJ+MUfEPSnVg9nYcGAu9QLlDPlWbTMZNWgSCLKpsOYTgvnSDY6JC8JJI5MAHxdbB5o50=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=O9V2c63NUHn6SUQNQZlfz++d/iFuQ9tCI86DAPMP7Ik=; b=Yogv3DgAya0upSfOAkfSYBYM7r
 iGGgRiBOh70qmWp+qwBY9VCnTime9CsBbpjUQNLuRWwLdemojMvUp/Nd2mgOL/wQQJJ5SDIa/r0DR
 tnv1QyL4snftO+q69sO9mbOPJVY5z+quu/ZON6DUsk6mCySwZKoI6r3UkSm9Y/ERLI6c=;
Received: from mga02.intel.com ([134.134.136.20])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mJBPJ-0008Vn-0T
 for tboot-devel@lists.sourceforge.net; Thu, 26 Aug 2021 09:10:46 +0000
X-IronPort-AV: E=McAfee;i="6200,9189,10087"; a="204904608"
X-IronPort-AV: E=Sophos;i="5.84,353,1620716400"; d="scan'208";a="204904608"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2021 02:10:39 -0700
X-IronPort-AV: E=Sophos;i="5.84,353,1620716400"; d="scan'208";a="527766223"
Received: from dkilanow-mobl.ger.corp.intel.com ([10.249.147.252])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2021 02:10:38 -0700
Message-ID: <b18ccb3ea85643bd0c696e2db81d9aaf3cec41d2.camel@linux.intel.com>
From: Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>
To: Timo Lindfors <timo.lindfors@iki.fi>
Date: Thu, 26 Aug 2021 11:10:35 +0200
In-Reply-To: <alpine.DEB.2.20.2108250923160.6587@mail.home>
References: <alpine.DEB.2.20.2003312317470.19721@mail.home>
 <dc275925ce5f44633594ec3fd6732b13f3abeb4c.camel@linux.intel.com>
 <alpine.DEB.2.20.2004021722080.21308@mail.home>
 <d5d36808a38af260d0e8390aaaf5dc6724cf787f.camel@linux.intel.com>
 <alpine.DEB.2.20.2108241211001.5917@mail.home>
 <c5f5db2090df4270a7fb74724260b0b767ad86d7.camel@linux.intel.com>
 <alpine.DEB.2.20.2108250923160.6587@mail.home>
User-Agent: Evolution 3.38.3 (3.38.3-1.fc33) 
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [134.134.136.20 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1mJBPJ-0008Vn-0T
Subject: Re: [tboot-devel] tboot not picking the right ACM module on Dell
 Latitude E5470
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

On Wed, 2021-08-25 at 09:28 +0300, Timo Lindfors wrote:
> On Tue, 24 Aug 2021, Lukasz Hawrylko wrote:
> > Patch with fix is already prepared, I am waiting for GRUB team to merge
> > new multiboot2 module tag to publish it.
> > 
> > In meantime, if you have a system when you are able to reproduce this
> > issue, may I ask you to test the fix?
> 
> Sure. I applied these to the Debian packages
> 
> grub2 2.04-20
> tboot 1.10.2+dfsg.0-1
> 
> and can now boot the system with multiple ACM modules in /boot. Is there 
> something else I should test as well?

You can check if txt-stat dumps TBOOT log correctly. Nothing else comes
into my mind.

Lukasz



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
