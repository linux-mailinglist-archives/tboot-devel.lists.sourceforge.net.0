Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F0EBB3F73A9
	for <lists+tboot-devel@lfdr.de>; Wed, 25 Aug 2021 12:50:27 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1mIqU9-0007hY-Gz; Wed, 25 Aug 2021 10:50:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <timo.lindfors@iki.fi>) id 1mIqU7-0007hS-KN
 for tboot-devel@lists.sourceforge.net; Wed, 25 Aug 2021 10:50:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fJsENcetUh7nMSylZw/eeHLU4L58Vj3QT4aRS8QIUWg=; b=C1cCopDxADDm3P3EiGcLZGEnoA
 e+0Hy530TXpPC9XFYpU84iaRDiUjeYB08eoa9zNtPi7cd0Lc0AFnWh0kPiU6Alqt0TugLran918or
 Lam72Z1Wf8KoZGtZOZk2mj3MelU8G6RzjEiM27K4ui5y0M5WGS4q3PNVDESlOY7SARok=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:To:From:Date:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=fJsENcetUh7nMSylZw/eeHLU4L58Vj3QT4aRS8QIUWg=; b=a
 q50hWZMoAeEAZb1lXYTYaY87BmwIB6I3q0k+K0lXlf5dQFkPi3lhiWcbxPbeuvNEofiXA3Vfg/9Iu
 5s7j+birs+FMtMhRNUK6S+QZcUz05hU5Wq7NFGci66brqnBJSzcLE5JNvbExSTaZseTJ+k3aO9Abx
 jzUfl06PlEvvLmcY=;
Received: from lahtoruutu.iki.fi ([185.185.170.37])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mIqU2-0000JC-6W
 for tboot-devel@lists.sourceforge.net; Wed, 25 Aug 2021 10:50:19 +0000
Received: from mail.home (89-27-97-237.bb.dnainternet.fi [89.27.97.237])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: timo.lindfors)
 by lahtoruutu.iki.fi (Postfix) with ESMTPSA id 544451B0002E
 for <tboot-devel@lists.sourceforge.net>; Wed, 25 Aug 2021 13:49:58 +0300 (EEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi; s=lahtoruutu; 
 t=1629888598;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type;
 bh=fJsENcetUh7nMSylZw/eeHLU4L58Vj3QT4aRS8QIUWg=;
 b=Toj0CIFBCLfzK0M1zYMX49Zop4IR4t0WMhKHACjEjZ6NQ9O071uuuA1k6qDX7+jrEbDGdB
 rLfjBczwGkPp4lNcM4i914eOuAdDwwNpQlNLwmtC4El2CQH4OCSxUQKLu9xi4Ty5mlGkoT
 u/NIddfdGJsm04FtPIt++C+uOkeH6mbMNpAs6Hzt+hkuhyTyOPXCl0Cs/pUw0znt28jKhD
 Jj3zyechYBAq6ywMneLfqcBn8rf86b7V7vT5Z6ykLWc9P4gn1pBj1d+k10Otwli9HEzL0U
 Oz3Laebu/VKhLv5YyqBcv9Jg5QJEtJ0N0+rI2lTIY0aaaiqYZ8TmCC6neklo1Q==
Received: from localhost ([127.0.0.1]) by mail.home with esmtp (Exim 4.89)
 (envelope-from <timo.lindfors@iki.fi>) id 1mIoYt-0001jd-Ct
 for tboot-devel@lists.sourceforge.net; Wed, 25 Aug 2021 11:47:07 +0300
Date: Wed, 25 Aug 2021 11:47:07 +0300 (EEST)
From: Timo Lindfors <timo.lindfors@iki.fi>
To: tboot-devel@lists.sourceforge.net
Message-ID: <alpine.DEB.2.20.2108251137290.6587@mail.home>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
ARC-Seal: i=1; s=lahtoruutu; d=iki.fi; t=1629888598; a=rsa-sha256; cv=none;
 b=YsMVt+Rp6976NBOTkBpRtytgtqdAaU3O89f26OjwvGMqeN8XJXcp+zrHKUpVk/q2NiIWqy
 EbLxlMSF+ZoDXCpUu4at26MV6Jp/k8iyCQyYal4jTNJt4rBUkXp5cyHkH0scVzc4/t8u+Q
 UdWPycDdusWjJnEycIio6xo7Y6F2qvjX72/vrcinqONQ/iVwd9hmx973EjoFzM/9LhVvWO
 2ObQyY0EABMuvLjPFSaGLAslE57iMOjCaeWLTzja26wroIIYuwek+tccODqnS69fYAlalO
 MIrqAfP58qko1Ab+RkJTiE9Pls+3WMGLxlTfZW8/X5UaOtsXK2Q2FspF0rK6tg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi;
 s=lahtoruutu; t=1629888598;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type;
 bh=fJsENcetUh7nMSylZw/eeHLU4L58Vj3QT4aRS8QIUWg=;
 b=Jd3LQoy0Bq4os3gQQ9G1gP5OZS5yBqtcojdSQaxe/sMfZyP2sBsByjzN8fPS559uVgHWYB
 ZpKrooZySHeDxdgM/64VDBRqfFZe7KIQOLhP5ThFOeN3nU7ZOWkw70XwKvrDnmaTNYVcDM
 K4AQJYIxbVuM+F11Wi5I06Tcv1D1PUvGmOglwJ13gxy42aOx81D4Wg+/SJgC6yIh0tNJwr
 UPNlxwXNRO0lMPmImqTu9tmPuk+vDDOa3/j+nHrGXdABSaxppdd0DjBJCokhsVZgYYd5rO
 Kf2l78kvoKl9oKVBNkbtt6LiwsxJlvDI5rJARCZ32JlFGruwGG2ujdy2DHegDQ==
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
X-Headers-End: 1mIqU2-0000JC-6W
Subject: [tboot-devel] txt-acminfo segfaults
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

Hi,

txt-acminfo 5th_gen_i5_i7_SINIT_79.BIN

segfaults on my system:

Program received signal SIGSEGV, Segmentation fault.
does_acmod_match_platform (hdr=hdr@entry=0x7ffff7fc3000) at ../tboot/txt/acmod.c:590
590	    txt_heap_t *txt_heap = get_txt_heap();
(gdb) bt
#0  does_acmod_match_platform (hdr=hdr@entry=0x7ffff7fc3000) at ../tboot/txt/acmod.c:590
#1  0x00005555555552de in match_platform (hdr=0x7ffff7fc3000) at txt-acminfo.c:207
#2  main (argc=<optimized out>, argv=<optimized out>) at txt-acminfo.c:244
(gdb) x/4i $rip
=> 0x555555556612 <does_acmod_match_platform+50>:	movabs 0xfed30300,%rax
    0x55555555661c <does_acmod_match_platform+60>:	cmpb   $0x4,0x11(%rbp)
    0x555555556620 <does_acmod_match_platform+64>:	jbe    0x555555556660 <does_acmod_match_platform+128>
    0x555555556622 <does_acmod_match_platform+66>:	cmpl   $0x5,0x8(%rax)

It seems heap.h defines get_txt_heap() that refers to the real 
read_pub_config_reg() before it is #define'd later. After I fixed this I 
noticed that does_acmod_match_platform() then segfaults when it tries to 
dereference the pointer returned by get_txt_heap().

I guess txt-acminfo should mmap() TXT heap? Should we then modify 
get_txt_heap() to behave differently depending on the context or perhaps 
modify does_acmod_match_platform() to take a pointer to the TXT heap as an 
argument to avoid this?


-Timo



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
