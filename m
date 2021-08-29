Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F5243FACE9
	for <lists+tboot-devel@lfdr.de>; Sun, 29 Aug 2021 17:54:32 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1mKN8Y-0003qg-4Z; Sun, 29 Aug 2021 15:54:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <timo.lindfors@iki.fi>) id 1mKN8R-0003qU-CK
 for tboot-devel@lists.sourceforge.net; Sun, 29 Aug 2021 15:54:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:References:Message-ID:
 In-Reply-To:Subject:cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vg1KTsuLaE5G605Cs4eKTtg5LMABW0bLCLRJSFBkyt4=; b=lzc6umyi21B5YOmCZV0ZzGgLrM
 oK2QE0IjisQ34wQgXo+Ks9UUn1wp69aDhfPn28hpiJ0TO/gJLOqGmlJF5SMmw+bX2RPgJDKWo7l3c
 /0y3FfORTKtcSRcdlA3mA7rdaEwqDyEy4Ge8Vt+QEjVGFiUdh9G3V9y+oWWnvlxnT4pI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:References:Message-ID:In-Reply-To:Subject:cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vg1KTsuLaE5G605Cs4eKTtg5LMABW0bLCLRJSFBkyt4=; b=HxTcdx0NVOylBZsBA+3kdza9G2
 S+k44N0MC7c0GeyXUnkwaZqEJ7y9bbC+9OrHNIdCefoC5eUDIkNIs1ugit4QmkrolrCvEANrZ0/n1
 mz6+baJa4J4duxapXxI5J60QZniBRMReFaBziHw0ksvlzCXTOOibMN+rKFSFtH+Q3j8k=;
Received: from meesny.iki.fi ([195.140.195.201])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mKN8M-006sII-9v
 for tboot-devel@lists.sourceforge.net; Sun, 29 Aug 2021 15:54:15 +0000
Received: from mail.home (89-27-97-237.bb.dnainternet.fi [89.27.97.237])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: timo.lindfors)
 by meesny.iki.fi (Postfix) with ESMTPSA id 45FBA203AD;
 Sun, 29 Aug 2021 18:53:55 +0300 (EEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi; s=meesny;
 t=1630252435;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=vg1KTsuLaE5G605Cs4eKTtg5LMABW0bLCLRJSFBkyt4=;
 b=R+rjWbKeiQAEeQRSRzEbNlXKosSVBhXaY9NR25tzKn4AKT7zHcfGGtC4iroAEPo+lCNSUC
 4nzxnMphrgFCWcjwVA5VrohVkr2XwBjoaeecwPVFXTzX8ADqj6xw+hRSFvDx1xItOuddyl
 Csv+uzaWmHaI1+KgDTWwZY5Nny8zuC8=
Received: from localhost ([127.0.0.1]) by mail.home with esmtp (Exim 4.89)
 (envelope-from <timo.lindfors@iki.fi>)
 id 1mKLDD-0002j0-0A; Sun, 29 Aug 2021 16:51:03 +0300
Date: Sun, 29 Aug 2021 16:51:03 +0300 (EEST)
From: Timo Lindfors <timo.lindfors@iki.fi>
To: Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>
In-Reply-To: <8a9a312d2144f1a86213388c38bdd52fd3b4384c.camel@linux.intel.com>
Message-ID: <alpine.DEB.2.20.2108291649300.10451@mail.home>
References: <alpine.DEB.2.20.2108251137290.6587@mail.home>
 <8a9a312d2144f1a86213388c38bdd52fd3b4384c.camel@linux.intel.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
ARC-Seal: i=1; s=meesny; d=iki.fi; t=1630252435; a=rsa-sha256; cv=none;
 b=fv/14YUXCuhsmfrE5OOKj78BZLk+tNjUvZmZolahb7AnNEZScyzSvigofaLA/O51e91S3d
 by9X5ftxSIThj/pLSZ4eSBhxl4oE0tN7UwgwRbfuMGCtEdT3atS2Fvp2uoMmg4uTgSEdLG
 eTIWwcffSzIMVELVHMrShL7zBH630SY=
ARC-Authentication-Results: i=1; ORIGINATING;
 auth=pass smtp.auth=timo.lindfors smtp.mailfrom=timo.lindfors@iki.fi
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi;
 s=meesny; t=1630252435;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=vg1KTsuLaE5G605Cs4eKTtg5LMABW0bLCLRJSFBkyt4=;
 b=jFoC1wpSyR6yQPYpPoihNkEoqJOVqrzuHjnwVcxj6aBZc/XTpyPVTi3f0Mw9cJSOgbF1On
 dPbAi7tGVuRBKC2BB9677bLJLH7NhYeDK2c7WQUGBxwQ+5ggExAgu8e0eh+7MB1phvvS/n
 blCsSfDFMgBvOzlnTMZsvRf1igEUeKY=
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, 26 Aug 2021, Lukasz Hawrylko wrote: > May I ask you
 to prepare the patch? I'll look into this. Ideally it would be nice to get
 rid of including C files from other C files completely. -Timo 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1mKN8M-006sII-9v
Subject: Re: [tboot-devel] txt-acminfo segfaults
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


On Thu, 26 Aug 2021, Lukasz Hawrylko wrote:
> May I ask you to prepare the patch?

I'll look into this. Ideally it would be nice to get rid of including C 
files from other C files completely.

-Timo



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
