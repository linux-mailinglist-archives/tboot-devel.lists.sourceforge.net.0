Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B2871A7466
	for <lists+tboot-devel@lfdr.de>; Tue, 14 Apr 2020 09:13:00 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1jOFkc-00023y-Ts; Tue, 14 Apr 2020 07:12:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lukasz.hawrylko@linux.intel.com>) id 1jOFkc-00023s-6w
 for tboot-devel@lists.sourceforge.net; Tue, 14 Apr 2020 07:12:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TktnsdHcP4gn26oJ0zrSC+rCmF8+EN1tYRWT0t8qIDw=; b=K1iJBMGVUsXLFOl3EA6D0jr1tq
 La9FFVtv3HPlsKvn/igsWcPZlhDSpiyD2yB3RP4PSQmFsGQvGXczXWK+qgSZ/41JWJLTxUhnXibHx
 IYiNcFjMywgktt4otFY4VV7DM+41Cv1ba/3qh+fvPxgeJhtIW5fODXTx04gUv3hB+baY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=TktnsdHcP4gn26oJ0zrSC+rCmF8+EN1tYRWT0t8qIDw=; b=EYOpFqghDTOy4mi+Z9YSo3R+Vv
 jXHoqbxb9n+O/ShtiYkIUiG7wIiHPo4uq+CbZgydjijX1ZhREbPwaUBw8i2uugvac1FOloz1/ZUQm
 nEV2LCsVUubnfG2ISpAvJqjx0V+bJzq16EUxHsAND66ODefvv3id7HMIIKvl2NnXs42U=;
Received: from mga03.intel.com ([134.134.136.65])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jOFkY-00FTkQ-JQ
 for tboot-devel@lists.sourceforge.net; Tue, 14 Apr 2020 07:12:54 +0000
IronPort-SDR: 88qGQ0UMYHMWfAnqssnH14DR9HNJIqzi4m9u5e0MeP7UQiAgo6s0atLpxJ/7HM3vSdD0ytELRV
 BYqjmMlJD+lQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2020 00:12:43 -0700
IronPort-SDR: 6pkzOmZCF9XXS9yz4TzOPHi8h2QBTVQjv49fb9JBXI9++iikMLOGs+nafRqTIYA/uPkjyBIgU4
 cNHpExf7akQg==
X-IronPort-AV: E=Sophos;i="5.72,381,1580803200"; d="scan'208";a="256422420"
Received: from lhawrylk-desk.ger.corp.intel.com ([10.213.26.93])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2020 00:12:42 -0700
Message-ID: <89eb86fd43cd9cadd48db77433959d708d060e74.camel@linux.intel.com>
From: Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>
To: Timo Lindfors <timo.lindfors@iki.fi>, tboot-devel@lists.sourceforge.net
Date: Tue, 14 Apr 2020 09:12:40 +0200
In-Reply-To: <alpine.DEB.2.20.2004081831250.25596@mail.home>
References: <alpine.DEB.2.20.2003312317470.19721@mail.home>
 <dc275925ce5f44633594ec3fd6732b13f3abeb4c.camel@linux.intel.com>
 <alpine.DEB.2.20.2004021722080.21308@mail.home>
 <d5d36808a38af260d0e8390aaaf5dc6724cf787f.camel@linux.intel.com>
 <alpine.DEB.2.20.2004081710220.25471@mail.home>
 <c5561325a53303ad556dadf49ba7269295ac30fc.camel@linux.intel.com>
 <alpine.DEB.2.20.2004081831250.25596@mail.home>
User-Agent: Evolution 3.34.4 (3.34.4-1.fc31) 
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1jOFkY-00FTkQ-JQ
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

On Wed, 2020-04-08 at 18:34 +0300, Timo Lindfors wrote:
> On Wed, 8 Apr 2020, Lukasz Hawrylko wrote:
> > TBOOT has an algorithm that checks if SINIT matches platform. I can't
> > tell you right now what is wrong here, I need some logs. Please run it
> > once again, than after reboot, can you launch Linux without TBOOT and
> > run 'txt-stat' tool that is in TBOOT's repo in 'utils' folder? What I
> > need is a value of ERRORCODE field.
> > 
> > If you can connect serial port and dump serial logs too that will be
> > awesome. Dell's docking station has RS232 connector and TBOOT's logs are
> > printed there (tested on my laptop).
> 
> $ txt-stat
> Intel(r) TXT Configuration Registers:
>  	STS: 0x00000012
>  	    senter_done: FALSE
>  	    sexit_done: TRUE
>  	    mem_config_lock: FALSE
>  	    private_open: FALSE
>  	    locality_1_open: FALSE
>  	    locality_2_open: FALSE
>  	ESTS: 0x00
>  	    txt_reset: FALSE
>  	E2STS: 0x0000000000000008
>  	    secrets: FALSE
>  	ERRORCODE: 0xc0003c11
>  	DIDVID: 0x00000001b0068086
>  	    vendor_id: 0x8086
>  	    device_id: 0xb006
>  	    revision_id: 0x1
>  	FSBIF: 0xffffffffffffffff
>  	QPIIF: 0x000000009d003000
>  	SINIT.BASE: 0xaced0000
>  	SINIT.SIZE: 327680B (0x50000)
>  	HEAP.BASE: 0xacf20000
>  	HEAP.SIZE: 917504B (0xe0000)
>  	DPR: 0x00000000ad000041
>  	    lock: TRUE
>  	    top: 0xad000000
>  	    size: 4MB (4194304B)
>  	PUBLIC.KEY:
>  	    2d [REDACTED]
>  	    77 [REDACTED]
> ***********************************************************
>  	 TXT measured launch: FALSE
>  	 secrets flag set: FALSE
> ***********************************************************
> unable to find TBOOT log
> 

I had a discussion with people responsible for SINITs for that platform
and here is how the situation looks like:

 * 6th_gen_i5_i7_SINIT_71 is a SkyLake SINIT that was released together
   with SKL platforms
 * 6th_7th_gen_i5_i7-SINIT_74 is a KabyLake SINIT that is newer and is
   backward compatible with SKL platforms

As KBL SINIT works with both SKL and KBL platforms, the old one,
compatible only with SKL, is not longer supported and may not work with
newer versions of SKL bioses. Recommendation is to use the KBL SINIT for
both KBL and SKL systems.

To avoid possible confusion in the future, old, not longer supported
SINIT, will be removed from download site. After that, there will be
only one binary available - 6th_7th_gen_i5_i7-SINIT_74 (that works with
both SKL and KBL platforms). Please do not use 6th_gen_i5_i7_SINIT_71.

Thank you for finding that issue.

Lukasz





_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
