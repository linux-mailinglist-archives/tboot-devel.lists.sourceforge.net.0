Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DB1EE1D7A4D
	for <lists+tboot-devel@lfdr.de>; Mon, 18 May 2020 15:47:18 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1jag6s-0006vV-U6; Mon, 18 May 2020 13:47:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lukasz.hawrylko@linux.intel.com>) id 1jag6r-0006vM-DU
 for tboot-devel@lists.sourceforge.net; Mon, 18 May 2020 13:47:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UyEJxMwsHbGKcJHJ1rNP/tc/dcgFmK02+jYkkRfRc4s=; b=TisNGP6IFupM87JPu2OYU1IM0J
 EjbrYG8TtDDqQzt3UvxQlj0AnhH0gVU0eXKPw+auZgG6jasp1O9ACwZkbMuItOs29085VQ+nrm9v3
 EYB4jO6A6n8PQ202cx88erqHAtKP6HQfommQdpuVO4ED2cIuv8EyrowmY4LBSiuNA3Kw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=UyEJxMwsHbGKcJHJ1rNP/tc/dcgFmK02+jYkkRfRc4s=; b=AX09NRAigH9/Jy7/o9uLKuLFyR
 YLc6RgSEf6Qsxb9SO2AR5/BDhpdJxHDila8JL09jpIf95Up//dAeEDYlxKgcfVMML8nLIM07zQ3i+
 EWr+69NQO+FWg0VM/3R/Oa5hGLjcUP7Nz/tjcO/LeSDZqyih6BVmRQ5OWhRPWcMIBw9I=;
Received: from mga03.intel.com ([134.134.136.65])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jag6q-00Dx8S-AY
 for tboot-devel@lists.sourceforge.net; Mon, 18 May 2020 13:47:13 +0000
IronPort-SDR: R0sdWagEFrktErf765CTtXRgYlY17t0uZ6lQ/7BKLg8SU/Tc8p9A7cckyaoqM0ERoyapQYiUMs
 QL3tqnxhoPNQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2020 06:45:44 -0700
IronPort-SDR: sPXykurOEmOGje0cU/Ejdjyj2stVOCH5dw5Bvt5M/mevjyrf41Z/hS8hBQWIRuPruSTaiyqmZZ
 W5vL3EcDP+Eg==
X-IronPort-AV: E=Sophos;i="5.73,407,1583222400"; d="scan'208";a="308111308"
Received: from lhawrylk-desk.ger.corp.intel.com ([10.213.6.78])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2020 06:45:43 -0700
Message-ID: <6d5a4ac27149a7cd6d8d87061340790f6cdf85b6.camel@linux.intel.com>
From: Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>
To: Timo Lindfors <timo.lindfors@iki.fi>, tboot-devel@lists.sourceforge.net
Date: Mon, 18 May 2020 15:45:40 +0200
In-Reply-To: <alpine.DEB.2.20.2005161559040.12143@mail.home>
References: <alpine.DEB.2.20.2005161559040.12143@mail.home>
User-Agent: Evolution 3.34.4 (3.34.4-1.fc31) 
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1jag6q-00Dx8S-AY
Subject: Re: [tboot-devel] txt-acminfo report incorrect data if msr module
 is not loaded
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

On Sat, 2020-05-16 at 16:03 +0300, Timo Lindfors wrote:
> Hi,
> 
> while testing latest tboot with latest debian unstable I noticed that 
> txt-acminfo reports "ACM does not match platform" for all ACM modules. It 
> seems that this happens since /dev/cpu/0/msr does not exist by default in 
> Debian. There is an error "Error: failed to open /dev/cpu/0/msr" but since 
> txt-acminfo reports so much information this can easily be missed by a 
> user. After I run "modprobe msr" txt-acminfo behaves normally again.
> 
> Could we make missing /dev/cpu/0/msr a fatal error that should suggest the 
> user to run "modprobe msr"? In any case txt-acminfo should not report 
> "ACM does not match platform" for a valid ACM file. It should report 
> "Could not determine if ACM matches platform (maybe you need to modprobe 
> msr)?" or something.
> 
> -Timo
> 
> 

Hi Timo

That sounds reasonable. Could you please send a patch with that change?

Thanks,
Lukasz



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
