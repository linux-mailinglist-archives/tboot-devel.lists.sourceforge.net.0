Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B6ED73F73F2
	for <lists+tboot-devel@lfdr.de>; Wed, 25 Aug 2021 13:01:44 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1mIqf7-0007sh-IZ; Wed, 25 Aug 2021 11:01:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <timo.lindfors@iki.fi>) id 1mIqf3-0007sX-FA
 for tboot-devel@lists.sourceforge.net; Wed, 25 Aug 2021 11:01:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=M07NDDwZQMZHljeNMkU40Qsmn8gp2giWCGxwFM4HJ30=; b=ByKTEDw8aJu6wi8DcR8DMh6CQn
 CGFjbdj2Z21awpLD8xRrhcXt/UBpbtzzHW6pSXRjhCwVex3hnMEG1IIUyZfdJ50YpW86Js2QI0dUE
 CFJEfsQsjisSRMbCyxuOWZv2vXCLPO2aYO7wTZ5/k4zDE1rve5kfnaBQp8ZTGia9zFl4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=M07NDDwZQMZHljeNMkU40Qsmn8gp2giWCGxwFM4HJ30=; b=UsqccpOXrW/8wcm9jXY2NwJq2H
 dFnHHkXnT0XT16Wqf3Y6K70py4Hp5gyb5K7fX8Pb6x/CLvXZBpPIyhZrOxEiapGR0xkaFLlqxYzZm
 a+oMVA64cVswUMbi8/SPPXkeIRfUo4J8spsjuswIHKdcvSNIAAUM6mYuWq4tQE0a1tk0=;
Received: from meesny.iki.fi ([195.140.195.201])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mIqey-000QKv-R0
 for tboot-devel@lists.sourceforge.net; Wed, 25 Aug 2021 11:01:37 +0000
Received: from mail.home (89-27-97-237.bb.dnainternet.fi [89.27.97.237])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: timo.lindfors)
 by meesny.iki.fi (Postfix) with ESMTPSA id 35E1620151;
 Wed, 25 Aug 2021 14:01:22 +0300 (EEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi; s=meesny;
 t=1629889282;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc; bh=M07NDDwZQMZHljeNMkU40Qsmn8gp2giWCGxwFM4HJ30=;
 b=BP8Z2agNPRVvUYPsbLeA6Px/Y+YsHUaeLqv6MAW4uW4lZ+bgmG5pS4RFh23rVIyp04PBWq
 6BhIK4twG8kPZuCHR6fkS+cAxJSavVZHdmnAavcpm8PhUeQ4Uto8cyyxgsjd4haVwQlXDr
 GY5e60/sjj+y+tIjRA2szTSpCj754UE=
Received: from lindi by mail.home with local (Exim 4.89)
 (envelope-from <timo.lindfors@iki.fi>)
 id 1mIojv-0001kt-9e; Wed, 25 Aug 2021 11:58:31 +0300
From: Timo Juhani Lindfors <timo.lindfors@iki.fi>
To: tboot-devel@lists.sourceforge.net
Date: Wed, 25 Aug 2021 11:58:26 +0300
Message-Id: <20210825085826.6709-1-timo.lindfors@iki.fi>
X-Mailer: git-send-email 2.11.0
ARC-Seal: i=1; s=meesny; d=iki.fi; t=1629889282; a=rsa-sha256; cv=none;
 b=qqXpIqj+peKxnTQeX6baElIsymIIfFp+OcPX509lOs2rMcqsx296Cja9v71Wy/RBgcTEJt
 wAApRNJ0/DjhUeL03wH/fJsd7RY0mKF5IpA/BdySyeLgkcQWrHJTF3jB5BFE77DWezpxf1
 B/rQ5c24I4YVmcm6gsFC4saLbFF6sB0=
ARC-Authentication-Results: i=1; ORIGINATING;
 auth=pass smtp.auth=timo.lindfors smtp.mailfrom=timo.lindfors@iki.fi
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi;
 s=meesny; t=1629889282;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc; bh=M07NDDwZQMZHljeNMkU40Qsmn8gp2giWCGxwFM4HJ30=;
 b=CKHIHGYMkTziodWKtU3n9phLXo4lkP+p3hfXgFPx1Bx11/FlHKq+7/HsUexVYn03PAnf1Y
 EtKUBxoZRPilfCprPrvA5DDBGPUjf8+Pr0ffkBmnx4zge4VyEig9T0XlcaZeOWO6NSWOCi
 uAjmSgQcjqKTbeq2ozldDqQni8q27Rc=
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Timo Lindfors <timo.lindfors@iki.fi> Testing done: Boot
 tboot with a 2560x1440 monitor. Verify that no output is visible without
 this patch, and that output is correct with this patch. This was tested on
 an HP EliteDesk 800 G2 with BIOS [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1mIqey-000QKv-R0
Subject: [tboot-devel] [PATCH] Support higher resolution monitors
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

Testing done: Boot tboot with a 2560x1440 monitor. Verify that no
output is visible without this patch, and that output is correct with
this patch. This was tested on an HP EliteDesk 800 G2 with BIOS
version 2.17.

Signed-off-by: Timo Juhani Lindfors <timo.lindfors@iki.fi>
---
 include/config.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/include/config.h b/include/config.h
index f75c508..8211975 100644
--- a/include/config.h
+++ b/include/config.h
@@ -120,8 +120,8 @@ extern char _end[];              /* end of tboot */
 #endif /* NO_TBOOT_LOGLVL */
 
 /* Framebuffer */
-#define FB_MAX_HRES 1920
-#define FB_MAX_VRES 1080
+#define FB_MAX_HRES 2560
+#define FB_MAX_VRES 1440
 #define FB_BPP 32
 
 #endif /* __CONFIG_H__ */
-- 
2.20.1



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
