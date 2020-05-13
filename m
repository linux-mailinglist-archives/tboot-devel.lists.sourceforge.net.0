Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A5D251D0AFC
	for <lists+tboot-devel@lfdr.de>; Wed, 13 May 2020 10:41:44 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1jYmxP-000665-2M; Wed, 13 May 2020 08:41:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <timo.lindfors@iki.fi>) id 1jYmxK-00065j-OL
 for tboot-devel@lists.sourceforge.net; Wed, 13 May 2020 08:41:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:References:Message-ID:
 In-Reply-To:Subject:cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kdpP8xIhtHIqBm1oef4MVTb2uP6OAm7yyFkVkupAmGg=; b=iJWYRTdasMg1knaz2YrhOhw3Al
 G/zitIvkQhyowuiYXMnMLcpxr464L1QDRUh749Vqp6joYy5QmPh4ZzYzV/kSSk2ERYrSMTGUbDKIm
 sEQpc4MOvVd1TBhfgsDTcgj8f7ZKLqp83CoKqKAFMEqhHXuED6CMOJTzMW6cAkTJuX8U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:References:Message-ID:In-Reply-To:Subject:cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=kdpP8xIhtHIqBm1oef4MVTb2uP6OAm7yyFkVkupAmGg=; b=Y6sxQ0TgX014Li0/zfa356oJ+V
 +Yd5XyeKvoYEiRlJ7O47APjAkD4qZJVMtOhKd+0xF8EACemI3D9jXqIdUeFHM1cKB9kT78poWdgls
 Xu1q9miMecr10fBrfCQB4sxcrI+n+/P3SuKkuK9N/TRhug8UfkufkxR3bnhp6Aejhuqc=;
Received: from meesny.iki.fi ([195.140.195.201])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jYmxD-00Ci5D-Q5
 for tboot-devel@lists.sourceforge.net; Wed, 13 May 2020 08:41:34 +0000
Received: from mail.home (82-181-208-90.bb.dnainternet.fi [82.181.208.90])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: timo.lindfors)
 by meesny.iki.fi (Postfix) with ESMTPSA id E316D202B7;
 Wed, 13 May 2020 11:41:17 +0300 (EEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi; s=meesny;
 t=1589359277;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=kdpP8xIhtHIqBm1oef4MVTb2uP6OAm7yyFkVkupAmGg=;
 b=YI1yoFiKPxv0K1bEkYxjOmnlFuY/hxEeNsHEXpaYKNjsKUdMuHsJcdm+Fk5jYqrkEMLFuI
 3NOMPeNwTL30AOnY7s8L7KX6QkVg/kX0TfuZcjgW/k9U9uyCcN36FM929jD8hXMuV9ppfy
 4D5dyOtMPUagyffHTJw6/Rww+nmTODE=
Received: from localhost ([127.0.0.1]) by mail.home with esmtp (Exim 4.89)
 (envelope-from <timo.lindfors@iki.fi>)
 id 1jYmwx-0002FL-Az; Wed, 13 May 2020 11:41:11 +0300
Date: Wed, 13 May 2020 11:41:11 +0300 (EEST)
From: Timo Lindfors <timo.lindfors@iki.fi>
To: Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>
In-Reply-To: <8a42ac6ce0379544be8e5ae7e92d88b574209d5f.camel@linux.intel.com>
Message-ID: <alpine.DEB.2.20.2005131139310.8607@mail.home>
References: <alpine.DEB.2.20.2005091814530.4905@mail.home>
 <8a42ac6ce0379544be8e5ae7e92d88b574209d5f.camel@linux.intel.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi;
 s=meesny; t=1589359277;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=kdpP8xIhtHIqBm1oef4MVTb2uP6OAm7yyFkVkupAmGg=;
 b=T72lgV0y6Fzvsj4DEj8UBBqaV3b3b5eBqOvoCUjIUUgAUEqZk6/hDYAT4nJQhKhMDHXgjb
 j4h/8Y5AgmzXGCMy8gCOpj1UJGX/wTYhSeel2OF5G1kchxCDr/Q7sEdEhkTL+Ad+qE5EhN
 /Segxr2DRqDTWQTlqUq9EZl3rZQ0KBE=
ARC-Seal: i=1; s=meesny; d=iki.fi; t=1589359277; a=rsa-sha256; cv=none;
 b=XEITILMekVVGPZ8iTRZT7ssayE23U9uHpr8Qm3SARFx97UdD979Lpuihgimpw1NCsm64tU
 yRtZaL4x2vAV1BQHaIGiU7eyDR78Ctg9gWX7zRe+KBdMoux5tssNNkfdbefq34yPPMKQK/
 MKNQWzWgXr4hRwOjiRoI77YTy+VEvvo=
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
X-Headers-End: 1jYmxD-00Ci5D-Q5
Subject: Re: [tboot-devel] Links to SINIT AC modules are broken
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


On Wed, 13 May 2020, Lukasz Hawrylko wrote:
> That's strange, however I am not managing that page so I can't fix it by
> myself. I have already ask owner for help. Meanwhile, it looks like that
> SINIT files exists, when you scroll down to the "Additional Resources"
> section you can download all the files that are listed above.

Yes, the links at the bottom of the page work but these links in the 
beginning cause users to complain that they can't download SINIT modules.

In the future I might consider packaging also these modules in the 
non-free area of Debian to make it easier for users.

-Timo


_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
