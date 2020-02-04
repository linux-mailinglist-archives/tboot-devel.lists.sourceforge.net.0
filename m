Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 91626151E01
	for <lists+tboot-devel@lfdr.de>; Tue,  4 Feb 2020 17:15:48 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1iz0rV-0004sQ-C8; Tue, 04 Feb 2020 16:15:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lukasz.hawrylko@linux.intel.com>) id 1iz0rT-0004sI-Ma
 for tboot-devel@lists.sourceforge.net; Tue, 04 Feb 2020 16:15:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EwLlbd8tKl/JhEj8QuzjJUaGls0t5JFs7C2u37VcE/E=; b=ErIrhWXQXGoBJCNpVK32YHwWcv
 1jghsRF8tS/WaGf7xiFn+Dp01ZonuxsO+Ayyj9Ebd+QVpoIsxIoZQRtjkiZ5yLmHoNBxL76kEl60W
 H3kYzYA0YiZ8vAqen9YQVEw3aGQbzPvDh/++ei1AuHcmVQne9co1RMf3hlk9XNhIPCX4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=EwLlbd8tKl/JhEj8QuzjJUaGls0t5JFs7C2u37VcE/E=; b=LCGY0Bdj735EyYRP70nvLq2MgS
 Vr/+MqyHAh4tqbGOnHuD2NdTe8MddVlzTxaA248Ju0uKTEKsmarrhlzEza3St2Qqgr2CtPNKRTtxc
 jxL9gA+3xyZRxkXLbgysuzIE/xQdYJwn2kQmQuShac0CUpd5aU+/J3a8h6Z1a7belDT8=;
Received: from mga03.intel.com ([134.134.136.65])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iz0rS-00A8Q2-1s
 for tboot-devel@lists.sourceforge.net; Tue, 04 Feb 2020 16:15:39 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Feb 2020 08:15:32 -0800
X-IronPort-AV: E=Sophos;i="5.70,402,1574150400"; d="scan'208";a="219793223"
Received: from lhawrylk-desk.igk.intel.com ([10.102.89.27])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Feb 2020 08:15:30 -0800
Message-ID: <150ceed6d58de2df2db789ff1346949dbedc4319.camel@linux.intel.com>
From: Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>
To: LE ROY Olivier - Contractor <olivier.leroy@external.thalesgroup.com>, 
 "tboot-devel@lists.sourceforge.net" <tboot-devel@lists.sourceforge.net>
Date: Tue, 04 Feb 2020 17:15:28 +0100
In-Reply-To: <3efd665c3f1b4681a0414f12c9c4e666@external.thalesgroup.com>
References: <3efd665c3f1b4681a0414f12c9c4e666@external.thalesgroup.com>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1iz0rS-00A8Q2-1s
Subject: Re: [tboot-devel] Intel TXT + TBOOT + TPM 2.0: can't get LCP_ANY
 policy working on Supermicro X11SPM-TF
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

Hi Olivier

On Tue, 2020-02-04 at 13:50 +0000, LE ROY Olivier - Contractor wrote:
> Hi,
> 
> I am trying to get a simple LCP_ANY launch control policy to work on a Supermicro X11SPM-TF server with AOM-TPM-9670V TPM 2.0 module, without success. I get the "read error" from SINIT ACM each time.
> 
> I am using tboot version 1.9.9.
> 
> The LCP_ANY policy was created using two different ways:
> 
> 1/ with lcp-gen2 python tools available in tboot sources,
> 
> 2/ using a ready-made binary file, which is known to work, that is provided by Dr. G.W. Wettstein, and was contributed on this mailing list: (https://sourceforge.net/p/tboot/mailman/message/36477790/)
> Dump of the platform owner NVram definition with functional LCP_ANY policy:
> 
> 00000016: 00 03 0b 00 01 00 00 00 00 00 00 00 00 00 00 00 ................
> 00000032: 00 00 00 00 00 00 02 00 00 00 00 00 c8 00 08 30 ...............0
> 00000048: 00 00 08 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
> 00000064: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
> 00000070: 00 00 00 00 00 00                               ................
> 
> Attributes: 0x224000a
>     OWNERWRITE
>     POLICYWRITE
>     AUTHREAD
>     NO_DA
>     WRITTEN
> and NVram index to 0x1c10106 for my Cascade Lake Intel Xeon Silver 4216 CPU based chipset.
> 
> These two policies fail with following tboot error:
> TBOOT: no SINIT provided by bootloader; using BIOS SINIT
> ...
> TBOOT: reading Verified Launch Policy from TPM NV...
> TBOOT: TPM: fail to get public data of 0x01C10131 in TPM NV
> TBOOT:     :reading failed
> TBOOT: reading Launch Control Policy from TPM NV...
> TBOOT:     :70 bytes read
> TBOOT:     :reading failed
> TBOOT: failed to read policy from TPM NV, using default
> TBOOT: policy:

What exactly did you add to that policy in lcp-gen2 tool? LCP is a
policy dedicated for SINIT, not for TBOOT. There is a possibility to add
additional data to LCP called custom element. TBOOT reads LCP and than
checks if there is a custom element that it can use as its own policy
(called VLP). If it does not find any, it will throw "reading failed"
error.

The another approach is to create separate index for VLP (0x01C10131)
and put VLP there. 

> The point is the SINIT ACM reads my LCP_ANY policy from TPM2 NVram but doesn't seem to understand it.
> 
> There are no reason indicated in the TBOOT log.

What do mean "doesn't seem to understand it"? With LCP_ANY SINIT will
allow any MLE to be executed.

As I write above - TBOOT does not parse and apply LCP it only searches
for embedded VLP, so you will not get any information in logs.

> 
> One reason I think of could be that the NVram index 0x01C10106 wasn't defined with proper attributes.
> I define it with:
> 
> tpm2_nvdefine -x 0x01c10106 -a 0x40000001 -s 70 -t 0x0204000a -P password

That looks correct.

Thanks,
Lukasz



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
