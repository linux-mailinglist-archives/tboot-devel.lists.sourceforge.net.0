Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7004B1D79EC
	for <lists+tboot-devel@lfdr.de>; Mon, 18 May 2020 15:34:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1jafu3-0007L1-Eq; Mon, 18 May 2020 13:33:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lukasz.hawrylko@linux.intel.com>) id 1jafu1-0007Ks-LA
 for tboot-devel@lists.sourceforge.net; Mon, 18 May 2020 13:33:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AuC/b3UQK1Mjh98QIr2ZRs70dDGz6L309Bv8KNC1ty4=; b=YrsV7+rDQPTRoUD24H3g+DZ7Hj
 N84nv6grTU8MdMZcerSA40h4fucYKbjaaEITb7U+kSPpXtGrckR9pWSlvB4j56SMlueR/c7UNBbax
 yamL8iLR1hVDuRGTJbW8Uu/3G2DwaoxKw6t/4HVbpMMQBQ1wEfh9JXb6yfyGp5pFLUfg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=AuC/b3UQK1Mjh98QIr2ZRs70dDGz6L309Bv8KNC1ty4=; b=aie3xKDkd8VuWQNt77GBo3mc6Y
 hAKcqUyfV0YmVF4nLzhxSwLIk0RCzyCLOCaAnBQqKsDI0j6mnKeW9RhhoBLvd8rZn+FtdPuh91k0L
 OURpA0earMfOVrjcsCRPtJ3KIh3tR/KNvS+IanBE0IMc25AfZvqNcUpfU24IoMUQh1ng=;
Received: from mga06.intel.com ([134.134.136.31])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jaftz-00DwD8-QZ
 for tboot-devel@lists.sourceforge.net; Mon, 18 May 2020 13:33:57 +0000
IronPort-SDR: R7Jmyrx4+taVzaB8RrUsK5eBKeVamHU0vOeYARG/oAhTISm0VC7xexjE3LWkkwEal+ClSpDbYS
 Gb5r0hINVKZw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2020 06:33:42 -0700
IronPort-SDR: 3sOp6B65adiAojVfP3AgAqvfr+hFPBpVtMAUknfY3Y9ATddzVKwXMDVL+2gppU9ZbLif2Ts8A8
 bLB2fSPqh5dQ==
X-IronPort-AV: E=Sophos;i="5.73,407,1583222400"; d="scan'208";a="263955011"
Received: from lhawrylk-desk.ger.corp.intel.com ([10.213.6.78])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2020 06:33:42 -0700
Message-ID: <5a16744eca4b4bd56a795ba37e41726f0f16c090.camel@linux.intel.com>
From: Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>
To: Timo Lindfors <timo.lindfors@iki.fi>
Date: Mon, 18 May 2020 15:33:39 +0200
In-Reply-To: <alpine.DEB.2.20.2005151805340.11206@mail.home>
References: <alpine.DEB.2.20.2005102344150.5921@mail.home>
 <109c0b38a6b6d82452ff4acc4ef8b10a6fd2b3eb.camel@linux.intel.com>
 <alpine.DEB.2.20.2005141640030.9904@mail.home>
 <3d421472c4d7f92bddd40b715025283e8178d3bb.camel@linux.intel.com>
 <alpine.DEB.2.20.2005151805340.11206@mail.home>
User-Agent: Evolution 3.34.4 (3.34.4-1.fc31) 
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: mail-archive.com]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1jaftz-00DwD8-QZ
Subject: Re: [tboot-devel] rename parse_err?
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tboot-devel-bounces@lists.sourceforge.net

On Fri, 2020-05-15 at 18:13 +0300, Timo Lindfors wrote:
> Hi,
> 
> On Fri, 15 May 2020, Lukasz Hawrylko wrote:
> > Done.
> 
> Thanks, I'll do some testing and ask for further feedback. Would it be 
> possible to release a new version after some time with all these
> changes so that they would be part of the eventual Debian upload?

1.9.12 was released recently, so I don't have right now plans for new
release timeline. There are few more changes that I am working on right
now and I want to include them in next release.

> 
> Btw, can you recommend some tool for defining an NVRAM region that would 
> allow me to specify the DRTM PCR values that need to match before it can 
> be accessed? tpm_nvdefine -f works only with PCRs <= 15. I sent a patch
> last summer to fix this but the project does not seem to be very active
> and the patch appears to have been forgotten:
> 
> https://www.mail-archive.com/trousers-tech@lists.sourceforge.net/msg00684.html
> 
> 
> As far as I understand, the defindex tool in tboot does not let me specify 
> PCR values either. I need this for forward-sealing of data across 
> updates.
> 

As you are using trousers I guess that you have TPM 1.2 am I right? It
is EOL now that's why nobody cares about trousers project, is it
possible in your platform to use TPM 2.0? I highly recommend to upgrade,
than you can use tpm2-tools.

Thanks,
Lukasz



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
