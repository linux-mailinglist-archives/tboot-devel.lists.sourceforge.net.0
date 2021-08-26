Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 36F363F86BA
	for <lists+tboot-devel@lfdr.de>; Thu, 26 Aug 2021 13:51:21 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1mJDuZ-0004QA-Bz; Thu, 26 Aug 2021 11:51:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lukasz.hawrylko@linux.intel.com>) id 1mJDuX-0004Q4-Tv
 for tboot-devel@lists.sourceforge.net; Thu, 26 Aug 2021 11:51:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TlKLEvWnsJ5BZ8KrHhE+3jSNVp+WPm4URGA22GD9nKs=; b=lE9ZSqrDIrkq1j3ImhgylKpqtm
 4nw8oD8Mfg1PSgCXfSd2s8HOrhUr1odyHqbmdzejA3jT7uMBfJ6jxq6zt95ivX5L1S+l6FbOAbB4g
 n/vKXZSEdUBQ3LbbIaUFSS9MQtnKbKBtKTexiQUNk2qRY9IdLSvEnutlTVeg288Q03f4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=TlKLEvWnsJ5BZ8KrHhE+3jSNVp+WPm4URGA22GD9nKs=; b=kOjlxnffN41cOKiqll4Dna9lWN
 I9EncajP4TKrs1+3DZK9GTVl65NiCCvPk4QkOY9GAHT1BuAUv47lKvFtfvSkgSzANER1XAV9NX+s/
 qO8lPxf9t//vCrytQOHGoyrIo8aw9+8lk9opTeeiNH2JeOuXNKWjhoL7eyfcxpaQlOiE=;
Received: from mga09.intel.com ([134.134.136.24])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mJDuW-0002Wg-3R
 for tboot-devel@lists.sourceforge.net; Thu, 26 Aug 2021 11:51:09 +0000
X-IronPort-AV: E=McAfee;i="6200,9189,10087"; a="217725643"
X-IronPort-AV: E=Sophos;i="5.84,353,1620716400"; d="scan'208";a="217725643"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2021 04:51:02 -0700
X-IronPort-AV: E=Sophos;i="5.84,353,1620716400"; d="scan'208";a="527846994"
Received: from dkilanow-mobl.ger.corp.intel.com ([10.249.147.252])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2021 04:51:00 -0700
Message-ID: <5ee5cdd20225ed19f4361ce5093f530ccf80c409.camel@linux.intel.com>
From: Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>
To: Timo Lindfors <timo.lindfors@iki.fi>
Date: Thu, 26 Aug 2021 13:50:58 +0200
In-Reply-To: <alpine.DEB.2.20.2108261102090.7992@mail.home>
References: <alpine.DEB.2.20.2003312317470.19721@mail.home>
 <dc275925ce5f44633594ec3fd6732b13f3abeb4c.camel@linux.intel.com>
 <alpine.DEB.2.20.2004021722080.21308@mail.home>
 <d5d36808a38af260d0e8390aaaf5dc6724cf787f.camel@linux.intel.com>
 <alpine.DEB.2.20.2108241211001.5917@mail.home>
 <c5f5db2090df4270a7fb74724260b0b767ad86d7.camel@linux.intel.com>
 <alpine.DEB.2.20.2108250923160.6587@mail.home>
 <b18ccb3ea85643bd0c696e2db81d9aaf3cec41d2.camel@linux.intel.com>
 <alpine.DEB.2.20.2108261102090.7992@mail.home>
User-Agent: Evolution 3.38.3 (3.38.3-1.fc33) 
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [134.134.136.24 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1mJDuW-0002Wg-3R
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

On Thu, 2021-08-26 at 11:05 +0300, Timo Lindfors wrote:
> On Thu, 26 Aug 2021, Lukasz Hawrylko wrote:
> > You can check if txt-stat dumps TBOOT log correctly. Nothing else comes
> > into my mind.
> 
> Looks normal to me. I've attached a compressed version to this mail.

Looks good, thank you for your tests. As soon as GRUB maintainers accept
the patch, I will push changes to TBOOT upstream.

Lukasz



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
