Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AB0E4DD093
	for <lists+tboot-devel@lfdr.de>; Thu, 17 Mar 2022 23:14:20 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1nUyNs-0004gv-Gt; Thu, 17 Mar 2022 22:14:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <timo.lindfors@iki.fi>) id 1nUyNg-0004gi-CW
 for tboot-devel@lists.sourceforge.net; Thu, 17 Mar 2022 22:14:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=To:From:Date:References:In-Reply-To:Message-Id:
 Subject:Content-Transfer-Encoding:Content-Type:MIME-Version:Sender:Reply-To:
 Cc:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OuKo4yVzrB0svvZN8iYavTylyR9no8rV1wnJvETIpEk=; b=lrK+Hr3F43DP5SoztqPAHQL6gl
 ama/xMXevjM0J0FMWKqqOyUOrWJLoQEekvTg9OWtzE2dZFCGmdyWXJdK4PV/VE6o/ipJsdHTYpCej
 UKYZuBV5vqULf/knGnzvx1M79Owm19p/O/u2nI+U3z8RcOWFtZ0tVmmp+Z9tyvZ/CoIY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ; h=To:From:Date:References:In-Reply-To:Message-Id:Subject:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OuKo4yVzrB0svvZN8iYavTylyR9no8rV1wnJvETIpEk=; b=NVz27TVN4Ndp2tGd6MIDQq/5TN
 veOdDwXKzA1l66aWTwinA9ujlMi4eABO1wdlUZQxFaoIeXfnSYkJZJmS0/GuNaGvOO+8TKuYkGsp6
 MXMaovz2fYEiYYJw9hbifhdDLQNEX6Ro8W60iOvRQPU5SgOXnL10F+5NX/BvPDo8ylK0=;
Received: from [185.185.170.37] (helo=lahtoruutu.iki.fi)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nUyNd-002Lg5-AE
 for tboot-devel@lists.sourceforge.net; Thu, 17 Mar 2022 22:14:02 +0000
