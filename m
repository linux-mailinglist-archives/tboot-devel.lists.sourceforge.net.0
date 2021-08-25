Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C1D043F711F
	for <lists+tboot-devel@lfdr.de>; Wed, 25 Aug 2021 10:31:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1mIoJk-00080q-C0; Wed, 25 Aug 2021 08:31:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <timo.lindfors@iki.fi>) id 1mIoJi-0007zt-Ug
 for tboot-devel@lists.sourceforge.net; Wed, 25 Aug 2021 08:31:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:References:Message-ID:
 In-Reply-To:Subject:cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vZEAA0N7k9XfZS8/hVbuogN50vsFHtPPKqwYdlOucYI=; b=bQw37FLOlj6lPx0+CnRuaktvhU
 aV8/QqYlw01DUcctI6cN3jac764ZO5Q9DMc+IYoXkmyAoyeGIHd1GHXCfTXTPeNcgjdp2ISseUCyk
 EhT2HYpI4FamXIeuDtJIo16bsYed+MwfXXLW+mH/QDFflHk73QYrFsKJhgDkb/UG8GXA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:References:Message-ID:In-Reply-To:Subject:cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vZEAA0N7k9XfZS8/hVbuogN50vsFHtPPKqwYdlOucYI=; b=aaL2y+N/MWJeOAGVP31hat4mxl
 oeJ7me1g4UzIE3eQcO5OPoj4HfvyeMZQjskmexk1YvhhIWLpqKIJs7GzzGKRUr5pQbgLx942lUmmA
 TVRAW8U6vWJ72ohsmGW/hGPv6/uDOF0fDGrpNjrKp5DtIkNs2lgV3YDzt1XokUvXp6V8=;
Received: from lahtoruutu.iki.fi ([185.185.170.37])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mIoJe-0006KJ-1j
 for tboot-devel@lists.sourceforge.net; Wed, 25 Aug 2021 08:31:26 +0000
Received: from mail.home (89-27-97-237.bb.dnainternet.fi [89.27.97.237])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: timo.lindfors)
 by lahtoruutu.iki.fi (Postfix) with ESMTPSA id AA93E1B0002E;
 Wed, 25 Aug 2021 11:31:12 +0300 (EEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi; s=lahtoruutu; 
 t=1629880272;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=vZEAA0N7k9XfZS8/hVbuogN50vsFHtPPKqwYdlOucYI=;
 b=u7OzsGHKkKukwwJMBSc1uy4icXzJwElGKBRprDj1V6QGDyt4UpV5glMr88QwjDqda779OI
 8UwknDyFdmf8bhBnsf4/rACjhoWS8oadkZuDr0zF5YVJy8NSI3kYJQcGbF1tYtUMJEBw25
 yO83xfiSaF6yF3/DkIEDxhJq79dYUOVBGSxLAYAg7HlB0ZNWAqsT0DA089VBUr9AhbBtEh
 ZKuMkSUUCTcTj3s0LNWr5VmvsfBx+ai1XqkbQGsg9x9g8XMKu8FX+eEJG/Pej8Yc2cR6QN
 p/1PIwZksfilmo4b+bvxlCmJ82XJj3nU70SknI1Jw2T6pWmTTMwO8qc3mV2jOQ==
Received: from localhost ([127.0.0.1]) by mail.home with esmtp (Exim 4.89)
 (envelope-from <timo.lindfors@iki.fi>)
 id 1mImOb-0001iZ-Pi; Wed, 25 Aug 2021 09:28:21 +0300
Date: Wed, 25 Aug 2021 09:28:21 +0300 (EEST)
From: Timo Lindfors <timo.lindfors@iki.fi>
To: Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>
In-Reply-To: <c5f5db2090df4270a7fb74724260b0b767ad86d7.camel@linux.intel.com>
Message-ID: <alpine.DEB.2.20.2108250923160.6587@mail.home>
References: <alpine.DEB.2.20.2003312317470.19721@mail.home>
 <dc275925ce5f44633594ec3fd6732b13f3abeb4c.camel@linux.intel.com>
 <alpine.DEB.2.20.2004021722080.21308@mail.home>
 <d5d36808a38af260d0e8390aaaf5dc6724cf787f.camel@linux.intel.com> 
 <alpine.DEB.2.20.2108241211001.5917@mail.home>
 <c5f5db2090df4270a7fb74724260b0b767ad86d7.camel@linux.intel.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
ARC-Seal: i=1; s=lahtoruutu; d=iki.fi; t=1629880272; a=rsa-sha256; cv=none;
 b=AjRSqYk8yMR7NJx3cPH0+Pxs2Xyx6MsSmI739IV8462mQb4BWZauTLbXg1cEbKm76rwpdf
 Zi3lYtY7/Parz/gGQnyIkuY+kNqXeSf2jKNLXmbId03WhfFAz/3z4KBdazXrhrgCkktx21
 W74M1My2UC2PZmQAaXFfP9wK4jexLBCnC4fC5RLB5y0BAZlqe1RFgKkBZ3aBt7MjpRvKUK
 207m8l2qj/ZkIAX+JzEPH2odYWnwOFQyMmiuj9ghoHLRzaJ/2g0IAlhwCJsgGAOgzvRkIm
 bTWm4vTCSuAnDVEWl/HKcFGUPn3UVLl4YDuu4A6dt3AeIXok2daSRnQSTKYfLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi;
 s=lahtoruutu; t=1629880272;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=vZEAA0N7k9XfZS8/hVbuogN50vsFHtPPKqwYdlOucYI=;
 b=Fs479t0syaV7pqb1ZveBF3vvumrKRz2z4zlfOKPs44JY73hWubMbi3fGZW1okhWA1NU73h
 yHQurjCJ5fzacNB8ILvmD2jtp+BJz+SvgPTiRGCrIi1UZtVNzbeKMXBIbX1bOrHvG3VLYf
 zZYKFRbi+4wm2gtFIoT63yvwoTIfGolk1pSSjJJJREf19siViWKI0vYePkzm9nemAEDPCF
 cFp3B6iFUjzDpxXFgqxQhqTXoVCrCHy7fc9ST+lhH6DbfIByFBmNDOLc2U6iS8KHOiUM4x
 v8R+fXR5/cbKxaFRygaOccqksK9lrjvf1iLeUvrZY1f9zsuwabkIASa6iA9vpQ==
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
X-Headers-End: 1mIoJe-0006KJ-1j
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
Cc: tboot-devel@lists.sourceforge.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: tboot-devel-bounces@lists.sourceforge.net


On Tue, 24 Aug 2021, Lukasz Hawrylko wrote:
> Patch with fix is already prepared, I am waiting for GRUB team to merge
> new multiboot2 module tag to publish it.
>
> In meantime, if you have a system when you are able to reproduce this
> issue, may I ask you to test the fix?

Sure. I applied these to the Debian packages

grub2 2.04-20
tboot 1.10.2+dfsg.0-1

and can now boot the system with multiple ACM modules in /boot. Is there 
something else I should test as well?

-Timo



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
