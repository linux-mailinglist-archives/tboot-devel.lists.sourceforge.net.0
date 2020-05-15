Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 36D2B1D47C5
	for <lists+tboot-devel@lfdr.de>; Fri, 15 May 2020 10:07:52 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1jZVNm-0001QJ-Oq; Fri, 15 May 2020 08:07:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lukasz.hawrylko@linux.intel.com>) id 1jZVNk-0001QB-Si
 for tboot-devel@lists.sourceforge.net; Fri, 15 May 2020 08:07:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=btDgM4YATpXlTKkf2Hs4Joc57xukAikxh5B7FoDT3nY=; b=gPMBTv9iX9HSUYVAq83vXTASUH
 7/D5LW17fI8sp6qbJJ0p1n1WW5Gibt9u1K8G0fWLpuXVsZdnM9t7q0MDk3ZQ+5XcVlvmme3P5M8MW
 in7Fc0pSNyytH/hE8fZKhwxH3bE7i3Ox7Med59UzM0MfByWkypcHdqnzeUixWrKXu+NI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=btDgM4YATpXlTKkf2Hs4Joc57xukAikxh5B7FoDT3nY=; b=OD+icS4/dGlW/HMUx0rWNKgTm8
 gWAtnZ4p5MJNXHPiHE5qdSn7h/CWMLl4DBQV4i1q3iKcIblNgqhe4nEulfHcXTDsUHGkVFddBngka
 0cRmJx2g5uugANsyfl8oZxmvcSE2H3oAP41oa9o4LJaEpi61RccDT9UatLwH7hCaaCDk=;
Received: from mga03.intel.com ([134.134.136.65])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jZVNj-00H7eN-NV
 for tboot-devel@lists.sourceforge.net; Fri, 15 May 2020 08:07:48 +0000
IronPort-SDR: xaKrdBngrubxb7gxVCIFLs1tfkhG7fnpO2s/g/K7vhPfp7eX7/oOhw4P+1EsbD3fj/7IsP+H0Z
 er6IqvsoGLPQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2020 01:07:42 -0700
IronPort-SDR: h55HiyPc8+cpzKfQeDZVPpQU0wcAwcaS+pS7IXQvwO/JI85mj30LvjRCdpv3PlrzeQm/jSaXJL
 mz1cUoGaBXBQ==
X-IronPort-AV: E=Sophos;i="5.73,394,1583222400"; d="scan'208";a="266529962"
Received: from lhawrylk-desk.ger.corp.intel.com ([10.213.20.117])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2020 01:07:40 -0700
Message-ID: <3d421472c4d7f92bddd40b715025283e8178d3bb.camel@linux.intel.com>
From: Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>
To: Timo Lindfors <timo.lindfors@iki.fi>
Date: Fri, 15 May 2020 10:07:38 +0200
In-Reply-To: <alpine.DEB.2.20.2005141640030.9904@mail.home>
References: <alpine.DEB.2.20.2005102344150.5921@mail.home>
 <109c0b38a6b6d82452ff4acc4ef8b10a6fd2b3eb.camel@linux.intel.com>
 <alpine.DEB.2.20.2005141640030.9904@mail.home>
User-Agent: Evolution 3.34.4 (3.34.4-1.fc31) 
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1jZVNj-00H7eN-NV
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

On Thu, 2020-05-14 at 16:42 +0300, Timo Lindfors wrote:
> Hi,
> 
> On Thu, 14 May 2020, Lukasz Hawrylko wrote:
> > Agree, this should be changed. I have also renamed acminfo to txt-
> > acminfo, now all these tools has 'txt-' prefix.
> 
> Great. I guess you also updated the man pages to refer to these new names? 
> Also docs/Makefile should list man pages for all commands that are 
> installed.
> 
> -Timo
> 

Done.

Thanks,
Lukasz



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
