Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1268CD3B6CF
	for <lists+tboot-devel@lfdr.de>; Mon, 19 Jan 2026 20:08:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:From:Date:References:In-Reply-To:Message-Id:MIME-Version:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dZpm+oidY11QiJHafslkute+sDCXjYvDAByxGZOaFzs=; b=FJbFxjayCHd/3nLOXMsCp2sf1c
	rBHC1Lu1uGoVQ7z64YcKBDbzBbaR5Cd6mAWtZgnD7xqmb5hckmpxiylz6YfRb0uBiyYYEUmK1n7ox
	gY9vliphk8zutDFbfKpZ4WGqo8tvgqmcXQauoumgRhavYUmrdP9S/j+yk2HniA7IZPd0=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1vhubn-0003QU-7l;
	Mon, 19 Jan 2026 19:08:15 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <michal.camacho.romero@linux.intel.com>)
 id 1vhubl-0003QN-NT for tboot-devel@lists.sourceforge.net;
 Mon, 19 Jan 2026 19:08:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:From:Date:References:In-Reply-To:Message-Id:
 Subject:Content-Transfer-Encoding:Content-Type:MIME-Version:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/H9KUc6tFTHFQ1rKYNJszoOS6/c3Zw/XFeUiP+OfKic=; b=VGeSxL6UnhTHrPlW6ePtPv4BlV
 zC31qlmhbkuDHnVKhlUPecvJ6gEJA3VR6GqMY/hhTkMFzmLYypDhzd8JfIeHutQyP9Qf6hclYO9VH
 +/nrX+eZbDRnCBawERkzi+lIFzLZY/eV9JmfQUPAQI27IBFVhN01vVg3pldqNQ8IUgB0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ; h=Cc:To:From:Date:References:In-Reply-To:Message-Id:Subject:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/H9KUc6tFTHFQ1rKYNJszoOS6/c3Zw/XFeUiP+OfKic=; b=lyfH3KzhSQJgqbSpVYhdaW31+0
 gbD5NWbHyY7o7Fr/03Zyewfyr3Gmpx8DYPo+OKV6k2oy7Sx9LCVuzUEUSIYRRMhkyRuyW4v8EnpXN
 /5fjoyXU1Sfy3/lV3i55OQgIqiBwLRiq8kd7FE5abZX+Bi8yb75PXUOY79FVOwy+OQu4=;
Received: from mgamail.intel.com ([198.175.65.10])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vhubk-0007JM-UK for tboot-devel@lists.sourceforge.net;
 Mon, 19 Jan 2026 19:08:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768849693; x=1800385693;
 h=mime-version:content-transfer-encoding:subject:
 message-id:in-reply-to:references:date:from:to:cc;
 bh=F5D4Vz/oR3jjUUJ8ULA+WZXPo9j7cR6GjQ3NUpFuQos=;
 b=PMW3qr3wnm95bT2ArIIxd3ScVgXkSikdfT+hUDkg3F6US59tHOsyZ3uO
 dVzIYp7vgubngAyKu/VJfwqAhy7mkALVGrS2CVt632ajs7xhXc8sPY8Sm
 mXKEaYp7FffbURnpfYmW8RvPv0yKmJi5p+BQOFug7BVtgmLGA9g7baZN9
 nqcv+5CvKfFBKKjE58MYbYM/Aa/ROd67PO1xeY8E8lZSz0CwkfAP9+P6Z
 0OZWUurF09SdqTLvvgkYVcUc89sPCwlwdhbw0fQAVjxHUMoITKs5vMKU+
 FRXRQENAIeOEg1FYwChifPsojkrsYCCwXA+ecssg6Tfx1mLHGXFzwR9oy Q==;
