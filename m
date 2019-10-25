Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BAE9E4602
	for <lists+tboot-devel@lfdr.de>; Fri, 25 Oct 2019 10:43:51 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1iNvCC-0005pg-27; Fri, 25 Oct 2019 08:43:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <paul@paul-moore.com>) id 1iNvCB-0005pO-6C
 for tboot-devel@lists.sourceforge.net; Fri, 25 Oct 2019 08:43:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Subject:References:In-Reply-To:Message-ID:Date:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AiHIvvgNQ35CR4hiaQngyLGPfkmNCJSnAa5mQ27Pk0M=; b=Cr8pwYMMeu7mbRsVW/AzI9WvgN
 SB5MWgK6slmTIKVh8lV86LlUaJKeE7WdaNoWjsgbOCyam93XGpi5XeKplX/+UTTNPDO+LQ1uNIHgs
 GKbFd1Zu0kSwxLQC/ClKEyz/8kMw4Eq7nQx0z3FKLwRAKQ6QT1YKwDEv7yWXC6CkV/pU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:References:
 In-Reply-To:Message-ID:Date:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=AiHIvvgNQ35CR4hiaQngyLGPfkmNCJSnAa5mQ27Pk0M=; b=YTPI7mL7iAxg2S/FaWgcNHMq/l
 GnPdZxzyLDgVHVvT/A4Z3jcjGzed3YR0yZvnmhhV7Z1QynN4GZSNLTOcaOH5pHI28dpPXJDESlxHC
 2VKZ9BAexuupXP4ih27u/Z3IE3c3m9YIldinFvwJXY90/13yagxLsnTdfolWdEEjO3TQ=;
Received: from mail-wm1-f48.google.com ([209.85.128.48])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1iNvC6-0039OI-4D
 for tboot-devel@lists.sourceforge.net; Fri, 25 Oct 2019 08:43:43 +0000
Received: by mail-wm1-f48.google.com with SMTP id q130so1130486wme.2
 for <tboot-devel@lists.sourceforge.net>; Fri, 25 Oct 2019 01:43:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=paul-moore-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:date:message-id:in-reply-to:references:user-agent:subject
 :mime-version:content-transfer-encoding;
 bh=AiHIvvgNQ35CR4hiaQngyLGPfkmNCJSnAa5mQ27Pk0M=;
 b=MB7ViDw+fcCnKM9dnG8cmjHdwKq7gg6etJK4RmCkl9v64Kmt+STixx3/CbhewLl8IY
 E1VGcb6bvp1wYa9CFPXRv5vHlSVR4AmLcA8QvP+36NZ1u/L4b5qi+8x6buul3WBwLvrL
 lOalEVJM8+lT+hjlc67R9Wo7pWpoNkqa6ZEM0ggZeI0N1zMLUnASLZGCDZKL+t0yEUe8
 ntuoRJQZ1PIwl/5c2zoUanrd52hNiNA378J22oBjh8ZDNDjViDcGqK/FaxLm1qjtGI8h
 XKdLSy+z21lrVSEW/TL6qBQ09Uxix88jVEQJsUmuF+1f2HvJEorqjcZJhAiWRO2L5wUy
 0hHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:date:message-id:in-reply-to:references
 :user-agent:subject:mime-version:content-transfer-encoding;
 bh=AiHIvvgNQ35CR4hiaQngyLGPfkmNCJSnAa5mQ27Pk0M=;
 b=lN+Qm6OYqJgK/HixIRCuDxBliP1VZDcK49LZyFGousN3JGa1Ew6n2UQDIuGk3yMMED
 lAAvRLZPKY9O6Y60iA0uPkO1Rn31z67elSh3F06m6w4LgE4CqSRbJBIFOQQoiWQghmPY
 AmRCaDg5ZgQZfvUGQpmg0YOa106aQp+jNBKdwpaikpeQjiux6djTPVUS44Nzf74BSlm3
 +gm/Z5/z5GSDIF619f/azryw5qqJJWWVbwRMUjASMYfM41G6sQl4DrplQZp8gOqcm1Ra
 STl7KRHcUIM1xTux9AOaiIZ68j2m/5suytpUtN24OLiBo6az7xEZlFBS4bXmnv1K9mK0
 a4cA==
X-Gm-Message-State: APjAAAWPwbcRpXkiUh9F04/CswHiZpaGwNIQK1p7/ERqkzlteYQGaTn+
 bjwoGFQqbAe8moFIR6OxSGHORGtmhwCB
