Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 131165709A5
	for <lists+tboot-devel@lfdr.de>; Mon, 11 Jul 2022 20:00:48 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1oAxi0-0001EA-6J; Mon, 11 Jul 2022 18:00:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <this.is.a0lson@gmail.com>) id 1oAxhy-0001E4-Di
 for tboot-devel@lists.sourceforge.net; Mon, 11 Jul 2022 18:00:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gWlovdxmgSkc6CRhuzO32WznPxS5vgWMn8Yadq/FLCY=; b=T9+/pQIp+cGw5GYBjGVQqnFFYx
 17G7cMU87kJmglz2KmJZ/6fqdQJyToqUqD0OsPc0iDf4vKlhBTy6URV2WCW/vKtmOktbHczy9zPlB
 6kaJX/jcA/XRkk4TsEN6g0SP/Hp1z05zpv+1XziY2x86bT9ldKM+ffU27bQH4+tJCxD4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:Date:To:From:Subject:
 Message-ID:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=gWlovdxmgSkc6CRhuzO32WznPxS5vgWMn8Yadq/FLCY=; b=d
 fH7cTo2Ww9irGNkktE/GINDEnCrB1Bo3gZRZGk440zxu6XeaWWqFFPs79p1a1lsg8Hr4C2MbB7tyr
 +8Pg1S47/iPCLg4w0IpCD1ZRPazFkbcYU5xRzZqvuUotgqGknzHeL2pJUZmzjYlTp107qr7Mp7OAi
 gaG0S4pWo2EOXf/U=;
Received: from mail-qv1-f53.google.com ([209.85.219.53])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1oAxht-00DzHd-RV
 for tboot-devel@lists.sourceforge.net; Mon, 11 Jul 2022 18:00:35 +0000
Received: by mail-qv1-f53.google.com with SMTP id l2so914333qvt.2
 for <tboot-devel@lists.sourceforge.net>; Mon, 11 Jul 2022 11:00:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:subject:from:to:date:user-agent:mime-version
 :content-transfer-encoding;
 bh=gWlovdxmgSkc6CRhuzO32WznPxS5vgWMn8Yadq/FLCY=;
 b=Y+MbR+h+haXqz9GDS3BAhj13adfqzSh7CBCypvjR33rqd6OSlkkppYyWLrTKbnqNlz
 coh/ZpILQwtyJBQ6KBbqh9pKq8KeEeoV9SVim/kmer5u+WFpbjEUKFX7jPAKFb6qqrmr
 yAEny+JNmT3Hl8zOwu0Eo+1ZIXwwx+Damo79edYFqkW+ZGEyD0yFUJc6Q/dQSNZ39BL+
 wgQd5a3AZkmOBg58nYcx/sDX4Z3/l43jaRY3mutG9tyRVnfeZpLEFZ4y3hyPmiTPasZc
 gGBAQ++7PbkUlrcRXuJUqdrErB6csp7KhiEDbXCG3TBeS5RsPKL/91+y+Il0Txx2zwPK
 av8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:subject:from:to:date:user-agent
 :mime-version:content-transfer-encoding;
 bh=gWlovdxmgSkc6CRhuzO32WznPxS5vgWMn8Yadq/FLCY=;
 b=nwjHQe7lGP6wmFVB9K7OpGlzjaeeO0yzydMSCx/DwJ6uNJ5/FFRzEZnYzdacvyUto5
 eXHIF2CMoAc3vjUqmgVYfN2mOFbYn/2DlGCOFSUf1wwLPe0ZPDGPFN0MxM0F+pD1VVys
 8CDL1yUy+ZAu18OnTKzDLRhZIAE98BwcTj0h9iOXNoHnjMFZkmBZiO0VQLhyVEqCix7B
 A8WWb8sihZOwUsDYaKyc3uoWvPR0gR6s1qyshOQN3zuRW1SjB91MiUXVFjv0/ZcqlTM6
 XB6H5lKW7hKosjhSiH0nKdaEJgcSoDFWGni4qfKHsoSFMPBQ4/X0S1P57ocUkaiJkqU7
 OxxA==
X-Gm-Message-State: AJIora9QWZsSmvOhRCevgcIQ2fxVMhHDRdYgmTxq08NYvm3wEOW4tu/H
 OgohVYXoK4XmS/E5xBpnSQzjIE70ctFrXQ==