X-CSE-ConnectionGUID: F6VYOyHtTxaOx+D4XnUqog==
X-CSE-MsgGUID: I7T3iJBVQjaDkc/a3Iq5wg==
X-IronPort-AV: E=McAfee;i="6800,10657,11676"; a="87479299"
X-IronPort-AV: E=Sophos;i="6.21,238,1763452800"; d="scan'208";a="87479299"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2026 11:08:03 -0800
X-CSE-ConnectionGUID: dAHs3DmQTMeL0twXSjJ0hQ==
X-CSE-MsgGUID: HqSyvoloRXalgumtYhOEfQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,238,1763452800"; d="scan'208";a="206284123"
Received: from gklab-219-098.igk.intel.com (HELO [127.0.1.1]) ([10.211.219.98])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2026 11:08:02 -0800
MIME-Version: 1.0
X-Mercurial-Node: f24ac8c37095e6a0ffb2f781ad2202656a249caa
X-Mercurial-Series-Index: 3
X-Mercurial-Series-Total: 3
Message-Id: <f24ac8c37095e6a0ffb2.1768849656@gklab-219-098>
X-Mercurial-Series-Id: <d512777179769bd322ea.1768849654@gklab-219-098>
In-Reply-To: <patchbomb.1768849653@gklab-219-098>
References: <patchbomb.1768849653@gklab-219-098>
User-Agent: Mercurial-patchbomb/6.7.2
Date: Mon, 19 Jan 2026 20:07:36 +0100
From: michal.camacho.romero@linux.intel.com
To: tboot-devel@lists.sourceforge.net
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: # HG changeset patch # User Michal Camacho Romero
 <michal.camacho.romero@linux.intel.com>
 # Date 1767800720 -3600 # Wed Jan 07 16:45:20 2026 +0100 # Node ID
 f24ac8c37095e6a0ffb2f781ad2202656a249caa # [...] 
 Content analysis details:   (-0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1vhubk-0007JM-UK
Subject: [tboot-devel] [PATCH 3 of 3] Disable TPR support in ACM
 capabilities (TXT Heap/OsSinitData)
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
Cc: adamx.pawlicki@intel.com, mateusz.mowka@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tboot-devel-bounces@lists.sourceforge.net

# HG changeset patch
# User Michal Camacho Romero <michal.camacho.romero@linux.intel.com>
# Date 1767800720 -3600
#      Wed Jan 07 16:45:20 2026 +0100
# Node ID f24ac8c37095e6a0ffb2f781ad2202656a249caa
# Parent  f26f17cb735a0c2e814728b852e701778c800406
Disable TPR support in ACM capabilities (TXT Heap/OsSinitData)

diff -r f26f17cb735a -r f24ac8c37095 tboot/common/tboot.c
--- a/tboot/common/tboot.c	Wed Jan 07 16:14:51 2026 +0100
+++ b/tboot/common/tboot.c	Wed Jan 07 16:45:20 2026 +0100
@@ -352,7 +352,6 @@
 void begin_launch(void *addr, uint32_t magic)
 {
     tb_error_t err;
-    bool force_pmrs = false;
 
     if (g_ldr_ctx->type == 0)        
         determine_loader_type(addr, magic);
@@ -456,11 +455,9 @@
            apply_policy(TB_ERR_ACMOD_VERIFY_FAILED);
     }
 
-    force_pmrs = get_tboot_force_pmrs();
-
     //We need to have g_sinit point to SINIT ACM before we can run is_tpr_supported
     //This global variable decides whether PMR or TPR is used
-    g_tpr_support = is_tpr_supported(force_pmrs);
+    g_tpr_support = is_tpr_supported(get_tboot_force_pmrs());
 
     /* make TPM ready for measured launch */
     if (!tpm_detect())
diff -r f26f17cb735a -r f24ac8c37095 tboot/txt/txt.c
--- a/tboot/txt/txt.c	Wed Jan 07 16:14:51 2026 +0100
+++ b/tboot/txt/txt.c	Wed Jan 07 16:45:20 2026 +0100
@@ -111,6 +111,8 @@
                                                        TBOOT_BASE_ADDR,
 };
 
+static bool g_force_pmrs = false;
+
 /*
  * counts of APs going into wait-for-sipi
  */
@@ -667,6 +669,14 @@
         printk(TBOOT_ERR"SINIT capabilities are incompatible (0x%x)\n", sinit_caps._raw);
         return NULL;
     }
+
+    if (g_tpr_support == false && g_force_pmrs == true)
+    {
+        os_sinit_data->capabilities.tpr_support = 0;
+        printk(TBOOT_INFO"TPR Support disabled in the ACM capabilities "
+                         "(OsSinitData).\n");
+    }
+
     if ( get_evtlog_type() == EVTLOG_TPM2_TCG ) {
         printk(TBOOT_INFO"SINIT ACM supports TCG compliant TPM 2.0 event log format, tcg_event_log_format = %d \n", 
               sinit_caps.tcg_event_log_format);
@@ -830,6 +840,7 @@
     // Disable TPR support, if "force_pmrs" cmdline option was set
     if (force_pmrs)
     {
+        g_force_pmrs = true;
         g_mle_hdr.capabilities.tpr_support = 0;
         printk(TBOOT_INFO"TPR Support disabled in the MLE capabilities.\n");
     }



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
