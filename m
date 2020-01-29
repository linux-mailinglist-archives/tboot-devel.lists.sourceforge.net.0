Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8726114C4C9
	for <lists+tboot-devel@lfdr.de>; Wed, 29 Jan 2020 04:12:15 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1iwdlq-0004v2-K5; Wed, 29 Jan 2020 03:12:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <paul@paul-moore.com>) id 1iwdlo-0004ue-Od
 for tboot-devel@lists.sourceforge.net; Wed, 29 Jan 2020 03:12:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1guS0gDrZjfUmSU5l6+FKXIeim0aYpmxuh2calaUzoE=; b=Vk8RlR0YjZaF57R1qH0Mk4lWba
 bM0m9zHAjgOtwh1jLePS7nbLN6qIAciFFA/SDAQj6G5qT/NEqECaakaGmHHK7JEPAXrcSB7rrXJLo
 PSrcK4hAj+AfkzAVDtp50fUyUjcEkEuCEhhsQN2VwmmoeR12LaAAFKn0aKiNDDHUg+Xs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=1guS0gDrZjfUmSU5l6+FKXIeim0aYpmxuh2calaUzoE=; b=NtyG3o5aNjrVbr1RLj2r4nSoP3
 xVe3TbYVF+eycw+fLCDXFDjTOXcwIRLLK8gOuSrSHIYGO0H+QaCzFniJOAW5YMfxDBEYHVkIZzkfm
 5Rzp3Lmynmx3WW0rBFREtFaTUUBgB5jlBGS5NrN6c3F1+2hJVb0SxNTxecd/gByKuOfc=;
Received: from mail-ed1-f48.google.com ([209.85.208.48])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1iwdlk-008sHY-IH
 for tboot-devel@lists.sourceforge.net; Wed, 29 Jan 2020 03:12:00 +0000
Received: by mail-ed1-f48.google.com with SMTP id dc19so17017868edb.10
 for <tboot-devel@lists.sourceforge.net>; Tue, 28 Jan 2020 19:11:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=paul-moore-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1guS0gDrZjfUmSU5l6+FKXIeim0aYpmxuh2calaUzoE=;
 b=q9OvyGVKEEHEXRNn9HnbthJxwTloJfvEdukhEFYwHbyCqPwc6AzBIkORy2yzZ9s2CU
 HzMgsXlOFzTaTdiKclA43/Iu6BpcrO69PlTZN4SqvAB4vX+M0vFUm9aV7p/REPaAfvbu
 ryde9gmCFSIQemwlR+f82oZ5InFAZe0HiyxINhPttEUxhT90E27PjjKiYTPa0EnQFQQS
 Z8E7nZ92D5pTUF+UBueN7AnCOc5mbnCUDdMByWeldOLuC9qm3hvqCCsEvQmLYQhiQWdV
 nW+savrkuDeR/4R3NQFUQC3IQIOauJmEGA/VrH7eGBz1HSXaPRV9bHN5KVmMWxTUXAR2
 //ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1guS0gDrZjfUmSU5l6+FKXIeim0aYpmxuh2calaUzoE=;
 b=Aj9rDrNIvRMH6xguGKopWttzUSLkeHEoB1mgVV89XgX4mMLfgLkyDjC2ijpJo9IcKK
 FQ9xzBLvNVJt9ZObgRyt6brkbg0eRZ3EJdTckLXrV6KF9/MCkafKTDtarY7PJ2Ey8gF0
 ZUiV/ulEJ9gOLotnp6f8Rwbr3Dd0JQhoUs11NkYMTVsxCeTCoT054egM/F3cPAQFBM4N
 kSghVuX8fcpKghIn9a88eUO6G0UnTfSecrjxTggsjjajw/lRE6txb3IDaZ03D/lSg5Rs
 QXBt3NsJhkQs+FpupnjyTYGmCad29EdbyauoCPitzBTVx8HN9WDCmNn08ONzxwzsOL4V
 6D4A==
X-Gm-Message-State: APjAAAVt0v59kmXGGoxCZ6yXVtyKaexg+q7IkV4N1eCQox4Vveyi3F6N
 fE5yVawqw66RMYCFwmIbtTGSIfgn+Z6eEPmHHFmx
X-Google-Smtp-Source: APXvYqzur62Xa0aX+hBR05to3EvznpMSGqqCF/FL/x5K8/CpY69vmaUAq516HJIZjm9UYkwRmk2iTeSKG9mkjL3Lecg=
X-Received: by 2002:a17:906:9352:: with SMTP id
 p18mr5037685ejw.95.1580267509754; 
 Tue, 28 Jan 2020 19:11:49 -0800 (PST)
