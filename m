Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
Delivered-To: lists+tboot-devel@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QLi4Jhoce2msBQIAu9opvQ
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	for <lists+tboot-devel@lfdr.de>; Thu, 29 Jan 2026 09:36:42 +0100
X-Original-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A1653AD93D
	for <lists+tboot-devel@lfdr.de>; Thu, 29 Jan 2026 09:36:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:From:Date:References:In-Reply-To:Message-Id:MIME-Version:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AnbkZxML3wbc6AdM2TaD/IUd876oREGC1OQGbsqCTGU=; b=fSUX09HJqFcJeam7St4j0iu0yc
	h0XWm8v5/8OB536q5lKsJlu6V1mJk2W0XtXIvvP02jj6SpFUMusHzw0j8f8ImkBIUh3Lr/dWzwBkF
	+KdIWTAVWPqrngzHPpVqg7pFoRRu96xy2p7fwS/X38q13zKfPV5FmDvQvIT5Ju+4fG6Q=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1vlNVo-0004Vf-El;
	Thu, 29 Jan 2026 08:36:24 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <michal.camacho.romero@linux.intel.com>)
 id 1vlNVm-0004VS-Ow for tboot-devel@lists.sourceforge.net;
 Thu, 29 Jan 2026 08:36:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:From:Date:References:In-Reply-To:Message-Id:
 Subject:Content-Transfer-Encoding:Content-Type:MIME-Version:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7PPYUYCgjOms1QQjYzEpeL8w4WDegvSP2R1xfL9ycWI=; b=D2DTAxbIKmD26G4KY6du2l1DSW
 1CbDL+02mzdNG47Y6sePbBVOCY72XigEFf8GuckvB8RSXK7NOhD44hQ3XAXq6PRsg9dsxrMfsJOYF
 J6opWrb2oTH4Emfz22MEYB+xIBV40AtEqWLWHDnvWJIvdv2OBXojtdsxqGqN8HPw2MbM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ; h=Cc:To:From:Date:References:In-Reply-To:Message-Id:Subject:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7PPYUYCgjOms1QQjYzEpeL8w4WDegvSP2R1xfL9ycWI=; b=aL/216DKH0e8LU9VCzcrQxO5AQ
 PdMSSXOI7A4eobPyPA6ERtoR/zAyRTd6BfG5Tler1HACYqkyXnB/eUq8zGUKLOqtKUoAUIGAGeBhu
 CXC9IqYgj6pWjEyDaU9XAldg+GJ08IbNnKyxFMbhyNxZEzn83zFvdInnDK3kButsab7M=;
Received: from mgamail.intel.com ([198.175.65.21])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vlNVm-0007ZH-1z for tboot-devel@lists.sourceforge.net;
 Thu, 29 Jan 2026 08:36:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769675782; x=1801211782;
 h=mime-version:content-transfer-encoding:subject:
 message-id:in-reply-to:references:date:from:to:cc;
 bh=UJafRJEUcRehb1qzohWERqxj2ZJ4md2FmfPNneAsyLQ=;
 b=SqRDT2mYDh96haejQkmn3Pkm3q/gz2LocwVwtUQs5WoOQHYE7QPYUZFH
 sI3PN+0pqXN4LoQJkQGTpse5T/pSDpMKwb6D7S0WHuaMpHj/Av+s9Z8+L
 2St5LLTJBywqp2JpQo2+CVaz5O4LoDvJhEU7Zg1nSsA1lPLrKdkc8dE9i
 kLLURQ6kjBOX/6Svt2jvo+23N9e/E3Xbbyj2raADg8wtLmeSWjocK80TC
 BDrwpCHES9mgrpKavEwNhLm18cEYGDW0v9Tkhuj/3OVDfL7JMWIrtEqyf
 l0dUBJddw4VRF2Os6CdXDqYIl9LXgpHq8yUjWJJNbj85en3BkEBYfrBJ5 g==;
