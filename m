Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A6FE83F7413
	for <lists+tboot-devel@lfdr.de>; Wed, 25 Aug 2021 13:08:24 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1mIqlW-0007qI-R9; Wed, 25 Aug 2021 11:08:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <timo.lindfors@iki.fi>) id 1mIqlV-0007px-Je
 for tboot-devel@lists.sourceforge.net; Wed, 25 Aug 2021 11:08:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=References:In-Reply-To:Message-Id:Date:Subject:Cc:
 To:From:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6htRyQUevauvHC/88YLJoUqheinCI2I7cZ7L6Q8PmMc=; b=eymDMLCNmjtBO1lECBAiVrT4Uv
 aNcR75E5gRQpvMGnLNQfqwebeLJzgfGWiwkzy5QkCScxZS2VjY8xldLg9BhSh0dQ+hkndUlvXotFI
 YtHknViSyS/6KqBqHDSAEuScVFScR6a5JOi4Ej2NE2dPN/dZNbDCv8HimKmgNgW0HSxA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6htRyQUevauvHC/88YLJoUqheinCI2I7cZ7L6Q8PmMc=; b=BVP2QgwkNNWGN4Vxv595NT8bbr
 VYs41DQ/W16HWCZaK9bW/DpsRRZmh399nHVm0mvW7bhMMVALRaUzYa2t6XFgmVT9K3Amr/hrVZ3nV
 lbHWorrDH6yR8GPGoBJ3K6kjqs+ZEKmiAfgepPtaz+mirI07FkioG5U5NDGGaBnzAUyg=;
Received: from meesny.iki.fi ([195.140.195.201])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mIqlR-000Qqp-FV
 for tboot-devel@lists.sourceforge.net; Wed, 25 Aug 2021 11:08:17 +0000
Received: from mail.home (89-27-97-237.bb.dnainternet.fi [89.27.97.237])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: timo.lindfors)
 by meesny.iki.fi (Postfix) with ESMTPSA id 1367E2036A;
 Wed, 25 Aug 2021 14:08:07 +0300 (EEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi; s=meesny;
 t=1629889687;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:in-reply-to:in-reply-to:references:references;
 bh=6htRyQUevauvHC/88YLJoUqheinCI2I7cZ7L6Q8PmMc=;
 b=wdq/liRX4nDnBS3eccteksF00Q+8Ml9EJkPPocRSEHmMsgrqiDGDZAYeOC2nTa+rXzJOH8
 /G+PMP9WteUf6GIMLS8SyK229q0uPAjP0JbkVB39dD4+yoVl3GeVJbTJt1ImbBuLxgk93/
 fyJEZejvSNxKe5mr290sQ4dfLqyaujU=
Received: from lindi by mail.home with local (Exim 4.89)
 (envelope-from <timo.lindfors@iki.fi>)
 id 1mIoqS-0001mV-7B; Wed, 25 Aug 2021 12:05:16 +0300
From: Timo Juhani Lindfors <timo.lindfors@iki.fi>
To: tboot-devel@lists.sourceforge.net
Date: Wed, 25 Aug 2021 12:05:13 +0300
Message-Id: <20210825090513.6805-2-timo.lindfors@iki.fi>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210825090513.6805-1-timo.lindfors@iki.fi>
References: <20210825090513.6805-1-timo.lindfors@iki.fi>
ARC-Seal: i=1; s=meesny; d=iki.fi; t=1629889687; a=rsa-sha256; cv=none;
 b=tLmVydOka5w+QHxK8jd/Ku1buGFTqaX3jKZWHI0Z2UK+cbMGrUh1XKh7za6Qv+JKZTbyZO
 7A+VW4cGgekCz0jAsI/zn9oH874WGHXff8rBly+USeqUdvvvXt4Is8qjhCVGQZ9+0oi1/E
 5yud00Nu7ccM4EWfa6F3Z4sH+qPOmPI=
ARC-Authentication-Results: i=1; ORIGINATING;
 auth=pass smtp.auth=timo.lindfors smtp.mailfrom=timo.lindfors@iki.fi
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi;
 s=meesny; t=1629889687;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:in-reply-to:in-reply-to:references:references;
 bh=6htRyQUevauvHC/88YLJoUqheinCI2I7cZ7L6Q8PmMc=;
 b=EYkKzXs5Wcv2SVthnA9XrjOScM5xUkc+e/+noSuoleWf1yrNJconOgQuW94o1yrzW/6Amb
 DMrunYv5pI3arCAO/4MrqyQTX7KoHGsUuA7xP0fUcpmWRySmvEk5Zwdnft+wcZUbvgq27u
 RLAbYfnt/CzQnm11tfa+vlsHezV/rgw=
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  From: Timo Lindfors <timo.lindfors@iki.fi> Signed-off-by:
 Timo Juhani Lindfors <timo.lindfors@iki.fi> --- lcp-gen2/ElementBase.py |
 3 --- tboot/Makefile | 2 +- uml/prepare_cpu.plantuml | 2 +- 3 files changed,
 2 insertions(+), 5 deletions(-) 
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
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: elementbase.py]
X-Headers-End: 1mIqlR-000Qqp-FV
Subject: [tboot-devel] [PATCH 2/2] Ensure all source files end with a newline
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

Signed-off-by: Timo Juhani Lindfors <timo.lindfors@iki.fi>
---
 lcp-gen2/ElementBase.py  | 3 ---
 tboot/Makefile           | 2 +-
 uml/prepare_cpu.plantuml | 2 +-
 3 files changed, 2 insertions(+), 5 deletions(-)

diff --git a/lcp-gen2/ElementBase.py b/lcp-gen2/ElementBase.py
index 3fbc738..7086ce1 100644
--- a/lcp-gen2/ElementBase.py
+++ b/lcp-gen2/ElementBase.py
@@ -57,6 +57,3 @@ if __name__ == "__main__":
   #print packed
   #e.packHash('SHA384')
   #e.packHash('SHA512')
-  
-  
-    
\ No newline at end of file
diff --git a/tboot/Makefile b/tboot/Makefile
index dbcfdf9..3fe6a9a 100644
--- a/tboot/Makefile
+++ b/tboot/Makefile
@@ -143,4 +143,4 @@ endif
 	$(CPP) $(AFLAGS) $< -o $@
 
 %.S : %.pl $(HDRS) $(BUILD_DEPS)
-	/usr/bin/perl $< "elf" $(AFLAGS) $@
\ No newline at end of file
+	/usr/bin/perl $< "elf" $(AFLAGS) $@
diff --git a/uml/prepare_cpu.plantuml b/uml/prepare_cpu.plantuml
index 41908ff..5fba6cc 100644
--- a/uml/prepare_cpu.plantuml
+++ b/uml/prepare_cpu.plantuml
@@ -6,4 +6,4 @@ start
 :check & exit virtual-8086 mode;
 :check if no machine check in progress;
 stop
-@enduml
\ No newline at end of file
+@enduml
-- 
2.20.1



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
