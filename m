Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FAC015807A
	for <lists+tboot-devel@lfdr.de>; Mon, 10 Feb 2020 18:07:42 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1j1CX1-0001yO-BM; Mon, 10 Feb 2020 17:07:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <paul@paul-moore.com>) id 1j1CWz-0001yH-GK
 for tboot-devel@lists.sourceforge.net; Mon, 10 Feb 2020 17:07:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=noZVYkVAAbOY7W3eAHGO9rGLtNlOJLq4oBPtqtKOUoU=; b=GUrZaUGuJcIrDbeEom7KCwyW7L
 j0xobEgYdVUhB6VB+/EZrfM+Op/GTzqKKo3Z1Rsc7/WMcEeDh8Ddiyac/xZxkjvb+eOoi1Yx20DWD
 uUFTmMo82bmloYcoYwLkwUnlCelUYTtmwDO36ENAmFCwftYZbJbO1p82ZEzuUzmYNFCQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=noZVYkVAAbOY7W3eAHGO9rGLtNlOJLq4oBPtqtKOUoU=; b=J9J+XhbngRiRuF/4v7g74E0U7Q
 WZE7bpaD6e7HBznZ1hQJOUc5o5TfjLYbWcl2Hh7GBZB7Dc2UA7fiEZPlNYFzwnD4yfFmHll/RfyMu
 2YupWD7xG72Qtd+z0kHU1vRNofdu6oiH66UD6WBidESCK8OKy5n6WZEcNRdviM6jpZks=;
Received: from mail-ed1-f42.google.com ([209.85.208.42])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1j1CWu-007j6j-7Y
 for tboot-devel@lists.sourceforge.net; Mon, 10 Feb 2020 17:07:33 +0000
Received: by mail-ed1-f42.google.com with SMTP id p3so1161703edx.7
 for <tboot-devel@lists.sourceforge.net>; Mon, 10 Feb 2020 09:07:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=paul-moore-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=noZVYkVAAbOY7W3eAHGO9rGLtNlOJLq4oBPtqtKOUoU=;
 b=lK578jc2CXpjmgSDKLp65CeYFRX6msm9O+nDhwcGFe1X9GrOoi21zQZX/CoIWNlt/U
 Jji/dHe0ZsARQRhOQ4lWTDJ97acZ1w1iMN9vgd6xiBU+NSiZlZ6fBjQC3pCENRwIMQrP
 adT/1q9OLrDI67ejHKmwhk1nRNIh2HodkyMPrzKTmH2PYjVYbRzFruqCM2pJvB6FmTfs
 4xe+eyGI82OnmMB5lGhlfe4Rhmp8uCqZ7op0KZVJfvk7vmmR09N5zpq/geEo37M6lafI
 6txNSjesev9PxtJEbMW3tu7+3Zr80NpYcLsfwCc1y7zQ6t0fN3UZp3eHJbejrg+/reEE
 AEIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=noZVYkVAAbOY7W3eAHGO9rGLtNlOJLq4oBPtqtKOUoU=;
 b=QmMBDc1ev+IpjtDgu0jlk/1jqJm4qL5t21ef5f8efguIBEdhe+WKSr2o1I5Zl6nUOE
 8OmRii5cGtm+CLSDnENaPzjwYjea7aa/q0fVGkfgxpN/ejL6VQI362IBZ8R/6ySXecSg
 TQephJbAXa9XZ3bS9N2QfCkf8jkn0+N3fpl/lsZEs1lcEwejXfPm800RfFxC15OPlyei
 oguRe2dwjzDpLP+SgPnzgqknbCg0xDf16TgfPfm1JibM0icINEVN/6mDl7NdndFm9bs6
 YhLHC9VIAoE04tKHUNotS+vlbld6g1BpoWlPIZejWkRtrcwPSG6BvcqpWcaugTcTVxkz
 EJGw==
X-Gm-Message-State: APjAAAU+FjBiO85qFUaADAJg5EVrJbvjmPf84qhmRqL0qweCaPGaioK4
 tZSLcUd5w3GqAVvBmhKy57XZ/CSSKnW615MYLm/eTb9Klw==
X-Google-Smtp-Source: APXvYqwpEZ23rZKL0g411Nj7xdahd2cB4PvSIpBrwTa0Pu9bhrOwUHFVve9RYFARBChF+c1T5ToYtf7LH3RpKyDqsuU=
X-Received: by 2002:aa7:db55:: with SMTP id n21mr2037939edt.31.1581354441487; 
 Mon, 10 Feb 2020 09:07:21 -0800 (PST)
MIME-Version: 1.0
References: <e8e68d193e448c7bdcb62c4d910d9c935e9bf6d0.camel@cisco.com>
In-Reply-To: <e8e68d193e448c7bdcb62c4d910d9c935e9bf6d0.camel@cisco.com>
From: Paul Moore <paul@paul-moore.com>
Date: Mon, 10 Feb 2020 12:07:10 -0500
Message-ID: <CAHC9VhT_P=Zkp+UYcCMZAN6megpQ3kOrry7LLH_XfZVTVsFFTA@mail.gmail.com>
To: "Paul Moore (pmoore2)" <pmoore2@cisco.com>
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.208.42 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.42 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.4 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1j1CWu-007j6j-7Y
Subject: Re: [tboot-devel] Update on my tboot kernel signature verification
 work
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
Cc: "tboot-devel@lists.sourceforge.net" <tboot-devel@lists.sourceforge.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tboot-devel-bounces@lists.sourceforge.net

On Wed, Feb 5, 2020 at 12:58 PM Paul Moore (pmoore2) via tboot-devel
<tboot-devel@lists.sourceforge.net> wrote:
> ... I do have some interest in pursuing this on my own time, but considering all of the other demands on my time I'm not certain how much I will be able to contribute.

On a somewhat related topic, can anyone recommend a small, inexpensive
system that has a TPM2 and supports Intel TXT on both UEFI and
UEFI/CMS (legacy BIOS) boot?  Sadly all of my current personal
crash-n-burn systems are TPM1.2 based.

-- 
paul moore
www.paul-moore.com


_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
