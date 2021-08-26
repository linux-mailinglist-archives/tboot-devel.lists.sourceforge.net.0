Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FCA73F893D
	for <lists+tboot-devel@lfdr.de>; Thu, 26 Aug 2021 15:42:18 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1mJFe2-00088Y-IC; Thu, 26 Aug 2021 13:42:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <lukasz.hawrylko@linux.intel.com>) id 1mJFe1-00088Q-Al
 for tboot-devel@lists.sourceforge.net; Thu, 26 Aug 2021 13:42:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QEZYL5ZOG/wjiarrD3XcdTAFr3Fo3UsARyyGqo+acTA=; b=TJTUjNy1M9q5jEr8RIVk4EkjVI
 T2NEpM7QLfnvgdjG+HPuwpAFUzZP2fdlymnVMnwI5WDGu+oSdbRXSQdQ9pQqIKfnvT+xeNxyhZn6H
 1d/5GeLkdzBHHpyMhxGQxE6N19KnKjCXNzI7xsO3q1ImCtIWqO/0hLtqi2DphyEFKx2I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=QEZYL5ZOG/wjiarrD3XcdTAFr3Fo3UsARyyGqo+acTA=; b=KEGhenCwzBmPmJZRjNuHhI6jmK
 7V3NmZe7onidSTqy3+wUjclBTVFn+65A6WVHH4sPX+AyxB3IBlcwY+hSGUOVeR/okGwvnPZ/eoEf2
 w0oaTn2hYUFx7s/CrdgljlPQfMvNm6UE45YovFpijfDZB0TLCiZAny2wHgjTu35wJvkA=;
Received: from mga04.intel.com ([192.55.52.120])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mJFe0-001mu1-Jy
 for tboot-devel@lists.sourceforge.net; Thu, 26 Aug 2021 13:42:13 +0000
X-IronPort-AV: E=McAfee;i="6200,9189,10087"; a="215895677"
X-IronPort-AV: E=Sophos;i="5.84,353,1620716400"; d="scan'208";a="215895677"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2021 06:42:06 -0700
X-IronPort-AV: E=Sophos;i="5.84,353,1620716400"; d="scan'208";a="495126578"
Received: from dkilanow-mobl.ger.corp.intel.com ([10.249.147.252])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2021 06:42:05 -0700
Message-ID: <828cc3c1c2869131041a096d1ff6c2540053cb4c.camel@linux.intel.com>
From: Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>
To: Timo Juhani Lindfors <timo.lindfors@iki.fi>, 
 tboot-devel@lists.sourceforge.net
Date: Thu, 26 Aug 2021 15:42:03 +0200
In-Reply-To: <20210825090513.6805-2-timo.lindfors@iki.fi>
References: <20210825090513.6805-1-timo.lindfors@iki.fi>
 <20210825090513.6805-2-timo.lindfors@iki.fi>
User-Agent: Evolution 3.38.3 (3.38.3-1.fc33) 
MIME-Version: 1.0
X-Spam-Score: -2.3 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, 2021-08-25 at 12:05 +0300,
 Timo Juhani Lindfors wrote:
 > From: Timo Lindfors <timo.lindfors@iki.fi> > > Signed-off-by: Timo Juhani
 Lindfors <timo.lindfors@iki.fi> Thank you for the patches, I have pushed
 them upstream. 
 Content analysis details:   (-2.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
X-Headers-End: 1mJFe0-001mu1-Jy
Subject: Re: [tboot-devel] [PATCH 2/2] Ensure all source files end with a
 newline
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tboot-devel-bounces@lists.sourceforge.net

On Wed, 2021-08-25 at 12:05 +0300, Timo Juhani Lindfors wrote:
> From: Timo Lindfors <timo.lindfors@iki.fi>
> 
> Signed-off-by: Timo Juhani Lindfors <timo.lindfors@iki.fi>

Thank you for the patches, I have pushed them upstream.

Lukasz



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
