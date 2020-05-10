Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A2891CCDF9
	for <lists+tboot-devel@lfdr.de>; Sun, 10 May 2020 22:43:52 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1jXsnd-00066u-So; Sun, 10 May 2020 20:43:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <timo.lindfors@iki.fi>) id 1jXsnc-00066d-5S
 for tboot-devel@lists.sourceforge.net; Sun, 10 May 2020 20:43:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kv7tYNK+GQcjnoav9xTdodMeSu0mhDEYGDWiGsmYR2I=; b=b3BeVtrptHMRXC+62eHiqlmgZp
 /V8YxTEfRes0fljao/Xv9upKYFalGJrOb0RRnd5RYfpmPI5gAUbbRxVn83Y/zDIGBX/j/yDRthMLp
 OJCG4bK+Hr2NLG6kNJPMLL1EqOhXUKkk3L4spCVKPBBIYrqofdwL7kjgSpeCT17q2bXs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:To:From:Date:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=kv7tYNK+GQcjnoav9xTdodMeSu0mhDEYGDWiGsmYR2I=; b=E
 4plN4uZb6HXxkBLajerd5GW3MpAEkglgM78RfUW6r0vPX7dhs4B4j4f71poEdOdBrYaj/q/pyR6+x
 UqG9phxwKUIrB0SR7jLmTJwjeEgFwWtUMavNHN6PgWdJUbxZpJjEUSSvpzJHo2hFMUY/4bvpiw+76
 urGO6sSLq8THvEzE=;
Received: from meesny.iki.fi ([195.140.195.201])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jXsnZ-002w00-By
 for tboot-devel@lists.sourceforge.net; Sun, 10 May 2020 20:43:48 +0000
Received: from mail.home (82-181-208-90.bb.dnainternet.fi [82.181.208.90])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: timo.lindfors)
 by meesny.iki.fi (Postfix) with ESMTPSA id D7B2520190
 for <tboot-devel@lists.sourceforge.net>; Sun, 10 May 2020 23:43:30 +0300 (EEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi; s=meesny;
 t=1589143410;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type;
 bh=kv7tYNK+GQcjnoav9xTdodMeSu0mhDEYGDWiGsmYR2I=;
 b=bVqWCe1CbH1AaP+9+aUnlCfstSkn78mpnZ9kR9juVgt2ysvOvGWB+0bAXDrHVfZvkfnCrQ
 ZIAerIUJ2jr1/HB5LcYlwjnYSoHaSojBNR1ZH9IBJmRXD/xqN4YTXJ/wJPveeIVXTZlaII
 T5HUYuvP/8kMF6V5wKpBmZkZbzsN7WE=
Received: from localhost ([127.0.0.1]) by mail.home with esmtp (Exim 4.89)
 (envelope-from <timo.lindfors@iki.fi>) id 1jXsnE-0001Xm-IG
 for tboot-devel@lists.sourceforge.net; Sun, 10 May 2020 23:43:24 +0300
Date: Sun, 10 May 2020 23:43:24 +0300 (EEST)
From: Timo Lindfors <timo.lindfors@iki.fi>
To: tboot-devel@lists.sourceforge.net
Message-ID: <alpine.DEB.2.20.2005102341440.5921@mail.home>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi;
 s=meesny; t=1589143410;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type;
 bh=kv7tYNK+GQcjnoav9xTdodMeSu0mhDEYGDWiGsmYR2I=;
 b=Z8oJap+g1NXg9QUyWBlFRQEZkKqYQNvJpU/0PVXVkx5XHQngsXOJctjRuDiRsdin0Wjxpt
 35gwURU4PQi3Fcxm+5uxple7Zi4E8RQL3zA69P1goCbiBx5geP6845lZ/hW/hSj/txr6zi
 8tvOYoxZhohqfbmhkibv9JP6c0C16Ik=
ARC-Seal: i=1; s=meesny; d=iki.fi; t=1589143410; a=rsa-sha256; cv=none;
 b=pndA4DyHVxWxQvz0q0NivxRZ/uXa7PF6vhkLgg6TgeprNAnxY5iwP8klCbRYrT0zA1wI4C
 4Eo1vYWP7xygNZCfwoZ7N8LtpgGUKajlChQreWL33ltXJXaKQLFO+cREk5qn2biwK3egBn
 in90RQWG1yrLYgupnb56Q3l0VMHKmk8=
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
X-Headers-End: 1jXsnZ-002w00-By
Subject: [tboot-devel] PATCH: add missing man pages
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

many commands installed by tboot don't seem to have man pages. I did some 
detective work based on --help output and source code and wrote the 
missing pages. Can you please take a look that they are accurate?

You can find the pages in the feature/add-missing-man-pages-1 branch at

https://lindi.iki.fi/lindi/hg/tboot/

-Timo



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
