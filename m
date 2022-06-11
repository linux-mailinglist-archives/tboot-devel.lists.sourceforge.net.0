Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EB19754775C
	for <lists+tboot-devel@lfdr.de>; Sat, 11 Jun 2022 21:45:31 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1o0730-0006fv-VJ; Sat, 11 Jun 2022 19:45:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <timo.lindfors@iki.fi>) id 1o072z-0006fo-UB
 for tboot-devel@lists.sourceforge.net; Sat, 11 Jun 2022 19:45:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:References:Message-ID:
 In-Reply-To:Subject:cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5ZEm2vK3M4Rp/OA6G9jh0sWvTP4DxQ8BAr/OjQ9R3yQ=; b=KwGXhVcNmLJXelq4a6FIG8yp5h
 hXApS9pXQZRbKKtAeaU1SJvOexibtq1Bhgq72x+z2AvF3D5Fa4CJOvoKI4d3c8G6aCoT6l7nP+iTV
 372QiAXWMi1F7uu/VvQd1DY+r/UQhjG1IEAhPO8Zld875x4cg8jevt3bIOXYLbHdWG4M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:References:Message-ID:In-Reply-To:Subject:cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5ZEm2vK3M4Rp/OA6G9jh0sWvTP4DxQ8BAr/OjQ9R3yQ=; b=CBhMHe19C6G4pGcOtWzxQPm+29
 jSbsazJ2PtjD1aAOsP7sW9b3rtsYZYtMBLgJucU2YDHV6iZHype+qH1eywgpOx4Tas0QUB79+GKk0
 GzQdeWTrtDdmWzcyQZTaki8JuD8nJKQMBI+A3Yxkn4nNfnB70r218+UFJfyfFqsZgnms=;
Received: from lahtoruutu.iki.fi ([185.185.170.37])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o072r-0006HT-Er
 for tboot-devel@lists.sourceforge.net; Sat, 11 Jun 2022 19:45:24 +0000
