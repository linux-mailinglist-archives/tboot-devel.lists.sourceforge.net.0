Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D41724D34F6
	for <lists+tboot-devel@lfdr.de>; Wed,  9 Mar 2022 17:58:03 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1nRzdP-0004cE-9i; Wed, 09 Mar 2022 16:57:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <timo.lindfors@iki.fi>) id 1nRzdN-0004bv-Fx
 for tboot-devel@lists.sourceforge.net; Wed, 09 Mar 2022 16:57:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7zY+CKxnfmRAdWcXQCCm6c4BQiakMyD7F0sPIKz/hIY=; b=Jnn+rVDuXrm8UwPUJdExutTobt
 TM8T33MJA5fH8MXyMMKM1xiwpqkqs+Z0RmhDKZRV8UZm+9P7XG0r0Xjjmw/BwJovtBtc6ZAWU6VIZ
 r0R8gUdskE3JbdMRIMGfs8lqzIcIHxMuWXXYsqQ2pwxt1FWrEl8K0em+PauMm+/Ppa4U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=7zY+CKxnfmRAdWcXQCCm6c4BQiakMyD7F0sPIKz/hIY=; b=Bn0BNpM80ocSPD9S5lUgB1Et2Q
 LidPYa/BJuRAhEcR5tI2wKK2s60KgkR49tlbEOYS89klXDMxoNQwEjglkPTu9VZFd+wz5z56gAKuw
 thbCkE+xk6WGBtuAY8y0NuLT4sAUl7boK5er7NQ7ryHFGWFpbBb5kBC1okC1Wl2SDuqk=;
Received: from lahtoruutu.iki.fi ([185.185.170.37])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nRzdK-0001Gh-HZ
 for tboot-devel@lists.sourceforge.net; Wed, 09 Mar 2022 16:57:55 +0000
