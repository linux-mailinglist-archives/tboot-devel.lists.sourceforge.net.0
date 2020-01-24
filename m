Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DD984148EC7
	for <lists+tboot-devel@lfdr.de>; Fri, 24 Jan 2020 20:43:56 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1iv4ry-0004Pm-4k; Fri, 24 Jan 2020 19:43:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <paul@paul-moore.com>) id 1iv4rw-0004PY-Mb
 for tboot-devel@lists.sourceforge.net; Fri, 24 Jan 2020 19:43:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vYCyAHbBnGO/lbG1tLavCbAaOwaGUDfZb7cCtEv2AEo=; b=nDuDa0mTaTQWbkDRsaii3yMRFx
 W6ldRttZHeForVo1+4cAYx9PAF57YVo1K3hj2ehIhJJGc/XZaq0YPGUm/GUPmMmvpV68qbC/y6Obb
 G/Tm2a0Qt/3arsx8U79uorvuC9ZvogWCaxn8fuAF2dQ50OxpcBUCXKRjK69v5pqIj874=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vYCyAHbBnGO/lbG1tLavCbAaOwaGUDfZb7cCtEv2AEo=; b=clJ1wrOIJ467kja6lmLbLh2Qud
 ygmEICiJaf539dWVqEc7bTEXH6krPnOs/mpF7tkEx2qqwyrqwI7hid3Z5XMylxzetpfZK6dkV7nBe
 tCfSzeSBpyayGWT9mBwnL5a5xWLSodHnfglSok8f8AaEs4waxt84oZxaAGEuaR0/J5YI=;
Received: from mail-ed1-f67.google.com ([209.85.208.67])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1iv4ru-00HNKs-U7
 for tboot-devel@lists.sourceforge.net; Fri, 24 Jan 2020 19:43:52 +0000
Received: by mail-ed1-f67.google.com with SMTP id v28so3681554edw.12
 for <tboot-devel@lists.sourceforge.net>; Fri, 24 Jan 2020 11:43:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=paul-moore-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vYCyAHbBnGO/lbG1tLavCbAaOwaGUDfZb7cCtEv2AEo=;
 b=V5NViyvyWL/Yf62YWJU7y4aaogJTsEaNW0zykUt+CRtS0EBGwVWvYLJKRCCs66y4Cj
 NCY+8Qx4uGlqnF8VeWLJ5fHtOm32d4OpskCXvaUptAYYD69qahZtegApP48mi1qw09cw
 qdYXF9jpdG52ewpBjBoQzMDxW0jc4xJCwV+cZ1dbSs4RrbNxhlV8V2ltMvIhpS3Q6GwU
 CMz1rZ6VNRsOi0AcVyhFn+Oye0/PHKshtEISm7ASr5+DZWR1dzpjP/RCRc+Xy6i4R4d0
 KJ0OZNXsWGuF1vX5Kx5DsoWsAFr0zwaRFjmpmQk991V3KSvzWmmp9OpHr0vnssDK12aZ
 XTUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vYCyAHbBnGO/lbG1tLavCbAaOwaGUDfZb7cCtEv2AEo=;
 b=ZBKZUwMwFz6ARQVCMYQn+ew8ftTZ0Oa3QD+jmgsVukZE02xDaL5wk65C7zSXCvH2yk
 VTaMNvLOQcspycKgk+im5ErWzQbszkyQpeQI2bNpvpeXP62rTI9phV/KTCvwGsUtkzzO
 HNOomSntiglfWTDSGpAau0tTA8sIzI2AoWJZfrsOvHjjMSUEprgi5M5tZkrW7P5AnQPo
 yQAb9//MAdeFkrJUOD8F/lIgXeeHnjGN+qkOA9bTKWeIiKMH2PZEUT3KagqGMydVvdrU
 HnSxciOJ1ml/xLdYiucOJnPWBoApRA2qnBnnDGoslT1vVAU44ObCpC09r/y8/GT7wrpe
 cSVQ==
X-Gm-Message-State: APjAAAXIuH8c0ykAFRdVxamzvj2q6ffscxtpwk7zUz5SUy4Omx2vslus
 xH4O1CXcOz1L+WxSkeNZWaILoV5oB9q7GUk04t//wd5L8A==
X-Google-Smtp-Source: APXvYqymARqHi3QpK0Cn8FRgzDqxp7ZMrox6N7ymQRPoVN4P1pLrHyvxnFI8zNci9I1j4UdRGxDdwTV8nURuXVsPG7M=
X-Received: by 2002:a50:a7a5:: with SMTP id i34mr4186971edc.128.1579893283937; 
 Fri, 24 Jan 2020 11:14:43 -0800 (PST)
