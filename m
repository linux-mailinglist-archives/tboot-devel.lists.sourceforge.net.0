Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 68BB22450E4
	for <lists+tboot-devel@lfdr.de>; Sat, 15 Aug 2020 12:48:24 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1k6tjX-0004D7-N2; Sat, 15 Aug 2020 10:48:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <timo.lindfors@iki.fi>) id 1k6tjW-0004D0-GN
 for tboot-devel@lists.sourceforge.net; Sat, 15 Aug 2020 10:48:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:References:Message-ID:
 In-Reply-To:Subject:cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dSGZ8Fh08vZghE8DTB47TucmrZEeogbKUTFsk8mEFZ4=; b=R8ZjgSyZl1EIg86NFKfdZdNlfn
 stp/VxDI2wdFhk5X55GWwf12jaWeEFgUKw8jXx6uTveAWa/scLi0Yt0DZFGG9HhtisUr10sYjaNVZ
 Pd/FTg6jMvY1iIO5wlg5fY7rkshhYkqWBM46kwZkcPR/UnCnVj5Sq1SXXMYnqptz9/Ac=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:References:Message-ID:In-Reply-To:Subject:cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=dSGZ8Fh08vZghE8DTB47TucmrZEeogbKUTFsk8mEFZ4=; b=XYyuXX9blV91Ly63fOCeZu2Mo8
 DBOeypxqHV0C8ttrnsypZ+8oSrF+x/NziitjDFeR7c0nLKxnzk6EkIn9ho1AGkYALnBYKKGtU1xr7
 aFwB+39dhHQWgphmefm+5DUB9drtKd57snwcQT0kior3ytm0VISvKcGUpgLHUD4WD6PE=;
Received: from lahtoruutu.iki.fi ([185.185.170.37])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1k6tjT-00F5vZ-PF
 for tboot-devel@lists.sourceforge.net; Sat, 15 Aug 2020 10:48:18 +0000
Received: from mail.home (89-27-97-237.bb.dnainternet.fi [89.27.97.237])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: timo.lindfors)
 by lahtoruutu.iki.fi (Postfix) with ESMTPSA id 16C961B0029D;
 Sat, 15 Aug 2020 13:31:55 +0300 (EEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi; s=lahtoruutu; 
 t=1597487515;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=dSGZ8Fh08vZghE8DTB47TucmrZEeogbKUTFsk8mEFZ4=;
 b=M1wnlUmqR1Cyycxfu49AzwT5hijDBDm7CaLcwGlbWzJpCY7aLS19f6jSZiWJ9r2H0wcTTY
 1h7N5RYhcq5aUkN7TH+ww1/1rbqX6fvXGguwtL8oUttYjL1LIRpDtnBoyC5GX2sDP1eStt
 FYZQnQdmL56KCciKCKviB4o+kxQXOvCLqH2txNR7MTHS8dDPDQ7SZfxZ+RiGCaHulWtymO
 BiRqjBdiurTEN6d8ChdjWpmfVAauC04CgskMW7o2iNquLsdXC2YTXDKtDNBApwPl5Y92yK
 Qy1FazpNXt9oA/Lxzha0QXr5jUOyliIKdRQJQ+BfmRbhwrdTQhrNztZK/Hu8oQ==
Received: from localhost ([127.0.0.1]) by mail.home with esmtp (Exim 4.89)
 (envelope-from <timo.lindfors@iki.fi>)
 id 1k6rZb-0004XB-7M; Sat, 15 Aug 2020 11:29:55 +0300
Date: Sat, 15 Aug 2020 11:29:55 +0300 (EEST)
From: Timo Lindfors <timo.lindfors@iki.fi>
To: Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>
In-Reply-To: <134697e3ad70084c54efeddd094b96f261b0d31c.camel@linux.intel.com>
Message-ID: <alpine.DEB.2.20.2008151129290.17414@mail.home>
References: <alpine.DEB.2.20.2006062254580.29748@mail.home>
 <134697e3ad70084c54efeddd094b96f261b0d31c.camel@linux.intel.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi;
 s=lahtoruutu; t=1597487515;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=dSGZ8Fh08vZghE8DTB47TucmrZEeogbKUTFsk8mEFZ4=;
 b=vslnefDm5qhuRyyB5mk9E23mNalJff5auigIzwuwN6sjCsCZXMq79c5f8zfIPUeMFuGgjs
 BvL5HTQk9Wqo4u4cyXhrmOKorhPvCsnky0FjsFcDASwh7rHBJMPWQrnlb3lGpaDK82I92T
 UYsb5waJidwj1q6xlBZ7imz/UbORZmmxWmVjnp8W4/7ZirBMK385mL4HU4I8ioHWjjK0HW
 bYxM58mFDNi58plxvs/bk/io9onphLRRFQ2QNHPiHQYZ/ulQpJvt195kXqK6JBbBBugv6U
 q+RiFc1tXTRIKYetRN5Wjx0FDq7kr+uvHs+u0TYhsGIcl+J7QblsUx7RURvTuA==
ARC-Seal: i=1; s=lahtoruutu; d=iki.fi; t=1597487515; a=rsa-sha256; cv=none;
 b=iCmASREEC9m0Ai1zyX7YEgvLEoxUj12STkvsRVs7KLYrJbUYMXUzBoTQVe0Q2/ZxvMKHmN
 t4nKdo0WXCpWOUwJQUn9aX8G/N0yr6ABKuyGdotDICdoR/k17xAEb9p4Ak+OlgYXU6O4T1
 JrxmaXfDDn4jolIMRNUQ1E68SxwMJdF2TyvGypGVY98gFhcZBKdLtTOmEiUPqKQ4xjYIuT
 a8EwctmfBVW4HBljTJzN8u9DcTqdisPOMEYJnTFz2EpIFHa72zIYFqtU7Vh08sCWeTlTHm
 LjundtUWEq1MJA2bCe4yw3ciglJR83LkQJdQsGkpbPfXEnA2Pqe4lzZ4eqG3Bg==
ARC-Authentication-Results: i=1; ORIGINATING;
 auth=pass smtp.auth=timo.lindfors smtp.mailfrom=timo.lindfors@iki.fi
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [185.185.170.37 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1k6tjT-00F5vZ-PF
Subject: Re: [tboot-devel] extra bytes printed after SHA1 hash?
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
Cc: tboot-devel@lists.sourceforge.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: tboot-devel-bounces@lists.sourceforge.net

Hi,

On Mon, 8 Jun 2020, Lukasz Hawrylko wrote:
> TBOOT is using hardcoded default policy when TPM is not provisioned.
> That policy enforces SHA256 even if TPM1.2 is detected. That leads to
> undesirable behaviour.

Thanks, this seems to work!



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
