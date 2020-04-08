Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B0ED01A243D
	for <lists+tboot-devel@lfdr.de>; Wed,  8 Apr 2020 16:45:42 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1jMBxQ-0007AL-Pe; Wed, 08 Apr 2020 14:45:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lukasz.hawrylko@linux.intel.com>) id 1jMBxP-0007A6-SF
 for tboot-devel@lists.sourceforge.net; Wed, 08 Apr 2020 14:45:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pSFR0N7QKsMeFJpm5T+Kg1/bQPDJj38JBHriStv8oHM=; b=K7aF63h40a2xzSSpNMze0DZyQj
 FPBxivLd9eruLyJD6Ep8/sMBW6DvfQ3WpMeG44easf7avmmK9ETK17wdwW2nu7W57g8UAstoTxMLy
 Zn/aVKxlEUN9CJQih9yEhyOqqoyqM/G9pFiYXpxJCQVddjMdWo6mGP6K6O2sTSkN4Ug0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=pSFR0N7QKsMeFJpm5T+Kg1/bQPDJj38JBHriStv8oHM=; b=F8fW9Dcfkg6VYRzgBgV6njj2Cu
 MyXRGh59yTmoptGFHChfY690AO7OXlwDVALBt7wjUnG3Mb7i/2/d8+qV8kf7anIWNjUCq4JoMo3dO
 iaVttQMl63Fs+XtBdSPEyFqjRpCOmbh5+D16l44lBWo3Ut3DIM9KDGmXKN+f5u/EmcKw=;
Received: from mga07.intel.com ([134.134.136.100])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jMBxN-007cjt-Ek
 for tboot-devel@lists.sourceforge.net; Wed, 08 Apr 2020 14:45:35 +0000
IronPort-SDR: WQ1T9iCsQG3tLGhajWETu9x/EXy8RHQwNSgmLL24l2aaqPs+6FIi62UoMtpj/Q915CuaQlGh5d
 HL9dLk3wUzOg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2020 07:45:27 -0700
IronPort-SDR: LhgdFoF7gdXQxA1LjhxymZA9apoBfsF324vL1729+jpFfkfAJhG2A9oZqqJ4tFqOATs5fioGT3
 mWnJD9ZgpfTA==
X-IronPort-AV: E=Sophos;i="5.72,358,1580803200"; d="scan'208";a="425154670"
Received: from lhawrylk-desk.ger.corp.intel.com ([10.213.23.155])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2020 07:45:23 -0700
Message-ID: <c5561325a53303ad556dadf49ba7269295ac30fc.camel@linux.intel.com>
From: Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>
To: Timo Lindfors <timo.lindfors@iki.fi>, tboot-devel@lists.sourceforge.net
Date: Wed, 08 Apr 2020 16:45:03 +0200
In-Reply-To: <alpine.DEB.2.20.2004081710220.25471@mail.home>
References: <alpine.DEB.2.20.2003312317470.19721@mail.home>
 <dc275925ce5f44633594ec3fd6732b13f3abeb4c.camel@linux.intel.com>
 <alpine.DEB.2.20.2004021722080.21308@mail.home>
 <d5d36808a38af260d0e8390aaaf5dc6724cf787f.camel@linux.intel.com>
 <alpine.DEB.2.20.2004081710220.25471@mail.home>
User-Agent: Evolution 3.34.4 (3.34.4-1.fc31) 
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1jMBxN-007cjt-Ek
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

On Wed, 2020-04-08 at 17:12 +0300, Timo Lindfors wrote:
> On Tue, 7 Apr 2020, Lukasz Hawrylko wrote:
> > Unfortunately, this bug is not reported anywhere. In real life scenarios
> > I don't see any benefits of loading multiple SINITs. In most cases you
> > have one SINIT that is dedicated to the platform.
> 
> After a closer inspection this might be a different bug as the reboot 
> occurs also if I specify only one SINIT module, the file
> 6th_gen_i5_i7_SINIT_71.BIN.
> 
> Why does tboot think that this file is a valid SINIT module for this CPU 
> and try to use it? Is this a bug in the ACM module or tboot? Is there some 
> algorithm for choosing the correct SINIT module?
> 

TBOOT has an algorithm that checks if SINIT matches platform. I can't
tell you right now what is wrong here, I need some logs. Please run it
once again, than after reboot, can you launch Linux without TBOOT and
run 'txt-stat' tool that is in TBOOT's repo in 'utils' folder? What I
need is a value of ERRORCODE field.

If you can connect serial port and dump serial logs too that will be
awesome. Dell's docking station has RS232 connector and TBOOT's logs are
printed there (tested on my laptop).

Thanks,
Lukasz



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
