Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F975C57F79
	for <lists+tboot-devel@lfdr.de>; Thu, 13 Nov 2025 15:37:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To:Sender:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=lWryJWu3+A8JuXnKczQ99AI9a3qNY6PzMq40gkVZKTA=; b=JbeTRlpjCny5H+aoBE56gCHY42
	uA5wjAlPCvYSaJx4XpDOVggI38j3U/bmsifr3HR+5uimXfL1+lCKVFvc7sVF2gUf0y0hd9+pkwzwF
	cZUKGsj07DEEgwg1wQ8OoKDmQfLdNUgdgMjWf3sCHqVIFyj8Q0gMaBTutYc/yTqaSE1E=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1vJYS8-00014O-11;
	Thu, 13 Nov 2025 14:37:36 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tcamuso@redhat.com>) id 1vJYS6-00014G-ND
 for tboot-devel@lists.sourceforge.net;
 Thu, 13 Nov 2025 14:37:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xyO3LCI/Aek3V4cKVVMHCFT0RNVpL89onTNIli5da5I=; b=ilG3Dfy+zdvALLMb722YpmeuVU
 8ktzveiupqlEVIYhRCWmRmDb1v+dv4kD4FU+LyUQZUJFwTKawe5Ofe3XF3OQv/KbJrW3C4/VO6FCl
 mQZYYGeAp6lP+Iy3KhJRs9moMeojqfPloud8A3F1CpjllVlqWcpCmWZyqgwbo0+uyAC0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=xyO3LCI/Aek3V4cKVVMHCFT0RNVpL89onTNIli5da5I=; b=Q
 htuf+DbqRNFU09m/fzoM6eewXlm8bNUkJ3f16nh1OCzRKyZAHJxZ+exxOKXcll/JO3c0INFKK+yKh
 L4NjYNO6yLm205voMTKL0jKWtQ6EqHmgGYv6r9MYEbbqsAilerXD0GLYC5nptYneasqsrOqxruTzN
 sNyvojSxfh4Vowgw=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vJYS6-0007cz-04 for tboot-devel@lists.sourceforge.net;
 Thu, 13 Nov 2025 14:37:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1763044642;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=xyO3LCI/Aek3V4cKVVMHCFT0RNVpL89onTNIli5da5I=;
 b=NF4KmBSahWPSmHtqfqSgZk+Pq8wN4kKXFtyiARlrB9/ivRhMM80CgLo31yc5lsqD9IM555
 ksXb/pLRfkjYJADXF0W5ceCicUxNGiCH5ut+IZEyAF5xyB1E80cauESZ0my6BlKa833OpU
 7bbTCEJZPohz4I59wHxMN3UM9/9jyGA=
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-150-AO-UOBxTMYenY6BUV8XmqA-1; Thu,
 13 Nov 2025 09:37:21 -0500
X-MC-Unique: AO-UOBxTMYenY6BUV8XmqA-1
X-Mimecast-MFC-AGG-ID: AO-UOBxTMYenY6BUV8XmqA_1763044637
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 353991954B18; Thu, 13 Nov 2025 14:37:17 +0000 (UTC)
Received: from hp-dl380pgen9-07.khw.eng.rdu2.dc.redhat.com
 (hp-dl380pgen9-07.khw.eng.rdu2.dc.redhat.com [10.6.10.143])
 by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id C167E19560BD; Thu, 13 Nov 2025 14:37:15 +0000 (UTC)
To: ning.sun@intel.com,
	tboot-devel@lists.sourceforge.net
Date: Thu, 13 Nov 2025 09:37:14 -0500
Message-ID: <20251017073619.547993-1-michal.camacho.romero@linux.intel.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Michal Camacho Romero
 <michal.camacho.romero@linux.intel.com>
 From: Mark Gross <mgross@linux.intel.com> The tboot->shutdown_entry is
 effectively
 bios code and CET needs to be disabled before calling it. 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [170.10.133.124 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1vJYS6-0007cz-04
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
From: Tony Camuso via tboot-devel <tboot-devel@lists.sourceforge.net>
Reply-To: Tony Camuso <tcamuso@redhat.com>
Cc: linux-kernel@vger.kernel.org, bp@alien8.de, tglx@linutronix.de,
 mingo@kernel.org, rppt@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tboot-devel-bounces@lists.sourceforge.net

From: Michal Camacho Romero <michal.camacho.romero@linux.intel.com>

From: Mark Gross <mgross@linux.intel.com>

The tboot->shutdown_entry is effectively bios code and CET needs to be
disabled before calling it.

It resolves TBOOT shutdown failure bug, reported on the SLES (SUSE Linux
Enterprise Server) 16.0 OS. OS power off, called by the "init 0" command,
was failing, due to activated Intel Control-Flow Enforcement Technology
(CET).
Disabling CET has allowed to execute OS and TBOOT shutdown properly.

Closes: https://bugzilla.suse.com/show_bug.cgi?id=1247950
Signed-off-by: Mark Gross <mgross@linux.intel.com>
Signed-off-by: Michal Camacho Romero <michal.camacho.romero@linux.intel.com>
Tested-by: Tony Camuso <tcamuso@redhat.com>
---
 arch/x86/kernel/tboot.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/x86/kernel/tboot.c b/arch/x86/kernel/tboot.c
index 4c1bcb6053fc..932c2c44e743 100644
--- a/arch/x86/kernel/tboot.c
+++ b/arch/x86/kernel/tboot.c
@@ -28,6 +28,7 @@
 #include <asm/setup.h>
 #include <asm/e820/api.h>
 #include <asm/io.h>
+#include <asm/cpu.h>
 
 #include "../realmode/rm/wakeup.h"
 
@@ -248,6 +249,10 @@ void tboot_shutdown(u32 shutdown_type)
 
 	switch_to_tboot_pt();
 
+	/*
+	 * toggle off CET while we call shutdown_entry in bios
+	 */
+	cet_disable();
 	shutdown = (void(*)(void))(unsigned long)tboot->shutdown_entry;
 	shutdown();
 
-- 
2.47.1



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
