Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F8691E9AA2
	for <lists+tboot-devel@lfdr.de>; Sun, 31 May 2020 23:57:25 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1jfVxH-00027A-Px; Sun, 31 May 2020 21:57:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <timo.lindfors@iki.fi>) id 1jfVxG-00026v-DN
 for tboot-devel@lists.sourceforge.net; Sun, 31 May 2020 21:57:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:References:Message-ID:
 In-Reply-To:Subject:cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=A5RuKVNFpn/aMU3C6nxroslgomaSCZz0QkYUbYlpMQo=; b=Fy/JYMLF3TYLBO+J/BsesYiJFF
 Q053hgKm4SzS9ZttYbKz6Ud6CG+g8zPB3KaF0yTkPZONP1FKDsWSclTtZDhD29xvq6FFUo0r2ksbP
 GwTuiQ/auku4Wpgi1XbM25228VwUCV4T17RF8Cp7oAq9bsLr85OtRuGG/tGyAB71XhGw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:References:Message-ID:In-Reply-To:Subject:cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=A5RuKVNFpn/aMU3C6nxroslgomaSCZz0QkYUbYlpMQo=; b=m09xOLVOGAhLHJXq/SlsWyl3Jr
 +EMfhdMyjltSVTT0h3fzqhUgGmE4pbnMr3SKTzNVWEib/FMWXUrmCgq6fzDn9SgyqxAw/1/+kUf3E
 /602RV7o/8/rq3mkQWmbTQZmSVsbGg4R+uHOuO+uuEiuuVUaML8qPqIG4417LkgEPujA=;
Received: from lahtoruutu.iki.fi ([185.185.170.37])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jfVxC-00FXkR-2c
 for tboot-devel@lists.sourceforge.net; Sun, 31 May 2020 21:57:18 +0000
