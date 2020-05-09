Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A78511CC25E
	for <lists+tboot-devel@lfdr.de>; Sat,  9 May 2020 17:22:56 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1jXRJS-0004xI-Mv; Sat, 09 May 2020 15:22:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <timo.lindfors@iki.fi>) id 1jXRJI-0004wb-GA
 for tboot-devel@lists.sourceforge.net; Sat, 09 May 2020 15:22:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mMiuFKgjSdA/O3io2BtkShug+riHWjjxQUecSA/rZfQ=; b=m+ZRaKLxIIeXwvrKnB0qYQM2Mj
 mvgIDmiJ2NogSZndXNnLVGZNDijesUeQ0FkNlw2cGtK/m59fXxuPaNDJ/ql+eB/wDAADv5VNdATSB
 v76UcQyJJmL1kl1hOEPX9Ex0xe1cT3KYWq6g+EDWefjb01J4D1C6gs3cgd3DonwSOL2s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:To:From:Date:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=mMiuFKgjSdA/O3io2BtkShug+riHWjjxQUecSA/rZfQ=; b=M
 b7GMT2bZ+jxSTw98I7Qf5OzyzOjU4NH/qI4QuZSk33JpIB1LS9S9UtRDtVF6oMigm76nbOYPFvT+j
 pDK5cUyuhdbPYrsgoglXK0YjIoIUKWuW6TscNnios4QNKjV+V+XEagSNZtLFB/k5RECCc0Ujt5Tny
 sCPhFH5DDd7Jwwxg=;
Received: from lahtoruutu.iki.fi ([212.16.98.55])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jXRJA-00FdRL-Jv
 for tboot-devel@lists.sourceforge.net; Sat, 09 May 2020 15:22:35 +0000
Received: from mail.home (82-181-208-90.bb.dnainternet.fi [82.181.208.90])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: timo.lindfors)
 by lahtoruutu.iki.fi (Postfix) with ESMTPSA id 68B5F1B00369
 for <tboot-devel@lists.sourceforge.net>; Sat,  9 May 2020 18:22:23 +0300 (EEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi; s=lahtoruutu; 
 t=1589037743;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type;
 bh=mMiuFKgjSdA/O3io2BtkShug+riHWjjxQUecSA/rZfQ=;
 b=okME0zGzgNqoTIuqd5P4Strfj9O0vU9u2Tg7ydwqr3s8+p4IoYn4e8k+gtRhLneRLWYrtV
 DzvlsHjxcdiIFqCInVISMHVXbvLo14gRd04tfb91IZd1iMPFeuxLiwy4fS/kGva+7Tz7MO
 KrtIt2m8ipMNWUB4Db+FIfxucrkedvgsnbHXwzf1mRggrq4ESShQzGo5gvDl3RhTedcvqM
 bhjPHxpq13KVm91P83xULgvuNnb1KX+fLMFmEXka/5FunksfkrJiCnW30dExR0/trydHsM
 2+q0ojUbyrs7uhqDHV3c+jaEo0ywItcdQEkGdWvzfPjEEUv8F5tRIoEawvBXQw==
Received: from localhost ([127.0.0.1]) by mail.home with esmtp (Exim 4.89)
 (envelope-from <timo.lindfors@iki.fi>) id 1jXRIv-0001HU-3w
 for tboot-devel@lists.sourceforge.net; Sat, 09 May 2020 18:22:17 +0300
Date: Sat, 9 May 2020 18:22:17 +0300 (EEST)
From: Timo Lindfors <timo.lindfors@iki.fi>
To: tboot-devel@lists.sourceforge.net
Message-ID: <alpine.DEB.2.20.2005091814530.4905@mail.home>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi;
 s=lahtoruutu; t=1589037743;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type;
 bh=mMiuFKgjSdA/O3io2BtkShug+riHWjjxQUecSA/rZfQ=;
 b=fGmLuPVwIasprXUVGgpGpYpYprGqzBdAaK5rfWQc8xzYw/GDKkNOb/3d63HFPoMvy40DUm
 CjcFRkcbwSfrL24yKuss8k/f/PWzOCnheN4ixH5sAaaTcYiNgMkYw69yJRd0DBqXQkswnN
 rJmrjPm5xIfKJ+m1zl2JR6gH4cTdSjKSl4wr+PbadZpZcqqVYiHnXGCKfLLdyfLRKuqOr8
 izbeepr2dqtZKjDGXylryD9VD9bMcUD0S8N8QRJ7w45/WZUzPJqHCNzbOu/YoNwCc5Wx/P
 sEwrGS75Lw94ZbK0WQXMKLbYwtlFbT+s/AxthhW1t0grOIU3CbgRtWu5fdW0Nw==
ARC-Seal: i=1; s=lahtoruutu; d=iki.fi; t=1589037743; a=rsa-sha256; cv=none;
 b=KG5ch/EmJLFij7deFJ06NAtP99oC7PAK2dW/3zD06mo06TE2h/l0tlcuon28FaTCxD8i3q
 wFlsVADEUjUElHeID/sr9kQG4DH1OTK9BuJJfYXy9kZQJHWX9hXgA6fQFGht5bki+i3ogv
 jhWdd6r1kohPfSZajyT93TBrFhIXpGeng8YzFKMmcqK7TwWnntfGX3Td0jye+kb+D/ZEC4
 ZxUsd7F3Xdno6v7Y5C9TR8Uaa52n5DMBnj7NvYJLdQQhIZMZl4BfgQa55bpoCZVwmSVtc9
 mQO344AB5vHadffgJMAzN3hzlp6KPIQjtMy1ablBm7nM//P9JTsaSIC4OrRW0g==
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
X-Headers-End: 1jXRJA-00FdRL-Jv
Subject: [tboot-devel] Links to SINIT AC modules are broken
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

at the moment it seems that the links on

https://software.intel.com/content/www/us/en/develop/articles/intel-trusted-execution-technology.html

under the table "SINIT AC Modules" are all broken and redirect to just

https://www.intel.com/content/www/us/en/404.html



-Timo



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
