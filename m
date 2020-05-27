Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A2DA31E51BB
	for <lists+tboot-devel@lfdr.de>; Thu, 28 May 2020 01:23:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1je5OM-0005zS-Q8; Wed, 27 May 2020 23:23:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <timo.lindfors@iki.fi>) id 1je5O9-0005z5-3C
 for tboot-devel@lists.sourceforge.net; Wed, 27 May 2020 23:23:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:References:Message-ID:
 In-Reply-To:Subject:cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BqD464Q1n526IlmRB8rUJMipMIc8H9mXQBwlEcPbVVQ=; b=Wv7urRlIqoQU0NxNN+LeGMzh8S
 pXZ5p5fNt7zLv9KSqSle3Lid1ZTBTRDC5DXFqf3VPzs2SWDr3UwT+DHjuhjfOoWa49/35pR1wlTi9
 HfRhvTEDr4EavU4PZLECZPXldmxZqX1jqexjiIrmeTWgiL9QEehzXI2h9CJxar0SmJB0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:References:Message-ID:In-Reply-To:Subject:cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=BqD464Q1n526IlmRB8rUJMipMIc8H9mXQBwlEcPbVVQ=; b=ZDoSpMAGkShoSv+4PHuXoOwtO3
 urK1qkCuveVdESK82bw8PWodgOBMnjHWpFc2sDTuxdawlu/4LMOv2Ey7atLjbtPpJBb/AjONBnPMX
 oLVmZjt/fQ2j5//lANgObYhCrmzCmCckD75ek2GvScwmDwTvuvl+wjvmKq0NapHIdIxg=;
Received: from meesny.iki.fi ([195.140.195.201])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1je5O6-009xrs-7T
 for tboot-devel@lists.sourceforge.net; Wed, 27 May 2020 23:23:09 +0000
Received: from mail.home (89-27-97-237.bb.dnainternet.fi [89.27.97.237])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: timo.lindfors)
 by meesny.iki.fi (Postfix) with ESMTPSA id 6B1592018E;
 Thu, 28 May 2020 02:22:48 +0300 (EEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi; s=meesny;
 t=1590621768;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=BqD464Q1n526IlmRB8rUJMipMIc8H9mXQBwlEcPbVVQ=;
 b=a0wPmfhmgWBd9AQt/LmS8D99i577Wj51Mais+U3qohhJ/MSMUiaR0hwb3SGq4cg8uQJsBj
 WNjjrIZrmI9Ico10CJnDmdi+oELb79e2spvMu/pyVssx/xKtCl52ecsa/rmsfFflIERETn
 mBVhwidQtJcu3IcM3Y9ESTRziGURhJY=
Received: from localhost ([127.0.0.1]) by mail.home with esmtp (Exim 4.89)
 (envelope-from <timo.lindfors@iki.fi>)
 id 1je5Ng-0005Wg-PQ; Thu, 28 May 2020 02:22:40 +0300
Date: Thu, 28 May 2020 02:22:40 +0300 (EEST)
From: Timo Lindfors <timo.lindfors@iki.fi>
To: tboot-devel@lists.sourceforge.net
In-Reply-To: <alpine.DEB.2.20.2005251307150.19253@mail.home>
Message-ID: <alpine.DEB.2.20.2005280214320.21222@mail.home>
References: <alpine.DEB.2.20.2005081919250.3828@mail.home>
 <3da41313c3b91f154f53f9c2c9645ade6399cff9.camel@linux.intel.com>
 <alpine.DEB.2.20.2005121234280.7218@mail.home>
 <alpine.DEB.2.20.2005231924220.17882@mail.home>
 <alpine.DEB.2.20.2005241914180.17882@mail.home>
 <2b9029d61fed0ca5f4d60a14a90fb01c98f6f007.camel@linux.intel.com>
 <alpine.DEB.2.20.2005251307150.19253@mail.home>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi;
 s=meesny; t=1590621768;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=BqD464Q1n526IlmRB8rUJMipMIc8H9mXQBwlEcPbVVQ=;
 b=NsOeWvJUzRcaCNHjG8r6s3KrYOYECydTNGomfnSOFipT0wVMe9KwtXmnnUI1000wjpBt9R
 NIvse+CFjjguPcuXukaHWL0Q/rXwfciQPTYRKpESd831GQ27EaJZKm8dCClP8xSgKLSC5A
 6CUiIMzMdP4ke/LUMEi2J3lbmUdR3B0=
ARC-Seal: i=1; s=meesny; d=iki.fi; t=1590621768; a=rsa-sha256; cv=none;
 b=mjsYcBCriYHF7VpNO/D4PluYlJ3kdZrkXLKLdgWTzJvPU+qDO5IV9QoxbAxrqnQfTe5trI
 96ndY8ZCdxPWvkwgBj5k2MYfrMcVpO6mbEE26Ovg6sB0/lvpHjHpp0O2MahsZWliH+/J1d
 RiVQLnLw2Nf7fb8hY5t099EDdz4ZjOg=
ARC-Authentication-Results: i=1; ORIGINATING;
 auth=pass smtp.auth=timo.lindfors smtp.mailfrom=timo.lindfors@iki.fi
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: intel.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1je5O6-009xrs-7T
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

Hi,

On Mon, 25 May 2020, Timo Lindfors wrote:
> I only see the "original e820 map:" listing. I'm trying to get serial console 
> to make this easier to debug and to compare how warm-boot and cold-boot 
> differs without having to compare photos from the screen.

I bought a second-hand Thinkpad R400 and Thinkpad type 2504 dock that 
includes a serial port. Then I soldered a relay to the power button and 
wrote a tool that lets me say

baremetal_run -o foo.tar foo.img

to run "foo.img" on real hardware and to collect network, serial, audio 
and video output automatically.

Internally this works by setting the laptop boot order so that it tries
to boot from network first and then from local hard disk. By changing the 
DHCP configuration I can alternate between PXE booting an initrd that
writes an image to disk and booting from local disk.


Anyways, with the help of this I was able to run git bisect. It tells me 
that the first bad commit is

changeset:   562:77bca150d0d5
user:        Lukasz Hawrylko <lukasz.hawrylko@intel.com>
date:        Fri Feb 21 11:07:00 2020 +0100
summary:     Add support for EFI memory map parse/modification


Any idea on how to debug this further?

-Timo


_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
