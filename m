Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6408C1CEEF3
	for <lists+tboot-devel@lfdr.de>; Tue, 12 May 2020 10:17:19 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1jYQ6F-0003Yw-WB; Tue, 12 May 2020 08:17:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lukasz.hawrylko@linux.intel.com>) id 1jYQ6E-0003Yl-IC
 for tboot-devel@lists.sourceforge.net; Tue, 12 May 2020 08:17:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=40A3vX6g2/kRaqxmLMMb742cwXM6gvhJpADoiuzucg8=; b=Ek//5ANI+9HS8x0a8/BGWGaig9
 TwE11VctvjcQeSaGP8bjjZtOtNc58uD8m8uLWCzgQ/rvEeLGh1RrYD04lQUNSWcNxOO5gygbNruoB
 KcN8RCHQU0zISJc932QYI4CDtJu2sAHsI34HTJfVQogy3UJGcFggBIXH/+fhG1L7HVZA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=40A3vX6g2/kRaqxmLMMb742cwXM6gvhJpADoiuzucg8=; b=W7YKGNUK8+PmfkLp5WnxKo7MFu
 pPYtGbpWKAPSGPeKb6y+XlSjEvIda4XivUOATdd/TO2fj9XvgNcjR60ZEZFVxfs8c6oykExzx6M2e
 YeBX4SciDzl0J573YB5uBJF0uHTeXHxtzOVFuABoLiJz/3WSTi20Xo1W52RcgGF1biQc=;
Received: from mga17.intel.com ([192.55.52.151])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jYQ6C-005o6n-Q6
 for tboot-devel@lists.sourceforge.net; Tue, 12 May 2020 08:17:14 +0000
IronPort-SDR: B/DhbeXWlfNw4Myp6ENXbxyPjUn4yxz5kEg6XI6gz9EOBhA++fzpan5DB+RDX0+x7DwU2na8zy
 i/a6TaxoNS/A==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2020 01:17:00 -0700
IronPort-SDR: KcMB4rBqdeNICsMfov+Ky4qJ5ulTb8Z70eog6VQ/JfSPglr27gMpQk5RMiH6+LBWhetTWrwxfZ
 Af/Qvou1dt/g==
X-IronPort-AV: E=Sophos;i="5.73,383,1583222400"; d="scan'208";a="437008839"
Received: from lhawrylk-desk.ger.corp.intel.com ([10.213.1.163])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2020 01:16:58 -0700
Message-ID: <3da41313c3b91f154f53f9c2c9645ade6399cff9.camel@linux.intel.com>
From: Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>
To: Timo Lindfors <timo.lindfors@iki.fi>, tboot-devel@lists.sourceforge.net
Date: Tue, 12 May 2020 10:16:56 +0200
In-Reply-To: <alpine.DEB.2.20.2005081919250.3828@mail.home>
References: <alpine.DEB.2.20.2005081919250.3828@mail.home>
User-Agent: Evolution 3.34.4 (3.34.4-1.fc31) 
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1jYQ6C-005o6n-Q6
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tboot-devel-bounces@lists.sourceforge.net

On Sat, 2020-05-09 at 00:55 +0300, Timo Lindfors wrote:
> Hi,
> 
> I get the following build failure on debian unstable with GCC 9.3.0:
> 
> tar xf tboot-1.9.12.tar.gz
> cd tboot-1.9.12/
> env CFLAGS="-g" make
> ...
> cc -z noexecstack -z relo -z now -c -o obj/mem_primitives_lib.o 
> safeclib/mem_primitives_lib.c -g -Wall -Wformat-security -Werror 
> -Wstrict-prototypes -Wextra -Winit-self -Wswitch-default 
> -Wunused-parameter -Wwrite-strings -Wlogical-op 
> -Wno-missing-field-initializers -Wno-address-of-packed-member 
> -fno-strict-aliasing -std=gnu99 -Wno-array-bounds -O2 -U_FORTIFY_SOURCE 
> -D_FORTIFY_SOURCE=2 -m64 -I/home/lindi/tboot-1.9.12/safestringlib/include 
> -Wall -Wformat-security -Werror -Wstrict-prototypes -Wextra -Winit-self 
> -Wswitch-default -Wunused-parameter -Wwrite-strings -Wlogical-op 
> -Wno-missing-field-initializers -Wno-address-of-packed-member 
> -fno-strict-aliasing -std=gnu99 -Wno-array-bounds -O2 -U_FORTIFY_SOURCE 
> -D_FORTIFY_SOURCE=2 -m64 -I/home/lindi/tboot-1.9.12/safestringlib/include 
> -Iinclude -fstack-protector-strong -fPIE -fPIC -O2 -D_FORTIFY_SOURCE=2 
> -Wformat -Wformat-security -DSTDC_HEADERS
> safeclib/mem_primitives_lib.c: In function \u2018mem_prim_set\u2019:
> safeclib/mem_primitives_lib.c:111:25: error: this statement may fall 
> through [-Werror=implicit-fallthrough=]
>    111 |         case 15:  *lp++ = value32;
>        |                   ~~~~~~^~~~~~~~~
> safeclib/mem_primitives_lib.c:112:9: note: here
>    112 |         case 14:  *lp++ = value32;
>        |         ^~~~
> 
> 
> It seems that Config.mk adds -Werror and -Wextra that cause this to 
> happen. Why doesn't this happen when CFLAGS is not set as an
> environment variable? Apparently because
> 
> CFLAGS += $(CFLAGS_WARN) -fno-strict-aliasing -std=gnu99
> 
> behaves differently with recursive makefiles if CFLAGS is in the 
> environment:
> 
> "By default, only variables that came from the environment or the command 
> line are passed to recursive invocations."
> 
>   https://www.gnu.org/software/make/manual/html_node/Environment.html
> 
> Is the intent here that CFLAGS_WARN should be used for the whole build? If 
> yes, then we need to add "export CFLAGS" to ensure that it is passed to 
> other makefiles and also fix that build failure.
> 
> If not, we need to add "unexport CFLAGS" and don't necessary need to fix 
> the switch-case statement.
> 
> 
> -Timo
> 

Hi

Thanks for investigating that issue. Fixed in a6180f9e9e86

Lukasz



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