X-CSE-ConnectionGUID: gNIIueOrQt2yLaJUoR7CkQ==
X-CSE-MsgGUID: dnIG+/79TjuokRYhe+QhMQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11685"; a="70816161"
X-IronPort-AV: E=Sophos;i="6.21,260,1763452800"; d="scan'208";a="70816161"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 00:36:16 -0800
X-CSE-ConnectionGUID: PnI2NwP3SUaVHDBKaCfcGw==
X-CSE-MsgGUID: U0rhKopGSYSTdyV2t3mc0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,260,1763452800"; d="scan'208";a="239763937"
Received: from gklab-219-098.igk.intel.com (HELO [127.0.1.1]) ([10.211.219.98])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 00:36:14 -0800
MIME-Version: 1.0
X-Mercurial-Node: 497c8178233de6e9ae636440abfc52be57c197fc
X-Mercurial-Series-Index: 1
X-Mercurial-Series-Total: 1
Message-Id: <497c8178233de6e9ae63.1769675754@gklab-219-098>
X-Mercurial-Series-Id: <497c8178233de6e9ae63.1769675754@gklab-219-098>
In-Reply-To: <patchbomb.1768849808@gklab-219-098>
References: <patchbomb.1768849808@gklab-219-098>
User-Agent: Mercurial-patchbomb/6.7.2
Date: Thu, 29 Jan 2026 09:35:54 +0100
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
 # Date 1769639191 -3600 # Wed Jan 28 23:26:31 2026 +0100 # Node ID
 497c8178233de6e9ae636440abfc52be57c197fc # [...] 
 Content analysis details:   (-0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1vlNVm-0007ZH-1z
Subject: [tboot-devel] [PATCH] Downgrade MinMleHdr version from 2.3 to 2.2
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.11 / 15.00];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[michal.camacho.romero@linux.intel.com,tboot-devel-bounces@lists.sourceforge.net];
	FORGED_SENDER_MAILLIST(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,intel.com:s=Intel];
	MIME_TRACE(0.00)[0:+];
	DKIM_MIXED(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_NONE(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,intel.com:-];
	TAGGED_RCPT(0.00)[tboot-devel];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,lists.sourceforge.net:dkim,lists.sourceforge.net:helo,lists.sourceforge.net:rdns]
X-Rspamd-Queue-Id: A1653AD93D
X-Rspamd-Action: no action

# HG changeset patch
# User Michal Camacho Romero <michal.camacho.romero@linux.intel.com>
# Date 1769639191 -3600
#      Wed Jan 28 23:26:31 2026 +0100
# Node ID 497c8178233de6e9ae636440abfc52be57c197fc
# Parent  5b577a02cec7f8ab1344d9f548cbf9af19f3ec00
Downgrade MinMleHdr version from 2.3 to 2.2

SINIT ACM supports only TPR, if MinMleHdr version is 2.3. Forcing PMRs will cause
SINIT ACM failure, if TPR support bit in the MLE capabilities will be disabled.
For this reason, TBOOT downgrades MinMleHdrVer from 2.3 to 2.2. In this case SINIT
ACM ignores TPR support settings.

