Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 98FAFC2D692
	for <lists+tboot-devel@lfdr.de>; Mon, 03 Nov 2025 18:15:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Content-Transfer-Encoding:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:References:To:MIME-Version:Date:
	Message-ID:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pRayZgGHdf4/0grBNjgXaeJyEQ7CRgoOXW+fb8Fgh84=; b=T+mDjAJAS1YkCKUxmGwQVeCw8L
	w4vIa6OhnRHq2cAQJo1gY6r1yXOqb2iqJfjzMfdb0IKmKYXYCynIrE+VGWnxKV15UHoM+CrPbK+WZ
	4O3Fe3bJEwk9SMo7sFzCor55aVjsERz83DmNn5cb6c0Ex6pOWoXMsC9P28pMAoHfJpfQ=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1vFy9d-0003bl-I9;
	Mon, 03 Nov 2025 17:15:41 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tcamuso@redhat.com>) id 1vFy9c-0003bf-2q
 for tboot-devel@lists.sourceforge.net;
 Mon, 03 Nov 2025 17:15:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:Cc:References:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PnznPuxxKdr7+2oiBKvnSxcKVeQM+1PEuHhjLaS53zg=; b=ihh8PCUjemlkZTzJJE8L1/EUyn
 M1Wv1/euEDxgbJWlPIMfxR8OlTACBeW/KXK829Db/+Bp/i2uZ0QATY2ZQOT4JXZAx8HxqqCAwhWX9
 RtB96ZE54Ehmu8qK1ncXxdK7hicDdGS4wQbLdWlMc9yorB0eE14CL1p+/yzTTtQtp6kA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:Cc:References:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=PnznPuxxKdr7+2oiBKvnSxcKVeQM+1PEuHhjLaS53zg=; b=eX8troww7EZ35wF5BYJxo9bDWM
 +AdAcJP9474Agz69PsSwPcnLp1818lBsfCHlzo1QOYo3rTDeQSc1CDsUpYp2oR6LvL+Ro7tzZMHPd
 RuGT54x22GcBbIe6Onfu35JKUXzng7kuS6O5SPWIGMRvbCw3cGwlUIVWh4Xtn9cuLt6s=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vFy9b-0003pc-F8 for tboot-devel@lists.sourceforge.net;
 Mon, 03 Nov 2025 17:15:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1762190128;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=PnznPuxxKdr7+2oiBKvnSxcKVeQM+1PEuHhjLaS53zg=;
 b=LPXgXUMoNr1Bv9AUHCOT0PrrOLh5t/ZC/EyADHGO+m/jaCbRwPeS7StwbvF38ZZXamTSQW
 SIpNGVMJBvHls+IymVjCEYfGWmN06ZkfSuO3SpDKB7X2M+uaVNSB8eMHgqtJfCXEnHDbEW
 yNRNLOmijcePg+NNk61W0QDz30zTPXY=
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com
 [209.85.160.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-9-GVqG47t-OEWjeNnfU1NNhg-1; Mon, 03 Nov 2025 12:15:27 -0500
X-MC-Unique: GVqG47t-OEWjeNnfU1NNhg-1
X-Mimecast-MFC-AGG-ID: GVqG47t-OEWjeNnfU1NNhg_1762190127
Received: by mail-qt1-f198.google.com with SMTP id
 d75a77b69052e-4e88947a773so226152111cf.2
 for <tboot-devel@lists.sourceforge.net>; Mon, 03 Nov 2025 09:15:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1762190126; x=1762794926;
 h=content-transfer-encoding:in-reply-to:from:cc:content-language
 :references:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=PnznPuxxKdr7+2oiBKvnSxcKVeQM+1PEuHhjLaS53zg=;
 b=QBf4hHxTSeZ7I8lz5cTJEoi+kPTHh9UoO7pymzCMS5Bkd70T6lTy8ouApEDXZLSug2
 Au6uROgbXBKiXCbTj0KD5aisCN2S3xBZDe8LsEqKqrlGRwnGKy+8vJfJbH8jRIPEQyzS
 Wh7lztjdbotshvLT6/Skg6WvrlvKgtQuSMcG0FPc2NxfbzTuQL3uqT0+ow44VVjUjkgt
 7QLFxpsCMc5/WhJv7TcHKoNY+N5d3M4VKZKrU+dRyqOcq1ixJUNgQiwkk6R9eokvjr9Y
 kQdh5Rw+2NYWZuPr7lwkQOgiixcaC3xbL2LsGa4+kqVKg3DA7SUthLc4HrD8WD1dnuAE
 NHkw==
X-Gm-Message-State: AOJu0YzC7KTjqI8ZbDlW2hTRtcPMoHX59/cqCZgrFrESV2gslqvdb55y
 /Ms7t3lxfz11nkh2z2+KZXOoFIhNdxwnYOxC3eiqbN8IhH3ux/ZIidr9VafGPcQXRJLsRPEE7om
 AvnH0iAZwVklgnEv5n+1VpRfhsVDeFSkvBZduKA/krkLfTHj39jsbnG6TsXV1ZuHamLqGj9cxfs
 nvKQ4q0ivGDCOd2Xs4kb/gijROwA1pwktvhQjcR6DF8ZQRXxJI9Rk/ulc=
X-Gm-Gg: ASbGncubLttUoJskuR3S57vI4BWRuKVckQ42FBaJ7sHxTCZCrjSLnMUQNtbt0wn9Ae+
 YBR1xAaH9X0IXCfxaewF2RGEuJFcv+6WdvICWkN2pgBrjcRRNiUPoy1iD8dccqdz7blneuXpDK7
 MExNPstM0LfQFWKH8MdG2KvqGEFUqpJY/lsFum+CVS/NRuWNcad21ICWCvWeUobeJ/mUGnDj4+e
 ghRdlq3SEVlX5C49yKG2rYUEXv+K4ETHqgL9dgbiEnfheD7Y8rNKLqr1h7lupnlDzXZyhWTDUDI
 L82zlHdzwC6n3J5PqeLr1otcga3CTlU1e7XseWkMYmhh24EctFSE+NSlcA8hhVOMHWCYggP6Bcs
 pR8QM7ZaxTSm35g==
X-Received: by 2002:ac8:594d:0:b0:4e8:bab2:9e0d with SMTP id
 d75a77b69052e-4ed30def6c1mr162565761cf.18.1762190124723; 
 Mon, 03 Nov 2025 09:15:24 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGwHDuMEP88FV5jJydrIryRrRKvWwAxGiFiJoHUKRNvc/MJLY/SuDUoFg/nCV6eMG7KaxoJFQ==
X-Received: by 2002:ac8:594d:0:b0:4e8:bab2:9e0d with SMTP id
 d75a77b69052e-4ed30def6c1mr162564901cf.18.1762190124041; 
 Mon, 03 Nov 2025 09:15:24 -0800 (PST)
Received: from [192.168.3.252] ([74.75.144.57])
 by smtp.gmail.com with ESMTPSA id
 d75a77b69052e-4ed5fc1aeb4sm1919721cf.31.2025.11.03.09.15.22
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 03 Nov 2025 09:15:23 -0800 (PST)
Message-ID: <414734b4-b982-430c-8275-1fde08fcbdf6@redhat.com>
Date: Mon, 3 Nov 2025 12:15:21 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: tboot-devel@lists.sourceforge.net,
 tboot-devel-request@lists.sourceforge.net
References: <mailman.33.1760703259.29766.tboot-devel@lists.sourceforge.net>
In-Reply-To: <mailman.33.1760703259.29766.tboot-devel@lists.sourceforge.net>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: rxgebAaTKHTsVqU68-f9dX97IhuJxGx9EF5sJf3PkfY_1762190127
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Mark, Michael, Has this patch been submitted upstream yet?
 If so, to what branch? Thanks 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [170.10.129.124 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1vFy9b-0003pc-F8
Subject: Re: [tboot-devel] tboot-devel Digest, Vol 160, Issue 1
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
From: Tony Camuso via tboot-devel <tboot-devel@lists.sourceforge.net>
Reply-To: Tony Camuso <tcamuso@redhat.com>
Cc: mgross@linux.intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: tboot-devel-bounces@lists.sourceforge.net

Mark, Michael,

Has this patch been submitted upstream yet?
If so, to what branch?

Thanks

On 10/17/2025 8:14 AM, tboot-devel-request@lists.sourceforge.net wrote:
> Send tboot-devel mailing list submissions to
> 	tboot-devel@lists.sourceforge.net
> 
> To subscribe or unsubscribe via the World Wide Web, visit
> 	https://lists.sourceforge.net/lists/listinfo/tboot-devel
> or, via email, send a message with subject or body 'help' to
> 	tboot-devel-request@lists.sourceforge.net
> 
> You can reach the person managing the list at
> 	tboot-devel-owner@lists.sourceforge.net
> 
> When replying, please edit your Subject line so it is more specific
> than "Re: Contents of tboot-devel digest..."
> 
> 
> Today's Topics:
> 
>     1. [PATCH 1/1] Disable CET when calling tboot shutdown
>        procedure. (Michal Camacho Romero)
> 
> 
> ----------------------------------------------------------------------
> 
> Message: 1
> Date: Fri, 17 Oct 2025 09:36:19 +0200
> From: Michal Camacho Romero <michal.camacho.romero@linux.intel.com>
> To: tboot-devel@lists.sourceforge.net,	ning.sun@intel.com
> Cc: mateusz.mowka@intel.com, Mark Gross <mgross@linux.intel.com>, Mark
> 	Gross <mark.gross@intel.com>, Michal Camacho Romero
> 	<michal.camacho.romero@linux.intel.com>
> Subject: [tboot-devel] [PATCH 1/1] Disable CET when calling tboot
> 	shutdown procedure.
> Message-ID:
> 	<20251017073619.547993-1-michal.camacho.romero@linux.intel.com>
> 
> From: Mark Gross <mgross@linux.intel.com>
> 
> The tboot->shutdown_entry is effectively bios code and CET needs to be
> disabled before calling it.
> 
> It resolves TBOOT shutdown failure bug, reported on the SLES (SUSE Linux
> Enterprise Server) 16.0 OS. OS power off, called by the "init 0" command,
> was failing, due to activated Intel Control-Flow Enforcement Technology (CET).
> Disabling CET has allowed to execute OS and TBOOT shutdown properly.
> 
> Closes: https://bugzilla.suse.com/show_bug.cgi?id=1247950
> Signed-off-by: Mark Gross <mark.gross@intel.com>
> Signed-off-by: Michal Camacho Romero <michal.camacho.romero@linux.intel.com>
> ---
>   arch/x86/kernel/tboot.c | 5 +++++
>   1 file changed, 5 insertions(+)
> 
> diff --git a/arch/x86/kernel/tboot.c b/arch/x86/kernel/tboot.c
> index 46b8f1f16676..73396c43a7ad 100644
> --- a/arch/x86/kernel/tboot.c
> +++ b/arch/x86/kernel/tboot.c
> @@ -28,6 +28,7 @@
>   #include <asm/setup.h>
>   #include <asm/e820/api.h>
>   #include <asm/io.h>
> +#include <asm/cpu.h>
>   
>   #include "../realmode/rm/wakeup.h"
>   
> @@ -247,6 +248,10 @@ void tboot_shutdown(u32 shutdown_type)
>   
>   	switch_to_tboot_pt();
>   
> +	/*
> +	 * toggle off CET while we call shutdown_entry in bios
> +	 */
> +	cet_disable();
>   	shutdown = (void(*)(void))(unsigned long)tboot->shutdown_entry;
>   	shutdown();
>   



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
