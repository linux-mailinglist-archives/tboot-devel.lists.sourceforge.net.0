Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D04442484A6
	for <lists+tboot-devel@lfdr.de>; Tue, 18 Aug 2020 14:20:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1k80b5-00085h-Sj; Tue, 18 Aug 2020 12:20:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lukasz.hawrylko@linux.intel.com>) id 1k80b5-00085T-8C
 for tboot-devel@lists.sourceforge.net; Tue, 18 Aug 2020 12:20:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oMn3ydOquME9J/NAw+a5ikckPpzyFFEg5RSKw8L5KtE=; b=h+ul8MtSxNNkoQAU2TM0a2cDIR
 20L5xK0A6V7Bkv2J5gCO3KVSjmo9g9q9UwBOt8gf8IQF4yhaVCMlAJcQyXnnmWroznnY0kZi0fsHl
 9ieQg0l92Ef8ih/REnxPig1Sk6xFdMF7UJsecoEk2yyPbRjP147MGX++utW6/7F3V+NE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=oMn3ydOquME9J/NAw+a5ikckPpzyFFEg5RSKw8L5KtE=; b=gIMQ4CtyrbpZl7FPMGr/O6fT7v
 DgqVpKlDutzwBTgeoW5QAzY+Q3j+SLFZbuT9yRwfdFjVsDejuZoM45CjZxlRw9ID+QgO9Z0kxFk0Y
 yUb0i4xRXBVWZmGRGgifh5L2+J3752+971q4NxxEkpgBgEq2jEc6SjM2t1MdpArrzhwM=;
Received: from mga03.intel.com ([134.134.136.65])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1k80b3-00BOGw-Bk
 for tboot-devel@lists.sourceforge.net; Tue, 18 Aug 2020 12:20:11 +0000
IronPort-SDR: DdxijBLHQ0HFXWB33Y08Iq67mVFFyYTqzUAm5WYIfZVwIzTTPZQV4jmzprVCkVKd7WdVDX5KnH
 NQ0xkyvpLcBw==
X-IronPort-AV: E=McAfee;i="6000,8403,9716"; a="154860018"
X-IronPort-AV: E=Sophos;i="5.76,327,1592895600"; d="scan'208";a="154860018"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2020 05:20:03 -0700
IronPort-SDR: PLOTlMbXDcKFlTvlC+ZduoB8BNE+cygjYWBesaUF80wammx+im16h1h759VxZlTPDHxTkVd2zR
 Z5u1g/s9uliA==
X-IronPort-AV: E=Sophos;i="5.76,327,1592895600"; d="scan'208";a="296825995"
Received: from lhawrylk-desk.ger.corp.intel.com ([10.213.6.91])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2020 05:20:02 -0700
Message-ID: <0a68f1acaeee8045e3c4d66a5ebcd2682c0a475d.camel@linux.intel.com>
From: Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>
To: Timo Lindfors <timo.lindfors@iki.fi>, tboot-devel@lists.sourceforge.net
Date: Tue, 18 Aug 2020 14:20:00 +0200
In-Reply-To: <alpine.DEB.2.20.2008151133290.17457@mail.home>
References: <alpine.DEB.2.20.2008151133290.17457@mail.home>
User-Agent: Evolution 3.34.4 (3.34.4-1.fc31) 
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: intel.com]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1k80b3-00BOGw-Bk
Subject: Re: [tboot-devel] lcptools-v2 regressions in e73d11a8a2d6
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

Hi Timo

On Sat, 2020-08-15 at 11:42 +0300, Timo Lindfors wrote:
> Hi,
> 
> changeset:   603:e73d11a8a2d6
> user:        Mateusz Mowka <mateusz.mowka@intel.com>
> date:        Wed Jul 01 09:08:25 2020 +0200
> summary:     Update lcptools-v2 to meet requirements from MLE DG rev16.
> 
> seems to re-introduce spelling errors that were fixed in
> 
> changeset:   590:2fbc7ec3b2c8
> user:        Timo Juhani Lindfors <timo.lindfors@iki.fi>
> date:        Sat May 09 20:59:11 2020 +0300
> summary:     Fix spelling errors
> 
> See e.g.
> 
>           if ( *out_file == '\0' ) {
> -            ERROR("Error: no output file specified\n");
> +            ERROR("Error: no ouput file specified\n");
>               return 1;
>           }
> 
> Is this perhaps some merge conflict issue or does lcptool-v2 master data 
> live in some other repository completely and that's why modifications made 
> in tboot repository get overwritten?
> 
> The complete list of spelling errors reported by the debian lintian tool 
> is here:
> 
> I: tboot: spelling-error-in-manpage usr/share/man/man8/lcp2_crtpollist.8.gz ouput output
> I: tboot: spelling-error-in-binary usr/sbin/lcp2_crtpol successfull successful
> I: tboot: spelling-error-in-binary usr/sbin/lcp2_crtpol defiend defined
> I: tboot: spelling-error-in-binary usr/sbin/lcp2_crtpolelt ouput output
> I: tboot: spelling-error-in-binary usr/sbin/lcp2_crtpolelt defiend defined
> I: tboot: spelling-error-in-binary usr/sbin/lcp2_crtpollist succesfully successfully
> I: tboot: spelling-error-in-binary usr/sbin/lcp2_crtpollist successfull successful
> I: tboot: spelling-error-in-binary usr/sbin/lcp2_crtpollist defiend defined
> I: tboot: spelling-error-in-binary usr/sbin/lcp2_mlehash ouput output
> I: tboot: spelling-error-in-binary usr/sbin/lcp2_mlehash Unknonw Unknown
> I: tboot: spelling-error-in-binary usr/sbin/lcp2_mlehash defiend defined
> 
> 
> 
> -Timo
> 

You are right, something gone wrong during merging. Fix will be pushed
in few days when I find a little free time.

Thanks,
Lukasz



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
