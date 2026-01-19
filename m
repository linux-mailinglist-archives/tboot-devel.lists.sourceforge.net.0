Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CB663D3B6E5
	for <lists+tboot-devel@lfdr.de>; Mon, 19 Jan 2026 20:11:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:From:Date:References:In-Reply-To:Message-Id:MIME-Version:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dZpm+oidY11QiJHafslkute+sDCXjYvDAByxGZOaFzs=; b=Jedql5wPUcsDOCC4VcE1GNlrKV
	e+K8G7j9i0AGP6EN3He/99+Q1ONsThfwuwwekETZborsKDwAlSsye3tu7azBtOmZtdADPeS3tK9J7
	RBKxa/bDc2Ll2dX6zinYQnUhVXveXQd90vzhJAFBrlaWpwRxtAX3DsMAgcabSLbBOTNM=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1vhueF-0001BX-7Z;
	Mon, 19 Jan 2026 19:10:48 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <michal.camacho.romero@linux.intel.com>)
 id 1vhueC-0001B9-K4 for tboot-devel@lists.sourceforge.net;
 Mon, 19 Jan 2026 19:10:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:From:Date:References:In-Reply-To:Message-Id:
 Subject:Content-Transfer-Encoding:Content-Type:MIME-Version:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/H9KUc6tFTHFQ1rKYNJszoOS6/c3Zw/XFeUiP+OfKic=; b=meFK5bup7zWtFiX8m5G7WoSZWn
 hAcm4kfpIY2Zv65GoqHsnL98hEkH84pPSmzvJ7FXMgeedqw2ZE6Hfw+qt4Q6hugly03FKWfqK7OOu
 zsxRAWcqfPQL443v5ma/JXLnXWEgVZZnWqM94j78Vwqqhz+C0bEhpmZaNUczrDm/oXe0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ; h=Cc:To:From:Date:References:In-Reply-To:Message-Id:Subject:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/H9KUc6tFTHFQ1rKYNJszoOS6/c3Zw/XFeUiP+OfKic=; b=G/o/L7fChl7KjspXf3hSTea3P2
 aWx0/DR9WIH7g02/jb86TWW98JGMSkom9Q3B7Gt1F9C2QEI3AlUKHl+gBsZbw1+9+HcsFq9Uwc0k1
 ed9JTwR1jVTb44J3MNkh5RsnzZiKbmyPNhJziYcWHmEeNKF7F/2z4gbbGHMszWY1rG5o=;
Received: from mgamail.intel.com ([198.175.65.20])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vhueC-0007Ut-Up for tboot-devel@lists.sourceforge.net;
 Mon, 19 Jan 2026 19:10:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768849846; x=1800385846;
 h=mime-version:content-transfer-encoding:subject:
 message-id:in-reply-to:references:date:from:to:cc;
 bh=F5D4Vz/oR3jjUUJ8ULA+WZXPo9j7cR6GjQ3NUpFuQos=;
 b=ATNRlhK/Bib2hWNF7RvhzbZywHCuGxoHI1/L/uPV9kD1504pRyxeiV17
 x8tCAKqX3fTShOf0TsWW21FfFo89U67qGqqD84EEYQmfWaXF7t/avb04Z
 Gt+ny7V7rN7gz7LMZw5ag7WNtdUn+oLhC6MHpcVkbdC6oPHpqMjpjVD30
 eednbixbuZMLapwGehwqrEcERLkBgSFxkPV2gI5axpS4i+qiSubtoLzeV
 +MPXt0ZBpf+RG4c64BiO/wFlehpSUhUC4GlE/2CuEIysb8wEmWfaKNYcM
 8R6T3wqrQ7DC+GDkAxPq3sz89Fd25ducOmoRBrf4p0ylvNTyNqjPMt7+a A==;
X-CSE-ConnectionGUID: /xmcYzj0TZ22ba1+rxz9Rg==
X-CSE-MsgGUID: mO3BYMgBSEq/n8et87GWWg==
X-IronPort-AV: E=McAfee;i="6800,10657,11676"; a="69794403"
X-IronPort-AV: E=Sophos;i="6.21,238,1763452800"; d="scan'208";a="69794403"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2026 11:10:43 -0800
X-CSE-ConnectionGUID: fWl+3szXQ+q6wUTW1metAw==
X-CSE-MsgGUID: ZaALaOuwSlyqrFsN8fT8RA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,238,1763452800"; d="scan'208";a="210065410"
Received: from gklab-219-098.igk.intel.com (HELO [127.0.1.1]) ([10.211.219.98])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2026 11:10:41 -0800
MIME-Version: 1.0
X-Mercurial-Node: f24ac8c37095e6a0ffb2f781ad2202656a249caa
X-Mercurial-Series-Index: 3
X-Mercurial-Series-Total: 4
Message-Id: <f24ac8c37095e6a0ffb2.1768849811@gklab-219-098>
X-Mercurial-Series-Id: <d512777179769bd322ea.1768849809@gklab-219-098>
In-Reply-To: <patchbomb.1768849808@gklab-219-098>
References: <patchbomb.1768849808@gklab-219-098>
User-Agent: Mercurial-patchbomb/6.7.2
Date: Mon, 19 Jan 2026 20:10:11 +0100
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
X-Headers-End: 1vhueC-0007Ut-Up
Subject: [tboot-devel] [PATCH 3 of 4] Disable TPR support in ACM
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
