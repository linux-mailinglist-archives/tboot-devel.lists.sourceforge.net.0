Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 60506BE706A
	for <lists+tboot-devel@lfdr.de>; Fri, 17 Oct 2025 09:59:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:To:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=QrrudzNxr2lihpLTfDtr27nJZSoyOAO8GPodkLziNf0=; b=IvESxuZceqlN9VklJ2Zfe+6jUe
	0mEk4ylQ3/LYl4Aq12ImlsdTqU8esSqSY2ZRDtoUUr+Vv2HQGgEL/kj6mYUr07d9jePd7khKqZROU
	7ECAfgUk8bJYz+NOaD78k6iB6kIwZGqEr+9SUTvqTOm2SqBQhhJggXChG60TGih2o3EE=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1v9fMW-0000oB-Tc;
	Fri, 17 Oct 2025 07:58:57 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <michal.camacho.romero@linux.intel.com>)
 id 1v9fMV-0000ns-G9 for tboot-devel@lists.sourceforge.net;
 Fri, 17 Oct 2025 07:58:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=V3BaV1HqyFp+dI26nMbbwDMgfSbmezhRRu/gEZ2KSJg=; b=Tu3HUX6p7uOaGvbz7WVoRLPtZX
 He6h5wwJoe7w9DzzSyDkklK0acQ9HsY/iae97KatNg1t4amUYF97bn86u3h4PkZ7FrOi2qobbSxSm
 U0lXxhAxPqqiJ/3l7Q9H55ZxIAdxJUX8Dm4gh3ulMeIzryy9SO9EtTkpbBLQMpzGKHXU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=V3BaV1HqyFp+dI26nMbbwDMgfSbmezhRRu/gEZ2KSJg=; b=P
 alCQGS46CPrh8cTyMAANF8s2UafU+auva1T6sluJC/aFqQLihLGPCq6ltDUydLWRyY7RgHNHR2Cg/
 kpEpfd2qChvldb4O3lLdwrQ4gvknsPfL7K9Q3rD33BGhyP+Mh9DV0WUNjFqCRj7hqWqwfAqI0CRbE
 8liBrHb8LvEHueJ8=;
Received: from mgamail.intel.com ([198.175.65.12])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1v9fMV-0003pq-Ii for tboot-devel@lists.sourceforge.net;
 Fri, 17 Oct 2025 07:58:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760687935; x=1792223935;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=5f1uWLjZpCBSIG8LFeKpEc/4cEvdXzURteTrY1BGcO0=;
 b=OCXjIgDjjYsP7ibIiDqN6tvAFgjSHymwb9aZQyhx3dw9C51CBtJeia/P
 rs2PCp8z92IqWUVRbX6lnRfE2NFdU2naCAI+JT7hIgci85Gsm7gODoCY0
 c1hDHXO3oSQI5gKIy2igypBPIkNGjIOOJs0hYluf2JnnPXagLTJDsVWrf
 almsQf1eRUTZpttmnt4tU+/BQ+Tpmo1GewETyIxtgchGdQwpliW3mSvMj
 SUG1ero6iUHZwo7k/oENDBYNF36sAwiVoL23QJxZ7zfyZ/ezta8+Njo6B
 ZhLTwpYjaL5nxckxMV4vUXlMhevVElGoeW/+2AeB32fvOx0EB2wApEJGi g==;
X-CSE-ConnectionGUID: Ff+DvjAfSSCz3wc+Gt8T+w==
X-CSE-MsgGUID: Uxx3XPdrT52dtt9d/6xr1w==
X-IronPort-AV: E=McAfee;i="6800,10657,11584"; a="74336721"
X-IronPort-AV: E=Sophos;i="6.19,234,1754982000"; d="scan'208";a="74336721"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2025 00:58:45 -0700
X-CSE-ConnectionGUID: 6QeOZCuVTe2WDCohX1L3yQ==
X-CSE-MsgGUID: E6JIWlHmSLW07ulNV44Mpg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,234,1754982000"; d="scan'208";a="187761286"
Received: from gklab-219-098.igk.intel.com ([10.211.219.98])
 by orviesa005.jf.intel.com with ESMTP; 17 Oct 2025 00:58:44 -0700
From: Michal Camacho Romero <michal.camacho.romero@linux.intel.com>
To: tboot-devel@lists.sourceforge.net,
	ning.sun@intel.com
Date: Fri, 17 Oct 2025 09:36:19 +0200
Message-ID: <20251017073619.547993-1-michal.camacho.romero@linux.intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Spam-Score: 2.5 (++)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Mark Gross <mgross@linux.intel.com> The
 tboot->shutdown_entry
 is effectively bios code and CET needs to be disabled before calling it.
 It resolves TBOOT shutdown failure bug,
 reported on the SLES (SUSE Linux Enterprise
 Server) 16.0 OS. OS power off, called by the "init 0" command, was failing,
 due to activated Intel Control-Flow Enfo [...] 
 Content analysis details:   (2.5 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 2.5 AC_FROM_MANY_DOTS      Multiple periods in From user name
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1v9fMV-0003pq-Ii
Subject: [tboot-devel] [PATCH 1/1] Disable CET when calling tboot shutdown
 procedure.
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
Cc: Mark Gross <mark.gross@intel.com>, Mark Gross <mgross@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tboot-devel-bounces@lists.sourceforge.net

From: Mark Gross <mgross@linux.intel.com>

The tboot->shutdown_entry is effectively bios code and CET needs to be
disabled before calling it.

It resolves TBOOT shutdown failure bug, reported on the SLES (SUSE Linux
Enterprise Server) 16.0 OS. OS power off, called by the "init 0" command,
was failing, due to activated Intel Control-Flow Enforcement Technology (CET).
Disabling CET has allowed to execute OS and TBOOT shutdown properly.

Closes: https://bugzilla.suse.com/show_bug.cgi?id=1247950
Signed-off-by: Mark Gross <mark.gross@intel.com>
Signed-off-by: Michal Camacho Romero <michal.camacho.romero@linux.intel.com>
---
 arch/x86/kernel/tboot.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/x86/kernel/tboot.c b/arch/x86/kernel/tboot.c
index 46b8f1f16676..73396c43a7ad 100644
--- a/arch/x86/kernel/tboot.c
+++ b/arch/x86/kernel/tboot.c
@@ -28,6 +28,7 @@
 #include <asm/setup.h>
 #include <asm/e820/api.h>
 #include <asm/io.h>
+#include <asm/cpu.h>
 
 #include "../realmode/rm/wakeup.h"
 
@@ -247,6 +248,10 @@ void tboot_shutdown(u32 shutdown_type)
 
 	switch_to_tboot_pt();
 
+	/*
+	 * toggle off CET while we call shutdown_entry in bios
+	 */
+	cet_disable();
 	shutdown = (void(*)(void))(unsigned long)tboot->shutdown_entry;
 	shutdown();
 
-- 
2.43.0



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
