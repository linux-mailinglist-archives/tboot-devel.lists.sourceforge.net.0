Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B207A1EA6C5
	for <lists+tboot-devel@lfdr.de>; Mon,  1 Jun 2020 17:21:32 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1jfmFi-00037v-BM; Mon, 01 Jun 2020 15:21:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lukasz.hawrylko@linux.intel.com>) id 1jfmFh-00037f-9d
 for tboot-devel@lists.sourceforge.net; Mon, 01 Jun 2020 15:21:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SQUCRxG+8qQSGw+LmKO/dbynLCu4rKcNfSdQP/L6+YE=; b=ZZoP2VOTwk+iDtIhjUEwUp6XHS
 oH5oIwZ44kP0oKJzRBeTGm7/7ytc7FKYllrFeJ4rGeow54t757Hw1tqaLUzy841Bluy6+jvjIVKy7
 7t323hSjVdK5QTa8pGi0g8JwLnTu7QQbZiLYad71S2/wr71ls5tyEobyLkpOmjrrIO3M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=SQUCRxG+8qQSGw+LmKO/dbynLCu4rKcNfSdQP/L6+YE=; b=afm01s/qwimVAsJIzxve1dS76c
 hyN40NtGuCagIznilJip+LORXGY9qtmHcfyUR6RZVcA2cpjtO3oDKEvIK5Zwy6Vot385y+E/acClF
 nGvP9xuuZ/UFPA4tuScVgpB8cvs3LZjPOa0GFQBA9BTbnriPVDN8cNeksih+O86hThTY=;
Received: from mga03.intel.com ([134.134.136.65])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jfmFf-0073WG-CQ
 for tboot-devel@lists.sourceforge.net; Mon, 01 Jun 2020 15:21:25 +0000
IronPort-SDR: ovG6vSkkrB9Fs0OvdenQg4lXTQOmrNb6XlNHoX2CaAgpiFXad9slSL67n9X1b1nl0G9PTYhERt
 vdHPSD8WCiNw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2020 08:21:17 -0700
IronPort-SDR: 36swxY+dcvnXI4e/wzjc6ntMghZ0TZU8JDnEmTLV1BHkUfnp4jbtHmnQloRgRfwPMmSxMgyTXq
 WpsnOEQ0b2fA==
X-IronPort-AV: E=Sophos;i="5.73,461,1583222400"; d="scan'208";a="415836251"
Received: from lhawrylk-desk.ger.corp.intel.com ([10.213.27.252])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2020 08:21:15 -0700
Message-ID: <8e119cc80a96c5f714a4f52696c65fec1dd35ef6.camel@linux.intel.com>
From: Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>
To: Timo Lindfors <timo.lindfors@iki.fi>, tboot-devel@lists.sourceforge.net
Date: Mon, 01 Jun 2020 17:21:13 +0200
In-Reply-To: <alpine.DEB.2.20.2006010126220.24394@mail.home>
References: <alpine.DEB.2.20.2005081919250.3828@mail.home>
 <3da41313c3b91f154f53f9c2c9645ade6399cff9.camel@linux.intel.com>
 <alpine.DEB.2.20.2005121234280.7218@mail.home>
 <alpine.DEB.2.20.2005231924220.17882@mail.home>
 <alpine.DEB.2.20.2005241914180.17882@mail.home>
 <2b9029d61fed0ca5f4d60a14a90fb01c98f6f007.camel@linux.intel.com>
 <alpine.DEB.2.20.2005251307150.19253@mail.home>
 <alpine.DEB.2.20.2005280214320.21222@mail.home>
 <952021e68c90965520a2b1a1cf11245ab49dd31b.camel@linux.intel.com>
 <alpine.DEB.2.20.2005282120080.22086@mail.home>
 <alpine.DEB.2.20.2005291234440.22603@mail.home>
 <fccd42128daa0ff86d2e6970f7e3217ae8f1a01e.camel@linux.intel.com>
 <alpine.DEB.2.20.2006010050560.24353@mail.home>
 <alpine.DEB.2.20.2006010126220.24394@mail.home>
User-Agent: Evolution 3.34.4 (3.34.4-1.fc31) 
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jfmFf-0073WG-CQ
Subject: Re: [tboot-devel] tboot 1.9.12 build failure if CFLAGS is set in
 environment
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

On Mon, 2020-06-01 at 01:27 +0300, Timo Lindfors wrote:
> On Mon, 1 Jun 2020, Timo Lindfors wrote:
> > printk(TBOOT_INFO"start=%p tag_type=%d start->type=%d start->size=%d\n",
> >       start,
> >       tag_type,
> >       start->type,
> >       start->size);
> 
> On warm boot this prints just
> 
> TBOOT: start=0x0x10008 tag_type=17 start->type=3031684 start->size=-2147418113
> TBOOT: start=0x0x80020008 tag_type=17 start->type=0 start->size=0
> 

That looks like memory corruption... Does it work when you remove all
SINITs except the good one?

Could you please apply following patch and send me a log?

One more test - please remove 'memory' option in 'logging' parameter
from TBOOT command line in grub.cfg and check if that helps.

Thanks,
Lukasz

diff -r 1f912c52b1cc tboot/common/loader.c
--- a/tboot/common/loader.c	Sat May 23 20:32:48 2020 +0300
+++ b/tboot/common/loader.c	Mon Jun 01 17:17:01 2020 +0200
@@ -1907,10 +1907,11 @@
         return;
     } else {
         struct mb2_tag *start = (struct mb2_tag *)(lctx->addr + 8);
-        printk(TBOOT_INFO"MB2 dump, size %d\n", *(uint32_t *)lctx->addr);
+        printk(TBOOT_INFO"MB2 dump, size %d addr %p\n", *(uint32_t *)lctx->addr,
+               lctx->addr);
         while (start != NULL){
-            printk(TBOOT_INFO"MB2 tag found of type %d size %d ", 
-                   start->type, start->size);
+            printk(TBOOT_INFO"MB2 tag found of type %d size %d addr %p ", 
+                   start->type, start->size, start);
             switch (start->type){
             case MB2_TAG_TYPE_CMDLINE:
             case MB2_TAG_TYPE_LOADER_NAME:
@@ -1924,6 +1925,8 @@
                 {
                     struct mb2_tag_module *ts = 
                         (struct mb2_tag_module *) start;
+                    printk(TBOOT_INFO"mod_start 0x%x, mod_end 0x%x ",
+                           ts->mod_start, ts->mod_end);
                     printk_long(ts->cmdline);
                 }
                 break;
diff -r 1f912c52b1cc tboot/common/tboot.c
--- a/tboot/common/tboot.c	Sat May 23 20:32:48 2020 +0300
+++ b/tboot/common/tboot.c	Mon Jun 01 17:17:01 2020 +0200
@@ -369,6 +369,8 @@
        print_loader_ctx(g_ldr_ctx);
     */
 
+    print_loader_ctx(g_ldr_ctx);
+
     /* clear resume vector on S3 resume so any resets will not use it */
     if ( !is_launched() && s3_flag )        set_s3_resume_vector(&_tboot_shared.acpi_sinfo, 0);





_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
