Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BC9EF4651AE
	for <lists+tboot-devel@lfdr.de>; Wed,  1 Dec 2021 16:30:24 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1msRYh-00086d-Te; Wed, 01 Dec 2021 15:30:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <greg@wind.enjellic.com>)
 id 1msRYf-00086T-4v; Wed, 01 Dec 2021 15:30:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Subject:To:Reply-To:In-Reply-To:Message-Id:From:
 Date:Sender:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID
 :Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:
 Resent-Cc:Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ga7qQl+V9qfsuTAYSWIk7DSUE3OqiknTPYrlqatpdi4=; b=RZQOLULj0ey5RdfSIStXvZ5yqn
 XotCJ3A0OzrQ3kBTD+H9h9RVHLdAbPhH/wGgcJSbVK2rQ3CftdmOcw2PGlK2n98BC2yOCjAc5zV50
 ADWpNIcewuK+KBIIHP29f/py99mS9fpAi3cWNgDqxR2y/Kk5Kfd+CMfHwEwaQa5IRLXA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Subject:To:Reply-To:In-Reply-To:Message-Id:From:Date:Sender:Cc:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ga7qQl+V9qfsuTAYSWIk7DSUE3OqiknTPYrlqatpdi4=; b=iJjloRCFTr55RKLWt1faRwtSdO
 7rjhNLtiH/Tsyyl1SLbLx62meFmtm/xXfz564q1fWhAN8ZKZl2UtduvI7df5EhTGBmtrglFvzzc8o
 +IW/5n1eNT30xC+rRdoP/OxXNnnEg4hB3QbsnB9I7g+973CHacMiV46vQZw5rg5VTut0=;
Received: from wind.enjellic.com ([76.10.64.91])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtp (Exim 4.92.3)
 id 1msRYX-0003uv-9y; Wed, 01 Dec 2021 15:30:09 +0000
Received: from wind.enjellic.com (localhost [127.0.0.1])
 by wind.enjellic.com (8.15.2/8.15.2) with ESMTP id 1B1Er4ww029273;
 Wed, 1 Dec 2021 08:53:04 -0600
Received: (from greg@localhost)
 by wind.enjellic.com (8.15.2/8.15.2/Submit) id 1B1Er4LL029272;
 Wed, 1 Dec 2021 08:53:04 -0600
Date: Wed, 1 Dec 2021 08:53:04 -0600
From: "Dr. G.W. Wettstein" <greg@wind.enjellic.com>
Message-Id: <202112011453.1B1Er4LL029272@wind.enjellic.com>
In-Reply-To: "Randzio, Pawel" <pawel.randzio@intel.com>
 "[tboot-devel] [ANNOUNCEMENT] PCR Extended Policy - planned DEFEATURING" (Dec
 1, 9:04am)
X-Mailer: Mail User's Shell (7.2.6-ESD1.0 03/31/2012)
To: "Randzio, Pawel" <pawel.randzio@intel.com>,
 "tboot-changelog@lists.sourceforge.net"
 <tboot-changelog@lists.sourceforge.net>, 
 "tboot-devel@lists.sourceforge.net" <tboot-devel@lists.sourceforge.net>
X-Greylist: Sender passed SPF test, not delayed by milter-greylist-4.2.3
 (wind.enjellic.com [127.0.0.1]); Wed, 01 Dec 2021 08:53:05 -0600 (CST)
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Dec 1, 9:04am, "Randzio,
 Pawel" wrote: } Subject: [tboot-devel]
 [ANNOUNCEMENT] PCR Extended Policy - planned DEFEAT > Hello, Good morning,
 I hope this note finds the day, or evening, going well for everyone. 
 Content analysis details:   (-0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1msRYX-0003uv-9y
Subject: Re: [tboot-devel] [ANNOUNCEMENT] PCR Extended Policy - planned
 DEFEATURING
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
Reply-To: greg@enjellic.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tboot-devel-bounces@lists.sourceforge.net

On Dec 1,  9:04am, "Randzio, Pawel" wrote:
} Subject: [tboot-devel] [ANNOUNCEMENT] PCR Extended Policy - planned DEFEAT

> Hello,

Good morning, I hope this note finds the day, or evening, going well
for everyone.

> I would like to inform you that there are plans to defeature TBOOT
> extpol option and fix it to current default.
>
> The change affects TPM2.0 PCR Extended Policy Support. It has two options:
> 
>   *   "Maximum Agility" - hashes computed using TPM2.0
>   *   "Maximum Performance" - hashes computed using software, no TPM usage
>
> We want to defeature the "Maximum Agility" option and leave only
"Maximum Performance" (current default).
>
> If you have any objections, please inform me.

No objections but we would be interested in understanding the root
rationale for the change.

> Thanks,
> --Pawe Randzio
> ---------------------------------------------------------------------
> Intel Technology Poland sp. z o.o.
> ul. Slowackiego 173 | 80-298 Gdansk | Sad Rejonowy Gdansk Polnoc | VII Wydz=
> ial Gospodarczy Krajowego Rejestru Sadowego - KRS 101882 | NIP 957-07-52-31=
> 6 | Kapital zakladowy 200.000 PLN.

Have a good day.

Dr. Greg

}-- End of excerpt from "Randzio, Pawel"

As always,
Dr. Greg Wettstein, Ph.D, Worker      Autonomously self-defensive
Enjellic Systems Development, LLC     IOT platforms and edge devices.
4206 N. 19th Ave.
Fargo, ND  58102
PH: 701-281-1686                      EMAIL: greg@enjellic.com
------------------------------------------------------------------------------
"Never try to catch two frogs with one hand."
                                -- Chinese proverb


_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
