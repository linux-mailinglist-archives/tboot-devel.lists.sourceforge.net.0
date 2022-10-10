Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F3ED5F9BD4
	for <lists+tboot-devel@lfdr.de>; Mon, 10 Oct 2022 11:27:02 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1ohp3i-0002lH-19;
	Mon, 10 Oct 2022 09:26:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <lukasz@hawrylko.pl>) id 1ohp3e-0002lA-JR
 for tboot-devel@lists.sourceforge.net;
 Mon, 10 Oct 2022 09:26:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :References:In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Mf+YFTwO1pJfR9+xRmCnVOZ6uYd6VTcx60QobKpeFc8=; b=S6vbP0NgsIW2X0/igL2m4/FPyu
 p60VdNctIX195ZkeH4MkXo0AsEf6JEsMuzuhiikfwsQfE1TGI4MbBHyGaUNnojNGZgpprP/81wpnC
 xZVia/DrBXX8T5BlR5Fx03F/zRwaFdf/ilAygbqHI7FruokXvYwBMTh9axQNsOhYwIuQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:References:
 In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Mf+YFTwO1pJfR9+xRmCnVOZ6uYd6VTcx60QobKpeFc8=; b=PWz3ovQVHLeU21NDrcluIF6+lb
 yB/AgW72IEptchZjDklh+FzpxPGoxrxJxlKWjRIxAqJVJKw19fESkd/DOJCdC7WstVzQIDNel8J4Y
 dCftQL8ZoWekNdJzEqeLK80pB0UIVBXcJT3dVZpkKMLY6x4c7ofbwjpdgA5QJ785AXIU=;
Received: from hawrylko.pl ([54.37.138.145])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ohp3c-0007Ch-J0 for tboot-devel@lists.sourceforge.net;
 Mon, 10 Oct 2022 09:26:46 +0000
Received: from lh-lnx.vector.com.pl (unknown [193.109.59.18])
 by hawrylko.pl (Postfix) with ESMTPSA id 42AEB45003;
 Mon, 10 Oct 2022 11:01:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=hawrylko.pl;
 s=201812; t=1665392492;
 bh=Mf+YFTwO1pJfR9+xRmCnVOZ6uYd6VTcx60QobKpeFc8=;
 h=Subject:From:To:Date:In-Reply-To:References:From;
 b=rngo/uynzNiceohWK7FwszmWPznUJN4G3QGKUeSEaRGYGqswyHAagAVxw2NmpNgCt
 7sbY6341evudGFthMMlaQ0qrDC1pbUPmcOxAfKkp8iwBjLRBTT+iWU/E4Mj8YHiR58
 mrBKav+G6ME424lsEiZLKgE4CyQAtGk1M8c+ekNedwEsyG8USpCG0Rl29foW5mH9dY
 vmmR/0brzUsJC6dj5MLUqklkWrInfMk3jV7I1xrRaJ3GtSc6Qm88IPBRIKXOVz1mpC
 FUDT7sSDQrlaIwea7uvzGK7kQm2gXC1cf/n9p98N9/TB9Zbuf/WtPteNkScHtcLHuh
 p3ybI83O75Btw==
Message-ID: <fb2f9b64ef053380da568c86ccb091de52528cab.camel@hawrylko.pl>
To: Miguel Mota <miguel.mota@ua.pt>, "tboot-devel@lists.sourceforge.net"
 <tboot-devel@lists.sourceforge.net>
Date: Mon, 10 Oct 2022 11:01:31 +0200
In-Reply-To: <PA4PR02MB6605DF8E404E182ACECE06EFE25F9@PA4PR02MB6605.eurprd02.prod.outlook.com>
References: <PA4PR02MB6605DF8E404E182ACECE06EFE25F9@PA4PR02MB6605.eurprd02.prod.outlook.com>
User-Agent: Evolution 3.46.0-2 
MIME-Version: 1.0
X-Helo-Check: bad, Forged Random Domain (hawrylko.pl)
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Miguel On Fri, 2022-10-07 at 14:30 +0000,
 Miguel Mota wrote:
 > If I change either the kernel or the initrd the system still boots as >
 expected (since I have policy of continue instead of halt) and the > PCR
 [...] Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1ohp3c-0007Ch-J0
Subject: Re: [tboot-devel] TBOOT on a PowerEdge R730 with a TPM2.0
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

Hi Miguel

On Fri, 2022-10-07 at 14:30 +0000, Miguel Mota wrote:
> If I change either the kernel or the initrd the system still boots as
> expected (since I have policy of continue instead of halt) and the
> PCR will have different values (as expected) but the TBOOT tool says
> the "TXT Measured Launch: True" when I expected it to to be false. Am
> I miss-interpreting the normal behaviour of TXT here? Also, is this
> VLP (without the LCP) enough for remote attestation? I'd say yes
> since pcr 17-20 have all the required information and they can't be
> altered by an bad actor due to their locality requirements.


"TXT Measured Launch: True" means that system was successfully booted
with TXT. Measured launch is a process where measures of boot
components are collected and stored to TPM PCRs, but not verified. This
is the standard behaviour of TXT.

For remote attestation you don't have to provision LCP or VLP, because
default policies already collect measurements. You can use LCP or VLP
to configure what PCRs will be extended with particular boot
components, but in general this is not required.

To sum up, you are right, your system is ready to enable remote
attestation.

Thanks,
Lukasz


_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
