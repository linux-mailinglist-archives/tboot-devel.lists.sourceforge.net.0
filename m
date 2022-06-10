Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A88E15459FF
	for <lists+tboot-devel@lfdr.de>; Fri, 10 Jun 2022 04:15:55 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1nzUBb-0002kA-OU; Fri, 10 Jun 2022 02:15:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <z23@posteo.net>) id 1nzUBV-0002k2-Ch
 for tboot-devel@lists.sourceforge.net; Fri, 10 Jun 2022 02:15:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vrCufqNZblS/lKdsKznCjLZnbefhMLldB1eoPuRirtU=; b=bAJAkFJOZKGXE+e2MgIcjbFtKI
 TOS7zXLVwoIY765kq3fSoTuXSYyDroqg3Ltz663tLCx3/k1vnt+NpoHTeoWEhNEVG+sBm4pr6i1i4
 MLqSEc6bS1i7LpdX8AIneYYE6ZYX5NVQmnigBOc419SijLaZuzQTwLVl7LdfVxXqh+Tk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vrCufqNZblS/lKdsKznCjLZnbefhMLldB1eoPuRirtU=; b=BjPq7YKCDSGZ4MbWp7mNAT3iNU
 WGJ/qS5acCwRXW8AMQs2M6eEkr2LN9omwYKPVkkQQJDebV5zQ/A+f8ftYMo/kyAthHH7rIPnKufi0
 tUF8Y0TwNqmRGb+P7b7hK0RdqU0Egk4fMODZGQr2pj6iuY8r9VM/CeAhu88ox0o7i8Y8=;
Received: from mout01.posteo.de ([185.67.36.65])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nzUBP-0000we-P7
 for tboot-devel@lists.sourceforge.net; Fri, 10 Jun 2022 02:15:35 +0000
Received: from submission (posteo.de [185.67.36.169]) 
 by mout01.posteo.de (Postfix) with ESMTPS id 53CA6240026
 for <tboot-devel@lists.sourceforge.net>; Fri, 10 Jun 2022 04:15:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=posteo.net; s=2017;
 t=1654827322; bh=kSQqy32lht6unuP+v9ySeMRmkbUBeO+79ntMfJF9YGk=;
 h=Subject:To:From:Date:From;
 b=DTyN+OLSpa3AcKgaQvsXIom3O34nB3JdfqfLZhyjQ9FFSrRad1xcA1hXjYm7d2Otd
 lglIyYphRvHeEDEJvUgNo3DjUOTpf/JdTj/1B+bCfCCpLCQ7YG6hWz8j5P6uK5j4Xt
 2jdlNNUz0hKWGTeA2k6kH+Hl5wQWR8ULzJULl600gH2zUNGSKgmqblhnngLXt0a8Za
 XCZjP2NRQW5lBitjVMBzqD+3UQWoDx3jqNYN06PGL33P4DVjYNxne5PJ0Br6FsRoY/
 CBS7LtTMuhb38M2+ELQgiz2/ETZW8sGJJsFyx/+M9u3mPD33AEG2AWZd2YZvF+P9X7
 vpd1+krId9KSQ==
Received: from customer (localhost [127.0.0.1])
 by submission (posteo.de) with ESMTPSA id 4LK4LK51f2z6tmM
 for <tboot-devel@lists.sourceforge.net>; Fri, 10 Jun 2022 04:15:21 +0200 (CEST)
To: tboot-devel@lists.sourceforge.net
References: <ab6971de-9fd8-eb64-94d7-af4ebf4b4cd0@redhat.com>
From: Derek Dolney <z23@posteo.net>
Message-ID: <18aa51fa-b99b-cf46-e805-695499eab2e3@posteo.net>
Date: Fri, 10 Jun 2022 02:13:16 +0000
MIME-Version: 1.0
In-Reply-To: <ab6971de-9fd8-eb64-94d7-af4ebf4b4cd0@redhat.com>
Content-Language: en-US
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On a Thinkpad T430 this would break my boot. I have /sys/firmware/efi
    and I need the noefi kernel param, otherwise it just reboots itself about
    10-20 sec after SENTER On 6/9/22 3:04 PM, Tony Camuso wrote: > # HG changeset
    patch > # User Tony Camuso <tcamuso@redhhat.com> > # Date 1654800659 14400
    > #      Thu Jun 09 14:50:59 2022 -0400 > # Node ID be868f53407d446049 [...]
    
 
 Content analysis details:   (-2.5 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
                             medium trust
                             [185.67.36.65 listed in list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
X-Headers-End: 1nzUBP-0000we-P7
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
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
Errors-To: tboot-devel-bounces@lists.sourceforge.net

On a Thinkpad T430 this would break my boot. I have /sys/firmware/efi
and I need the noefi kernel param, otherwise it just reboots itself
about 10-20 sec after SENTER

On 6/9/22 3:04 PM, Tony Camuso wrote:
> # HG changeset patch
> # User Tony Camuso <tcamuso@redhhat.com>
> # Date 1654800659 14400
> #=A0=A0=A0=A0=A0 Thu Jun 09 14:50:59 2022 -0400
> # Node ID be868f53407d4460491a0e77e5165025153b0329
> # Parent=A0 206a47f3e9d2c18c8a3db082216ee6fc3c5d475c
> 20_linux_tboot: efi logic was inverted
> =

> There was a RAID0 system that could boot normally, but not through
> a tboot launch. The problem was that the logic in this script
> incorrectly appended 'noefi' to the grub.cfg module2 kernel stanza.
> =

> When 'noefi' was removed from that stanza, the system could boot
> through a tboot launch. This patch corrects the logic in the script.
> =

> diff -r 206a47f3e9d2 -r be868f53407d tboot/20_linux_tboot
> --- a/tboot/20_linux_tboot=A0=A0=A0 Thu Mar 17 23:58:50 2022 +0200
> +++ b/tboot/20_linux_tboot=A0=A0=A0 Thu Jun 09 14:50:59 2022 -0400
> @@ -105,11 +105,11 @@
> =A0=A0 if [ -d /sys/firmware/efi ] ; then
> =A0=A0=A0=A0=A0=A0 mb_directive=3D"multiboot2"
> =A0=A0=A0=A0=A0=A0 mb_mod_directive=3D"module2"
> -=A0=A0=A0=A0=A0 mb_extra_kernel=3D"noefi"
> +=A0=A0=A0=A0=A0 mb_extra_kernel=3D""
> =A0=A0 else
> =A0=A0=A0=A0=A0=A0 mb_directive=3D"multiboot2"
> =A0=A0=A0=A0=A0=A0 mb_mod_directive=3D"module2"
> -=A0=A0=A0=A0=A0 mb_extra_kernel=3D""
> +=A0=A0=A0=A0=A0 mb_extra_kernel=3D"noefi"
> =A0=A0 fi
> =A0
> =A0=A0 printf "menuentry '${title}' ${CLASS} {\n" "${os}" "${tboot_versio=
n}"
> "${version}"
> =

> =

> =

> _______________________________________________
> tboot-devel mailing list
> tboot-devel@lists.sourceforge.net
> https://lists.sourceforge.net/lists/listinfo/tboot-devel


_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
