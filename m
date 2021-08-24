Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 815883F5D07
	for <lists+tboot-devel@lfdr.de>; Tue, 24 Aug 2021 13:22:23 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1mIUVT-0005In-Nd; Tue, 24 Aug 2021 11:22:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <timo.lindfors@iki.fi>) id 1mIUVR-0005Ig-R6
 for tboot-devel@lists.sourceforge.net; Tue, 24 Aug 2021 11:22:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:References:Message-ID:
 In-Reply-To:Subject:To:From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wf5MmN59a4wD7DJIVwa4/KroIH+Oh3IVP8NqlQWX0ac=; b=HjBA35T8wfvy+FB9eL32FzZdew
 z0ihxN/tRB6CUxL51nKWTxVF/ic6f1LkBNdvNZfyUGkyiS+TjpDiXEsjxIWhHX5pju62Joa45UkMC
 RKsCi1ok2cWnDkY75OaapH6ySL/yZBR1lg37xU6gKKP5wyFR1buEPxDGNpt+vkKUAis0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:References:Message-ID:In-Reply-To:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=wf5MmN59a4wD7DJIVwa4/KroIH+Oh3IVP8NqlQWX0ac=; b=Xz0DI1M6IxEy54gNcfaVk5zwSk
 vSivj2gZVQH2T7OtzReRqLN9zApbTNUCgql3/lsn/OGk2bkf/e/DzCxpCtHrp2QJFH5ZsE+t8R9HJ
 wSdyuQJL2NgTNq0Pn1M9K0pruXSNQsBxktgJMSjCJLCn27lOz3JQlMfCYjiWQVBNpwDk=;
Received: from meesny.iki.fi ([195.140.195.201])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mIUVN-00Gn3D-Ik
 for tboot-devel@lists.sourceforge.net; Tue, 24 Aug 2021 11:22:13 +0000