X-Google-Smtp-Source: AGRyM1t19cr1g1YFoIQo46C2R/hW2CrtT5QPA1NU2qmXuY4AfHqW7jtAWAptgqCK0qJkjCKiwbaHew==
X-Received: by 2002:ad4:5dc1:0:b0:46e:d7c:aefc with SMTP id
 m1-20020ad45dc1000000b0046e0d7caefcmr14302976qvh.44.1657562423818; 
 Mon, 11 Jul 2022 11:00:23 -0700 (PDT)
Received: from development (c-73-166-253-254.hsd1.tx.comcast.net.
 [73.166.253.254]) by smtp.gmail.com with ESMTPSA id
 s1-20020ac87581000000b0031ea4c4afa7sm5747419qtq.2.2022.07.11.11.00.22
 for <tboot-devel@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 Jul 2022 11:00:23 -0700 (PDT)
Message-ID: <4455e5f75334bf0141a377b771e7707c6748cc35.camel@gmail.com>
From: Alex Olson <this.is.a0lson@gmail.com>
To: tboot-devel@lists.sourceforge.net
Date: Mon, 11 Jul 2022 13:00:22 -0500
User-Agent: Evolution 3.36.5-0ubuntu1 
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: # HG changeset patch # User Alex Olson # Date 1657558891
 18000 # Mon Jul 11 12:01:31 2022 -0500 # Node ID
 0552b7ac10e28b378dd139e5ca3838039c472827
 # Parent fa60b63892e8f9d4278950b44ed136d2b12d19cc C [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.219.53 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.53 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [this.is.a0lson[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1oAxht-00DzHd-RV
Subject: [tboot-devel] [PATCH] Correct IDT exception handler addresses
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
# User Alex Olson <alex.olson@starlab.io>
# Date 1657558891 18000
#      Mon Jul 11 12:01:31 2022 -0500
# Node ID 0552b7ac10e28b378dd139e5ca3838039c472827
# Parent  fa60b63892e8f9d4278950b44ed136d2b12d19cc
Correct IDT exception handler addresses

The exception handlers configured in the IDT weren't properly executed
during exceptions as _start/TBOOT_START are not 64K aligned (0x804000).

This revision corrects the arithmetic so that the "int_handler" routine
gets properly executed instead of "int_handler - 0x4000".

NOTE: A simple way to test this is to insert 'asm volatile("ud2");' in begin_launch().

Signed-off-by: Alex Olson <alex.olson@starlab.io>

diff -r fa60b63892e8 -r 0552b7ac10e2 tboot/common/boot.S
--- a/tboot/common/boot.S	Fri Jun 17 11:39:11 2022 +0300
+++ b/tboot/common/boot.S	Mon Jul 11 12:01:31 2022 -0500
@@ -400,23 +400,28 @@
 
 	.align	8
 
+/* Below assumes "_start" is exactly at TBOOT_START and is needed to allow arithmetic: */
+#define INT_HANDLER_ADDR   (int_handler - _start + TBOOT_START)
+#define INT_HANDLER_LO16   (INT_HANDLER_ADDR & 0xffff)
+#define INT_HANDLER_HI16   (INT_HANDLER_ADDR >> 16)
+
 idt_table:
 	.rept 18
-		.word	int_handler - _start
+		.word	INT_HANDLER_LO16
 		.word	cs_sel
 		.word	0x8e00   /* present, DPL=0, 32b, interrupt */
-		.word	(int_handler - _start + TBOOT_START) >> 16
+		.word	INT_HANDLER_HI16
 	.endr
 	/* for machine-check exception */
-		.word	int_handler - _start
+		.word	INT_HANDLER_LO16
 		.word	cs_sel
 		.word	0x8f00   /* present, DPL=0, 32b, trap */
-		.word	(int_handler - _start + TBOOT_START) >> 16
+		.word	INT_HANDLER_HI16
 	.rept 237
-		.word	int_handler - _start
+		.word	INT_HANDLER_LO16
 		.word	cs_sel
 		.word	0x8e00   /* present, DPL=0, 32b, interrupt */
-		.word	(int_handler - _start + TBOOT_START) >> 16
+		.word	INT_HANDLER_HI16
 	.endr
 idt_table_end:
 



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