Received: from mail.home (82-181-195-69.bb.dnainternet.fi [82.181.195.69])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: timo.lindfors)
 by lahtoruutu.iki.fi (Postfix) with ESMTPSA id 9742A1B0022A
 for <tboot-devel@lists.sourceforge.net>; Fri, 18 Mar 2022 00:13:44 +0200 (EET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi; s=lahtoruutu; 
 t=1647555224;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=OuKo4yVzrB0svvZN8iYavTylyR9no8rV1wnJvETIpEk=;
 b=WgEp/Suo2pxrOwuwrNsbsm6yD8Y32eXL2n+Ao6mzY35HoWzvSRS/OQiT6U3t1t/nnaQ4uO
 KjhqhrKEqriWj2YNn9GiJTX5gXLU3sCF4GLkYPSRyRf1ROkOOZBIAUaFcr8kcws3o1AZCS
 RtUxRsTSkfQfsl3KjhWoQCv7s5BTyG9/XSOnFkcxdma9iDWc1jgoe8AZvUNkB2CNHuGxM8
 +S1eneUhj7gJzmz/i3VDoiKVMZ+efmeDh5BLiz9NbjHTL9fENvookzTUrRFD/UacGE/rKf
 +Y67dHMxfnVjMb1eNW0V0c2u8eO+87zGd4TBQMEV3/tdOEFlHPY6IZ8k+Wrmhg==
Received: from localhost ([::1] helo=[127.0.1.1])
 by mail.home with esmtp (Exim 4.89)
 (envelope-from <timo.lindfors@iki.fi>) id 1nUwSB-0007rz-Tw
 for tboot-devel@lists.sourceforge.net; Thu, 17 Mar 2022 22:10:35 +0200
MIME-Version: 1.0
X-Mercurial-Node: 538c14b1428d0625ebb3f9c3cae21656fd4c3b06
X-Mercurial-Series-Index: 3
X-Mercurial-Series-Total: 3
Message-Id: <538c14b1428d0625ebb3.1647555218@nx-2008>
X-Mercurial-Series-Id: <94606b71c3dabaabee81.1647555216@nx-2008>
In-Reply-To: <94606b71c3dabaabee81.1647555216@nx-2008>
References: <94606b71c3dabaabee81.1647555216@nx-2008>
User-Agent: Mercurial-patchbomb/5.6.1
Date: Fri, 18 Mar 2022 00:13:38 +0200
From: =?iso-8859-1?q?Timo_Lindfors?= <timo.lindfors@iki.fi>
To: tboot-devel@lists.sourceforge.net
ARC-Authentication-Results: i=1; ORIGINATING;
 auth=pass smtp.auth=timo.lindfors smtp.mailfrom=timo.lindfors@iki.fi
ARC-Seal: i=1; s=lahtoruutu; d=iki.fi; t=1647555224; a=rsa-sha256; cv=none;
 b=kuXyZtq/y9DjVZZO33iCFshCnkgGLEAok/g4MG+EX60HEqyNRs0aBIgbIgkb96UN12FnDW
 J8FH5q7q8f0Mdok1fLNCAXqdZC+45oG2ylhJF2NZdQyCuDMhTFn9gwU43TZDjfZaQK0Kbl
 zRrkycGHE0Y3JnGRKvB/SUeb8+/PDFsA7TyR4zLIU8R4inCgGNbX9eXg0qgkzr4b3KvqM+
 7X77MmBC5aWbseafDhBfdNeXuTpRt+kSn7Ja6SnF/CgE9YXkgpcA0cAWvbye5Gv4012sO8
 kgR/IvcQh2QWTJiiVD4QJxYtLoPdKqBMz3h8cFrbtntkHcLprJxhDFpGPClYzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi;
 s=lahtoruutu; t=1647555224;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=OuKo4yVzrB0svvZN8iYavTylyR9no8rV1wnJvETIpEk=;
 b=u83K5rPyiLuz2whQcLDTPTgCcXMdSr+4c8/c6wNDSECN4UQchjWl5zbF9CMKUI8v1rxVV2
 YNXgl/LG3L15fub6uOKBrcqQoI4bFzKiAWLOUeGsC4cQOxTHOrXT+eXlA9hTDYrlJSeO3b
 SP6AzsqoRjKxBgZ/l2VDVJ2R14UTTEtbA8Kfoy9IoNQFOZoyj5Y280BoWcK2Hw5uWy/m70
 G1NiIVDK4CB4mj9iUjAmGpmNZKtUNqpyIZLJxjRIPXGJ4dw2hG+bnEJywk38iizAlTpAmb
 Q5/y+aZWiyMXxHq16AftDNsnugwi4ce4nrwytnqHaFay7kL3YkkM5CkEJEblMw==
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: # HG changeset patch # User Timo Lindfors
 <timo.lindfors@iki.fi>
 # Date 1647554330 -7200 # Thu Mar 17 23:58:50 2022 +0200 # Node ID
 538c14b1428d0625ebb3f9c3cae21656fd4c3b06
 # Parent e45ccbe6bf59ba534a [...] 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.185.170.37 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Headers-End: 1nUyNd-002Lg5-AE
Subject: [tboot-devel] [PATCH 3 of 3] Allow selecting only SINIT modules
 that match platform
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
# Date 1647554330 -7200
#      Thu Mar 17 23:58:50 2022 +0200
# Node ID 538c14b1428d0625ebb3f9c3cae21656fd4c3b06
# Parent  e45ccbe6bf59ba534ad628f7be45e7c34629e19b
Allow selecting only SINIT modules that match platform
This introduces GRUB_TBOOT_SINIT_SELECT_MATCHING that defaults to
false.

Signed-off-by: Timo Lindfors <timo.lindfors@iki.fi>

diff -r e45ccbe6bf59 -r 538c14b1428d tboot/20_linux_tboot
--- a/tboot/20_linux_tboot	Thu Mar 17 23:58:45 2022 +0200
+++ b/tboot/20_linux_tboot	Thu Mar 17 23:58:50 2022 +0200
@@ -40,6 +40,7 @@
 [ -z "${GRUB_CMDLINE_LINUX_TBOOT}" ] && unset GRUB_CMDLINE_LINUX_TBOOT
 [ -z "${GRUB_TBOOT_POLICY_DATA}" ] && unset GRUB_TBOOT_POLICY_DATA
 [ -z "${GRUB_TBOOT_SINIT_LIST}" ] && unset GRUB_TBOOT_SINIT_LIST
+[ -z "${GRUB_TBOOT_SINIT_SELECT_MATCHING}" ] && unset GRUB_TBOOT_SINIT_SELECT_MATCHING
 # Command line for tboot itself
 : ${GRUB_CMDLINE_TBOOT='logging=serial,memory,vga'}
 # Linux kernel parameters to append for tboot
@@ -48,6 +49,8 @@
 : ${GRUB_TBOOT_POLICY_DATA=''}
 # List of SINIT modules to use, glob patterns are supported
 : ${GRUB_TBOOT_SINIT_LIST='/boot/*sinit* /boot/*SINIT*'}
+# Use only SINIT modules that match the current platform
+: ${GRUB_TBOOT_SINIT_SELECT_MATCHING='false'}
 
 export TEXTDOMAIN=grub
 export TEXTDOMAINDIR=${prefix}/share/locale
@@ -164,8 +167,16 @@
 tboot_list=`for i in /boot/tboot*.gz; do
         if grub_file_is_not_garbage "$i" ; then echo -n "$i " ; fi
       done`
+if [ "x${GRUB_TBOOT_SINIT_SELECT_MATCHING}" = "xtrue" ] && [ ! -e /dev/cpu/0/msr ]; then
+  modprobe msr
+fi
 sinit_list=`for i in ${GRUB_TBOOT_SINIT_LIST}; do
         basename=$(basename $i)
+        if [ "x${GRUB_TBOOT_SINIT_SELECT_MATCHING}" = "xtrue" ] \
+            && ! txt-acminfo "$i" | grep -qx "ACM matches platform"; then
+          # Skip SINIT that does not match
+          continue
+        fi
         if grub_file_is_not_garbage "$i" ; then echo -n "$basename " ; fi
       done`
 if [ -n "${GRUB_TBOOT_POLICY_DATA}" ]; then
diff -r e45ccbe6bf59 -r 538c14b1428d tboot/20_linux_xen_tboot
--- a/tboot/20_linux_xen_tboot	Thu Mar 17 23:58:45 2022 +0200
+++ b/tboot/20_linux_xen_tboot	Thu Mar 17 23:58:50 2022 +0200
@@ -41,6 +41,7 @@
 [ -z "${GRUB_CMDLINE_LINUX_XEN_TBOOT}" ] && unset GRUB_CMDLINE_LINUX_XEN_TBOOT
 [ -z "${GRUB_TBOOT_POLICY_DATA}" ] && unset GRUB_TBOOT_POLICY_DATA
 [ -z "${GRUB_TBOOT_SINIT_LIST}" ] && unset GRUB_TBOOT_SINIT_LIST
+[ -z "${GRUB_TBOOT_SINIT_SELECT_MATCHING}" ] && unset GRUB_TBOOT_SINIT_SELECT_MATCHING
 # Command line for tboot itself
 : ${GRUB_CMDLINE_TBOOT='logging=serial,memory,vga'}
 # Xen parameters to append for tboot
@@ -51,6 +52,8 @@
 : ${GRUB_TBOOT_POLICY_DATA=''}
 # List of SINIT modules to use, glob patterns are supported
 : ${GRUB_TBOOT_SINIT_LIST='/boot/*sinit* /boot/*SINIT*'}
+# Use only SINIT modules that match the current platform
+: ${GRUB_TBOOT_SINIT_SELECT_MATCHING='false'}
 
 export TEXTDOMAIN=grub
 export TEXTDOMAINDIR=${prefix}/share/locale
@@ -194,8 +197,16 @@
 tboot_list=`for i in /boot/tboot*.gz; do
         if grub_file_is_not_garbage "$i" ; then echo -n "$i " ; fi
       done`
+if [ "x${GRUB_TBOOT_SINIT_SELECT_MATCHING}" = "xtrue" ] && [ ! -e /dev/cpu/0/msr ]; then
+  modprobe msr
+fi
 sinit_list=`for i in ${GRUB_TBOOT_SINIT_LIST}; do
         basename=$(basename $i)
+        if [ "x${GRUB_TBOOT_SINIT_SELECT_MATCHING}" = "xtrue" ] \
+            && ! txt-acminfo "$i" | grep -qx "ACM matches platform"; then
+          # Skip SINIT that does not match
+          continue
+        fi
         if grub_file_is_not_garbage "$i" ; then echo -n "$basename " ; fi
       done`
 if [ -n "${GRUB_TBOOT_POLICY_DATA}" ]; then



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