Received: from mail.home (89-27-97-237.bb.dnainternet.fi [89.27.97.237])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: timo.lindfors)
 by meesny.iki.fi (Postfix) with ESMTPSA id 5F9BA20099
 for <tboot-devel@lists.sourceforge.net>; Tue, 24 Aug 2021 14:21:56 +0300 (EEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi; s=meesny;
 t=1629804116;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=wf5MmN59a4wD7DJIVwa4/KroIH+Oh3IVP8NqlQWX0ac=;
 b=dj5/bABbR6Trb4QDHNJyFWCkysbATs/Pp1BXSljF/yxcwZ+ZsQ0uTLdRTvUJO1BGZNQUUT
 AEyzXgETXQh+v4s0jtlOqgF405cwUR1ZM15thVBR7pCskkBvsC17f8QlrctD/9/ZO4dxhd
 DJZw36R/HhbGMsGNbHxQskKdqZ9/ywA=
Received: from localhost ([127.0.0.1]) by mail.home with esmtp (Exim 4.89)
 (envelope-from <timo.lindfors@iki.fi>) id 1mISaH-0001Xn-Bm
 for tboot-devel@lists.sourceforge.net; Tue, 24 Aug 2021 12:19:05 +0300
Date: Tue, 24 Aug 2021 12:19:05 +0300 (EEST)
From: Timo Lindfors <timo.lindfors@iki.fi>
To: tboot-devel@lists.sourceforge.net
In-Reply-To: <d5d36808a38af260d0e8390aaaf5dc6724cf787f.camel@linux.intel.com>
Message-ID: <alpine.DEB.2.20.2108241211001.5917@mail.home>
References: <alpine.DEB.2.20.2003312317470.19721@mail.home>
 <dc275925ce5f44633594ec3fd6732b13f3abeb4c.camel@linux.intel.com>
 <alpine.DEB.2.20.2004021722080.21308@mail.home>
 <d5d36808a38af260d0e8390aaaf5dc6724cf787f.camel@linux.intel.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi;
 s=meesny; t=1629804116;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=wf5MmN59a4wD7DJIVwa4/KroIH+Oh3IVP8NqlQWX0ac=;
 b=UOw+FvTIklZ/0aYlZEmhNi5tHW+AmQZhah5mGyCTeQ53xMI6+7/7ALULuD90h+aIYu9uAf
 /oOD7mRPFQnA40kN8f9F3DfKXgO4JU+2euRH55DBU5KuC2JzbzYjMEVLqI4G192u85oo7N
 mV51JJjwzo0LPLLAd3LdMWg4EPfN5kg=
ARC-Seal: i=1; s=meesny; d=iki.fi; t=1629804116; a=rsa-sha256; cv=none;
 b=vvjZwpc7Xj3ZHwriFx8rM0RiTdOSXWh3v4B/FCWJjLo/cu0xcRxQg50CV4fNkkW3NluLTc
 q/ZJa5JIEiYYNEGp9qg1JVeWX7IhWbXwSIqrr0IRKw3C+2act4aVB3LU+SzUTaZ5zyTdnc
 hs4gQdfORCacRhHaJmdL29WATiUe8Fg=
ARC-Authentication-Results: i=1; ORIGINATING;
 auth=pass smtp.auth=timo.lindfors smtp.mailfrom=timo.lindfors@iki.fi
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  [replying to an old email thread] On Tue, 7 Apr 2020, Lukasz
 Hawrylko wrote: > Unfortunately, this bug is not reported anywhere. In real
 life scenarios > I don't see any benefits of loading multiple SINITs. In
 most cases you > have on [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1mIUVN-00Gn3D-Ik
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

[replying to an old email thread]

On Tue, 7 Apr 2020, Lukasz Hawrylko wrote:
> Unfortunately, this bug is not reported anywhere. In real life scenarios
> I don't see any benefits of loading multiple SINITs. In most cases you
> have one SINIT that is dedicated to the platform.
>
> I am not sure if that issue can be fixed without moving TBOOT log memory
> pool somewhere else and that change will brake other tools. It will be
> better to change documentation that only one SINIT can be loaded. I will
> check who is the owner of TBOOT page in Fedora's wiki.

Just for the record I hit this issue again on HP Elitedesk 800 G2 in 
UEFI-only mode. Loading

2nd_gen_i5_i7_SINIT_51.BIN
3rd_gen_i5_i7_SINIT_67.BIN
4th_gen_i5_i7_SINIT_75.BIN
5th_gen_i5_i7_SINIT_79.BIN
6th_7th_gen_i5_i7-SINIT_79.bin
7th_8th_gen_i5_i7-SINIT_81.bin
GM45_GS45_PM45_SINIT_51.BIN
Q35_SINIT_51.BIN
Q45_Q43_SINIT_51.BIN
Xeon-5600-3500-SINIT-v1.1.bin
Xeon-E7-8800-4800-2800-SINIT-v1.1.bin
i5_i7_DUAL_SINIT_51.BIN
i7_QUAD_SINIT_51.BIN

causes the system to reset at SENTER with

TBOOT: TXT.ERRORCODE: 0x80000007
TBOOT: 	 processor error 0x7

Loading only sinit 6th_7th_gen_i5_i7-SINIT_79.bin works:

TBOOT: checking if module  is an SINIT for this platform...
TBOOT: chipset production fused: 1
TBOOT: chipset ids: vendor: 0x8086, device: 0xb006, revision: 0x1
TBOOT: processor family/model/stepping: 0x506e3
TBOOT: platform id: 0x4000000000000
TBOOT: 	 1 ACM chipset id entries:
TBOOT: 	     vendor: 0x8086, device: 0xb006, flags: 0x1, revision: 0x1, extended: 0x0
TBOOT: 	 4 ACM processor id entries:
TBOOT: 	     fms: 0x406e0, fms_mask: 0xfff3ff0, platform_id: 0x0, platform_mask: 0x0
TBOOT: 	     fms: 0x506e0, fms_mask: 0xfff3ff0, platform_id: 0x0, platform_mask: 0x0
TBOOT: SINIT matches platform
...
TBOOT: SINIT ACM successfully returned...

Could you try to contact again Fedora to get the wiki page fixed? It is 
still misleading people into putting all ACMs to /boot. I could not figure
out how to modify the wiki as it seems to be very restricted due to spam 
challenges.

Should we fix ./tboot/20_linux_tboot to complain if multiple ACMs are 
present? I would really prefer an error message over a system reset that 
is difficult to diagnose without serial console. Or should 20_linux_tboot 
try to automatically select the correct ACM? Or perhaps even create one 
boot entry per ACM to some submenu?

-Timo


_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
