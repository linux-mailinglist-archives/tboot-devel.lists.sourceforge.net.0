Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C5A7013B0A1
	for <lists+tboot-devel@lfdr.de>; Tue, 14 Jan 2020 18:14:58 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1irPmH-0005ka-O6; Tue, 14 Jan 2020 17:14:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <paul@paul-moore.com>) id 1irPmF-0005k9-Tb
 for tboot-devel@lists.sourceforge.net; Tue, 14 Jan 2020 17:14:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AI8R6x4yF6l5LigW2ey/DREzuqf8atfHmxR54I3PL0g=; b=LGO/lXKBO2f4W8me/PNax0kn8s
 EAQQTd5lWMRsqCi7wT4Tn2+qc893saAsJXNnSVQ+WrhWXj8ZK4gcx/4tWlITOzzII2jIUU8y0smiQ
 X4VzdbUscOK5h6r3uY1BFjA3lp1f9tLcij3j+GhnXiuuLGMaBWcujfr6SimwROHp8cOY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=AI8R6x4yF6l5LigW2ey/DREzuqf8atfHmxR54I3PL0g=; b=BxD4xNjOIl8zJH+n67IS6LMBxQ
 ujnAoKJIj0bi5qIH/jKYKYCD4XXZvIsc2XZb9olaXUHzV8J+fF36lj4EGgIWsQDWdSsBaz5Bp+uC1
 LzLXUBW8hyFMqOqUbhxySODDBbQn9QVm9Bma43rtQlfSzDBhHpiCYBeHXJu033c3h1VQ=;
Received: from mail-lf1-f66.google.com ([209.85.167.66])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1irPm8-003IBv-Sr
 for tboot-devel@lists.sourceforge.net; Tue, 14 Jan 2020 17:14:51 +0000
Received: by mail-lf1-f66.google.com with SMTP id b15so10413072lfc.4
 for <tboot-devel@lists.sourceforge.net>; Tue, 14 Jan 2020 09:14:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=paul-moore-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=AI8R6x4yF6l5LigW2ey/DREzuqf8atfHmxR54I3PL0g=;
 b=QlyXw4kzV5jt2d7qdUKmIo7ZbKdlJhHPgqptDatb+ORGECs8jjrwQbb5PacH3S0xnK
 AHJ99aFQkkCSVuOuk3x4f9P4boV54cmD7wBvftaBLbi3kFg1oKU/b9l4L/iG5QPiRTo1
 iE32+sZxVyP8jgNWSLUg5SN8JzquoxMo0ScZ7HwjaBTVlw8nWfaxhmjnGRu1P2qfbPHv
 +0Tj6I8s+AB6/XlfG/St5lyg5l8G5CnHHhxT+fsdA93MK6RRFEGZPPCU6QRpS9jBcGEM
 ZcwWLAP04BMdZWmJBcYXCbVIyBCyxxat+FSUww69ff4OpNDhyPKpixd/NoAkJe05OThB
 bxew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AI8R6x4yF6l5LigW2ey/DREzuqf8atfHmxR54I3PL0g=;
 b=m/x3ddhP0YlmhqiQG6HcyJgXXIMgaacNRjmQsFue7gS/rZYch29MsQ8k3ZBC3YXxmZ
 u+DcMAeW34kXjMm4ivJhwuZJolOYfWaP5MA8vJNt70BmZmJrNvM5bWv6j0CWORB0O8mz
 /UXDPn2Vo/q/Trc7Z3jFLhuOOT70B1aAkq6aG7DukO6pY2xFZogeOPP+ZJFRFtlwX5VG
 GqzMo6UO3JneBPSeRFCBwXtAIdvpKmL5aFJJdT2yt+Zi38RIHdSfD6rxX0xT+KQSkZeu
 /W+cGIz7OInkZLqeA6+4X1WiuTejAR7SkVumOfuwo2oMGeiv0mq8RoPu5VZ25AWowftn
 yYJA==
X-Gm-Message-State: APjAAAWbXiQe4YGGzSvF5RWPQEzYypKn3ovfkkRyA3ad4gx7ZX52yhtA
 vSA7hSTRnMIvjQHMY0QMphdEotraCl6nY25B2a78CRo=
