Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BE254547657
	for <lists+tboot-devel@lfdr.de>; Sat, 11 Jun 2022 18:09:08 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1o03fZ-0005zV-Ji; Sat, 11 Jun 2022 16:09:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <tcamuso@redhat.com>) id 1o03fY-0005zC-EA
 for tboot-devel@lists.sourceforge.net; Sat, 11 Jun 2022 16:09:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Jy4VrxRWt6B4ib+IKCLI6pPV9ZkJHznQ7dop04OEDjI=; b=i8F+3weVQkjcDam9DI1dO6YIBQ
 W2a4+Yernayy7LjV3pGatjcHS2lMfqiKiAHcsqjJF6q4a+A6+trzplpF8WSIAnUVqQiaKqZtN7Nql
 mVZ32ozob5rC38Ec+HAyg03ur9kKPi77iMWaW7e3sia4SpX9O8UlPKtGzlGofUy5DmV0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Jy4VrxRWt6B4ib+IKCLI6pPV9ZkJHznQ7dop04OEDjI=; b=mi3hOSZZZkK+Mk6zMA7v4BKvGr
 UodmF8b1DZ1QZ19/PLVERZLRIjFF4uyag3oucBDNLXagtqACKoL5/uPA643BijS6YygNrMOei1lSl
 Cn9IdDULgg4/GxP7Ql7kskKNH1XyxyY5i2Izb56hUQvlrZwocdl7untI4sDzpczR48k0=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o03fO-00071M-A3
 for tboot-devel@lists.sourceforge.net; Sat, 11 Jun 2022 16:09:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1654963725;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Jy4VrxRWt6B4ib+IKCLI6pPV9ZkJHznQ7dop04OEDjI=;
 b=MaRWVj9D12RbLbYlglBcGpjogytQP0BlbCfk9dMIsmzrz25INm7b/HvmYpi7oPXCqEfx+8
 plGv907QwsLguZu9wjD4Ie3erf7MBm8f+6QR/ybRqK8otpjN4gG5794scni85RoAq3BiE1
 t0us7WH+pnEGS1vnlOQaz1u7tUhpE2s=
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-1-AnrlKdiiPweXp8ONrR-fBQ-1; Sat, 11 Jun 2022 12:08:44 -0400
X-MC-Unique: AnrlKdiiPweXp8ONrR-fBQ-1
Received: by mail-qv1-f69.google.com with SMTP id
 q36-20020a0c9127000000b00461e3828064so1502283qvq.12
 for <tboot-devel@lists.sourceforge.net>; Sat, 11 Jun 2022 09:08:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=Jy4VrxRWt6B4ib+IKCLI6pPV9ZkJHznQ7dop04OEDjI=;
 b=wwHfTckepQifUcp6gne+dyYpqkcmeThWos1CyI4UbAEOIzIUwBvC5zf8C11FL+1OjI
 jXQFLI3JAaFttZVQIHlYyFxqTHEOltISPT5JpE3U7QBgYdAK7fqWRzMyEfBltaumAFQ4
 zItP4aiO+PVUJ1np5bkH534bxXg6j+yRwQN8S0JAiDKYoYWfJbM1Xp7I6hRAAT8eGz+h
 X5/lDQdiXloGaWcRxmiOpASU2v05N9bVcCm2H40hUGDPLNifsJx3LjdSLbHzDvSqyIb6
 Vj2jnWS2RDiGUkgfBWKpNUAH4YW9r/TiPcPFXTOqB8ZieYonWyE/3JIYBz0I1zu/DupI
 0ABw==
X-Gm-Message-State: AOAM531nzoKfeg0hx52Sr7ILU8xA4PuiGE2aKqkUM6F5LVWa19cMppWC
 cUbibLprlaRzyUpmaGvqxvoWLRLe7HCjPPxusrnUTWrAjcA+xfYiGNb4wbDjaFSLm+N9Ns1Tvf3
 BPiixCb+v80/MXqT8w6+zE5fNHUJFkmA=
X-Received: by 2002:a05:6214:29eb:b0:46b:c933:c3d9 with SMTP id
 jv11-20020a05621429eb00b0046bc933c3d9mr16941339qvb.93.1654963723634; 
 Sat, 11 Jun 2022 09:08:43 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw6/9dsl6TFlcZmPMl30dSLGx9oOHO26VGFmbOhzx8bUxPXafqT/NLtHXO2joMv3hzkkrS0ug==
X-Received: by 2002:a05:6214:29eb:b0:46b:c933:c3d9 with SMTP id
 jv11-20020a05621429eb00b0046bc933c3d9mr16941318qvb.93.1654963723367; 
 Sat, 11 Jun 2022 09:08:43 -0700 (PDT)
Received: from [192.168.3.2] (232.sub-174-196-204.myvzw.com. [174.196.204.232])
 by smtp.gmail.com with ESMTPSA id
 m13-20020ac866cd000000b00304ed2c0f25sm1492836qtp.50.2022.06.11.09.08.42
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 11 Jun 2022 09:08:42 -0700 (PDT)
Message-ID: <9174302f-c4eb-fd3d-c755-569c46053f76@redhat.com>
Date: Sat, 11 Jun 2022 12:08:40 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
To: Timo Lindfors <timo.lindfors@iki.fi>
References: <mailman.51.1654862842.17052.tboot-devel@lists.sourceforge.net>
 <0b09ebf4-9ab0-c41e-5d58-cef2d4ea8c19@redhat.com>
 <alpine.DEB.2.20.2206111021160.30792@mail.home>
From: Tony Camuso <tcamuso@redhat.com>
In-Reply-To: <alpine.DEB.2.20.2206111021160.30792@mail.home>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=tcamuso@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -2.6 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 6/11/2022 3:24 AM, Timo Lindfors wrote: > > On Fri, 10
 Jun 2022, Tony Camuso wrote: >> If your system is booting in efi mode, then
 it needs efi. >> If it's booting in legacy bios mode, then it does [...] 
 Content analysis details:   (-2.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.129.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -1.2 NICE_REPLY_A           Looks like a legit reply (A)
 -1.1 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1o03fO-00071M-A3
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
Cc: Lenny Szubowicz <lszubowi@redhat.com>, tboot-devel@lists.sourceforge.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: tboot-devel-bounces@lists.sourceforge.net



On 6/11/2022 3:24 AM, Timo Lindfors wrote:
> 
> On Fri, 10 Jun 2022, Tony Camuso wrote:
>> If your system is booting in efi mode, then it needs efi.
>> If it's booting in legacy bios mode, then it doesn't need efi
> 
> Commit https://sourceforge.net/p/tboot/code/ci/aad782103a6e
> 
> says that
> 
> "Note that booting *without* noefi is a security risk since the EFI runtime is not part of the trust base after a dynamic launch."
> 
> 
> This suggests to me that you need to use "noefi" on an EFI system to minimize risks.

OK, so something is going wrong with the information that tboot is
forwarding to the kernel launch.

On the efi system, with "noefi" removed from the grub command line,
the system boots.

With "noefi" in the grub command line, Device Mapper cannot find
the root and swap devices and drops to the dracut prompt.

How can I determine what info efi is providing that tboot is not?

Where can I instrument the code to gain that visibility?


> 
> -Timo
> 



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
