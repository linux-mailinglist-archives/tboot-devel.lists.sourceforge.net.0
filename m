Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D3E55148DEA
	for <lists+tboot-devel@lfdr.de>; Fri, 24 Jan 2020 19:41:12 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1iv3tD-0000rS-U0; Fri, 24 Jan 2020 18:41:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <christopher.w.clark@gmail.com>) id 1iv3tC-0000rK-BD
 for tboot-devel@lists.sourceforge.net; Fri, 24 Jan 2020 18:41:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZVm01jxVkeTntH9T1XUJdPwuhVaDYdZkQpygZ/fmUi0=; b=S6+U1FZXaTjFU+qQybS0psWmD0
 SNnM7KFNt/N4Eeo8o2lM5S+7J9GtXvChAr53Ea6MGTRncVNTtGYL5TK9Y0y8/hdQ9NsEW9vr7km7Q
 lLRj/J9Sw9WX6bNT9mFCq4kszYiAIWBQb7mA5OsiZhTRePRJVUdmO+JeOE6K4nScs438=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ZVm01jxVkeTntH9T1XUJdPwuhVaDYdZkQpygZ/fmUi0=; b=BXMGQ0si2jexTmOIWC3NNtdtzb
 CYN1qQUrJac/jzGyRwn711FyTTdgetmXDew5Q6N7tCCR53vLhA7QZtfNQpoFYeCA+F5cT/Y04WD03
 Wbnc16EBg7nYHl5GgNh2/ctlPZxjuum3xP0oY4+oNaXoVy8zZockl8QN9OGZOew/P7vA=;
Received: from mail-pl1-f178.google.com ([209.85.214.178])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1iv3tA-0049Ab-6M
 for tboot-devel@lists.sourceforge.net; Fri, 24 Jan 2020 18:41:06 +0000
Received: by mail-pl1-f178.google.com with SMTP id g6so1151394plt.2
 for <tboot-devel@lists.sourceforge.net>; Fri, 24 Jan 2020 10:41:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id;
 bh=ZVm01jxVkeTntH9T1XUJdPwuhVaDYdZkQpygZ/fmUi0=;
 b=r0ifngj0reQpGRpuT0DVH0xeQh8krIoyA6KCGVcM+vPhzQ5npjiyhVyy6HcqaGJ3Fw
 rUXW04ElLCMKF1DuvLfWaNswJ2u9nu45Y3FARd0nzYY0ebtnXJLWurBOXLUAyigTe2gt
 SCzSMSCj0ylst6Fj0dw/knxy9dV5a2dXfa1/1TzzO+2P9SWHTSRLkmZxWvPBaeajkAqM
 ggTmzndeN+kNUHhA6rKlwx2kJleVAaLDRpKFhgJotMYR/agqy7fvEaezhuYRJkbShNRH
 J4SH5QVrzLisnnTmZLZ1dRZL1FKQZAr5HHPacf/ANO3MumgwYbyfmoON/G1dSX5uphsL
 +ZzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id;
 bh=ZVm01jxVkeTntH9T1XUJdPwuhVaDYdZkQpygZ/fmUi0=;
 b=QWwBnCfRpED8c/9o67yH6kZsDJXLENrQL/1WLST0d1y2hUEMG5b2VP4Ta+N62aaxjh
 LUES76iEkIb3uRNTVukfZDXejKifhmG+U06hDlIbJd+BbxTWyhRwaB+Bi6kGvz54bx1V
 d3q+pihMGqspDy6NyBB+KIggL4wki4Kh0gBRdkngbXlV1p8o34/rebwX8ybpinbJUF7/
 V//DcK2RMYlSwZQySeZA24GRG+l3XpjZFTxTv2+EZ85ZdqDZ6UU2B3tJB+5LRaJlWySY
 Xrj+juJ9TY/DtrFjNZW352sbpbt4mAw8Caul4hxUHyQmVNGcK5e3yXy6WDbiYtWxx3Z+
 lB9Q==
X-Gm-Message-State: APjAAAVFiyx3JxhsE/uNNGZ9L+R7ZKXF+TsfiB60dFCPoBdkhuR1SLVf
 WrVd6Ue7P7R3ZL0nsT6z20MEjoTv
