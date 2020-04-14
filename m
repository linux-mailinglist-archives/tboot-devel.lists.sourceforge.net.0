Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AEE081A7544
	for <lists+tboot-devel@lfdr.de>; Tue, 14 Apr 2020 09:57:19 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1jOGRV-0001YM-60; Tue, 14 Apr 2020 07:57:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <timo.lindfors@iki.fi>) id 1jOGRU-0001YD-Ax
 for tboot-devel@lists.sourceforge.net; Tue, 14 Apr 2020 07:57:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:References:Message-ID:
 In-Reply-To:Subject:To:From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Fqxwi2vhhdpt/9Q7mVvZXJy4cTZ26TA9Gu7IMOXhZ3w=; b=EKZz34qPEYxPTcqo8Ew4cTN68W
 th1WLa9Whl1RxoxfhRd/2JNUAEq5D5b4NNgJqBOftEr/OOWE8SaRuX6ZsXRDfAkWdDSDYxn35Ul5w
 Jdh2/O6KX0ejtxPb/BdlBSk/ywFiUg4fGTbcvynpvAZUiC2f/tgJuAWK7xJZhEG03ptk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:References:Message-ID:In-Reply-To:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Fqxwi2vhhdpt/9Q7mVvZXJy4cTZ26TA9Gu7IMOXhZ3w=; b=QGxB2OMmXxX2+xH5qomMYlmnOK
 DZc+dW+n7Q+YVv+D/AsZxvMrHlnuaLpD2g7ctrpeOIy2VlYPKE63KJ2qeDQYAJT+K3+g/+ZehMQxw
 2ap+OFxbxDStfAnpfE/sszMS4HfPkVqpZOyVl602zQMxPrTVBgVr3KeqvkJcoNUZBKiE=;
Received: from lahtoruutu.iki.fi ([212.16.98.55])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jOGRO-00FWEr-EB
 for tboot-devel@lists.sourceforge.net; Tue, 14 Apr 2020 07:57:12 +0000
