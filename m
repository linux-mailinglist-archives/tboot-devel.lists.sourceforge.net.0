Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 84DBA550581
	for <lists+tboot-devel@lfdr.de>; Sat, 18 Jun 2022 16:36:46 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1o2ZYw-0001lv-SJ; Sat, 18 Jun 2022 14:36:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <tcamuso@redhat.com>) id 1o2ZYv-0001ll-1e
 for tboot-devel@lists.sourceforge.net; Sat, 18 Jun 2022 14:36:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9cDruJmBNTw1DtYBLCJTelj61+Q5ILDLu/8ONvQFqjo=; b=ILwL3M9tnFGC3O6sgaYDum8k+d
 EtDoy7ZxkiU2GTdyTaZxNoKNBqhOjkemLAE8/i0aDRLoKSYKoiWwpGu0+SHgaTUj/IKSVGU5bncTW
 uWZjO1eeFxq3YmM/WOc1rC2Lmx0ZRXvg5xnsgH5ZWCWu4liImz/hcKztStoueKFbl5pQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9cDruJmBNTw1DtYBLCJTelj61+Q5ILDLu/8ONvQFqjo=; b=AEX3BHjUdEd8ovwgA+anFFrSkd
 ljfO1d2pNEHTApScWtDgwTCRc9wg3HLc8nZ9kemai5VOdcA+h43v9TEp9TMTYwU2ZwY2kOdOXAdmR
 mV4egKwCpCH/+4QQgG62pvEquUBMEFZYoQAfp2KTaHz4uli/7djGyZsPKtb3H4W8/XfA=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o2ZYq-0007oI-QD
 for tboot-devel@lists.sourceforge.net; Sat, 18 Jun 2022 14:36:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1655562982;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=9cDruJmBNTw1DtYBLCJTelj61+Q5ILDLu/8ONvQFqjo=;
 b=QtnvmrngKxdY0UxJXA98TxlEOFhxHzOA9ScEKAkCz81PkoGr/NWn5ceiCxRTTWbi8D6SvA
 VxbzztcIJhsR4G/i04ZpDmWrDXxXUpyHIPQEQl4vKhII1hBfb1Rims7OdhezGp6vLuVBjX
 dAsaQ276jfQ9B6/5QQguybNveoXTo7A=
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-411-Z0LbtCX8NSedmREXlkoO0g-1; Sat, 18 Jun 2022 10:36:21 -0400
X-MC-Unique: Z0LbtCX8NSedmREXlkoO0g-1
Received: by mail-qv1-f72.google.com with SMTP id
 q36-20020a0c9127000000b00461e3828064so7712307qvq.12
 for <tboot-devel@lists.sourceforge.net>; Sat, 18 Jun 2022 07:36:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:references:from:in-reply-to
 :content-transfer-encoding;
 bh=9cDruJmBNTw1DtYBLCJTelj61+Q5ILDLu/8ONvQFqjo=;
 b=hJ5EeltWstTLdya03pJZgoiLyW3Xp2ZheB8zyZO99RWUoEoL1twhCW8SP/B1r0MJWj
 dtrepco+FYMAF+RoHJI+QGN0Ek8EpaOgdXukulJPwiNIXQIrmnH300EIRTmJBfyQNrES
 s3UtL47Lgp5RhV7fz9fGNiF7wzunqzDGPWkkeLRC4iLHYX/Z65O72HTUSZA1+jbOxH3l
 r+N5DcgxftjvvFjD3Bb/iyQWIPpG+Z+7FtU/UuD3B3Y8bgYNC3qghZCVxXcQwhGMVFeY
 CmTsJlglAVR653hhhtJEe6w3MMQKN5gLXpOUBqwubTIqR0iC5ktUdUfqb6sEglNY9KPE
 KfQw==
