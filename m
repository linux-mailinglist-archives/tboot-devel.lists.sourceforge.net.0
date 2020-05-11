Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4813B1CDDF3
	for <lists+tboot-devel@lfdr.de>; Mon, 11 May 2020 16:59:19 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1jY9th-0001qY-Fz; Mon, 11 May 2020 14:59:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lukasz.hawrylko@linux.intel.com>) id 1jY9tW-0001qB-A4
 for tboot-devel@lists.sourceforge.net; Mon, 11 May 2020 14:59:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Q3O8lwvX54vKTj6KclHV1X9iFwsHmsiMOU88ciYysGc=; b=fD9K2CnJyLW9lFtFCGqFCScHQG
 bWxHc57uXSEygZJGVf+BlrLwnBN7FPI+qa5KWU8Rk+JfctFmbTgZ3x0cvtUTOTrBd407zvNQmIhBI
 ldSc7D6yN86PCgdvC/RUYCfvaz/e3+pUMNCpjWakmsqqMhKeLpIRJa1HMK7ZESLUTOks=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Q3O8lwvX54vKTj6KclHV1X9iFwsHmsiMOU88ciYysGc=; b=PG0k1mx/JUc0WDaMG6wKkQbQ95
 f0vBx9/P6PHm8WmtSuHe+Is6T3gErLm/XJ/5sZF4bNuyAqkMIjbV2Dd2t+uCOHl4hSgZ013hJ+grk
 RouPuPLOHS5PLpZQgWcIRWV9PjkKF45K0uuxguYdleTCwaptPi08hp1gGEN/aucmyHds=;
Received: from mga07.intel.com ([134.134.136.100])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jY9tU-00966V-Gm
 for tboot-devel@lists.sourceforge.net; Mon, 11 May 2020 14:59:02 +0000
IronPort-SDR: fooDp4PL9i0zlUchEQJx3Ex2MTqBHiePEsmeaKKpmN5A4ep3Be5uIr2dA6ITSWwAuoRmnq+aIM
 S3xsrQa2YPZw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2020 07:58:54 -0700
IronPort-SDR: M7D3IQL8vy6+NDuLHaIkkPa/o9ue9vSId7rTc2fvToD6CqD1GBA/o7zPevEkL5A1Mpf5m6prWq
 KTO2IlI3iOmA==
X-IronPort-AV: E=Sophos;i="5.73,380,1583222400"; d="scan'208";a="408940701"
Received: from lhawrylk-desk.ger.corp.intel.com ([10.213.0.181])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2020 07:58:53 -0700
Message-ID: <f0cdf869d4843d174208cb4a908f5b126538869a.camel@linux.intel.com>
From: Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>
To: Timo Lindfors <timo.lindfors@iki.fi>, tboot-devel@lists.sourceforge.net
Date: Mon, 11 May 2020 16:58:51 +0200
In-Reply-To: <alpine.DEB.2.20.2005092055070.4905@mail.home>
References: <alpine.DEB.2.20.2005092055070.4905@mail.home>
User-Agent: Evolution 3.34.4 (3.34.4-1.fc31) 
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1jY9tU-00966V-Gm
Subject: Re: [tboot-devel] PATCH: fix/spelling-fixes-1
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

On Sat, 2020-05-09 at 21:02 +0300, Timo Lindfors wrote:
> Hi,
> 
> I made some spelling fixes. My mercurial skills are quite rusty but I 
> think you should be able to access them by pulling the 
> fix/spelling-fixes-1 branch from https://lindi.iki.fi/lindi/hg/tboot
> 
> Should I prefer sending patches over email with "hg email"?
> 
> -Timo
> 
> 

Hi Timo

Thank you for patches, I will look at them this week. Next time, please
use 'hg email' if this is not a problem for you, it is easier to
maintain where all patches go through mailing list directly.

Thanks,
Lukasz



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
