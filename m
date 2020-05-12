Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 789321CF19B
	for <lists+tboot-devel@lfdr.de>; Tue, 12 May 2020 11:29:04 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1jYRDh-00078h-E5; Tue, 12 May 2020 09:29:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <timo.lindfors@iki.fi>) id 1jYRDf-00078R-PU
 for tboot-devel@lists.sourceforge.net; Tue, 12 May 2020 09:28:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:References:Message-ID:
 In-Reply-To:Subject:cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6f0jxM4Xsf8HDfaTHxHDQ+1cKYosDoNOr5zTeweDhyI=; b=bjaA29S/17bBTjQp9B0ACvf5UV
 czkM67IHlby4zmbAJsTYKKQjwvqtgNsGD7r11wV59rptf3pMp0RgQyTClKtzjAE0Rgo6VFXPcshfx
 /De8GIKV6GtCQ0NnQ1LU2l5SKwr/QIsZ9fII2+3AOnmqR/vV0ycbGbTyAHTeQxiGzLpc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:References:Message-ID:In-Reply-To:Subject:cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6f0jxM4Xsf8HDfaTHxHDQ+1cKYosDoNOr5zTeweDhyI=; b=mHf4JcDdIOSKZiWIJ07+rBmXbh
 KxSbllJVrHBqUOCetwPlVueXXtx7BEoOjjlE2+/xG0dNtvNkCOzILtD8BQaLEBP1GE06+AbPHCX/o
 Ihd1r/0mGYrZ7Tlxb2duAPATfYcLFKq0ua4y3j55vU6v6b/U2879p1ty2pduXynmPEuo=;
Received: from meesny.iki.fi ([195.140.195.201])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jYRDd-005uuk-Lb
 for tboot-devel@lists.sourceforge.net; Tue, 12 May 2020 09:28:59 +0000
Received: from mail.home (82-181-208-90.bb.dnainternet.fi [82.181.208.90])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: timo.lindfors)
 by meesny.iki.fi (Postfix) with ESMTPSA id E9F092061C;
 Tue, 12 May 2020 12:28:42 +0300 (EEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi; s=meesny;
 t=1589275723;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=6f0jxM4Xsf8HDfaTHxHDQ+1cKYosDoNOr5zTeweDhyI=;
 b=rTI56VZ5IjBKOFh2GqFK3s7zDn27M84y9zT4nG06TcIQdgyf7Tq86E+4ax0fc4E78T/X9k
 PKnrAo5bSi9GVZKjVnXuDhYygCvtBCHL2fTx8JD75vvrh0HyX3op744U67iPpoikujymic
 OyOjPHMYPcSImINtIAoGiKysuMLq/6c=
Received: from localhost ([127.0.0.1]) by mail.home with esmtp (Exim 4.89)
 (envelope-from <timo.lindfors@iki.fi>)
 id 1jYRDI-0001uP-IJ; Tue, 12 May 2020 12:28:36 +0300
Date: Tue, 12 May 2020 12:28:36 +0300 (EEST)
From: Timo Lindfors <timo.lindfors@iki.fi>
To: Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>
In-Reply-To: <f0cdf869d4843d174208cb4a908f5b126538869a.camel@linux.intel.com>
Message-ID: <alpine.DEB.2.20.2005121227410.7218@mail.home>
References: <alpine.DEB.2.20.2005092055070.4905@mail.home>
 <f0cdf869d4843d174208cb4a908f5b126538869a.camel@linux.intel.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi;
 s=meesny; t=1589275723;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=6f0jxM4Xsf8HDfaTHxHDQ+1cKYosDoNOr5zTeweDhyI=;
 b=pzZTgFfMY9eU0s2PHnUfL0xpUV4fwBkqPi8daSxRJSlr5zVXcShCpqpuWaNueCc3WBG3+j
 J/DwIWaCLeeJpI5WkatDMvt5wYEXAl3cTvbTbYVQbW6O/sGDLAyPuWvrSj3XObGwiiZOao
 QhmVwsVDeYnRrBf68aDyB7HMEIrtGhI=
ARC-Seal: i=1; s=meesny; d=iki.fi; t=1589275723; a=rsa-sha256; cv=none;
 b=fuGC+vGtJ0F1hwULIhnP9LUVCeipO0t6r1Ic8ooEXCr0dW/ugDCf9wdN1yTL/blsXevpcf
 Lgxa8tiMTXkDsNDIZU3MQOUTvL48psDaEO8QxAUWv1S+rLIzS1FI7mFJZ/EK9PDdYKQ3ZQ
 6TeUjGCLelDoEqTuEMyxVGGkXi3D314=
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
X-Headers-End: 1jYRDd-005uuk-Lb
Subject: Re: [tboot-devel] PATCH: fix/spelling-fixes-1
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

On Mon, 11 May 2020, Lukasz Hawrylko wrote:
> Thank you for patches, I will look at them this week. Next time, please
> use 'hg email' if this is not a problem for you, it is easier to
> maintain where all patches go through mailing list directly.

Ok, good to know.  I'll setup some SMTP stuff to make hg email work, 
shouldn't be that difficult.

-Timo



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
