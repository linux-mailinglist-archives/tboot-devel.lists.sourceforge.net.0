Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 435F618E23F
	for <lists+tboot-devel@lfdr.de>; Sat, 21 Mar 2020 15:59:47 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1jFfbB-0000vQ-43; Sat, 21 Mar 2020 14:59:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <altima100@gmail.com>) id 1jFfbA-0000vJ-Eu
 for tboot-devel@lists.sourceforge.net; Sat, 21 Mar 2020 14:59:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Cc:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KflKHSxjbU8UaKzGQQGXXjvHMbg9k2vzubAcEvkE0xg=; b=Kbs9+Xt/f5SzY3983/E2Fe0Z+
 FsK0IXr5GPzoaFTdYmttDfKg/FGtEa+9su6gvwfElB0KWXBHilX9x8l0KpnAppjJ1LONIvLaujR+D
 YpyrvDX7TAG1u1zSPHkvrxKbi0rrpFw7+cFzSopzoHjmd6eh59E5CoH8ezKkRgFRkPyq0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=KflKHSxjbU8UaKzGQQGXXjvHMbg9k2vzubAcEvkE0xg=; b=bwF0blBKrtxajCKcT2YYEVSPAk
 21eBwQtzfO29Bo8IHSWqCp9FvPfrRB/xa3gFiKsXhnybbHK+AMjS/rqAqmP+IbNsWvHmj0KYRnQFJ
 QeJ7UCPBlMZZAByEwYm1flk6NG1EWIg9s9/mNP6O/a3elMR+g6mxgUvEhLacIZ2PZh28=;
Received: from mail-lj1-f174.google.com ([209.85.208.174])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jFfb6-00BU1v-Bt
 for tboot-devel@lists.sourceforge.net; Sat, 21 Mar 2020 14:59:40 +0000
Received: by mail-lj1-f174.google.com with SMTP id q19so9620594ljp.9
 for <tboot-devel@lists.sourceforge.net>; Sat, 21 Mar 2020 07:59:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=KflKHSxjbU8UaKzGQQGXXjvHMbg9k2vzubAcEvkE0xg=;
 b=E1VVZrMEK5OPlyMeHIp0/YieYl2UGI2p/hiC/jO64I4SmZPfx/0Rq9a8t/b+ZgWGoU
 o/JhQrz1OA8kgrVRd3iQ3lH31zj//WZWY/VkJDnxPcMWxubbinFjR3jrsAwlofj3sekQ
 Iwf5Xx7JpnbqTxJhL6pfumbZBAwu1OoVfM8Oh2wuyC4FF0xkkZI/UbBe8jEIKdL0kzbG
 +YDoSvbvIHeY3CkS1PXGxeOWJ5vqNsry25GoGywtCq7kEMxJIEnKH0LYD2sN1NXwmQxg
 2v6pptI0cvTA2EZ8DIrkti31eccTGLpDsE7sM9cDftSHIhRaYUrwyw0TwEH2d0XZQYBF
 v8dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=KflKHSxjbU8UaKzGQQGXXjvHMbg9k2vzubAcEvkE0xg=;
 b=Qbspk65Zrcuc2GCZulu+b65UjwBUA4puBryqdVHj84XkPo6rxZB+NeBx4I7qPKwrA1
 rdYDAJlakOxJmhLi+qlKBYVwKpJxvNhACfTzn0nKg286qrnnoNjPI5sRnvTKQLjj1ndy
 pOZ5rRuzVoZsxBOfVCRqiac6wXaH7bYX7DGIAfRIUCT6b7fs7aYn50dJZPO2CAp4yNOJ
 FLA71kBF5/epKsdHDT2pGoRu/0eHV0YEcXZHiJ+VJX9tppZgnCHBPtiyFVdlOE/dTBfD
 K5YtRX/jl3w62FGEolwvmL3G01gnjWnKme/3j5jsjwcKXs3DGuLvzpgUAoCuT62gIrJF
 YXDw==
X-Gm-Message-State: ANhLgQ2/2DjpspYGCwO97qNNt/XrRKS1t+YhAg7ETFQkDNXAMb86omVE
 QjM9m7DahLb0msX05lTPH5bAMg/T/8ebzPyfpBlHp2QI
X-Google-Smtp-Source: ADFU+vsX0aSMSFU+CFVSiRG6isn2WlQFIzzYeI1Vfz3qojd/cDzx0gWoeUv1XXiBolHyywJuqVNVWMYFIKl62frj+Is=
X-Received: by 2002:a2e:b558:: with SMTP id a24mr884660ljn.56.1584802768354;
 Sat, 21 Mar 2020 07:59:28 -0700 (PDT)
MIME-Version: 1.0
References: <CA+Hp=S+_AM+XHxJKnc95Qm6jwmRmuiUoayE6rzw8wetFEpVWyw@mail.gmail.com>
In-Reply-To: <CA+Hp=S+_AM+XHxJKnc95Qm6jwmRmuiUoayE6rzw8wetFEpVWyw@mail.gmail.com>
From: Mat <altima100@gmail.com>
Date: Sat, 21 Mar 2020 07:59:16 -0700
Message-ID: <CA+Hp=SKZC2ONVY4DyhTu3E-Xmwr0-u99uYHgVuDYJ6idosGJTg@mail.gmail.com>
To: tboot-devel@lists.sourceforge.net
X-Spam-Score: 1.1 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (altima100[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.208.174 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.174 listed in wl.mailspike.net]
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
X-Headers-End: 1jFfb6-00BU1v-Bt
Subject: [tboot-devel] private key compromise in secure boot
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
Content-Type: multipart/mixed; boundary="===============0715214524096265974=="
Errors-To: tboot-devel-bounces@lists.sourceforge.net

--===============0715214524096265974==
Content-Type: multipart/alternative; boundary="0000000000000c00ad05a15ea6a9"

--0000000000000c00ad05a15ea6a9
Content-Type: text/plain; charset="UTF-8"

How would one design handling private key(used to sign image) compromise in
the secure/trusted boot solution on embedded devices like routers sold to
millions of customers?

I am looking for step-by-step instructions including how would patch these
devices in the event private key is leaked.

>

--0000000000000c00ad05a15ea6a9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div>How would one design handling p=
rivate key(used to sign image) compromise in the secure/trusted boot soluti=
on on embedded devices like routers sold to millions of customers?<div><br>=
</div><div>I am looking for step-by-step instructions including how would p=
atch these devices in the event private key is leaked.</div><div><div class=
=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
</blockquote></div></div></div>

--0000000000000c00ad05a15ea6a9--


--===============0715214524096265974==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============0715214524096265974==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel

--===============0715214524096265974==--

