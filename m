Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A9DA01A0EBF
	for <lists+tboot-devel@lfdr.de>; Tue,  7 Apr 2020 15:58:59 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1jLoke-0003vu-Oi; Tue, 07 Apr 2020 13:58:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lindi@kapsi.fi>) id 1jLokd-0003vn-J3
 for tboot-devel@lists.sourceforge.net; Tue, 07 Apr 2020 13:58:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:References:Message-ID:
 In-Reply-To:Subject:To:From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LSURlulyKAueg285XFKlPBfbt/J2FHGiqZjn2t1IKmE=; b=ICD+QAcpRXxkzCdUk5+pyHM8Vq
 DDvpcIkphXaTXQV64eU8sJ6xobfQfkkqXL/eKk4M82yHLhpgFQTJwT6autRsuOVK0FesPNX2ATnQe
 B1sIsIBebWTMtlps915asCv0Igf9hvese70uWHLCXwXwuaIqUv0nl08ZF50b7vDJVA0s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:References:Message-ID:In-Reply-To:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=LSURlulyKAueg285XFKlPBfbt/J2FHGiqZjn2t1IKmE=; b=EjhprA1Wkksevdi32zDmnPZ17Z
 r8WJ5vLuR80pRvFlP0ArbuSV4XwIu/CGgww95ypteqzjwJ602atZmzRDDP94d4ylqxC1XXBwC5Hht
 H0+8VxyF9uXI9Fgp2luTEQEBzDVCtXQB3sukwEDwU2Q3WQeYIBkQ+uNcBGEjS8jYLxcY=;
Received: from [91.232.154.25] (helo=mail.kapsi.fi)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jLoka-005sM5-Ch
 for tboot-devel@lists.sourceforge.net; Tue, 07 Apr 2020 13:58:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=kapsi.fi;
 s=20161220; h=Content-Type:MIME-Version:References:Message-ID:In-Reply-To:
 Subject:To:From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=LSURlulyKAueg285XFKlPBfbt/J2FHGiqZjn2t1IKmE=; b=agEjJWBEMg35pg6Lf7sMZJ5rhH
 /XTIvxabG8DcH3hnrGppNOCiU8jFCgCTBibAN7Qtj2w4RYKhyIm8cogIU7hXCu4HxzlIRTtYyCxNm
 G8DxmyesagfVW5jGZbWIOWBSwElvvp6S2i7zEUBzFaIZXHJlKTGo1z3sBwA2Ixzv7eRNHkZ7sV6YL
 vTBaBj3qy4Nyw9b6AITh6X5vJidm6Slm5+/mjFdkJnDm5m3hfSIxw1j7aelo/2iVDuGL85IazhCRy
 4EGBxMzxqfnK12WtHW8OorSV+WReZs+PnkImu5745kAStppySA61dexXOQhqenjvfyQkUFvYekoob
 giHtclrA==;
Received: from 82-181-208-90.bb.dnainternet.fi ([82.181.208.90] helo=mail.home)
 by mail.kapsi.fi with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <timo.lindfors@iki.fi>)
 id 1jLokJ-0005Oo-Lp
 for tboot-devel@lists.sourceforge.net; Tue, 07 Apr 2020 16:58:31 +0300
Received: from localhost ([127.0.0.1]) by mail.home with esmtp (Exim 4.89)
 (envelope-from <timo.lindfors@iki.fi>) id 1jLokE-0006PU-Of
 for tboot-devel@lists.sourceforge.net; Tue, 07 Apr 2020 16:58:26 +0300
Date: Tue, 7 Apr 2020 16:58:26 +0300 (EEST)
From: Timo Lindfors <timo.lindfors@iki.fi>
To: tboot-devel@lists.sourceforge.net
In-Reply-To: <d5d36808a38af260d0e8390aaaf5dc6724cf787f.camel@linux.intel.com>
Message-ID: <alpine.DEB.2.20.2004071655580.24622@mail.home>
References: <alpine.DEB.2.20.2003312317470.19721@mail.home>
 <dc275925ce5f44633594ec3fd6732b13f3abeb4c.camel@linux.intel.com>
 <alpine.DEB.2.20.2004021722080.21308@mail.home>
 <d5d36808a38af260d0e8390aaaf5dc6724cf787f.camel@linux.intel.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 82.181.208.90
X-SA-Exim-Mail-From: timo.lindfors@iki.fi
X-SA-Exim-Scanned: No (on mail.kapsi.fi); SAEximRunCond expanded to false
X-Spam-Score: 1.2 (+)
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
X-Headers-End: 1jLoka-005sM5-Ch
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


On Tue, 7 Apr 2020, Lukasz Hawrylko wrote:
> Unfortunately, this bug is not reported anywhere. In real life scenarios
> I don't see any benefits of loading multiple SINITs. In most cases you
> have one SINIT that is dedicated to the platform.

The main benefit is that you can automate installation more easily and you 
can use the same image on all machines. This allows using even a LiveUSB 
with tboot. If we can't put this logic to tboot then maybe it should be 
put to the part that generates the grub configuration file at least? I'm 
open to any other ideas of course.

> better to change documentation that only one SINIT can be loaded. I will
> check who is the owner of TBOOT page in Fedora's wiki.

Thanks!

-Timo


_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
