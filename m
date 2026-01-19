Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CE7AD3B6D0
	for <lists+tboot-devel@lfdr.de>; Mon, 19 Jan 2026 20:08:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:From:Date:References:In-Reply-To:Message-Id:MIME-Version:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dwjMtFJU46HD+unF71dSrISZTxg20xWqakCiaubYHLk=; b=dhyF+vwEOzFYogQdn7S5+vP/ff
	nRxxibpXYtjZOqDfVNxu69vFi0pEDaWTqAHznPus16IH3OJy1R7N3FmHfy3Gr4+80JsvMKpFCMgrJ
	flTeG5wJHFJRCiOtgPZHDEY7IvoX9KcLhhxY+qTIGLOMMC1EFMvJ6lYiaOdz0Ah8fJeU=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1vhubn-0000fv-7H;
	Mon, 19 Jan 2026 19:08:15 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <michal.camacho.romero@linux.intel.com>)
 id 1vhubk-0000fm-S8 for tboot-devel@lists.sourceforge.net;
 Mon, 19 Jan 2026 19:08:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:From:Date:References:In-Reply-To:Message-Id:
 Subject:Content-Transfer-Encoding:Content-Type:MIME-Version:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GdNLpB5AW7bTOYrqSv738sRdG6K6MfoMk/1UOA77CZ0=; b=aogTcGzIkw7i3ltnjB1/P6VDIp
 IsyzDDXtJ0AlLz6nFSa6jwvxCN+N5nucrQJbhRwGhNP8E8TddDlxOBKwEuWX3/FCeXBRyXS/QeXFg
 vauRU3tRV3qb6X9jXaVAuu1gOCyIFh5fVd8LIPbNCRJRgRofkwljBfm65eIkWJegszhA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ; h=Cc:To:From:Date:References:In-Reply-To:Message-Id:Subject:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GdNLpB5AW7bTOYrqSv738sRdG6K6MfoMk/1UOA77CZ0=; b=N7a3T7MC0E+Ld/q9gt4QZGN1xm
 U1HzU2rAg1D+IMWGRunYHn3P4PEWoOhXENxf6y6nJ5ICtnjc8xec8T9cHuIPKQQBMtEhAUdQAxEHk
 DuJz2VSH/LWWcUz0WzolAiPK8TGWjrByGaCTbLbU0H6OyQWeGGGGT8C2fWIxlcUBKCEQ=;
Received: from mgamail.intel.com ([198.175.65.10])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vhubk-0007JM-Cg for tboot-devel@lists.sourceforge.net;
 Mon, 19 Jan 2026 19:08:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768849692; x=1800385692;
 h=mime-version:content-transfer-encoding:subject:
 message-id:in-reply-to:references:date:from:to:cc;
 bh=i7Xf/YqUEherJjKStZMu0c06SXzSOh7sNo8J6h6BEpA=;
 b=ggeyudduiDswea/DgzJswo93QNdNW8lmwFSnsUanhzHqSb6eAT7EtqXi
 ioyaEtIsZgYOTiauHqAcFIUgHtNOHEbBYHqOSd8tgisX3nQ0K6ODLacwK
 KE28qERVWzCguaTSXRlbjHf1DHUJ/+3UkC1Rkk8eIlsbh54ud4KMkTE0O
 iJ8MCUgmoYnVhb6SP6ofYfZFH+F5Nh9tiSjlx9GtutasCmErSegYoNBv3
 UQmkAjk/3JMYlEU1kP9GUtDCGSJ5NDAMQxPm0Rk92lwf7c1Z3bYz9XfC2
 Z5B2tKWSwWUjXREaRwnqvlGQoPLiNztWWZCHLZrHAtRRcUFFHOaYcDKgz A==;
X-CSE-ConnectionGUID: nOJpiRYCSpmW8q2Y9iJ3yQ==
X-CSE-MsgGUID: dz3k4UlETvW5/NZHEX3SOw==
X-IronPort-AV: E=McAfee;i="6800,10657,11676"; a="87479296"
X-IronPort-AV: E=Sophos;i="6.21,238,1763452800"; d="scan'208";a="87479296"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2026 11:08:02 -0800
X-CSE-ConnectionGUID: k19qO8IwT/mATA1K2t1G/Q==
X-CSE-MsgGUID: zqTrfHdwQ46LPHEDJX5BjA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,238,1763452800"; d="scan'208";a="206284120"
Received: from gklab-219-098.igk.intel.com (HELO [127.0.1.1]) ([10.211.219.98])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2026 11:08:01 -0800
MIME-Version: 1.0
X-Mercurial-Node: f26f17cb735a0c2e814728b852e701778c800406
X-Mercurial-Series-Index: 2
X-Mercurial-Series-Total: 3
Message-Id: <f26f17cb735a0c2e8147.1768849655@gklab-219-098>
X-Mercurial-Series-Id: <d512777179769bd322ea.1768849654@gklab-219-098>
In-Reply-To: <patchbomb.1768849653@gklab-219-098>
References: <patchbomb.1768849653@gklab-219-098>
User-Agent: Mercurial-patchbomb/6.7.2
Date: Mon, 19 Jan 2026 20:07:35 +0100
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
 # Date 1767798891 -3600 # Wed Jan 07 16:14:51 2026 +0100 # Node ID
 f26f17cb735a0c2e814728b852e701778c800406 # [...] 
 Content analysis details:   (-0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1vhubk-0007JM-Cg
Subject: [tboot-devel] [PATCH 2 of 3] Fix force_pmrs option verification
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
