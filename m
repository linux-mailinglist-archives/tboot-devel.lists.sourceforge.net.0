Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D14251E9AB1
	for <lists+tboot-devel@lfdr.de>; Mon,  1 Jun 2020 00:27:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1jfWQg-0005ZO-Qi; Sun, 31 May 2020 22:27:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <timo.lindfors@iki.fi>) id 1jfWQe-0005ZG-Cd
 for tboot-devel@lists.sourceforge.net; Sun, 31 May 2020 22:27:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:References:Message-ID:
 In-Reply-To:Subject:cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Tp3dZGNWArQCMYjPsBxzwEdd0u4ebSaUuYc9ez8825w=; b=N2DYjAiVDjwISrrwktKC7AmPL6
 2ZL0Sd6RRl+yOkjkGvTdfdajIjSYts3oT5YCHGm//fHxn7IzAII/ugr5qWPrPnhO0gLCSvtd+zW4o
 Geso1oJLASwu3Ma280pDunNjnqPZqBZzapyCDhl963UhFSu0KfHEVipr1/qZCRuZV5XY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:References:Message-ID:In-Reply-To:Subject:cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Tp3dZGNWArQCMYjPsBxzwEdd0u4ebSaUuYc9ez8825w=; b=XAB1CadKhwnFtwrg8btYdtzagT
 tshXR1J4znSyl8qtWOZ1yMzdhmQ8U0RvpuxxjaBxzEE5RoOzwmVUw7V4JcM4RkbuEyuq3FgizfiXM
 nEtM8VB9jhAhQyt4ABnRJWm80XNjX37nBJ2Ck7NnJRj6waSQjzEd/b7DypvTV1Wqy31E=;
Received: from meesny.iki.fi ([195.140.195.201])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jfWQb-002GlF-Od
 for tboot-devel@lists.sourceforge.net; Sun, 31 May 2020 22:27:40 +0000
Received: from mail.home (89-27-97-237.bb.dnainternet.fi [89.27.97.237])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: timo.lindfors)
 by meesny.iki.fi (Postfix) with ESMTPSA id 7D41B20177;
 Mon,  1 Jun 2020 01:27:23 +0300 (EEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi; s=meesny;
 t=1590964043;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Tp3dZGNWArQCMYjPsBxzwEdd0u4ebSaUuYc9ez8825w=;
 b=EC/9cPXHm4gQX3alqQTSK7n7sBIqQx2tkbPHosqu+ULzAm+QdnZy7iO9qQqNQgomrhrgM8
 IQiZAshdByWzab6miHp0jpBdaxJIl5iS1K7OtUidpxbGuSORewyrn6Ynh/2yCVmE6+xx0n
 B9flpiwguIBTl2pz22XE+LN0dKkMZC8=
Received: from localhost ([127.0.0.1]) by mail.home with esmtp (Exim 4.89)
 (envelope-from <timo.lindfors@iki.fi>)
 id 1jfWQF-0006Lh-He; Mon, 01 Jun 2020 01:27:15 +0300
Date: Mon, 1 Jun 2020 01:27:15 +0300 (EEST)
From: Timo Lindfors <timo.lindfors@iki.fi>
To: tboot-devel@lists.sourceforge.net
In-Reply-To: <alpine.DEB.2.20.2006010050560.24353@mail.home>
Message-ID: <alpine.DEB.2.20.2006010126220.24394@mail.home>
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
 <alpine.DEB.2.20.2005291234440.22603@mail.home>
 <fccd42128daa0ff86d2e6970f7e3217ae8f1a01e.camel@linux.intel.com>
 <alpine.DEB.2.20.2006010050560.24353@mail.home>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi;
 s=meesny; t=1590964043;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Tp3dZGNWArQCMYjPsBxzwEdd0u4ebSaUuYc9ez8825w=;
 b=Uuevs1TQxb/nu1Cw4HNZc7tuXYxNNmrsG5EoZ0Uv9nmKpx/edwzOb9z7Egi/WYj8mLngc0
 90zjJMkqNgznKeBEtOQ1G+TcLxIrfbBQaXhmusM/VjiKoyw1mLX2QVuHkq/8aoMaGTGNnu
 oVB/w4gQtov0Gtik2p5FJD+ldS22YkE=
ARC-Seal: i=1; s=meesny; d=iki.fi; t=1590964043; a=rsa-sha256; cv=none;
 b=boSzUK/x3Z+D3MwAMfBE1ut/DazUvSs1PMRVDwv6q/SYil2+eNW47IIkMh+3vyBgsHCyT7
 EgRw2ayEtfv6gXx7kYqbgAaVNTLzfi6q2jlCc9HLjpkkVX3A5opotx/7iyofe5yid6VZcu
 6emqBKTcSJI8RmzQ0PNTK1gPoQUNjbY=
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
X-Headers-End: 1jfWQb-002GlF-Od
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: tboot-devel-bounces@lists.sourceforge.net

On Mon, 1 Jun 2020, Timo Lindfors wrote:
> printk(TBOOT_INFO"start=%p tag_type=%d start->type=%d start->size=%d\n",
>       start,
>       tag_type,
>       start->type,
>       start->size);

On warm boot this prints just

TBOOT: start=0x0x10008 tag_type=17 start->type=3031684 start->size=-2147418113
TBOOT: start=0x0x80020008 tag_type=17 start->type=0 start->size=0

-Timo



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
