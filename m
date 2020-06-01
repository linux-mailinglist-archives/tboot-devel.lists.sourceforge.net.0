Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BA53E1EB197
	for <lists+tboot-devel@lfdr.de>; Tue,  2 Jun 2020 00:16:24 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1jfsjA-00019W-OA; Mon, 01 Jun 2020 22:16:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <timo.lindfors@iki.fi>) id 1jfsj9-00019H-9b
 for tboot-devel@lists.sourceforge.net; Mon, 01 Jun 2020 22:16:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:References:Message-ID:
 In-Reply-To:Subject:cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pR9GJ2ZlqeiNFWEVCA1dbIEhil6LTgXKfs0gmmAM76M=; b=BcRh0PCRbgjz29WWfYEXCSWjuh
 4xsUcpoMvSKAv+jK1ZbLNW7wkcLkA5n+aW5vYP8m6VGfkN7VG6tsmSaTtYmQfGO4XBhvJzP3dNvD9
 EPVHoOWn4mBorZHpW+MueXXSSWOQoR0yVVWgYScx/K2jKM+otikAkOgI5CxRmL75rWlk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:References:Message-ID:In-Reply-To:Subject:cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=pR9GJ2ZlqeiNFWEVCA1dbIEhil6LTgXKfs0gmmAM76M=; b=gB3EaKJuY/IDdvMkaWAX3TDe8U
 WfWgQhQ7FydXDpEzK0XxRR5xkM03nKCzBPzfUot5vkC/BDMuhQ9yC80SA3awLlWkbQb2q8A5PVlKU
 9YbhddobjQR0cLKy022YNqmXul0poALdYdek2QmgUxFSeSRcfwtqK+mYfGY9G6UpsNaA=;
Received: from meesny.iki.fi ([195.140.195.201])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jfsj5-00161I-Be
 for tboot-devel@lists.sourceforge.net; Mon, 01 Jun 2020 22:16:15 +0000
Received: from mail.home (89-27-97-237.bb.dnainternet.fi [89.27.97.237])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: timo.lindfors)
 by meesny.iki.fi (Postfix) with ESMTPSA id 699C820177;
 Tue,  2 Jun 2020 01:15:57 +0300 (EEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi; s=meesny;
 t=1591049757;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=pR9GJ2ZlqeiNFWEVCA1dbIEhil6LTgXKfs0gmmAM76M=;
 b=EMqLKuHBtlVXWYPKHRtUjvzZqjlzTdQvRbpgO4OnLogURPIiuPmnbNIigG2zNIm6XwmxuN
 12msgO8n/Nivefa+KRpPUg5aoKfY4bwqbWlPGc3TM023Xwxt4JclvnCAFmdXsPaSJnVVQ7
 hbvNIpFzD/+g0uXtD6a/yLkdARmcm20=
Received: from localhost ([127.0.0.1]) by mail.home with esmtp (Exim 4.89)
 (envelope-from <timo.lindfors@iki.fi>)
 id 1jfsij-0006db-B6; Tue, 02 Jun 2020 01:15:49 +0300
Date: Tue, 2 Jun 2020 01:15:49 +0300 (EEST)
From: Timo Lindfors <timo.lindfors@iki.fi>
To: tboot-devel@lists.sourceforge.net
In-Reply-To: <alpine.DEB.2.20.2006012052160.25060@mail.home>
Message-ID: <alpine.DEB.2.20.2006020111310.25497@mail.home>
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
 <alpine.DEB.2.20.2006010050560.24353@mail.home>
 <alpine.DEB.2.20.2006010126220.24394@mail.home>
 <8e119cc80a96c5f714a4f52696c65fec1dd35ef6.camel@linux.intel.com>
 <alpine.DEB.2.20.2006012052160.25060@mail.home>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi;
 s=meesny; t=1591049757;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=pR9GJ2ZlqeiNFWEVCA1dbIEhil6LTgXKfs0gmmAM76M=;
 b=ioTpBBZEwV125mrkNcCWCwGUseQWhAVe8ZnmexQFTD1fEPTojXUEH4ODGM2wkqcoNOFlp6
 6zJLBi99Ez2wXnWZw9FFFjRnnrLcJlD5E898gFX1GBjkR1zx5YIO2Ze2td6lInr9VLb2n1
 zwLH1jmPvOlfeCCZvcrCaM7ywCcidyQ=
ARC-Seal: i=1; s=meesny; d=iki.fi; t=1591049757; a=rsa-sha256; cv=none;
 b=PqEvB2ClQmFFa8sr5L8eiNJeTLfz6eha9vEiK/uCbuFY34JdphBY3urW6n0nWfwZ9fXpke
 fvWUy2XFXP2ZBYocyzwQIFYB9eyB1+U/pnQqmdHsfiO1RARY080F22qsdXALM62DySJJUy
 sytIfBCQfNsZSqHTfSaput3DxLooRHI=
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
X-Headers-End: 1jfsj5-00161I-Be
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: tboot-devel-bounces@lists.sourceforge.net

On Mon, 1 Jun 2020, Timo Lindfors wrote:
> tboot prints
>
> "TBOOT: this routine only prints out multiboot 2"
>
> and never enters the else block where the printk()s are...

This gave me a hint: Using multiboot2/module2 seems to work with cold 
boot. This might not mean anything of course if the issue is caused
by memory corruption.

-Timo




_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
