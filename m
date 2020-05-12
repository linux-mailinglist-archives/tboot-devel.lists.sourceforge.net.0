Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 85F0B1CEF7A
	for <lists+tboot-devel@lfdr.de>; Tue, 12 May 2020 10:51:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1jYQd8-0008Ko-LN; Tue, 12 May 2020 08:51:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lukasz.hawrylko@linux.intel.com>) id 1jYQd6-0008Ke-69
 for tboot-devel@lists.sourceforge.net; Tue, 12 May 2020 08:51:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eQlnBWaHzao2I17gUWaXySf5FOpWBo6NLf4guYDsgzg=; b=GcrYmJiAv0Jv293nTtK95lZw3m
 n0ddt8+1DsoovbhbJUT0AL1ePIut7b8t9IRgddsDXEyx9/dxCbxqTIu/gMB1PqGMEqphN/NogPLY9
 8mwu2VCsF/hQkbk8f9GnnZg1xzPpgMcrbNPb7KRI8Nw3gatl4TRhmfh8eZhYAivaRV1E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=eQlnBWaHzao2I17gUWaXySf5FOpWBo6NLf4guYDsgzg=; b=hxtLhS5loHEX6gSKPdz1c5Rrgh
 h/gLGzTwStMMDRU2MEIY66x/RldOYFqdMlsPP+uxc1zVdbqpZ6hQECJPPrt6EwshUhgz39p+n3rAP
 d6+/1Z0/Rzu2oQ8N14kRzL/AYu8G9LPtnAGIxr4PxSsCQP+4P0p3SBkvFt6dlYXiy2rY=;
Received: from mga03.intel.com ([134.134.136.65])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jYQd4-00AnP2-G5
 for tboot-devel@lists.sourceforge.net; Tue, 12 May 2020 08:51:12 +0000
IronPort-SDR: aL+R4KniZLWzTsMIluu1PkveI7eXqwWn6vihGsrjmECPx0C818emi5SUn/XkVbgfBq4APEY0ob
 0bqc7jdoefVQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2020 01:51:04 -0700
IronPort-SDR: N0lo+LgzBVsvvpIixaqG9Ptmqdplt7w4uN5bro2EiPRKOgsl0fIZhZ7kirq2YM3WohKLP6hwSG
 0Sza/qZkMZFg==
X-IronPort-AV: E=Sophos;i="5.73,383,1583222400"; d="scan'208";a="437022640"
Received: from lhawrylk-desk.ger.corp.intel.com ([10.213.1.163])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2020 01:51:03 -0700
Message-ID: <0006538262f002e44d5bdc18e338e294fd5185e2.camel@linux.intel.com>
From: Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>
To: Timo Lindfors <timo.lindfors@iki.fi>, tboot-devel@lists.sourceforge.net
Date: Tue, 12 May 2020 10:50:58 +0200
In-Reply-To: <alpine.DEB.2.20.2005101501330.5531@mail.home>
References: <alpine.DEB.2.20.2005101501330.5531@mail.home>
User-Agent: Evolution 3.34.4 (3.34.4-1.fc31) 
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1jYQd4-00AnP2-G5
Subject: Re: [tboot-devel] packaging for debian,
 some clarifications for licensing?
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

On Sun, 2020-05-10 at 15:12 +0300, Timo Lindfors wrote:
> Hi,
> 
> I'm planning to package tboot for Debian. As part of the process I went 
> through all the copyright and license notices in tboot-1.9.12.tar.gz.gpg.
> 
> Everything looks pretty smooth but I do have two concerns:
> 
> 1) lcptools/Linux_LCP_Tools_User_Manual.doc has the paragraph
> 
> "This document and the software described in it are furnished under 
> license and may only be used or copied in accordance with the terms of the 
> license."
> 
> but it is not at all clear what license this is talking about. Is it the 
> BSD-3-clause license used in most other files or something else? Would it 
> be possible to clarify this either in this file or in the COPYING file?
> 
> 2) The COPYING file states
> 
> "Files which do not contain any copyright information are assumed to be
> copyrighted by Intel Corporation. All other files contain their copyright 
> and license at the beginning of the file."
> 
> This is a good clarification but this file does not actually explain what 
> the license of files without license information is. Is it the 
> BSD-3-clause license used in most files? The files without license 
> information that I could identify are:
> 

Hi Timo

The base TBOOT licence is BSD-3-clause, however some files that comes
from other projects have different licenses (but all of them are
compatible with BSD-3-clause).

I can add information to COPYING file that looks like: "All files that
do not have license header, have BSD-3-clause license and are
copyrighted by Intel Corporation". Will it solve all license gaps in
your opinion?

Thanks,
Lukasz



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
