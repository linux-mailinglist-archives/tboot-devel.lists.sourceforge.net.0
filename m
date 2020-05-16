Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 378CF1D612F
	for <lists+tboot-devel@lfdr.de>; Sat, 16 May 2020 15:03:55 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1jZwTo-0000bP-3D; Sat, 16 May 2020 13:03:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <timo.lindfors@iki.fi>) id 1jZwTm-0000b7-9s
 for tboot-devel@lists.sourceforge.net; Sat, 16 May 2020 13:03:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Yf2uBPkSio83Ef/VaEy5auu3tdeRyaDqdZBCC2VWBiQ=; b=ZdX3ec3p+QOG4Eu5G32kZ7+FFe
 m/tJN/KQ3o+0Q27AywUtYs5lCK7ak01ochppMELiFWLSYSIL6hV77GIUCrhYzOiYgPF3PPABU3TML
 yXIwOnGQBYJbik1sMxaOkyH5PtvCwx4H2GIbe3N8gVAKebBC/5UA0/BC9Is3hEeu2h7s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:To:From:Date:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Yf2uBPkSio83Ef/VaEy5auu3tdeRyaDqdZBCC2VWBiQ=; b=U
 9MDwYfhoqyBkqeN7mQj0Kd0ANmusQbLrlgnzcdcdqthyuPW6Qnzs/iTZ3JoQ0w3kTwZAGsSZRTu5X
 V2BFvNoEzubCW6c9hpNVhMo5yb0OhST0vCL8FppD6iB22sXhvzkafBI2dzHIcvt/FYvbca7RmqdUM
 H2XjtcFPlUVXkQXQ=;
Received: from meesny.iki.fi ([195.140.195.201])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jZwTh-00DDEW-7h
 for tboot-devel@lists.sourceforge.net; Sat, 16 May 2020 13:03:50 +0000
Received: from mail.home (82-181-208-90.bb.dnainternet.fi [82.181.208.90])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: timo.lindfors)
 by meesny.iki.fi (Postfix) with ESMTPSA id 5BEA8205E7
 for <tboot-devel@lists.sourceforge.net>; Sat, 16 May 2020 16:03:30 +0300 (EEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi; s=meesny;
 t=1589634210;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type;
 bh=Yf2uBPkSio83Ef/VaEy5auu3tdeRyaDqdZBCC2VWBiQ=;
 b=jzfboUKPU4+7BeONqRMsVENhPqNMHRX0ULitF6s1ESOaPFSbLfiWhUDHDm4XJ4DmOJAgU6
 cGps5tRyJIG/cGy6iecIOTmmYABaVqqY3f2zL2drE2TDHbXKB17v36tlBOk6rSugBfbgsd
 a6WgR0xvAJ/96Ekd1MKjBXy3AQmU6kU=
Received: from localhost ([127.0.0.1]) by mail.home with esmtp (Exim 4.89)
 (envelope-from <timo.lindfors@iki.fi>) id 1jZwTL-0003A9-JN
 for tboot-devel@lists.sourceforge.net; Sat, 16 May 2020 16:03:23 +0300
Date: Sat, 16 May 2020 16:03:23 +0300 (EEST)
From: Timo Lindfors <timo.lindfors@iki.fi>
To: tboot-devel@lists.sourceforge.net
Message-ID: <alpine.DEB.2.20.2005161559040.12143@mail.home>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi;
 s=meesny; t=1589634210;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type;
 bh=Yf2uBPkSio83Ef/VaEy5auu3tdeRyaDqdZBCC2VWBiQ=;
 b=Qhk9aoKS6xo8y8D7StBoLR8rd+L5wvdqEzC0HWU3ntK5RLaLz7AH5IAzacFdM2ophYl9RB
 Qet92hPQKNWApsiYzh6+NIeBbRVLlekbSYX5Ak8FJzGN6SGyfy8WRdQ/Ayox/JJpBvi25+
 quXcat45pWdnieB7JMlKEbirYVsjubM=
ARC-Seal: i=1; s=meesny; d=iki.fi; t=1589634210; a=rsa-sha256; cv=none;
 b=XM7ajd0EitnLL/q9I6APfGxp9yi2/NPZGZdOkn00AR0IEebEqRPXoQgcC/Bh1JmvLM3Y0i
 8Xy4WIxP5LOP7Va+wKY9JGdpzfW5KPszX+ITpRV8yMto82bZoYdPZSopCKVgKLZCTF9YNj
 SJACv+VOfsVgXVAFxjMaMoLQSog2PlA=
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
X-Headers-End: 1jZwTh-00DDEW-7h
Subject: [tboot-devel] txt-acminfo report incorrect data if msr module is
 not loaded
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

while testing latest tboot with latest debian unstable I noticed that 
txt-acminfo reports "ACM does not match platform" for all ACM modules. It 
seems that this happens since /dev/cpu/0/msr does not exist by default in 
Debian. There is an error "Error: failed to open /dev/cpu/0/msr" but since 
txt-acminfo reports so much information this can easily be missed by a 
user. After I run "modprobe msr" txt-acminfo behaves normally again.

Could we make missing /dev/cpu/0/msr a fatal error that should suggest the 
user to run "modprobe msr"? In any case txt-acminfo should not report 
"ACM does not match platform" for a valid ACM file. It should report 
"Could not determine if ACM matches platform (maybe you need to modprobe 
msr)?" or something.

-Timo



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
