Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EE3D1DFA1B
	for <lists+tboot-devel@lfdr.de>; Sat, 23 May 2020 20:01:42 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1jcYSn-0002MN-BC; Sat, 23 May 2020 18:01:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <timo.lindfors@iki.fi>) id 1jcYSm-0002MG-5S
 for tboot-devel@lists.sourceforge.net; Sat, 23 May 2020 18:01:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=To:From:Date:Message-Id:Subject:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UclB3qSC8HsVyvKVX15aQNmAK4D8sr2IbspOz/4O2So=; b=bp2ipOYk5wQQDZm0Gj9xKGFp3
 k2uDRqx2K/wdQF3XVtBY8ZXBTrUyz8FWf+D7rZiAjYxHlwvE97AcXbyOtEZtXlGwxLYEkuhtKBtIv
 em27puK2447FlrIAr3YIhOaKZ9EhTZIRNYUM5BPY6joLw/2wS09Uf2GTG1Tik3p3j2GuU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=To:From:Date:Message-Id:Subject:Content-Transfer-Encoding:Content-Type:
 MIME-Version:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=UclB3qSC8HsVyvKVX15aQNmAK4D8sr2IbspOz/4O2So=; b=P
 mlWlLyGcjfs9SCZ2T0+d36D2l1DX0iZgcXurIC6cdgkSKE5jpb+cXSTlx4xQc7ZXHvylYUIXS9nue
 RSEOLGBBFBFKxyPt1YphsvbIayLgNDpJ2+BNyzkqUrhQAFviY2DMroJpG9lOAuZeyQ6Zm7sE/TZIB
 2Ghoco4vF0neYxrI=;
Received: from meesny.iki.fi ([195.140.195.201])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jcYSk-00Egfk-Hn
 for tboot-devel@lists.sourceforge.net; Sat, 23 May 2020 18:01:36 +0000
Received: from mail.home (89-27-97-237.bb.dnainternet.fi [89.27.97.237])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: timo.lindfors)
 by meesny.iki.fi (Postfix) with ESMTPSA id 10B9B20177
 for <tboot-devel@lists.sourceforge.net>; Sat, 23 May 2020 21:01:21 +0300 (EEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi; s=meesny;
 t=1590256881;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=UclB3qSC8HsVyvKVX15aQNmAK4D8sr2IbspOz/4O2So=;
 b=cXP0c02JDcfDDw6EIiT9oDgQtLIr7OttoBKckDrN804+kkiWMUO/GeNfmfI2GZ+/PTlfzj
 imr/QzfFwLAYNFHUWUf520R1ubnp/CINM2+UeNlvPkdhhs/yXwtm/38/q1H1GGYEP5vQmG
 6vMxxJgY0XIR1mx+og0uAUlMJPmtP4M=
Received: from lindi by mail.home with local (Exim 4.89)
 (envelope-from <timo.lindfors@iki.fi>) id 1jcYSP-0004jA-V5
 for tboot-devel@lists.sourceforge.net; Sat, 23 May 2020 21:01:13 +0300
MIME-Version: 1.0
X-Mercurial-Node: 21e7be142605955977ea1e36b781f313058da8c9
X-Mercurial-Series-Index: 1
X-Mercurial-Series-Total: 1
Message-Id: <21e7be142605955977ea.1590256865@sec-589.nixu.fi>
X-Mercurial-Series-Id: <21e7be142605955977ea.1590256865@sec-589.nixu.fi>
User-Agent: Mercurial-patchbomb/4.8.2
Date: Sat, 23 May 2020 21:01:05 +0300
From: Timo Juhani Lindfors <timo.lindfors@iki.fi>
To: tboot-devel@lists.sourceforge.net
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi;
 s=meesny; t=1590256881;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=UclB3qSC8HsVyvKVX15aQNmAK4D8sr2IbspOz/4O2So=;
 b=kPg/JYxL2Xc3HNQyAx8J35/s1uS+3u6kNLcd11bNYNUkSTmt4PLbn0iTcynTT/nYgJgJWO
 G1bEe0hIYriVvrQ636CBLIDnMF3pnPS/1cLyeS93kEUW3ybzKyr0aixuQTlg4da4low9bB
 +quthGbrSE0iadfEuQhGIBCjV2j3/kA=
ARC-Seal: i=1; s=meesny; d=iki.fi; t=1590256881; a=rsa-sha256; cv=none;
 b=WZFfu1tXkEUG6g0CnnB40CWQ7wTZMZJszJptPKB/72o3Ulf0Y7ZdTQmkWHFAnzOgBdfeXt
 bG0uJFCxJCt6fPDiLrDW9azfV/z2iCc1TG1Uap7jnGV8DqQZtPhZ4yc04WQ4uhbqhKsPd4
 Dp6zDeKpajmRbs0K13D4hMXZ6YXhSPY=
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
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jcYSk-00Egfk-Hn
Subject: [tboot-devel] [PATCH] Fix man page syntax error
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
# Date 1590255451 -10800
#      Sat May 23 20:37:31 2020 +0300
# Branch fix/manpage-syntax1
# Node ID 21e7be142605955977ea1e36b781f313058da8c9
# Parent  2f505db817e62cf84a6a83649d259520e5915e24
Fix man page syntax error

Previously man docs/man/lcp2_crtpol.8 >/dev/null printed

an-old.tmac: <standard input>: line 22: 'R' is a string (producing the registered sign), not a macro.

Signed-off-by: Timo Juhani Lindfors <timo.lindfors@iki.fi>

diff -r 2f505db817e6 -r 21e7be142605 docs/man/lcp2_crtpol.8
--- a/docs/man/lcp2_crtpol.8	Wed May 20 10:48:26 2020 +0200
+++ b/docs/man/lcp2_crtpol.8	Sat May 23 20:37:31 2020 +0300
@@ -19,7 +19,7 @@
 .IR <pol_ctrl> ]
 .B --pol
 .I <POLICY\ FILE>
-.R [ --data
+.RB [ --data
 .IR <POLICY\ DATA\ FILE> ]
 .RB [ --mask
 .IR mask ]




_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
