Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B0A991121B7
	for <lists+tboot-devel@lfdr.de>; Wed,  4 Dec 2019 04:03:06 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1icKwO-00034U-F7; Wed, 04 Dec 2019 03:03:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <altima100@gmail.com>) id 1icKwN-00034M-0h
 for tboot-devel@lists.sourceforge.net; Wed, 04 Dec 2019 03:02:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BUoGaQgX/rVH9EjBZiAe506D6qxtiNZlDFHVfEZqrXQ=; b=H46Bnfx26i5UTB8dSW+aXqQ08p
 fOGIPomAnksSosBgRFyom2Hlhn7/wtdrSt+HNF8OkkqOG+xC5v2U3e95VQ58R1gANR14Ibkm9bwXP
 3rRyYkVdVoUB45h2wuNTvc5emmU+KB6gnSMJ1mNqZbSgDmrg8zQAMC/1EiqmkiOVf4Bg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=BUoGaQgX/rVH9EjBZiAe506D6qxtiNZlDFHVfEZqrXQ=; b=m
 OvDOYWvi0YSo23ZkLvA9Rif78gk67kdqp5tqLPR3V4uZC0TP8POvxwXP1Le/Ht/ibNdzjzwRrIhZx
 Lf2GZ0I3k0Tit11nnjbI7xeD+Lwy1gPjEveseOCtOdqGXUqC9YL+aXA7hHy5l4FnlS6z2K3sxPuAF
 L5EFqYoF23CFJoCg=;
Received: from mail-lj1-f172.google.com ([209.85.208.172])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1icKwL-006h6p-Ni
 for tboot-devel@lists.sourceforge.net; Wed, 04 Dec 2019 03:02:58 +0000
Received: by mail-lj1-f172.google.com with SMTP id a13so6200592ljm.10
 for <tboot-devel@lists.sourceforge.net>; Tue, 03 Dec 2019 19:02:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=BUoGaQgX/rVH9EjBZiAe506D6qxtiNZlDFHVfEZqrXQ=;
 b=Hn8sAWnkzGp+MryC5KUBBUIOYGhtQ0IGYtkz9Q5a6Vca9Jo/9bvbNzK77iASHq0oAz
 iaeFzUHr7Ol0feizRMpEwa32ZzJHeEkNd0cvYinDS1pY2b7ndA3y837z8PKcZEILa+XP
 r+F5q0x77jYNk8fWLql8/MM91oyknNiFOYlN0EI7rb26/0ZZd6j15jHdQvT7vA2MuhGW
 EyJey5QcaUkCpbMg0UorTgifVimBBUyFitVoCM2EnH/9iBCIWgbRUpT9R8DWMYtvnhyx
 5nAsGx3sDgSkKnA5SX7PT3u7wSayxLAYGp9gokGkzxe4CTGgWreF7cG55jANiXG2JBxy
 cmsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=BUoGaQgX/rVH9EjBZiAe506D6qxtiNZlDFHVfEZqrXQ=;
 b=WJAAF/Y6zABYVR6VjQ9V9qTLJLbOtAdn8RGTSZW0hRdCfAvZ8kcUI0st66wbA5JHAI
 HSPtmxOqcHsxq5pv6hmxXaQWca5NPYGh2KGIDnRZef1DuP9M7oqjncR/KdH7jyQktDkJ
 jiUnh0xGbYatxwKsaIdQ5e1wkDbdTP5Y7WuiBKV/h6XTzqBsg3UjXk61kwG/uzTxpFly
 qh3MWoZoQfRsYKQVIfExbClCDw3Waak1hmTg2h9SLJBiQ2idtF35rCXUUvA3DEkFveKj
 7WeyAgs4J1HJzH45zCEB0f7smPAoJSd456y91DGkWtW871v8/+tkQI7566dhOppnE0bQ
 tIkQ==
X-Gm-Message-State: APjAAAWPuV/jK7XONiPqwdYYQd5w41FrYjoo+jZIYTpnveKgoqhe9oKn
 1/K0zHEZA8ati3bBuJd0zPbBAagCjXRh3Ep/A4tOdg==
X-Google-Smtp-Source: APXvYqy2ID+8XXXSazI7zH7d7Co1C1i/AIhhwYmP9uXF5hN2+7dvQsmdLVkyUcTMWlpvTZsE2BEOJkf9xFJcjmnx1D8=
X-Received: by 2002:a2e:b604:: with SMTP id r4mr458387ljn.134.1575428569349;
 Tue, 03 Dec 2019 19:02:49 -0800 (PST)
MIME-Version: 1.0
From: Mat <altima100@gmail.com>
Date: Tue, 3 Dec 2019 19:05:06 -0800
Message-ID: <CA+Hp=S+eV0ZYcN=jSC6CBr4Eik97VWP4ccfbcZKk-T25PzJ6Hg@mail.gmail.com>
To: tboot-devel@lists.sourceforge.net
X-Spam-Score: 1.1 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (altima100[at]gmail.com)
 -0.1 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.172 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.208.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
 digit (altima100[at]gmail.com)
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1icKwL-006h6p-Ni
Subject: [tboot-devel] leveraging native secure boot from chip vendors
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
Content-Type: multipart/mixed; boundary="===============8936745891459630286=="
Errors-To: tboot-devel-bounces@lists.sourceforge.net

--===============8936745891459630286==
Content-Type: multipart/alternative; boundary="0000000000003ec2f90598d80ca8"

--0000000000003ec2f90598d80ca8
Content-Type: text/plain; charset="UTF-8"

e.g., Qualcomm does support native secure boot. Any pros/cons using such
native solutions versus other solutions?

--0000000000003ec2f90598d80ca8
Content-Type: text/html; charset="UTF-8"

<div dir="ltr">e.g., Qualcomm does support native secure boot. Any pros/cons using such native solutions versus other solutions?</div>

--0000000000003ec2f90598d80ca8--


--===============8936745891459630286==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============8936745891459630286==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel

--===============8936745891459630286==--

