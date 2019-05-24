Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 78F9628F06
	for <lists+tboot-devel@lfdr.de>; Fri, 24 May 2019 04:13:58 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1hTziP-0004Iu-4a; Fri, 24 May 2019 02:13:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <xanthein310@gmail.com>) id 1hTziL-0004Ie-PU
 for tboot-devel@lists.sourceforge.net; Fri, 24 May 2019 02:13:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=00r6E5gd7OTKiM+Z0EyvILuSSQeDJfSnhefHD3EpGQo=; b=b+7aQpQPq6BY51TsTGqEtVqQPk
 B/zd4Z9WOYDpIqT3Dgcs/YDZW1HSVXICDaZwYgTB1Bht+BYHTz9vhNmR9m+17Gte0SsIEFNgcICr5
 tjzJoJ1z7t2sQPdqzKNDdIHsgoiIazHO17RUFJwL0ZSwi/sEQon2xJ6GOLjQKMrp6SlY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=00r6E5gd7OTKiM+Z0EyvILuSSQeDJfSnhefHD3EpGQo=; b=l
 0vvcR5MZDIlwpPIeM3ziS279Pzsryxxw91K7QckfhgZkdCSO5El3bl6aK/VqtI8uszn9wNv37CXPB
 Mc2ZHzSj4k0HSk/bjjsRs8sHGR5gfkzOA7b/GBA2kLfCukSq5milFhYjbRBW4DDiase/TJcXi/Slm
 07fAjEvwMzDK8kks=;
Received: from mail-it1-f169.google.com ([209.85.166.169])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hTziK-00BNx4-HH
 for tboot-devel@lists.sourceforge.net; Fri, 24 May 2019 02:13:45 +0000
Received: by mail-it1-f169.google.com with SMTP id m3so13316900itl.1
 for <tboot-devel@lists.sourceforge.net>; Thu, 23 May 2019 19:13:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=00r6E5gd7OTKiM+Z0EyvILuSSQeDJfSnhefHD3EpGQo=;
 b=ET5Pho4850lACSH2lNmgQFnQet6j2zivnu5acByWm8tKBHatiJ9axJbyelG/Cz8oMT
 aovpxmny0AZO0XtVt8R2YT1/hF+WLf/zK8xc58vHf2CXun3kNzv/bXuxXuWD8eObfDuM
 2hlLTYNSJHgH6LvXesHy0uO/JXERyNE7wQ6WVPEu7U49re7P485Ydd/DqSnjFP/FeN/j
 GqZJ+fkbgT1CecQOuekWajl0zOMaDhqe0joyrzFVk9vRMIDrCdTYavGm227tpYW6LKNr
 szS129plZZqhzah7xRUJAT6GOMjJ43CphokkbKNHch44vJ9+IrZpXDGD2EjLTXZCNJ5p
 m7JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=00r6E5gd7OTKiM+Z0EyvILuSSQeDJfSnhefHD3EpGQo=;
 b=oRzUwfVhgWVgzXKQ/oEpclL6tmXJe+HLVrVJq18N5dwOul3hz6XZAuenpfw43v+Lp/
 i+yxEPP3YLavRbLPBz6c6HVL0RbN8MoR09AWPRdJLL3eWCGRdmQleQtPWhMXEWDx1yVZ
 WEkTithGSxSIWDP13X8dUtTN6/58yfN6LyoB77hjHWuKRi8/KxqOrOxvBjHNQYTCVccR
 QhUGHckiAHGEdshB3Gj6DKNr3dugtQFL0J1AqBzQy7iwJZQ9/xJNDKG/hxgHN6oDnqo+
 Ne6hx1iB0RkhrPU7qAdzfMtxIe8igqcGNm99Y+tNXrxgLa0aYGGFDpBEUJ86jJQyPdEG
 D6lw==
X-Gm-Message-State: APjAAAWqN6vvKWFNxJad9y/EYl5EpCrn7jDDrBvFEnRVYGcRH67uCUJM
 JmpCUWc44leMi3MiK3xnVDcLbeu3TUEFP9wSDZZVyOHh
X-Google-Smtp-Source: APXvYqzl2b/z2Xd1kfV0DlozlkHhW26cvrltC/gcsHH2DrbMLyUHb51tzB3YM0RuPoBI9Ub6/RXdAQopgbBrWEv+G00=
X-Received: by 2002:a05:660c:2c5:: with SMTP id
 j5mr14999865itd.41.1558664018518; 
 Thu, 23 May 2019 19:13:38 -0700 (PDT)
MIME-Version: 1.0
From: Dirk <xanthein310@gmail.com>
Date: Fri, 24 May 2019 10:13:27 +0800
Message-ID: <CAMD4Mu7yGO3Vm6G9PWup_MhB6Ab3RD3z4BRSec2wQQ8TbcpepQ@mail.gmail.com>
To: tboot-devel@lists.sourceforge.net
X-Spam-Score: 1.2 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (xanthein310[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.166.169 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
 digit (xanthein310[at]gmail.com)
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1hTziK-00BNx4-HH
Subject: [tboot-devel] Create LCP_PCONF_ELEMENT with TPM 2.0
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
Content-Type: multipart/mixed; boundary="===============4592356407342554286=="
Errors-To: tboot-devel-bounces@lists.sourceforge.net

--===============4592356407342554286==
Content-Type: multipart/alternative; boundary="00000000000025e8c5058998bfb3"

--00000000000025e8c5058998bfb3
Content-Type: text/plain; charset="UTF-8"

Hi,

I am using tboot 1.9.9 and find there seems no way to create
LCP_PCONF_ELEMENT
with TPM 2.0. Tool lcp2_crtpolelt only support mle, custom, sbios and stm.
Is there any
way to create pconf element?

Regards,
Dirk

--00000000000025e8c5058998bfb3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div>I am using tboot 1.9.9 a=
nd find there seems no way to create LCP_PCONF_ELEMENT</div><div>with TPM 2=
.0. Tool lcp2_crtpolelt only support mle, custom, sbios and stm. Is there a=
ny</div><div>way to create pconf element?</div><div><br></div><div>Regards,=
</div><div>Dirk<br></div></div>

--00000000000025e8c5058998bfb3--


--===============4592356407342554286==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============4592356407342554286==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel

--===============4592356407342554286==--

