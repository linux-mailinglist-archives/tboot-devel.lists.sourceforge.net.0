Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 28AF114A437
	for <lists+tboot-devel@lfdr.de>; Mon, 27 Jan 2020 13:55:47 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1iw3vY-0005wn-KA; Mon, 27 Jan 2020 12:55:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lukasz.hawrylko@linux.intel.com>) id 1iw3vV-0005wF-Nq
 for tboot-devel@lists.sourceforge.net; Mon, 27 Jan 2020 12:55:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UyEMHCQffAxv5jCyZhDu/R7DiJQecgIjqmim841elss=; b=JYX+3jcc24RA43H2ecox0lj5Kc
 enamYp/szIwdFgC4T4YNGGkMKHy1Tk7aL2NTZWvQRowbGdE+1cscCaQBKozYv5IYhEO/wfTSIHGaY
 f8bEFTm4sGkL01LvKUrxroWnczpeR1pPIAx0sVAKYlOOShXc3+US/asnPvMQD3vYQmnA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=UyEMHCQffAxv5jCyZhDu/R7DiJQecgIjqmim841elss=; b=B6ngbxE9eaj5fC26I5YHAm7X6+
 8RYmyEGkYZYhSxsqyCGI7dRQGUtu4SKCweMuRuDD5zGOm4CL9Jwk6pkZBJlK/RwU3CIh2P3O54+7q
 Kut84gIuvpJjiBaTcbuYQldUSCZqeCOohOiHhsgO0yLsnDpyaTSSgBk7ipc+WQMqwhk0=;
Received: from mga17.intel.com ([192.55.52.151])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iw3vT-0026en-VK
 for tboot-devel@lists.sourceforge.net; Mon, 27 Jan 2020 12:55:37 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jan 2020 04:55:30 -0800
X-IronPort-AV: E=Sophos;i="5.70,369,1574150400"; d="scan'208";a="221725824"
Received: from lhawrylk-desk.igk.intel.com ([10.102.89.27])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jan 2020 04:55:28 -0800
Message-ID: <bf15b0895a450eddb91534783a8859de4fe80ddb.camel@linux.intel.com>
From: Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>
To: Christopher Clark <christopher.w.clark@gmail.com>, 
 tboot-devel@lists.sourceforge.net
Date: Mon, 27 Jan 2020 13:55:25 +0100
In-Reply-To: <20200124184035.8995-2-christopher.w.clark@gmail.com>
References: <20200124184035.8995-1-christopher.w.clark@gmail.com>
 <20200124184035.8995-2-christopher.w.clark@gmail.com>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1iw3vT-0026en-VK
Subject: Re: [tboot-devel] [PATCH 2/2] safestringlib: fix warnings with GCC
 6.4.0
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

On Fri, 2020-01-24 at 10:40 -0800, Christopher Clark wrote:
> Allow compilation with -Werror, which is enabled by default in OpenEmbedded.
> 
>  -Wunused-parameter fixes are macro related.
> 
>  -Wswitch-default fixes fall-throughs in format parsing that
>   would be caught during compilation by GCC (invalid formats).
> 
>  -Wdiscarded-qualifiers fixes add missing const around error messages
>   which are usually literals.
> 
>  -Wincompatible-pointer-types, mem_prim_set32() takes a uint32_t* from
>   wwmemset_s() wchar_t input without a cast.
> 
> Signed-off-by: Christopher Clark <
> christopher.w.clark@gmail.com
> >
> Patch is by Eric Chanudet for OpenXT:
> https://github.com/OpenXT/xenclient-oe/blob/fc13893594f684baea65b7ee09066a8ddb840b4d/recipes-security/tboot/tboot-1.9.9/0014-safestringlib-Attend-GCC-warnings.patch
> 
> 

Merged into upstream.

Thanks,
Lukasz




_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