X-Google-Smtp-Source: APXvYqxzoSshoiywf+GvWCR/c+DuHTiMgCJVTTU2KbyOdOj1RcQtoxXE61AFU+mWr9EcQR5R7NeWqw==
X-Received: by 2002:a17:902:462:: with SMTP id
 89mr4993502ple.270.1579891257464; 
 Fri, 24 Jan 2020 10:40:57 -0800 (PST)
Received: from desktop.ice.pyrology.org
 (static-50-53-74-115.bvtn.or.frontiernet.net. [50.53.74.115])
 by smtp.gmail.com with ESMTPSA id s131sm7568102pfs.135.2020.01.24.10.40.56
 for <tboot-devel@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 24 Jan 2020 10:40:56 -0800 (PST)
From: Christopher Clark <christopher.w.clark@gmail.com>
To: tboot-devel@lists.sourceforge.net
Date: Fri, 24 Jan 2020 10:40:34 -0800
Message-Id: <20200124184035.8995-1-christopher.w.clark@gmail.com>
X-Mailer: git-send-email 2.17.1
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (christopher.w.clark[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.214.178 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: config.mk]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.178 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1iv3tA-0049Ab-6M
Subject: [tboot-devel] [PATCH 1/1] Config.mk,
 safestringlib/makefile : allow tool overrides
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

To simplify integration of tboot into build systems such as
OpenEmbeddded, use softer assignments and appends to define
the build tool and flag variables.

Signed-off-by: Christopher Clark <christopher.w.clark@gmail.com>

This patch is based on an OpenXT patch by Eric Chanudet:
https://github.com/OpenXT/xenclient-oe/blob/fc13893594f684baea65b7ee09066a8ddb840b4d/recipes-security/tboot/tboot-1.9.9/0001-config-Allow-build-system-integration.patch

diff -r 0db8feeba423 -r dcec96ce7d2c Config.mk
--- a/Config.mk	Thu Dec 12 12:09:20 2019 +0100
+++ b/Config.mk	Fri Jan 24 10:03:42 2020 -0800
@@ -45,22 +45,22 @@
 	            $(call cc-option,$(CC),-Wlogical-op,) \
 	            -Wno-missing-field-initializers
 
-AS         = as
-LD         = ld
-CC         = gcc
-CPP        = cpp
-AR         = ar
-RANLIB     = ranlib
-NM         = nm
-STRIP      = strip
-OBJCOPY    = objcopy
-OBJDUMP    = objdump
+AS         ?= as
+LD         ?= ld
+CC         ?= gcc
+CPP        ?= cpp
+AR         ?= ar
+RANLIB     ?= ranlib
+NM         ?= nm
+STRIP      ?= strip
+OBJCOPY    ?= objcopy
+OBJDUMP    ?= objdump
 
 ifeq ($(debug),n)
-INSTALL_STRIP = -s
+INSTALL_STRIP ?= -s
 endif
 
-INSTALL      = install
+INSTALL      ?= install
 INSTALL_DIR  = $(INSTALL) -d -m0755 -p
 INSTALL_DATA = $(INSTALL) -m0644 -p
 INSTALL_PROG = $(INSTALL) $(INSTALL_STRIP) -m0755 -p
diff -r 0db8feeba423 -r dcec96ce7d2c safestringlib/makefile
--- a/safestringlib/makefile	Thu Dec 12 12:09:20 2019 +0100
+++ b/safestringlib/makefile	Fri Jan 24 10:03:42 2020 -0800
@@ -1,7 +1,7 @@
 IDIR = include
-CC=gcc
-CFLAGS=-I$(IDIR) -fstack-protector-strong -fPIE -fPIC -O2 -D_FORTIFY_SOURCE=2 -Wformat -Wformat-security -DSTDC_HEADERS
-LDFLAGS=-z noexecstack -z relo -z now
+CC ?= gcc
+CFLAGS += -I$(IDIR) -fstack-protector-strong -fPIE -fPIC -O2 -D_FORTIFY_SOURCE=2 -Wformat -Wformat-security -DSTDC_HEADERS
+LDFLAGS += -z noexecstack -z relo -z now
 
 ODIR=obj
 OTDIR=objtest


_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
