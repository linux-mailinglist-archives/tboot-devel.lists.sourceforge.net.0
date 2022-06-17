Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B8B7754FF7A
	for <lists+tboot-devel@lfdr.de>; Fri, 17 Jun 2022 23:45:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1o2JmR-0003K7-RX; Fri, 17 Jun 2022 21:45:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <lukasz@hawrylko.pl>) id 1o2JmQ-0003K1-5s
 for tboot-devel@lists.sourceforge.net; Fri, 17 Jun 2022 21:45:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :References:In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xgmtSneTKOQkULvXIAwlykqr5g/42fUxGgERbdKfm8g=; b=JGQtqjOLIOXxe7MYxhck6qeQO/
 zcudFBxRZaA6+dnDSH3fXXfGfH0/6efWBVQqDxJ969NxJ2jQ7F1qVUH2mDVgCZR/l0mBOA5A39KiV
 wEfwfAi3ZMRVYHRJeSB9wU9ujXnoWK09AQkw+arnabKMFefNC9rlT3fRKOxn/oeC5bSM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:References:
 In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xgmtSneTKOQkULvXIAwlykqr5g/42fUxGgERbdKfm8g=; b=U1tXkm2XSQdde8GROvlBNOL10d
 waXWoRnbEQ1HlyTbZVuIpUuJoUNyOoVcILOMhn4id+aa1iGIUSAV0OXS/h/opwN2ZZMFLnn2JYk9T
 4MUGjfaLamPH+AKeA2QbhT/1GXaW0cnN5OUuTYUEsvjqSBrxO4RSh+vjCYiogBzCwkP4=;
Received: from hawrylko.pl ([54.37.138.145])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o2JmO-005bH2-Eq
 for tboot-devel@lists.sourceforge.net; Fri, 17 Jun 2022 21:45:26 +0000
Received: from shaman-lnx.home.arpa (apn-31-1-144-70.dynamic.gprs.plus.pl
 [31.1.144.70]) by hawrylko.pl (Postfix) with ESMTPSA id 0FDE03E859;
 Fri, 17 Jun 2022 23:28:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=hawrylko.pl;
 s=201812; t=1655501303;
 bh=uCB97jXvrVvyC43tz70/c1m1fh4PWPtsXhyz8GedFZI=;
 h=Subject:From:To:Date:In-Reply-To:References:From;
 b=fYTRJ7A/UdV+mbrzvkKVCbFdsFRqsVw/6EcK7bTeW7FP5SCGrINdgTDE/UjaMKHO3
 Hszqo/MLvTsNTkYtVyAbC0ojNEhct3364jdBcawjPmG+roi9TMNS7kOFsI1TzWoYZr
 aE3WxlfqXcDoZxa0a9h7XIvrze2rxnCfN0U4w+43EfDo8C45TW2f6EsUjE9Zi1uJEJ
 oCWPlOfeZdYBKPhqwwyWGNaRO5a3wp6iKL8iK0oXcaGXXYaFEctn7yyq+WUBmR1WBQ
 3BjvW74UXKavIiRvc+73IkQq0fliiOsNJExD+/njBo+XNRzgEkms9FkwLXb+ZmAKdx
 67ZmpyDiaXKNg==
Message-ID: <7349c4d663943657a268f762596e39d5e6bbc077.camel@hawrylko.pl>
To: Tony Camuso <tcamuso@redhat.com>, tboot-devel@lists.sourceforge.net
Date: Fri, 17 Jun 2022 23:28:22 +0200
In-Reply-To: <ab6971de-9fd8-eb64-94d7-af4ebf4b4cd0@redhat.com>
References: <ab6971de-9fd8-eb64-94d7-af4ebf4b4cd0@redhat.com>
User-Agent: Evolution 3.44.1-2 
MIME-Version: 1.0
X-Helo-Check: bad, Forged Random Domain (hawrylko.pl)
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Tony On Thu, 2022-06-09 at 15:04 -0400, Tony Camuso wrote:
 > # HG changeset patch > # User Tony Camuso <tcamuso@redhhat.com> > # Date
 1654800659 14400 > # Thu Jun 09 14:50:59 2022 -0400 > # Node ID be868f5 [...]
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1o2JmO-005bH2-Eq
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
From: =?UTF-8?Q?=C5=81ukasz_Hawry=C5=82ko?= via tboot-devel
 <tboot-devel@lists.sourceforge.net>
Reply-To: =?UTF-8?Q?=C5=81ukasz_Hawry=C5=82ko?= <lukasz@hawrylko.pl>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tboot-devel-bounces@lists.sourceforge.net

Hi Tony

On Thu, 2022-06-09 at 15:04 -0400, Tony Camuso wrote:
> # HG changeset patch
> # User Tony Camuso <tcamuso@redhhat.com>
> # Date 1654800659 14400
> #      Thu Jun 09 14:50:59 2022 -0400
> # Node ID be868f53407d4460491a0e77e5165025153b0329
> # Parent  206a47f3e9d2c18c8a3db082216ee6fc3c5d475c
> 20_linux_tboot: efi logic was inverted
> 
> There was a RAID0 system that could boot normally, but not through
> a tboot launch. The problem was that the logic in this script
> incorrectly appended 'noefi' to the grub.cfg module2 kernel stanza.
> 
> When 'noefi' was removed from that stanza, the system could boot
> through a tboot launch. This patch corrects the logic in the script.
> 
> diff -r 206a47f3e9d2 -r be868f53407d tboot/20_linux_tboot
> --- a/tboot/20_linux_tboot	Thu Mar 17 23:58:50 2022 +0200
> +++ b/tboot/20_linux_tboot	Thu Jun 09 14:50:59 2022 -0400
> @@ -105,11 +105,11 @@
>     if [ -d /sys/firmware/efi ] ; then
>         mb_directive="multiboot2"
>         mb_mod_directive="module2"
> -      mb_extra_kernel="noefi"
> +      mb_extra_kernel=""
>     else
>         mb_directive="multiboot2"
>         mb_mod_directive="module2"
> -      mb_extra_kernel=""
> +      mb_extra_kernel="noefi"
>     fi
>   
>     printf "menuentry '${title}' ${CLASS} {\n" "${os}" "${tboot_version}" "${version}"
> 

'noefi' flag tells the kernel that even if current system is EFI based
it must not use EFI services (to be precisely EFI Runtime Services).
This is required because EFI is not a part of TXT TCB. After system
enters TXT environment it must execute only the code that is measured.
As EFI (and BIOS in general) is not measured from TXT perspective you
are not allowed to use it. That's why 'noefi' flag is added.

Logic is correct in the original version. When EFI capable system is
detected it adds 'noefi' flag to prevent kernel from using EFI. On 
non-EFI systems this flag is pointless because kernel can't use EFI
services if they do not exist.

If removing 'noefi' flag solves your issue, you should find out why.
Maybe there is some information that kernel retrieves from EFI Runtime
Services that is required to properly boot the platform. If this is the
case, the only way to fix this correctly is to get this information in
tboot, before GETSEC[SENTER], and that in some way pass it to the
kernel.

Thanks,
Lukasz


_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
