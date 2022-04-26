Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FFFD50F036
	for <lists+tboot-devel@lfdr.de>; Tue, 26 Apr 2022 07:32:19 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1njDo4-0005SP-Jk; Tue, 26 Apr 2022 05:32:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <timo.lindfors@iki.fi>) id 1njDo3-0005Hv-6X
 for tboot-devel@lists.sourceforge.net; Tue, 26 Apr 2022 05:32:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:References:Message-ID:
 In-Reply-To:Subject:cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rkox6BPK9lNzlLs6PvgU1AenSD6e7rG6Z+npcAZCw+o=; b=FMX+jUDXk/BvcVLi7DSZ/AClU9
 NYftiphIDGOe1KfL+3FKbNOvjO6iewlpD6UE7dzuzmRKOQSLEkypsNfYdYWY3DS5P8/v2Od8a53qc
 mumjMZFRinkENV3i1fLqnEUrxT1tEWVbc/heWRF6goWIZjVpn1aPZtdDXQsqiFmQoDGU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:References:Message-ID:In-Reply-To:Subject:cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=rkox6BPK9lNzlLs6PvgU1AenSD6e7rG6Z+npcAZCw+o=; b=VtDe1a9qAPX9SRYmhUjyGut7C8
 gWgCm4uZVQjAnK4rKkdnGLA99IfiOe0P89rbf0bFdnOMlhw+YIvmplaEPgZOvdSiNCaKs6HPTYdVp
 gy/EIJnOq4EAf+G/7fthQUDcpkPuI9ctlhdfZ3crU6Ep0q33hjrdRIrBVWh94tpnjUtc=;
Received: from meesny.iki.fi ([195.140.195.201])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1njDo0-00AO35-5x
 for tboot-devel@lists.sourceforge.net; Tue, 26 Apr 2022 05:32:10 +0000
Received: from mail.home (82-181-195-69.bb.dnainternet.fi [82.181.195.69])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: timo.lindfors)
 by meesny.iki.fi (Postfix) with ESMTPSA id BB36920354;
 Tue, 26 Apr 2022 08:16:45 +0300 (EEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi; s=meesny;
 t=1650950205;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=rkox6BPK9lNzlLs6PvgU1AenSD6e7rG6Z+npcAZCw+o=;
 b=NSl2jprPgfw4LJp/+byrY48TfO7bX+YwJsQXA+E27rng/UG2iBxWkuBHoqK7bueTkSUzdg
 UaQ2FHAiqXRJNELP5LLKlOaPETbIKGpFW2g3rpyUWknzcqzcLQWdhNh6HHY+r0qHiaoAGl
 NCGQRB3WCzj8JyPi6YAHHJLVGTwpAbs=
Received: from localhost ([127.0.0.1]) by mail.home with esmtp (Exim 4.89)
 (envelope-from <timo.lindfors@iki.fi>)
 id 1njBdt-000826-JT; Tue, 26 Apr 2022 06:13:33 +0300
Date: Tue, 26 Apr 2022 06:13:33 +0300 (EEST)
From: Timo Lindfors <timo.lindfors@iki.fi>
To: =?ISO-8859-2?Q?=A3ukasz_Hawry=B3ko?= <lukasz@hawrylko.pl>
In-Reply-To: <31ae0c949efdc5698b075920af53c63f1cd1ce83.camel@hawrylko.pl>
Message-ID: <alpine.DEB.2.20.2204260611210.30820@mail.home>
References: <alpine.DEB.2.20.2203110900580.24286@mail.home>
 <6981e56e786ff0c7e9ebe67cd7465bcb0c87a4e1.camel@hawrylko.pl>
 <alpine.DEB.2.20.2203111121420.24510@mail.home>
 <47436efda1c61ed2c5267dad2347a0a7859375f0.camel@hawrylko.pl> 
 <alpine.DEB.2.20.2203120933010.25337@mail.home>
 <31ae0c949efdc5698b075920af53c63f1cd1ce83.camel@hawrylko.pl>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-546106816-1650942813=:30820"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi;
 s=meesny; t=1650950205;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=rkox6BPK9lNzlLs6PvgU1AenSD6e7rG6Z+npcAZCw+o=;
 b=UT+wedVat60C+RsIUTmpPlrxagDFgF6tjwKoJZlXN3/ibN7E+pZ9Tpw2YCH2N+TyirsFKl
 5nqpwcc7cQE5et2WXJs5m5Zo9meL7tlY6NrX5fH+KeX0z3O0TEVj+vW6BelbzyNoIAXIzX
 eK4w8Nyzb10v9O9vgABe7ca4Oij+0zk=
ARC-Authentication-Results: i=1; ORIGINATING;
 auth=pass smtp.auth=timo.lindfors smtp.mailfrom=timo.lindfors@iki.fi
ARC-Seal: i=1; s=meesny; d=iki.fi; t=1650950205; a=rsa-sha256; cv=none;
 b=eOeGQhN9AMq2D2QOV4d4WAyuVHi6lLJkiZb0t089QON3VsF9dYoeoOrG8D04E8V4LDDK1q
 ct6dZe36WAR9XXYeh51XoB1SAXTIR/1SIo+VZxBAMvCxDOXdfKVbpmxpdMl05GDRElH3rn
 ZqsvjtkEhNxpa3ur4YdSs3a0vyf35Ao=
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi, On Tue, 22 Mar 2022, Łukasz Hawryłko wrote: > On Sat,
    2022-03-12 at 09:34 +0200, Timo Lindfors wrote: >> On Fri, 11 Mar 2022, Łukasz
    Hawryłko wrote: >>> I see that you have quite complex environme [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
X-Headers-End: 1njDo0-00AO35-5x
Subject: Re: [tboot-devel] status of the grub patch to support multiple
 SINIT modules?
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
Cc: tboot-devel@lists.sourceforge.net
Errors-To: tboot-devel-bounces@lists.sourceforge.net

--8323329-546106816-1650942813=:30820
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8BIT

Hi,

On Tue, 22 Mar 2022, Łukasz Hawryłko wrote:
> On Sat, 2022-03-12 at 09:34 +0200, Timo Lindfors wrote:
>> On Fri, 11 Mar 2022, Łukasz Hawryłko wrote:
>>> I see that you have quite complex environment for testing tboot, if I
>>> find my old GRUB patch and prepare patch for tboot that combined should
>>> fix the issue, will you be able to run tests?
>>
>> Yes, I'm happy to run tests :)
>
> I am attaching two patches:
>
> GRUB:
> multiboot2__Implement_the_new_module_load_and_preferences_tag.patch
>
> tboot:
> Use_multiboot2_module_load_preference_tag.patch
>
> On my test platform they fix the issue. Please check how they work on
> your environment.

Sorry for the long delay. I am also able to load all ACM modules with 
these patches.

TPM 2.0 with UEFI:

https://lindi.iki.fi/lindi/tboot/smoketest/test_results/c99c68f2-9651-42dd-b822-9936868bc12a/output/serial.log

TPM 1.2 with BIOS:

https://lindi.iki.fi/lindi/tboot/smoketest/test_results/f6ba18b4-b259-4b68-8eb4-05c0b758996b/output/serial.log

Test script:

https://lindi.iki.fi/lindi/tboot/smoketest/test_results/c99c68f2-9651-42dd-b822-9936868bc12a/input/main


-Timo

--8323329-546106816-1650942813=:30820
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--8323329-546106816-1650942813=:30820
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel

--8323329-546106816-1650942813=:30820--

