Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 926541D0AC8
	for <lists+tboot-devel@lfdr.de>; Wed, 13 May 2020 10:25:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1jYmht-0004NV-7v; Wed, 13 May 2020 08:25:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lukasz.hawrylko@linux.intel.com>) id 1jYmhs-0004N5-6V
 for tboot-devel@lists.sourceforge.net; Wed, 13 May 2020 08:25:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Wq3zxiTfUqCiA395NVW47lp3Z6QYvVSk8S7VHGTDEZ4=; b=a6vvvKEcHTPaqZcjJNwuAF6mRp
 vh+dwGqEzSDod0IaVy2d/Jz/opuHaLFvnGELBvvCXhqZBG+lpx6BGkRyzpPI5PGfo2JPxapbQgsyn
 L/17bWS3xtTPRUgEsHgKJqH74BnTQDjxmieR6QF2+aSj9UDI9MgJ8zla5MG4W8XiScA8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Wq3zxiTfUqCiA395NVW47lp3Z6QYvVSk8S7VHGTDEZ4=; b=meccZtwbiJDBul46/QlH0szvVd
 fp3i91N2YTVpX+NKofoj0Fm8r6nvZI/UuCZ4jGybcNZoyXe0V3rL37b3UqYcRnmXW/Vg0Z+/oxPFC
 pOWYoIpqCV2D//qnuPmGkIywkWLkk8Q4iN2kr7/5VmEuGBcFmWgcCcVPA4NpvkwAIGOs=;
Received: from mga11.intel.com ([192.55.52.93])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jYmho-00CgkW-77
 for tboot-devel@lists.sourceforge.net; Wed, 13 May 2020 08:25:36 +0000
IronPort-SDR: 4z0Bz2EWcINgMXC/sdWXo0xjU0OIThtWWYt4UEced2gGYiTaJ7WxHdWaeq1p3zi0GyGLTm4mgv
 Xu9NiVVSbPeQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2020 01:25:26 -0700
IronPort-SDR: LmCZYsq6+nhVhwT+DgyfhYGLTvsxsTsqtdne2So7Ghs3ILe4eadgGbbXlpLB2e6G8oM4TYib/r
 SyeEzH8r5UDw==
X-IronPort-AV: E=Sophos;i="5.73,387,1583222400"; d="scan'208";a="463850603"
Received: from lhawrylk-desk.ger.corp.intel.com ([10.213.1.184])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2020 01:25:25 -0700
Message-ID: <8a42ac6ce0379544be8e5ae7e92d88b574209d5f.camel@linux.intel.com>
From: Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>
To: Timo Lindfors <timo.lindfors@iki.fi>, tboot-devel@lists.sourceforge.net
Date: Wed, 13 May 2020 10:25:23 +0200
In-Reply-To: <alpine.DEB.2.20.2005091814530.4905@mail.home>
References: <alpine.DEB.2.20.2005091814530.4905@mail.home>
User-Agent: Evolution 3.34.4 (3.34.4-1.fc31) 
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1jYmho-00CgkW-77
Subject: Re: [tboot-devel] Links to SINIT AC modules are broken
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

On Sat, 2020-05-09 at 18:22 +0300, Timo Lindfors wrote:
> Hi,
> 
> at the moment it seems that the links on
> 
> https://software.intel.com/content/www/us/en/develop/articles/intel-trusted-execution-technology.html
> 
> under the table "SINIT AC Modules" are all broken and redirect to just
> 
> https://www.intel.com/content/www/us/en/404.html
> 
> 
> 
> -Timo
> 
> 

Hi Timo

That's strange, however I am not managing that page so I can't fix it by
myself. I have already ask owner for help. Meanwhile, it looks like that
SINIT files exists, when you scroll down to the "Additional Resources"
section you can download all the files that are listed above.

Thanks,
Lukasz



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
