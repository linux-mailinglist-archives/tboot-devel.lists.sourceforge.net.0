Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E2AA19C000
	for <lists+tboot-devel@lfdr.de>; Thu,  2 Apr 2020 13:15:35 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1jJxol-0000oE-4D; Thu, 02 Apr 2020 11:15:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lukasz.hawrylko@linux.intel.com>) id 1jJxoi-0000o5-P1
 for tboot-devel@lists.sourceforge.net; Thu, 02 Apr 2020 11:15:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dasAWJC/ndrAa/lkK/M50G/xgmCSDaQiEMzNp8qf3Cg=; b=TkPLJqh6G9XTpr2aGoC9qzjORf
 Q7zAzzR+8bdsTQZl5K5CYioJtDxIEYi6fS0aA0hbHsbgKeNRCwkDxFz87WVahytjFd5ARnO7bKvtG
 saSEClFSRPg1L3k1G4Te3Ol26Le1nWxIV9s/d5lgAlIp700U8BjgCLrWEj3hBBgnrFvo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=dasAWJC/ndrAa/lkK/M50G/xgmCSDaQiEMzNp8qf3Cg=; b=PvV63oRtGzPCAl377yU7AXl5o/
 rRVJC1XLQj40oYDaDOLaKMiAAy1nsXeXKQ7ANIhGtmXBtoYqMmjWQJXhdtuDUK84kpoSNIpxjh44H
 vBSwt1MO24h7yzbF7ieBT+VcQzlcdYqwmrmW+j7wTddN6z+eFpYxVGcvCmHzJ9CRCAHs=;
Received: from mga05.intel.com ([192.55.52.43])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jJxoe-00Gda0-2M
 for tboot-devel@lists.sourceforge.net; Thu, 02 Apr 2020 11:15:24 +0000
IronPort-SDR: vlNU6vroL9OemGLGSAGLI8zVYUFlOjg8eci0H8dieHw1zKNaJiOH6GaOjAErmZqSRdbD5c3hPg
 UxlBBXvRGBkA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2020 03:59:42 -0700
IronPort-SDR: nZP4Zzl2z9uY5PBv77ozNHpbpjBuG64FmihlnrDaY/BOiH0T/MlfjZTZA20QVy4sJ+G9ucsqv4
 FpTEn9cP+p8g==
X-IronPort-AV: E=Sophos;i="5.72,335,1580803200"; d="scan'208";a="449582798"
Received: from lhawrylk-desk.ger.corp.intel.com ([10.213.11.132])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2020 03:59:41 -0700
Message-ID: <dc275925ce5f44633594ec3fd6732b13f3abeb4c.camel@linux.intel.com>
From: Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>
To: Timo Lindfors <timo.lindfors@iki.fi>, tboot-devel@lists.sourceforge.net
Date: Thu, 02 Apr 2020 12:59:39 +0200
In-Reply-To: <alpine.DEB.2.20.2003312317470.19721@mail.home>
References: <alpine.DEB.2.20.2003312317470.19721@mail.home>
User-Agent: Evolution 3.34.4 (3.34.4-1.fc31) 
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1jJxoe-00Gda0-2M
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tboot-devel-bounces@lists.sourceforge.net

On Tue, 2020-03-31 at 23:27 +0300, Timo Lindfors wrote:
> Hi,
> 
> if I have the following ACM modules in /boot
> 
> 018c4c0bc64cad7c939061e111937849f61af395c9981a03ac4a10083058aa5d 
> 4th_gen_i5_i7_SINIT_75.BIN
> 0848adfea4c9479b1cd096aeda1d4a3afe309dd45ca43a1e8d8b3cf972c9c14f
> 6th_7th_gen_i5_i7-SINIT_79.bin
> 193fc2b763bae1b1eebaf15452b395fd5153043190eb61dd86e246914ee7d80e
> 6th_gen_i5_i7_SINIT_71.BIN
> 
> update-grub generates a configuration file like
> 
> echo    'Loading tboot 1.9.7 ...'
>           multiboot2      /tboot.gz logging=serial,memory
>           echo    'Loading Linux...
>           module2 /vmlinuz...
>           echo    'Loading initial ramdisk ...'
>           module2 /initrd.img...
>           echo    'Loading sinit 4th_gen_i5_i7_SINIT_75.BIN ...'
>           module2 /4th_gen_i5_i7_SINIT_75.BIN
>           echo    'Loading sinit 6th_7th_gen_i5_i7-SINIT_79.bin ...'
>           module2 /6th_7th_gen_i5_i7-SINIT_79.bin
>           echo    'Loading sinit 6th_gen_i5_i7_SINIT_71.BIN ...'
>           module2 /6th_gen_i5_i7_SINIT_71.BIN
> 
> Unfortunately if modules are ordered like this the machine will just 
> reboot after a while.
> 
> The machine boots correctly if I order "6th_gen" to be before 
> "6th_7th_gen" in the above list.
> 
> I'm not quite sure which part should be fixed here:
> 
> 1) Is this a bug in the file 6th_7th_gen? If yes, should it be somehow 
> blacklisted and/or documented so that users would avoid it?
> 
> 2) Is this a bug in tboot's logic that tries to pick a matching module? I 
> could not see anything wrong in the code.
> 
> 3) Should we fix this in the shell script that generates the configuration 
> file so that it orders the files "correctly"?
> 

Hi Timo

There is a bug in TBOOT that may results in overlapping loaded SINITs by
TBOOT's logs. That problem occurs when you load multiple SINITs in GRUB
and in most cases the last one will be corrupted. That's why, when TBOOT
executes GETSEC[SENTER] CPU fails on SINIT integrity check and resets
platform.

The workaround for that issue is to have only one SINIT in grub.cfg, so
in your scenario you should remove all SINITs except 6th_gen from /boot
and recreate grub.cfg

Thanks,
Lukasz



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
