Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 80C5514A076
	for <lists+tboot-devel@lfdr.de>; Mon, 27 Jan 2020 10:09:56 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1iw0Ow-0005BS-Kp; Mon, 27 Jan 2020 09:09:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lukasz.hawrylko@linux.intel.com>) id 1iw0Ov-0005B7-DQ
 for tboot-devel@lists.sourceforge.net; Mon, 27 Jan 2020 09:09:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qB6PrboLxnLmZioWcarDgcHYKtUgENRqetdPY7FHI5w=; b=DmqL48yGXUMABmqnAQ0AQ1cqbY
 u4kpKIZaQtSG5tF2mBQB+ynXL4fzntko9bHs4WDIyaVOm+nmRtTn53MfVGUswN9mz0eX8DX8wzF+I
 bbRhlDUii3VibPsbtvqgAPg6jt31vWsiDwDc2OkyPJue1Wxyf2tD6ATVKCmybkXsYpG0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=qB6PrboLxnLmZioWcarDgcHYKtUgENRqetdPY7FHI5w=; b=mq2fC30NeEYWhZGVKwA57wS9Ov
 R4rUIUHefilZ9Kdsm4KfCLWPWzMImQqOyQiqImJXLkkxWacaXK8yuobaCxYm3ey/zJTp6GfGXSlCu
 MCPDDYEte/tF7lIx2xhr2woDySVajLRhFBoBpyuFAMTvj5gauUOWdUa3SYyzPqpr/OO0=;
Received: from mga14.intel.com ([192.55.52.115])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iw0Or-001xgm-Qh
 for tboot-devel@lists.sourceforge.net; Mon, 27 Jan 2020 09:09:45 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jan 2020 01:09:35 -0800
X-IronPort-AV: E=Sophos;i="5.70,369,1574150400"; d="scan'208";a="228906158"
Received: from lhawrylk-desk.igk.intel.com ([10.102.89.27])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jan 2020 01:09:34 -0800
Message-ID: <863eefc263b9565226310884c0b16b69fa0b136a.camel@linux.intel.com>
From: Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>
To: Martin Galvan <omgalvan.86@gmail.com>
Date: Mon, 27 Jan 2020 10:09:31 +0100
In-Reply-To: <CAN19L9HESgc2KMSsffTNRx_OZuT2f+bHX4Vfo6AG3P9=PgxQnQ@mail.gmail.com>
References: <CAN19L9G6aATCT2gP_P_spwmK-pv+FBi30pLe0CXRyfFtNBXORw@mail.gmail.com>
 <e79098d128ee35f7c370ab7cb100e6c80d3546ed.camel@linux.intel.com>
 <CAN19L9HLhhsXRU-1h5HT33y-nQOsS+NyBN2PzqYZNAd-cZsp_Q@mail.gmail.com>
 <CAN19L9HESgc2KMSsffTNRx_OZuT2f+bHX4Vfo6AG3P9=PgxQnQ@mail.gmail.com>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1iw0Or-001xgm-Qh
Subject: Re: [tboot-devel] Confused about the TXT register values
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

On Fri, 2020-01-24 at 12:34 -0300, Martin Galvan wrote:
> The TXT.STS values make more sense now, though the PCH DID is still
> incorrect. Is there a way to check whether TXT is enabled other than
> looking at SINIT.BASE and HEAP.BASE?

Please look at txt_verify_platform() function in verify.c there are few
checks that TBOOT does to verify if platform is properly configured for
measured launch.

You can also look at does_acmod_match_platform() in acmod.c, to see how
TBOOT checks if SINIT ACM matches platform. It compares CPU and PCH IDs
from SINIT header to actual values.

Thanks,
Lukasz



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
