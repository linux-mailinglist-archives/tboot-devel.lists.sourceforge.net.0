Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 141D614A44C
	for <lists+tboot-devel@lfdr.de>; Mon, 27 Jan 2020 13:56:20 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1iw3w7-0006Nd-HH; Mon, 27 Jan 2020 12:56:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lukasz.hawrylko@linux.intel.com>) id 1iw3w6-0006NQ-2R
 for tboot-devel@lists.sourceforge.net; Mon, 27 Jan 2020 12:56:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1oSumIlRgC/nZwq7ESbG/dgzCiuJ2uiE9LzgpfxQLDY=; b=SyP3l2o6hWZc20RLA+vFYcjiRT
 7rnPNxSh/cHCBdsSBXaM290yTaTE5ergAtKKbRh5yDG6Oz8JmXe2xWbfWfUEP62fI7eOu2XT4LqSD
 R3lskOa6Xwq4ab6dXTW67jYwoz5yUAOYMLptHfKKqUzR6v+5L0kPLjQCXSk//sr/pKxU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=1oSumIlRgC/nZwq7ESbG/dgzCiuJ2uiE9LzgpfxQLDY=; b=Q8rce+oAJWfMQx5OpODoExjxiw
 LorjuVc/OZj2SJuuPM0WmgAD4gJnXc7VziDx2rSMqJUwbeOcecz46T0UY4NP4t4tHCdjt+Nde1Bj7
 xE/c+p0o2PGYDxgdqkZO2GjSEQcjNZNt0C6R7vJQh6QpoOKeWwrWWzuewppiMT9oTt9g=;
Received: from mga17.intel.com ([192.55.52.151])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iw3w0-0077vZ-GR
 for tboot-devel@lists.sourceforge.net; Mon, 27 Jan 2020 12:56:13 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jan 2020 04:56:02 -0800
X-IronPort-AV: E=Sophos;i="5.70,369,1574150400"; d="scan'208";a="231443014"
Received: from lhawrylk-desk.igk.intel.com ([10.102.89.27])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jan 2020 04:56:01 -0800
Message-ID: <0ede1adc3ec94141d671d67b0397c26749490bd3.camel@linux.intel.com>
From: Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>
To: Christopher Clark <christopher.w.clark@gmail.com>, 
 tboot-devel@lists.sourceforge.net
Date: Mon, 27 Jan 2020 13:55:58 +0100
In-Reply-To: <20200124184035.8995-1-christopher.w.clark@gmail.com>
References: <20200124184035.8995-1-christopher.w.clark@gmail.com>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1iw3w0-0077vZ-GR
Subject: Re: [tboot-devel] [PATCH 1/1] Config.mk,
 safestringlib/makefile : allow tool overrides
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
> To simplify integration of tboot into build systems such as
> OpenEmbeddded, use softer assignments and appends to define
> the build tool and flag variables.
> 
> Signed-off-by: Christopher Clark <
> christopher.w.clark@gmail.com
> >
> 
> This patch is based on an OpenXT patch by Eric Chanudet:
> https://github.com/OpenXT/xenclient-oe/blob/fc13893594f684baea65b7ee09066a8ddb840b4d/recipes-security/tboot/tboot-1.9.9/0001-config-Allow-build-system-integration.patch
> 
> 

Merged into upstream.

Thanks,
Lukasz



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