Received: from mail.home (82-181-208-90.bb.dnainternet.fi [82.181.208.90])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: timo.lindfors)
 by lahtoruutu.iki.fi (Postfix) with ESMTPSA id 4D8131B00436
 for <tboot-devel@lists.sourceforge.net>; Tue, 14 Apr 2020 10:40:42 +0300 (EEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi; s=lahtoruutu; 
 t=1586850042;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Fqxwi2vhhdpt/9Q7mVvZXJy4cTZ26TA9Gu7IMOXhZ3w=;
 b=OXFZlEh0AAQVdl0eMMxQZqYveqRcdV5XHFf+rlArsP3CzpIbA60Kc2faXn6EVPOk0GINqI
 +k8y4JIfTE5IsZosrTguiK2BKARO4yMCwyDWNfjo0NOnxCJowhn1JmAMzhYLZ2gtlXZu5u
 xCawWdmLrDbXrGBKib94nXmI/dD3EpdYDW8vyotVNtHdeOGXFYNlaVLpI18W8qymFL0HoY
 m2NoL1ArJ/SNFJwSYN2HDz+nXHhKgfXZpxhZzDO6alZOJywEokT+dDcLmefBTNmNnq9RJo
 u7PxLGUCO2mGKydU7ZVlEfqp5xGrpXQz9/W4slH+I9ZrEt2rqXZJXNbgHl+MWg==
Received: from localhost ([127.0.0.1]) by mail.home with esmtp (Exim 4.89)
 (envelope-from <timo.lindfors@iki.fi>) id 1jOGBR-0002rh-JT
 for tboot-devel@lists.sourceforge.net; Tue, 14 Apr 2020 10:40:37 +0300
Date: Tue, 14 Apr 2020 10:40:37 +0300 (EEST)
From: Timo Lindfors <timo.lindfors@iki.fi>
To: tboot-devel@lists.sourceforge.net
In-Reply-To: <89eb86fd43cd9cadd48db77433959d708d060e74.camel@linux.intel.com>
Message-ID: <alpine.DEB.2.20.2004141036360.11002@mail.home>
References: <alpine.DEB.2.20.2003312317470.19721@mail.home>
 <dc275925ce5f44633594ec3fd6732b13f3abeb4c.camel@linux.intel.com>
 <alpine.DEB.2.20.2004021722080.21308@mail.home>
 <d5d36808a38af260d0e8390aaaf5dc6724cf787f.camel@linux.intel.com> 
 <alpine.DEB.2.20.2004081710220.25471@mail.home>
 <c5561325a53303ad556dadf49ba7269295ac30fc.camel@linux.intel.com>
 <alpine.DEB.2.20.2004081831250.25596@mail.home>
 <89eb86fd43cd9cadd48db77433959d708d060e74.camel@linux.intel.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi;
 s=lahtoruutu; t=1586850042;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Fqxwi2vhhdpt/9Q7mVvZXJy4cTZ26TA9Gu7IMOXhZ3w=;
 b=kJJRH90VPW3BEO+qmW4Ga5AKTub/JRZ0zvOkwAJ63z/EOozkkQs0dn6TstRYUcObm0JKOW
 RUEamX/vRosW/DDz1jGVxWYztADEHUmbm17dEjIGFknW8CfWIIVHSRZTv0jgKcLg3BBBJZ
 pDaLHLyR4NyZLoaL2Xe+zfL5a31BKiTZN0WlRBXKl5rKllU7qEtA5+AFYXpv8FiOhjCz9i
 6liN0FAk2MAuGuMv7LaL+LPc12LmXWuoqwPdFdP3DQJU21kz0UlSvZfmAPN7ttQUxpXIR/
 j3ySk7EbYHCiT3s2bDc5hKTYGt86CXeyLL5bHLrfjQaY2dMEso9ZDQ1ov27q/w==
ARC-Seal: i=1; s=lahtoruutu; d=iki.fi; t=1586850042; a=rsa-sha256; cv=none;
 b=qVcgoa45HAZ2FKif9Q7cqPVZUyLtgACUzjoBkHkcxPHYWaEWrXEtwf1ssX/1kU4CjxJcQi
 HiLx4paF18BU/xJRLyer9ic/tM34Gg+eIfVuNGToNU9BRU3/HF2y0fJJjgwPhJxUlK+zxD
 77HpHnX/y9PPKoXp130f6QOg8suMXDd1dc3QzrGbM3mXJ2/4+SaZRQigZZQ0Nn3NtNjNYo
 CSYXYootih/CLabyOwi2YiKIZVrRdVGubVRqKiA6cTIv8jiTFIIeoZJG2iTRK2zDs8FMss
 L4CRb+xyjgx3SvLa5FLxIWRMcmYZQltLkCjcgY7OrOnA48PpmRFng4Q1+CQ0+g==
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
X-Headers-End: 1jOGRO-00FWEr-EB
Subject: Re: [tboot-devel] tboot not picking the right ACM module on Dell
 Latitude E5470
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

On Tue, 14 Apr 2020, Lukasz Hawrylko wrote:
> As KBL SINIT works with both SKL and KBL platforms, the old one,
> compatible only with SKL, is not longer supported and may not work with
> newer versions of SKL bioses. Recommendation is to use the KBL SINIT for
> both KBL and SKL systems.
>
> To avoid possible confusion in the future, old, not longer supported
> SINIT, will be removed from download site. After that, there will be
> only one binary available - 6th_7th_gen_i5_i7-SINIT_74 (that works with
> both SKL and KBL platforms). Please do not use 6th_gen_i5_i7_SINIT_71.

Great to hear that you found the root cause! Would it be possible to 
publish a simple tool that can pick the right ACM module for a given CPU 
automatically? So that I could use that tool to generate my grub.cfg this 
would greatly improve usability of the whole solution. I can of course try 
to extract that logic from tboot but maybe such a tool already exists?

-Timo


_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
