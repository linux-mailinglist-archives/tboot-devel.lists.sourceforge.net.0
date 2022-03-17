Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 036EA4DD092
	for <lists+tboot-devel@lfdr.de>; Thu, 17 Mar 2022 23:14:17 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1nUyNm-0004SZ-6v; Thu, 17 Mar 2022 22:14:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <timo.lindfors@iki.fi>) id 1nUyNc-0004SC-LC
 for tboot-devel@lists.sourceforge.net; Thu, 17 Mar 2022 22:13:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=To:From:Date:References:In-Reply-To:Message-Id:
 Subject:Content-Transfer-Encoding:Content-Type:MIME-Version:Sender:Reply-To:
 Cc:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oWJ0WODsAkwJGOFdK8+5KvMqR2Er2VwXF7QHuuB8AEQ=; b=REWkLkv/HJ6vfo7sW5ckOobarL
 WtR0H0GRz3/3m3kQvOBajSL0RHhVoueko6XR1N5zK4jfwcsTdlGggH4I4Zl3zTpHb3uVOwpy2zE1f
 1MQY2G129EHKN2ptIXJVNmZbzEXrnrbXE1IrAyI/jh03gBMJIiEgLsL2djLn9ahEOIcg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ; h=To:From:Date:References:In-Reply-To:Message-Id:Subject:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oWJ0WODsAkwJGOFdK8+5KvMqR2Er2VwXF7QHuuB8AEQ=; b=CRRW5DPfIe323na+9wL9BUh5eQ
 FoFz96e+yzZudZZ1k656Blb/MwHCJ1Ymr2GbiznSqw2UDwogPqB9dpHCJodWPOHlgUwkGe9MYOC9X
 he/Jsar5hwHECZSkA8iBx7XWUC9gWz/ak6vs4UGJWjhNIYvnX+0ay9bi3xIqloaBSQQ0=;
Received: from meesny.iki.fi ([195.140.195.201])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nUyNY-002Lg3-VQ
 for tboot-devel@lists.sourceforge.net; Thu, 17 Mar 2022 22:13:59 +0000
