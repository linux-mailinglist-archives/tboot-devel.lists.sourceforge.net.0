Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 634613F893C
	for <lists+tboot-devel@lfdr.de>; Thu, 26 Aug 2021 15:42:02 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1mJFdj-000875-62; Thu, 26 Aug 2021 13:41:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <lukasz.hawrylko@linux.intel.com>) id 1mJFdZ-00086i-Ta
 for tboot-devel@lists.sourceforge.net; Thu, 26 Aug 2021 13:41:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PqE953K+ERTO+xL0lLB49R2op7PSUSUUVjeXb7G6OTU=; b=lpJMz7p8V3GydV1hLwjVEyiydm
 DdtK6Z4QLL19ijnG9ecab7xu658pM8tH2yB1J3Kpzni7kacH8qNY1SeNpq4d/vfFFpk+jKoopCx1k
 lQ2sBzMn0j92JlEUQ28ueipbj0zjsdB8MKXQsVZaRNmsAzfIIn49n8g2nV6y1/QmZUJ8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=PqE953K+ERTO+xL0lLB49R2op7PSUSUUVjeXb7G6OTU=; b=achKHoMGgOmcz89kyc+uOs6x7x
 6K9CdMxoqIAz2g7MhmqCO5jhwgxHhMk6LXODwfiak5thfR4S1aqZASF/qyIaJ0X4KaIH2lSj7PJG/
 bq+iovp4ey+lMgYi50T9U2DNcwQ0nspnv63GwcIy9IklZKXgn5HD3+SSYT0AUXCILf9w=;
Received: from mga18.intel.com ([134.134.136.126])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mJFdU-0000VX-K5
 for tboot-devel@lists.sourceforge.net; Thu, 26 Aug 2021 13:41:42 +0000
X-IronPort-AV: E=McAfee;i="6200,9189,10087"; a="204877890"
X-IronPort-AV: E=Sophos;i="5.84,353,1620716400"; d="scan'208";a="204877890"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2021 06:41:34 -0700
X-IronPort-AV: E=Sophos;i="5.84,353,1620716400"; d="scan'208";a="456852348"
Received: from dkilanow-mobl.ger.corp.intel.com ([10.249.147.252])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2021 06:41:33 -0700
Message-ID: <fc5f83929d442a377b2100f8180afbbd9569cc85.camel@linux.intel.com>
From: Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>
To: Timo Juhani Lindfors <timo.lindfors@iki.fi>, 
 tboot-devel@lists.sourceforge.net
Date: Thu, 26 Aug 2021 15:41:30 +0200
In-Reply-To: <20210825085826.6709-1-timo.lindfors@iki.fi>
References: <20210825085826.6709-1-timo.lindfors@iki.fi>
User-Agent: Evolution 3.38.3 (3.38.3-1.fc33) 
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1mJFdU-0000VX-K5
Subject: Re: [tboot-devel] [PATCH] Support higher resolution monitors
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

On Wed, 2021-08-25 at 11:58 +0300, Timo Juhani Lindfors wrote:
> From: Timo Lindfors <timo.lindfors@iki.fi>
> 
> Testing done: Boot tboot with a 2560x1440 monitor. Verify that no
> output is visible without this patch, and that output is correct with
> this patch. This was tested on an HP EliteDesk 800 G2 with BIOS
> version 2.17.
> 
> Signed-off-by: Timo Juhani Lindfors <timo.lindfors@iki.fi>

Thank you for the patch, I have pushed it upstream.

Lukasz



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
