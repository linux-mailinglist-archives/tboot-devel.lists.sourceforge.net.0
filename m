Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B98B2450E6
	for <lists+tboot-devel@lfdr.de>; Sat, 15 Aug 2020 13:03:32 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1k6tyC-0005JC-A2; Sat, 15 Aug 2020 11:03:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <timo.lindfors@iki.fi>) id 1k6ty8-0005IQ-Pe
 for tboot-devel@lists.sourceforge.net; Sat, 15 Aug 2020 11:03:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=u0khmvWk73qR2kcj8YgWsuVrPRwW9HQ5QhaI/pwqUFY=; b=nTli4IPoFIWn8k2pdnoxTmt8h4
 k5ez8vA9/l1daZxwA2zhWXpe7qyJtcXh9kSX9SRjR7Tw+VEs1OJgAFHw5XJlAuEt1XGAK8wIu9081
 AxtYpsPEhe+/sFaiNJCV5tynyk9vRSxgfeHWizuyWiuoqbcT48rLYQHhUZYJPnGQ7qDM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:To:From:Date:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=u0khmvWk73qR2kcj8YgWsuVrPRwW9HQ5QhaI/pwqUFY=; b=R
 Drm63TdJ2tACCB2K8tiqsYUwtgUd2QCtnxrmLGEAbsNYMmiLtWv9c9M30QT1SIQgNOLA9WbAvtbuO
 b20RA+MkEFyVRPIP+P9ef2E1Krmbn7qt8g9hjyOPTjxJ2FHPbw/St25b04H7RtkwjfN92zxbqLwRY
 /P9rtiAXA6Gbl99Y=;
Received: from meesny.iki.fi ([195.140.195.201])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1k6ty4-0080uT-9i
 for tboot-devel@lists.sourceforge.net; Sat, 15 Aug 2020 11:03:24 +0000
Received: from mail.home (89-27-97-237.bb.dnainternet.fi [89.27.97.237])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: timo.lindfors)
 by meesny.iki.fi (Postfix) with ESMTPSA id 9BA87202BF
 for <tboot-devel@lists.sourceforge.net>; Sat, 15 Aug 2020 13:44:11 +0300 (EEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi; s=meesny;
 t=1597488251;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type;
 bh=u0khmvWk73qR2kcj8YgWsuVrPRwW9HQ5QhaI/pwqUFY=;
 b=xBraDLHwPmRzwXA+BpUZlzaXCn65hRUlQFC5r9X3xWZtr4Hmt4CqNBSd01Nn8/k4fCDomH
 Ex3t2ZuI4AABIBHVNqNHTZ99IGnW0NayPnM4zM6uOrHZPMTIHDerVJBcLseZhPV71Z3Z//
 SfpfahRI8bZACHN11lc9bC9QDB6qI1o=
Received: from localhost ([127.0.0.1]) by mail.home with esmtp (Exim 4.89)
 (envelope-from <timo.lindfors@iki.fi>) id 1k6rlT-0004Y2-Nw
 for tboot-devel@lists.sourceforge.net; Sat, 15 Aug 2020 11:42:11 +0300
Date: Sat, 15 Aug 2020 11:42:11 +0300 (EEST)
From: Timo Lindfors <timo.lindfors@iki.fi>
To: tboot-devel@lists.sourceforge.net
Message-ID: <alpine.DEB.2.20.2008151133290.17457@mail.home>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi;
 s=meesny; t=1597488251;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type;
 bh=u0khmvWk73qR2kcj8YgWsuVrPRwW9HQ5QhaI/pwqUFY=;
 b=ZzjzghvA8YUWDyjqwy2syfG6qwbdvK3PtkhwFUN2GYOTkue6vG8pb+E+OSUNwFEXEcPd37
 d/X72k3NCR5yx3NvgvvCPqQufMwKbjGk6TNuG2fZe/aWIMqMcvpaZh+EwHZ8KNF18puvFn
 PxA3d8aOA3xpgXN7gsDS1E2xuuwIDrI=
ARC-Seal: i=1; s=meesny; d=iki.fi; t=1597488251; a=rsa-sha256; cv=none;
 b=GsFixUAGiYOT2vYzayWIKcCzo4K3SzNklm0qHCWjxDJqwbbq8I00TvWkmJ2KwmoKd0JFah
 CaRxGA0eA5hWhJK6tot4Lqd6HZPzx1YK1KqpFghBsQqNRQK4kOT8/Dpmcuf2TEQWaFAaub
 +S8uNEycwEhipRIGS99nvDkHV3BWhiI=
ARC-Authentication-Results: i=1; ORIGINATING;
 auth=pass smtp.auth=timo.lindfors smtp.mailfrom=timo.lindfors@iki.fi
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [195.140.195.201 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: intel.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1k6ty4-0080uT-9i
Subject: [tboot-devel] lcptools-v2 regressions in e73d11a8a2d6
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: tboot-devel-bounces@lists.sourceforge.net

Hi,

changeset:   603:e73d11a8a2d6
user:        Mateusz Mowka <mateusz.mowka@intel.com>
date:        Wed Jul 01 09:08:25 2020 +0200
summary:     Update lcptools-v2 to meet requirements from MLE DG rev16.

seems to re-introduce spelling errors that were fixed in

changeset:   590:2fbc7ec3b2c8
user:        Timo Juhani Lindfors <timo.lindfors@iki.fi>
date:        Sat May 09 20:59:11 2020 +0300
summary:     Fix spelling errors

See e.g.

          if ( *out_file == '\0' ) {
-            ERROR("Error: no output file specified\n");
+            ERROR("Error: no ouput file specified\n");
              return 1;
          }

Is this perhaps some merge conflict issue or does lcptool-v2 master data 
live in some other repository completely and that's why modifications made 
in tboot repository get overwritten?

The complete list of spelling errors reported by the debian lintian tool 
is here:

I: tboot: spelling-error-in-manpage usr/share/man/man8/lcp2_crtpollist.8.gz ouput output
I: tboot: spelling-error-in-binary usr/sbin/lcp2_crtpol successfull successful
I: tboot: spelling-error-in-binary usr/sbin/lcp2_crtpol defiend defined
I: tboot: spelling-error-in-binary usr/sbin/lcp2_crtpolelt ouput output
I: tboot: spelling-error-in-binary usr/sbin/lcp2_crtpolelt defiend defined
I: tboot: spelling-error-in-binary usr/sbin/lcp2_crtpollist succesfully successfully
I: tboot: spelling-error-in-binary usr/sbin/lcp2_crtpollist successfull successful
I: tboot: spelling-error-in-binary usr/sbin/lcp2_crtpollist defiend defined
I: tboot: spelling-error-in-binary usr/sbin/lcp2_mlehash ouput output
I: tboot: spelling-error-in-binary usr/sbin/lcp2_mlehash Unknonw Unknown
I: tboot: spelling-error-in-binary usr/sbin/lcp2_mlehash defiend defined



-Timo



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
