Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B57AD1E6959
	for <lists+tboot-devel@lfdr.de>; Thu, 28 May 2020 20:31:02 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1jeNIx-0004Sz-UC; Thu, 28 May 2020 18:30:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <timo.lindfors@iki.fi>) id 1jeNIw-0004Sm-Mv
 for tboot-devel@lists.sourceforge.net; Thu, 28 May 2020 18:30:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:References:Message-ID:
 In-Reply-To:Subject:cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=szH2Luyp2k0h5DTwW5vZywZSDz+D+G2w71gEqjNu6yg=; b=jJOpmaLpv5NiT++I+7Y4Zi/jmw
 7HdovaObdEG5hBuZ/v1yyp+D/M4KCdWbgTCrwGZHVs5mzn5f5+Q6j9u0r0aOKMGZrkFIhxWCoBptg
 2PMVnW94N1mUSDy3iBwy0ZhoUSm10I3TzgRUZ9cB849RZnrx8z2Va8XMKS1z9uHnjWXA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:References:Message-ID:In-Reply-To:Subject:cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=szH2Luyp2k0h5DTwW5vZywZSDz+D+G2w71gEqjNu6yg=; b=jvPDuth+lJhV+K2cu4p9aCiC0A
 uu7xlBqhUGPmEB+zxOPd4sJfjaYLGjrOIk0/Cct2mPBQel6/NmZ8dksBQZW1CffA1AeOgMwxMQD46
 +kLBjuYNVO6CEhI8FrWDaIpv7lEIcbm5u18teqAvxwRgoapEMlC9Et6gmpNmKvZBoyA0=;
Received: from meesny.iki.fi ([195.140.195.201])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jeNIs-00B9mt-BU
 for tboot-devel@lists.sourceforge.net; Thu, 28 May 2020 18:30:58 +0000
Received: from mail.home (89-27-97-237.bb.dnainternet.fi [89.27.97.237])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: timo.lindfors)
 by meesny.iki.fi (Postfix) with ESMTPSA id 3892720175;
 Thu, 28 May 2020 21:30:45 +0300 (EEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi; s=meesny;
 t=1590690645;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=szH2Luyp2k0h5DTwW5vZywZSDz+D+G2w71gEqjNu6yg=;
 b=VxnYxN/uY0yoP8GY8bHLmzW49XxoqF4WjOob5vvhb+TZ+9OPoHfvFYmFgnSAb2ZXZ21BRG
 gUM0CymBjr8g3EOYcB4fLQcNfCvCkbsnDMBLaiCtKqb86rzyPdhxTOStQctB7EvN6UCj6T
 +QEPgdzrIVWJdydhVAH/6EfY300mBro=
Received: from localhost ([127.0.0.1]) by mail.home with esmtp (Exim 4.89)
 (envelope-from <timo.lindfors@iki.fi>)
 id 1jeNIb-0005kc-Ge; Thu, 28 May 2020 21:30:37 +0300
Date: Thu, 28 May 2020 21:30:37 +0300 (EEST)
From: Timo Lindfors <timo.lindfors@iki.fi>
To: Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>
In-Reply-To: <952021e68c90965520a2b1a1cf11245ab49dd31b.camel@linux.intel.com>
Message-ID: <alpine.DEB.2.20.2005282120080.22086@mail.home>
References: <alpine.DEB.2.20.2005081919250.3828@mail.home>
 <3da41313c3b91f154f53f9c2c9645ade6399cff9.camel@linux.intel.com>
 <alpine.DEB.2.20.2005121234280.7218@mail.home>
 <alpine.DEB.2.20.2005231924220.17882@mail.home>
 <alpine.DEB.2.20.2005241914180.17882@mail.home>
 <2b9029d61fed0ca5f4d60a14a90fb01c98f6f007.camel@linux.intel.com>
 <alpine.DEB.2.20.2005251307150.19253@mail.home>
 <alpine.DEB.2.20.2005280214320.21222@mail.home>
 <952021e68c90965520a2b1a1cf11245ab49dd31b.camel@linux.intel.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi;
 s=meesny; t=1590690645;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=szH2Luyp2k0h5DTwW5vZywZSDz+D+G2w71gEqjNu6yg=;
 b=N0ttKala5sxqJ4+wJUqdNnjW4GCwkK5r5Ms4fuuSIj7yl2tXXC663xKcjdOfqpJIo4adic
 L7ZNQDdJEyef/2kYif/V3lSK7xkDE2f4QUZ2oLX510CmoL1nQwdDQshQOYVCogFvBb3iQK
 wayfYHNK3wH5XxJj9SspfkM6W9YLa4I=
ARC-Seal: i=1; s=meesny; d=iki.fi; t=1590690645; a=rsa-sha256; cv=none;
 b=sK6dN7QO2ne4axcHbCH6+3SPy/YGi2binQWgx25P7WmpNK0u8mnFl733j/TnFcVaoHcgfK
 PSH5rusG7ODGXvBoAWTgH3bBaXEM+deXVOfMUPJ8i19bTIn3S6HlMtQ4cTUt3IyrHklKqQ
 ztDqi7i9wvcaGagsgL7RHu97uf1PyEw=
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
X-Headers-End: 1jeNIs-00B9mt-BU
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


On Thu, 28 May 2020, Lukasz Hawrylko wrote:
> I understand that still you have the same behaviour - cold boot failing,
> reboot after Linux working, correct? Please add "dump_memmap=true" to
> TBOOT's command line it should enable dumping of EFI memory map.

Correct. Unfortunately dump_memmap=true does not print anything before 
it gets stuck on cold boot.

> If you don't see this dump in failing scenario please add
> "set debug=mmap" to grub.cfg, now GRUB should print that.

I added this after the serial console setup but this does not seem to 
print anything? I also cannot find it in the grub2 source code. Is 
this the correct syntax?

You can see the logs and other data here:

https://lindi.iki.fi/lindi/tboot/dump_memmap-cold.tar

https://lindi.iki.fi/lindi/tboot/dump_memmap-warm.tar


-Timo



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
