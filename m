Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A9F65840AF8
	for <lists+tboot-devel@lfdr.de>; Mon, 29 Jan 2024 17:12:17 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1rUUEx-0000J7-8B;
	Mon, 29 Jan 2024 16:12:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <salah.coronya@gmail.com>) id 1rUUEv-0000J1-Hd
 for tboot-devel@lists.sourceforge.net;
 Mon, 29 Jan 2024 16:12:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:From:References:To:Subject:MIME-Version
 :Date:Message-ID:Content-Type:Sender:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=v2veK35XB6Sp+8V24racOOmnBJ4RDqolFr1WgQ0Wlrg=; b=U0dZNBXvK/pUKK/CFX0B2QPY4I
 bzqTeLuaVJKgzFCi5L7wpECR0wce9J7OcVcHO2UBNBgrarklbAqqjbLlojxtRNOCfltQbvPK8dARC
 lSamJBL9g8D1R8jj9vNPrvwivGVIZDqASOQOLRZvNXzfrpOkM7ikuBhMS6utx/CDKq7k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:From:References:To:Subject:MIME-Version:Date:Message-ID:
 Content-Type:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=v2veK35XB6Sp+8V24racOOmnBJ4RDqolFr1WgQ0Wlrg=; b=EM4Qr6YEgzxAAaOopQDOtsnjgV
 FQsjjp9fdCp6memKIy2D9IEjz6syIcWePN+hYSawnhWD7jDIm/qzOYv6GLBIyIcbMbRYm54DayRBa
 NIhYivuezB4R8JX8087NpEfRzqLIxtZ3TQ3Y1OyxIcK/WLFdYjHSUp/rlgoq01cYslDU=;
Received: from mail-io1-f54.google.com ([209.85.166.54])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rUUEq-0002V6-Jo for tboot-devel@lists.sourceforge.net;
 Mon, 29 Jan 2024 16:12:06 +0000
Received: by mail-io1-f54.google.com with SMTP id
 ca18e2360f4ac-7bee8858a8aso126804439f.0
 for <tboot-devel@lists.sourceforge.net>; Mon, 29 Jan 2024 08:12:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1706544710; x=1707149510; darn=lists.sourceforge.net;
 h=in-reply-to:from:references:to:content-language:subject:user-agent
 :mime-version:date:message-id:from:to:cc:subject:date:message-id
 :reply-to; bh=v2veK35XB6Sp+8V24racOOmnBJ4RDqolFr1WgQ0Wlrg=;
 b=eImSU+DlTudcNcAtFPpdMS7gfjJTwVBwvkk56hIZENvdBxnVmRmo0wDAX5nQbbIuGJ
 SqWMB4EXfoi/mcELWoGPc+4KxAH9GVTkt/oQRTi01+0dpxJ22+/JwR+VHxYncR9eikqn
 Mk+Ei/vYpOeL7garLFN+jAr0easidfRGG5o1M9JX/kXp2qnqh5YiYMwi/lXc5d4xvHy4
 9jefSGHaQjcbS3kza0wFeG+0Q9KDNqljRkf7NrbspTJvMQcrMHUIIrOeZrKEbW5xrEZp
 Lv+WXuXDlJYpWS3XybICip3ugL7AMRwOHNdvdpcueGJjA+JP8e82gMc8MmU3ttvOc91G
 yDpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1706544710; x=1707149510;
 h=in-reply-to:from:references:to:content-language:subject:user-agent
 :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
 :date:message-id:reply-to;
 bh=v2veK35XB6Sp+8V24racOOmnBJ4RDqolFr1WgQ0Wlrg=;
 b=M8LIe+UD+DpNuxgP156fpGhQxvOOjKeLz+3SomtvbVzvI9+Zi8KeuiMPZzcJ9u3xVF
 RBpf5oB0zll3j3FALEfU8iU8UWrXFm9z10ZoTovafyqtwzMkby5z4o2+vPUP0vnfLO3g
 zprRqMnqiDGR4HD9E5le3JhVUn4Nptwjap0O7DjMKE7ohZyXS6sMssQGRbuWaldHHAMP
 ycY/jkdYosRshnejqmo9GczxxJb7upZM4LIUvcE/cUmimYcQ5ljIv7Y3stKqbIdlv4W8
 fClxxB/JTtf9H+AyCvLqNIMIetXQsZ3rR48q5K8iNCVIgSrDK5kXdURAcsLXGhfNHpYB
 AFXA==
X-Gm-Message-State: AOJu0YzdHzOi5nPcbwgqu8huYkj3GWmpJsJoNjwQZzYaV5vfYT1YeY7z
 vRHnjzBPeNZUO/ixGEfI+0rZL9C4SYh9CaJhze6MuVBm32PtMwCW+14fwwwt
X-Google-Smtp-Source: AGHT+IEpb7tws5fN4CvyLdH9d4UHo9DHanRPTt0WuFhjswCMEF3mEcDvMtMQrHTejY1IlpVdkTkA8Q==
X-Received: by 2002:a05:6602:2f14:b0:7bf:5f71:9de9 with SMTP id
 q20-20020a0566022f1400b007bf5f719de9mr8670122iow.18.1706544710254; 
 Mon, 29 Jan 2024 08:11:50 -0800 (PST)
Received: from [192.168.50.68] (097-086-190-115.res.spectrum.com.
 [97.86.190.115]) by smtp.gmail.com with ESMTPSA id
 e38-20020a028629000000b0046ea72f2152sm1889090jai.47.2024.01.29.08.11.49
 for <tboot-devel@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 29 Jan 2024 08:11:49 -0800 (PST)