X-Gm-Message-State: AJIora+TGtJDaH7KqkDoiClJY16EYB7HJDZCEf/czaaPuhOx4CptpWEB
 o1zFjT3Y6AVfq6b9V2GA7IQZ+SymlIBULQhAKA+u7sgDAuu2eEbGg8JJveHQM0RMjuEEaICP4G1
 hClzA9uvm9Eta4oZmrleWT1b0/FoUgMlaTofB4rFqkrs4WUX7GvUGaX2mTyODZHIFFgRi0/VJrG
 IXbPRD6w==
X-Received: by 2002:a05:6214:2307:b0:46e:5fbc:3c30 with SMTP id
 gc7-20020a056214230700b0046e5fbc3c30mr12657919qvb.21.1655562980764; 
 Sat, 18 Jun 2022 07:36:20 -0700 (PDT)
X-Google-Smtp-Source: AGRyM1sZREK52b5eWnVTYucUYmmuD5imbjbhUy4yeQd2psqSB5ZJimT2RyFCOMz4CH48X+pS0WH0mg==
X-Received: by 2002:a05:6214:2307:b0:46e:5fbc:3c30 with SMTP id
 gc7-20020a056214230700b0046e5fbc3c30mr12657904qvb.21.1655562980452; 
 Sat, 18 Jun 2022 07:36:20 -0700 (PDT)
Received: from ?IPV6:2600:1000:b03d:3fe7:3482:7587:3114:f06e?
 ([2600:1000:b03d:3fe7:3482:7587:3114:f06e])
 by smtp.gmail.com with ESMTPSA id
 x12-20020ac87a8c000000b00304fce6a137sm6257577qtr.66.2022.06.18.07.36.19
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 18 Jun 2022 07:36:19 -0700 (PDT)
Message-ID: <e54336f1-ade4-1c87-8ec2-5091bbdd2eb8@redhat.com>
Date: Sat, 18 Jun 2022 10:36:16 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
To: tboot-devel@lists.sourceforge.net, =?UTF-8?B?xYF1a2FzeiBIYXdyecWCa28=?=
 <lukasz@hawrylko.pl>
References: <mailman.79.1655554101.13999.tboot-devel@lists.sourceforge.net>
From: Tony Camuso <tcamuso@redhat.com>
In-Reply-To: <mailman.79.1655554101.13999.tboot-devel@lists.sourceforge.net>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=tcamuso@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -3.3 (---)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 6/18/2022 8:08 AM, lukasz hawrylko wrote: > Re: [PATCH]
 20_linux_tboot: efi logic was inverted > 'noefi' flag tells the kernel that
 even if current system is EFI based > it must not use EFI service [...] 
 Content analysis details:   (-3.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.129.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -1.8 NICE_REPLY_A           Looks like a legit reply (A)
 -0.6 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1o2ZYq-0007oI-QD
Subject: Re: [tboot-devel] [PATCH] 20_linux_tboot: efi logic was inverted
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



On 6/18/2022 8:08 AM, lukasz hawrylko wrote:
> Re: [PATCH] 20_linux_tboot: efi logic was inverted
> 'noefi' flag tells the kernel that even if current system is EFI based
> it must not use EFI services (to be precisely EFI Runtime Services).
> This is required because EFI is not a part of TXT TCB. After system
> enters TXT environment it must execute only the code that is measured.
> As EFI (and BIOS in general) is not measured from TXT perspective you
> are not allowed to use it. That's why 'noefi' flag is added.
> 
> Logic is correct in the original version. When EFI capable system is
> detected it adds 'noefi' flag to prevent kernel from using EFI. On 
> non-EFI systems this flag is pointless because kernel can't use EFI
> services if they do not exist.
> 
> If removing 'noefi' flag solves your issue, you should find out why.
> Maybe there is some information that kernel retrieves from EFI Runtime
> Services that is required to properly boot the platform. If this is the
> case, the only way to fix this correctly is to get this information in
> tboot, before GETSEC[SENTER], and that in some way pass it to the
> kernel.

You are correct. The chain of trust does not include the EFI runtime.
The system having the problem was using VROC. Intel confirms that
VROC cannot operate without EFI. They also confirmed the logical
conclusion that tboot and VROC are incompatible.

So, this is not a bug.



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
