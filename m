Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B21E2F12A9
	for <lists+tboot-devel@lfdr.de>; Mon, 11 Jan 2021 13:58:58 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1kywmZ-0007sn-FH; Mon, 11 Jan 2021 12:58:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lukasz.hawrylko@linux.intel.com>) id 1kywmY-0007sg-Dl
 for tboot-devel@lists.sourceforge.net; Mon, 11 Jan 2021 12:58:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=73FLaFpMHQtR4MQ6K2RRc7ljNeFydPhPj1yJp//CSas=; b=dDiMMPMM4jhUrn2wRWdruw1Gji
 DRFu30qLUrh1pA7uGemeH9vgS/Znd1EI70PwBH7DI7+egUQ/LJv/XRKi7/eOsQ/Rm/3Pbr33FJbpi
 Fx/vakZ+KDuPihPLUIZYQGkfClzj6RZLkyq9ewzclDmm/dbf7h4yiFNvxDDKTqJMinn0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=73FLaFpMHQtR4MQ6K2RRc7ljNeFydPhPj1yJp//CSas=; b=afuTUyzocS8touVdJmCUeomz+I
 9ueDTwZFCHuWE8S1iXPs8k9WqAgPnBYdnl9vs3pA3U8L/SVDSRLWruVCNo1xb7fIybi/4lOuVaYJr
 xZx8OeXKj/GMfpF1ZjmdPkcjAsBrlfXlVGPRbehVuSpk9gVp54lcUu/Z36V76vr6brxM=;
Received: from mga07.intel.com ([134.134.136.100])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kywmP-0018Eq-5N
 for tboot-devel@lists.sourceforge.net; Mon, 11 Jan 2021 12:58:50 +0000
IronPort-SDR: 7+yLlo4lpyVuoxB/vpsY6Zoq7ElxxcN4wM0HoUN0x3t7Ytn9dDUplPyM1gprqqzrYe2AYHC2ei
 MCneaHWnKKIg==
X-IronPort-AV: E=McAfee;i="6000,8403,9860"; a="241925962"
X-IronPort-AV: E=Sophos;i="5.79,338,1602572400"; d="scan'208";a="241925962"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2021 04:42:38 -0800
IronPort-SDR: HJhSb64KjHfgWihOeM4N27cH97BYHhBKOb3K3BLAUQ145HUYjhOWO1EI2WhpDMkVqrV+3CKKTi
 XngjQFajtgKw==
X-IronPort-AV: E=Sophos;i="5.79,338,1602572400"; d="scan'208";a="363129477"
Received: from lhawrylk-desk.ger.corp.intel.com ([10.249.139.236])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2021 04:42:37 -0800
Message-ID: <7ed952017e8feedc1161ffc25695a6d76acb7c96.camel@linux.intel.com>
From: Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>
To: Timo Lindfors <timo.lindfors@iki.fi>, tboot-devel@lists.sourceforge.net
Date: Mon, 11 Jan 2021 13:42:27 +0100
In-Reply-To: <alpine.DEB.2.20.2101021923390.30583@mail.home>
References: <alpine.DEB.2.20.2101021923390.30583@mail.home>
User-Agent: Evolution 3.34.4 (3.34.4-1.fc31) 
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1kywmP-0018Eq-5N
Subject: Re: [tboot-devel] binaries in mercurial?
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

On Sat, 2021-01-02 at 19:31 +0200, Timo Lindfors wrote:
> Hi,
> 
> changeset:   620:805285ab8469
> user:        Lukasz Hawrylko <lukasz.hawrylko@intel.com>
> date:        Fri Nov 13 16:09:33 2020 +0100
> summary:     Move old lcptool to deprecated folder and exclude from build
> 
> seems to add some binaries to mercurial version control:
> 
> $ hg clone 
> http://hg.code.sf.net/p/tboot/code
>  
> tboot-code
> requesting all changes
> adding changesets
> adding manifests
> adding file changes
> added 620 changesets with 2372 changes to 497 files (+1 heads)
> new changesets cedd93279188:cc489ff0c783
> updating to branch default
> 403 files updated, 0 files merged, 0 files removed, 0 files unresolved
> $ file tboot-code/deprecated/lcptools/lcp_writepol
> tboot-code/deprecated/lcptools/lcp_writepol: ELF 64-bit LSB executable, 
> x86-64, version 1 (SYSV), dynamically linked, interpreter 
> /lib64/ld-linux-x86-64.so.2, BuildID[sha1]=403efd37304c2d0ca9830ec60c1115fd9d76787c, for GNU/Linux 3.2.0, not stripped
> 
> This is probably accidental?
> 
> The exact Debian lintian errors that caused me to spot this are
> 
> E: tboot source: source-is-missing deprecated/lcptools/lcp_crtpconf
> E: tboot source: source-is-missing deprecated/lcptools/lcp_crtpol
> E: tboot source: source-is-missing deprecated/lcptools/lcp_mlehash
> E: tboot source: source-is-missing deprecated/lcptools/lcp_readpol
> E: tboot source: source-is-missing deprecated/lcptools/lcp_writepol
> E: tboot source: source-is-missing deprecated/lcptools/tpmnv_defindex
> E: tboot source: source-is-missing deprecated/lcptools/tpmnv_getcap
> E: tboot source: source-is-missing deprecated/lcptools/tpmnv_lock
> E: tboot source: source-is-missing deprecated/lcptools/tpmnv_relindex
> E: tboot source: source-is-missing deprecated/lcptools/trousers_dep
> 
> 
> -Timo
> 

You are right, my mistake. Fixed.

Thanks,
Lukasz



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