X-Google-Smtp-Source: APXvYqz/0MdVXOrCD9fhJLZVX7qPVZx80qCtU13jnQHI6EFJSXyDiH+/wk069s33PCWK8EGVmHUE0WEZ4eceuMmBycA=
X-Received: by 2002:a19:7b0a:: with SMTP id w10mr2333492lfc.90.1579020434783; 
 Tue, 14 Jan 2020 08:47:14 -0800 (PST)
MIME-Version: 1.0
References: <95c91cf5919cf3ebb3058e90bd6af64939dedee1.camel@cisco.com>
 <2c111f3585e0c048ae090e99be2eef9240bf3445.camel@cisco.com>
 <e72bc640db22e2460c41e9718f550a2a443e4a55.camel@cisco.com>
 <0101df1759aa0bfdf2b30c1696af474902c232a9.camel@intel.com>
 <274b39c26ab00d63acecb2f68d0fca516943f8f9.camel@cisco.com>
 <f2a750a91b3739951ea170c76e96f136c9d2fe2a.camel@cisco.com>
 <6149fe3475395aac9743b82acd6ad2a31a8a924c.camel@linux.intel.com>
In-Reply-To: <6149fe3475395aac9743b82acd6ad2a31a8a924c.camel@linux.intel.com>
From: Paul Moore <paul@paul-moore.com>
Date: Tue, 14 Jan 2020 11:47:03 -0500
Message-ID: <CAHC9VhSj+yWXiSTJDpx+CQENn_xsv7wTu2dkm_bcu46m2CXgAA@mail.gmail.com>
To: Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: intel.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.66 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.66 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1irPm8-003IBv-Sr
Subject: Re: [tboot-devel] VLP policy and TPM2 hash agility
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
Cc: "tboot-devel@lists.sourceforge.net" <tboot-devel@lists.sourceforge.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tboot-devel-bounces@lists.sourceforge.net

On Tue, Jan 14, 2020 at 10:31 AM Lukasz Hawrylko
<lukasz.hawrylko@linux.intel.com> wrote:
> On Tue, 2020-01-14 at 00:18 +0000, Paul Moore (pmoore2) wrote:
> > On Mon, 2020-01-13 at 20:33 +0000, Paul Moore (pmoore2) via tboot-devel wrote:
> > > On Thu, 2020-01-09 at 14:59 +0000, Hawrylko, Lukasz wrote:
> > > > On Fri, 2020-01-03 at 20:26 +0000, Paul Moore (pmoore2) via tboot-devel
> > > > wrote:
> > > > >
> > > > > Lukasz, is there a way to generate PCR hashes for all supported
> > > > > algorithms like tboot does for PCR17/18?
> > > > >
> > > > > -Paul
> > > > >
> > > >
> > > > Hello Paul
> > > >
> > > > I looks like you can't create policy with different hash algorithms,
> > > > look at tb_policy_t structure in tb_policy.h There is one field for
> > > > setting hash algorithm that is common to all policy entries.
> > >
> > > Have you been able to create a VLP which causes tboot to extend the
> > > TPM's sha256 PCR bank?
> > >
> >
> > After digging through the code some more, it looks like the key to
> > making this work is to specify the correct "extpol=" parameter on the
> > tboot command line. It appears to be TPM and ACM dependent (?) so I'm
> > not sure this will work for everyone, but on my system
> > "extpol=embedded" caused tboot to extend all of the TPM PCR banks;
> > "extpol=agile" on my system caused the ACM to reset the system.
> >
> > -Paul
> >
>
> As far as I remember I was able to extend SHA256 PCRs, because this is
> the only way to test my changes in tb_polgen. I am not sure, but I think
> that you have to pass "extpol=sha256" in command line and than you can
> work with SHA256 policies. Did you try to do that? I will try tomorrow
> how agile and embedded options work on my platform.

Yes, "extpol=sha256" did work to extend the sha256 PCR bank, but it
didn't extend the sha1 bank; ideally I would be able to do both and
that is what "extpol=embedded" did for my system.

I have a suspicion that instead of defaulting to sha1, we may be able
to query the ACM to get the TPM2 extpol setting, but I haven't done
any serious investigation of that yet.

-- 
paul moore
www.paul-moore.com


_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
