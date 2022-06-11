Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BA185477D5
	for <lists+tboot-devel@lfdr.de>; Sun, 12 Jun 2022 00:49:26 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1o09uv-0002EH-P4; Sat, 11 Jun 2022 22:49:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <tcamuso@redhat.com>) id 1o09uu-0002EB-EU
 for tboot-devel@lists.sourceforge.net; Sat, 11 Jun 2022 22:49:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=arkPhrZ1OvbQ5KvOR8Bf2CjuLeTl9dSBc+VNTlAWES4=; b=byzc0UdPehN6UNRZTtgvXqZD3F
 XeX/Dddqp7KTOi2zg/9qXFW0YlPxLnhnxubwbJyN9XFj5xbSCni5Ek8YFD/8F/ZQA2FSyAmR5NGh5
 B4dONsSpNDO9RxzFrgCdqIVi11wdkMG4Zg2gKOZZlJhiVM2qaTiqTjhrkeNf4AQ9LcBQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=arkPhrZ1OvbQ5KvOR8Bf2CjuLeTl9dSBc+VNTlAWES4=; b=GGAY59HAoOAd8doMbV50M8EdKR
 Fq9rsc0gG79bYfjE1BVJUAQ1Yd92fTQfICI8rUs/E8cTxuDJPnuXLf8US1cm5zsFWYrCK+y64eAk8
 Awjs/E82XDudzRNnCw0m1xjkdBTb8pIpzPzgoi2HwP2RaYSAL0MsAmow45UBU+X41tPA=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o09up-0004Hg-1m
 for tboot-devel@lists.sourceforge.net; Sat, 11 Jun 2022 22:49:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1654987744;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=arkPhrZ1OvbQ5KvOR8Bf2CjuLeTl9dSBc+VNTlAWES4=;
 b=SEYus+IohvnKGwEZSE8Rzm2qKECCUbm5aoyV9OovMYFjqeY7HXeuCiaqNf8ZNr0+kw/FX5
 cxhKJkBGjBG7l0kkm3575OaX8id2xWyX3W3ImNYCAu2lqtK8dFyIxVYxqSsm+AJyHGMd1l
 SaAW8Q/iLnPIuuvykl2+uaUeTLZjrls=
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com
 [209.85.222.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-644-9RikStSxM3SYQoFpIPQhwg-1; Sat, 11 Jun 2022 18:49:03 -0400
X-MC-Unique: 9RikStSxM3SYQoFpIPQhwg-1
Received: by mail-qk1-f198.google.com with SMTP id
 bl27-20020a05620a1a9b00b0069994eeb30cso2083603qkb.11
 for <tboot-devel@lists.sourceforge.net>; Sat, 11 Jun 2022 15:49:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=arkPhrZ1OvbQ5KvOR8Bf2CjuLeTl9dSBc+VNTlAWES4=;
 b=CAhpWzp/F8zTZ8cCD0ehEORjFgzwetPMgruitutAdJv1Vqh2ivm2Kc6X1DnQNwhDSX
 R204BS0as+GTUZbOGc5qdf14o4TLLNI7xKrQoipl+bWgRSUr3QMZ1L+bYYVnsPQC6Bew
 kEfZS7EY/AOjmLnbUcoTy562bmCKUKv9RNXYkXSYl7r1opXr5s6zHZs/kWLV8itRu+uK
 Ih9Fn2x1Xtj9+AyVP+n01OPVMJlTby6YfGVteMQRKGA69OfHdJ6mUNB1f1yC2c6Pekdi
 tJoDK9IHU5KeG+ip0GHBtfP2NeSWbZuSrNiQqUfgL8uleDj6IqpwbLrvjKCK1XuHsHPw
 uqpA==
X-Gm-Message-State: AOAM533FaLVsLS1p+nf3E6Y0t/ot5y3KmJaqp2BRpN7G3/VOhXnvLDrI
 Aqa0Ha3fbTghmCOZHkRRmLH35w0BEqwbwex0p8sCda9A+uBmito7xHLhSTwgLekMS1gmYya3lKE
 WnF5WF5A9fAshogTnYCNFEci2Gy/jFyY=
X-Received: by 2002:a05:620a:31a7:b0:6a7:63c0:9806 with SMTP id
 bi39-20020a05620a31a700b006a763c09806mr3352194qkb.292.1654987742032; 
 Sat, 11 Jun 2022 15:49:02 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxS+I+lAsRKLezXZS+HKX8v3S7cJeETi2DtRpGZibg3WVI8GTwaefU6MHI+BwEFbDXvHx9kfA==
X-Received: by 2002:a05:620a:31a7:b0:6a7:63c0:9806 with SMTP id
 bi39-20020a05620a31a700b006a763c09806mr3352188qkb.292.1654987741764; 
 Sat, 11 Jun 2022 15:49:01 -0700 (PDT)
Received: from [192.168.3.2] (232.sub-174-196-204.myvzw.com. [174.196.204.232])
 by smtp.gmail.com with ESMTPSA id
 b11-20020a05622a020b00b00304d8cdddfesm1997770qtx.86.2022.06.11.15.49.00
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 11 Jun 2022 15:49:01 -0700 (PDT)
Message-ID: <6e0ddd0e-3747-9508-9dca-5c11b6200843@redhat.com>
Date: Sat, 11 Jun 2022 18:48:58 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
To: Timo Lindfors <timo.lindfors@iki.fi>
References: <mailman.51.1654862842.17052.tboot-devel@lists.sourceforge.net>
 <0b09ebf4-9ab0-c41e-5d58-cef2d4ea8c19@redhat.com>
 <alpine.DEB.2.20.2206111021160.30792@mail.home>
 <9174302f-c4eb-fd3d-c755-569c46053f76@redhat.com>
 <alpine.DEB.2.20.2206112038030.31069@mail.home>
From: Tony Camuso <tcamuso@redhat.com>
In-Reply-To: <alpine.DEB.2.20.2206112038030.31069@mail.home>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=tcamuso@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -2.9 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 6/11/2022 1:41 PM, Timo Lindfors wrote: > On Sat, 11 Jun
 2022, Tony Camuso wrote: >> OK,
 so something is going wrong with the information
 that tboot is >> forwarding to the kernel launch. >> >> On [...] 
 Content analysis details:   (-2.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.133.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1o09up-0004Hg-1m
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
Cc: Lenny Szubowicz <lszubowi@redhat.com>, tboot-devel@lists.sourceforge.net,
 Jerry Snitselaar <jsnitsel@redhat.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: tboot-devel-bounces@lists.sourceforge.net



On 6/11/2022 1:41 PM, Timo Lindfors wrote:
> On Sat, 11 Jun 2022, Tony Camuso wrote:
>> OK, so something is going wrong with the information that tboot is
>> forwarding to the kernel launch.
>>
>> On the efi system, with "noefi" removed from the grub command line,
>> the system boots.
>>
>> With "noefi" in the grub command line, Device Mapper cannot find
>> the root and swap devices and drops to the dracut prompt.
>>
>> How can I determine what info efi is providing that tboot is not?
>>
>> Where can I instrument the code to gain that visibility?
> 
> I'm not too familiar with dracut but I'd imagine you can unpack the initramfs and investigate how it works. It might be easiest to spawn a shell at some point.
> 
> Can you reproduce the problem if you do a fresh install? What distribution is this? If you have easy steps to reproduce this I can try to take a look. I'm normally on Debian so will need good instructions for other distros :)
> 
> -Timo
> 

I'm using a RHEL-8.5 based on 5.14 kernel. CentOS 8.5 is the same thing.

You can probably reproduce it on a debian system with storage configured
as VROC RAID. You will need a motherboard and intel cpu that can implement
VROC RAID.

lenovo-st250v2 is the platform I'm using to reproduce the problem.

See...
https://www.intel.com/content/www/us/en/support/articles/000026106/memory-and-storage/ssd-software.html
https://www.intel.com/content/www/us/en/support/articles/000030445/memory-and-storage/ssd-management-tools.html

RAID info
====================================================================

# cat /proc/mdstat
Personalities : [raid0]
md126 : active raid0 sda[1] sdb[0]
       1855842304 blocks super external:/md127/0 128k chunks
       
md127 : inactive sda[1](S) sdb[0](S)
       10402 blocks super external:imsm
        
unused devices: <none>

# cat /etc/mdadm.conf
# mdadm.conf written out by anaconda
MAILADDR root
AUTO +imsm +1.x -all
ARRAY /dev/md/Volume0_0 UUID=8061c4cf:06de8a59:a9eefb7e:3edb011a
ARRAY /dev/md/imsm UUID=549c2ba4:1e03463b:d429e75b:398c67a3
---------------------------------------------------------------------

Physical Volume, Volume Group, and Logical Volume info
=====================================================================
# pvs
   PV           VG                     Fmt  Attr PSize  PFree
   /dev/md126p3 rhel_lenovo-st250v2-02 lvm2 a--  <1.73t    0

# vgs
   VG                     #PV #LV #SN Attr   VSize  VFree
   rhel_lenovo-st250v2-02   1   4   0 wz--n- <1.73t    0

# lvs
   LV   VG                     Attr       LSize
   home rhel_lenovo-st250v2-02 -wi-ao---- 500.00g
   root rhel_lenovo-st250v2-02 -wi-ao----  70.00g
   swap rhel_lenovo-st250v2-02 -wi-ao----  31.47g
   work rhel_lenovo-st250v2-02 -wi-ao----  <1.14t
-----------------------------------------------------------------------

By the time initramfs is running, it's too late, since the Device Mapper
cannot find the logical volumes.

*************
*   NOTE    *
*************
There are differences in the memmap that tboot hands off to the initramfs
with and without the "noefi" directive.

Failed with "noefi"
===================
TBOOT: get_highest_sized_ram: size 14e99600 -> base 62585000, size 24949000
   :                                                 ^^^^^^^^       ^^^^^^^^
TBOOT:  /swap console=ttyS0,115200N81 intel_iommu=on noefi
TBOOT: EFI memmap: memmap base: 0x69808, memmap size: 0x14a0
                                 ^^^^^^^               ^^^^^^

Successful boot with efi
========================
TBOOT: get_highest_sized_ram: size 14e99600 -> base 62045000 size 24789000
   :                                                 ^^^^^^^^      ^^^^^^^^
TBOOT:  /swap console=ttyS0,115200N81 intel_iommu=on
TBOOT: EFI memmap: memmap base: 0x69808, memmap size: 0x1b00
                                 ^^^^^^^               ^^^^^^



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
