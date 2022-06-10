Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 52DDC546686
	for <lists+tboot-devel@lfdr.de>; Fri, 10 Jun 2022 14:24:19 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1nzdgA-00014w-QA; Fri, 10 Jun 2022 12:23:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <tcamuso@redhat.com>) id 1nzdfy-00014d-Fl
 for tboot-devel@lists.sourceforge.net; Fri, 10 Jun 2022 12:23:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:Cc:References:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ny88syyA2IBPpa6CTgrNrFJWtsCBLcYzGI4hCvVlzmo=; b=UWBwoqggGfgoN3iQbr5grsq4vm
 roAksiH59EkrIFZKQO0qisoBBu1PyFZdIlpmaBuwmsHU4TGCSlIX7lulo0XYAW/DpBcSaK8iCfUJg
 gRv4tI+iXXLWujO2F4QTxCqJl+zbvou9hoYNwnsjW53Cv7s76hXfWdiOh8I9ijDcIfJA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:Cc:References:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Ny88syyA2IBPpa6CTgrNrFJWtsCBLcYzGI4hCvVlzmo=; b=jiATBZ2pfBsk0tGAR2Dqn81Vyg
 96eR8xEIg5rAdgyOxQi+0vaj/5gFle5gsCIwHoAGM5gZQQyqNhK57KYUjn8wvL9ownp478AhR+wep
 VoX3cTF5v0uqaRy6V1oLP8ApQZjKRAv3yXYUg8O2jQbSPEIzAD9SsXm1xmbuI/Con6No=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nzdfs-00DUrI-LV
 for tboot-devel@lists.sourceforge.net; Fri, 10 Jun 2022 12:23:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1654863808;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Ny88syyA2IBPpa6CTgrNrFJWtsCBLcYzGI4hCvVlzmo=;
 b=X2Sa609Tq1WNv6036LSUZz8edmlE07UpxchnouoDMhZqtmqPPMZPCx1/mZV8+PsuEbBSbY
 4HfEYSduiiu2uGvVWDlLlpRuwx+aqExtOy8+ORoJqML38mwYQ52kJRExEnmHCPRDXNoiGW
 9bSMemzF5mLqrfmyq1LwnREkw6KiETk=
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com
 [209.85.219.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-620-5H5Nxc5wOyeCckAH-sz6wg-1; Fri, 10 Jun 2022 08:23:27 -0400
X-MC-Unique: 5H5Nxc5wOyeCckAH-sz6wg-1
Received: by mail-qv1-f70.google.com with SMTP id
 r14-20020ad4576e000000b0046bbacd783bso7130775qvx.14
 for <tboot-devel@lists.sourceforge.net>; Fri, 10 Jun 2022 05:23:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:references:cc:from:in-reply-to
 :content-transfer-encoding;
 bh=Ny88syyA2IBPpa6CTgrNrFJWtsCBLcYzGI4hCvVlzmo=;
 b=y1bdETHR6viI9aMlFdRZb59K8AR4Fo4n01TSpOp1IetCxWD9Lyggt7S+bbzUQIHzR3
 Cvhid6eXhyJdFxRvN/TrcnQv6HHuQPPb1KUXpZpot3tJBjtcX635YNd71jmc0HnYl2tG
 Liu1d53bWTkJWEQhP6UVLIh+OyGGVfCfAc1Bn10dHEyOy+8Sp5tnq513s5KdHSRza4WC
 fbsTZXXdIjPwF7xt2noMVGVLqcqomp2Ks5/2vy01X7DqwOTq/kjRXu5dtplotiSYgrSS
 a36RfKI0L/73vVyI4sqkJdJoo9ejpmqBlDX+cSH7lHDLdu3t6kt2YN1xP5OVSHOWGnJh
 sxvQ==
X-Gm-Message-State: AOAM533dLMsBSQn/PDyNnSDfg5ethu28kz3h1s6l+4HjuGUQ3zEC9Bqy
 8T4bNukJUCAxPH9Pcck3TJxUl/BrKFVctGRNk2zmL4/ojiBVRbI27+tbSMgjuoP4bDM35/v6oBm
 uka9EAvvdYHbUfpffQ++m0BslTq7a0OJV9fqhgmWxnTVSi2Wprsyx/K7WiXM1kn56dxNCk51RDa
 mJcXzRrw==
X-Received: by 2002:ac8:7dd0:0:b0:301:a2d9:5cd9 with SMTP id
 c16-20020ac87dd0000000b00301a2d95cd9mr35633007qte.127.1654863806877; 
 Fri, 10 Jun 2022 05:23:26 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzAI9JUxJCUqGFkotpjHb5Q06lmce/kWjbW2mOYbDAUln7HDPckGq4ab2W/v9rMV3ds8mP7tw==
X-Received: by 2002:ac8:7dd0:0:b0:301:a2d9:5cd9 with SMTP id
 c16-20020ac87dd0000000b00301a2d95cd9mr35632980qte.127.1654863806499; 
 Fri, 10 Jun 2022 05:23:26 -0700 (PDT)
Received: from [192.168.3.2] (88.sub-174-242-76.myvzw.com. [174.242.76.88])
 by smtp.gmail.com with ESMTPSA id
 a8-20020a05620a102800b006a6ae9150fesm2775107qkk.41.2022.06.10.05.23.25
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 10 Jun 2022 05:23:25 -0700 (PDT)
Message-ID: <0b09ebf4-9ab0-c41e-5d58-cef2d4ea8c19@redhat.com>
Date: Fri, 10 Jun 2022 08:23:22 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
To: tboot-devel@lists.sourceforge.net, z23@posteo.net
References: <mailman.51.1654862842.17052.tboot-devel@lists.sourceforge.net>
From: Tony Camuso <tcamuso@redhat.com>
In-Reply-To: <mailman.51.1654862842.17052.tboot-devel@lists.sourceforge.net>
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
 Content preview:  > Date: Fri, 10 Jun 2022 02:13:16 +0000 > From: Derek Dolney
 <z23@posteo.net> > To: tboot-devel@lists.sourceforge.net > Subject: Re:
 [tboot-devel]
 [PATCH] 20_linux_tboot: efi logic was > inverted > Me [...] 
 Content analysis details:   (-2.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.133.124 listed in list.dnswl.org]
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
X-Headers-End: 1nzdfs-00DUrI-LV
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


> Date: Fri, 10 Jun 2022 02:13:16 +0000
> From: Derek Dolney <z23@posteo.net>
> To: tboot-devel@lists.sourceforge.net
> Subject: Re: [tboot-devel] [PATCH] 20_linux_tboot: efi logic was
> 	inverted
> Message-ID: <18aa51fa-b99b-cf46-e805-695499eab2e3@posteo.net>
> Content-Type: text/plain; charset=windows-1252
> 
> On a Thinkpad T430 this would break my boot. I have /sys/firmware/efi
> and I need the noefi kernel param, otherwise it just reboots itself
> about 10-20 sec after SENTER

If your system is booting in efi mode, then it needs efi.
If it's booting in legacy bios mode, then it doesn't need efi

That's how the logic in this grub script is supposed to work.
The current logic is inverted and needs to be corrected so it
works that way.

Have you tried grub2-mkconfig with this corrected grub script?
You can also try editing the module2 stanza in the grub menu with
and without 'noefi' at the end of it.

If your system is booting legacy mode and needs efi to launch
tboot, or if it's booting efi and needs 'noefi' stanza, then
something else is broken.

> On 6/9/22 3:04 PM, Tony Camuso wrote:
>> # HG changeset patch
>> # User Tony Camuso <tcamuso@redhhat.com>
>> # Date 1654800659 14400
>> #????? Thu Jun 09 14:50:59 2022 -0400
>> # Node ID be868f53407d4460491a0e77e5165025153b0329
>> # Parent? 206a47f3e9d2c18c8a3db082216ee6fc3c5d475c
>> 20_linux_tboot: efi logic was inverted
>>
>> There was a RAID0 system that could boot normally, but not through
>> a tboot launch. The problem was that the logic in this script
>> incorrectly appended 'noefi' to the grub.cfg module2 kernel stanza.
>>
>> When 'noefi' was removed from that stanza, the system could boot
>> through a tboot launch. This patch corrects the logic in the script.
>>
>> diff -r 206a47f3e9d2 -r be868f53407d tboot/20_linux_tboot
>> --- a/tboot/20_linux_tboot??? Thu Mar 17 23:58:50 2022 +0200
>> +++ b/tboot/20_linux_tboot??? Thu Jun 09 14:50:59 2022 -0400
>> @@ -105,11 +105,11 @@
>> ?? if [ -d /sys/firmware/efi ] ; then
>> ?????? mb_directive="multiboot2"
>> ?????? mb_mod_directive="module2"
>> -????? mb_extra_kernel="noefi"
>> +????? mb_extra_kernel=""
>> ?? else
>> ?????? mb_directive="multiboot2"
>> ?????? mb_mod_directive="module2"
>> -????? mb_extra_kernel=""
>> +????? mb_extra_kernel="noefi"
>> ?? fi
>> ?
>> ?? printf "menuentry '${title}' ${CLASS} {\n" "${os}" "${tboot_version}"
>> "${version}"
>>
>>
>>
>> _______________________________________________
>> tboot-devel mailing list
>> tboot-devel@lists.sourceforge.net
>> https://lists.sourceforge.net/lists/listinfo/tboot-devel
> 
> 
> 
> ------------------------------
> 
> 
> 
> ------------------------------
> 
> Subject: Digest Footer
> 
> _______________________________________________
> tboot-devel mailing list
> tboot-devel@lists.sourceforge.net
> https://lists.sourceforge.net/lists/listinfo/tboot-devel
> 
> 
> ------------------------------
> 
> End of tboot-devel Digest, Vol 147, Issue 2
> *******************************************
> 



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
