Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 19E3E14384B
	for <lists+tboot-devel@lfdr.de>; Tue, 21 Jan 2020 09:33:01 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1itoxv-0000hA-6M; Tue, 21 Jan 2020 08:32:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lukasz.hawrylko@linux.intel.com>) id 1itoxt-0000gV-3u
 for tboot-devel@lists.sourceforge.net; Tue, 21 Jan 2020 08:32:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yBV1TabMmGl2YRmKbpP7fyJosH1CnP0L7emAUYsyizk=; b=PzY3mtvuytY9vImeUYyrSjkKr9
 O5fwc562K7DBKDq2eo8GKol0/nCkv873TTaVPUAUbFRlJnGU214cn1mMNz4p9A+Y6FU1i30JViRsI
 1m+J9nr2404odVvw1j6sSjswb5LpdN7ICgr9CpDH9ZiI/JfqoZrubrMTIHY1iudUNm5Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=yBV1TabMmGl2YRmKbpP7fyJosH1CnP0L7emAUYsyizk=; b=NCF3v7d4ULHrcyqxz41bYOBjXM
 8QHGV38c8c8DM/foaYgRnSooXAzNoQHDh4g4JcvSQKOwQ14c4Q4ygARnBT40vGvIY1m2U18wjr52O
 dD6LQwSFw42Nxycxg5H1I1mRu9YGCkzZrdLOFsW1vQIsnyL9WCASiQVSzOk6MZMh5JHA=;
Received: from mga17.intel.com ([192.55.52.151])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1itoxm-00CGr6-H6
 for tboot-devel@lists.sourceforge.net; Tue, 21 Jan 2020 08:32:49 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Jan 2020 00:32:36 -0800
X-IronPort-AV: E=Sophos;i="5.70,345,1574150400"; d="scan'208";a="215462193"
Received: from lhawrylk-desk.igk.intel.com ([10.102.89.27])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Jan 2020 00:32:35 -0800
Message-ID: <bca6ed38d5ec0b66606dff24fc163851e7765323.camel@linux.intel.com>
From: Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>
To: Christopher Clark <christopher.w.clark@gmail.com>, 
 tboot-devel@lists.sourceforge.net
Date: Tue, 21 Jan 2020 09:32:33 +0100
In-Reply-To: <CACMJ4GZ9oGRG3kBhhDJZ_o=mJKfjA4MR5DoXz3RUQS3mk1W4gQ@mail.gmail.com>
References: <CACMJ4GZ9oGRG3kBhhDJZ_o=mJKfjA4MR5DoXz3RUQS3mk1W4gQ@mail.gmail.com>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1itoxm-00CGr6-H6
Subject: Re: [tboot-devel] tboot, TPM 2.0 on Dell PowerEdge R730
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

On Wed, 2020-01-15 at 18:36 -0800, Christopher Clark wrote:
> Hello
> 
> I am trying to boot with tboot and TPM 2.0 on a Dell PowerEdge R730
> and encountering reboot at SENTER every time with the following:
> 
> TBOOT: TXT.ERRORCODE: 0xc0033451
> TBOOT: AC module error : acm_type=0x1, progress=0x05, error=0xd
> 
> which SINIT_Errors-Broadwell-4th-gen.pdf indicates is: Invalid PMR configuration
> I am having difficulty determining how the PMR values could be incorrect
> and so fail the SINIT validation, what values would be accepted, whether
> something critical is outside the ranges, or unwanted within them, or indeed if
> something else is incorrect.
> 
> Can TXT + TPM 2.0 + tboot boot on this system?
> Is there some prior TPM configuration (beyond clearing it) necessary
> to enable boot?
> 
> Advice appreciated, and system details are below.
> thanks,
> 
> Christopher
> 

Hi Christopher

At first point please ensure that you are using latest SINIT, I know
that ACM team was working on similar issue, but I don't know if they
have already released version with the fix.

If problem still exists with latest SINIT, you can try to modify TBOOT
and check if that helps. Please apply following patch over v1.9.11

diff -r 003178d05f52 tboot/txt/txt.c
--- a/tboot/txt/txt.c   Tue Jan 14 11:54:11 2020 +0100
+++ b/tboot/txt/txt.c   Tue Jan 21 09:27:51 2020 +0100
@@ -559,6 +559,12 @@
             if (!vtd_disable_dma_remap(iter)) {
                 printk("    vtd_disable_dma_remap failed!\n");
             }
+            if (!vtd_disable_qie(iter)) {
+                printk("    vtd_disable_qie failed!\n");
+            }
+            if (!vtd_disable_ire(iter)) {
+                printk("    vtd_disable_ire failed!\n");
+            }
         }
     }

Thanks,
Lukasz



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