diff -r 5b577a02cec7 -r 497c8178233d tboot/common/tboot.c
--- a/tboot/common/tboot.c	Tue Jan 13 13:02:48 2026 +0100
+++ b/tboot/common/tboot.c	Wed Jan 28 23:26:31 2026 +0100
@@ -353,7 +353,7 @@
 {
     tb_error_t err;
 
-    if (g_ldr_ctx->type == 0)        
+    if (g_ldr_ctx->type == 0)
         determine_loader_type(addr, magic);
 
     /* on pre-SENTER boot, copy command line to buffer in tboot image
@@ -400,7 +400,7 @@
 
     if (is_launched()) printk(TBOOT_INFO"SINIT ACM successfully returned...\n");
     if ( s3_flag ) printk(TBOOT_INFO"Resume from S3...\n");
-    
+
     /* RLM scaffolding
        if (g_ldr_ctx->type == 2)
        print_loader_ctx(g_ldr_ctx);
@@ -457,7 +457,14 @@
 
     //We need to have g_sinit point to SINIT ACM before we can run is_tpr_supported
     //This global variable decides whether PMR or TPR is used
-    g_tpr_support = is_tpr_supported(get_tboot_force_pmrs());
+    if (get_tboot_force_pmrs()) {
+        // Disable TPR support, if "force_pmrs" cmdline option was set
+        g_tpr_support = false;
+        force_pmrs_usage();
+    }
+    else {
+        g_tpr_support = is_tpr_supported();
+    }
 
     /* make TPM ready for measured launch */
     if (!tpm_detect())
diff -r 5b577a02cec7 -r 497c8178233d tboot/include/txt/txt.h
--- a/tboot/include/txt/txt.h	Tue Jan 13 13:02:48 2026 +0100
+++ b/tboot/include/txt/txt.h	Wed Jan 28 23:26:31 2026 +0100
@@ -60,8 +60,9 @@
 extern void txt_shutdown(void);
 extern bool txt_is_powercycle_required(void);
 extern void ap_wait(unsigned int cpuid);
+extern void force_pmrs_usage(void);
 extern int get_evtlog_type(void);
-extern bool is_tpr_supported(bool);
+extern bool is_tpr_supported(void);
 
 extern uint32_t g_using_da;
 extern bool     g_tpr_support;
diff -r 5b577a02cec7 -r 497c8178233d tboot/txt/txt.c
--- a/tboot/txt/txt.c	Tue Jan 13 13:02:48 2026 +0100
+++ b/tboot/txt/txt.c	Wed Jan 28 23:26:31 2026 +0100
@@ -835,51 +835,38 @@
     return sts.senter_done_sts;
 }
 
-bool is_tpr_supported(bool force_pmrs)
+bool is_tpr_supported(void)
 {
-    acm_info_table_t *info_table = NULL;
+    //Reads SINIT ACM capabilities field and returns tpr_support bit
+    //Needs g_sinit to be set.
     txt_caps_t sinit_caps;
 
     sinit_caps._raw = 0;
+
     if (g_sinit != NULL) {
         sinit_caps = get_sinit_capabilities(g_sinit);
     }
-    else {
-        return sinit_caps.tpr_support;
+
+    return sinit_caps.tpr_support;
+}
+
+void force_pmrs_usage(void)
+{
+    acm_info_table_t *info_table = get_acmod_info_table(g_sinit);
+    if (info_table == NULL) {
+        return;
     }
 
-    // Disable TPR support, if "force_pmrs" cmdline option was set
-    if (force_pmrs) {
-        info_table = get_acmod_info_table(g_sinit);
-        if (info_table == NULL) {
-            return sinit_caps.tpr_support;
-        }
+    if (info_table->min_mle_hdr_ver >= 0x00020003) {
+        printk(TBOOT_WARN"SINIT ACM has no support for PMR DMA Protection by default.\n");
+        printk(TBOOT_WARN"MinMleHeader version is downgraded to 2.2.\n");
+        info_table->min_mle_hdr_ver = 0x00020002;
+    }
 
-        if (info_table->min_mle_hdr_ver == 0x00020003) {
-            printk(TBOOT_INFO"MinMleHeader version is 2.3. "
-                             "Forcing PMRs is forbidden.\n");
-            return sinit_caps.tpr_support;
-        }
-        else {
-            if (info_table->min_mle_hdr_ver == 0x00020002) {
-                printk(TBOOT_INFO"MinMleHeader version is 2.2. "
-                                 "SINIT will ignore TPR support bit 14 in\n"
-                                 "OsSinit.Capabilities.\n");
-                return sinit_caps.tpr_support;
-            }
-            else {
-                g_force_pmrs = true;
-            }
-
-            g_mle_hdr.capabilities.tpr_support = 0;
-            printk(TBOOT_INFO"TPR Support disabled in the MLE capabilities.\n");
-
-            return g_mle_hdr.capabilities.tpr_support;
-        }
-    }
-    else {
-        return sinit_caps.tpr_support;
-    }
+    g_force_pmrs = true;
+    g_mle_hdr.capabilities.tpr_support = 0;
+    printk(TBOOT_INFO"TPR support disabled in the MLE capabilities.\n");
+    return;
 }
 
 tb_error_t txt_launch_environment(loader_ctx *lctx)



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
