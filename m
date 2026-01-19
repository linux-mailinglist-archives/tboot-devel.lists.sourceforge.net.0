Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 56F51D3B6E2
	for <lists+tboot-devel@lfdr.de>; Mon, 19 Jan 2026 20:10:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:From:Date:References:In-Reply-To:Message-Id:MIME-Version:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VdyopxUop+xLhwJSpL4SsYl4/aBo/yL8A3bmbud1Erk=; b=cChvzWT/cvPEBzi5dyNVHAUUY6
	MOubEz2mWy6arAFrtijk8PWwgMPHmDJSp6E3qpStFs5Q4nmoF4izRcXO/yS1LTojX8Q4nehKbPBb1
	fSQ8w2HeFhwzTzJKxb0BhhWZQ/brI25JwMCP5yZWWForoN9KxateR36C66tpUVpQpvRU=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1vhueH-00023P-Gt;
	Mon, 19 Jan 2026 19:10:49 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <michal.camacho.romero@linux.intel.com>)
 id 1vhueE-000232-0V for tboot-devel@lists.sourceforge.net;
 Mon, 19 Jan 2026 19:10:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:From:Date:References:In-Reply-To:Message-Id:
 Subject:Content-Transfer-Encoding:Content-Type:MIME-Version:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Tu0G4o2YniOLNA8A+pcpcK+W2C4KI1degfLJBeDXzaU=; b=iMqSFO4gAs08zvotsXiYFNSEDj
 UMd4MI8r7AfTcZY/4/82bUHHwMU1BKID8uJWApqIqmIRqpvcFz3ujJoKpZ52X3PSLzH0h51OmOlU5
 NQoihiOE7wEN6MJGEQptAIgDIzErZiYsynlE+9CWvSeHD9/Aqo7tuzPq6gIkZoNiGOzo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ; h=Cc:To:From:Date:References:In-Reply-To:Message-Id:Subject:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Tu0G4o2YniOLNA8A+pcpcK+W2C4KI1degfLJBeDXzaU=; b=jmELSH/IHQtc9oV4zbmtiAZyOl
 ofXuuldCg6xPN0e5yAhEPnpi59TQjf/7U0AM+/Wc4nRBcBV2CEL7RJc29Vf+9WHNx3gISj4vDmdPP
 X9cWB1/okcXr9qa1U9VqnotBhH+kY4Sbl5FU29tAaPq7SlQCWrqbSCFcPndJiO6sSxr0=;
Received: from mgamail.intel.com ([198.175.65.20])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vhueD-0007Ut-F6 for tboot-devel@lists.sourceforge.net;
 Mon, 19 Jan 2026 19:10:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768849846; x=1800385846;
 h=mime-version:content-transfer-encoding:subject:
 message-id:in-reply-to:references:date:from:to:cc;
 bh=jEgbTL9sER8ffiUilWKySIddsIhjvuzxeK5rkka5+l4=;
 b=B+rYjr54hmHYCkB/lcLuoYie5Pqi0d2nAvAl7x81y7jfiWHT8dmnADRp
 KSCUtHbY97CGcRKxEu3+1awRucF65XcQXBkkgZwnfhOp3+XlH4/IpOp6G
 2lZfn5NzZBXq0e08iXZhh8UGXv6+QFucZGxqgQ3ebDmHOIMqojnm3x4dL
 X97pJ9LiQW5hOQYmfjoFC+ASnXdYsOIoyfoDS9K/H9mQtkVyEcvcUIdAi
 aqmPpF+hDrE7bOUlojdactUV2wvtE8zDAFDtAPR2aY+fkDSwQYx7uUMt8
 xnyfpF5DTV63MxL62eu96PHj8oqfYHiJ4ZO9I2yY0JoCnQpxo2HI/Qrbk A==;
