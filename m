Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E2311E5939
	for <lists+tboot-devel@lfdr.de>; Thu, 28 May 2020 09:44:24 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1jeDD7-0002GU-29; Thu, 28 May 2020 07:44:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lukasz.hawrylko@linux.intel.com>) id 1jeDD4-0002GI-Ji
 for tboot-devel@lists.sourceforge.net; Thu, 28 May 2020 07:44:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Pgxxaugq9gOqGF2cNxiAQ4dcJHvLLGoiDKv0FJZaLt8=; b=X4xectz9ppRwTUoHcaXz7+vLou
 9jJX4BZOgK3P2JCTWvxCHjLkIZ4kwo0mgDbFrmAmvu7sUab0cV/Tnxp9g35tm1TTiUIldxbwdzptP
 tS8I5YiGH6p1mMVbHxYdlFx1AbmGUkWYTVicB4AhuePE9W1jVOuOL1Z8loJmcAPrOVQ0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Pgxxaugq9gOqGF2cNxiAQ4dcJHvLLGoiDKv0FJZaLt8=; b=e6NUUKVJlNgkPaBEUDBYQuiJWS
 BDfoLg6q1quYMBHdi5Kb7pyBO9Hb81HuDKJIGiV5dmjGXT2Z/LiKs01mi010i9fetSUQC8LTYsW63
 9rD1h68ZarP6ypmHCMAGw8TIXYYThtWUdGhcvxe/oPV8DYHvG/3hF1BuHOavp1oabKm4=;
Received: from mga01.intel.com ([192.55.52.88])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jeDD2-00Fnov-T0
 for tboot-devel@lists.sourceforge.net; Thu, 28 May 2020 07:44:14 +0000
IronPort-SDR: f+DN4xhd/t0/epxa3UUWsGr0UODBrAvjYzaGVAbT1oddufWiqpZuWSjGBo86i9ozvxZ+1Bjr96
 2F3U2Ush13bA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2020 00:44:06 -0700
IronPort-SDR: sZGyaNIPwy/YlOoj8tLf5duZP0McCSYCJ4EBxJhITAPfG94kOHmFss6Lt8anZPqzYL8slO/N3A
 CAInIqcRyfxQ==
X-IronPort-AV: E=Sophos;i="5.73,444,1583222400"; d="scan'208";a="442856874"
Received: from lhawrylk-desk.ger.corp.intel.com ([10.213.10.205])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2020 00:44:02 -0700
Message-ID: <952021e68c90965520a2b1a1cf11245ab49dd31b.camel@linux.intel.com>
From: Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>
To: Timo Lindfors <timo.lindfors@iki.fi>, tboot-devel@lists.sourceforge.net
Date: Thu, 28 May 2020 09:43:58 +0200
In-Reply-To: <alpine.DEB.2.20.2005280214320.21222@mail.home>
References: <alpine.DEB.2.20.2005081919250.3828@mail.home>
 <3da41313c3b91f154f53f9c2c9645ade6399cff9.camel@linux.intel.com>
 <alpine.DEB.2.20.2005121234280.7218@mail.home>
 <alpine.DEB.2.20.2005231924220.17882@mail.home>
 <alpine.DEB.2.20.2005241914180.17882@mail.home>
 <2b9029d61fed0ca5f4d60a14a90fb01c98f6f007.camel@linux.intel.com>
 <alpine.DEB.2.20.2005251307150.19253@mail.home>
 <alpine.DEB.2.20.2005280214320.21222@mail.home>
User-Agent: Evolution 3.34.4 (3.34.4-1.fc31) 
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: intel.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [192.55.52.88 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1jeDD2-00Fnov-T0
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tboot-devel-bounces@lists.sourceforge.net

Hi Tomo

On Thu, 2020-05-28 at 02:22 +0300, Timo Lindfors wrote:
> Hi,
> 
> On Mon, 25 May 2020, Timo Lindfors wrote:
> > I only see the "original e820 map:" listing. I'm trying to get serial console 
> > to make this easier to debug and to compare how warm-boot and cold-boot 
> > differs without having to compare photos from the screen.
> 
> I bought a second-hand Thinkpad R400 and Thinkpad type 2504 dock that 
> includes a serial port. Then I soldered a relay to the power button and 
> wrote a tool that lets me say
> 
> baremetal_run -o foo.tar foo.img
> 
> to run "foo.img" on real hardware and to collect network, serial, audio 
> and video output automatically.
> 
> Internally this works by setting the laptop boot order so that it tries
> to boot from network first and then from local hard disk. By changing the 
> DHCP configuration I can alternate between PXE booting an initrd that
> writes an image to disk and booting from local disk.
> 
> 
> Anyways, with the help of this I was able to run git bisect. It tells me 
> that the first bad commit is
> 
> changeset:   562:77bca150d0d5
> user:        Lukasz Hawrylko <lukasz.hawrylko@intel.com>
> date:        Fri Feb 21 11:07:00 2020 +0100
> summary:     Add support for EFI memory map parse/modification
> 
> 
> Any idea on how to debug this further?
> 
> -Timo
> 

That's awesome idea to create such environment for an automated testing.

I understand that still you have the same behaviour - cold boot failing,
reboot after Linux working, correct? Please add "dump_memmap=true" to
TBOOT's command line it should enable dumping of EFI memory map.

If you don't see this dump in failing scenario please add
"set debug=mmap" to grub.cfg, now GRUB should print that.

Than you can compare if there are any differences in EFI memory map
between passing and failing scenario. Please also send me both logs. 

Commit, that you have mentioned, adds EFI memory map parsing in TBOOT to
exclude memory occupied by EFI boot services from internal allocator. I
had to do that because in some platforms BIOS puts there data that Linux
wants to access and TBOOT overwrites it.

Thanks,
Lukasz



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
