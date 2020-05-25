Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6892F1E099D
	for <lists+tboot-devel@lfdr.de>; Mon, 25 May 2020 11:05:44 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1jd93B-0002vB-3I; Mon, 25 May 2020 09:05:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lukasz.hawrylko@linux.intel.com>) id 1jd93A-0002v4-Fx
 for tboot-devel@lists.sourceforge.net; Mon, 25 May 2020 09:05:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3dhHBMtUL82U5iTzstimP+dMO2djV9kUztj8a2ZvqZU=; b=ff4qU4upQvS4DlOJbyrIG6Kps4
 kEKzL1T2ZTCsKOIi8zkyIc7vXGCUHLiGaCqraGMJuKqX9HOZmaoyIHEm/HDJRP3rEDRTHXnj34ViO
 /NPhLkdhz+zpLqfxeasBOhuvjiwzbBJIkGdtMf9gF3iaQNr4KQeDJyiU3AubsWkn2VYc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=3dhHBMtUL82U5iTzstimP+dMO2djV9kUztj8a2ZvqZU=; b=XOAy+hKW+Lzn/9eZ2hTDklM0w0
 9L7MRMuT6SeIIuUH53nafzQonyMsLLFMjjBGgRy5h+z+fl/L+QlqkXL6A3vGm3dRuiOqMsEnSg/rN
 WjBDNFRjJWtn2toKqkw1ofdq0ViPPhqHuC8BCl0uOMvN9J428hze8Lo9D4FSi+5mSjLA=;
Received: from mga07.intel.com ([134.134.136.100])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jd938-00AdzR-Jc
 for tboot-devel@lists.sourceforge.net; Mon, 25 May 2020 09:05:36 +0000
IronPort-SDR: okHxKRWk4Kf/MJHvxVZakvAsaImm04EySryBp00IsaueFqeQ9QFDBZgKqPOFX5XqQUDY8F3NFf
 D1u1El2eB3Bg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2020 02:05:28 -0700
IronPort-SDR: usiyug9YK1qynVdAYZ/8mnAbF4Mhr75Gpgjhw0W/QbKMCJj/VAKccCperggH7gqZnARivrO+j3
 iNQI4rG38IfQ==
X-IronPort-AV: E=Sophos;i="5.73,432,1583222400"; d="scan'208";a="467998993"
Received: from lhawrylk-desk.ger.corp.intel.com ([10.213.8.237])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2020 02:05:27 -0700
Message-ID: <18d66ab05554860965a71fa0c9f9018f21f4c91a.camel@linux.intel.com>
From: Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>
To: Timo Juhani Lindfors <timo.lindfors@iki.fi>, 
 tboot-devel@lists.sourceforge.net
Date: Mon, 25 May 2020 11:05:24 +0200
In-Reply-To: <d4591fde44c08fb5a0f1.1590256820@sec-589.nixu.fi>
References: <d4591fde44c08fb5a0f1.1590256820@sec-589.nixu.fi>
User-Agent: Evolution 3.34.4 (3.34.4-1.fc31) 
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1jd938-00AdzR-Jc
Subject: Re: [tboot-devel] [PATCH] Ensure txt-acminfo does not print false
 information if msr is not loaded
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

On Sat, 2020-05-23 at 21:00 +0300, Timo Juhani Lindfors wrote:
> # HG changeset patch
> # User Timo Juhani Lindfors <timo.lindfors@iki.fi>
> # Date 1590255168 -10800
> #      Sat May 23 20:32:48 2020 +0300
> # Branch fix/acminfo-without-msr
> # Node ID d4591fde44c08fb5a0f1d1531b6df02c7223c67e
> # Parent  2ada74557b3db6c13deeda874c20c5132e40c53b
> Ensure txt-acminfo does not print false information if msr is not loaded
> 
> Previously txt-acminfo would report "ACM does not match platform"
> for all ACMs if the msr module was not loaded.
> 
> Signed-off-by: Timo Juhani Lindfors <timo.lindfors@iki.fi>
> 
> diff -r 2ada74557b3d -r d4591fde44c0 utils/txt-acminfo.c
> --- a/utils/txt-acminfo.c	Fri May 15 09:59:23 2020 +0200
> +++ b/utils/txt-acminfo.c	Sat May 23 20:32:48 2020 +0300
> @@ -39,6 +39,7 @@
>  #include <stdint.h>
>  #include <stdio.h>
>  #include <unistd.h>
> +#include <stdlib.h>
>  #include <string.h>
>  #include <sys/types.h>
>  #include <sys/stat.h>
> @@ -75,15 +76,19 @@
>      int fd = open("/dev/cpu/0/msr", O_RDONLY);
>      if ( fd == -1 ) {
>          printf("Error:  failed to open /dev/cpu/0/msr\n");
> -        return 0;
> +        printf("Perhaps you should modprobe msr?\n");
> +        exit(1);
>      }
>  
>      /* lseek() to MSR # */
> -    if ( lseek(fd, msr, SEEK_SET) == (off_t)-1 )
> +    if ( lseek(fd, msr, SEEK_SET) == (off_t)-1 ) {
>          printf("Error:  failed to find MSR 0x%x\n", msr);
> -    else {
> -        if ( read(fd, &val, sizeof(val)) != sizeof(val) )
> +        exit(1);
> +    } else {
> +        if ( read(fd, &val, sizeof(val)) != sizeof(val) ) {
>              printf("Error:  failed to read MSR 0x%x value\n", msr);
> +            exit(1);
> +        }
>      }
>  
>      close(fd);
> 

Merged.

Thanks,
Lukasz



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
