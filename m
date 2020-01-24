Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F12F2148E02
	for <lists+tboot-devel@lfdr.de>; Fri, 24 Jan 2020 19:52:13 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1iv43u-0001IR-1d; Fri, 24 Jan 2020 18:52:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <christopher.w.clark@gmail.com>) id 1iv43s-0001IK-Ky
 for tboot-devel@lists.sourceforge.net; Fri, 24 Jan 2020 18:52:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UpLC/rUm4ea1HmsmGC0kh6eHAD6ctE5fG8cSv50IL8w=; b=a+t8kMljIpnPvq+C9HVt7yLdBu
 Fw72FvW4kkdt+QgKQ5H9ajLHnK+fIK5QuJ6W7GG6edj0/wgCyg8TMX5JcDhOKFiDd7ueIkyBfShJt
 dlbtOH/oYFIi6HQ8ntRy/7rz/RE0Eknsx8sD1RIsuBjxQsN8/mqz0vprDPOrahk+1K5s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=UpLC/rUm4ea1HmsmGC0kh6eHAD6ctE5fG8cSv50IL8w=; b=SPXzJbBXGe7xIgP+roO5OOke8z
 e4c8nvcZELr7uZlMIvim+I3GldVGYIFoo6ROkwEGwtKM8epxHMY5HJYmJbGA9RRudbOVjzwgiA8td
 u41D/VhGn4ACKdW6P0MQDu/inZckavx2IAHsHfvthCuj2D255y+rWG2BeaDdzMTcSoqg=;
Received: from mail-lf1-f66.google.com ([209.85.167.66])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1iv43r-0049ca-5a
 for tboot-devel@lists.sourceforge.net; Fri, 24 Jan 2020 18:52:08 +0000
Received: by mail-lf1-f66.google.com with SMTP id c23so1818173lfi.7
 for <tboot-devel@lists.sourceforge.net>; Fri, 24 Jan 2020 10:52:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=UpLC/rUm4ea1HmsmGC0kh6eHAD6ctE5fG8cSv50IL8w=;
 b=F3EaVztG/fR/3UH14NQU+RY45JLYtWFiD7PstK5qdkvh5n0cxcLTEIq9QhRl7jgPkW
 Zr44O5r2H+03FrJfSfozm0OqCfSwkfAwMUTgQDOvl7e9HvpMyFAj5n1mpPlcLEvlllGp
 HwK8wFNXnl5bGnIt6W8c/9mLTfmJtmWpnMBwNUpYV7M8AjiEDHkeEBgIIYGpuNBRikMf
 RL50A+EETdu/R8JrTtLOR0kgxqS8LAuFAxurdr06Vx84hllBI/FzQ5Ym/zmEZkJOgoEh
 CYNPjE31qd2q/r+yqTZU2mmIBbI7MU4qMqDegh1nqpEIIkYgJY+7dBdPf2oztzN0VUfx
 4GDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=UpLC/rUm4ea1HmsmGC0kh6eHAD6ctE5fG8cSv50IL8w=;
 b=sMK24y5qbrsjSZbWm+qAKVZKIvjTQ4q6/IbAUAe5U6vC1XA7AFGIVhyxo8+tJrrLuw
 tm4uIv8ZoOEoXCLv+QwBCxwah1mCM7IfjzVJewpVp2Kt81WybT9Iv8jECZEegh30xVuJ
 559aMq5duLgWmO/m2T+za3otRyczp0GP4kpmbpQVXNPgpNJ46H1qeuEuoF4PGWRU1jMN
 837LP+U8V9QpADhzLWY2TdSxz7548pU004chON/EbdZadKqfBcqDYu+JCetscu1T7YcE
 HEXYbShDZvPOOrbjrgrXWwGKArG62Bb4K8h8tN5gw1geO2x72of5+oh0r8C5b7WsxJG/
 ozmQ==
X-Gm-Message-State: APjAAAUwV+zz4sfrAy+/8F6CAXrakzKVUCDdT/BwXCqbUsE23pIca3yr
 cFu7tS+M4bRW+FgnZ8t8hPms75Z119UdtYbguc2NZdco
X-Google-Smtp-Source: APXvYqyeIU9k9KqdhtrSsW5vEN5Nq8U1jDD2nRPJBQUEYXFJER0JFeXckzN2zwsqXzDISPyh+2TvCIi8F0i5kx/d92Q=
X-Received: by 2002:ac2:489b:: with SMTP id x27mr2048140lfc.130.1579891920316; 
 Fri, 24 Jan 2020 10:52:00 -0800 (PST)
