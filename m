Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D34214DD094
	for <lists+tboot-devel@lfdr.de>; Thu, 17 Mar 2022 23:14:35 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1nUyG8-0000s0-N8; Thu, 17 Mar 2022 22:14:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <timo.lindfors@iki.fi>) id 1nUyG8-0000rp-3B
 for tboot-devel@lists.sourceforge.net; Thu, 17 Mar 2022 22:14:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=To:From:Date:Message-Id:Subject:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4LrvjT0zyT4W6hKbsPNj0Yfl8K5w01ofQRE4IkbIUSc=; b=bISoAPUOjebWHnsIxiR01zxgYo
 k1FwpbkQAL15xXwek55WZ/wUba4nC6hxbiU39a7b3PiETg9eyFAzD3L/FYNv1qx+OCW4mWqXnfZ42
 D5TZrODMLIKvzsR/0x/D7zWrU+DBzall1VeDAMOdxBO/jBqaXQYHu5M+nPOLiHANeBIY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=To:From:Date:Message-Id:Subject:Content-Transfer-Encoding:Content-Type:
 MIME-Version:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=4LrvjT0zyT4W6hKbsPNj0Yfl8K5w01ofQRE4IkbIUSc=; b=A
 /7YDVzI5IgS1UjtDVsixKIrEqFgtGkD1dlp1Nwf1NSoKMNuXrdWxougkmkw7XjJiIip3LkxLRivtn
 uRqHvID6zpKSk5mDQfzyb3dMdF84TVW9mSdsbgIHYL/JH/uXPk8sBFrX+/FYVX5blt4BvViTwuonD
 R6ZmEB3IYL80cYng=;
Received: from meesny.iki.fi ([195.140.195.201])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nUyNa-0007xp-1L
 for tboot-devel@lists.sourceforge.net; Thu, 17 Mar 2022 22:14:13 +0000
Received: from mail.home (82-181-195-69.bb.dnainternet.fi [82.181.195.69])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: timo.lindfors)
 by meesny.iki.fi (Postfix) with ESMTPSA id 846A720AEF
 for <tboot-devel@lists.sourceforge.net>; Fri, 18 Mar 2022 00:13:44 +0200 (EET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi; s=meesny;
 t=1647555224;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=4LrvjT0zyT4W6hKbsPNj0Yfl8K5w01ofQRE4IkbIUSc=;
 b=i0i5+HPzcUfj8hwgHiD7m/S1Z1XZWv6kh0TwkEllVN9W6zHmQLBlAL9SM0kNFEbYsdQnRZ
 0bMYUHq60uZYs9fS9+BlEkEnGf+Esa4sve2BGbs8KNrGoxzX7gYvK1USOEKZA08WX/1FEg
 OcGD5/45XSoYwyLBmcrmsESH9kJgi4E=
Received: from localhost ([::1] helo=[127.0.1.1])
 by mail.home with esmtp (Exim 4.89)
 (envelope-from <timo.lindfors@iki.fi>) id 1nUwSB-0007rz-RB
 for tboot-devel@lists.sourceforge.net; Thu, 17 Mar 2022 22:10:35 +0200
MIME-Version: 1.0
X-Mercurial-Node: 94606b71c3dabaabee813971a223686257d65d52
X-Mercurial-Series-Index: 1
X-Mercurial-Series-Total: 3
Message-Id: <94606b71c3dabaabee81.1647555216@nx-2008>
X-Mercurial-Series-Id: <94606b71c3dabaabee81.1647555216@nx-2008>
User-Agent: Mercurial-patchbomb/5.6.1
Date: Fri, 18 Mar 2022 00:13:36 +0200
From: =?iso-8859-1?q?Timo_Lindfors?= <timo.lindfors@iki.fi>
To: tboot-devel@lists.sourceforge.net
ARC-Authentication-Results: i=1; ORIGINATING;
 auth=pass smtp.auth=timo.lindfors smtp.mailfrom=timo.lindfors@iki.fi
ARC-Seal: i=1; s=meesny; d=iki.fi; t=1647555224; a=rsa-sha256; cv=none;
 b=RKQvVPLuwk7udoyDSLAblhoQpdbQIIFLzHNHURs7Wdzw8NNxVGKmHu/nLsaeKx6ZaBhb9q
 HCK98JpGqsn5haZFFNmJR0CcJvb1JfL5KjXJ+rYtlcyJM0p/9uC00XEpnsLPahzgYBV4OX
 YWU+gFPQB1qGXrdi+RbapK7mUTEpCp0=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi;
 s=meesny; t=1647555224;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=4LrvjT0zyT4W6hKbsPNj0Yfl8K5w01ofQRE4IkbIUSc=;
 b=itZVBC8FJYcQw5QMnj0tGi8/nISKXirT+rS9VAJU6YuTd89o5jmnaaXX01ZcFfgQIVVh25
 DnQpKYPjdwBPCBCXGmMU7CCVqMZdV3WPVFIeZH+MueBetndyrSLsTW/Eb+EGouDfFGQKbz
 UlTE7EVLQtsYYPvfwC5OwdkakjNi//c=
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: # HG changeset patch # User Timo Lindfors
 <timo.lindfors@iki.fi>
 # Date 1647554321 -7200 # Thu Mar 17 23:58:41 2022 +0200 # Node ID
 94606b71c3dabaabee813971a223686257d65d52
 # Parent bcdf58c1d076bfe41c [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1nUyNa-0007xp-1L
Subject: [tboot-devel] [PATCH 1 of 3] Ignore modules that overlap with
 internal data structures
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tboot-devel-bounces@lists.sourceforge.net

# HG changeset patch
# User Timo Lindfors <timo.lindfors@iki.fi>
# Date 1647554321 -7200
#      Thu Mar 17 23:58:41 2022 +0200
# Node ID 94606b71c3dabaabee813971a223686257d65d52
# Parent  bcdf58c1d076bfe41c58ac93254914dc0f2fd449
Ignore modules that overlap with internal data structures
Without this patch the system can go to an infinite reboot loop as
corrupted module causes the system to reset.

Signed-off-by: Timo Lindfors <timo.lindfors@iki.fi>

diff -r bcdf58c1d076 -r 94606b71c3da include/config.h
--- a/include/config.h	Thu Mar 10 10:28:11 2022 +0200
+++ b/include/config.h	Thu Mar 17 23:58:41 2022 +0200
@@ -52,9 +52,10 @@
 
 /* these addrs must be in low memory so that they are mapped by the */
 /* kernel at startup */
+#define TBOOT_LOWMEM_START           0x60000
 
 /* address/size for memory-resident serial log (when enabled) */
-#define TBOOT_SERIAL_LOG_ADDR        0x60000
+#define TBOOT_SERIAL_LOG_ADDR        TBOOT_LOWMEM_START
 #define TBOOT_SERIAL_LOG_SIZE        0x08000
 
 /* address/size for modified e820 table */
@@ -72,6 +73,8 @@
                                       TBOOT_EFI_MEMMAP_COPY_SIZE)
 #define TBOOT_KERNEL_CMDLINE_SIZE    0x0400
 
