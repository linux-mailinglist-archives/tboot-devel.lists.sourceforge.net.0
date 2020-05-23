Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id ED9051DFA19
	for <lists+tboot-devel@lfdr.de>; Sat, 23 May 2020 20:01:07 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1jcYSB-0001Dr-1z; Sat, 23 May 2020 18:00:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <timo.lindfors@iki.fi>) id 1jcYSA-0001Dc-3p
 for tboot-devel@lists.sourceforge.net; Sat, 23 May 2020 18:00:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=To:From:Date:Message-Id:Subject:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=iMP4sCjNgC3MidpKgGnIOfE43K3OYcN8bGYZjJnhzeQ=; b=S4uUwl8J1JV+/sMid6Xjzk82p
 mEThKXyRpL4GPhaWfeQT6Gf71mq/vxeaeefjglqjsFNggF5QSl9O9w2pOnW/Mhn6t6V+XwNQJwQQX
 +NVJs++iCGcE6G+88hPhZ1uoOlTV3MoJHzG7vDFDa15917TH3A3Kf+O4csb8gut3U6ag8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=To:From:Date:Message-Id:Subject:Content-Transfer-Encoding:Content-Type:
 MIME-Version:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=iMP4sCjNgC3MidpKgGnIOfE43K3OYcN8bGYZjJnhzeQ=; b=f
 wtVP+1UEKybo/qcS4GQZQQzmuqRRrBU58pQZcFJcyU2alEPrgpy2AYLfTMzJqP/6R6UuywaSE8xf1
 6mIH0UsnPMtwv9zPyejPtf+BolrB/3f784dz80TlqX7mkn237YrUyWFlGKXpgmVNjbhkYkmRGwf+I
 PdL9hS/Vi7LtTBE0=;
Received: from meesny.iki.fi ([195.140.195.201])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jcYS7-00EgbX-3n
 for tboot-devel@lists.sourceforge.net; Sat, 23 May 2020 18:00:58 +0000
Received: from mail.home (89-27-97-237.bb.dnainternet.fi [89.27.97.237])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: timo.lindfors)
 by meesny.iki.fi (Postfix) with ESMTPSA id 2B9FC20178
 for <tboot-devel@lists.sourceforge.net>; Sat, 23 May 2020 21:00:46 +0300 (EEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi; s=meesny;
 t=1590256846;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=iMP4sCjNgC3MidpKgGnIOfE43K3OYcN8bGYZjJnhzeQ=;
 b=CIo6OZpLkDgc/rjZj+U3y8Bffjh3azU2K/x+5QNPT/dJk9jpLPaQXap3xHUGSi2X/+854b
 x33ajWLbeCsexLO4bHDmdtxYVBe5udexk9PqMU0rnkf6bZZI3dLw5+jyNnbKSXVvVZPmlm
 OzWVaKLvFtPjyrPrd8J9g7FMOP8Hkbs=
Received: from lindi by mail.home with local (Exim 4.89)
 (envelope-from <timo.lindfors@iki.fi>) id 1jcYRr-0004ix-2k
 for tboot-devel@lists.sourceforge.net; Sat, 23 May 2020 21:00:39 +0300
MIME-Version: 1.0
X-Mercurial-Node: d4591fde44c08fb5a0f1d1531b6df02c7223c67e
X-Mercurial-Series-Index: 1
X-Mercurial-Series-Total: 1
Message-Id: <d4591fde44c08fb5a0f1.1590256820@sec-589.nixu.fi>
X-Mercurial-Series-Id: <d4591fde44c08fb5a0f1.1590256820@sec-589.nixu.fi>
User-Agent: Mercurial-patchbomb/4.8.2
Date: Sat, 23 May 2020 21:00:20 +0300
From: Timo Juhani Lindfors <timo.lindfors@iki.fi>
To: tboot-devel@lists.sourceforge.net
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi;
 s=meesny; t=1590256846;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=iMP4sCjNgC3MidpKgGnIOfE43K3OYcN8bGYZjJnhzeQ=;
 b=V7o0cXG9xdgOBJDicCHfcV0hcPnJhpZ1TzdiFonNBT7p/LNZ/Zeyrj3r0WdAnR5yvEnEu6
 ZFAbOrpdXajtg8zP3OWLsH+gWj7EPhyuZvBfCgFqe+HdePCD53NPHSOJp2Nh0nrTcBiR5s
 qYrUohQucK0awl6YCsYd8w5sXRvhKqM=
ARC-Seal: i=1; s=meesny; d=iki.fi; t=1590256846; a=rsa-sha256; cv=none;
 b=oxP9cnkQLbPINdlPnsetTe6r9xIPBQUKyX925MANwW0xD+HBG081uBfXFYB4jB7wGhfP79
 g61ra8mxo78F334y6k1J+Sax9QaUIH9pwv4t3U1QuhsQueILbz8dPDOcYzis+plgfW1awq
 R2tP2uXGwwfWnJiKA40KmP1X7zKC0Q4=
ARC-Authentication-Results: i=1; ORIGINATING;
 auth=pass smtp.auth=timo.lindfors smtp.mailfrom=timo.lindfors@iki.fi
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1jcYS7-00EgbX-3n
Subject: [tboot-devel] [PATCH] Ensure txt-acminfo does not print false
 information if msr is not loaded
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
# User Timo Juhani Lindfors <timo.lindfors@iki.fi>
# Date 1590255168 -10800
#      Sat May 23 20:32:48 2020 +0300
# Branch fix/acminfo-without-msr
# Node ID d4591fde44c08fb5a0f1d1531b6df02c7223c67e
# Parent  2ada74557b3db6c13deeda874c20c5132e40c53b
Ensure txt-acminfo does not print false information if msr is not loaded

Previously txt-acminfo would report "ACM does not match platform"
for all ACMs if the msr module was not loaded.

Signed-off-by: Timo Juhani Lindfors <timo.lindfors@iki.fi>

diff -r 2ada74557b3d -r d4591fde44c0 utils/txt-acminfo.c
--- a/utils/txt-acminfo.c	Fri May 15 09:59:23 2020 +0200
+++ b/utils/txt-acminfo.c	Sat May 23 20:32:48 2020 +0300
@@ -39,6 +39,7 @@
 #include <stdint.h>
 #include <stdio.h>
 #include <unistd.h>
+#include <stdlib.h>
 #include <string.h>
 #include <sys/types.h>
 #include <sys/stat.h>
@@ -75,15 +76,19 @@
     int fd = open("/dev/cpu/0/msr", O_RDONLY);
     if ( fd == -1 ) {
         printf("Error:  failed to open /dev/cpu/0/msr\n");
-        return 0;
+        printf("Perhaps you should modprobe msr?\n");
+        exit(1);
     }
 
     /* lseek() to MSR # */
-    if ( lseek(fd, msr, SEEK_SET) == (off_t)-1 )
+    if ( lseek(fd, msr, SEEK_SET) == (off_t)-1 ) {
         printf("Error:  failed to find MSR 0x%x\n", msr);
-    else {
-        if ( read(fd, &val, sizeof(val)) != sizeof(val) )
+        exit(1);
+    } else {
+        if ( read(fd, &val, sizeof(val)) != sizeof(val) ) {
             printf("Error:  failed to read MSR 0x%x value\n", msr);
+            exit(1);
+        }
     }
 
     close(fd);




_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
