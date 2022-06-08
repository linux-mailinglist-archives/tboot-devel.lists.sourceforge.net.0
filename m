Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DDA995429A9
	for <lists+tboot-devel@lfdr.de>; Wed,  8 Jun 2022 10:42:22 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1nyrGY-0003Uw-OY; Wed, 08 Jun 2022 08:42:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <timo.lindfors@iki.fi>) id 1nyrGX-0003Uh-2S
 for tboot-devel@lists.sourceforge.net; Wed, 08 Jun 2022 08:42:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:References:Message-ID:
 In-Reply-To:Subject:cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LnTVo/VLDDj7vg4MQm1a79rgV+NrYSxzJb4nzaVCUIw=; b=m1PCp78U97zo27Yr9gqLCZcec3
 iDuUWFIpMjDEt4dzsTJMgpLcTKiJ0eTzg5lR3WY2AQoYPcfi8K8WNqpI5JSoBOHXla1353Yt1Bus6
 9sSFYOU3dF/uFIfyzTS+ei+69/XfQs7z0Yx++tQdJ1Tzp7gghboSoy3VHDyaHH/d+sXU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:References:Message-ID:In-Reply-To:Subject:cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=LnTVo/VLDDj7vg4MQm1a79rgV+NrYSxzJb4nzaVCUIw=; b=McPPRKOIARKtz06YNWQj2H6kVh
 1MtLIqwiOAZyoqREN1fUBxxJowFZIvkHAtUNChGRrBYDmvonwVPKy+xx9nyOlL7fg9CPgSQ9NavTp
 gw6OuthZohmphgH7EXHpdQ9tcRxUsX9Ng0kv1BRBudLZGffVdD6AE20sn/ZLS213NDqw=;
Received: from meesny.iki.fi ([195.140.195.201])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nyrGR-009d7c-Du
 for tboot-devel@lists.sourceforge.net; Wed, 08 Jun 2022 08:42:13 +0000
Received: from mail.home (82-181-195-69.bb.dnainternet.fi [82.181.195.69])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: timo.lindfors)
 by meesny.iki.fi (Postfix) with ESMTPSA id 1B0E920168;
 Wed,  8 Jun 2022 11:16:45 +0300 (EEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi; s=meesny;
 t=1654676205;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=LnTVo/VLDDj7vg4MQm1a79rgV+NrYSxzJb4nzaVCUIw=;
 b=PKbdE1xgr5GrjPEQ5jpAEtnWIZOIeuAelzYDfKBMGdWYrXlvONOCl3Sj4s0YTAUqV0cRPb
 y82DQnL4dSq3TVlie2xW33BXCZG/Ov7k3ZaZxR1kTPudy/YSEjybxJkE0TDIH8iboWV9pm
 BGL1h+RjNixyA2vCuMcaxFguEsEB3Bk=
Received: from localhost ([127.0.0.1]) by mail.home with esmtp (Exim 4.89)
 (envelope-from <timo.lindfors@iki.fi>)
 id 1nyowZ-0007Sj-Lg; Wed, 08 Jun 2022 09:13:27 +0300
Date: Wed, 8 Jun 2022 09:13:27 +0300 (EEST)
From: Timo Lindfors <timo.lindfors@iki.fi>
To: "Randzio, Pawel" <pawel.randzio@intel.com>
In-Reply-To: <CY4PR1101MB20706DE48541CC18F90E9F10EBD89@CY4PR1101MB2070.namprd11.prod.outlook.com>
Message-ID: <alpine.DEB.2.20.2206080911520.28663@mail.home>
References: <4b3349f2-69f2-d6d3-ab66-6178af102333@posteo.net>
 <dcb47ad40ac22b08380312c1c18f322848ccd4d6.camel@hawrylko.pl>
 <6ca692b5-c54d-c57c-03a8-e774a86762c0@posteo.net>
 <3ae8a2cd-9ca3-1feb-4a96-0abc54277b34@posteo.net>
 <9da7e209-01bf-ee90-33cc-d6ed9ef355f9@posteo.net>
 <CY4PR1101MB207005F236983E9353227654EBCA9@CY4PR1101MB2070.namprd11.prod.outlook.com>
 <CY4PR1101MB20706DE48541CC18F90E9F10EBD89@CY4PR1101MB2070.namprd11.prod.outlook.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi;
 s=meesny; t=1654676205;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=LnTVo/VLDDj7vg4MQm1a79rgV+NrYSxzJb4nzaVCUIw=;
 b=WTD+oONq2fs8ApgN09DcxfOWVkdDuH8cTuBKpbNBbe5NHm/Cv76hqmAnSVvrhtgwyshCTN
 MoaSV6z8tnBog+mM3Pk0akC9ZFd1dGrRuKU2jSWSqoS7dA26dGPQ1zeMz/WdE3RkbwrXSR
 OKZxPKPyFPqrjlkXu2FN6elL6nu0lnk=
ARC-Authentication-Results: i=1; ORIGINATING;
 auth=pass smtp.auth=timo.lindfors smtp.mailfrom=timo.lindfors@iki.fi
ARC-Seal: i=1; s=meesny; d=iki.fi; t=1654676205; a=rsa-sha256; cv=none;
 b=qbRFigkK8KMxwH1gf/yDYX6zkMV5ZXSYpSmJxkf1Rq/fgUi3wb2TKw71YKr2+uK0bc28g+
 w2gAxQWYri0EFOldQFmLps7JUxmDS1fslvjtcdufNaRKtKUP0W7hJgfPrlxIZ0gEnGg++w
 433g+5PP+7+9ICi6kx7R1c+SIFJ8XRo=
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, 27 May 2022, Randzio, Pawel wrote: > I wish to gladly
 inform you that I've fixed the bug preventing suspend with Tboot. Great news!
 Has this patch already been sent upstream? -Timo 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1nyrGR-009d7c-Du
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
Cc: "tboot-devel@lists.sourceforge.net" <tboot-devel@lists.sourceforge.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: tboot-devel-bounces@lists.sourceforge.net


On Fri, 27 May 2022, Randzio, Pawel wrote:
> I wish to gladly inform you that I've fixed the bug preventing suspend with Tboot.

Great news! Has this patch already been sent upstream?

-Timo



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
