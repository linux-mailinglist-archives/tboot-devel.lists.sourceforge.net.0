Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BD0CD1A23D3
	for <lists+tboot-devel@lfdr.de>; Wed,  8 Apr 2020 16:13:35 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1jMBSC-00055A-Iw; Wed, 08 Apr 2020 14:13:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lindi@kapsi.fi>) id 1jMBSA-00054y-FT
 for tboot-devel@lists.sourceforge.net; Wed, 08 Apr 2020 14:13:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:References:Message-ID:
 In-Reply-To:Subject:To:From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7nV7wGnGNCyB5NzjkMn3rbYKTHMC+/JQp+0RTwg2mx0=; b=GQwaVsXCFrJVKN53h0SHVJ8Q4N
 f7JhCVV6/amBsNx3YJUYAWwTbuptZNPhn/lfBYAb5fZRYQeaD4N+4FwnOsngCcmwpRZmzMhQ7MUjh
 /FxOGTVF78ctnAk0lqB18+24vkX04RRSjwBVLznPbjfhpfSgVC1VRlDoBJcn3fXt13qc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:References:Message-ID:In-Reply-To:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=7nV7wGnGNCyB5NzjkMn3rbYKTHMC+/JQp+0RTwg2mx0=; b=AZ/OB7oGWiI81Zu96BzDraNYdS
 o9oeEd3hgprbf97ZvYfNjz92fXTaLSomv5PcObWFq8jmktt/rJ8kB7Kw8lVJcQEEBPw8yjLY2oQfe
 L2K5VibHq2e69CgDYzdBnteEI5e0CniPnTTnGVNlFs5bW8CeILZboiwYhiSzBhi3sNDo=;
Received: from [91.232.154.25] (helo=mail.kapsi.fi)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jMBS5-007a84-2N
 for tboot-devel@lists.sourceforge.net; Wed, 08 Apr 2020 14:13:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=kapsi.fi;
 s=20161220; h=Content-Type:MIME-Version:References:Message-ID:In-Reply-To:
 Subject:To:From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=7nV7wGnGNCyB5NzjkMn3rbYKTHMC+/JQp+0RTwg2mx0=; b=miMEgOcwthU74dIefjOjlIh5mD
 hcCHEjSAkUlqJbHPaOUJMmr6ISqjPi4nvXd+1SFvZJ05mT7pI2erprA4bXMnEMMOqRPfAxkX+hAr3
 kMDq2dCWdKY+bSD3+F3YmVaHD+2RZL4b0vFJ9t7KkI7/NVRZxWobT4TkAUINCTXTlttQwYu8QJsug
 o26dg4k6mX4+oUxu4WZ+uQkA99hDknfHs3MEcf3axHyeJPQxie893srdYUS6XUbQt/v7Xngd3p94G
 6n24BoiQZiEnpYFIpGhUyMe7Tf1e+paJdIG8a4fXoKUggWyf9N7alT7zeWSEUG/tSY3XxBFN/0dP/
 CoRRb6hg==;
Received: from 82-181-208-90.bb.dnainternet.fi ([82.181.208.90] helo=mail.home)
 by mail.kapsi.fi with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <timo.lindfors@iki.fi>)
 id 1jMBRo-0005Ha-Al
 for tboot-devel@lists.sourceforge.net; Wed, 08 Apr 2020 17:12:56 +0300
Received: from localhost ([127.0.0.1]) by mail.home with esmtp (Exim 4.89)
 (envelope-from <timo.lindfors@iki.fi>) id 1jMBRj-0006dV-Iq
 for tboot-devel@lists.sourceforge.net; Wed, 08 Apr 2020 17:12:51 +0300
Date: Wed, 8 Apr 2020 17:12:51 +0300 (EEST)
From: Timo Lindfors <timo.lindfors@iki.fi>
To: tboot-devel@lists.sourceforge.net
In-Reply-To: <d5d36808a38af260d0e8390aaaf5dc6724cf787f.camel@linux.intel.com>
Message-ID: <alpine.DEB.2.20.2004081710220.25471@mail.home>
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
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jMBS5-007a84-2N
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

After a closer inspection this might be a different bug as the reboot 
occurs also if I specify only one SINIT module, the file
6th_gen_i5_i7_SINIT_71.BIN.

Why does tboot think that this file is a valid SINIT module for this CPU 
and try to use it? Is this a bug in the ACM module or tboot? Is there some 
algorithm for choosing the correct SINIT module?


-Timo


_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