MIME-Version: 1.0
References: <CACMJ4GZ9oGRG3kBhhDJZ_o=mJKfjA4MR5DoXz3RUQS3mk1W4gQ@mail.gmail.com>
 <bca6ed38d5ec0b66606dff24fc163851e7765323.camel@linux.intel.com>
In-Reply-To: <bca6ed38d5ec0b66606dff24fc163851e7765323.camel@linux.intel.com>
From: Christopher Clark <christopher.w.clark@gmail.com>
Date: Fri, 24 Jan 2020 10:51:48 -0800
Message-ID: <CACMJ4GbTTakb08P0tm9tKTbUpZhu463Cq5fQBLnT_ZZfJQ_KHQ@mail.gmail.com>
To: Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: intel.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.66 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (christopher.w.clark[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.66 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1iv43r-0049ca-5a
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

On Tue, Jan 21, 2020 at 12:32 AM Lukasz Hawrylko
<lukasz.hawrylko@linux.intel.com> wrote:
>
> On Wed, 2020-01-15 at 18:36 -0800, Christopher Clark wrote:
> > Hello
> >
> > I am trying to boot with tboot and TPM 2.0 on a Dell PowerEdge R730
> > and encountering reboot at SENTER every time with the following:
> >
> > TBOOT: TXT.ERRORCODE: 0xc0033451
> > TBOOT: AC module error : acm_type=0x1, progress=0x05, error=0xd
> >
> > which SINIT_Errors-Broadwell-4th-gen.pdf indicates is: Invalid PMR configuration
[...]
>
> Hi Christopher
>
> At first point please ensure that you are using latest SINIT, I know
> that ACM team was working on similar issue, but I don't know if they
> have already released version with the fix.
>
> If problem still exists with latest SINIT, you can try to modify TBOOT
> and check if that helps. Please apply following patch over v1.9.11
>
> diff -r 003178d05f52 tboot/txt/txt.c
> --- a/tboot/txt/txt.c   Tue Jan 14 11:54:11 2020 +0100
> +++ b/tboot/txt/txt.c   Tue Jan 21 09:27:51 2020 +0100
> @@ -559,6 +559,12 @@
>              if (!vtd_disable_dma_remap(iter)) {
>                  printk("    vtd_disable_dma_remap failed!\n");
>              }
> +            if (!vtd_disable_qie(iter)) {
> +                printk("    vtd_disable_qie failed!\n");
> +            }
> +            if (!vtd_disable_ire(iter)) {
> +                printk("    vtd_disable_ire failed!\n");
> +            }
>          }
>      }
>

Hi Lukasz,

Thanks for your reply and for the patch, and I can confirm that with
the patch applied, tboot does proceed past the previous point it was
triggering reboot and it no longer reports a PMR errorcode 0xc0033451.

My next encounter was with a different error due to the wrong hash
algorithm being selected by tboot. The TPM 2.0 on this machine (Dell
don't sell TPM 1.2s for it any more) reports availability of both SHA1
and SHA256, but the BIOS won't allow enabling TXT without configuring
it to use SHA256, and then tboot was picking SHA1, which then tripped
a mismatch failure.

I've got it all the way to a successful launch with tboot 1.9.11 into
Xen and dom0, once SHA256 is enabled as the hash algorithm with this
basic patch:

diff --git a/tboot/common/tpm_20.c b/tboot/common/tpm_20.c
--- a/tboot/common/tpm_20.c
+++ b/tboot/common/tpm_20.c
@@ -2778,6 +2778,8 @@ static bool tpm20_init(struct tpm_if *ti)
    return false;
     }

+    ti->cur_alg = TB_HALG_SHA256;
+
     if (handle2048 != 0)
         goto out;


I also needed these two small OpenXT patches applied, for building
with gcc 6.4.0 and OpenEmbedded -- I've just posted them as
submissions to this list.

https://sourceforge.net/p/tboot/mailman/message/36908229/
OpenXT original:
https://github.com/OpenXT/xenclient-oe/blob/fc13893594f684baea65b7ee09066a8ddb840b4d/recipes-security/tboot/tboot-1.9.9/0001-config-Allow-build-system-integration.patch

https://sourceforge.net/p/tboot/mailman/message/36908230/
OpenXT original:
https://github.com/OpenXT/xenclient-oe/blob/fc13893594f684baea65b7ee09066a8ddb840b4d/recipes-security/tboot/tboot-1.9.9/0014-safestringlib-Attend-GCC-warnings.patch

Thanks again,

Christopher


_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
