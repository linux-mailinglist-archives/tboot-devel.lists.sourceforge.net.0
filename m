Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C006FD3B6E3
	for <lists+tboot-devel@lfdr.de>; Mon, 19 Jan 2026 20:10:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:From:Date:References:In-Reply-To:Message-Id:MIME-Version:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dwjMtFJU46HD+unF71dSrISZTxg20xWqakCiaubYHLk=; b=ijsqt7PfMlx56VkVxagItv6Nr3
	ZaiW8wM24I/gew0Iq2H0XKL4HBnMLEEjCXTHizVyN31S5pV4rtLYvZ6YYp+47ALDDbin8bozn084n
	ndvKlYmHdIpQ2Y0gdH3ZoZlldPZctql0HIGkfqPaE4nEXC68dmbjZc8gDJGqMt6WkZhs=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1vhueE-0003Wp-At;
	Mon, 19 Jan 2026 19:10:46 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <michal.camacho.romero@linux.intel.com>)
 id 1vhueC-0003Wi-U3 for tboot-devel@lists.sourceforge.net;
 Mon, 19 Jan 2026 19:10:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:From:Date:References:In-Reply-To:Message-Id:
 Subject:Content-Transfer-Encoding:Content-Type:MIME-Version:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GdNLpB5AW7bTOYrqSv738sRdG6K6MfoMk/1UOA77CZ0=; b=SeOKhCcPG4uJWTxx7Voa17Fpi3
 WiqUKG69hL/ohgvrxTwOoS4FxybZHX0FIqpHsd9Ni+UHhjBPfTTsqqyltFQUi2Hm0qFzvonHMCrKf
 CeBRQ/j9DFdtM7Q5B2fuF3hwGyI5tc39md7F3I+bS9NSKcdY6lMUTne/s7NoPjCNe/Zw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ; h=Cc:To:From:Date:References:In-Reply-To:Message-Id:Subject:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GdNLpB5AW7bTOYrqSv738sRdG6K6MfoMk/1UOA77CZ0=; b=NsmdwHw5GLw79UVdjoRkPkJNrc
 s4TS/GTpe3IS1qAptDPOGqsVYFzoM8Kc8NE2mMou1jqIXNMPW2MzV1VwfJzKtvm8eEtOP9QAAXd7n
 WLO17gm7dbXRO0HkuuNEctFuvZgdrTFSYNYATo1kCQ39/5hrdQIEgwKp07O6p0N6Xd1g=;
Received: from mgamail.intel.com ([198.175.65.20])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vhueC-0007Ut-DW for tboot-devel@lists.sourceforge.net;
 Mon, 19 Jan 2026 19:10:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768849845; x=1800385845;
 h=mime-version:content-transfer-encoding:subject:
 message-id:in-reply-to:references:date:from:to:cc;
 bh=i7Xf/YqUEherJjKStZMu0c06SXzSOh7sNo8J6h6BEpA=;
 b=NfDp7/pxWO5Ec96d/IiCP18oDUB3RGhAubGosq/Y/uOEngU1paDZdGTZ
 bmUHXx9znBjmT1/Q1Vw43eYZIhcREgXEbKYdXOVhnMLxA19bAm+Xd1qJ0
 jpds1DJlwWqj0Y2Pv2IBS1cXN2Q5TmzCgt7+rZy41gZ6Hl3Mh7kt66sA5
 GtwyT6EFmTENXjoSabuwUlfMm9g9WK1YFMxDChM4o8sPrqK+x75HF9knf
 J3M791qUF9FntxHpAg5T0bFCgTPetrQBXUD2yALNhHk/CT8HDD12T87Oa
 UsQSFhTXGepXgvCLYuU8w3zU1SkPn9z7qBiSMdbxjg4I7XLXkOsW3o6tI A==;
