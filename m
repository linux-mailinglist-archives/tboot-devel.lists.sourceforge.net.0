Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 541B01A0A5A
	for <lists+tboot-devel@lfdr.de>; Tue,  7 Apr 2020 11:44:54 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1jLkmm-0001jT-1M; Tue, 07 Apr 2020 09:44:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lukasz.hawrylko@linux.intel.com>) id 1jLkmk-0001iz-1o
 for tboot-devel@lists.sourceforge.net; Tue, 07 Apr 2020 09:44:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XYBCjo0quf7cAJRyGEZAqxBfgp1ZRKLbqD50dF5UXas=; b=N+IoIUc85TsGFWB0vkvRup2k5c
 6g1Hi7fB+3G/eU+ouU6H3WLsWfQaRDPsBN0EUg1wXZqmXl2xCqTwGGN9vWm71eftUNl7kEaLtvUfF
 V0oCghRHYj+k5w17i72qIk56ZbHippufz88qGl6K7p5uayS9UjpZeLE27g2vIXtyrAGI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=XYBCjo0quf7cAJRyGEZAqxBfgp1ZRKLbqD50dF5UXas=; b=EujwCeRyNjyGmnBU6FHkfOYAYc
 f14VJMgOtpRucxzqRvZdPkcAk0E2Hv3Rz9FNbZuhMura1tPH7fXEEjBBm++5gnaQ8DPGkaSIN6g5u
 OALsOT1Z9maYP/P89U//WlrtK/ksgORVmKehNg5HOs1gbPu2cKIvpFmASddPYPwo1F3A=;
Received: from mga07.intel.com ([134.134.136.100])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jLkmf-005Rf1-KF
 for tboot-devel@lists.sourceforge.net; Tue, 07 Apr 2020 09:44:46 +0000
IronPort-SDR: ZLHZErDdDdS34xboifxo+EzMx+H7jhNZ3ccP32CVrc4CmGB3+SZN+yVm5f3kmDJGgg9371Apo5
 +4VazkP/t+BQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2020 02:31:11 -0700
IronPort-SDR: gnxulu2Uszo7ebT4wYI/8VSjgaKMI0LaiR4/b0rejvsX1VCxkFSk36rJtu0Ah1hNQzMLlFNnFC
 sXqR7Uf6ZtMg==
X-IronPort-AV: E=Sophos;i="5.72,353,1580803200"; d="scan'208";a="424689368"
Received: from lhawrylk-desk.ger.corp.intel.com ([10.213.22.18])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2020 02:31:09 -0700
Message-ID: <d5d36808a38af260d0e8390aaaf5dc6724cf787f.camel@linux.intel.com>
From: Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>
To: Timo Lindfors <timo.lindfors@iki.fi>, tboot-devel@lists.sourceforge.net
Date: Tue, 07 Apr 2020 11:31:04 +0200
In-Reply-To: <alpine.DEB.2.20.2004021722080.21308@mail.home>
References: <alpine.DEB.2.20.2003312317470.19721@mail.home>
 <dc275925ce5f44633594ec3fd6732b13f3abeb4c.camel@linux.intel.com>
 <alpine.DEB.2.20.2004021722080.21308@mail.home>
User-Agent: Evolution 3.34.4 (3.34.4-1.fc31) 
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: fedoraproject.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1jLkmf-005Rf1-KF
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tboot-devel-bounces@lists.sourceforge.net

On Thu, 2020-04-02 at 17:25 +0300, Timo Lindfors wrote:
> Hi,
> 
> On Thu, 2 Apr 2020, Lukasz Hawrylko wrote:
> > There is a bug in TBOOT that may results in overlapping loaded SINITs by
> > TBOOT's logs. That problem occurs when you load multiple SINITs in GRUB
> > and in most cases the last one will be corrupted. That's why, when TBOOT
> > executes GETSEC[SENTER] CPU fails on SINIT integrity check and resets
> > platform.
> > 
> > The workaround for that issue is to have only one SINIT in grub.cfg, so
> > in your scenario you should remove all SINITs except 6th_gen from /boot
> > and recreate grub.cfg
> 
> Is the bug report perhaps available somewhere? I'd very much like to fix this as it 
> is causing many support issues since for example 
> https://fedoraproject.org/wiki/Tboot
> 
> suggests
> 
> "You may download all of the ACM modules into /boot and list them all as 
> modules in your grub.conf. tboot will pick the right module for your 
> platform. "
> 
> I can't change that wiki page as edits are currently not allowed even if I 
> create an account.
> 
> -Timo
> 

Hi Timo

Unfortunately, this bug is not reported anywhere. In real life scenarios
I don't see any benefits of loading multiple SINITs. In most cases you
have one SINIT that is dedicated to the platform.

I am not sure if that issue can be fixed without moving TBOOT log memory
pool somewhere else and that change will brake other tools. It will be
better to change documentation that only one SINIT can be loaded. I will
check who is the owner of TBOOT page in Fedora's wiki.

Thanks,
Lukasz



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
