Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BA781EB035
	for <lists+tboot-devel@lfdr.de>; Mon,  1 Jun 2020 22:28:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1jfr2z-00026p-3j; Mon, 01 Jun 2020 20:28:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <timo.lindfors@iki.fi>) id 1jfr2x-00026c-VK
 for tboot-devel@lists.sourceforge.net; Mon, 01 Jun 2020 20:28:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:References:Message-ID:
 In-Reply-To:Subject:cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pXmzbQ7ykGA/4AMzfRgjbN+F/rRo73aJoZO++Jm+E4Q=; b=ezfHq+Sy8OnTwYxHH9jkU5NTD2
 XoxD7h/Dsr6eta5NG5gesyXFuEzh4U26K0PtO/uV71+87EN67f2wakByF144DMAkOEdf3R5B2fGPG
 bIGsjvoExReqEQtDfsZiZbRCK9TOxBR5mYJT0HYHp07X8cwdWzlKVVqdpu1pn2WNOiLM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:References:Message-ID:In-Reply-To:Subject:cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=pXmzbQ7ykGA/4AMzfRgjbN+F/rRo73aJoZO++Jm+E4Q=; b=frAT3rDpxIYfGq4dueqVLCpTza
 XwQEIZM11iQcwxrruH6RD5VfjWG4TkHVb2zbjrI6+rHrroC6TrIn3TXyJAcJ70NAn6YyoTwlJBm7S
 KV/L/P2BUkXdtnpLCY/v1qzeFAQ0uO5WfzZjrBtjEs9dyo0wyjyCY0HrBJJ/R9vWxew4=;
Received: from meesny.iki.fi ([195.140.195.201])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jfr2v-007pSn-5v
 for tboot-devel@lists.sourceforge.net; Mon, 01 Jun 2020 20:28:35 +0000
Received: from mail.home (89-27-97-237.bb.dnainternet.fi [89.27.97.237])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: timo.lindfors)
 by meesny.iki.fi (Postfix) with ESMTPSA id C3B4B2003C;
 Mon,  1 Jun 2020 23:28:20 +0300 (EEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi; s=meesny;
 t=1591043300;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=pXmzbQ7ykGA/4AMzfRgjbN+F/rRo73aJoZO++Jm+E4Q=;
 b=i7wRdvHQn37xpPufjfeR9Dx4syU9uEqw9q1OKHFiMbdrV6DRW0NRtkTus8mkCPop8G9+LK
 2YnINcqNe2P5nmDRDRU1vTNO9mClvy0QAUe8SI2s6J4hmjHqbSW8rdbwAGJfo14dunZkII
 VdXQ/d0b7En0SEdeEoDQ2KkP/2rFIy4=
Received: from localhost ([127.0.0.1]) by mail.home with esmtp (Exim 4.89)
 (envelope-from <timo.lindfors@iki.fi>)
 id 1jfr2a-0006aZ-EI; Mon, 01 Jun 2020 23:28:12 +0300
Date: Mon, 1 Jun 2020 23:28:12 +0300 (EEST)
From: Timo Lindfors <timo.lindfors@iki.fi>
To: Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>
In-Reply-To: <fccd42128daa0ff86d2e6970f7e3217ae8f1a01e.camel@linux.intel.com>
Message-ID: <alpine.DEB.2.20.2006012325060.25310@mail.home>
References: <alpine.DEB.2.20.2005081919250.3828@mail.home>
 <3da41313c3b91f154f53f9c2c9645ade6399cff9.camel@linux.intel.com>
 <alpine.DEB.2.20.2005121234280.7218@mail.home>
 <alpine.DEB.2.20.2005231924220.17882@mail.home>
 <alpine.DEB.2.20.2005241914180.17882@mail.home>
 <2b9029d61fed0ca5f4d60a14a90fb01c98f6f007.camel@linux.intel.com>
 <alpine.DEB.2.20.2005251307150.19253@mail.home>
 <alpine.DEB.2.20.2005280214320.21222@mail.home>
 <952021e68c90965520a2b1a1cf11245ab49dd31b.camel@linux.intel.com>
 <alpine.DEB.2.20.2005282120080.22086@mail.home>
 <alpine.DEB.2.20.2005291234440.22603@mail.home>
 <fccd42128daa0ff86d2e6970f7e3217ae8f1a01e.camel@linux.intel.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi;
 s=meesny; t=1591043300;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=pXmzbQ7ykGA/4AMzfRgjbN+F/rRo73aJoZO++Jm+E4Q=;
 b=UcJjyl6q+rjkltngvQppW+r2b0MhHQ09hQcdMrWHtQKvkzXKEsbJB7ddmyh9OxDkbAROQN
 us/qy9SgjFnVN+H6Dg5jDwlCEFkqQ5B12gOkPL+OpCCubpYnSvq/7G7nkPmR4e8MdCcgCm
 QHISo1fHjF/4BpDqd1eMr416gu4o8rc=
ARC-Seal: i=1; s=meesny; d=iki.fi; t=1591043300; a=rsa-sha256; cv=none;
 b=AgRVj9gqZ4mSLEufyhD4I6HqHrXhP9KMMOGHfeqEGy/UVSStkpl1ZQk3vmRGmPCy4LqWmU
 2Ix/qbf9FbzaOahth0gZ7V/HyMl4t70KG+nRhB90/xcuqFPHh8TfFduowpw3vGHic2z2B8
 eEAt4iLsxcM8NchIO2BJdOROroloh+k=
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
X-Headers-End: 1jfr2v-007pSn-5v
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

On Fri, 29 May 2020, Lukasz Hawrylko wrote:
> I will setup my environment to test legacy boot and I will check if the
> same problem occurs. If it is possible, please try EFI boot on your PC.

I set a Thinkpad T430s (BIOS version 2.69) to UEFI-only mode without CSM 
and installed a fresh Debian 10. I then upgraded to debian unstable and 
installed tboot and txt-enabled kernel. The boot seems to get stuck with 
both warm and cold boot. What is worse, I get no output from tboot at 
all, there is only a warning

"WARNING: no console will be available to OS"

supposedly from grub2? As T430s does not have a serial port and none of 
the docking stations for that model have a serial port I am kind of blind 
here.

-Timo


_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
