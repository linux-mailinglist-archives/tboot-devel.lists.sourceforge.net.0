Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A33D5D3B6E1
	for <lists+tboot-devel@lfdr.de>; Mon, 19 Jan 2026 20:10:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:From:Date:References:In-Reply-To:Message-Id:MIME-Version:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NMnl0BNPPF+Nkfc/1FLFhSOKpzBnMqNjnA7Fsa+5NQM=; b=JKIxorLeM8iDDXvyTaRctL0GSN
	MW6RMDUmxCA/8tZRiuI0W8sfyzJ/xOrb3VWiYYHnVvKwInVPXUX0XQ2H9ZvrWwYCjZbejpEaqttrA
	ie2rnRUzo4pvbX72kJOjx4xlcygPSpAO68wlOPWAc3GMv/kmE1nZHhm9/8aGD+7z7HkE=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1vhueD-0000kc-VP;
	Mon, 19 Jan 2026 19:10:45 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <michal.camacho.romero@linux.intel.com>)
 id 1vhueC-0000kV-CF for tboot-devel@lists.sourceforge.net;
 Mon, 19 Jan 2026 19:10:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:From:Date:References:In-Reply-To:Message-Id:
 Subject:Content-Transfer-Encoding:Content-Type:MIME-Version:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZKebQ5S00Z1dQ4840hMeFnuuFA6qBVLVWg9eekizugc=; b=bhYTXTjAohAfKZqHfaweR5vrd5
 uu79RlZ+jMWswdRj7DFnVoTRD7ms578Hq2yaFJ3Xm99epehOWBB697ZPCCsLSSyJvspviAo3/z5jd
 87/H6wLFrZZWa+WdfCFCLobuRNfj/mbn8FxzTcchnFqBU1gUBX5ocT0/ShLvbvLt7sXQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ; h=Cc:To:From:Date:References:In-Reply-To:Message-Id:Subject:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZKebQ5S00Z1dQ4840hMeFnuuFA6qBVLVWg9eekizugc=; b=g72Cn2UF4kuc4k83ipkho1O777
 yzHdhHjcaE7NLLPK1yKEQeZFWtlgNTiOlKAQD13x9SzHUhA6NHGGFBVJKCu6HKgGVo+vv3YP5MigD
 jvnsef1Zs7lsdYkoSrMwfsEKasKxUE6uQIqdxurpN5ZxkbAO05Yaa/qHXCmUSQDceeU8=;
Received: from mgamail.intel.com ([198.175.65.20])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vhueB-0007Ut-MB for tboot-devel@lists.sourceforge.net;
 Mon, 19 Jan 2026 19:10:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768849844; x=1800385844;
 h=mime-version:content-transfer-encoding:subject:
 message-id:in-reply-to:references:date:from:to:cc;
 bh=nQcZIdfjVC7bYDlPAnIkL95jo2XGlFVvQ+YIWCpC3P0=;
 b=NmKXnFcn2bP7dCGlZtw16/gq34OW8OWiB8skf+XJXhei626dhEG0Sa1c
 h9yCCfJhNXcN0VIESwuYj6ORel6hcUZEPo32NQqbSsEA4S1jNN1ErB9/Z
 +t9rDbkcud852IO6I+gl1zd4ZeSCInJNjtEOvSnEHGZoKzrb1kAgKPIkq
 5++vDUtlV62tbGADMZfSW+9p9tRDaoQ0ntseT9HuAqHG9n+iEVUnJxkpG
 6oHVEPqDdR0fqhscpFjWUn2NLxw06PNMva/IcDuK2xue3MO89s1GOK2Rb
 XnXLDLuHuu8dWaaYFdElgFu7DDTUwgjS7B7URxfBkuBKpToUh0iBRGygB w==;