Content-Type: multipart/mixed; boundary="------------7XRouACWInxPiRIA2fisLI0h"
Message-ID: <9a962ef9-0b56-46a9-ba49-eee32b622710@gmail.com>
Date: Mon, 29 Jan 2024 10:11:48 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: tboot-devel@lists.sourceforge.net
References: <87ede0fslc.fsf@oldenburg.str.redhat.com>
From: Christopher Byrne <salah.coronya@gmail.com>
In-Reply-To: <87ede0fslc.fsf@oldenburg.str.redhat.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 1/29/24 02:31, Florian Weimer wrote: > As far as I can
 tell, this warning is both technically correct and > harmless. The called
 generate_composite_hash hash function only writes > SHA1_DIGEST_SIZE [...]
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [salah.coronya[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.54 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.54 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rUUEq-0002V6-Jo
Subject: Re: [tboot-devel] [PATCH] Suppress GCC 14 allocation size warning
 in lcptools-v2/pconf_legacy.c
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
Errors-To: tboot-devel-bounces@lists.sourceforge.net

This is a multi-part message in MIME format.
--------------7XRouACWInxPiRIA2fisLI0h
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 1/29/24 02:31, Florian Weimer wrote:
> As far as I can tell, this warning is both technically correct and
> harmless.  The called generate_composite_hash hash function only writes
> SHA1_DIGEST_SIZE bytes and uses byte accesses.
> 
> Thanks,
> Florian
> 
> diff --git a/lcptools-v2/pconf_legacy.c b/lcptools-v2/pconf_legacy.c
> index 443b5cd5525b9fe1..5ebc6c451f7008b1 100644
> --- a/lcptools-v2/pconf_legacy.c
> +++ b/lcptools-v2/pconf_legacy.c
> @@ -324,7 +324,7 @@ static lcp_policy_element_t *create(void)
>               ERROR("Error: no pcrs were selected.\n");
>               return NULL;
>           }
> -        digest = malloc(SHA1_DIGEST_SIZE);
> +        digest = malloc(sizeof(*digest));
>           if (digest == NULL) {
>               ERROR("Error: failed to allocate memory for digest buffer.\n");
>               return NULL;
> 
> 
> 
> _______________________________________________
> tboot-devel mailing list
> tboot-devel@lists.sourceforge.net
> https://lists.sourceforge.net/lists/listinfo/tboot-devel

That's not the only patch that file needed. When I submitted the 
original patch to use the correct algorithm, I missed a line.

--------------7XRouACWInxPiRIA2fisLI0h
Content-Type: text/x-patch; charset=UTF-8; name="pconf.patch"
Content-Disposition: attachment; filename="pconf.patch"
Content-Transfer-Encoding: base64

IyBIRyBjaGFuZ2VzZXQgcGF0Y2gKIyBVc2VyIENocmlzdG9waGVyIEJ5cm5lIDxzYWxhaC5j
b3JvbnlhQGdtYWlsLmNvbT4KIyBEYXRlIDE2NDU4NDczODMgMjE2MDAKIyAgICAgIEZyaSBG
ZWIgMjUgMjE6NDk6NDMgMjAyMiAtMDYwMAojIE5vZGUgSUQgMTY3NjE5YjUxNjQ2YWFjMDU2
MTA5ZmJlMmExYjExOThhMjIxY2RhZAojIFBhcmVudCAgYWJlNWI2YzAyMmYzN2E4NmU4MTBk
YWI0NDI5MmM0NzhlM2I0YTQ4YwpsY3B0b29scy12Mi9wY29uZl9sZWdhY3kuYzogQWRkIG1p
c3NpbmcgQkUgc2l6ZV9vZl9wY3JzIHRvIGhhc2ggYnVmZmVyCgpTaWduZWQtb2YtYnk6IENo
cmlzdG9waGVyIEJ5cm5lIDxzYWxhaC5jb3JvbnlhQGdtYWlsLmNvbT4KCmRpZmYgLXIgYWJl
NWI2YzAyMmYzIC1yIDE2NzYxOWI1MTY0NiBsY3B0b29scy12Mi9wY29uZl9sZWdhY3kuYwot
LS0gYS9sY3B0b29scy12Mi9wY29uZl9sZWdhY3kuYwlUdWUgSmFuIDIzIDEyOjIwOjA3IDIw
MjQgKzAxMDAKKysrIGIvbGNwdG9vbHMtdjIvcGNvbmZfbGVnYWN5LmMJRnJpIEZlYiAyNSAy
MTo0OTo0MyAyMDIyIC0wNjAwCkBAIC0yNDEsNiArMjQxLDcgQEAKICAgICAgICAgRVJST1Io
IkVycm9yOiBmYWlsZWQgdG8gYWxsb2NhdGUgYnVmZmVyIGZvciBjb21wb3NpdGUgZGlnZXN0
LlxuIik7CiAgICAgICAgIHJldHVybiBmYWxzZTsKICAgICB9CisgICAgYnVmZi0+c2l6ZV9v
Zl9wY3JzID0gaHRvbmwobm9fb2ZfcGNycyAqIFNIQTFfRElHRVNUX1NJWkUpOwogICAgIG1l
bWNweV9zKAogICAgICAgICAmYnVmZi0+cGNyX3NlbGVjdGlvbiwKICAgICAgICAgc2l6ZW9m
IGJ1ZmYtPnBjcl9zZWxlY3Rpb24sCg==

--------------7XRouACWInxPiRIA2fisLI0h
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--------------7XRouACWInxPiRIA2fisLI0h
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel

--------------7XRouACWInxPiRIA2fisLI0h--

