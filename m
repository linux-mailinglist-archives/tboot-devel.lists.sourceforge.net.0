Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A35A01DF836
	for <lists+tboot-devel@lfdr.de>; Sat, 23 May 2020 18:27:28 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1jcWzW-000390-FJ; Sat, 23 May 2020 16:27:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <timo.lindfors@iki.fi>) id 1jcWzU-00038U-UA
 for tboot-devel@lists.sourceforge.net; Sat, 23 May 2020 16:27:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:References:Message-ID:
 In-Reply-To:Subject:cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0y1m2vz4o1ceDNs8BWwSVL4r4UkJ+q7j/ZZ4UQVrGeQ=; b=ZJ2o0lXqMEXR67lAclT70vv+ho
 SqR94VlVyAeb6kM3ea3TWBoQhpwFC9qC7IOFBdIzUpwpiGZ3IX110PCFvXPCI0MFI925eCFf9Z5aE
 59rHeRD2bZ/8c6ZSDrYIBvp4Si866OHPce2kvT9kcde2vFC4+pao4j6LxyZ40dIaZzJ0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:References:Message-ID:In-Reply-To:Subject:cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=0y1m2vz4o1ceDNs8BWwSVL4r4UkJ+q7j/ZZ4UQVrGeQ=; b=U7OZikxOb/j30zYPNxl0cF2juK
 fVEXcD90/CpyC/LH5Osf8DI5wVNe/uudd3il5AvqctBzzMu/6+i/1WHjJsk5AfaqgG8SMehXdCw9J
 Dxv4mRb9Eg7DtJD6ndlDknjY0mOyHCglLZmqur3lCKJ4oE13yt1NpOtwLHrAy7RaN1/U=;
Received: from meesny.iki.fi ([195.140.195.201])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jcWzP-00EZxN-EV
 for tboot-devel@lists.sourceforge.net; Sat, 23 May 2020 16:27:16 +0000
Received: from mail.home (89-27-97-237.bb.dnainternet.fi [89.27.97.237])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: timo.lindfors)
 by meesny.iki.fi (Postfix) with ESMTPSA id F197D20593;
 Sat, 23 May 2020 19:26:54 +0300 (EEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi; s=meesny;
 t=1590251215;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=0y1m2vz4o1ceDNs8BWwSVL4r4UkJ+q7j/ZZ4UQVrGeQ=;
 b=BdvKUy3SsRaDNQd8VCdPUzPmvaacz/MqW9NNFE+IjDErg09J4vDdcCefQi7YRDKNxZdsHz
 MM1556wHw0DwcUxLz9d0Z9OY+SbuTBa2jiHmDe+iHeaLon0qGtFjlMrSMPKYjzU0gnm+Xd
 rSCSYyMYyUlxdAxLHEENVBOyo9DEgkg=
Received: from localhost ([127.0.0.1]) by mail.home with esmtp (Exim 4.89)
 (envelope-from <timo.lindfors@iki.fi>)
 id 1jcWz1-0004el-AV; Sat, 23 May 2020 19:26:47 +0300
Date: Sat, 23 May 2020 19:26:47 +0300 (EEST)
From: Timo Lindfors <timo.lindfors@iki.fi>
To: tboot-devel@lists.sourceforge.net
In-Reply-To: <alpine.DEB.2.20.2005121234280.7218@mail.home>
Message-ID: <alpine.DEB.2.20.2005231924220.17882@mail.home>
References: <alpine.DEB.2.20.2005081919250.3828@mail.home>
 <3da41313c3b91f154f53f9c2c9645ade6399cff9.camel@linux.intel.com>
 <alpine.DEB.2.20.2005121234280.7218@mail.home>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi;
 s=meesny; t=1590251215;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=0y1m2vz4o1ceDNs8BWwSVL4r4UkJ+q7j/ZZ4UQVrGeQ=;
 b=F4DTwz5/ADTlD9ePRgVUxyTEDVb+Btt2ciNEfuJge5CBEHwuwa2ey5KWLTu22azA/YyHJt
 EUyxe71mtCkbLks41qFv7qYUzLkDnM28xg0mRwXlkSVF7+oOr8o468lSvM/4FwOqwRaiZL
 YHr8MbFsYMd0NqzZ7H7rAjn4OPDnnvA=
ARC-Seal: i=1; s=meesny; d=iki.fi; t=1590251215; a=rsa-sha256; cv=none;
 b=wQ09a33+KhqHYuEJMNcBj3IOLMO86FHvVrr9wGyBKlNmdGJP91pVQjr11ZwXuQZewo7q4G
 CyzGEqM2EBot/B9jvK5uC0oyia5Y2ildYd6PgB+aYyI74hmy0vTHGtl780rmyYSE5nYzVV
 dUpD56rp7QIFzGodxukfNfduv3uPt+U=
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
X-Headers-End: 1jcWzP-00EZxN-EV
Subject: Re: [tboot-devel] tboot 1.9.12 build failure if CFLAGS is set in
 environment
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

On Tue, 12 May 2020, Timo Lindfors wrote:
> On Tue, 12 May 2020, Lukasz Hawrylko wrote:
>> Thanks for investigating that issue. Fixed in a6180f9e9e86
>
> Thanks, seems to build now.

I said this perhaps bit too soon. I am experiencing tboot getting stuck 
at boot on Lenovo T430s when I boot the latest code from mercurial. 1.9.12 
seems to boot ok. Commenting out "export CFLAGS" seems to help. How should
I debug this?

-Timo



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