X-Google-Smtp-Source: APXvYqzSOcqN+08Qt8wB3dpQn3LE1Hkzl3cvEKwgqjkbg8orP4MRI/ZyZ4M1UQgEzL8oBrIW3J7qwg==
X-Received: by 2002:a1c:106:: with SMTP id 6mr2082277wmb.134.1571991504417;
 Fri, 25 Oct 2019 01:18:24 -0700 (PDT)
Received: from [10.112.14.90] ([51.254.166.25])
 by smtp.gmail.com with ESMTPSA id b1sm1416541wru.83.2019.10.25.01.18.22
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 25 Oct 2019 01:18:23 -0700 (PDT)
From: Paul Moore <paul@paul-moore.com>
To: Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>,
 "Paul Moore (pmoore2)" <pmoore2@cisco.com>,
 <tboot-devel@lists.sourceforge.net>
Date: Fri, 25 Oct 2019 10:18:21 +0200
Message-ID: <16e01feb8c8.280e.85c95baa4474aabc7814e68940a78392@paul-moore.com>
In-Reply-To: <c04e94af5aabc02dde0fb816f7acd9912f049927.camel@linux.intel.com>
References: <bbaf0eeb3ddb8791533fc9dfba23ed57d3a2c9bd.camel@cisco.com>
 <ba9fa4341c9b9fa27c8ea3229f879d25614a900f.camel@cisco.com>
 <c04e94af5aabc02dde0fb816f7acd9912f049927.camel@linux.intel.com>
User-Agent: AquaMail/1.20.0-1469 (build: 102100004)
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: intel.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.128.48 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.48 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1iNvC6-0039OI-4D
Subject: Re: [tboot-devel] [RFC] tboot: kernel signature verification
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

Hi Lukasz,

That's great news, I'll look forward too meeting with you next week! I'll follow up with you off-list with some contact information.

--
paul moore
www.paul-moore.com
On October 24, 2019 9:19:52 AM Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com> wrote:

> Hi
>
> I will be on LSS EU, I will catch you after your presentation for a
> short (or not short) conversation.
>
> Thanks,
> Lukasz
>
> On Fri, 2019-10-18 at 13:27 +0000, Paul Moore (pmoore2) via tboot-devel
> wrote:
>> On Thu, 2019-09-19 at 15:39 +0000, Paul Moore (pmoore2) via tboot-devel
>> wrote:
>> > Hello,
>> >
>> > I've been working on adding PECOFF/kernel signature verification to
>> > tboot and now that I have a rough working prototype I wanted to bring
>> > it to the list to see if this is something the tboot community would
>> > be interested in eventually merging (once the work is more complete
>> > and polished).
>> >
>> > The patchset is quite large, mostly due to the inclusion of
>> > libtomcrypt and libtomfastmath to the tboot repository, so I'm going
>> > to refrain from spamming the list with the full patchset at this early
>> > stage.  The current patchset can be found on GitHub at the URL below
>> > (look in the "working-txtsig" branch):
>> >
>> > *
>> > https://github.com/pcmoore/misc-tboot/tree/working-txtsig
>> >
>> >
>>
>> I've updated the working-txtsig branch with a number of fixes relating
>> to the ASN.1/PKCS parsing code as well as improved signing/hash
>> algorithm support (previously limited to SHA256) and the ability to
>> verify kernels using variable length certificate chains (previously
>> limited to the immediate signer).  Work on adding certificate support to
>> the tboot launch control policy is ongoing (it's the next major work
>> item), but the prototype contains a hard coded Fedora CA which should be
>> able to verify any modern Fedora kernel.  Just as before, if you have
>> any questions, concerns, or feedback please get in touch on-list or
>> privately.
>>
>> I'll be giving an updated presentation on this effort at the Linux
>> Security Summit EU later this month, if you are in the area please stop
>> by and introduce yourself - I'd love to talk about TXT/tboot!
>>
>> https://events19.linuxfoundation.org/events/linux-security-summit-europe-2019
>>
>>
>> Thanks,
>> -Paul
>>
>>
>> _______________________________________________
>> tboot-devel mailing list
>> tboot-devel@lists.sourceforge.net
>>
>> https://lists.sourceforge.net/lists/listinfo/tboot-devel
>>
>>
>
>
>
> _______________________________________________
> tboot-devel mailing list
> tboot-devel@lists.sourceforge.net
> https://lists.sourceforge.net/lists/listinfo/tboot-devel





_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
