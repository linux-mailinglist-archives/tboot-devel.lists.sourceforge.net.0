Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DFCB1CC399
	for <lists+tboot-devel@lfdr.de>; Sat,  9 May 2020 20:03:34 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1jXTor-0003Gu-B2; Sat, 09 May 2020 18:03:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <timo.lindfors@iki.fi>) id 1jXTop-0003Gn-O8
 for tboot-devel@lists.sourceforge.net; Sat, 09 May 2020 18:03:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cGlKahzxr5f2SZmydKICSkDMf5CNkvrr9y6q68POrDM=; b=PBVx2HsFnJSJ8h0P7EENcU2yhU
 XyU5Ns+XAh2MAChaqGvQ/d/Gl0nlIGsbOYuXVF+uRz/9QFMghl/YKFeVrUYZETLMjJYlAz45mzixg
 WH9iwX1bC36qYb2+wuBhwr9VeT02KrwTlwXQaw9Rq0CuiNiunGjfcEnIDMolJZkyKG9Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:To:From:Date:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=cGlKahzxr5f2SZmydKICSkDMf5CNkvrr9y6q68POrDM=; b=K
 7oNhW6m1j/DJtXkIWRPyiNhu2KoA9uPkVSidkseapgb/w0oWbi93OH/Mi5+VpZTT+iURdQpCbADKh
 mlu9GTz+wXP33NU2mtVH+dJ+kN3L71Uz8uTPP7gF1IPG2aO/KzCUDjTHyhDACNOlveFdq9DPHAKT1
 gdDsKLbZuGHs71XI=;
Received: from meesny.iki.fi ([195.140.195.201])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jXTom-005RDu-D5
 for tboot-devel@lists.sourceforge.net; Sat, 09 May 2020 18:03:23 +0000
Received: from mail.home (82-181-208-90.bb.dnainternet.fi [82.181.208.90])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: timo.lindfors)
 by meesny.iki.fi (Postfix) with ESMTPSA id 89D1B2017A
 for <tboot-devel@lists.sourceforge.net>; Sat,  9 May 2020 21:03:00 +0300 (EEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi; s=meesny;
 t=1589047380;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type;
 bh=cGlKahzxr5f2SZmydKICSkDMf5CNkvrr9y6q68POrDM=;
 b=MobNhuTgifBLHpdyB7L2XVfjE2yGyJWBoE6oH9Ikcle8rp9wUs36urCsLuI7R7FhUN33lv
 KEUvXSTpdCgexRD4pJzLT6VITlEsZUYgke2qVTGChBMIpKRZP2dAwL2kyT45wmDP5cngUv
 iZQ3W1f8ym6b1umlMrThJgneIxTMqSY=
Received: from localhost ([127.0.0.1]) by mail.home with esmtp (Exim 4.89)
 (envelope-from <timo.lindfors@iki.fi>) id 1jXToM-0001Ie-4q
 for tboot-devel@lists.sourceforge.net; Sat, 09 May 2020 21:02:54 +0300
Date: Sat, 9 May 2020 21:02:54 +0300 (EEST)
From: Timo Lindfors <timo.lindfors@iki.fi>
To: tboot-devel@lists.sourceforge.net
Message-ID: <alpine.DEB.2.20.2005092055070.4905@mail.home>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi;
 s=meesny; t=1589047380;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type;
 bh=cGlKahzxr5f2SZmydKICSkDMf5CNkvrr9y6q68POrDM=;
 b=XiISOaWAlP54dhi9SMUajwsfE5OL8C0RoDx2HmPoyhIbL45DmH0CcikQouJeO0zinn+vzR
 CoW6edVgyLxV9+XKMBJwhsmCAjwujOadla2mVYlpbF9gcvvKD3IHOqzHX6M8lRIi8pa7vS
 EMB3gdcJw4m1EEIgaSn1NIdp/+Bv79A=
ARC-Seal: i=1; s=meesny; d=iki.fi; t=1589047380; a=rsa-sha256; cv=none;
 b=rjdIY2Hn6sybL96HPuawGEJ2ijjX+OmxXDDwgVHJ40k1EpYSjANYspWLn9v7Bl4LghKzLx
 iN/hwmux50nj0CPmCVQiqmuZHGCMrXfXt6UjQ8GxOuy7uQLNmRuuOEhE6krtakzlaQP5HR
 5iIX3FZpeHhV8rlHDRrW3oyPxFJNwuw=
ARC-Authentication-Results: i=1; ORIGINATING;
 auth=pass smtp.auth=timo.lindfors smtp.mailfrom=timo.lindfors@iki.fi
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jXTom-005RDu-D5
Subject: [tboot-devel] PATCH: fix/spelling-fixes-1
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

I made some spelling fixes. My mercurial skills are quite rusty but I 
think you should be able to access them by pulling the 
fix/spelling-fixes-1 branch from https://lindi.iki.fi/lindi/hg/tboot

Should I prefer sending patches over email with "hg email"?

-Timo



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
