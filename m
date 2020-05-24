Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 759A11E0098
	for <lists+tboot-devel@lfdr.de>; Sun, 24 May 2020 18:31:12 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1jctWj-0000du-7B; Sun, 24 May 2020 16:31:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <timo.lindfors@iki.fi>) id 1jctWh-0000dh-GY
 for tboot-devel@lists.sourceforge.net; Sun, 24 May 2020 16:31:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:References:Message-ID:
 In-Reply-To:Subject:cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2iDYNS3zAlDTWQtcAPcKwSUpbUj+NE1y1eyXAv5WHdw=; b=ebs+U3yw5Zpy3lSXIBFQwra3Vp
 5ZIid1KNOmY6vwBp8fFWRSATWFSlhhGolaJtXZY8gdu0tJleP+KHn5hmQCOFBxVTGrRiiECN3VEbX
 pdcsOFN+nEcbel8v/9MSrcTFJ/1Cw7pYIUovAqnasnHEc2Xe42njkbzhuN00nb9dKwx0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:References:Message-ID:In-Reply-To:Subject:cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=2iDYNS3zAlDTWQtcAPcKwSUpbUj+NE1y1eyXAv5WHdw=; b=YRmBLDYGlw0tK/LTUYCOdibT78
 u/a1U7zQsbu15dstrZVtw3V9So5chIzWrtcW2Mq/RQW1wipkP/+6JQbNsb1axbHlIqiJApib7IHbT
 iBojfTlN11W0RGQI2sPBlP3tiNzkox64D9Ag6FKC5Ogv0dd+FKkXpiDbWjqIr5dwPWEg=;
Received: from lahtoruutu.iki.fi ([185.185.170.37])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jctWc-00AuNI-Cv
 for tboot-devel@lists.sourceforge.net; Sun, 24 May 2020 16:31:03 +0000
Received: from mail.home (89-27-97-237.bb.dnainternet.fi [89.27.97.237])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: timo.lindfors)
 by lahtoruutu.iki.fi (Postfix) with ESMTPSA id B95E21B00193;
 Sun, 24 May 2020 19:15:13 +0300 (EEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi; s=lahtoruutu; 
 t=1590336913;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=2iDYNS3zAlDTWQtcAPcKwSUpbUj+NE1y1eyXAv5WHdw=;
 b=KO6/4IxTxG14L1yfWYJhICU9uj1PebM5AZSK+H3A9jGtpbkJQFaaU30VHcLqCavvsgSiG3
 ocuT27+HiHNbZn30lZca8BfzPqewdKqzmLOJPWRhvshdypk5PfKAlIyQqmaT/HH4KMZsrs
 rWsW9e9NE/Uy8So7LfvEamRr2O/qkTTITUK56mBvgkC6+QFpPcUPlwOr2R9+Q6ZaQrOjPc
 MZ5DvskxiIUBKYIMWxlbD3qXlsTL86z+PRI+zNXVsVHixmQQMQlbYxkMIj2Z8M7oABfbTz
 KLHdih9f8tLHQJCx+9YuVdqX5GxBeVewXTyjlrE2Zyek5tHmTDgG5x814p2Wuw==
Received: from localhost ([127.0.0.1]) by mail.home with esmtp (Exim 4.89)
 (envelope-from <timo.lindfors@iki.fi>)
 id 1jctHF-0004rz-7c; Sun, 24 May 2020 19:15:05 +0300
Date: Sun, 24 May 2020 19:15:05 +0300 (EEST)
From: Timo Lindfors <timo.lindfors@iki.fi>
To: Timo Lindfors <timo.lindfors@iki.fi>
In-Reply-To: <alpine.DEB.2.20.2005231924220.17882@mail.home>
Message-ID: <alpine.DEB.2.20.2005241914180.17882@mail.home>
References: <alpine.DEB.2.20.2005081919250.3828@mail.home>
 <3da41313c3b91f154f53f9c2c9645ade6399cff9.camel@linux.intel.com>
 <alpine.DEB.2.20.2005121234280.7218@mail.home>
 <alpine.DEB.2.20.2005231924220.17882@mail.home>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi;
 s=lahtoruutu; t=1590336913;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=2iDYNS3zAlDTWQtcAPcKwSUpbUj+NE1y1eyXAv5WHdw=;
 b=RE0q7dqRTGu3fLZa2F9ccay85Mj8PuKV0ZU3ytXUEEKqncza/i3Eq4o/KdY5v0LhkRCj0J
 quO6h9otOqhFNuS47rAXCxkR01VYnJcQIVXOOjzxWkrdkjedalQQTcic46tTDNLbbHQmnX
 kW++RmMLCfSY9u0JGoWV+VvRmGC6PKygNybf/jlg1Bije580ZN4frW1HaNvkM5K+LsmOFg
 2rCcn8nC8zqtniazdJCHnWqmxH9/88RLdol9R63cYVO06CaTClip8tO5f2gh+1AgZdqQqS
 1KfQbqRva2+wvjJHzGiAjCyag8WTWqYM5k6F5PhWy82ZnxSqYCLF7WqQm2dQJw==
ARC-Seal: i=1; s=lahtoruutu; d=iki.fi; t=1590336913; a=rsa-sha256; cv=none;
 b=fGqnTOJwZo6QB2Q9Ozzd4rLNbsKHWzBD1vGHi3MxbydGRKc1Oz0kE0jwJSR1MNfPbKprIy
 t52g054FN4Lg8peVfCyOIUVRMpCgz4TjOuJ8JXj/kAu4Z6DsVBXbdU/ZHJtTpWLObkLhq8
 ssT4ETxTRCGiKEcQuTCTPV4imNWy/uIv98aFlxA7kIailHBt+/WlxqxKYWtu/SXzaJ8dI/
 51AK2lSozGAKKXez3+TwuYgUGPZobF6nzmKusMaZwJjkorMZsvLViqnWwhoxORz3RF64aP
 TP9Y3cAOf7msoQDsjjU1bV0G8Yc99rKzEwLDg1x3/g/Xz+IdW+7kb6QTry/DqQ==
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
X-Headers-End: 1jctWc-00AuNI-Cv
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
Cc: tboot-devel@lists.sourceforge.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: tboot-devel-bounces@lists.sourceforge.net

Hi,

On Sat, 23 May 2020, Timo Lindfors wrote:
> boot on Lenovo T430s when I boot the latest code from mercurial. 1.9.12 seems 
> to boot ok. Commenting out "export CFLAGS" seems to help. How should
> I debug this?

Currently it seems that tboot actually only boots properly if I first boot 
Linux and then reboot and select tboot. If I cold-boot tboot then it gets 
stuck. I'm investigating options on how to test this in a more automatic 
way.

-Timo



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
