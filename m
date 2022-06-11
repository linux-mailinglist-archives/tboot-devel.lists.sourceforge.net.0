Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A7115477D6
	for <lists+tboot-devel@lfdr.de>; Sun, 12 Jun 2022 00:51:13 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1o09wk-0003SU-Fp; Sat, 11 Jun 2022 22:51:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <tcamuso@redhat.com>) id 1o09wj-0003SO-In
 for tboot-devel@lists.sourceforge.net; Sat, 11 Jun 2022 22:51:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Cc:To:From:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ps19t7VWekdeeA7SerasQNQ2dUBxzf0ooSuO5fM9Reo=; b=MN4N9XaDfa7uthedJ/GIObv/el
 Ze14TsSe8+ZtpDcIJ7qWAnLAKFtVLGv8AA7tm5Oo18dVBOuvzYRCAk8ROfXIYDCy46fKHnS9ZDCaU
 noGzN48jf1Ah48QPxHXnbOwaYQ8XrqMFUQewvPZJpXxLIl+PCItVIJhNMURPy9nOjebs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Cc:To:From:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ps19t7VWekdeeA7SerasQNQ2dUBxzf0ooSuO5fM9Reo=; b=jxRzn+BH357H7SPRyjkG4OgWbt
 4qLpO9xwdLlmLEoA83lzBz+O5FjZAmSFwKwEMtTknzDlVVG+rOhjG0Lydt6zPEckyp8N7JnMCuhix
 ym09gOYpA+lCh6YUOiFkpFY/5vz2wFL5n99ix2emkI2zBf3XHGo0NTzGobsmJGt/w3JU=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o09wc-00FLQr-Dz
 for tboot-devel@lists.sourceforge.net; Sat, 11 Jun 2022 22:51:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1654987856;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ps19t7VWekdeeA7SerasQNQ2dUBxzf0ooSuO5fM9Reo=;
 b=cETBX8NR/yf1/OJshE4cSpTOSktYWYsUlRHOvZHjCL/9bwPdYfHn+j76HABZzWTZ7O+3/S
 cjHtyGF8BP3g6ZOuBEjyFWiTk1p5sFejEs7G9vW1eaS/Nh+Y9khquMXXggtpS0gNicneNh
 ljJRFp5Q47jUD2IzX/+EBPKonGwQaXo=
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-635-ijZ4DY95OkCBbSIa8B8T-A-1; Sat, 11 Jun 2022 18:50:54 -0400
X-MC-Unique: ijZ4DY95OkCBbSIa8B8T-A-1
Received: by mail-qk1-f197.google.com with SMTP id
 t15-20020a05620a450f00b006a75bf35680so2112263qkp.1
 for <tboot-devel@lists.sourceforge.net>; Sat, 11 Jun 2022 15:50:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:from:to:cc:references:in-reply-to
 :content-transfer-encoding;
 bh=ps19t7VWekdeeA7SerasQNQ2dUBxzf0ooSuO5fM9Reo=;
 b=imKpda1WBMwz5ODDIrDvsAywfj+09gGBFyzu0dFOR/gRwsrygd20WHuQhUu6Tc5EAU
 eQNiO9wFIJfIY0LMaJe+KIPihG0jlZrQZU0Rw9nvVp770ProaGcH/kJ1eALUR+Ko4vDe
 SDS6xcc0U8NilPgS6uDFaqILU4jX76rN9du5BHZs04Zk4fSOyWLZXvP6FTXYCIK//JpD
 ncom9rUFYseLJMddKz04PPohKDYLh0crKAC79pYeXe8I/c3emPwwC4oyzUEeKxroWf4E
 zID4PDsu4N8GYrMY6uNqhxiJR22T0X9Yv0mC8yuiZAt0AMeCqvQQP4I7kJKCKSenJtRq
 Yi/Q==
X-Gm-Message-State: AOAM531v0wceTJuMPocxqp7C62dsQKAQ+cQYLGsuNY6tfKU5Q1mFiLVm
 5DJINQ9rxIRmIrdgx0kgJX3+naPlDZt+H4xcU1SfzVDUlA1h9043TiFtWTViTWStlQClTi6lva7
 0F1oAJAinh3/GkM8+1oCZbMsWm4f36Cg=
X-Received: by 2002:a05:622a:3d4:b0:304:ec1d:7bb4 with SMTP id
 k20-20020a05622a03d400b00304ec1d7bb4mr27504167qtx.584.1654987854464; 
 Sat, 11 Jun 2022 15:50:54 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy/kyiLN40ldM6lwvk3hbp3sd4/k0LwAxifBXtb+SDC4Fa+lozfeuKnkaknLxeMA/7MJ5hycw==
X-Received: by 2002:a05:622a:3d4:b0:304:ec1d:7bb4 with SMTP id
 k20-20020a05622a03d400b00304ec1d7bb4mr27504155qtx.584.1654987854243; 
 Sat, 11 Jun 2022 15:50:54 -0700 (PDT)
Received: from [192.168.3.2] (232.sub-174-196-204.myvzw.com. [174.196.204.232])
 by smtp.gmail.com with ESMTPSA id
 i3-20020a05620a404300b006a77940be22sm1404583qko.95.2022.06.11.15.50.52
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 11 Jun 2022 15:50:53 -0700 (PDT)
Message-ID: <873e4537-e5fb-b2b5-6006-3487a57be3dd@redhat.com>
Date: Sat, 11 Jun 2022 18:50:50 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
From: Tony Camuso <tcamuso@redhat.com>
To: Timo Lindfors <timo.lindfors@iki.fi>
References: <mailman.51.1654862842.17052.tboot-devel@lists.sourceforge.net>
 <0b09ebf4-9ab0-c41e-5d58-cef2d4ea8c19@redhat.com>
 <alpine.DEB.2.20.2206111021160.30792@mail.home>
 <9174302f-c4eb-fd3d-c755-569c46053f76@redhat.com>
 <alpine.DEB.2.20.2206112038030.31069@mail.home>
 <6e0ddd0e-3747-9508-9dca-5c11b6200843@redhat.com>
In-Reply-To: <6e0ddd0e-3747-9508-9dca-5c11b6200843@redhat.com>
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
 Content preview: CORRECTION > I'm using a RHEL-8.5 based on 5.14 kernel.
 CentOS
 8.5 is the same thing. ^^^^ That's a 4.18 kernel, NOT a 5.14 kernel. 
 Content analysis details:   (-2.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.129.124 listed in list.dnswl.org]
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
X-Headers-End: 1o09wc-00FLQr-Dz
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


CORRECTION
> I'm using a RHEL-8.5 based on 5.14 kernel. CentOS 8.5 is the same thing.
                                 ^^^^
That's a 4.18 kernel, NOT a 5.14 kernel.



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
