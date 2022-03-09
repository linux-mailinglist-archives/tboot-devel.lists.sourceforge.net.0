Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B8624D2FAB
	for <lists+tboot-devel@lfdr.de>; Wed,  9 Mar 2022 14:05:37 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1nRw0L-0006NX-NR; Wed, 09 Mar 2022 13:05:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <timo.lindfors@iki.fi>) id 1nRw0K-0006NF-5n
 for tboot-devel@lists.sourceforge.net; Wed, 09 Mar 2022 13:05:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:References:Message-ID:
 In-Reply-To:Subject:cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HvfKx3MgYFRljKpGDZ8GfKNrpvRbZp2plP8Ks+2Gbpw=; b=nU4+8vaMQsz1+dSqw3cNqzGmn3
 v9PBvX3g7FpenrqxXxPSrp6G1nY77IGM11fwHFmck3cD8gn3nJv6ffGYcDDdABZY2TljTNJdOOFRz
 jsqJudok+O4V5nBQKr7XTGBXzrr3OtSrYUw3wNZajfAkJc1hrtVVV0JMeHwkIW7m1oVU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:References:Message-ID:In-Reply-To:Subject:cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=HvfKx3MgYFRljKpGDZ8GfKNrpvRbZp2plP8Ks+2Gbpw=; b=cLD9cPw9EbH3hX8o4Rb8DjATsN
 PJzATEyVpGc/R3a9wQ5C+zZkDz0LQgFP9xuUR84InbroRlFhHxFXnQjUwDfMGOqPNU7Vsz0avDJrU
 S98WjALAEmQrdAiN6FxtDBfWbCS1f635vfvRwKCPH0MutPWeApqtmu1v66a9sqdj2kcA=;
Received: from lahtoruutu.iki.fi ([185.185.170.37])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nRw0H-0006OT-BR
 for tboot-devel@lists.sourceforge.net; Wed, 09 Mar 2022 13:05:22 +0000