Received: from mail.home (82-181-195-69.bb.dnainternet.fi [82.181.195.69])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: timo.lindfors)
 by lahtoruutu.iki.fi (Postfix) with ESMTPSA id EB2571B001E8;
 Wed,  9 Mar 2022 18:57:44 +0200 (EET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi; s=lahtoruutu; 
 t=1646845065;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc; bh=7zY+CKxnfmRAdWcXQCCm6c4BQiakMyD7F0sPIKz/hIY=;
 b=jylbYmUJ8OJFx1/pfeW8kbEz3ZYPF7NOAoFok+lW3lNduJVgCc6zs3jqUP2fngEyaMz9ah
 yytKNj0V3FQD3jkMwz+8eAShCQkPWAIIwTKod1RgUUtaSoqLcETU1zPTk3Wk2Bkld2cVv6
 f059S+ZiozBUgIm8+PfUvFQIJdpQyWDPZm8//OlWQDATShRxL+W1Dn4cQgEk3V4I5J3gqW
 hnrxfLCxTdskCXKezQXaJ1ndomtRBb5CAnrjcRdoxWYqugRwbFX1FSDJanl1ciBBcVADBk
 KHKiWSR5tnivWnXp+TO70MoQxBjs3QH/NXP103UjhViKg+zVW+gSBiHzJ0csLg==
Received: from lindi by mail.home with local (Exim 4.89)
 (envelope-from <timo.lindfors@iki.fi>)
 id 1nRxi0-0005sP-L8; Wed, 09 Mar 2022 16:54:36 +0200
From: Timo Juhani Lindfors <timo.lindfors@iki.fi>
To: tboot-devel@lists.sourceforge.net
Date: Wed,  9 Mar 2022 16:54:34 +0200
Message-Id: <20220309145434.22551-1-timo.lindfors@iki.fi>
X-Mailer: git-send-email 2.11.0
ARC-Authentication-Results: i=1; ORIGINATING;
 auth=pass smtp.auth=timo.lindfors smtp.mailfrom=timo.lindfors@iki.fi
ARC-Seal: i=1; s=lahtoruutu; d=iki.fi; t=1646845065; a=rsa-sha256; cv=none;
 b=VejpW/HAXEsXviyYBkOpUQCFyy4oOML63mS8U0YLN2WPTAlBXRrmsCWZJghdYP6b4uiepu
 tGK8SBoXmWJqnM+bqS1xeU1ohC6ClEYkR76Xz6qenNvsN2HeRLEynyb/Xtx7tMK4gIx8AY
 c6zo78dE7ICIjjwDXXkdq3Yi4LxRgSO9rXG+SPaUOITt39N74HQDYRIE2uhEuN9d8qtQap
 MeF85vmETqIgW36aw9GK66m8acaS5NhRvxd0cZrlH8sUZairEsSaSKj08ZEjduTca3BYrW
 lhJ+J4hla00GTXf1tDU6tjZedJbUhyt1VRpawsy7IjrlViU0kIN1aACiKQYs3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi;
 s=lahtoruutu; t=1646845065;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc; bh=7zY+CKxnfmRAdWcXQCCm6c4BQiakMyD7F0sPIKz/hIY=;
 b=EGVCf6n+MTI3/Q+G93+JXRz1yyZqIUk2D9VqHKv2RmMswmyGPcxh7QSkXQhJ2ftbODhxqD
 IpySPrarSMAL9DbkzS1v2+bseoUjRCsvUjCyHkZQ8+4hbwV9w0K0TGwJlt4dTXRDRyLdqW
 EytjBeohB+cF42O62GmdwLTan/PL2Xrrj+2Jy1vsz/xmyr6nCTfqsQdkXkd4x2vRXs5xe7
 GOg9tAagdLoAdihEsrpM8QtYdOizbr6mqhnrMsSdAZV6IozlBcZRzeqAWS1sXcOvF041/A
 3CZWn/eIuEY1yD2NuHi2kGNb9wyjOWzRWKrHXfA12SOGl4aK310ubSxT6nJOQw==
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Timo Lindfors <timo.lindfors@iki.fi> Without this patch
 txt-acminfo 5th_gen_i5_i7_SINIT_79.BIN 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.185.170.37 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1nRzdK-0001Gh-HZ
Subject: [tboot-devel] [PATCH] txt-acminfo: Map TXT heap using mmap
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tboot-devel-bounces@lists.sourceforge.net

From: Timo Lindfors <timo.lindfors@iki.fi>

Without this patch

txt-acminfo 5th_gen_i5_i7_SINIT_79.BIN

segfaults. This issue was introduced in

o  changeset:   627:d8a8e17f6d41
|  user:        Lukasz Hawrylko <lukas...@in...>
|  date:        Thu May 13 16:04:27 2021 +0200
|  summary:     Check for client/server match when selecting SINIT

Signed-off-by: Timo Lindfors <timo.lindfors@iki.fi>
---
 tboot/common/loader.c     |  4 ++--
 tboot/include/txt/acmod.h |  4 +++-
 tboot/txt/acmod.c         |  7 ++++---
 utils/txt-acminfo.c       | 26 +++++++++++++++++++++-----
 4 files changed, 30 insertions(+), 11 deletions(-)

diff --git a/tboot/common/loader.c b/tboot/common/loader.c
index cd254d7..0b9a814 100644
--- a/tboot/common/loader.c
+++ b/tboot/common/loader.c
@@ -1792,7 +1792,7 @@ find_platform_racm(loader_ctx *lctx, void **base, uint32_t *size)
         void *base2 = (void *)m->mod_start;
         uint32_t size2 = m->mod_end - (unsigned long)(base2);
         if ( is_racm_acmod(base2, size2, false) &&
-             does_acmod_match_platform((acm_hdr_t *)base2) ) {
+             does_acmod_match_platform((acm_hdr_t *)base2, NULL) ) {
             if ( base != NULL )
                 *base = base2;
             if ( size != NULL )
@@ -1837,7 +1837,7 @@ find_platform_sinit_module(loader_ctx *lctx, void **base, uint32_t *size)
         void *base2 = (void *)m->mod_start;
         uint32_t size2 = m->mod_end - (unsigned long)(base2);
         if ( is_sinit_acmod(base2, size2, false) &&
-             does_acmod_match_platform((acm_hdr_t *)base2) ) {
+             does_acmod_match_platform((acm_hdr_t *)base2, NULL) ) {
             if ( base != NULL )
                 *base = base2;
             if ( size != NULL )
diff --git a/tboot/include/txt/acmod.h b/tboot/include/txt/acmod.h
index 23336c2..fc60d9d 100644
--- a/tboot/include/txt/acmod.h
+++ b/tboot/include/txt/acmod.h
@@ -37,6 +37,8 @@
 #ifndef __TXT_ACMOD_H__
 #define __TXT_ACMOD_H__
 
+typedef void   txt_heap_t;
+
 /*
  * authenticated code (AC) module header (ver 0.0)
  */
@@ -179,7 +181,7 @@ extern bool is_racm_acmod(const void *acmod_base, uint32_t acmod_size, bool quie
 extern acm_hdr_t *copy_racm(const acm_hdr_t *racm);
 extern bool verify_racm(const acm_hdr_t *acm_hdr);
 extern bool is_sinit_acmod(const void *acmod_base, uint32_t acmod_size, bool quiet);
-extern bool does_acmod_match_platform(const acm_hdr_t* hdr);
+extern bool does_acmod_match_platform(const acm_hdr_t* hdr, const txt_heap_t* txt_heap);
 extern acm_hdr_t *copy_sinit(const acm_hdr_t *sinit);
 extern bool verify_acmod(const acm_hdr_t *acm_hdr);
 extern uint32_t get_supported_os_sinit_data_ver(const acm_hdr_t* hdr);
diff --git a/tboot/txt/acmod.c b/tboot/txt/acmod.c
index 1e92efa..798093f 100644
--- a/tboot/txt/acmod.c
+++ b/tboot/txt/acmod.c
@@ -576,7 +576,7 @@ bool is_sinit_acmod(const void *acmod_base, uint32_t acmod_size, bool quiet)
     return true;
 }
 
-bool does_acmod_match_platform(const acm_hdr_t* hdr)
+bool does_acmod_match_platform(const acm_hdr_t* hdr, const txt_heap_t *txt_heap)
 {
     /* used to ensure we don't print chipset/proc info for each module */
     static bool printed_host_info;
@@ -587,7 +587,8 @@ bool does_acmod_match_platform(const acm_hdr_t* hdr)
         return false;
 
     /* verify client/server platform match */
-    txt_heap_t *txt_heap = get_txt_heap();
+    if (txt_heap == NULL)
+        txt_heap = get_txt_heap();
     bios_data_t *bios_data = get_bios_data_start(txt_heap);
     if (info_table->version >= 5 && bios_data->version >= 6) {
         uint32_t bios_type = bios_data->flags.bits.mle.platform_type;
@@ -713,7 +714,7 @@ acm_hdr_t *get_bios_sinit(const void *sinit_region_base)
 
     /* is it a valid SINIT module? */
     if ( !is_sinit_acmod(sinit_region_base, bios_data->bios_sinit_size, false) ||
-         !does_acmod_match_platform((acm_hdr_t *)sinit_region_base) )
+         !does_acmod_match_platform((acm_hdr_t *)sinit_region_base, NULL) )
         return NULL;
 
     return (acm_hdr_t *)sinit_region_base;
diff --git a/utils/txt-acminfo.c b/utils/txt-acminfo.c
index 06a5ee8..5635e27 100644
--- a/utils/txt-acminfo.c
+++ b/utils/txt-acminfo.c
@@ -203,15 +203,31 @@ static bool match_platform(acm_hdr_t *hdr)
         close(fd_mem);
         return false;
     }
-    else {
-        if ( does_acmod_match_platform(hdr) )
-            printf("ACM matches platform\n");
-        else
-            printf("ACM does not match platform\n");
 
+    uint64_t txt_heap_size = *(volatile uint64_t *)(pub_config_base + TXTCR_HEAP_SIZE);
+    if (txt_heap_size == 0) {
+        printf("ERROR: No TXT heap is available\n");
         munmap(pub_config_base, TXT_CONFIG_REGS_SIZE);
+        close(fd_mem);
+        return false;
+    }
+
+    uint64_t txt_heap_base = *(volatile uint64_t *)(pub_config_base + TXTCR_HEAP_BASE);
+    txt_heap_t *txt_heap = mmap(NULL, txt_heap_size, PROT_READ, MAP_PRIVATE,
+                                fd_mem, txt_heap_base);
+    if ( txt_heap == MAP_FAILED ) {
+        printf("ERROR: cannot map TXT heap by mmap()\n");
+        munmap(pub_config_base, TXT_CONFIG_REGS_SIZE);
+        close(fd_mem);
+        return false;
     }
+    if ( does_acmod_match_platform(hdr, txt_heap) )
+        printf("ACM matches platform\n");
+    else
+        printf("ACM does not match platform\n");
 
+    munmap(txt_heap, txt_heap_size);
+    munmap(pub_config_base, TXT_CONFIG_REGS_SIZE);
     close(fd_mem);
     return true;
 }
-- 
2.30.2



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