MIME-Version: 1.0
References: <bbaf0eeb3ddb8791533fc9dfba23ed57d3a2c9bd.camel@cisco.com>
 <ba9fa4341c9b9fa27c8ea3229f879d25614a900f.camel@cisco.com>
 <fbb29bfec178bb4b4d586df217d202fbe54430a4.camel@cisco.com>
 <60a05460106ef7cf1186e96d476c4564a500f5e2.camel@linux.intel.com>
 <bd1c6b6134911fd9f7c9c0434ca648c407ddc8f0.camel@cisco.com>
 <ceaca929e1b06cae46aff198872af05874ada24b.camel@linux.intel.com>
 <4981a097e7aeda6240fcd614164b72b69e25a2aa.camel@cisco.com>
 <0fa151128d5fd81337cf9383c4a9f46108fc5b7a.camel@linux.intel.com>
 <141d1e7f4cfce39d4e53b292556310f7c31329d7.camel@cisco.com>
In-Reply-To: <141d1e7f4cfce39d4e53b292556310f7c31329d7.camel@cisco.com>
From: Paul Moore <paul@paul-moore.com>
Date: Tue, 28 Jan 2020 22:11:38 -0500
Message-ID: <CAHC9VhTGDXOqH4phjAk7yPZEyEJ3FyuZxwv0_GHRvvW3Yav7qg@mail.gmail.com>
To: "lukasz.hawrylko@linux.intel.com" <lukasz.hawrylko@linux.intel.com>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: paul-moore.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.48 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.208.48 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1iwdlk-008sHY-IH
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
Cc: "tboot-devel@lists.sourceforge.net" <tboot-devel@lists.sourceforge.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tboot-devel-bounces@lists.sourceforge.net

On Sat, Dec 21, 2019 at 12:00 PM Paul Moore (pmoore2) via tboot-devel
<tboot-devel@lists.sourceforge.net> wrote:
> On Fri, 2019-12-20 at 10:51 +0100, Lukasz Hawrylko wrote:
> > On Tue, 2019-12-17 at 20:12 +0000, Paul Moore (pmoore2) wrote:
> > > On Fri, 2019-12-06 at 11:37 +0100, Lukasz Hawrylko wrote:
> > > > On Thu, 2019-12-05 at 17:20 +0000, Paul Moore (pmoore2) wrote:
> > > > > A question for discussion: if the VLP is loaded from it's own
> > > > > nvindex,
> > > > > and there is also a VLP present inside the LCP, which VLP do we
> > > > > want
> > > > > to
> > > > > use?  I'm assuming it is the VLP we loaded directly, and not
> > > > > from
> > > > > inside
> > > > > the LCP, but thought it was worth checking.
> > > > >
> > > >
> > > > In "stock" TBOOT, VLP loaded from its own index has higher
> > > > priority
> > > > over
> > > > one embedded in LCP, so I agree with you that here it should work
> > > > like
> > > > that.
> > >
> > > I was thinking about this some more and I'm now wondering if we
> > > should
> > > only support the new TB_HTYPE_PECOFF hash type if it is present in a
> > > VLP
> > > loaded from the LCP.  In order to use the new signature support
> > > admins
> > > are going to need to generate a new LCP to contain the certificate
> > > payload, why not store the VLP in the LCP at that point?
> >
> > To be honest I don't like to add any kind of limitation when it is not
> > needed. I think that in first approach we should allow to use any of
> > possible configurations. If admins prefer to delete VLP index in TPM
> > and
> > put everything in LCP, they will do it, if, for any reasons, they want
> > to keep VLP under its own index and put only certificate in LCP - why
> > not, we support that case too :)
>
> Okay, that's fine.  FWIW, it seems to me as if keeping the VLP in it's
> own nvindex is a bit of a legacy solution, especially when we consider
> the PECOFF signature validation.  In the PECOFF case you *must* have a
> LCP to carry the certificates.  Not to mention the benefits of a signed
> LCP allowing you to update the policy without updating the values stored
> in the TPM nvindex (assuming the same policy signing key).

I've been playing with this and it would appear, at least on my TPM2
system, that loading a VLP directly into the TPM conflicts with the
LCP.

Lukasz, have you been able to load both a VLP and a LCP into a TPM2?

-- 
paul moore
www.paul-moore.com


_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