X-CSE-ConnectionGUID: FseYnEDBQ2ujxzeHZ2ZmLg==
X-CSE-MsgGUID: xgljPUgMQWGDdU7nwkh99A==
X-IronPort-AV: E=McAfee;i="6800,10657,11676"; a="69794404"
X-IronPort-AV: E=Sophos;i="6.21,238,1763452800"; d="scan'208";a="69794404"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2026 11:10:44 -0800
X-CSE-ConnectionGUID: UeCmZevQR76tGl4ohqIPmQ==
X-CSE-MsgGUID: VNVsY9wHRb6y+eC8t7eNQw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,238,1763452800"; d="scan'208";a="210065414"
Received: from gklab-219-098.igk.intel.com (HELO [127.0.1.1]) ([10.211.219.98])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2026 11:10:42 -0800
MIME-Version: 1.0
X-Mercurial-Node: 5b577a02cec7f8ab1344d9f548cbf9af19f3ec00
X-Mercurial-Series-Index: 4
X-Mercurial-Series-Total: 4
Message-Id: <5b577a02cec7f8ab1344.1768849812@gklab-219-098>
X-Mercurial-Series-Id: <d512777179769bd322ea.1768849809@gklab-219-098>
In-Reply-To: <patchbomb.1768849808@gklab-219-098>
References: <patchbomb.1768849808@gklab-219-098>
User-Agent: Mercurial-patchbomb/6.7.2
Date: Mon, 19 Jan 2026 20:10:12 +0100
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
 # Date 1768305768 -3600 # Tue Jan 13 13:02:48 2026 +0100 # Node ID
 5b577a02cec7f8ab1344d9f548cbf9af19f3ec00 # [...] 
 Content analysis details:   (-0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1vhueD-0007Ut-F6
Subject: [tboot-devel] [PATCH 4 of 4] Verify MinMleHeader version,
 before TPR support disabling
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
# Date 1768305768 -3600
#      Tue Jan 13 13:02:48 2026 +0100
# Node ID 5b577a02cec7f8ab1344d9f548cbf9af19f3ec00
# Parent  f24ac8c37095e6a0ffb2f781ad2202656a249caa
Verify MinMleHeader version, before TPR support disabling

Before TBOOT disables TPR support bits in the OsSinit.Capabilities and MleHeader.Capabilities,
it needs to verify if the MinMleHeader version is not equal both to the v2.2 and v2.3.
In case, when minimal MLE Header version is 2.2, then SINIT treats TprSupport bit in OsSinit.Capabilities
as reserved field and ignores it. However, when MinMleHeader version is 2.3, it means that SINIT supports
only TPRs as memory protection mechanism and it will abort MLE execution if TPR support bit is disabled in MLE
Header. From these reasons, TBOOT needs to verify MinMleHeader, before it forces PMR usage by SINIT ACM.

In the case, when the force_pmrs option isn't used, function returnes TPR support bit value from the SINIT ACM capabilities.

diff -r f24ac8c37095 -r 5b577a02cec7 tboot/txt/txt.c
--- a/tboot/txt/txt.c	Wed Jan 07 16:45:20 2026 +0100
+++ b/tboot/txt/txt.c	Tue Jan 13 13:02:48 2026 +0100
@@ -837,15 +837,49 @@
 
 bool is_tpr_supported(bool force_pmrs)
 {
-    // Disable TPR support, if "force_pmrs" cmdline option was set
-    if (force_pmrs)
-    {
-        g_force_pmrs = true;
-        g_mle_hdr.capabilities.tpr_support = 0;
-        printk(TBOOT_INFO"TPR Support disabled in the MLE capabilities.\n");
+    acm_info_table_t *info_table = NULL;
+    txt_caps_t sinit_caps;
+
+    sinit_caps._raw = 0;
+    if (g_sinit != NULL) {
+        sinit_caps = get_sinit_capabilities(g_sinit);
+    }
+    else {
+        return sinit_caps.tpr_support;
     }
 
-    return g_mle_hdr.capabilities.tpr_support;
+    // Disable TPR support, if "force_pmrs" cmdline option was set
+    if (force_pmrs) {
+        info_table = get_acmod_info_table(g_sinit);
+        if (info_table == NULL) {
+            return sinit_caps.tpr_support;
+        }
+
+        if (info_table->min_mle_hdr_ver == 0x00020003) {
+            printk(TBOOT_INFO"MinMleHeader version is 2.3. "
+                             "Forcing PMRs is forbidden.\n");
+            return sinit_caps.tpr_support;
+        }
+        else {
+            if (info_table->min_mle_hdr_ver == 0x00020002) {
+                printk(TBOOT_INFO"MinMleHeader version is 2.2. "
+                                 "SINIT will ignore TPR support bit 14 in\n"
+                                 "OsSinit.Capabilities.\n");
+                return sinit_caps.tpr_support;
+            }
+            else {
+                g_force_pmrs = true;
+            }
+
+            g_mle_hdr.capabilities.tpr_support = 0;
+            printk(TBOOT_INFO"TPR Support disabled in the MLE capabilities.\n");
+
+            return g_mle_hdr.capabilities.tpr_support;
+        }
+    }
+    else {
+        return sinit_caps.tpr_support;
+    }
 }
 
 tb_error_t txt_launch_environment(loader_ctx *lctx)



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
