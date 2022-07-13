Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C056A573E0A
	for <lists+tboot-devel@lfdr.de>; Wed, 13 Jul 2022 22:46:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1oBjFn-0006Y1-Pc; Wed, 13 Jul 2022 20:46:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <lukasz@hawrylko.pl>) id 1oBjFl-0006Xv-1q
 for tboot-devel@lists.sourceforge.net; Wed, 13 Jul 2022 20:46:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :References:In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3ogyhUzzqrP3RS5l8mDfYIq4XhDaEzzTre4p7rSxzkY=; b=OLerAHeGbSQ/kh/1xDq28I3kDX
 sEyz62KcF6NSVyP+yCsXsOakSgpUPbqA0hVgHX8iis4iogA1H5YNpfn6DSuv9EBpv6JBTpgXydHcg
 v+9QLt2p2MYifBUXX59xeBh9kl7E1crTY2RC8Q+FjWOR9dGCQgL84wKptURQsh8XKSHQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:References:
 In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=3ogyhUzzqrP3RS5l8mDfYIq4XhDaEzzTre4p7rSxzkY=; b=IJ8nGtcLp5saQx+ZTZ5l6fb78T
 egVFKttN/kCYrYUGNXmdH7lYFg2LpXIBDmWFjWzJ6jkayERHti90YqEt2asckDukawrhKB/HSlgRT
 gG4Q4DFf42iQiAazSh/FB5ZvBCVJzB9pU6NvNGoEfWpurOIP1wR5D85CIVaw/PeOGEMw=;
Received: from hawrylko.pl ([54.37.138.145])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1oBjFh-0005Hv-Pb
 for tboot-devel@lists.sourceforge.net; Wed, 13 Jul 2022 20:46:35 +0000
Received: from shaman-lnx.home.arpa (apn-77-113-6-113.dynamic.gprs.plus.pl
 [77.113.6.113]) by hawrylko.pl (Postfix) with ESMTPSA id 2BAAE448A9;
 Wed, 13 Jul 2022 22:46:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=hawrylko.pl;
 s=201812; t=1657745179;
 bh=MnoJX3o9WcYu66jDQsWGnKwZrfLB3LBUi79Nbbhh0cM=;
 h=Subject:From:To:Date:In-Reply-To:References:From;
 b=YVzIEj+KfWhAJypy9kwmSJagpDdnk3pOSnjOQh2RiTnHnnOqsbcw+Dc+NaAmSDj0M
 cgCxv+9f/KbdBH0pF9Rzw5JziumaI2oDeNAnd56+e1w6wBrcOutxRKgjCWP6pXLLzT
 QXrQn415IlSDDiJaoei6jwgUbHxYaktdXy67F9LN17JqlPKGxW8XNdTwG0OdTkFEuW
 GoLmhoA3JS8FCf1w7r0VNhJ8V2BPh733AdQe9mYWpm/sU9xWzZnG7/VW4tSwi61ZPp
 HPJ/FXi0YWLqdpkzuctDsCs5miwcAAkB1ATcgTqHec+uFga1nbtEhqt8/6NzMzf6Mm
 h76gapuvHpSaw==
Message-ID: <f8f9882bc3218da18584c35a08eae1860dd3d2fa.camel@hawrylko.pl>
To: Alex Olson <this.is.a0lson@gmail.com>, tboot-devel@lists.sourceforge.net
Date: Wed, 13 Jul 2022 22:46:18 +0200
In-Reply-To: <4455e5f75334bf0141a377b771e7707c6748cc35.camel@gmail.com>
References: <4455e5f75334bf0141a377b771e7707c6748cc35.camel@gmail.com>
User-Agent: Evolution 3.44.3-1 
MIME-Version: 1.0
X-Helo-Check: bad, Forged Random Domain (hawrylko.pl)
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Alex On Mon, 2022-07-11 at 13:00 -0500, Alex Olson wrote:
 > # HG changeset patch > # User Alex Olson <alex.olson@starlab.io> > # Date
 1657558891 18000 > # Mon Jul 11 12:01:31 2022 -0500 > # Node ID 0552b7a [...]
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
X-Headers-End: 1oBjFh-0005Hv-Pb
Subject: Re: [tboot-devel] [PATCH] Correct IDT exception handler addresses
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

Hi Alex

On Mon, 2022-07-11 at 13:00 -0500, Alex Olson wrote:
> # HG changeset patch
> # User Alex Olson <alex.olson@starlab.io>
> # Date 1657558891 18000
> #      Mon Jul 11 12:01:31 2022 -0500
> # Node ID 0552b7ac10e28b378dd139e5ca3838039c472827
> # Parent  fa60b63892e8f9d4278950b44ed136d2b12d19cc
> Correct IDT exception handler addresses
> 
> The exception handlers configured in the IDT weren't properly executed
> during exceptions as _start/TBOOT_START are not 64K aligned (0x804000).
> 
> This revision corrects the arithmetic so that the "int_handler" routine
> gets properly executed instead of "int_handler - 0x4000".
> 
> NOTE: A simple way to test this is to insert 'asm volatile("ud2");' in begin_launch().
> 

Thank you for the patch.

Lukasz


_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
