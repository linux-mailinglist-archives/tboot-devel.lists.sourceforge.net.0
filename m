Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E0D6A1E0B6D
	for <lists+tboot-devel@lfdr.de>; Mon, 25 May 2020 12:09:28 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1jdA2v-0007iP-Nt; Mon, 25 May 2020 10:09:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <timo.lindfors@iki.fi>) id 1jdA2u-0007i1-Fz
 for tboot-devel@lists.sourceforge.net; Mon, 25 May 2020 10:09:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:References:Message-ID:
 In-Reply-To:Subject:cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Z07BHfGsnUFHi/ybskjIUfGuFGgOnQUlLza4AgrA4Eg=; b=UsRyZxUdaCbCeDMzyyWII0l/6V
 t9sWLB4aW5ukqJEGBSqKIwfd5zYogANw9uNhGge0tJvo6crTtxigeSurCp6Gy5Ev3X4z1n6lWHQs4
 5nQ6ImB0Ueh2aAiQzxw+WDnBjj5OqoGJBVlVwly0n71lDbEMYfWtqEOf27/tFGp0GBXQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:References:Message-ID:In-Reply-To:Subject:cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Z07BHfGsnUFHi/ybskjIUfGuFGgOnQUlLza4AgrA4Eg=; b=aoFrw9DIALu1UpLMhH4L0jMxS8
 DJvF5iGhos1a50JO0IcI69iAgqiNhkmgpbL8XktiIOZYH6x1uVzEdrJW2CfTBBsFePBWmyUp3tRAH
 sbiOxW+naka+UyFjf5rYvQBpRCI6kpBxaaxPXuVp9WkdSUHnfQ3wvvbGdIKGhM+uKH5c=;
Received: from meesny.iki.fi ([195.140.195.201])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jdA2q-00Aqn4-QW
 for tboot-devel@lists.sourceforge.net; Mon, 25 May 2020 10:09:24 +0000
Received: from mail.home (89-27-97-237.bb.dnainternet.fi [89.27.97.237])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: timo.lindfors)
 by meesny.iki.fi (Postfix) with ESMTPSA id 6E890205CE;
 Mon, 25 May 2020 13:09:05 +0300 (EEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi; s=meesny;
 t=1590401345;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Z07BHfGsnUFHi/ybskjIUfGuFGgOnQUlLza4AgrA4Eg=;
 b=jSspDdibRow2EiisU0PG44uvzo28ghRxhc7epGeuhwCeWrlFtlnAOpjMaTDbUhCaNiDC4y
 NQikhTKW/DwpuIUzFaW/Pntbg6pMV/MtWHi1V52agnSW8I6W914ldSw5e9rHlvIO1UJVrW
 nJJmEWZ0Ebd0lAD08z8jqkQycP3Ovvw=
Received: from localhost ([127.0.0.1]) by mail.home with esmtp (Exim 4.89)
 (envelope-from <timo.lindfors@iki.fi>)
 id 1jdA2U-00050w-1n; Mon, 25 May 2020 13:08:58 +0300
Date: Mon, 25 May 2020 13:08:58 +0300 (EEST)
From: Timo Lindfors <timo.lindfors@iki.fi>
To: Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>
In-Reply-To: <2b9029d61fed0ca5f4d60a14a90fb01c98f6f007.camel@linux.intel.com>
Message-ID: <alpine.DEB.2.20.2005251307150.19253@mail.home>
References: <alpine.DEB.2.20.2005081919250.3828@mail.home>
 <3da41313c3b91f154f53f9c2c9645ade6399cff9.camel@linux.intel.com>
 <alpine.DEB.2.20.2005121234280.7218@mail.home>
 <alpine.DEB.2.20.2005231924220.17882@mail.home>
 <alpine.DEB.2.20.2005241914180.17882@mail.home>
 <2b9029d61fed0ca5f4d60a14a90fb01c98f6f007.camel@linux.intel.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi;
 s=meesny; t=1590401345;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Z07BHfGsnUFHi/ybskjIUfGuFGgOnQUlLza4AgrA4Eg=;
 b=DdQn8JNTYksyipkRx4FeoS49tNlnAf3kBIhdwfabD0UiDNhG2j3Zl0N1ObZFdj6qh/2k10
 9UBq6/71UEBixFMtNDFkfPiHs8heYiC3ATzC3o/+Ib+5mnT7WNXNAQ0P0E3NTGj1F/QyEf
 wfr+oJlu+pQbWkEOSXLrrWEsdgOePSo=
ARC-Seal: i=1; s=meesny; d=iki.fi; t=1590401345; a=rsa-sha256; cv=none;
 b=iyP/1d2Y2d2aPDMxS92xh24oM7fbEhFicMn2/UeyPUZXBAFajXDYr6viKC29Y3hEtaeE9N
 EpxGSYpJay/9OsJWQ1xfvLWN5ON7zH2V/N4yhmM/r/0RGsG4KMM2WKiWY5TdokEOQHjpjK
 v0OjD3J/V0Hjj6yq1XzbO0HWYWn2W9g=
ARC-Authentication-Results: i=1; ORIGINATING;
 auth=pass smtp.auth=timo.lindfors smtp.mailfrom=timo.lindfors@iki.fi
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1jdA2q-00Aqn4-QW
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: tboot-devel-bounces@lists.sourceforge.net


On Mon, 25 May 2020, Lukasz Hawrylko wrote:
> That is a really strange behaviour. I have just build tip from mercurial
> and run it on TPM1.2 and TPM2.0 PCs - it works (cold-booted too). Can
> you please share me more informations about your test case? Do you see
> anything on the screen?

I only see the "original e820 map:" listing. I'm trying to get serial 
console to make this easier to debug and to compare how warm-boot and 
cold-boot differs without having to compare photos from the screen.

-Timo



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
