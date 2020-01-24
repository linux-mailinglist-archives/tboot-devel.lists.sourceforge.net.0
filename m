Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 770AB148949
	for <lists+tboot-devel@lfdr.de>; Fri, 24 Jan 2020 15:34:19 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1iv02I-0000VA-22; Fri, 24 Jan 2020 14:34:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lukasz.hawrylko@linux.intel.com>) id 1iv02F-0000Ui-Ub
 for tboot-devel@lists.sourceforge.net; Fri, 24 Jan 2020 14:34:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GqSfsSzVOLSoYRa2Y8oF2jl7P9ZY+t8jdGfWgrxAt/8=; b=R20gE6dFframUT+ZQBqsGnXLRE
 YM+zmlADOgtdSntDzVB/VIuQitWT+1jUjifowEMQkhr5BNwXhuwiyzfNPRQ20fRNhNNa1ZT0bLx36
 8NcOeqW0Qg++opKhaPj9qO12NL+lt3z4jy8gcSj5/pnZMbLXZzbayhDkew+Y4YzfoR2w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=GqSfsSzVOLSoYRa2Y8oF2jl7P9ZY+t8jdGfWgrxAt/8=; b=QmsnKMf7jZayoka4uJIzLqKBAw
 aM4OGDhcou6NwFny1wVW/314RCD9wB8sUwARojAOohAj92TdFxY6pTpiyBQ3eeAXjGdxdq6FnoW4K
 +gWYIkN99sbufVfso2NvFzQD0MoqUmx3ubOYZyqnHcHNSCBjAgE7wTw1LbvG5Bjql/H8=;
Received: from mga04.intel.com ([192.55.52.120])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iv02E-00H9zH-0C
 for tboot-devel@lists.sourceforge.net; Fri, 24 Jan 2020 14:34:11 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 06:34:04 -0800
X-IronPort-AV: E=Sophos;i="5.70,358,1574150400"; d="scan'208";a="216606502"
Received: from lhawrylk-desk.igk.intel.com ([10.102.89.27])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 06:34:02 -0800
Message-ID: <e79098d128ee35f7c370ab7cb100e6c80d3546ed.camel@linux.intel.com>
From: Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>
To: Martin Galvan <omgalvan.86@gmail.com>, tboot-devel@lists.sourceforge.net
Date: Fri, 24 Jan 2020 15:34:00 +0100
In-Reply-To: <CAN19L9G6aATCT2gP_P_spwmK-pv+FBi30pLe0CXRyfFtNBXORw@mail.gmail.com>
References: <CAN19L9G6aATCT2gP_P_spwmK-pv+FBi30pLe0CXRyfFtNBXORw@mail.gmail.com>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1iv02E-00H9zH-0C
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tboot-devel-bounces@lists.sourceforge.net

On Thu, 2020-01-23 at 14:41 -0300, Martin Galvan wrote:
> Hi all,
> 
> I just ran txt-stat on a system which has an IceLake CPU and a 495
> Series PCH, and am seeing the following output:
> 
> Intel(r) TXT Configuration Registers:
>     STS: 0x00000003
>         senter_done: TRUE
>         sexit_done: TRUE
>         mem_config_lock: FALSE
>         private_open: FALSE
>         locality_1_open: FALSE
>         locality_2_open: FALSE
>     ESTS: 0x00
>         txt_reset: FALSE
>     E2STS: 0x0000000000000004
>         secrets: FALSE
>     ERRORCODE: 0x00000000
>     DIDVID: 0x00000001b00a8086
>         vendor_id: 0x8086
>         device_id: 0xb00a
>         revision_id: 0x1
>     FSBIF: 0xffffffffffffffff
>     QPIIF: 0x000000009d003000
>     SINIT.BASE: 0x00000000
>     SINIT.SIZE: 0B (0x0)
>     HEAP.BASE: 0x00000000
>     HEAP.SIZE: 0B (0x0)
>     DPR: 0x0000000000000000
>         lock: FALSE
>         top: 0x00000000
>         size: 0MB (0B)
>     PUBLIC.KEY:
>         87 9a 8f 9c bf 9e 3d 1d 12 dc 9a d7 6d de 34 e6
>         aa 40 36 64 c7 39 db 34 7b 85 8f 0b e0 33 ae 3a
> 
> ***********************************************************
>      TXT measured launch: TRUE
>      secrets flag set: FALSE
> ***********************************************************
> unable to find TBOOT log
> 
> I'm seeing that the SENTER.DONE.STS and SEXIT.DONE.STS bits are both
> set. If I understood right, this doesn't make sense since they signal
> whether all the threads are running the code within the MLE or not
> (I'm not running an MLE here). In addition, the DID reported by
> TXT.DIDVID doesn't match that of my PCH (which is 0x3482). Am I doing
> something wrong here?
> 

Hi Martin

I see that your SINIT.BASE and HEAP.BASE registers have all zeros, did
you enable TXT in BIOS? I guess that txt-stat may not check if TXT is
enabled before reading TXT related registers, that's why you can have
strange, random values.

Thanks,
Lukasz



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
