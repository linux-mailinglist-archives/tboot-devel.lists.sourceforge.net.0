Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CC221FF321
	for <lists+tboot-devel@lfdr.de>; Thu, 18 Jun 2020 15:34:34 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1jlugT-0002Nj-Me; Thu, 18 Jun 2020 13:34:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lukasz.hawrylko@linux.intel.com>) id 1jlugR-0002NO-2Z
 for tboot-devel@lists.sourceforge.net; Thu, 18 Jun 2020 13:34:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6f0wL2rnW57nMtievX8oGYQUkpZZSaijfYLhluiFTAg=; b=nVju7O9s5B4hNIeSJ2tyPLnP6x
 +uS5EzEFrUR+mOFrKZ6faiyyt1Us9q1npgGpeII9biJszf9zEs9kaSwmXIlVzbtRPrWqnQoWJFBOj
 WXNfEwX+OeC4+BgR6DVSzVwNH/c5VIN/W/a2ry1egixVMad/tcasqcBTl9qCzbmKcpkc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6f0wL2rnW57nMtievX8oGYQUkpZZSaijfYLhluiFTAg=; b=VJ86/1EDyZL5SCI8rNPxuU60lq
 afZsTfC2+ichylQxSB35VYUlqlfGzwHF1gBx1leevpnxcpdgsXefF8XNY/UWM2zPh/dL0OCc/tW52
 zRp1ayHnW1u8ifqsNJsg72L+9lXou5oGpzWjc/YeiglZIiikPNQ5VHiIpgtZT8x2ZvaE=;
Received: from mga17.intel.com ([192.55.52.151])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jlugO-007iPG-Hg
 for tboot-devel@lists.sourceforge.net; Thu, 18 Jun 2020 13:34:23 +0000
IronPort-SDR: 5ElsUo6R9nxZHa+Pq7goqLsV4mrIt5RTx3/1IyciorqzezKmsoU2FBslgQ+0kkeDu1rIJ8tY3c
 PP7jX4kl10cg==
X-IronPort-AV: E=McAfee;i="6000,8403,9655"; a="122789551"
X-IronPort-AV: E=Sophos;i="5.73,526,1583222400"; d="scan'208";a="122789551"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2020 06:33:57 -0700
IronPort-SDR: 2MLHhBEbMAHJd/XvgNqU24+/9y4EHLUib8FZD04VRZUVvN6m7njzUMBZWY/KFTpjt7JuWA9eE1
 ij2dsxOlLeWg==
X-IronPort-AV: E=Sophos;i="5.73,526,1583222400"; d="scan'208";a="421499751"
Received: from lhawrylk-desk.ger.corp.intel.com ([10.213.22.62])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2020 06:33:56 -0700
Message-ID: <c35bdbb3627dd8cf589d99ae1221bc0aaafd0a59.camel@linux.intel.com>
From: Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>
To: Tony Camuso <tcamuso@redhat.com>, tboot-devel@lists.sourceforge.net
Date: Thu, 18 Jun 2020 15:33:54 +0200
In-Reply-To: <20200617125417.20570-1-tcamuso@redhat.com>
References: <20200617125417.20570-1-tcamuso@redhat.com>
User-Agent: Evolution 3.34.4 (3.34.4-1.fc31) 
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: config.mk]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1jlugO-007iPG-Hg
Subject: Re: [tboot-devel] tboot fails to build on GCC7+
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

On Wed, 2020-06-17 at 08:54 -0400, Tony Camuso wrote:
> Sorry for the noise, if this has already been reported or corrected.
> 
> tboot is built with the -Wextra Cflag, which is an alias for a
> collection of warning flags. tboot's make interprets warnings as errors.
> 
> From GCC 7 forward, the -Wextra Cflag includes -Wimplicit-fallthrough.
> 
> The GCC 7+ switch statement requires a break statement after each case.
> Without a break statement after a case, then an "implicit fallthrough"
> condition exists, where the matched case is executed, and the following
> case is also executed. If none of the fallthrough cases has a statement,
> and if the last statement in the fallthrough cascade is a break, all is
> forgiven, and the GCC 7+ compiler will move on.
> 
> Otherwise, GCC 7+ with -Wextra will issue the following error when
> -Werror is set, as it is in the tboot make.
> 
> error: this statement may fall through [-Werror=implicit-fallthrough=]
> 
> That means case statements with implicit fallthroughs will be flagged
> as compile errors and crater the build. There exists a number of
> compiler specific ways to tell the compiler that the fallthrough is
> there by design, but the simplest way to avert this problem is to add
> the -Wno-implicit-fallthrough flag to the CFLAGS_WARN variable in tboot's
> Config.mk file.
> 

Hi Tony

Thank you for your patch. This is already fixed in a6180f9e9e86. In
general we want to have -Wimplicit-fallthrough enabled, however there
was a bug where different CFLAGS value was passed to safestringlib
Makefile depends on building environment. Sometimes safestringlib was
build with -Werror -Wextra, sometimes not. [1]

Could you please check if with that commit you can build TBOOT without
errors?

[1] https://sourceforge.net/p/tboot/mailman/message/37005286/

Thanks,
Lukasz



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
