Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DF0203B4595
	for <lists+tboot-devel@lfdr.de>; Fri, 25 Jun 2021 16:31:13 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1lwmrK-00040S-HU; Fri, 25 Jun 2021 14:31:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lukasz.hawrylko@linux.intel.com>) id 1lwmrJ-00040E-5z
 for tboot-devel@lists.sourceforge.net; Fri, 25 Jun 2021 14:31:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+3jhgawMh1jnT8pAqLTMHQrz+861rxFauXLjTx5N51k=; b=RtebaOgD2SWcPxcgVblO0IJ9oo
 inHwpIJ1FS93lp402AKYwHY8L3mTiOJQtRufJOThhz3EqZoP47bGR+OMbRO23cTqCZFCGOcRtlAcV
 srlbe5Uf2sY4edDOlClHcA65nPluWR6l9ZyOLop19vfnyuaa/T2ni8tTysMU7wA/fTDQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+3jhgawMh1jnT8pAqLTMHQrz+861rxFauXLjTx5N51k=; b=D9DaPStegD84u6AOTNHzXD+AQu
 owMIACyQKDY7RQ3c3qrmEHLD47OjsO52tzpJfPpzo7vkWscH2JdrKBls0UCOagVzKJ5NoPyJ1K30z
 CMEMwrxImpQB8pS0g8SjQVRO8CQHrNXz6fvzFwHZgkluul0RRYuJaNanEhgrHiqrRmRY=;
Received: from mga17.intel.com ([192.55.52.151])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lwmr9-0002Ox-KB
 for tboot-devel@lists.sourceforge.net; Fri, 25 Jun 2021 14:31:05 +0000
IronPort-SDR: ZmyHgj1N8Qk4ZXL8uOOyibLChRoxUlbFCq3ac1L9o2qu4HNq0ic9EUuD8rudQC6l/Sm7g6JT/n
 lcYGhqcH0/4g==
X-IronPort-AV: E=McAfee;i="6200,9189,10026"; a="188058318"
X-IronPort-AV: E=Sophos;i="5.83,299,1616482800"; d="scan'208";a="188058318"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2021 07:15:23 -0700
IronPort-SDR: /GcHGGEiMRCK03vuO8ja75ZIvr8ezODNMHc/8zn8CWvjRjVCAhu62blLCL3Fqf7/HiZ8KMPZ1+
 Md8/jEbRdEyQ==
X-IronPort-AV: E=Sophos;i="5.83,299,1616482800"; d="scan'208";a="488199787"
Received: from ebrosekx-mobl.ger.corp.intel.com ([10.249.34.216])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2021 07:15:21 -0700
Message-ID: <38fcb6e6fa21be13cb685aa8c1da2c1df0cd6dc3.camel@linux.intel.com>
From: Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>
To: Tony Camuso <tcamuso@redhat.com>, tboot-devel@lists.sourceforge.net
Date: Fri, 25 Jun 2021 16:15:18 +0200
In-Reply-To: <7b61ac19-b3c4-3a0f-4530-3ebad6cd36fb@redhat.com>
References: <7b61ac19-b3c4-3a0f-4530-3ebad6cd36fb@redhat.com>
User-Agent: Evolution 3.38.3 (3.38.3-1.fc33) 
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1lwmr9-0002Ox-KB
Subject: Re: [tboot-devel] SSL3 compliance updates
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

Hi Tony

On Thu, 2021-06-24 at 10:32 -0400, Tony Camuso wrote:
> While SSL3 will provide backward compliance for deprecated
> functions for a while, there are a number of them in tboot
> that must be updated before backwards compliance is dropped
> in SSL3.
> 
> Is there an ETA for SSL3 compliance?


Please keep in mind that OpenSSL 3.0 has not been released yet, it's
currently on release candidate state.

TBOOT's code refactoring to be compliant with OpenSSL 3.0 is scheduled
for next release. I expect that it will be ready in August 2021. This
release will NOT drop compatibility with OpenSSL 1.1 and I suggest to
use this version till version 3.0 become stable.

Thanks,
Lukasz



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
