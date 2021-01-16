Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 420AF2F8D85
	for <lists+tboot-devel@lfdr.de>; Sat, 16 Jan 2021 15:03:15 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1l0mAU-0001SJ-JX; Sat, 16 Jan 2021 14:03:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jandryuk@gmail.com>) id 1l0mAT-0001SC-CT
 for tboot-devel@lists.sourceforge.net; Sat, 16 Jan 2021 14:03:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Cc:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=R9NVgOSmIU3W1gNEFZA/kot/vYtUfVG24W4iBj2Hbyo=; b=kBYDPagONoQhaTBw8G5bbM7mt
 qqefu9Wp1oLG2/wUf8H5/fLXrpBnMjmqt/L6Sube6k7KRsKXp1NmPSqeRPhGsnJQ6YWsWh/0KyQhJ
 D6gpP0ygxMRam0WE4kAl1BC5mkPPdsEja7fyf+xfUCuN3JRVgzGzFR+KeJo4QZWbFj24Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=R9NVgOSmIU3W1gNEFZA/kot/vYtUfVG24W4iBj2Hbyo=; b=Z+oanVgytePN+wwBjmSZHAqoCq
 IkSwJF6iYOcmCNI8Cx0ijcByxOmYt9bzMmfBPxSGGKau4LWJDSOKqBLmnH/vt0vqeuRGIzQ+9SzHz
 77Q4QWCWs5/nOlbP1Dr7loMpYuRMPk3vw+grOopXzy04P9qUhUb/qyGhYFIxmfxfQJa8=;
Received: from mail-lf1-f54.google.com ([209.85.167.54])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1l0mAC-008C06-C8
 for tboot-devel@lists.sourceforge.net; Sat, 16 Jan 2021 14:03:05 +0000
Received: by mail-lf1-f54.google.com with SMTP id a12so17442753lfl.6
 for <tboot-devel@lists.sourceforge.net>; Sat, 16 Jan 2021 06:02:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=R9NVgOSmIU3W1gNEFZA/kot/vYtUfVG24W4iBj2Hbyo=;
 b=iE7LzoVF9X+yaGDqD0yVEI59qnWFYno0YfLfV1rLpBd3jF2z0ba3yjfXnUHOBXu+pT
 XU5NK08UVPxubV3A19JWCezY2Bjy/+bNeIIcZJhngh+ez9LPVHMtsPBy/D6F2ApUh1Su
 UhEgWUt7QCu+hY4Rhu2vUzWjDcDNSa1H6jQv/TbSEVokxtBp2CP2OQmhtdp5KKe/ojNI
 YNrRvGcj++l6ZxWXdZsJ+sIUGhsBVVS4AM6ZInTPWAtELNlXaSOuRDe0PLMZRCP89oyS
 LPPpqOoyMIutkAY7JUfBIPkkiXQ4IM4AAJgHUGtpmEMWlS1d5BAs4dKKumOjlOLHhbD6
 cXrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=R9NVgOSmIU3W1gNEFZA/kot/vYtUfVG24W4iBj2Hbyo=;
 b=K3p+JK1+3oTAqNcSKkYM2aDcvKVmoZHSXP3tKzFGWMwe/951LW5CAKUjQKZx93h6d8
 OwbheiLI4gh1Nr0MfEpJ3o6OlyWAhI7Mylo4qsZ0rTZAlU/ef3lgH1SOHnfjIxaFtgV7
 Q0A3Zf7Ky72L0TkmkwIgKLBt5Abuugj6+2/lr8lruXEkb8t8PCb/rj1DPOcgq5i/D7Pg
 114DOUfw+/aL5WbClVRiCVNcRbXWZS2IfPn5PinRHJZyH3so73bOu9sTy/T/eR1EYOMN
 B6OAVtNHcCwGeLKhq2Ts1XIjjlY00INL3rGcUne4WG33MorvANrV7vVeaUZcq3Bpzd3J
 hZnw==
X-Gm-Message-State: AOAM532NJKh4uPsM3zSe/lLLiWBgatXcmPytl8ngY1ljXigdd5v+67+M
 8X+Gf3crnk9eDftXS+8wRGLDVGuP3HKjyPVBiTdanIX9oWk=
X-Google-Smtp-Source: ABdhPJz0iRpmENFgwQfPLRh3uZCs3oPJseZf4tbLYrsDZ6xylhRJA5GZ92in5OQU4GFvNdwPkShkOAP3eB4BxyGmQjo=
X-Received: by 2002:a19:675d:: with SMTP id e29mr7246967lfj.491.1610805754083; 
 Sat, 16 Jan 2021 06:02:34 -0800 (PST)
MIME-Version: 1.0
References: <CAKf6xpskX4rBd9eAiDa60uZKQnXD-QP5EWMKnMfr4Y8T0D0j7A@mail.gmail.com>
In-Reply-To: <CAKf6xpskX4rBd9eAiDa60uZKQnXD-QP5EWMKnMfr4Y8T0D0j7A@mail.gmail.com>
From: Jason Andryuk <jandryuk@gmail.com>
Date: Sat, 16 Jan 2021 09:02:22 -0500
Message-ID: <CAKf6xpsFTbNnUPURfkdQdbeHzTutVPRrS=UPhp5__y+zwYpOHg@mail.gmail.com>
To: tboot-devel@lists.sourceforge.net
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: intel.com]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (jandryuk[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.54 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.54 listed in list.dnswl.org]
X-Headers-End: 1l0mAC-008C06-C8
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tboot-devel-bounces@lists.sourceforge.net

On Mon, Jan 4, 2021 at 2:57 PM Jason Andryuk <jandryuk@gmail.com> wrote:
>
> Hi,
>
> Are SINIT ACMs available for 10th Gen processors, specifically 10th Gen 10810U?
>
> The intel page https://software.intel.com/content/www/us/en/develop/articles/intel-trusted-execution-technology.html
> has 8th_9th_gen_i5_i7-SINIT_81.zip as the latest file - but the file
> inside is named 7th_8th_gen_i5_i7-SINIT_81.bin.

This acm does not match the 10810U.  From acminfo, I think the chipset
matches (0xb008), but the processor 0xa0660 is not in the processor id
entries.   0x906e0 is the latest in the ACM with 0x406e0, 0x506e0, and
0x806e0 as well.

However, tboot finds a BIOS-loaded SINIT and uses that (which matches
processors 0x806e0, 0x906e0, and 0xa0660).

I am still interested in finding a download link for newer SINIT ACMs,
if anyone has one. :)

Regards,
Jason


_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