MIME-Version: 1.0
References: <CACMJ4GZ9oGRG3kBhhDJZ_o=mJKfjA4MR5DoXz3RUQS3mk1W4gQ@mail.gmail.com>
 <bca6ed38d5ec0b66606dff24fc163851e7765323.camel@linux.intel.com>
 <CACMJ4GbTTakb08P0tm9tKTbUpZhu463Cq5fQBLnT_ZZfJQ_KHQ@mail.gmail.com>
In-Reply-To: <CACMJ4GbTTakb08P0tm9tKTbUpZhu463Cq5fQBLnT_ZZfJQ_KHQ@mail.gmail.com>
From: Paul Moore <paul@paul-moore.com>
Date: Fri, 24 Jan 2020 14:14:32 -0500
Message-ID: <CAHC9VhQBhj=pLm2XMO0eUG5zVVQA3iEyYUabAPfywP4Oo6VMZw@mail.gmail.com>
To: Christopher Clark <christopher.w.clark@gmail.com>
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: intel.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.208.67 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.67 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.4 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iv4ru-00HNKs-U7
Subject: Re: [tboot-devel] tboot, TPM 2.0 on Dell PowerEdge R730
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tboot-devel-bounces@lists.sourceforge.net

On Fri, Jan 24, 2020 at 1:52 PM Christopher Clark
<christopher.w.clark@gmail.com> wrote:
> On Tue, Jan 21, 2020 at 12:32 AM Lukasz Hawrylko
> <lukasz.hawrylko@linux.intel.com> wrote:
> >
> > On Wed, 2020-01-15 at 18:36 -0800, Christopher Clark wrote:
> > > Hello
> > >
> > > I am trying to boot with tboot and TPM 2.0 on a Dell PowerEdge R730
> > > and encountering reboot at SENTER every time with the following:
> > >
> > > TBOOT: TXT.ERRORCODE: 0xc0033451
> > > TBOOT: AC module error : acm_type=0x1, progress=0x05, error=0xd
> > >
> > > which SINIT_Errors-Broadwell-4th-gen.pdf indicates is: Invalid PMR configuration
> [...]
> >
> > Hi Christopher
> >
> > At first point please ensure that you are using latest SINIT, I know
> > that ACM team was working on similar issue, but I don't know if they
> > have already released version with the fix.
> >
> > If problem still exists with latest SINIT, you can try to modify TBOOT
> > and check if that helps. Please apply following patch over v1.9.11
> >
> > diff -r 003178d05f52 tboot/txt/txt.c
> > --- a/tboot/txt/txt.c   Tue Jan 14 11:54:11 2020 +0100
> > +++ b/tboot/txt/txt.c   Tue Jan 21 09:27:51 2020 +0100
> > @@ -559,6 +559,12 @@
> >              if (!vtd_disable_dma_remap(iter)) {
> >                  printk("    vtd_disable_dma_remap failed!\n");
> >              }
> > +            if (!vtd_disable_qie(iter)) {
> > +                printk("    vtd_disable_qie failed!\n");
> > +            }
> > +            if (!vtd_disable_ire(iter)) {
> > +                printk("    vtd_disable_ire failed!\n");
> > +            }
> >          }
> >      }
> >
>
> Hi Lukasz,
>
> Thanks for your reply and for the patch, and I can confirm that with
> the patch applied, tboot does proceed past the previous point it was
> triggering reboot and it no longer reports a PMR errorcode 0xc0033451.
>
> My next encounter was with a different error due to the wrong hash
> algorithm being selected by tboot. The TPM 2.0 on this machine (Dell
> don't sell TPM 1.2s for it any more) reports availability of both SHA1
> and SHA256, but the BIOS won't allow enabling TXT without configuring
> it to use SHA256, and then tboot was picking SHA1, which then tripped
> a mismatch failure.
>
> I've got it all the way to a successful launch with tboot 1.9.11 into
> Xen and dom0, once SHA256 is enabled as the hash algorithm with this
> basic patch:
>
> diff --git a/tboot/common/tpm_20.c b/tboot/common/tpm_20.c
> --- a/tboot/common/tpm_20.c
> +++ b/tboot/common/tpm_20.c
> @@ -2778,6 +2778,8 @@ static bool tpm20_init(struct tpm_if *ti)
>     return false;
>      }
>
> +    ti->cur_alg = TB_HALG_SHA256;
> +
>      if (handle2048 != 0)
>          goto out;

You might be able to skip the patch by simply specifying an 'extpol'
parameter on the tboot command line, for example: "extpol=sha256".

The patch linked below also adds support for "extpol=acm" which checks
the ACM for supported TPM2 extpol settings and selects one
automatically (it gives priority to the embedded policy which should
extend both the SHA1 and SHA256 PCR banks).

* https://github.com/pcmoore/misc-tboot/commit/130a8cb226d50aaba3f55bd7f0ab6daf25aa0a19

-- 
paul moore
www.paul-moore.com


_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
