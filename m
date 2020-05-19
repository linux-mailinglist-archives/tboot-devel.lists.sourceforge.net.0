Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 76BF11D9C2D
	for <lists+tboot-devel@lfdr.de>; Tue, 19 May 2020 18:14:48 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1jb4t9-00083i-3o; Tue, 19 May 2020 16:14:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <timo.lindfors@iki.fi>) id 1jb4sz-00082I-NF
 for tboot-devel@lists.sourceforge.net; Tue, 19 May 2020 16:14:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:References:Message-ID:
 In-Reply-To:Subject:cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Pu/W430DQki9obzV8T329lmKz+IXMMczyis9pgg5qNo=; b=E4K2kAljp+PbbZwMocdZcaKC9m
 GwGeG0ji1ur+uA1J8GqRBW3POfTHMXWpWOB24maaULP5uA2zWTwuIluCeSjk2j1vUDiYvHTAOuSnJ
 WM8G0/FHQwOxs401KEX5Lq3Ng7XdLno+uI4JDnH4FfVlBF4PK+wSkM4wdn4eKm4ruetw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:References:Message-ID:In-Reply-To:Subject:cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Pu/W430DQki9obzV8T329lmKz+IXMMczyis9pgg5qNo=; b=ZXEOpSbD8N/uqyGifbKtS8pFZ3
 XF/tjln4Z7fhcVp4bgO+c38rJ5hCgISz4WuR98KeoQnjGHlQaZQF6oHRVGvu5q8frnmA2koKzy/t2
 icHiKiVm0v0iCe6Ud5xDo7rTkTAKef/eJTd18IE5JeQtwCTLOfLyCQMYJ40/dTNbjwJY=;
Received: from meesny.iki.fi ([195.140.195.201])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jb4sw-007aXF-1C
 for tboot-devel@lists.sourceforge.net; Tue, 19 May 2020 16:14:33 +0000
Received: from mail.home (89-27-97-237.bb.dnainternet.fi [89.27.97.237])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: timo.lindfors)
 by meesny.iki.fi (Postfix) with ESMTPSA id EF746202C7;
 Tue, 19 May 2020 19:14:12 +0300 (EEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi; s=meesny;
 t=1589904853;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Pu/W430DQki9obzV8T329lmKz+IXMMczyis9pgg5qNo=;
 b=SdxN6v5l5mkhzpmcnE8gfTsLXabYJoYbvAqGzgh7HG6kwiJEb8oi94VfiM4tbk4huJRhH3
 0ZzV+XXrdCT2pEkSz5mTdMLaz4EV5J1aXrhf3Sz3WRya+Bj+xKiCIaBRLhhH+Ps6vRynEw
 gu2c+ZBEJRvJkkl9N6rPrPRYBhXCq8A=
Received: from localhost ([127.0.0.1]) by mail.home with esmtp (Exim 4.89)
 (envelope-from <timo.lindfors@iki.fi>)
 id 1jb4sX-0003rv-UJ; Tue, 19 May 2020 19:14:05 +0300
Date: Tue, 19 May 2020 19:14:05 +0300 (EEST)
From: Timo Lindfors <timo.lindfors@iki.fi>
To: Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>
In-Reply-To: <5a16744eca4b4bd56a795ba37e41726f0f16c090.camel@linux.intel.com>
Message-ID: <alpine.DEB.2.20.2005191907580.14855@mail.home>
References: <alpine.DEB.2.20.2005102344150.5921@mail.home>
 <109c0b38a6b6d82452ff4acc4ef8b10a6fd2b3eb.camel@linux.intel.com>
 <alpine.DEB.2.20.2005141640030.9904@mail.home>
 <3d421472c4d7f92bddd40b715025283e8178d3bb.camel@linux.intel.com> 
 <alpine.DEB.2.20.2005151805340.11206@mail.home>
 <5a16744eca4b4bd56a795ba37e41726f0f16c090.camel@linux.intel.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi;
 s=meesny; t=1589904853;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Pu/W430DQki9obzV8T329lmKz+IXMMczyis9pgg5qNo=;
 b=uMUvoHja6gKTjuh/j22MlHbfdr29mU+ie9yoyUFOgEj1Ly4q86sU4wZ1HPS+HEA8AyVhXS
 NfxLevrE8/tFc7yme+xQ/3JCR2xsHLvNXnjdGaK7FZilmPoTyuVjt3CvbPVt6z01JsF4u9
 WapvEmsQIiFLLHuoGX9aB9rBp3L0Y4U=
ARC-Seal: i=1; s=meesny; d=iki.fi; t=1589904853; a=rsa-sha256; cv=none;
 b=gLwWH/l0NvRwkU83nbmHuH4++vMkdPey3fP0yzuvy+Y0UAOTV38JnYte4BCHWSPv0Jfpch
 893l/uYgN63C2OVNvpnXXmi7bKnUgeLL6cFC2WYatBtb139u5rOT/AsPOJknsbmUkwNm00
 pKsVZkW8HV6n0LsLcRKVZjwQY0f+UiE=
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
X-Headers-End: 1jb4sw-007aXF-1C
Subject: Re: [tboot-devel] rename parse_err?
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

On Mon, 18 May 2020, Lukasz Hawrylko wrote:
> 1.9.12 was released recently, so I don't have right now plans for new
> release timeline. There are few more changes that I am working on right
> now and I want to include them in next release.

Ok, I can upload a mercurial snapshot as well, no problem.

> As you are using trousers I guess that you have TPM 1.2 am I right? It
> is EOL now that's why nobody cares about trousers project, is it
> possible in your platform to use TPM 2.0? I highly recommend to upgrade,
> than you can use tpm2-tools.

Yes, there are quite a lot of existing TPM 1.2 systems. Some support 
upgrading to TPM 2.0 but many don't. I've been doing my testing mostly on 
Lenovo T430s laptop. I'd like to use a newer laptop for this but the ones 
that I have available don't support TXT (checked T460, T470 and T490).

The situation is bit better with servers but due to this COVID-19 
situation I cannot really do any of my testing on servers. Remotely 
upgrading to TPM 2.0 sounds very scary.

-Timo





_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
