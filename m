Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A43CD292301
	for <lists+tboot-devel@lfdr.de>; Mon, 19 Oct 2020 09:36:33 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1kUPiP-00055s-2P; Mon, 19 Oct 2020 07:36:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <timo.lindfors@iki.fi>) id 1kUPiM-00055k-QP
 for tboot-devel@lists.sourceforge.net; Mon, 19 Oct 2020 07:36:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=r8/C25p+JijtwxWLgkFmWPtJSkhzsUqqMLVQY4JFaUU=; b=h9Gd8BAOmDDEnblQlP45WRtTuC
 OHKkaP9p6oR0Q+MvS5v2tcKGgidU0znHM8c5BAE6Qg3X7TYFyN774LTzIWQ20jagq1fTxrHCoWh4y
 Tv6ahC0Bfh9vuaQqgVdUvWTYfwZAj8gZFynV8J6rbeZPRLJ4ASyIoSQBetuAw9QvliGQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:To:From:Date:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=r8/C25p+JijtwxWLgkFmWPtJSkhzsUqqMLVQY4JFaUU=; b=J
 8PxEBNU4+EXtaIKltcvPz/4nEEEdnL9jawe2sSbBgj4McIpWIamJCP1QQ+QFsf51QjsGz9KdgBA+J
 qm/3/eGRFWaP2sixIioTWzOTJSd1s066U0zlt/mFGdKCJ0X2xATfnReTL9FkvABaE4LGqit1mDS5G
 WX4A0+weRiZ8/VFo=;
Received: from [185.185.170.37] (helo=lahtoruutu.iki.fi)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kUPiA-00FNqH-1O
 for tboot-devel@lists.sourceforge.net; Mon, 19 Oct 2020 07:36:18 +0000
Received: from mail.home (89-27-97-237.bb.dnainternet.fi [89.27.97.237])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: timo.lindfors)
 by lahtoruutu.iki.fi (Postfix) with ESMTPSA id 645F01B0039A
 for <tboot-devel@lists.sourceforge.net>; Mon, 19 Oct 2020 10:35:42 +0300 (EEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi; s=lahtoruutu; 
 t=1603092942;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type;
 bh=r8/C25p+JijtwxWLgkFmWPtJSkhzsUqqMLVQY4JFaUU=;
 b=rK7vMjz8kO1PaopA3lu6hEtaKoQW3kXk118L3TXwU/ZwlmYShq8T0zMNBgV+vn+xpWuRrZ
 zDg24Khnexf+J5tGNNquvSQt48KmzIIVI9wxsFnR9HaNqQJJkLSeAc7c6r92cb58xKndrn
 9vxOrgBjwAOCvtCugKB/mHY3YicRtlotHeUzqyEhVlsyau9ylNygnNjWVUG0b4nRrUdDx1
 m09+RmzRK93Y9Z7x0C9Sv1bjqD/ge30V0LpvTd3gJ7lMGfqNOejrgFrtEsZOE13lUTNAMm
 x1E0OAsPUhkrfPtSWUpKeLf3rmoDoHPzmA574ZKQ0SB7DbgXdNl08fNR1jgEAw==
Received: from localhost ([127.0.0.1]) by mail.home with esmtp (Exim 4.89)
 (envelope-from <timo.lindfors@iki.fi>) id 1kUNnZ-0008TI-0U
 for tboot-devel@lists.sourceforge.net; Mon, 19 Oct 2020 08:33:33 +0300
Date: Mon, 19 Oct 2020 08:33:33 +0300 (EEST)
From: Timo Lindfors <timo.lindfors@iki.fi>
To: tboot-devel@lists.sourceforge.net
Message-ID: <alpine.DEB.2.20.2010190829270.32550@mail.home>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi;
 s=lahtoruutu; t=1603092942;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type;
 bh=r8/C25p+JijtwxWLgkFmWPtJSkhzsUqqMLVQY4JFaUU=;
 b=d3huCTpttYW9e55tMRsMNvEaag18MrAFUlR8paUrmEEdTuCcxxSFPGpo+ie0SphDCM8gfd
 aUNqi/DqcLT3aGOZ/vjIjFSxTvratbnjuGE+Ii9kvKq7jdSQxDEBuu2eeVJidtZFVcWm26
 0rV5BVLIAibzLULCAkGPKlkn8jhzvUsHNvDnLKrJnn1So4VhNUCNEnJj+Bo9THdHlqQ8/8
 F7sArEJyeWzbHlOrBFLa9r0+J8zQOU2i3MEGkKauLUHynNBsYWNFJooE7t69kXaUEX8xBq
 D4EptnUUDw6D5YIj/valClA5J0Nr8rkKkYLch7ZV4+T8cgNKG6eLU1VRXjUjOA==
ARC-Seal: i=1; s=lahtoruutu; d=iki.fi; t=1603092942; a=rsa-sha256; cv=none;
 b=qMk69GrEknz9P27A6bT1ex27Smx2e18MLgkLpgn6JP7Vi1K0M2oZ40EeEhSDEK6C2vl7C2
 Y2AYjo8eHT28voMIolmWdFnvB4f+EzSc/DbOIUl0eC6bG/F1jx0CIOnWmmaa0Z7d6H5LO7
 xZuTeJOUyeDbkK+VFIu0TqSFpJj8T4GNCG/O4aldZFI6hCpV+R2gtLY8tj6UMJoA9yVAky
 /P38Lsj128UfQTn8cowQvvggeDtEgyj15+pBsiEnOn9+za+wUxA53zy/pW3GbWSo80IpLQ
 0QDK+aRxAIJYZyPb6EHE7qSYVsjo8y32ECBQc9Iym1TjGWd1Hj8AiXfNiGZkAA==
ARC-Authentication-Results: i=1; ORIGINATING;
 auth=pass smtp.auth=timo.lindfors smtp.mailfrom=timo.lindfors@iki.fi
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [185.185.170.37 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 1.0 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Headers-End: 1kUPiA-00FNqH-1O
Subject: [tboot-devel] tboot now in Debian
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

tboot is now in Debian unstable: https://tracker.debian.org/pkg/tboot

If you need a backport for Debian 10, please let me know.

As explained in

https://salsa.debian.org/debian/tboot/-/blob/master/debian/README.Debian

you cannot yet use this with normal kernel packages as they lack 
CONFIG_INTEL_TXT=y:

https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=960195

-Timo



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