+#define TBOOT_LOWMEM_END             (TBOOT_KERNEL_CMDLINE_ADDR + \
+                                      TBOOT_KERNEL_CMDLINE_SIZE)
 
 #ifndef NR_CPUS
 #define NR_CPUS     1024
diff -r bcdf58c1d076 -r 94606b71c3da tboot/common/loader.c
--- a/tboot/common/loader.c	Thu Mar 10 10:28:11 2022 +0200
+++ b/tboot/common/loader.c	Thu Mar 17 23:58:41 2022 +0200
@@ -1807,6 +1807,42 @@
 }
 
 /*
+ * Check if two memory regions overlap
+ */
+static bool
+regions_overlap(const void *base1, size_t size1, const void *base2, size_t size2) {
+    /*
+      11111
+        22222
+    */
+    if (base1 <= base2 && base2 < base1 + size1) {
+        return true;
+    }
+    /*
+        11111
+      22222
+    */
+    if (base2 <= base1 && base1 < base2 + size2) {
+        return true;
+    }
+    /*
+        1
+      22222
+    */
+    if (base2 <= base1 && base1 + size1 < base2 + size2) {
+        return true;
+    }
+    /*
+      11111
+        2
+    */
+    if (base1 <= base2 && base2 + size2 < base1 + size1) {
+        return true;
+    }
+    return false;
+}
+
+/*
  * will go through all modules to find an SINIT that matches the platform
  * (size can be NULL)
  */
@@ -1836,6 +1872,11 @@
 
         void *base2 = (void *)m->mod_start;
         uint32_t size2 = m->mod_end - (unsigned long)(base2);
+        if (regions_overlap(base2, size2,
+                            (void*)TBOOT_LOWMEM_START, TBOOT_LOWMEM_END - TBOOT_LOWMEM_START)) {
+            printk(TBOOT_DETA "Ignoring module as it overlaps with tboot's internal data structures\n");
+            continue;
+        }
         if ( is_sinit_acmod(base2, size2, false) &&
              does_acmod_match_platform((acm_hdr_t *)base2, NULL) ) {
             if ( base != NULL )



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