Received: from mail.home (82-181-195-69.bb.dnainternet.fi [82.181.195.69])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: timo.lindfors)
 by meesny.iki.fi (Postfix) with ESMTPSA id 956FC20AF6
 for <tboot-devel@lists.sourceforge.net>; Fri, 18 Mar 2022 00:13:44 +0200 (EET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi; s=meesny;
 t=1647555224;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=oWJ0WODsAkwJGOFdK8+5KvMqR2Er2VwXF7QHuuB8AEQ=;
 b=LL6a7Pk/v9iC9c3YjgG7t4X4N1ypnv8wiDNgiYsZaijv26D9pB6dI+ib++ELmLPybMpkxc
 190McsgaLOMB+faN+BVftvR2h1ogtqhzWsCFTQOOqP4mo2Hd4ra99OAsMO2vuBDkhEu1XX
 WO1STR2YiiRM+3GLqVUQeN/Tpn3LaTQ=
Received: from localhost ([::1] helo=[127.0.1.1])
 by mail.home with esmtp (Exim 4.89)
 (envelope-from <timo.lindfors@iki.fi>) id 1nUwSB-0007rz-Sd
 for tboot-devel@lists.sourceforge.net; Thu, 17 Mar 2022 22:10:35 +0200
MIME-Version: 1.0
X-Mercurial-Node: e45ccbe6bf59ba534ad628f7be45e7c34629e19b
X-Mercurial-Series-Index: 2
X-Mercurial-Series-Total: 3
Message-Id: <e45ccbe6bf59ba534ad6.1647555217@nx-2008>
X-Mercurial-Series-Id: <94606b71c3dabaabee81.1647555216@nx-2008>
In-Reply-To: <94606b71c3dabaabee81.1647555216@nx-2008>
References: <94606b71c3dabaabee81.1647555216@nx-2008>
User-Agent: Mercurial-patchbomb/5.6.1
Date: Fri, 18 Mar 2022 00:13:37 +0200
From: =?iso-8859-1?q?Timo_Lindfors?= <timo.lindfors@iki.fi>
To: tboot-devel@lists.sourceforge.net
ARC-Authentication-Results: i=1; ORIGINATING;
 auth=pass smtp.auth=timo.lindfors smtp.mailfrom=timo.lindfors@iki.fi
ARC-Seal: i=1; s=meesny; d=iki.fi; t=1647555224; a=rsa-sha256; cv=none;
 b=q2AoRMVZ50HZw7DjONEWnBFZnYgKgjSwM+ghOwlmnhrBiDbdWRipB8DO5Yjt4cyCUKWYUH
 qE65rvLT5X5ypK2Py2VzCrCQNN56ic+bsVp/RO7o10zJ1RaZ1W9NP6N+AUnFiYmr6asZAj
 umAmrS9e8xPZDJleiIzWQcjFja+ZJxU=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi;
 s=meesny; t=1647555224;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=oWJ0WODsAkwJGOFdK8+5KvMqR2Er2VwXF7QHuuB8AEQ=;
 b=NqE8Ju+T7UxPotBw9hmRgv8QEFcAQ3JECKcpOqEHLU1TJxV4BIpAQe219m6+DFpS563XJj
 z7DvKRmDaXnup6Ajld9oX6ryYiCLuR779GUMPeaYhUb3Cqj20KuIKujY8rSEEVT4Vjv7w5
 3OCFkaIIyfl/7MCXzDzrLjBp6EPiE4k=
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: # HG changeset patch # User Timo Lindfors
 <timo.lindfors@iki.fi>
 # Date 1647554325 -7200 # Thu Mar 17 23:58:45 2022 +0200 # Node ID
 e45ccbe6bf59ba534ad628f7be45e7c34629e19b
 # Parent 94606b71c3dabaabee [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1nUyNY-002Lg3-VQ
Subject: [tboot-devel] [PATCH 2 of 3] Introduce GRUB_TBOOT_SINIT_LIST for
 selecting SINIT modules to use
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
# Date 1647554325 -7200
#      Thu Mar 17 23:58:45 2022 +0200
# Node ID e45ccbe6bf59ba534ad628f7be45e7c34629e19b
# Parent  94606b71c3dabaabee813971a223686257d65d52
Introduce GRUB_TBOOT_SINIT_LIST for selecting SINIT modules to use
Signed-off-by: Timo Lindfors <timo.lindfors@iki.fi>

diff -r 94606b71c3da -r e45ccbe6bf59 tboot/20_linux_tboot
--- a/tboot/20_linux_tboot	Thu Mar 17 23:58:41 2022 +0200
+++ b/tboot/20_linux_tboot	Thu Mar 17 23:58:45 2022 +0200
@@ -39,12 +39,15 @@
 [ -z "${GRUB_CMDLINE_TBOOT}" ] && unset GRUB_CMDLINE_TBOOT
 [ -z "${GRUB_CMDLINE_LINUX_TBOOT}" ] && unset GRUB_CMDLINE_LINUX_TBOOT
 [ -z "${GRUB_TBOOT_POLICY_DATA}" ] && unset GRUB_TBOOT_POLICY_DATA
+[ -z "${GRUB_TBOOT_SINIT_LIST}" ] && unset GRUB_TBOOT_SINIT_LIST
 # Command line for tboot itself
 : ${GRUB_CMDLINE_TBOOT='logging=serial,memory,vga'}
 # Linux kernel parameters to append for tboot
 : ${GRUB_CMDLINE_LINUX_TBOOT='intel_iommu=on'}
 # Base name of LCP policy data file for list policy
 : ${GRUB_TBOOT_POLICY_DATA=''}
+# List of SINIT modules to use, glob patterns are supported
+: ${GRUB_TBOOT_SINIT_LIST='/boot/*sinit* /boot/*SINIT*'}
 
 export TEXTDOMAIN=grub
 export TEXTDOMAINDIR=${prefix}/share/locale
@@ -161,7 +164,7 @@
 tboot_list=`for i in /boot/tboot*.gz; do
         if grub_file_is_not_garbage "$i" ; then echo -n "$i " ; fi
       done`
-sinit_list=`for i in /boot/*sinit* /boot/*SINIT*; do
+sinit_list=`for i in ${GRUB_TBOOT_SINIT_LIST}; do
         basename=$(basename $i)
         if grub_file_is_not_garbage "$i" ; then echo -n "$basename " ; fi
       done`
diff -r 94606b71c3da -r e45ccbe6bf59 tboot/20_linux_xen_tboot
--- a/tboot/20_linux_xen_tboot	Thu Mar 17 23:58:41 2022 +0200
+++ b/tboot/20_linux_xen_tboot	Thu Mar 17 23:58:45 2022 +0200
@@ -40,6 +40,7 @@
 [ -z "${GRUB_CMDLINE_XEN_TBOOT}" ] && unset GRUB_CMDLINE_XEN_TBOOT
 [ -z "${GRUB_CMDLINE_LINUX_XEN_TBOOT}" ] && unset GRUB_CMDLINE_LINUX_XEN_TBOOT
 [ -z "${GRUB_TBOOT_POLICY_DATA}" ] && unset GRUB_TBOOT_POLICY_DATA
+[ -z "${GRUB_TBOOT_SINIT_LIST}" ] && unset GRUB_TBOOT_SINIT_LIST
 # Command line for tboot itself
 : ${GRUB_CMDLINE_TBOOT='logging=serial,memory,vga'}
 # Xen parameters to append for tboot
@@ -48,6 +49,8 @@
 : ${GRUB_CMDLINE_LINUX_XEN_TBOOT=''}
 # Base name of LCP policy data file for list policy
 : ${GRUB_TBOOT_POLICY_DATA=''}
+# List of SINIT modules to use, glob patterns are supported
+: ${GRUB_TBOOT_SINIT_LIST='/boot/*sinit* /boot/*SINIT*'}
 
 export TEXTDOMAIN=grub
 export TEXTDOMAINDIR=${prefix}/share/locale
@@ -191,7 +194,7 @@
 tboot_list=`for i in /boot/tboot*.gz; do
         if grub_file_is_not_garbage "$i" ; then echo -n "$i " ; fi
       done`
-sinit_list=`for i in /boot/*sinit* /boot/*SINIT*; do
+sinit_list=`for i in ${GRUB_TBOOT_SINIT_LIST}; do
         basename=$(basename $i)
         if grub_file_is_not_garbage "$i" ; then echo -n "$basename " ; fi
       done`



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
