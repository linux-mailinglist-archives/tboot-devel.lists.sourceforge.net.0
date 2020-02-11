Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 41742158C4A
	for <lists+tboot-devel@lfdr.de>; Tue, 11 Feb 2020 11:01:28 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1j1SM3-0005mq-LO; Tue, 11 Feb 2020 10:01:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lukasz.hawrylko@linux.intel.com>) id 1j1SM2-0005mb-Lq
 for tboot-devel@lists.sourceforge.net; Tue, 11 Feb 2020 10:01:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=99/8k+mqC9zLnr08+Bwr0aGnEHeQmbL91ycw1aBbABE=; b=EGWFgQrhUpMef4oCuAYVMqrBnZ
 MYPyLz1CKexe/Uo5vEvaTgAoXVGDyfXKOmHWZWBdxKdYhwesfxnW1lUKLLZ3jN/6tcJG2jh5Tc56O
 zH5aYUiFvahM2t8ugAIdDetMd+VR8CQpjZ2N1GZibHLuQyKVatduYBB6ajBN7WASoIcI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=99/8k+mqC9zLnr08+Bwr0aGnEHeQmbL91ycw1aBbABE=; b=kQcDeb/KPJhFM90k/ELrnW1d35
 LGExSlAAVGCwJ/hGA2oD4R6IT6w1seqzJ7vAZk5hAyUixlUFJpkD3vrMiWQ7tdbt2JTiKQN4OtWls
 WN1lquitcAH7DaJrQkrNggETgGml5FCLZwHlf1MznikjTP1x93CHyaloD+Qe0xM8UYp4=;
Received: from mga12.intel.com ([192.55.52.136])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1j1SM0-000NCe-LA
 for tboot-devel@lists.sourceforge.net; Tue, 11 Feb 2020 10:01:18 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Feb 2020 02:01:08 -0800
X-IronPort-AV: E=Sophos;i="5.70,428,1574150400"; d="scan'208";a="226458595"
Received: from lhawrylk-desk.igk.intel.com ([10.102.89.27])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Feb 2020 02:01:06 -0800
Message-ID: <d2fa5d8eeb7e09650b8653b515f72eea72c2d9c3.camel@linux.intel.com>
From: Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>
To: Paul Moore <paul@paul-moore.com>, "Paul Moore (pmoore2)"
 <pmoore2@cisco.com>
Date: Tue, 11 Feb 2020 11:01:04 +0100
In-Reply-To: <CAHC9VhT_P=Zkp+UYcCMZAN6megpQ3kOrry7LLH_XfZVTVsFFTA@mail.gmail.com>
References: <e8e68d193e448c7bdcb62c4d910d9c935e9bf6d0.camel@cisco.com>
 <CAHC9VhT_P=Zkp+UYcCMZAN6megpQ3kOrry7LLH_XfZVTVsFFTA@mail.gmail.com>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
X-Headers-End: 1j1SM0-000NCe-LA
Subject: Re: [tboot-devel] Update on my tboot kernel signature verification
 work
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
Cc: "tboot-devel@lists.sourceforge.net" <tboot-devel@lists.sourceforge.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tboot-devel-bounces@lists.sourceforge.net

On Mon, 2020-02-10 at 12:07 -0500, Paul Moore wrote:
> On Wed, Feb 5, 2020 at 12:58 PM Paul Moore (pmoore2) via tboot-devel
> <
> tboot-devel@lists.sourceforge.net
> > wrote:
> > ... I do have some interest in pursuing this on my own time, but considering all of the other demands on my time I'm not certain how much I will be able to contribute.
> 
> On a somewhat related topic, can anyone recommend a small, inexpensive
> system that has a TPM2 and supports Intel TXT on both UEFI and
> UEFI/CMS (legacy BIOS) boot?  Sadly all of my current personal
> crash-n-burn systems are TPM1.2 based.
> 
> 

You can check Intel NUC, search for one with vPro CPU, TPM2.0 and
possibility to connect serial console. For example NUC5i5MYHE meets that
requirements.

Thanks,
Lukasz



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