X-CSE-ConnectionGUID: U2WhnoxRRWuhelUdffawlA==
X-CSE-MsgGUID: +cqWyyQYRZqZIDg3BCfxnQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11676"; a="69794401"
X-IronPort-AV: E=Sophos;i="6.21,238,1763452800"; d="scan'208";a="69794401"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2026 11:10:40 -0800
X-CSE-ConnectionGUID: I2TpDN5yQ42qlM/iULTsAQ==
X-CSE-MsgGUID: uHwNcqokRDGtBRVIFN8qkg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,238,1763452800"; d="scan'208";a="210065404"
Received: from gklab-219-098.igk.intel.com (HELO [127.0.1.1]) ([10.211.219.98])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2026 11:10:38 -0800
MIME-Version: 1.0
X-Mercurial-Node: d512777179769bd322ea73adc560b9e85d63c893
X-Mercurial-Series-Index: 1
X-Mercurial-Series-Total: 4
Message-Id: <d512777179769bd322ea.1768849809@gklab-219-098>
X-Mercurial-Series-Id: <d512777179769bd322ea.1768849809@gklab-219-098>
In-Reply-To: <patchbomb.1768849808@gklab-219-098>
References: <patchbomb.1768849808@gklab-219-098>
User-Agent: Mercurial-patchbomb/6.7.2
Date: Mon, 19 Jan 2026 20:10:09 +0100
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
 # Date 1763628749 -3600 # Thu Nov 20 09:52:29 2025 +0100 # Node ID
 d512777179769bd322ea73adc560b9e85d63c893 # [...] 
 Content analysis details:   (-0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1vhueB-0007Ut-MB
Subject: [tboot-devel] [PATCH 1 of 4] Enable to force PMR using,
 instead of TPRs
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
# Date 1763628749 -3600
#      Thu Nov 20 09:52:29 2025 +0100
# Node ID d512777179769bd322ea73adc560b9e85d63c893
# Parent  5220085b54dd5fb5f2e9f59766f14756b2062ebd
Enable to force PMR using, instead of TPRs

Provide a possibility to replace TPRs usage with PMRs, by setting the
additional TBOOT cmdline option "force_pmrs=true". It disables TPR
support bit in the ACM capabilities and the similar bit in the MLE
capabilities. This solution forced TBOOT and SINIT ACM to configure PMRs
as their protection ranges.

diff -r 5220085b54dd -r d51277717976 tboot/common/cmdline.c
--- a/tboot/common/cmdline.c	Thu Apr 17 08:33:41 2025 -0400
+++ b/tboot/common/cmdline.c	Thu Nov 20 09:52:29 2025 +0100
@@ -85,6 +85,7 @@
     { "measure_nv", "false" },       /* true|false */
     { "extpol",    "sha256" },         /*agile|embedded|sha1|sha256|sm3|... */
     { "ignore_prev_err", "true"},    /* true|false */
+    { "force_pmrs", "false"},        /* true|false */
     { "force_tpm2_legacy_log", "false"}, /* true|false */
     { "save_vtd", "false"},          /* true|false */
     { "dump_memmap", "false"},          /* true|false */
@@ -541,6 +542,19 @@
     }
 }
 