Received: from mail.home (89-27-97-237.bb.dnainternet.fi [89.27.97.237])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: timo.lindfors)
 by lahtoruutu.iki.fi (Postfix) with ESMTPSA id CBBC01B00086;
 Mon,  1 Jun 2020 00:56:57 +0300 (EEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi; s=lahtoruutu; 
 t=1590962217;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=A5RuKVNFpn/aMU3C6nxroslgomaSCZz0QkYUbYlpMQo=;
 b=J5lIs8gO9F7ZoC0u6QNVV3DkmzuGg1GgXOuQ3+3UN+sv56DBSO07IEIgVTHRy6vuSElnUP
 HQIsIDZWgbdfxMfaOyqHgxP0Z3WI1e+nCxuxh+OUCSaCMkQrOpPNtf7KJ9eqjEOK40zPYn
 i9vSSYd02wuZxHWE2Gok0YGE4AJYfqRfWjgBTJcFyTr+Ici2dRysWI9w/Grg04mnZBZOiJ
 6Y30ERsMl8YT+sAII58QR23UdKtYGHt0ESMdKEYJYFX2BsdYk99AlRn6IDxB1ilAa3ApOc
 8G8dB5VRWyyIGcIa2DA0X2sb91iehonXQUSkh3dXDF/AhEF33hpfXAQ9nKUMXg==
Received: from localhost ([127.0.0.1]) by mail.home with esmtp (Exim 4.89)
 (envelope-from <timo.lindfors@iki.fi>)
 id 1jfVwn-0006L5-K7; Mon, 01 Jun 2020 00:56:49 +0300
Date: Mon, 1 Jun 2020 00:56:49 +0300 (EEST)
From: Timo Lindfors <timo.lindfors@iki.fi>
To: Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>
In-Reply-To: <fccd42128daa0ff86d2e6970f7e3217ae8f1a01e.camel@linux.intel.com>
Message-ID: <alpine.DEB.2.20.2006010050560.24353@mail.home>
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
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi;
 s=lahtoruutu; t=1590962217;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=A5RuKVNFpn/aMU3C6nxroslgomaSCZz0QkYUbYlpMQo=;
 b=U9QoHRDJvQ/MVbk4F/EPtkubTc/rYfaHtCVPP6HQEIw1/kI8+ZNKYtwXMpMTL0K+17YhU1
 CPCpM/Rmo0kE49LmmsLJR/a2vEIXvlRgXU960+rbtJWZ4zmpv37gGZ8ZVuLf9F6JYx9Of5
 hRG+3pp0u4nCyH8xXmUZ2C1Mvije44ZWL98oA1EHjAEkdzIVfuW0Zevh4oq8oDpSO21bgc
 hT6ZlgwBvtxSQe8P4XVH5M+bnUTLnlbiNENE/WbkMUKVn1R1cDhDwjnt8+WBChHKOQFPLm
 aO5zfrhY/GJloc8KQiIo03Ppm4qFj4C0VyoBZ2gt6Kee7sUrCJamPnnJLsxEWQ==
ARC-Seal: i=1; s=lahtoruutu; d=iki.fi; t=1590962217; a=rsa-sha256; cv=none;
 b=lyWngemhL7VwcEE4Uk8M284O+n0LoiAe9fDF5mLCdqQ5iIasrObb4CvOqNPyDcbqnozPcR
 hGklpO0bl1d4QKrDegCjhCtsI3KhpZg2taEXbGyMkjYFPDFOQJ14S7ovByJ3d5VyfFXcfK
 gv/0du3EBNsjN3s1Vzo303Hzh6wzscYuAMebEgsHYtIkwvUmrZjqwnySH16BbN8Lwz3ovu
 Oj7ZPdhbpCIJE1jjNlFiIgS4TDK2cjIzzPj4hL/N7Kd6Uu6DF/TZE+09qbMOpgdm/PAV3b
 mBVyDe96XTMpGUOYxKtr6knte4O8zObQv55CX79TIqNun8BOayGglLnSqVhO+Q==
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
X-Headers-End: 1jfVxC-00FXkR-2c
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

On Fri, 29 May 2020, Lukasz Hawrylko wrote:
> On Fri, 2020-05-29 at 12:36 +0300, Timo Lindfors wrote:
> I see "Failed to get EFI memory map" message, did you configure BIOS to
> use legacy boot? "set debug=mmap" should enable EFI memory map print in
> grub_efi_mmap_iterate(), but this does not work when booted in legacy
> mode.

Yes, Thinkpad R400 does not seem to support EFI. Finding a laptop 
that that does TPM 2.0, UEFI, TXT and serial port seems to be bit
tricky but I'll keep looking.

> As printk is blocking call you can add few additional prints somewhere
> around tboot.c:384 and inside copy_e820_map() and efi_memmap_copy() to
> find out where exactly it hangs.

It seems to be stuck in the while loop in find_mb2_tag_type. Placing

printk(TBOOT_INFO"start=%p tag_type=%d start->type=%d start->size=%d\n",
        start,
        tag_type,
        start->type,
        start->size);

inside the while loop prints

TBOOT: start=0x10008 tag_type=17 start->type=3031684 start->size=-2147418113
TBOOT: start=0x80020008 tag_type=17 start->type=-1 start->size=-1
TBOOT: start=0x80020008 tag_type=17 start->type=-1 start->size=-1
TBOOT: start=0x80020008 tag_type=17 start->type=-1 start->size=-1
TBOOT: start=0x80020008 tag_type=17 start->type=-1 start->size=-1
TBOOT: start=0x80020008 tag_type=17 start->type=-1 start->size=-1
TBOOT: start=0x80020008 tag_type=17 start->type=-1 start->size=-1
TBOOT: start=0x80020008 tag_type=17 start->type=-1 start->size=-1
TBOOT: start=0x80020008 tag_type=17 start->type=-1 start->size=-1
TBOOT: start=0x80020008 tag_type=17 start->type=-1 start->size=-1
TBOOT: start=0x80020008 tag_type=17 start->type=-1 start->size=-1
...




-Timo



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
