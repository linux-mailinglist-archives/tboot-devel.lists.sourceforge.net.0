Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B6893F5D8F
	for <lists+tboot-devel@lfdr.de>; Tue, 24 Aug 2021 13:59:04 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1mIV4u-00063A-Vb; Tue, 24 Aug 2021 11:58:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lukasz.hawrylko@linux.intel.com>) id 1mIV4t-000633-MJ
 for tboot-devel@lists.sourceforge.net; Tue, 24 Aug 2021 11:58:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lkIEzzDNN/9Ah117Yid24M2319HP9cDCubIXXFnZ8AM=; b=bkaiXf4zJKLD+YNnn8/iLR88gB
 A73EVdCwgm9VClCuoBk88bNm6SGjmdHs+/EqdwNeFTGeuNFTEE8Lb73VNcDvz4UgRZa+dNOfVfZO+
 vp+l4AQDsHuJK7iSLMHouioqQh2CWNgym8bhSS8di1LHD3dZ6SeA87pM/zqq5DxJLW6A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=lkIEzzDNN/9Ah117Yid24M2319HP9cDCubIXXFnZ8AM=; b=V3CKx3RJ09MSrUF/Chhx/WpHAG
 eYPVpqBnzSKPGwcbEYa1zmnyhjnsOtO4HoUSS0ATAt3moj+Opt0kVVC+WZBBGxChdrHXbhxGna/Cf
 5SDWxELrh3lMPvWNFVkJkbq1zHCXWpgfr7mchfz37tGD8O/SzCGmpTsK+H+yUonznMe0=;
Received: from mga01.intel.com ([192.55.52.88])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mIV4q-0004YF-CT
 for tboot-devel@lists.sourceforge.net; Tue, 24 Aug 2021 11:58:51 +0000
X-IronPort-AV: E=McAfee;i="6200,9189,10085"; a="239442194"
X-IronPort-AV: E=Sophos;i="5.84,347,1620716400"; d="scan'208";a="239442194"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2021 04:58:42 -0700
X-IronPort-AV: E=Sophos;i="5.84,347,1620716400"; d="scan'208";a="526605626"
Received: from lukaszmi-mobl1.ger.corp.intel.com ([10.249.146.84])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2021 04:58:41 -0700
Message-ID: <c5f5db2090df4270a7fb74724260b0b767ad86d7.camel@linux.intel.com>
From: Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>
To: Timo Lindfors <timo.lindfors@iki.fi>, tboot-devel@lists.sourceforge.net
Date: Tue, 24 Aug 2021 13:58:39 +0200
In-Reply-To: <alpine.DEB.2.20.2108241211001.5917@mail.home>
References: <alpine.DEB.2.20.2003312317470.19721@mail.home>
 <dc275925ce5f44633594ec3fd6732b13f3abeb4c.camel@linux.intel.com>
 <alpine.DEB.2.20.2004021722080.21308@mail.home>
 <d5d36808a38af260d0e8390aaaf5dc6724cf787f.camel@linux.intel.com>
 <alpine.DEB.2.20.2108241211001.5917@mail.home>
User-Agent: Evolution 3.38.3 (3.38.3-1.fc33) 
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [192.55.52.88 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1mIV4q-0004YF-CT
Subject: Re: [tboot-devel] tboot not picking the right ACM module on Dell
 Latitude E5470
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

Hi Timo

On Tue, 2021-08-24 at 12:19 +0300, Timo Lindfors wrote:
> [replying to an old email thread]
> 
> On Tue, 7 Apr 2020, Lukasz Hawrylko wrote:
> > Unfortunately, this bug is not reported anywhere. In real life scenarios
> > I don't see any benefits of loading multiple SINITs. In most cases you
> > have one SINIT that is dedicated to the platform.
> > 
> > I am not sure if that issue can be fixed without moving TBOOT log memory
> > pool somewhere else and that change will brake other tools. It will be
> > better to change documentation that only one SINIT can be loaded. I will
> > check who is the owner of TBOOT page in Fedora's wiki.
> 
> Just for the record I hit this issue again on HP Elitedesk 800 G2 in 
> UEFI-only mode. Loading
> 
> 2nd_gen_i5_i7_SINIT_51.BIN
> 3rd_gen_i5_i7_SINIT_67.BIN
> 4th_gen_i5_i7_SINIT_75.BIN
> 5th_gen_i5_i7_SINIT_79.BIN
> 6th_7th_gen_i5_i7-SINIT_79.bin
> 7th_8th_gen_i5_i7-SINIT_81.bin
> GM45_GS45_PM45_SINIT_51.BIN
> Q35_SINIT_51.BIN
> Q45_Q43_SINIT_51.BIN
> Xeon-5600-3500-SINIT-v1.1.bin
> Xeon-E7-8800-4800-2800-SINIT-v1.1.bin
> i5_i7_DUAL_SINIT_51.BIN
> i7_QUAD_SINIT_51.BIN
> 
> causes the system to reset at SENTER with
> 
> TBOOT: TXT.ERRORCODE: 0x80000007
> TBOOT: 	 processor error 0x7
> 

Patch with fix is already prepared, I am waiting for GRUB team to merge
new multiboot2 module tag to publish it.

In meantime, if you have a system when you are able to reproduce this
issue, may I ask you to test the fix?

You have to build GRUB2 with following patch:
https://lists.gnu.org/archive/html/grub-devel/2021-08/msg00073.html

Here is a patch for TBOOT that uses changes in GRUB:

diff -r 6736ab640540 -r 47180cb4492f tboot/common/boot.S
--- a/tboot/common/boot.S	Tue Jul 06 11:02:08 2021 +0200
+++ b/tboot/common/boot.S	Thu Aug 19 14:17:40 2021 +0200
@@ -113,6 +113,13 @@
                    FB_MAX_VRES,   /* height */ \
                    FB_BPP         /* depth */
 
+        /* Module load preference tag */
+        mb2ht_init MB2_HDR_TAG_MOD_LOAD_PREFERENCE,
MB2_HDR_TAG_OPTIONAL, \
+                   0x900000,      /* min_addr */ \
+                   0xFFFFFFFF,    /* max_addr */ \
+                   0x1000,        /* align */ \
+                   0              /* preference */
+
         /* Multiboot2 header end tag. */
         mb2ht_init MB2_HDR_TAG_END, MB2_HDR_TAG_REQUIRED
 
diff -r 6736ab640540 -r 47180cb4492f tboot/include/multiboot.h
--- a/tboot/include/multiboot.h	Tue Jul 06 11:02:08 2021 +0200
+++ b/tboot/include/multiboot.h	Thu Aug 19 14:17:40 2021 +0200
@@ -77,6 +77,7 @@
 #define MB2_HDR_TAG_CONSOLE_FLAGS	  4
 #define MB2_HDR_TAG_FRAMEBUFFER		  5
 #define MB2_HDR_TAG_MOD_ALIGN		  6
+#define MB2_HDR_TAG_MOD_LOAD_PREFERENCE 11
 
 #define MB2_HDR_TAG_REQUIRED      0
 #define MB2_HDR_TAG_OPTIONAL		  1


If this works, I think that there is no need to change anything in the
documentation, but just submit the patch to fix that issue.

Thanks,
Lukasz




_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
