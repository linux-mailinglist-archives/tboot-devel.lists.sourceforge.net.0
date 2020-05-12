Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 341901CF18D
	for <lists+tboot-devel@lfdr.de>; Tue, 12 May 2020 11:27:14 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1jYRBu-0000G8-Fd; Tue, 12 May 2020 09:27:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <timo.lindfors@iki.fi>) id 1jYRBt-0000FC-9c
 for tboot-devel@lists.sourceforge.net; Tue, 12 May 2020 09:27:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:References:Message-ID:
 In-Reply-To:Subject:cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=w8+gmEUDYtpdCVCu2ljv2k8Wyc0a9XPagqydEs9B8F8=; b=dJtPoDSPbLJdWo+j19TgQmS4G8
 m842nH9PE7bwxmPK2jmJLcN6DmvGzet3kki16AFyr26bPScx3zBRrBl1Oio+fUFDnZz12qKfR2nEz
 3aMa6ZFxKHPjnP7O8bEpEU7JQLGnwNTuZNONUDXJI8lK6tuAhhYlqf6UYZQNHGw5b1Ew=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:References:Message-ID:In-Reply-To:Subject:cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=w8+gmEUDYtpdCVCu2ljv2k8Wyc0a9XPagqydEs9B8F8=; b=B2ZgtZt9y6opCTSSlLi4OhOMAZ
 8ALBnOjZHxxjAU2awj+2XhC9i3tdrkLENTDD+laTEUSiI+4/Q76HI3Rk6nHRaCUy27ULoXAUS7lJd
 hcsuxmSySCQwIPrX2F5K0IPjSxnuq9OP7F5tC9rVjzlG4nbzJYj7kMtkd1Cu+5cQLrv0=;
Received: from meesny.iki.fi ([195.140.195.201])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jYRBl-002sYi-0H
 for tboot-devel@lists.sourceforge.net; Tue, 12 May 2020 09:27:09 +0000
Received: from mail.home (82-181-208-90.bb.dnainternet.fi [82.181.208.90])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: timo.lindfors)
 by meesny.iki.fi (Postfix) with ESMTPSA id AA6DD2061C;
 Tue, 12 May 2020 12:26:41 +0300 (EEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi; s=meesny;
 t=1589275601;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=w8+gmEUDYtpdCVCu2ljv2k8Wyc0a9XPagqydEs9B8F8=;
 b=EgiZu4MQlYfInBxyZOJP9kL8P5EuA409slQyKQf15SMsBfzYCI0wkHheDiS8wWPDJhDkqd
 PioBD4maEUa2QuLcmULAgNSC6EMwtivbv0VbI7Jyev6NFWRLHZhF+0y/ZXkXus1meJwEEL
 LLkseSpBRZjE9G7sWc5EulfFB1zCTM4=
Received: from localhost ([127.0.0.1]) by mail.home with esmtp (Exim 4.89)
 (envelope-from <timo.lindfors@iki.fi>)
 id 1jYRBJ-0001tt-U2; Tue, 12 May 2020 12:26:33 +0300
Date: Tue, 12 May 2020 12:26:33 +0300 (EEST)
From: Timo Lindfors <timo.lindfors@iki.fi>
To: Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>
In-Reply-To: <0006538262f002e44d5bdc18e338e294fd5185e2.camel@linux.intel.com>
Message-ID: <alpine.DEB.2.20.2005121219001.7218@mail.home>
References: <alpine.DEB.2.20.2005101501330.5531@mail.home>
 <0006538262f002e44d5bdc18e338e294fd5185e2.camel@linux.intel.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi;
 s=meesny; t=1589275601;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=w8+gmEUDYtpdCVCu2ljv2k8Wyc0a9XPagqydEs9B8F8=;
 b=j+DnODl232jbxlOOHTeUm3dT6sdOMt4wehp+HLHk1P6wtlGZXEmKCgEQd97JOPnIgjIeMr
 DvTMxBJHE8S+rQpEd4UV9Gd5WFcBIgvxeYG0F18eFQIiRg+UoZK8sU+RYPlCm3HnZyiTXT
 tDnHRoUA4RfHJDXTQMfmCFJzb8p1Hx8=
ARC-Seal: i=1; s=meesny; d=iki.fi; t=1589275601; a=rsa-sha256; cv=none;
 b=DS6YAFtzV5NNh1kT0/RGAjVNXjkJQfmxsMBLRfMl3wjKV4ltIlBSVLynuMkEbwdZC6UMM7
 +kllJNar/LxXaWIBegxyffDcOPruqoqFg/VhyGi4oPvSXIjpuFSiWzTF2+YYJW6Cjwmevw
 pWA/n/dDopBKzhncvcWFaHrjyszHsaw=
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
X-Headers-End: 1jYRBl-002sYi-0H
Subject: Re: [tboot-devel] packaging for debian,
 some clarifications for licensing?
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

Hi

On Tue, 12 May 2020, Lukasz Hawrylko wrote:
> The base TBOOT licence is BSD-3-clause, however some files that comes
> from other projects have different licenses (but all of them are
> compatible with BSD-3-clause).
>
> I can add information to COPYING file that looks like: "All files that
> do not have license header, have BSD-3-clause license and are
> copyrighted by Intel Corporation". Will it solve all license gaps in
> your opinion?

Yes, I think that would clarify the situation nicely but I would also 
include the full license text in COPYING and not just a reference to 
"BSD-3-clause". With these changes I feel I can upload this to Debian 
Gitlab (https://salsa.debian.org/debian/tboot/), the actual upload to the 
archive will of course still go through review by the Debian FTP master 
team.

-Timo



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