Received: from mail.home (82-181-195-69.bb.dnainternet.fi [82.181.195.69])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: timo.lindfors)
 by lahtoruutu.iki.fi (Postfix) with ESMTPSA id DEF481B00220;
 Wed,  9 Mar 2022 15:05:14 +0200 (EET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi; s=lahtoruutu; 
 t=1646831114;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=HvfKx3MgYFRljKpGDZ8GfKNrpvRbZp2plP8Ks+2Gbpw=;
 b=YcdJjzCzXBPLvHo4RxYTF6wvOZc14o0fuNXdmkJ3vPdtKPSoODy4IsIDNz56SiRzOQiM9o
 ete/+jMTBJr+jLWbiW49X+htXbClvWoG/dnV6shmBSM2zGEJBMHwOMnQstQwFpNBOVFHnH
 +fb+j3Gell6cx/c9hn5/KikRzl43wattX7dBPWOMY+doX96Yu0obtc6DqUUIQZ7nU6Yl2X
 8605fsp/1hb4jXCpzOd1Th9T1sMosS9EqyOSsRQbYyZkPRnEz1G3CTKkR7PyjaZOTNwgyY
 tP5/zt46QoqH23Nu3Ol2+F/bqR/7hRsw0HYPujuxBUNFuPOxLyp9h/N7HK4iEQ==
Received: from localhost ([127.0.0.1]) by mail.home with esmtp (Exim 4.89)
 (envelope-from <timo.lindfors@iki.fi>)
 id 1nRu50-0005nN-Ta; Wed, 09 Mar 2022 13:02:06 +0200
Date: Wed, 9 Mar 2022 13:02:06 +0200 (EET)
From: Timo Lindfors <timo.lindfors@iki.fi>
To: "Randzio, Pawel" <pawel.randzio@intel.com>
In-Reply-To: <CY4PR1101MB207027EADD44ADC6E1040249EB0A9@CY4PR1101MB2070.namprd11.prod.outlook.com>
Message-ID: <alpine.DEB.2.20.2203091300220.22263@mail.home>
References: <alpine.DEB.2.20.2203091131270.22177@mail.home>
 <CY4PR1101MB207027EADD44ADC6E1040249EB0A9@CY4PR1101MB2070.namprd11.prod.outlook.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-1167940702-1646823726=:22263"
ARC-Authentication-Results: i=1; ORIGINATING;
 auth=pass smtp.auth=timo.lindfors smtp.mailfrom=timo.lindfors@iki.fi
ARC-Seal: i=1; s=lahtoruutu; d=iki.fi; t=1646831114; a=rsa-sha256; cv=none;
 b=e6IRbMglxkB0NmKG70S2jhjcOjCCZe1vjTqtDEzclJbIbkOr9+YfHXtWE/y+KcHU2y56M6
 Pe5eare7FKRUl7i+wYmLc+8e88COIEaUNLUA5WfDDc9jGKB3+272gyC0EevzfoUpZq+fEv
 WRjWLxeW9A+AugTykd3yd/45+1XqzY8JRlg/LeKBeXlqDI7/yf+hW2A5OjVRTW8lF10c9K
 3sMtTmmYx+bc4vjIMHPDn+4zYJSwXJB3xIwg7zSxTwIQoiVqmDOXDlUQ3dT9gHP4k6lo3D
 NjcyIEazBt783azXhxfUlScVNXJhbwY4Ji7KzQmJpf04RY/z+z4DZLfSQY48Eg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi;
 s=lahtoruutu; t=1646831114;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=HvfKx3MgYFRljKpGDZ8GfKNrpvRbZp2plP8Ks+2Gbpw=;
 b=uUy8tsGEC6HgIwzEdfPxV8lMD+3yGhTiP01ah0fykCgtF/g29kFYPKsyid5+rWdDI4BBR2
 nxMeFuX+UXOQhBn8ub4HEcqStesugszlmL1+71N+Q6FVu2r/hx13vb2f0c/nv2RtaBGYEx
 nXP9ELuhUS06Xl2zXl2zJgtF4oAUTP5fQXFAPYmTPvJVwA9WmGfNgU09fBfuCOJCGOaJwz
 nMK86f/6RW/FlNCSlXLeiXP8exeOycGCsuT5stzg1aBkeVAZI1irCYwi11qt6/GDoX1qTB
 5c1XA9XLlYNGOBtr74SphfHYYHRp2BLQJffV71vDMt09dWECxLs1pDSXTJZfCw==
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, 9 Mar 2022, Randzio, Pawel wrote: > First of all -
 package 1.10.4 is already outdated (I mistakenly made a release with bugs),
 I forgot to add packages for 1.10.5. > Thanks for the reminder :) [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.185.170.37 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1nRw0H-0006OT-BR
Subject: Re: [tboot-devel] new PGP for release tarballs?
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
Errors-To: tboot-devel-bounces@lists.sourceforge.net

--8323329-1167940702-1646823726=:22263
Content-Type: text/plain; charset=iso-8859-2; format=flowed
Content-Transfer-Encoding: 8BIT


On Wed, 9 Mar 2022, Randzio, Pawel wrote:
> First of all - package 1.10.4 is already outdated (I mistakenly made a release with bugs), I forgot to add packages for 1.10.5.
> Thanks for the reminder :)
>
> And as for the key - older packages were signed by £ukasz, and I think I haven't been instructed on how to or where to provide the key I've generated for myself.

Good to know, can you release 1.10.5 so that I can upload it to Debian?

Could you perhaps just put the public PGP key to version control if you 
cannot think of any other place? I don't see any way to ignore PGP 
validation in the workflow easily as only ".gpg" files are available and 
that's what the tooling tries to access.

-Timo


--8323329-1167940702-1646823726=:22263
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--8323329-1167940702-1646823726=:22263
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel

--8323329-1167940702-1646823726=:22263--

