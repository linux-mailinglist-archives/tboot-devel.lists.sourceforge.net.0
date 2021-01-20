Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B3F182FD04E
	for <lists+tboot-devel@lfdr.de>; Wed, 20 Jan 2021 13:52:58 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1l2Cyl-0004oc-Ue; Wed, 20 Jan 2021 12:52:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jandryuk@gmail.com>) id 1l2Cyk-0004oT-Dt
 for tboot-devel@lists.sourceforge.net; Wed, 20 Jan 2021 12:52:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Xzhg4DvzUaNxar53zgt3dLY4d2S0U3zwzYQw8koHSGQ=; b=h8DGgehQQBS86lr/bx9B7/QUbb
 0kuOVXTdZQzIcSkPUYSX9hOiYD779/sMxPDnYLzNgZ5jFZwxXzKZQD7dRO/fSa7jLoN1WRACBJZil
 Y7pDSUOjwJLMKUq7SSKKhj9HQ6x24A5f4ZzoJph8Mm4Zmem9vm876yDiZagsFlM5qW0s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Xzhg4DvzUaNxar53zgt3dLY4d2S0U3zwzYQw8koHSGQ=; b=TIjnVwls8iMUd+NsxHbeaLCXRj
 444xM7ShGSOg/Anlp1Ykf39jtk9Odg0lKYgm28YdZ0yGS91GXdFSDPsVxSFHj0fyh8fQEnvM3QAhZ
 XifeI98Ai7okwgao6+FR9VRvPyL4PbyDvpE3/L8jdWPVkVPzOXIuLvVVdCv2RWM/ygmg=;
Received: from mail-lf1-f47.google.com ([209.85.167.47])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1l2Cyd-0017I7-PD
 for tboot-devel@lists.sourceforge.net; Wed, 20 Jan 2021 12:52:54 +0000
Received: by mail-lf1-f47.google.com with SMTP id q12so6926191lfo.12
 for <tboot-devel@lists.sourceforge.net>; Wed, 20 Jan 2021 04:52:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Xzhg4DvzUaNxar53zgt3dLY4d2S0U3zwzYQw8koHSGQ=;
 b=kQdgn1BdJF4/aN4P71n8F5W4/j+fU6mIbex6ey7Up9zo3HPdgSAxt4jjpxG4Op0RIf
 XOxUqiW4HmCVkzme1Nakk03GtcL/40j1GIKxZ3CKSyZL5TvBGbUaRaBPV5H0b/iZ5Z80
 zY1gUVnKue81ko98a/sS6ko+57izkxtsXJ9CUSX9kRpn5kQH89UqDm3MQyBVfcEHSmWs
 mW7K96OLGdI2vRFGPDcOu6MCRuyOvgCXWhJnNLbLIU/WDrdfMhKv6/kc7Et3T4mPMC0l
 K4WSTBr0fynUIsBR3Vt7DjNWHAdqk3BgLRSLmYOeNmGVHdAXF57kvTkFTKRzuvW0Diil
 12hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Xzhg4DvzUaNxar53zgt3dLY4d2S0U3zwzYQw8koHSGQ=;
 b=N5SH+gjyXWhf2uBFEDv1Lw5mNnB2HFN/GqTr8W6mzlS3465gpVVCkFpS1KMSk8miyH
 D+ccvLNDrHtZQYypjZY51OwuizY/QSDL5ctJoN34eUFjRshuSqtF/VSulXsmoe5psTAT
 x8F5CbOTX5UVx3eOjnuFfhd+LHfSc8WrvYb6xigEKWfARz7O59YCrt9um8r63w79QBYw
 3+8PTeY+FtTDzJZ3SYrdBQZXtTfnAJLEDFMWTMPL0xvL5ZXnA3mZ7Q2PAd1f0I6rocR9
 Sr8bAOs3KrhV2oS8gOvRtUyT3tuTfXbD7E2NQm+H1z4YTBSiilK8/ScWUVOlzlznZxXT
 s/jg==
X-Gm-Message-State: AOAM532XqJbdYtPg/V9nB+70GYw/JvrYU8+FPZAyfOOTp1L6G+tywiT1
 BouC/jjKkViCelN5ggO/59v5D6RAgrJ1jn0nUL8jIdUH
X-Google-Smtp-Source: ABdhPJxWRjhrnize42vjZ3PxP4zI9dvYrfNmYiGfdGcXKCzbAnjLazvD42SjodGyBpJUrGTEDhX+o5idRGANmYIHqds=
X-Received: by 2002:a05:6512:211:: with SMTP id
 a17mr4127579lfo.562.1611147152228; 
 Wed, 20 Jan 2021 04:52:32 -0800 (PST)
MIME-Version: 1.0
References: <CAKf6xpskX4rBd9eAiDa60uZKQnXD-QP5EWMKnMfr4Y8T0D0j7A@mail.gmail.com>
 <CAKf6xpsFTbNnUPURfkdQdbeHzTutVPRrS=UPhp5__y+zwYpOHg@mail.gmail.com>
 <cbf1470042ad84bfe2d77a3b6d3ded3b8d91602b.camel@linux.intel.com>
In-Reply-To: <cbf1470042ad84bfe2d77a3b6d3ded3b8d91602b.camel@linux.intel.com>
From: Jason Andryuk <jandryuk@gmail.com>
Date: Wed, 20 Jan 2021 07:52:21 -0500
Message-ID: <CAKf6xpsyQ=31ijF605PKTuF-W5HqFPPTuCufCyLBeEa_n3MjSg@mail.gmail.com>
To: Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: intel.com]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (jandryuk[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.47 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.47 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1l2Cyd-0017I7-PD
Subject: Re: [tboot-devel] 10th Gen ACM
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

On Wed, Jan 20, 2021 at 3:45 AM Lukasz Hawrylko
<lukasz.hawrylko@linux.intel.com> wrote:
>
> Hi Jason
>
> On Sat, 2021-01-16 at 09:02 -0500, Jason Andryuk wrote:
> > On Mon, Jan 4, 2021 at 2:57 PM Jason Andryuk <
> > jandryuk@gmail.com
> > > wrote:
> > > Hi,
> > >
> > > Are SINIT ACMs available for 10th Gen processors, specifically 10th Gen 10810U?
> > >
> > > The intel page
> > > https://software.intel.com/content/www/us/en/develop/articles/intel-trusted-execution-technology.html
> > >
> > > has 8th_9th_gen_i5_i7-SINIT_81.zip as the latest file - but the file
> > > inside is named 7th_8th_gen_i5_i7-SINIT_81.bin.
> >
> > This acm does not match the 10810U.  From acminfo, I think the chipset
> > matches (0xb008), but the processor 0xa0660 is not in the processor id
> > entries.   0x906e0 is the latest in the ACM with 0x406e0, 0x506e0, and
> > 0x806e0 as well.
> >
> > However, tboot finds a BIOS-loaded SINIT and uses that (which matches
> > processors 0x806e0, 0x906e0, and 0xa0660).
> >
> > I am still interested in finding a download link for newer SINIT ACMs,
> > if anyone has one. :)
> >
>
> Please try this link: https://cdrdv2.intel.com/v1/dl/getContent/630744

That works.  Thanks, Lukasz!

Regards,
Jason


_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
