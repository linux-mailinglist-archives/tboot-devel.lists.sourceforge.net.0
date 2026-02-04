Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
Delivered-To: lists+tboot-devel@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YJRZOaL/gmnJgQMAu9opvQ
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	for <lists+tboot-devel@lfdr.de>; Wed, 04 Feb 2026 09:13:22 +0100
X-Original-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 256C0E2FF9
	for <lists+tboot-devel@lfdr.de>; Wed, 04 Feb 2026 09:13:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:From:Date:Message-Id:MIME-Version:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=3cDxheGuK+PfWmrPGGWBt6CMEsTPz9abdXx90oCu8tU=; b=GC2StbQFijxhxTZ9ws0y0edtgF
	EwEfdf+dh4tAlML2dALmgaGwkdYpUzeL1eT2rr1gEyxbrhgxBtrZef8e3I/KQnIzIiBS6SAx/YZk4
	eJk4DMBPbdo/vnccz0W4TkfSMlx/bd/VUEK5ptOQ0h7kUrqk1XrkZtH7bWd/SmuFsnWA=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1vnY0Z-00005D-6L;
	Wed, 04 Feb 2026 08:13:07 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <michal.camacho.romero@linux.intel.com>)
 id 1vnY0Y-000052-Em for tboot-devel@lists.sourceforge.net;
 Wed, 04 Feb 2026 08:13:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:From:Date:Message-Id:Subject:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Y2KRAgMHsmFULub1g7D5n9BPptpLrTD/jNGiglc0uPM=; b=lX/nZTBfMVnjc9cg2cRELUkP8g
 2Q1eFWiqFbbKA94e71MWypiT+kRT+sPCm3u3loNwqDvIQKnXzX8+aNPtuIRgsU5K8ODx+1Xg2zEJp
 RaN4suj6ir5KwHUZmnndRhCHH87DCc1Z6XmcEqQzTdTxq8yLogZh02zByfXsRr3Tm+OU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:From:Date:Message-Id:Subject:Content-Transfer-Encoding:Content-Type
 :MIME-Version:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Y2KRAgMHsmFULub1g7D5n9BPptpLrTD/jNGiglc0uPM=; b=c
 hc47Ie2HIuoex49By7vlRa3GrJfGzhMA8msUPmzbHNYuqfQk7hWv4SytF0Ptfsg0NBmrj5dNwXanS
 n6l8niFma/ZJ/puJyavRnI5I3zchh/JXUyiF/BkRtqMKHLXTvr2tAOoa1gfsTWibK4uNZOM7+31xY
 fX8s7KPOHIjTFOh0=;
Received: from mgamail.intel.com ([192.198.163.10])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vnY0Y-0003QU-FW for tboot-devel@lists.sourceforge.net;
 Wed, 04 Feb 2026 08:13:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770192786; x=1801728786;
 h=mime-version:content-transfer-encoding:subject:
 message-id:date:from:to:cc;
 bh=vRQiQx3IxXVDva3N4cnJeScPGe11dgfLLLaBKgHganU=;
 b=fJVWoSayhmmWUWkEZpWQ4HPeuzKZfZ5sZrCHBm9SP3we7Y6McbmxLi1z
 87v9uiuhZf8ZUT6nlzsa3qfP9jnlaIGce9RVTOpnGr6WyPPG7xYiHOcBR
 3BVqaiQt82qB56QiCPIL0iW+S0uQeDNL7Zg4HGOyvyQ6CVSbwuC8CpuEU
 QKmxaHeH59KQPmium+6j8jd8JWx6KxQv0S/lBWIHC+BtRlWdPzoZxqu/q
 QLnovL2CGuk46+ENjBDIfwdU++jxsXqNv7s7KgxQBWktOYBJeZBwK0Wrl
 rMz9MhVTTkRJByvrDv1MDPSjjgQjigzkTYnMp7kqaOhZ9MM6e/clGGnLe Q==;
