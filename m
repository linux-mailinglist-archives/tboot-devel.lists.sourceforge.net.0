Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E54C19C3FA
	for <lists+tboot-devel@lfdr.de>; Thu,  2 Apr 2020 16:25:55 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1jK0n2-000368-KQ; Thu, 02 Apr 2020 14:25:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lindi@kapsi.fi>) id 1jK0n1-000361-8d
 for tboot-devel@lists.sourceforge.net; Thu, 02 Apr 2020 14:25:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:References:Message-ID:
 In-Reply-To:Subject:To:From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IeqT1HvPpa96lkRSUGNaMRckciVHz6EjEybAyKcmcAU=; b=X1uyNy+XhCByZTBL87ovVi7bta
 CWH/k/0ciXgZI+xqJO4p856BuECcfC/aLXld4q9S7zyVGjbHBLN2z5Cs7168p0fLRHpPzFOxPGQZd
 BQfv5ayMzIrI2/q+TSODRXusGhh7ymqHTV3iBEmwMCyPN34kKF40uaJQ90L81rSWL8Ts=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:References:Message-ID:In-Reply-To:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=IeqT1HvPpa96lkRSUGNaMRckciVHz6EjEybAyKcmcAU=; b=iPV4OGHYq8qtxghIGin5YNdVTt
 RxYbEBFXUxXcS7BqjguQ7ewDwficqtMDIflxoChX4FAsx+fjcj4FoB+F5wraq6SFWlEc+lkN1Ba3o
 a1jnGWFJk+HEdqFawlIQmB96HKPooQAPotAI+hT2WJtrkq98+ybnH6G9iXaH3MBf+hio=;
Received: from [91.232.154.25] (helo=mail.kapsi.fi)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jK0mw-001SBV-NT
 for tboot-devel@lists.sourceforge.net; Thu, 02 Apr 2020 14:25:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=kapsi.fi;
 s=20161220; h=Content-Type:MIME-Version:References:Message-ID:In-Reply-To:
 Subject:To:From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=IeqT1HvPpa96lkRSUGNaMRckciVHz6EjEybAyKcmcAU=; b=VUPHkPzV6ZQUOp/JRxHeIeg9yN
 rXc8DXytvdcNWRy6naBdt1SjaBnEPVQ1q6aBipnCiXJHNMjmraQRL226BUtkCRPxLibjj2q7E7OfC
 eHsvPPxVIIKjTPUizONikia65DfiDnvwJ2vVYoNyPDjUNU+J0lgd8VIft/v3wGvL3dSY+KGQfrYPs
 Z/i7OzC2FZ8wt35E7dZ17nIRROzwysobx85q0/vB2UczuP18FCJfGLabCmnhnqZ2JhffwPV6D30l9
 VE0USHLVBi0z3vZKSna3AGZJd9ynTdHgBXulGZvOQmgSYSTPtTSd5AmGkeTjn4p/SY6nKWM9ypBwm
 wePCVcTQ==;
Received: from 82-181-208-90.bb.dnainternet.fi ([82.181.208.90] helo=mail.home)
 by mail.kapsi.fi with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <timo.lindfors@iki.fi>)
 id 1jK0mf-0000SQ-Jm
 for tboot-devel@lists.sourceforge.net; Thu, 02 Apr 2020 17:25:29 +0300
Received: from localhost ([127.0.0.1]) by mail.home with esmtp (Exim 4.89)
 (envelope-from <timo.lindfors@iki.fi>) id 1jK0mb-0005Xz-6r
 for tboot-devel@lists.sourceforge.net; Thu, 02 Apr 2020 17:25:25 +0300
Date: Thu, 2 Apr 2020 17:25:25 +0300 (EEST)
From: Timo Lindfors <timo.lindfors@iki.fi>
To: tboot-devel@lists.sourceforge.net
In-Reply-To: <dc275925ce5f44633594ec3fd6732b13f3abeb4c.camel@linux.intel.com>
Message-ID: <alpine.DEB.2.20.2004021722080.21308@mail.home>
References: <alpine.DEB.2.20.2003312317470.19721@mail.home>
 <dc275925ce5f44633594ec3fd6732b13f3abeb4c.camel@linux.intel.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 82.181.208.90
X-SA-Exim-Mail-From: timo.lindfors@iki.fi
X-SA-Exim-Scanned: No (on mail.kapsi.fi); SAEximRunCond expanded to false
X-Spam-Score: 0.7 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 1.0 RDNS_NONE Delivered to internal network by a host with no rDNS
 -0.5 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jK0mw-001SBV-NT
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: tboot-devel-bounces@lists.sourceforge.net

Hi,

On Thu, 2 Apr 2020, Lukasz Hawrylko wrote:
> There is a bug in TBOOT that may results in overlapping loaded SINITs by
> TBOOT's logs. That problem occurs when you load multiple SINITs in GRUB
> and in most cases the last one will be corrupted. That's why, when TBOOT
> executes GETSEC[SENTER] CPU fails on SINIT integrity check and resets
> platform.
>
> The workaround for that issue is to have only one SINIT in grub.cfg, so
> in your scenario you should remove all SINITs except 6th_gen from /boot
> and recreate grub.cfg

Is the bug report perhaps available somewhere? I'd very much like to fix this as it 
is causing many support issues since for example https://fedoraproject.org/wiki/Tboot
suggests

"You may download all of the ACM modules into /boot and list them all as 
modules in your grub.conf. tboot will pick the right module for your 
platform. "

I can't change that wiki page as edits are currently not allowed even if I 
create an account.

-Timo


_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
