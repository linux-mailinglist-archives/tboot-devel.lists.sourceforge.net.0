Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BD611A2690
	for <lists+tboot-devel@lfdr.de>; Wed,  8 Apr 2020 17:58:33 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1jMD5n-0001l9-9n; Wed, 08 Apr 2020 15:58:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lindi@kapsi.fi>) id 1jMD5l-0001ku-4y
 for tboot-devel@lists.sourceforge.net; Wed, 08 Apr 2020 15:58:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:References:Message-ID:
 In-Reply-To:Subject:To:From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Kz2JATfNjJ1XVwtMIYRxaKSA5vfUksxQDjhZI2XXpmo=; b=Pj5cDins5eJhjWemcHlUBGF9c6
 1ntWzhkKr2nLh7nI+nbxhncQOFpgMX5+YnLjEvW5sw7x3cw2gDklAtAKV5fs7HZseLAvGiyUuyVcL
 UdnhSoE+2mLkWx+pUQ8sxBUQUs5V4gZxezNXlCzUAR2k3VUq+EGtGhbI61DOrjsixXzk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:References:Message-ID:In-Reply-To:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Kz2JATfNjJ1XVwtMIYRxaKSA5vfUksxQDjhZI2XXpmo=; b=Z/w2IPJrKtk0M4EtpArCjbc6rr
 dpgbGGct5LmWpZq5nS0npQiTYKBXrxgQrwbfKt1TT5Erybobc/HqXkrBxwEvL8B4bT8jALRT3P9Wu
 DpfkWszjPduyPTilqoHItT7mH0Kp53PPpiQIAp3DAiWAoh759H/nVXAfgt4JeWUfrZAY=;
Received: from mail.kapsi.fi ([91.232.154.25])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jMD5f-00C00X-SR
 for tboot-devel@lists.sourceforge.net; Wed, 08 Apr 2020 15:58:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=kapsi.fi;
 s=20161220; h=Content-Type:MIME-Version:References:Message-ID:In-Reply-To:
 Subject:To:From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Kz2JATfNjJ1XVwtMIYRxaKSA5vfUksxQDjhZI2XXpmo=; b=DZA84sIg+GPJSJP47dd3/qFZTD
 HV/vTzBsADbZBkogkcF/pXS+FsCXcP5djCNYMou36oRbiDSkDWlSnva9l0XgjhRZMZ//QGsNwn0iv
 WYMoZLFXj0T9tKS4mnADwaI2j4Rio2X3GHFlHUK5iEc2bMi96w9yCbfOpz9nZF0lkAUT4ZKvoYlzF
 16zSwwZkGXJtjc7EkHmn/y3nrH27P3jQvelAWiJBCgbJxklVyFY/q4AnP1bI+mdjSx8Dc4FLyCvBl
 HojdAFrgPgVPxIZT74rTuJX5Ygtd4BPAgmB6SRJZCBxU1lBmD9RwnHAiLS4NcGE6VAo/SpoeYQ3iQ
 vQCsG+kQ==;
Received: from 82-181-208-90.bb.dnainternet.fi ([82.181.208.90] helo=mail.home)
 by mail.kapsi.fi with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <timo.lindfors@iki.fi>)
 id 1jMCiY-0004GH-CN
 for tboot-devel@lists.sourceforge.net; Wed, 08 Apr 2020 18:34:18 +0300
Received: from localhost ([127.0.0.1]) by mail.home with esmtp (Exim 4.89)
 (envelope-from <timo.lindfors@iki.fi>) id 1jMCiT-0006fT-QW
 for tboot-devel@lists.sourceforge.net; Wed, 08 Apr 2020 18:34:13 +0300
Date: Wed, 8 Apr 2020 18:34:13 +0300 (EEST)
From: Timo Lindfors <timo.lindfors@iki.fi>
To: tboot-devel@lists.sourceforge.net
In-Reply-To: <c5561325a53303ad556dadf49ba7269295ac30fc.camel@linux.intel.com>
Message-ID: <alpine.DEB.2.20.2004081831250.25596@mail.home>
References: <alpine.DEB.2.20.2003312317470.19721@mail.home>
 <dc275925ce5f44633594ec3fd6732b13f3abeb4c.camel@linux.intel.com>
 <alpine.DEB.2.20.2004021722080.21308@mail.home>
 <d5d36808a38af260d0e8390aaaf5dc6724cf787f.camel@linux.intel.com> 
 <alpine.DEB.2.20.2004081710220.25471@mail.home>
 <c5561325a53303ad556dadf49ba7269295ac30fc.camel@linux.intel.com>
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
 0.5 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jMD5f-00C00X-SR
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


On Wed, 8 Apr 2020, Lukasz Hawrylko wrote:
> TBOOT has an algorithm that checks if SINIT matches platform. I can't
> tell you right now what is wrong here, I need some logs. Please run it
> once again, than after reboot, can you launch Linux without TBOOT and
> run 'txt-stat' tool that is in TBOOT's repo in 'utils' folder? What I
> need is a value of ERRORCODE field.
>
> If you can connect serial port and dump serial logs too that will be
> awesome. Dell's docking station has RS232 connector and TBOOT's logs are
> printed there (tested on my laptop).

$ txt-stat
Intel(r) TXT Configuration Registers:
 	STS: 0x00000012
 	    senter_done: FALSE
 	    sexit_done: TRUE
 	    mem_config_lock: FALSE
 	    private_open: FALSE
 	    locality_1_open: FALSE
 	    locality_2_open: FALSE
 	ESTS: 0x00
 	    txt_reset: FALSE
 	E2STS: 0x0000000000000008
 	    secrets: FALSE
 	ERRORCODE: 0xc0003c11
 	DIDVID: 0x00000001b0068086
 	    vendor_id: 0x8086
 	    device_id: 0xb006
 	    revision_id: 0x1
 	FSBIF: 0xffffffffffffffff
 	QPIIF: 0x000000009d003000
 	SINIT.BASE: 0xaced0000
 	SINIT.SIZE: 327680B (0x50000)
 	HEAP.BASE: 0xacf20000
 	HEAP.SIZE: 917504B (0xe0000)
 	DPR: 0x00000000ad000041
 	    lock: TRUE
 	    top: 0xad000000
 	    size: 4MB (4194304B)
 	PUBLIC.KEY:
 	    2d [REDACTED]
 	    77 [REDACTED]

***********************************************************
 	 TXT measured launch: FALSE
 	 secrets flag set: FALSE
***********************************************************
unable to find TBOOT log

I'll check if we can get serial output.


-Timo



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