+bool get_tboot_force_pmrs(void)
+{
+    const char *force_pmrs = get_option_val(g_tboot_cmdline_options,
+                                            g_tboot_param_values,
+                                            "force_pmrs");
+    if (force_pmrs != NULL && tb_strcmp(force_pmrs, "true"))
+    {
+        return true;
+    }
+
+    return false;
+}
+
 bool get_tboot_force_tpm2_legacy_log(void)
 {
     const char *force_legacy_log =
diff -r 5220085b54dd -r d51277717976 tboot/common/tboot.c
--- a/tboot/common/tboot.c	Thu Apr 17 08:33:41 2025 -0400
+++ b/tboot/common/tboot.c	Thu Nov 20 09:52:29 2025 +0100
@@ -352,6 +352,7 @@
 void begin_launch(void *addr, uint32_t magic)
 {
     tb_error_t err;
+    bool force_pmrs = false;
 
     if (g_ldr_ctx->type == 0)        
         determine_loader_type(addr, magic);
@@ -454,10 +455,12 @@
        if (!verify_acmod(g_sinit)) 
            apply_policy(TB_ERR_ACMOD_VERIFY_FAILED);
     }
-    
+
+    force_pmrs = get_tboot_force_pmrs();
+
     //We need to have g_sinit point to SINIT ACM before we can run is_tpr_supported
     //This global variable decides whether PMR or TPR is used
-    g_tpr_support = is_tpr_supported();
+    g_tpr_support = is_tpr_supported(force_pmrs);
 
     /* make TPM ready for measured launch */
     if (!tpm_detect())
diff -r 5220085b54dd -r d51277717976 tboot/include/cmdline.h
--- a/tboot/include/cmdline.h	Thu Apr 17 08:33:41 2025 -0400
+++ b/tboot/include/cmdline.h	Thu Nov 20 09:52:29 2025 +0100
@@ -55,6 +55,7 @@
 extern bool get_tboot_ignore_prev_err(void);
 extern bool get_tboot_measure_nv(void);
 extern void get_tboot_extpol(void);
+extern bool get_tboot_force_pmrs(void);
 extern bool get_tboot_force_tpm2_legacy_log(void);
 extern bool get_tboot_save_vtd(void);
 extern bool get_tboot_dump_memmap(void);
diff -r 5220085b54dd -r d51277717976 tboot/include/txt/acmod.h
--- a/tboot/include/txt/acmod.h	Thu Apr 17 08:33:41 2025 -0400
+++ b/tboot/include/txt/acmod.h	Thu Nov 20 09:52:29 2025 +0100
@@ -202,6 +202,8 @@
 extern txt_caps_t get_sinit_capabilities(const acm_hdr_t* hdr);
 extern tpm_info_list_t *get_tpm_info_list(const acm_hdr_t* hdr);
 extern void verify_IA32_se_svn_status(const acm_hdr_t *acm_hdr);
+extern acm_info_table_t *get_acmod_info_table(const acm_hdr_t* hdr);
+
 #endif /* __TXT_ACMOD_H__ */
 
 /*
diff -r 5220085b54dd -r d51277717976 tboot/include/txt/txt.h
--- a/tboot/include/txt/txt.h	Thu Apr 17 08:33:41 2025 -0400
+++ b/tboot/include/txt/txt.h	Thu Nov 20 09:52:29 2025 +0100
@@ -61,7 +61,7 @@
 extern bool txt_is_powercycle_required(void);
 extern void ap_wait(unsigned int cpuid);
 extern int get_evtlog_type(void);
-extern bool is_tpr_supported(void);
+extern bool is_tpr_supported(bool);
 
 extern uint32_t g_using_da;
 extern bool     g_tpr_support;
diff -r 5220085b54dd -r d51277717976 tboot/txt/acmod.c
--- a/tboot/txt/acmod.c	Thu Apr 17 08:33:41 2025 -0400
+++ b/tboot/txt/acmod.c	Thu Nov 20 09:52:29 2025 +0100
@@ -56,7 +56,7 @@
 #include <tpm.h>
 #endif    /* IS_INCLUDED */
 
-static acm_info_table_t *get_acmod_info_table(const acm_hdr_t* hdr)
+acm_info_table_t *get_acmod_info_table(const acm_hdr_t* hdr)
 {
     uint32_t user_area_off;
 
diff -r 5220085b54dd -r d51277717976 tboot/txt/txt.c
--- a/tboot/txt/txt.c	Thu Apr 17 08:33:41 2025 -0400
+++ b/tboot/txt/txt.c	Thu Nov 20 09:52:29 2025 +0100
@@ -97,7 +97,7 @@
  * this is the structure whose addr we'll put in TXT heap
  * it needs to be within the MLE pages, so force it to the .text section
  */
-static __text const mle_hdr_t g_mle_hdr = {
+static __text mle_hdr_t g_mle_hdr = {
     uuid              :  MLE_HDR_UUID,
     length            :  sizeof(mle_hdr_t),
     version           :  MLE_HDR_VER,
@@ -117,6 +117,23 @@
 /* count of APs in WAIT-FOR-SIPI */
 atomic_t ap_wfs_count;
 
+static void disable_tpr_support(const acm_hdr_t *hdr)
+{
+    // Disable TPR support in the SINIT ACM capabilities
+    acm_info_table_t *info_table = get_acmod_info_table(hdr);
+    if ( info_table == NULL || info_table->version < 3 ) {
+        printk(TBOOT_ERR"TPR support disabling process has failed\n");
+    }
+
+    info_table->capabilities.tpr_support = 0;
+    printk(TBOOT_INFO"TPR support has been disabled properly in SINIT ACM\n");
+
+    // Disable TPR support bit in the MLE capabilities
+    g_mle_hdr.capabilities.tpr_support = 0;
+
+    printk(TBOOT_INFO"MLE capabilities: 0x%X\n", g_mle_hdr.capabilities._raw);
+}
+
 static void print_file_info(void)
 {
     printk(TBOOT_DETA"file addresses:\n");
@@ -824,7 +841,7 @@
     return sts.senter_done_sts;
 }
 
-bool is_tpr_supported(void)
+bool is_tpr_supported(bool force_pmrs)
 {
     //Reads SINIT ACM capabilities field and returns tpr_support bit
     //Needs g_sinit to be set.
@@ -832,6 +849,12 @@
 
     sinit_caps._raw = 0;
 
+    // Disable TPR support, if "force_pmrs" cmdline option was set
+    if (force_pmrs && g_sinit != NULL)
+    {
+        disable_tpr_support(g_sinit);
+    }
+
     if (g_sinit != NULL) {
         sinit_caps = get_sinit_capabilities(g_sinit);
     }



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
