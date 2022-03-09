Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 99FA84D313F
	for <lists+tboot-devel@lfdr.de>; Wed,  9 Mar 2022 15:48:18 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1nRxbk-0006PX-Jb; Wed, 09 Mar 2022 14:48:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <timo.lindfors@iki.fi>) id 1nRxbj-0006PR-0V
 for tboot-devel@lists.sourceforge.net; Wed, 09 Mar 2022 14:48:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SjLixr55uKt6ySNPZZiqI3pbYfSs66fWRcGjxM51mjo=; b=YgXK9fKGmR4NIfhVZHcB/bLysI
 mSJjxRhNlnqlsLluOoYrWdlLQeQqdDoR3fDzf3VAxRTHlAFvraozBATpTaWGATz3kKNlX9U7a5G8I
 3C75SLB1LCuSsovTeFpYiisLZPj/XTEDkJN+EISVHLHEEv5Zm3HV74PSQW230lkptYgk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:To:From:Date:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=SjLixr55uKt6ySNPZZiqI3pbYfSs66fWRcGjxM51mjo=; b=D
 QynzIB73VxeEgo9SsM9/g6DDqvariF66zS81MjXCbXAYwMGjXsSTSbl1odfbCarsTQ14nHojYeUGA
 lso54BNekbetpyTi1EsvEjn9l1GTp7qg+tLoXPcTopWb4OLYhjwZBgqpf/ONRTst2vOjeWSiSKouS
 Ne/X1GR14H3RVyy4=;
Received: from [185.185.170.37] (helo=lahtoruutu.iki.fi)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nRxba-0002Q1-B2
 for tboot-devel@lists.sourceforge.net; Wed, 09 Mar 2022 14:48:05 +0000
Received: from mail.home (82-181-195-69.bb.dnainternet.fi [82.181.195.69])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: timo.lindfors)
 by lahtoruutu.iki.fi (Postfix) with ESMTPSA id BCAE61B001E8
 for <tboot-devel@lists.sourceforge.net>; Wed,  9 Mar 2022 16:47:41 +0200 (EET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi; s=lahtoruutu; 
 t=1646837261;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type;
 bh=SjLixr55uKt6ySNPZZiqI3pbYfSs66fWRcGjxM51mjo=;
 b=NDa2Owcg7R1NDb7OdXaZkBLo6dNYP2w5P9VSix94gEUnRd6QI4xMBUugKj1vsjjgYz2RwL
 rP984FQotnG82uKbRFyQFhpkOkadywVhWULqQaJEqGIVA0CbK8pE8fC0U7iR9sjUCPrDgc
 O1w2quEFaLYFX0Cw9cmrl/MeRpohD8/cUqqRggg3kkIfH2cb8xFGu5Wd9vksn99XqfnkWM
 xadhKqqs5/snudW175h8NQ7f5K2ojZDrKiG+JjVXQreq76APTwX20o2S2CwE0n3hGWhjr3
 SMl0Qgh9wyC+o8qcd+XINuYgbMUcmfdItXW6wxRE3coql9Od0/7U0WgffAqLGg==
Received: from localhost ([127.0.0.1]) by mail.home with esmtp (Exim 4.89)
 (envelope-from <timo.lindfors@iki.fi>) id 1nRvg9-0005p5-OO
 for tboot-devel@lists.sourceforge.net; Wed, 09 Mar 2022 14:44:33 +0200
Date: Wed, 9 Mar 2022 14:44:33 +0200 (EET)
From: Timo Lindfors <timo.lindfors@iki.fi>
To: tboot-devel@lists.sourceforge.net
Message-ID: <alpine.DEB.2.20.2203091443270.22263@mail.home>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
ARC-Authentication-Results: i=1; ORIGINATING;
 auth=pass smtp.auth=timo.lindfors smtp.mailfrom=timo.lindfors@iki.fi
ARC-Seal: i=1; s=lahtoruutu; d=iki.fi; t=1646837261; a=rsa-sha256; cv=none;
 b=ZftgU0DincsNiD6737Qp2o95ewxJAfIsGzLSg93o5s5KxoIbqG9pPHtYwVNo+CIFF1H+dK
 KDGTFtOJeVdkyW4mvfTgMtmftvPfML6yu1Oj62WxSzgbvf8GbtZqkeo0t7KDEBMJeOLxpg
 pPbfsg2lA7vFvSpx/9BVkLYREH1o5e9Dw9hIfsbru9DhxgMIW7iUKsekgRSUk8mVlkgbuT
 Z+bec4H1SQWW/aXXOvHU230M/o60E4ksrVMWem9L+qWFiJnQVW9/NimLLynlCG1wSLxDnw
 apsZ/bAKY77pp3LbZXIPXkhoGbP6SWiXYEd51qkR+2NhQiNwySYpLglGRubHHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi;
 s=lahtoruutu; t=1646837261;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type;
 bh=SjLixr55uKt6ySNPZZiqI3pbYfSs66fWRcGjxM51mjo=;
 b=GWxSfbxwF1UPMrdvyrcxJRWNxQvn0qCtcLGZxNQbiD2ItUXhC5xwiwMPS4rFVzfbGBQPxL
 31l1yf77OoW8GpQR7nzxm6zglyU+5QViwMtbQ3FEW0DjJoL7GiI/cSigg7bUdANFDNFRsV
 aFiewAmMx3ol+YfFI6Y38jCnNa3hmNahPzE6qHfpKPpaAepqlXqXkiXXd68Xu9cAs+6SWm
 Vt2eKBc9wPGyZ5hEvSjxp0ywb1Zvd/FkkCoKp43vijGScmgmMDaVWQaBA8l9DrFpXwLg7B
 OMnrPirPoYx06DcSRgiCUS3/Pdwf26hOnmAQfVczcfAq7vhaF0CU9yoT5/CzhQ==
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi,
 just a quick note: lcp2_crtpollist man page says "algorightm"
 but should probably say "algorithm". Thought about sending a patch but it's
 probably easier for you to just fix this directly :) -Timo 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.185.170.37 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1nRxba-0002Q1-B2
Subject: [tboot-devel] typo in lcp2_crtpollist man page
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: tboot-devel-bounces@lists.sourceforge.net

Hi,

just a quick note: lcp2_crtpollist man page says "algorightm" but should 
probably say "algorithm". Thought about sending a patch but it's probably 
easier for you to just fix this directly :)

-Timo



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