Received: from mail.home (82-181-195-69.bb.dnainternet.fi [82.181.195.69])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: timo.lindfors)
 by lahtoruutu.iki.fi (Postfix) with ESMTPSA id 0FC9E1B0004B;
 Sat, 11 Jun 2022 22:45:08 +0300 (EEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi; s=lahtoruutu; 
 t=1654976708;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=5ZEm2vK3M4Rp/OA6G9jh0sWvTP4DxQ8BAr/OjQ9R3yQ=;
 b=BUOSYRmutjlyVWXiY2kPPkeKNB+HS72RPvI3YD7HOuQP4+VWUSbBFmESZWAOGiUjRLakEB
 mzjlTOCTaCKZTioOKuK+rkMn3ls0zgq5SmhUlXIyCoZcK2x3DAaqn9FSJfzS3L3jbE+jzM
 DpqGu9vbZMH3koKR6qTCblasPk5hDAPFXsBgnfSAtkISE/5o4vYdXmP4IwMz7strGwf/ps
 U5AvKtWKhhz6/gnqAVZLFYOHhP3jar8W7M9gDYiOvQaO6y9L5dQK+Vo4REClIPVlU9zw2k
 UR6A4UfHLTRd6bpTKyfFg4aN7aAItcxRhYNbKqaQA2pCcJwKA7U91X8OGJailw==
Received: from localhost ([127.0.0.1]) by mail.home with esmtp (Exim 4.89)
 (envelope-from <timo.lindfors@iki.fi>)
 id 1o057N-00085O-To; Sat, 11 Jun 2022 20:41:49 +0300
Date: Sat, 11 Jun 2022 20:41:49 +0300 (EEST)
From: Timo Lindfors <timo.lindfors@iki.fi>
To: Tony Camuso <tcamuso@redhat.com>
In-Reply-To: <9174302f-c4eb-fd3d-c755-569c46053f76@redhat.com>
Message-ID: <alpine.DEB.2.20.2206112038030.31069@mail.home>
References: <mailman.51.1654862842.17052.tboot-devel@lists.sourceforge.net>
 <0b09ebf4-9ab0-c41e-5d58-cef2d4ea8c19@redhat.com>
 <alpine.DEB.2.20.2206111021160.30792@mail.home>
 <9174302f-c4eb-fd3d-c755-569c46053f76@redhat.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
ARC-Seal: i=1; s=lahtoruutu; d=iki.fi; t=1654976708; a=rsa-sha256; cv=none;
 b=Dis321xIkVp1H2XQIswIcg00pjUR3qmSe8Pd8MfktYC5+enEyh9kcMF6aKzzwkZT/Jf4Fv
 2WS1vXhApi3PTUEPFJCo03mIhK5LpyQ+f3vN8lkUeoCoEg5MYge14Zmn8o8X/nnepux7HI
 SJuHJSDfpXrfjuYUYlf9qzH5LJ1HMCUgwuS1LDwoTEy6dZt5J41CLkEeJ1lT1XNwRLTABt
 iuH6gLiNY91GaqvnTLEOdf/PznJ4FudWFC38RJ6+eMYWTAzzn4z9Rcb++juCOkI68y6tTd
 72vfq4JoF9SKLtxAc5IQCV26EoESpYMZe92OECgV9WepmF0rqlMCSQgYc29xLg==
ARC-Authentication-Results: i=1; ORIGINATING;
 auth=pass smtp.auth=timo.lindfors smtp.mailfrom=timo.lindfors@iki.fi
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi;
 s=lahtoruutu; t=1654976708;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=5ZEm2vK3M4Rp/OA6G9jh0sWvTP4DxQ8BAr/OjQ9R3yQ=;
 b=ARZuM3f17TWjSeTR57WWBcJFJja1JDeOFg5QrRucIsOxC6JUtGnDB7GpmJ5ZHZUURF+xkL
 EUlLRyTK7GjIoWpH31VDAv9JQ2l/HaJKT8cP99bY4zLtijGVAvocxmsD5z1cUwp3cZaYWg
 ar+EhjZGVns7BEq7ttKkPNbmISQSAitVDu2RiPjMRcjTZmHW/x9JSaTUNZ0hPAJX4x703W
 uLc/5T+ktN9blgu7OIobz6u2Ed1OT5VdNROw4PE/FvplFBbR5UmBdu+LNduSoZCjzAuoSz
 uHvCoLgnXvl60yhJjJQINPpGpnDr9LRZ8vXyqW8FOcSaHXtcFH3I5NbN8uaiyA==
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sat, 11 Jun 2022, Tony Camuso wrote: > OK, so something
 is going wrong with the information that tboot is > forwarding to the kernel
 launch. > > On the efi system, with "noefi" removed from the gru [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.185.170.37 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1o072r-0006HT-Er
Subject: Re: [tboot-devel] [PATCH] 20_linux_tboot: efi logic was inverted
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
Cc: Lenny Szubowicz <lszubowi@redhat.com>, tboot-devel@lists.sourceforge.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: tboot-devel-bounces@lists.sourceforge.net

On Sat, 11 Jun 2022, Tony Camuso wrote:
> OK, so something is going wrong with the information that tboot is
> forwarding to the kernel launch.
>
> On the efi system, with "noefi" removed from the grub command line,
> the system boots.
>
> With "noefi" in the grub command line, Device Mapper cannot find
> the root and swap devices and drops to the dracut prompt.
>
> How can I determine what info efi is providing that tboot is not?
>
> Where can I instrument the code to gain that visibility?

I'm not too familiar with dracut but I'd imagine you can unpack the 
initramfs and investigate how it works. It might be easiest to spawn a 
shell at some point.

Can you reproduce the problem if you do a fresh install? What distribution 
is this? If you have easy steps to reproduce this I can try to take a 
look. I'm normally on Debian so will need good instructions for other 
distros :)

-Timo


_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