X-CSE-ConnectionGUID: YOXML6DDRtKrox4bjn0FbA==
X-CSE-MsgGUID: AQPN2Vh1S3K4y+1tA6l1mg==
X-IronPort-AV: E=McAfee;i="6800,10657,11691"; a="82742712"
X-IronPort-AV: E=Sophos;i="6.21,272,1763452800"; d="scan'208";a="82742712"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2026 00:13:01 -0800
X-CSE-ConnectionGUID: UKPJFEy0TWONwZxTNyU/cg==
X-CSE-MsgGUID: 9tZROCKEQ2ynVMDzCWxOuw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,272,1763452800"; d="scan'208";a="240772826"
Received: from gklab-219-098.igk.intel.com (HELO [127.0.1.1]) ([10.211.219.98])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2026 00:12:59 -0800
MIME-Version: 1.0
X-Mercurial-Node: 1232464471185e11faf58825ca0bb1fea64c7924
X-Mercurial-Series-Index: 1
X-Mercurial-Series-Total: 1
Message-Id: <1232464471185e11faf5.1770192759@gklab-219-098>
X-Mercurial-Series-Id: <1232464471185e11faf5.1770192759@gklab-219-098>
User-Agent: Mercurial-patchbomb/6.7.2
Date: Wed, 04 Feb 2026 09:12:39 +0100
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
 # Date 1770122503 -3600 # Tue Feb 03 13:41:43 2026 +0100 # Node ID
 1232464471185e11faf58825ca0bb1fea64c7924 # [...] 
 Content analysis details:   (-0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1vnY0Y-0003QU-FW
Subject: [tboot-devel] [PATCH] Disable CET in the TBOOT shutdown handler
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
Cc: mateusz.mowka@linux.intel.com, adamx.pawlicki@intel.com, lukasz@hawrylko.pl,
 tcamuso@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tboot-devel-bounces@lists.sourceforge.net
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.11 / 15.00];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[michal.camacho.romero@linux.intel.com,tboot-devel-bounces@lists.sourceforge.net];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,intel.com:s=Intel];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,intel.com:-];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_NONE(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	DKIM_MIXED(0.00)[];
	TAGGED_RCPT(0.00)[tboot-devel];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[suse.com:url,intel.com:email,lists.sourceforge.net:dkim,lists.sourceforge.net:helo,lists.sourceforge.net:rdns]
X-Rspamd-Queue-Id: 256C0E2FF9
X-Rspamd-Action: no action

# HG changeset patch
# User Michal Camacho Romero <michal.camacho.romero@linux.intel.com>
# Date 1770122503 -3600
#      Tue Feb 03 13:41:43 2026 +0100
# Node ID 1232464471185e11faf58825ca0bb1fea64c7924
# Parent  6aefe80324aec8673ef9347cfb1d624da328f2e8
Disable CET in the TBOOT shutdown handler

During PC shutdown, the Linux Kernel works under enable Intel CET technology,
which enforces indirect branch tracking (IBT) mechanism for CPU indirect jumps and calls.
It prevented CPU to jump into the TBOOT shutdown handler, during PC shutdown process.
In the result, Kernel threw "Missing ENDBR" bug, when CPU tried to jump to the TBOOT shutdown
handler's entry.

The given bug was resolved by endbr64 instuction call at the begin of TBOOT shutdown handler
and through disabling CET prior to the next CPU jump execution.

It resolves TBOOT shutdown failure bug, reported on the SLES (SUSE Linux Enterprise Server)
16.0 OS. OS power off, called by the "init 0" command, was failing, due to activated Intel
Control-Flow Enforcement Technology (CET). Disabling CET has allowed to execute OS and
TBOOT shutdown properly.

Closes: https://bugzilla.suse.com/show_bug.cgi?id=1247950

diff -r 6aefe80324ae -r 123246447118 tboot/common/shutdown.S
--- a/tboot/common/shutdown.S	Wed Jan 28 23:26:31 2026 +0100
+++ b/tboot/common/shutdown.S	Tue Feb 03 13:41:43 2026 +0100
@@ -116,9 +116,21 @@
  */
 ENTRY(shutdown_entry)
 	.code64
+        endbr64
 	cli
 	wbinvd
 
+        /* Disable CET*/
+        movl    $0, %eax
+        movl    $0, %edx
+        movl    $MSR_IA32_U_CET, %ecx
+        wrmsr
+
+        movl    $0, %eax
+        movl    $0, %edx
+        movl    $MSR_IA32_S_CET, %ecx
+        wrmsr
+
 	movl    $MSR_EFER,%ecx
 	rdmsr
 	bt      $_EFER_LME,%eax
diff -r 6aefe80324ae -r 123246447118 tboot/include/msr.h
--- a/tboot/include/msr.h	Wed Jan 28 23:26:31 2026 +0100
+++ b/tboot/include/msr.h	Tue Feb 03 13:41:43 2026 +0100
@@ -95,6 +95,10 @@
 /* AMD64 MSR's */
 #define MSR_EFER        0xc0000080      /* extended features */
 
+/* CET MSRs*/
+#define MSR_IA32_U_CET  0x000006a0 /* user mode cet */
+#define MSR_IA32_S_CET  0x000006a2 /* kernel mode cet */
+
 /* EFER bits */
 #define _EFER_LME     8               /* Long mode enable */
 



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
