Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C45FB3F7414
	for <lists+tboot-devel@lfdr.de>; Wed, 25 Aug 2021 13:08:24 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1mIqlU-0007zF-4u; Wed, 25 Aug 2021 11:08:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <timo.lindfors@iki.fi>) id 1mIqlT-0007z8-3Z
 for tboot-devel@lists.sourceforge.net; Wed, 25 Aug 2021 11:08:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UwkjNhjBbSa1hJGgqOT7G+BIBSgPuw5HQ6e7hyEHXA8=; b=SHG3umjtf90GTLGoEpSgKGkJpo
 9IaC55lCWcroFJusZSmhlg9uQpp4Rwd3LzKHWO6O4RdDMpsgLvSAIhdyksw0apO+j90YEchsFWmXN
 n5+gButFmdRTWQkhjdUo4VnQH44Zib2dbbQazzoaChe280e1M1SpdpHS12u8T/dO+Gvc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=UwkjNhjBbSa1hJGgqOT7G+BIBSgPuw5HQ6e7hyEHXA8=; b=C2ZN9cRd3cCDy1u0vCaQnyKzio
 85MleoUtzINPv+a7iU5AeyH25xJAX+Rs65L0nTKH/8N19FE4eRzO3pR4FB2R3zNLI0ZklsXWgZQzY
 b/k0VZzPBflEI6fT5+VrBfyhmNbwXbhZlrH9mFFV53sAG5rhY35a6K97Ajq3d7vvEft0=;
Received: from meesny.iki.fi ([195.140.195.201])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mIqlR-0001hU-64
 for tboot-devel@lists.sourceforge.net; Wed, 25 Aug 2021 11:08:15 +0000
Received: from mail.home (89-27-97-237.bb.dnainternet.fi [89.27.97.237])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: timo.lindfors)
 by meesny.iki.fi (Postfix) with ESMTPSA id 0F38020151;
 Wed, 25 Aug 2021 14:08:06 +0300 (EEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi; s=meesny;
 t=1629889686;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc; bh=UwkjNhjBbSa1hJGgqOT7G+BIBSgPuw5HQ6e7hyEHXA8=;
 b=HLEw1uNRE9VvZ1wR0y9iK/bsxmKtVOkFFDc8D3lT5FSduvxlqXNWaqD6iZ4f3CGeHw/s9w
 w025lQoxF/5bJz9MZwPFHcoQFXi97F2Exph2CNvM0r1vBVy90QvbFqBvyeSffLMJYo3uk5
 TwDW9q1TNbGTrd6Vi8qgWuQri6216ZE=
Received: from lindi by mail.home with local (Exim 4.89)
 (envelope-from <timo.lindfors@iki.fi>)
 id 1mIoqR-0001mS-6N; Wed, 25 Aug 2021 12:05:15 +0300
From: Timo Juhani Lindfors <timo.lindfors@iki.fi>
To: tboot-devel@lists.sourceforge.net
Date: Wed, 25 Aug 2021 12:05:12 +0300
Message-Id: <20210825090513.6805-1-timo.lindfors@iki.fi>
X-Mailer: git-send-email 2.11.0
ARC-Seal: i=1; s=meesny; d=iki.fi; t=1629889686; a=rsa-sha256; cv=none;
 b=YZg8nP3ZFetJxJ7PhJl7gZwFIqsO39sT2SAJ6m4pTpzbo6IiOhULybqe/LLmE0yskJAS2I
 sFumdywSCKg3HF/lmfQdSzmm6+75MyQZc/pbSu2TdreYUNjpty82l2l1jg9cM44f7ECyRL
 bHFGhRHjESNt8+WJ572/zTbweCsKLVc=
ARC-Authentication-Results: i=1; ORIGINATING;
 auth=pass smtp.auth=timo.lindfors smtp.mailfrom=timo.lindfors@iki.fi
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi;
 s=meesny; t=1629889686;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc; bh=UwkjNhjBbSa1hJGgqOT7G+BIBSgPuw5HQ6e7hyEHXA8=;
 b=PjwTTsiTTHMKpl1q+OqBVZHwyF+9pY6jdB4kqAEUxRn6PMEtbRMS+xKjxWIzB3ySrCFgYj
 h+mB0zSj/chZdXVuGGdUV7Qw38LILXyAW2/tBZYTQPnVSOWTcBPjF+ZfGWjoYf4EmVbWRj
 qyBeWaj1amWXTfK+kgU+VhjvqJPq6/8=
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
X-Headers-End: 1mIqlR-0001hU-64
Subject: [tboot-devel] [PATCH 1/2] Remove poly1305 object files on clean
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
 tboot/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/tboot/Makefile b/tboot/Makefile
index f6530ea..dbcfdf9 100644
--- a/tboot/Makefile
+++ b/tboot/Makefile
@@ -68,7 +68,7 @@ $(DISTDIR)/boot/$(TARGET).gz : $(TARGET).gz
 
 
 clean :
-	rm -f $(TARGET)* $(TARGET_LDS) *~ include/*~ include/txt/*~ *.o common/*~ txt/*~ common/*.o txt/*.o
+	rm -f $(TARGET)* $(TARGET_LDS) *~ include/*~ include/txt/*~ *.o common/*~ txt/*~ common/*.o txt/*.o common/poly1305/*.o
 	rm -f tags TAGS cscope.files cscope.in.out cscope.out cscope.po.out
 
 
-- 
2.20.1



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
