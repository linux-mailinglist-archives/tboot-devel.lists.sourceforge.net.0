Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7576A547368
	for <lists+tboot-devel@lfdr.de>; Sat, 11 Jun 2022 11:47:28 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1nzxi2-0001s1-B7; Sat, 11 Jun 2022 09:47:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <timo.lindfors@iki.fi>) id 1nzxi0-0001ru-Ts
 for tboot-devel@lists.sourceforge.net; Sat, 11 Jun 2022 09:47:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:References:Message-ID:
 In-Reply-To:Subject:cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gmD062XzLttQUxX2K4KYK7MrwPBgdCVxrJakyfWqHv4=; b=K3DLEuyY9Wj5SHp6PsUk9K4XLS
 GOuOtR64MxrqVwgHTUOlv5Gybez16h9dYGyFwXeHyjMadWHNpimP1ymcaR5dq48OWLWmkJFCdQGS0
 f4MiyKqvPOdeJ74Hg2OUzlcQ8eDiRsTNcUyhNAkQeMsaBqev3H+QSoQDxmh8gStJvvL4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:References:Message-ID:In-Reply-To:Subject:cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=gmD062XzLttQUxX2K4KYK7MrwPBgdCVxrJakyfWqHv4=; b=O9dohRAT+YG+Ohr5au3Id5pUAa
 t3nqEJvBzCQ3ximPMAu9E/SQoH8qUUucv3iLjsvY3mj7LExTzVKsUoWEwPcre0ZJiNU/7mUmHLQ10
 ypX4UJVsRNiFfI8T7zQO7WiO9o1DIJsTMmxxLsaGfrClUyA8mJts8044vr+unac2FAQE=;
Received: from lahtoruutu.iki.fi ([185.185.170.37])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nzxhy-00Ez0f-Cb
 for tboot-devel@lists.sourceforge.net; Sat, 11 Jun 2022 09:47:07 +0000
Received: from mail.home (82-181-195-69.bb.dnainternet.fi [82.181.195.69])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: timo.lindfors)
 by lahtoruutu.iki.fi (Postfix) with ESMTPSA id 3E3511B001E8;
 Sat, 11 Jun 2022 12:27:37 +0300 (EEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi; s=lahtoruutu; 
 t=1654939657;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=gmD062XzLttQUxX2K4KYK7MrwPBgdCVxrJakyfWqHv4=;
 b=psVT9seT9OVbM2hY/loln+QILK7sskvPo3RpXmqN1iw/AxFFEdUeJFObE0DkDOgQuJYQUQ
 fa9Gj3xdfRESeaz2EJjX7JEtmBmZN0YvcHJoBibvhAZzoXvQMrkcQbeuOV3Ltc6oWVhqtB
 cZ8VSorFqssJe1hsISVBfDEcJe5UGpZiwodYfXdWg06JFNvnGOVrT3jRIvoTZEaCstEHVj
 mUl6A92oFpmUxQfy6LLAlo2U0yQozDe/i8JnrSbMEBIhW2kSDnaqB6sWHR7mvipAa2tLTg
 zVnf/H5q6+LVbOhy8oHNNB2Vu9AoDUHlRracmtU/psArpxVLhTXZ430Zxy4/Bw==
Received: from localhost ([127.0.0.1]) by mail.home with esmtp (Exim 4.89)
 (envelope-from <timo.lindfors@iki.fi>)
 id 1nzvTn-000814-Aq; Sat, 11 Jun 2022 10:24:19 +0300
Date: Sat, 11 Jun 2022 10:24:19 +0300 (EEST)
From: Timo Lindfors <timo.lindfors@iki.fi>
To: Tony Camuso <tcamuso@redhat.com>
In-Reply-To: <0b09ebf4-9ab0-c41e-5d58-cef2d4ea8c19@redhat.com>
Message-ID: <alpine.DEB.2.20.2206111021160.30792@mail.home>
References: <mailman.51.1654862842.17052.tboot-devel@lists.sourceforge.net>
 <0b09ebf4-9ab0-c41e-5d58-cef2d4ea8c19@redhat.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
ARC-Seal: i=1; s=lahtoruutu; d=iki.fi; t=1654939657; a=rsa-sha256; cv=none;
 b=u08ZIEbmTJGFIWD2ilMgcMYHJityFr4w7rQuxTB7ad/s2pG5oNLPK8mLvkcXYadSPKqm/x
 y/Y39tW/nuO1BQ8ESAGB6yOZyS1xH9d1WBu936qsPOCUgbCpRdYKrcAMLVGYImmvVO6zqw
 RvEB2DUMsDqK/4U2M/Rb3mukfu25dFU5jwdzFOk5FiVjTntR0nYU9+SKM8ZV1/b47xmBFw
 qSZZAOaIyA+re6uTdijQl1HJJ0mCTKkXoUaZZYGBGDvpPz9rXwF/+EZuU75VY3RVezvLKq
 TlU9/cV1ZE+txSQ9c7o6JS2k8HEhR9X6Cj/+eQsoe9soLG5SiJhO5Zaj6yNdfA==
ARC-Authentication-Results: i=1; ORIGINATING;
 auth=pass smtp.auth=timo.lindfors smtp.mailfrom=timo.lindfors@iki.fi
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi;
 s=lahtoruutu; t=1654939657;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=gmD062XzLttQUxX2K4KYK7MrwPBgdCVxrJakyfWqHv4=;
 b=eoqspDupB+WccYZd2di4XxnnNEzhkKHmqdVM3GA29z7MzeWNnDThE89hsj7EZ72RxbubX5
 cnVGlj3nST3QYFGVeFiPx/Jhh6XtRkksIZKFAVC7eGu/xkh4WxnlAz7nAv/QvqH6vmVDPC
 DOF/gCrMAIe1PSojb4hH1pIbWnyJA4ESzMSGCry7WOqNimSKw8XDnevI0DC49Wa5I6EBRy
 xTCreXGKwMb01slRZ8UsP/OyNLCxj4omrsEhD3AIZfg4On1Eo2nTVsmyOeDzzRvArH3qPU
 /0KrrEGDPwMDnIIjPVgd/Z1NGn/LyvofJE7FHEcg/4YikPmXLVX2IYKcNiGOxQ==
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, 10 Jun 2022, Tony Camuso wrote: > If your system is
 booting in efi mode, then it needs efi. > If it's booting in legacy bios
 mode, then it doesn't need efi Commit
 https://sourceforge.net/p/tboot/code/ci/aad782103a6e
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.185.170.37 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1nzxhy-00Ez0f-Cb
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
Cc: tboot-devel@lists.sourceforge.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: tboot-devel-bounces@lists.sourceforge.net


On Fri, 10 Jun 2022, Tony Camuso wrote:
> If your system is booting in efi mode, then it needs efi.
> If it's booting in legacy bios mode, then it doesn't need efi

Commit https://sourceforge.net/p/tboot/code/ci/aad782103a6e

says that

"Note that booting *without* noefi is a security risk since the EFI 
runtime is not part of the trust base after a dynamic launch."


This suggests to me that you need to use "noefi" on an EFI system to 
minimize risks.

-Timo


_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
