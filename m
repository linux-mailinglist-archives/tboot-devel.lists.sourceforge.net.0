Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 952794A5A5D
	for <lists+tboot-devel@lfdr.de>; Tue,  1 Feb 2022 11:44:06 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1nEqdl-0006pw-AR; Tue, 01 Feb 2022 10:44:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <lukasz@hawrylko.pl>) id 1nEqdj-0006pq-9V
 for tboot-devel@lists.sourceforge.net; Tue, 01 Feb 2022 10:43:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SDOmp51KPebuCphYQgRDv9B1RCPRyBa/iWniiZcWf6o=; b=egysMmuUTrU6W6En1g47OE8s/s
 OmkTkX0aDYiDH+jhM93pSSzJjm6ggHaSAo2LnuEC0pvh08lazQFTJ9JDER2rGNoAtTtme3WS4plmy
 pj5uGsDY6/PMCq970k6qAqbRw6M0BJv94Cq3fiXwkvbSSTZCsUmMcgpiCYROEWUJuRpE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=SDOmp51KPebuCphYQgRDv9B1RCPRyBa/iWniiZcWf6o=; b=m7VVyd0yY0YudvZueJGR6knyHF
 7BD4qbbJ2Af0IHydDmqgztxdCa2xUz/qnpTp0oCqV8ogsXoaWBSaKhacCtdvK+tV/8znHLNR6Kayc
 VTitKed8LEVunBf+Bef/eyC+81tTeM6KxUWnCa6/7OecWXTtFIyA+cs6AUwnzSW1XHyw=;
Received: from hawrylko.pl ([54.37.138.145])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nEqdc-00A6TN-TT
 for tboot-devel@lists.sourceforge.net; Tue, 01 Feb 2022 10:43:56 +0000
Received: from lh-lnx.home.arpa (apn-77-112-204-154.dynamic.gprs.plus.pl
 [77.112.204.154])
 by hawrylko.pl (Postfix) with ESMTPSA id C5F204294A;
 Tue,  1 Feb 2022 11:25:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=hawrylko.pl;
 s=201812; t=1643711131;
 bh=MCrzkFprWzTyU20GEVSJKaj17j4h9C96yJyiDiBKYHw=;
 h=Subject:From:To:Date:In-Reply-To:References:From;
 b=JRo6yuyFtLW90ND9FtF/c8DyyklIq7u3822zaB1lGKx1vTg1kF587hjR2mKqvkcBQ
 1LU960UCzsxJXoTYEWylMoBps4ruzhpDFtcKRDkz1wP8hc7DFwbrASCJaAxdNqY+/D
 wj6gqNMh8B/iIgcR+G/qYJoErjeqPdwor8kRQZ4p2L2+p+KnUgchI50pLyWzt5g9/m
 s1m7KW0MW4hlOt+Bc5quXfWIcJAGo+TyTf1lMofzG8dL02kDOostXPyAJZMv1uN8RV
 X8WrwOMB0FWZ1fRfqRA/sgE6IgnvmBPPOX3OU08EGfWNqTtJ8e0ngvsdz28AaNDmMG
 wXNfjOWrR6+bg==
Message-ID: <dcb47ad40ac22b08380312c1c18f322848ccd4d6.camel@hawrylko.pl>
To: Derek Dolney <z23@posteo.net>, tboot-devel@lists.sourceforge.net
Date: Tue, 01 Feb 2022 11:25:30 +0100
In-Reply-To: <4b3349f2-69f2-d6d3-ab66-6178af102333@posteo.net>
References: <4b3349f2-69f2-d6d3-ab66-6178af102333@posteo.net>
User-Agent: Evolution 3.42.2-1 
MIME-Version: 1.0
X-Helo-Check: bad, Forged Random Domain (hawrylko.pl)
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Derek On Mon, 2022-01-31 at 17:26 +0000,
 Derek Dolney wrote:
 > I am using tboot 1.10.3 and all was working fine with Linux kernel >
 5.10.88.
 However, I upgraded to kernel 5.15.16 and, while booting seems > [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1nEqdc-00A6TN-TT
Subject: Re: [tboot-devel] suspend problem since kernel 5.15
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

Hi Derek

On Mon, 2022-01-31 at 17:26 +0000, Derek Dolney wrote:
> I am using tboot 1.10.3 and all was working fine with Linux kernel
> 5.10.88. However, I upgraded to kernel 5.15.16 and, while booting seems
> to happen properly, suspend is broken. I am using a Lenovo T460p.
> Usually when suspending the power button LED will blink 8 times and then
> it goes into a sleep state. With the newer kernel I get power LED and
> caps lock LED blinking, cpu fan runs fast, and can't get out of that
> state. Need to hard powerdown.
> 
> Attaching a txt-stat output. Any ideas what may be happening? Seems like
> I maybe need to report to the kernel devs, but let me know if you have
> some other suggestions. I could do a git bisect of the kernel source and
> probably find the kernel code changes that broke suspend for me. Please
> advise

Without serial console, I guess that as you have a laptop you don't
have RS232 port, it will not be an easy task to debug the issue.

During S3 suspend Linux kernel is jumping to tboot's shutdown entry
point to seal RAM content. You can try to comment out this behavior in
Linux kernel to see if still you can see the issue. This experiment may
tell us if hang is related to tboot's shutdown handler or not.

Lukasz


_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