X-CSE-ConnectionGUID: jIyADX4fT0q2pSE2afR9hw==
X-CSE-MsgGUID: eUqWdAmmRiGn+98BBSlsow==
X-IronPort-AV: E=McAfee;i="6800,10657,11676"; a="69794402"
X-IronPort-AV: E=Sophos;i="6.21,238,1763452800"; d="scan'208";a="69794402"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2026 11:10:41 -0800
X-CSE-ConnectionGUID: UNOMRBLBToyMiLnhIsxhMA==
X-CSE-MsgGUID: CexRJeP0Q3q3pobp1YpvlQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,238,1763452800"; d="scan'208";a="210065407"
Received: from gklab-219-098.igk.intel.com (HELO [127.0.1.1]) ([10.211.219.98])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2026 11:10:40 -0800
MIME-Version: 1.0
X-Mercurial-Node: f26f17cb735a0c2e814728b852e701778c800406
X-Mercurial-Series-Index: 2
X-Mercurial-Series-Total: 4
Message-Id: <f26f17cb735a0c2e8147.1768849810@gklab-219-098>
X-Mercurial-Series-Id: <d512777179769bd322ea.1768849809@gklab-219-098>
In-Reply-To: <patchbomb.1768849808@gklab-219-098>
References: <patchbomb.1768849808@gklab-219-098>
User-Agent: Mercurial-patchbomb/6.7.2
Date: Mon, 19 Jan 2026 20:10:10 +0100
From: michal.camacho.romero@linux.intel.com
To: tboot-devel@lists.sourceforge.net
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: # HG changeset patch # User Michal Camacho Romero
 <michal.camacho.romero@linux.intel.com>
 # Date 1767798891 -3600 # Wed Jan 07 16:14:51 2026 +0100 # Node ID
 f26f17cb735a0c2e814728b852e701778c800406 # [...] 
 Content analysis details:   (-0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1vhueC-0007Ut-DW
Subject: [tboot-devel] [PATCH 2 of 4] Fix force_pmrs option verification
 procedure
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
# Date 1767798891 -3600
#      Wed Jan 07 16:14:51 2026 +0100
# Node ID f26f17cb735a0c2e814728b852e701778c800406
# Parent  d512777179769bd322ea73adc560b9e85d63c893
Fix force_pmrs option verification procedure

TBOOT hasn't proceed earlier force_pmrs option, due to invalid comparision condition,
given in the get_tboot_force_pmrs function, which parses "force_pmrs" option from
the TBOOT cmdline.

diff -r d51277717976 -r f26f17cb735a tboot/common/cmdline.c
--- a/tboot/common/cmdline.c	Thu Nov 20 09:52:29 2025 +0100
+++ b/tboot/common/cmdline.c	Wed Jan 07 16:14:51 2026 +0100
@@ -547,7 +547,7 @@
     const char *force_pmrs = get_option_val(g_tboot_cmdline_options,
                                             g_tboot_param_values,
                                             "force_pmrs");
-    if (force_pmrs != NULL && tb_strcmp(force_pmrs, "true"))
+    if (force_pmrs != NULL && (tb_strcmp(force_pmrs, "true") == 0))
     {
         return true;
     }
diff -r d51277717976 -r f26f17cb735a tboot/txt/txt.c
--- a/tboot/txt/txt.c	Thu Nov 20 09:52:29 2025 +0100
+++ b/tboot/txt/txt.c	Wed Jan 07 16:14:51 2026 +0100
@@ -117,22 +117,6 @@
 /* count of APs in WAIT-FOR-SIPI */
 atomic_t ap_wfs_count;
 
-static void disable_tpr_support(const acm_hdr_t *hdr)
-{
-    // Disable TPR support in the SINIT ACM capabilities
-    acm_info_table_t *info_table = get_acmod_info_table(hdr);
-    if ( info_table == NULL || info_table->version < 3 ) {
-        printk(TBOOT_ERR"TPR support disabling process has failed\n");
-    }
-
-    info_table->capabilities.tpr_support = 0;
-    printk(TBOOT_INFO"TPR support has been disabled properly in SINIT ACM\n");
-
-    // Disable TPR support bit in the MLE capabilities
-    g_mle_hdr.capabilities.tpr_support = 0;
-
-    printk(TBOOT_INFO"MLE capabilities: 0x%X\n", g_mle_hdr.capabilities._raw);
-}
 
 static void print_file_info(void)
 {
@@ -843,23 +827,14 @@
 
 bool is_tpr_supported(bool force_pmrs)
 {
-    //Reads SINIT ACM capabilities field and returns tpr_support bit
-    //Needs g_sinit to be set.
-    txt_caps_t sinit_caps;
-
-    sinit_caps._raw = 0;
-
     // Disable TPR support, if "force_pmrs" cmdline option was set
-    if (force_pmrs && g_sinit != NULL)
+    if (force_pmrs)
     {
-        disable_tpr_support(g_sinit);
+        g_mle_hdr.capabilities.tpr_support = 0;
+        printk(TBOOT_INFO"TPR Support disabled in the MLE capabilities.\n");
     }
 
-    if (g_sinit != NULL) {
-        sinit_caps = get_sinit_capabilities(g_sinit);
-    }
-
-    return sinit_caps.tpr_support;
+    return g_mle_hdr.capabilities.tpr_support;
 }
 
 tb_error_t txt_launch_environment(loader_ctx *lctx)



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
