Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A83A1E7989
	for <lists+tboot-devel@lfdr.de>; Fri, 29 May 2020 11:36:59 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1jebRa-0006Ks-Te; Fri, 29 May 2020 09:36:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <timo.lindfors@iki.fi>) id 1jebRW-0006Jf-5C
 for tboot-devel@lists.sourceforge.net; Fri, 29 May 2020 09:36:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:References:Message-ID:
 In-Reply-To:Subject:To:From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=H2zd57Qmk4pxcZWanCvASGDUOFzv3tcExVikD+rajoQ=; b=gHDwoT6fJ99BB+gY8GdOP4Nex5
 M1La8wqYQWtCWInlzL6rZZtTIKloiVAUwsAKawIyi8nW3qCBFDZk9t5ODUA5oAaWWDRhyaYunBxAZ
 R42CwHC2suu2oei94yVqdLqT2BzulK3m/EWHN6Ik2m5O+Qfc2wRLYPRfiDITS0uQjcDM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:References:Message-ID:In-Reply-To:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=H2zd57Qmk4pxcZWanCvASGDUOFzv3tcExVikD+rajoQ=; b=WhHZVH7YPEgCRW9q66tapD8QhV
 BkSExOgu89NypSavfi/fR8HPDCL+gdA5A7seN1T6eVJrtX4aHlq1F+r1v9OkhCEC9qXmzJf7cgbOi
 R16PHBYHCy2K4pRx2G6CDaykYnQ7CJS1nBQRGjH09bEek5LborMI7oYaVvboOUMm2uk0=;
Received: from meesny.iki.fi ([195.140.195.201])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jebRP-00H7dw-9O
 for tboot-devel@lists.sourceforge.net; Fri, 29 May 2020 09:36:43 +0000
Received: from mail.home (89-27-97-237.bb.dnainternet.fi [89.27.97.237])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: timo.lindfors)
 by meesny.iki.fi (Postfix) with ESMTPSA id F05352003C
 for <tboot-devel@lists.sourceforge.net>; Fri, 29 May 2020 12:36:26 +0300 (EEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi; s=meesny;
 t=1590744987;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=H2zd57Qmk4pxcZWanCvASGDUOFzv3tcExVikD+rajoQ=;
 b=wNaIaaf1dN8ILedxiluVoDLVd09j6KqnrWCVaxtucGMp8edn9J9Gv9EsLnzWu2q3gL00R4
 djGO0obNtYlDYW8sCuwJpQN6kK5vWS0g7V5hGqm42lIk9SsIQmfDvRJ6tu/yZPgPID7sG6
 SBMwvVotFjZrV/dU3P/vSNKkAkyYS1Q=
Received: from localhost ([127.0.0.1]) by mail.home with esmtp (Exim 4.89)
 (envelope-from <timo.lindfors@iki.fi>) id 1jebR5-0005uE-9I
 for tboot-devel@lists.sourceforge.net; Fri, 29 May 2020 12:36:19 +0300
Date: Fri, 29 May 2020 12:36:19 +0300 (EEST)
From: Timo Lindfors <timo.lindfors@iki.fi>
To: tboot-devel@lists.sourceforge.net
In-Reply-To: <alpine.DEB.2.20.2005282120080.22086@mail.home>
Message-ID: <alpine.DEB.2.20.2005291234440.22603@mail.home>
References: <alpine.DEB.2.20.2005081919250.3828@mail.home>
 <3da41313c3b91f154f53f9c2c9645ade6399cff9.camel@linux.intel.com>
 <alpine.DEB.2.20.2005121234280.7218@mail.home>
 <alpine.DEB.2.20.2005231924220.17882@mail.home>
 <alpine.DEB.2.20.2005241914180.17882@mail.home>
 <2b9029d61fed0ca5f4d60a14a90fb01c98f6f007.camel@linux.intel.com>
 <alpine.DEB.2.20.2005251307150.19253@mail.home>
 <alpine.DEB.2.20.2005280214320.21222@mail.home>
 <952021e68c90965520a2b1a1cf11245ab49dd31b.camel@linux.intel.com>
 <alpine.DEB.2.20.2005282120080.22086@mail.home>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-937848607-1590744979=:22603"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi;
 s=meesny; t=1590744987;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=H2zd57Qmk4pxcZWanCvASGDUOFzv3tcExVikD+rajoQ=;
 b=h+7Yfm9j/RXACutsHSrjUR7nvbjW38gRbEP6o27NvMsUyeoNLe4uE6nBTV9JP+90wx9C5S
 E2k1t/iXcZ+phLh4LFwg0aeIFXMpNQYec2Udfxy/J5PgSTz9r95j03dWuAMfXut547juz7
 CPrXM9/AJB3mC1NtQbO6ETyl5zEQrvA=
ARC-Seal: i=1; s=meesny; d=iki.fi; t=1590744987; a=rsa-sha256; cv=none;
 b=Z7ReH778NL0hWGrgx/PhqdUtYo2N0Z3f007cq51sRNIBgrbvkn96wp3gMBaaEacNaxG9Ht
 1hf3Ow7Xt+rAU6FCI53eLfwWYlaIuG01yYJyUopoU307T2CAJwP8BDtBmbKgwrIJYuKRi8
 g9xtg5iHtwGTLVsHa36fS2qoATNSlkI=
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
X-Headers-End: 1jebRP-00H7dw-9O
Subject: Re: [tboot-devel] tboot 1.9.12 build failure if CFLAGS is set in
 environment
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
Errors-To: tboot-devel-bounces@lists.sourceforge.net

--8323329-937848607-1590744979=:22603
Content-Type: text/plain; charset=US-ASCII; format=flowed

On Thu, 28 May 2020, Timo Lindfors wrote:
>> If you don't see this dump in failing scenario please add
>> "set debug=mmap" to grub.cfg, now GRUB should print that.
>
> I added this after the serial console setup but this does not seem to print 
> anything? I also cannot find it in the grub2 source code. Is this the correct 
> syntax?

Assuming you meant "lsmmap" I am attaching here output from cold and warm 
boot. Unfortunately as you can see they are identical until the cold boot 
gets stuck but maybe this still helps?

-Timo

--8323329-937848607-1590744979=:22603
Content-Type: application/gzip; name=warm-serial.log.gz
Content-Transfer-Encoding: BASE64
Content-ID: <alpine.DEB.2.20.2005291236190.22603@mail.home>
Content-Description: 
Content-Disposition: attachment; filename=warm-serial.log.gz

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
tskl+UW2lpCztBiGAwAAho3qxWd1AAA=

--8323329-937848607-1590744979=:22603
Content-Type: application/gzip; name=cold-serial.log.gz
Content-Transfer-Encoding: BASE64
Content-ID: <alpine.DEB.2.20.2005291236191.22603@mail.home>
Content-Description: 
Content-Disposition: attachment; filename=cold-serial.log.gz

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
EKfnNUFJuXf/BZgBCXmYHAAA

--8323329-937848607-1590744979=:22603
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--8323329-937848607-1590744979=:22603
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel

--8323329-937848607-1590744979=:22603--

