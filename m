Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 189C71CCE0E
	for <lists+tboot-devel@lfdr.de>; Sun, 10 May 2020 22:55:39 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1jXsz2-0002o0-FF; Sun, 10 May 2020 20:55:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <timo.lindfors@iki.fi>) id 1jXsz1-0002nn-9b
 for tboot-devel@lists.sourceforge.net; Sun, 10 May 2020 20:55:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=d2y5NntPbB7EbEvOV5IojKWqDzL/YDsfppl7Ar4pYUQ=; b=KIQByG9h3CEy0C8BDk4bmkYp6w
 WNUdhuUaLpKqFGMCzABr3WOdHW9HWzHLRq1b0t924Y82S5ZAL1W+NEyJtBLycjOPuQeJMbi5vMpTR
 Cp/hw+7Gg66FsaMF+H4ZrBatMW9wfHrJiGBo7Bxpi3wtsnqwwesptc5TXF3cPyGWOPUM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:To:From:Date:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=d2y5NntPbB7EbEvOV5IojKWqDzL/YDsfppl7Ar4pYUQ=; b=a
 kpo09rujIJFke+m5jOUIlX5nlT+6hNeYY8P7yOEabXHVuxrOHR0CKfBYOVRM5XefQngQcwJuQSQL5
 9ooVvsBsJbTB2z3j3NZDR1JErU70OZ998Xx4MWXY1CMjlqVbBYH53zju2weXVLYsCn0DelIOAZRWe
 axi1bt1/C1xJ+kT4=;
Received: from meesny.iki.fi ([195.140.195.201])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jXsyz-002woS-Ar
 for tboot-devel@lists.sourceforge.net; Sun, 10 May 2020 20:55:35 +0000
Received: from mail.home (82-181-208-90.bb.dnainternet.fi [82.181.208.90])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: timo.lindfors)
 by meesny.iki.fi (Postfix) with ESMTPSA id B2FFE200CC
 for <tboot-devel@lists.sourceforge.net>; Sun, 10 May 2020 23:55:26 +0300 (EEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi; s=meesny;
 t=1589144126;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type;
 bh=d2y5NntPbB7EbEvOV5IojKWqDzL/YDsfppl7Ar4pYUQ=;
 b=QCt5MuZDuokzW0r7lLPbUjZr19sBMTU+jfS5qvJH/S0v+k439h6WkGS2+3ZlhQrp+CO0pW
 yRppkogbye6FU9MmJeuzR1pXPGCFBNDfPQQ3JrmWCx8ONe+mkXerNODZNNy5AJu6L7Pj2U
 tiirqikazr4w33X9d5MQwqFbulJmPPM=
Received: from localhost ([127.0.0.1]) by mail.home with esmtp (Exim 4.89)
 (envelope-from <timo.lindfors@iki.fi>) id 1jXsym-0001Y4-EU
 for tboot-devel@lists.sourceforge.net; Sun, 10 May 2020 23:55:20 +0300
Date: Sun, 10 May 2020 23:55:20 +0300 (EEST)
From: Timo Lindfors <timo.lindfors@iki.fi>
To: tboot-devel@lists.sourceforge.net
Message-ID: <alpine.DEB.2.20.2005102344150.5921@mail.home>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi;
 s=meesny; t=1589144126;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type;
 bh=d2y5NntPbB7EbEvOV5IojKWqDzL/YDsfppl7Ar4pYUQ=;
 b=TZQXEqKv4SuCJig+89QM+ig2kNjUuMP3nuo7XzkgSVfbrnDl5h4W3wHBTmvHiQ3YwMjtE8
 Y30GPdNqpDH3dUjPvVBD/cn3A0LhZjfIsrMavfcUqrx1hT5QYNtadDWfzuexPwIdtbwLJL
 PSyZ07P9G65ain2BMMi//VSm1sreZVo=
ARC-Seal: i=1; s=meesny; d=iki.fi; t=1589144126; a=rsa-sha256; cv=none;
 b=YBRpkg9U01qG7eHLoebGlDbQJVIqyI/tuZti7T2OOiKMMnhooOGlC/bJ1tezFRND3xBdP7
 TdzNiJdQEJT2rND/DiwVXQZwERv5SVYeybHDVkR+aNjJgSDXEmMmOBh2nNs9B9HIKNeL1l
 nIPw58mdvyk+mSCWBWSWmIonOG22k5o=
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
X-Headers-End: 1jXsyz-002woS-Ar
Subject: [tboot-devel] rename parse_err?
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

tboot installs a binary called "parse_err". I realize tboot has been doing 
this for a long time but have you considered renaming the binary to 
something less generic? Maybe txt_parse_err?

-Timo





_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
