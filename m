Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DF5E3419398
	for <lists+tboot-devel@lfdr.de>; Mon, 27 Sep 2021 13:50:03 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1mUp8r-0006y7-Cp; Mon, 27 Sep 2021 11:49:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lukasz.hawrylko@linux.intel.com>) id 1mUp8p-0006xk-S2
 for tboot-devel@lists.sourceforge.net; Mon, 27 Sep 2021 11:49:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SVoeYV4nrInRlDhjhGgALTonjWFpOvz06bc7SFw6bTw=; b=FFkQOmDNezJ90spLFKf7TCEb1P
 A/2fYg6vGC7s5aiz1HMSD4FbFz4PATM2EhCfsLm95Blm5JCzYDO5lQ4k3O82+Z5FVxmKOQtzd2eSL
 BZXVh/1YitgmrxChj3Ptk3Zc+xB2u3Q5RKULII1ysOPswJaD9MXr9zxcRvzEr/lOQYDo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=SVoeYV4nrInRlDhjhGgALTonjWFpOvz06bc7SFw6bTw=; b=myIxhxUG3Bvbn4vQXxDnW5c9SU
 QrVpL+SXgCoAvm8ZUrY9bB/JvDi0+nNsKn1WTn7jCvyJX7YCGWZVgpQ4uWyoI/4JbRqJo0GdZnBA6
 t1hFmojWF63VrLeqhPiGE65NuNTquD9ujFOwvQlHe849iYDoE7ZgSHibS9dfRRG6mDL8=;
Received: from mga06.intel.com ([134.134.136.31])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mUp8o-007Pze-0Y
 for tboot-devel@lists.sourceforge.net; Mon, 27 Sep 2021 11:49:51 +0000
X-IronPort-AV: E=McAfee;i="6200,9189,10119"; a="285470726"
X-IronPort-AV: E=Sophos;i="5.85,326,1624345200"; d="scan'208";a="285470726"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2021 04:49:43 -0700
X-IronPort-AV: E=Sophos;i="5.85,326,1624345200"; d="scan'208";a="475892010"
Received: from nipunpan-mobl1.ger.corp.intel.com ([10.252.36.213])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2021 04:49:42 -0700
Message-ID: <efa17770eb9ecd5d34be353793450171ab95f5a5.camel@linux.intel.com>
From: Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>
To: Loris Wilbert <loris.wilbert@outlook.fr>, 
 "tboot-devel@lists.sourceforge.net" <tboot-devel@lists.sourceforge.net>
Date: Mon, 27 Sep 2021 13:49:39 +0200
In-Reply-To: <PA4P191MB1664C5127164099A9989D8009FA29@PA4P191MB1664.EURP191.PROD.OUTLOOK.COM>
References: <PA4P191MB1664AB08B4D7E7B035C25D309FA19@PA4P191MB1664.EURP191.PROD.OUTLOOK.COM>
 <e069c86ccfbb0b0068c2244fe6835d1324f52e9b.camel@linux.intel.com>
 <PA4P191MB1664C5127164099A9989D8009FA29@PA4P191MB1664.EURP191.PROD.OUTLOOK.COM>
User-Agent: Evolution 3.38.3 (3.38.3-1.fc33) 
MIME-Version: 1.0
X-Spam-Score: -2.3 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, 2021-09-22 at 08:18 +0000, Loris Wilbert wrote: >
 Hi Lukasz, > > I've attached full TBOOT logs to this mail. > > Thank you for
 you assistance. This looks like an issue with TPM. Is it possible to replace
 TPM module on the system? Did you try to run TBOOT on another system with
 the same specs? 
 Content analysis details:   (-2.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.31 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [134.134.136.31 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
X-Headers-End: 1mUp8o-007Pze-0Y
Subject: Re: [tboot-devel] Issue with warm reboot
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

On Wed, 2021-09-22 at 08:18 +0000, Loris Wilbert wrote:
> Hi Lukasz,
> 
> I've attached full TBOOT logs to this mail.
> 
> Thank you for you assistance.

This looks like an issue with TPM. Is it possible to replace TPM module
on the system? Did you try to run TBOOT on another system with the same
specs?

Thanks,
Lukasz





_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
