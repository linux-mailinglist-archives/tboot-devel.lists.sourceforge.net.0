Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 59F1A1E08A1
	for <lists+tboot-devel@lfdr.de>; Mon, 25 May 2020 10:20:36 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1jd8LW-0000bM-Fd; Mon, 25 May 2020 08:20:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lukasz.hawrylko@linux.intel.com>) id 1jd8LT-0000bD-LX
 for tboot-devel@lists.sourceforge.net; Mon, 25 May 2020 08:20:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ofCpNEBbkjVtdkXWGbdBvVe1LINAFhNXV94v5wCNC5s=; b=cj6rNnxI7RAy2FL7l6XxRpzKhf
 0fJzeQ3i43uWAxtRPIgMmGissEszdshQQFXkmfccUbkKDdRN3n8gKe1JPHH+KDJVx+/QfoP43Ct37
 gCWupCR71hRyiW1HT2Kh9lxxreNHpHxAzYh8kh4Dr4tVq7GAgqlikDUUe/yBOEKBOSB0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ofCpNEBbkjVtdkXWGbdBvVe1LINAFhNXV94v5wCNC5s=; b=miZOBZqmu0UfDjh+UW7xU8dnar
 k2f95xn9aFIr6dhauWAHbEH/Ajdv/SFNF4I+6pCLZlaT6OiIDOVJI9J99ZhExP/t/XdsK21RKQ/KZ
 3LLu7KyBn0A1E787CPBzAqjtbKpYb8c6VW0zU1Wi+WbxGk/BIsrr5//dZWu6KnhSGSdE=;
Received: from mga05.intel.com ([192.55.52.43])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jd8LS-004IGQ-CU
 for tboot-devel@lists.sourceforge.net; Mon, 25 May 2020 08:20:27 +0000
IronPort-SDR: Q/AVNDb5uOod92BWpOPoou61ir1TegF5wht24d8jbyHsYz9wYkh6QHqCl6Tviurdn65IoeVUeX
 89NQeiLrHjBg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2020 01:20:20 -0700
IronPort-SDR: srVBFp2BwB2eA04VZSHCyyjwdppFjdGkx1/U8MqvI95borZAlBcHM/iwcKqxvjYOQ9inqD8sxl
 4bzjgEhlskYg==
X-IronPort-AV: E=Sophos;i="5.73,432,1583222400"; d="scan'208";a="441661349"
Received: from lhawrylk-desk.ger.corp.intel.com ([10.213.8.237])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2020 01:20:19 -0700
Message-ID: <2b9029d61fed0ca5f4d60a14a90fb01c98f6f007.camel@linux.intel.com>
From: Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>
To: Timo Lindfors <timo.lindfors@iki.fi>
Date: Mon, 25 May 2020 10:20:17 +0200
In-Reply-To: <alpine.DEB.2.20.2005241914180.17882@mail.home>
References: <alpine.DEB.2.20.2005081919250.3828@mail.home>
 <3da41313c3b91f154f53f9c2c9645ade6399cff9.camel@linux.intel.com>
 <alpine.DEB.2.20.2005121234280.7218@mail.home>
 <alpine.DEB.2.20.2005231924220.17882@mail.home>
 <alpine.DEB.2.20.2005241914180.17882@mail.home>
User-Agent: Evolution 3.34.4 (3.34.4-1.fc31) 
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1jd8LS-004IGQ-CU
Subject: Re: [tboot-devel] tboot 1.9.12 build failure if CFLAGS is set in
 environment
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

Hi Timo

On Sun, 2020-05-24 at 19:15 +0300, Timo Lindfors wrote:
> Hi,
> 
> On Sat, 23 May 2020, Timo Lindfors wrote:
> > boot on Lenovo T430s when I boot the latest code from mercurial. 1.9.12 seems 
> > to boot ok. Commenting out "export CFLAGS" seems to help. How should
> > I debug this?
> 
> Currently it seems that tboot actually only boots properly if I first boot 
> Linux and then reboot and select tboot. If I cold-boot tboot then it gets 
> stuck. I'm investigating options on how to test this in a more automatic 
> way.

That is a really strange behaviour. I have just build tip from mercurial
and run it on TPM1.2 and TPM2.0 PCs - it works (cold-booted too). Can
you please share me more informations about your test case? Do you see
anything on the screen?

Thanks,
Lukasz



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
