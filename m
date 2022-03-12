Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C63224D6DC4
	for <lists+tboot-devel@lfdr.de>; Sat, 12 Mar 2022 10:37:35 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1nSyBd-0000TF-R7; Sat, 12 Mar 2022 09:37:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <timo.lindfors@iki.fi>) id 1nSyBc-0000T9-2f
 for tboot-devel@lists.sourceforge.net; Sat, 12 Mar 2022 09:37:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:References:Message-ID:
 In-Reply-To:Subject:cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rc4GZK1xGu8QYuba/7FXncAnt595O99F8MdIXg9nD2s=; b=GMliLHLE9+ZHUskENU2oDgS55H
 NrbfbXNgATmVpHfFjgOXIja0dF+8ClqiM4mbN0PWYa3TOA4Uu1tKga+fQYqKQ5IX7ISQmsPT1SYqP
 K8PCGvf5qZa0QCbUQ4vjdQsnp8kQBbpJMQbPU4uyu7+OIsu1Qq9yjwMdp6vgLaTAeVP0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:References:Message-ID:In-Reply-To:Subject:cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=rc4GZK1xGu8QYuba/7FXncAnt595O99F8MdIXg9nD2s=; b=VnOBoMPgeRTCCPXibwsPe43MtE
 /p7zeg073eL4Yo/WBw7zFCFwfbfjaWa7zI70CvpPIZ1DlO9SaVydCLMf1EU/oMLBeQAmKVwJy8xCD
 RWQbFIdpGAb2OQXeiOb72nAJwAgBykzL+2slwKBxuO2+mu2QU3MwL/zfrz36X79t3lRE=;
Received: from meesny.iki.fi ([195.140.195.201])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nSyBZ-00D85f-B6
 for tboot-devel@lists.sourceforge.net; Sat, 12 Mar 2022 09:37:18 +0000
Received: from mail.home (82-181-195-69.bb.dnainternet.fi [82.181.195.69])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: timo.lindfors)
 by meesny.iki.fi (Postfix) with ESMTPSA id 4823E20072;
 Sat, 12 Mar 2022 11:37:08 +0200 (EET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi; s=meesny;
 t=1647077828;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=rc4GZK1xGu8QYuba/7FXncAnt595O99F8MdIXg9nD2s=;
 b=AcHj5ix2yfopOjR0grAjV3ptprqxbz52Y3QyVhpVr/7/MY2JGCRU+UloWftX55Uh/OqYRb
 i3vif23VOgEFUizhCdaQR7kkwBGLVU1kaQyADuxO2Y/vRg5nJrAslkUoiTuIKpLkGPvF+z
 6aFT+DntKOlwzO+vCnyb1/NrQCmecxI=
Received: from localhost ([127.0.0.1]) by mail.home with esmtp (Exim 4.89)
 (envelope-from <timo.lindfors@iki.fi>)
 id 1nSwGG-0006bI-2Q; Sat, 12 Mar 2022 09:34:00 +0200
Date: Sat, 12 Mar 2022 09:34:00 +0200 (EET)
From: Timo Lindfors <timo.lindfors@iki.fi>
To: =?ISO-8859-2?Q?=A3ukasz_Hawry=B3ko?= <lukasz@hawrylko.pl>
In-Reply-To: <47436efda1c61ed2c5267dad2347a0a7859375f0.camel@hawrylko.pl>
Message-ID: <alpine.DEB.2.20.2203120933010.25337@mail.home>
References: <alpine.DEB.2.20.2203110900580.24286@mail.home>
 <6981e56e786ff0c7e9ebe67cd7465bcb0c87a4e1.camel@hawrylko.pl>
 <alpine.DEB.2.20.2203111121420.24510@mail.home>
 <47436efda1c61ed2c5267dad2347a0a7859375f0.camel@hawrylko.pl>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-1456845129-1647070440=:25337"
ARC-Authentication-Results: i=1; ORIGINATING;
 auth=pass smtp.auth=timo.lindfors smtp.mailfrom=timo.lindfors@iki.fi
ARC-Seal: i=1; s=meesny; d=iki.fi; t=1647077828; a=rsa-sha256; cv=none;
 b=WJWxPi34yCtvAuwh3NNCj5CzWDJNBAqP/ntBopQTi/luPaFG0GIoP8Y30SJ7CrO6CsHYnQ
 /TIjOoGLJia7be4CeKXhPYfNN2MCdRxvPgBZLnJqMRK1fRFS0MwyBf2eDKeqoqFboZcqjq
 7DRe0jaTyVQ0cYBaPl14vHbDSFjHLZc=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi;
 s=meesny; t=1647077828;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=rc4GZK1xGu8QYuba/7FXncAnt595O99F8MdIXg9nD2s=;
 b=jg27tED0bONflL5PFL1wO7vFzIPOfsl5G0gFJEdf5hzgRE5atyKEt225OYwpVuAnh+nv8d
 MQzMui5oia1ZOF/kLrkfhDDGQMiq7EpHE2qwBRGVfrKIeGpkZ7ARu6IYzP/DcezZkKUBP5
 aOwp4dnrc0GPidkzZrpCTubzB7FcUJk=
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Fri, 11 Mar 2022, Łukasz Hawryłko wrote: > I see that
    you have quite complex environment for testing tboot, if I > find my old
   GRUB patch and prepare patch for tboot that combined should > fix th [...]
    
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1nSyBZ-00D85f-B6
Subject: Re: [tboot-devel] status of the grub patch to support multiple
 SINIT modules?
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
Cc: tboot-devel@lists.sourceforge.net
Errors-To: tboot-devel-bounces@lists.sourceforge.net

--8323329-1456845129-1647070440=:25337
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8BIT


On Fri, 11 Mar 2022, Łukasz Hawryłko wrote:
> I see that you have quite complex environment for testing tboot, if I
> find my old GRUB patch and prepare patch for tboot that combined should
> fix the issue, will you be able to run tests?

Yes, I'm happy to run tests :)

--8323329-1456845129-1647070440=:25337
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--8323329-1456845129-1647070440=:25337
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel

--8323329-1456845129-1647070440=:25337--

