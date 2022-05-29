Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DA2DE5371FB
	for <lists+tboot-devel@lfdr.de>; Sun, 29 May 2022 20:02:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1nvNFF-00051k-LT; Sun, 29 May 2022 18:02:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <z23@posteo.net>) id 1nvNFD-00051e-Vd
 for tboot-devel@lists.sourceforge.net; Sun, 29 May 2022 18:02:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=c0K7v/+qzXa6X/5SoJBrjLTHmexN/2EiqaBFUfeGomg=; b=hhWEW0lfcM5glhwknXP9NxCPYx
 cOWzz/Xa9vX6COEf590AaUxslQ8f/A8HVEYMi28OHw/GRxYfyMPJG11LQ8n/sVVuKQlrl8VawCdgL
 QXN8A3Hwa8vJDWvbfilZ26ZnGYN74RM3Acy88BaiydfhDKzg3cfB4tb1PM/+vFCmjkjE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=c0K7v/+qzXa6X/5SoJBrjLTHmexN/2EiqaBFUfeGomg=; b=Nz9IfzPK/eKqPpaDmU8G/40dUn
 w6XOebiVPY+SFB4ECZdMnANN4BtyMVASR9tFFE/UGp97KWJC6qQGCR+EigIWneQLAa7vCFVLbnIeg
 OGAhkXE0IhK+hXk+7j0xM1FQWhN7SfaVFXLE4uAXYbjS+PfXygv6f9NoSeF7Q6dr0vnY=;
Received: from mout02.posteo.de ([185.67.36.66])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nvNFB-0004rz-P5
 for tboot-devel@lists.sourceforge.net; Sun, 29 May 2022 18:02:28 +0000
Received: from submission (posteo.de [185.67.36.169]) 
 by mout02.posteo.de (Postfix) with ESMTPS id B331024010A
 for <tboot-devel@lists.sourceforge.net>; Sun, 29 May 2022 20:02:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=posteo.net; s=2017;
 t=1653847335; bh=5l64vhM/kPxR6p+UhSxLaNv8auNFWEIdYuIDxOpZhY4=;
 h=Subject:To:Cc:From:Date:From;
 b=lmk1TQC54Squa2oZp6pH2o808t+lEmLvFV/w+a/6b32JdGxXEDNrwrjVN7xskYlBX
 jBi/oT3sQOAkOh9KBgsSKwWHPsbXAoL3oREhzUJHuPeIZtoNuGQJ4j27oYlI7V5gOP
 IfohXPZJdiJzsQwC3Cjh3tuYnkaTYaHg7nHo3uTZvPMDxiO1DuiFqLtH68xR9/D+li
 CwSoZwaZKSMmWhcGmTDfCz7XbEwR2C+BfYgwEDG6xjwTfzpYqyHNTWyuL9W2k6t0/b
 n62G1SUVQk2vw8H9zJr4m4QI3LVOdhLkSqYlT5tq6E+GsBP8DzrnEAraJigR0pMm6h
 Qa++cskFl6IhQ==
Received: from customer (localhost [127.0.0.1])
 by submission (posteo.de) with ESMTPSA id 4LB5wQ1wDmz9rxP;
 Sun, 29 May 2022 20:02:14 +0200 (CEST)
To: "Randzio, Pawel" <pawel.randzio@intel.com>,
 =?UTF-8?B?xYF1a2FzeiBIYXdyecWCa28=?= <lukasz@hawrylko.pl>
References: <4b3349f2-69f2-d6d3-ab66-6178af102333@posteo.net>
 <dcb47ad40ac22b08380312c1c18f322848ccd4d6.camel@hawrylko.pl>
 <6ca692b5-c54d-c57c-03a8-e774a86762c0@posteo.net>
 <3ae8a2cd-9ca3-1feb-4a96-0abc54277b34@posteo.net>
 <9da7e209-01bf-ee90-33cc-d6ed9ef355f9@posteo.net>
 <CY4PR1101MB207005F236983E9353227654EBCA9@CY4PR1101MB2070.namprd11.prod.outlook.com>
 <CY4PR1101MB20706DE48541CC18F90E9F10EBD89@CY4PR1101MB2070.namprd11.prod.outlook.com>
From: Derek Dolney <z23@posteo.net>
Message-ID: <d2485b15-cf64-2f9d-36e2-edff7418dd8a@posteo.net>
Date: Sun, 29 May 2022 18:00:21 +0000
MIME-Version: 1.0
In-Reply-To: <CY4PR1101MB20706DE48541CC18F90E9F10EBD89@CY4PR1101MB2070.namprd11.prod.outlook.com>
Content-Language: en-US
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi, Pawe³, Thanks for your help. I was just starting to think
    the same thing, the code seemed to be trying to put all cpus into WFS. I
   tested your patch on the 5.12 commit that broke and also the latest 5.18 git
    [...] 
 
 Content analysis details:   (-2.5 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
                             medium trust
                             [185.67.36.66 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [185.67.36.66 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1nvNFB-0004rz-P5
Subject: Re: [tboot-devel] suspend problem since kernel 5.15
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
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Errors-To: tboot-devel-bounces@lists.sourceforge.net

Hi, Pawe=B3,

Thanks for your help. I was just starting to think the same thing, the
code seemed to be trying to put all cpus into WFS. I tested your patch
on the 5.12 commit that broke and also the latest 5.18 git kernel and
indeed it works fine. On a quad core I can see 3 cores go into WFS and
then tboot continues take bfs to s3 state. Very good!

Derek

On 5/27/22 9:50 AM, Randzio, Pawel wrote:
> Hi Derek,
> =

> I wish to gladly inform you that I've fixed the bug preventing suspend wi=
th Tboot.
> =

> It was in the piece of code that you've highlighted - the atomic incremen=
t on ap_wfs_count variable need have been moved into the else clause of the=
 following if statement, something like this:
> =

> static int tboot_dying_cpu(unsigned int cpu) {
> 	if (num_online_cpus() =3D=3D 1) {
> 		if (tboot_wait_for_aps(atomic_read(&ap_wfs_count)))
> 			return -EBUSY;
> 	} else
> 	 	atomic_inc(&ap_wfs_count);
> 	return 0;
> }
> =

> Otherwise, when the procedure shutdown all APs, BSP was also counted in a=
s one of them, thus creating a mismatch between what kernel had counted and=
 what TBOOT reported back to it.
> This caused a kernel panic, which froze the machine while putting it into=
 suspend.
> =

> I've sent a version of TBOOT Live Image equipped with this patch of the k=
ernel to our validation teams and I'm awaiting their response after the wee=
kend.
> If I get positive results from their tests I will try and have this patch=
 attached to the official kernel repository and featured in versions 5.19 a=
nd up.
> =

> Kind regards,
> Pawe=B3
> =

> =

> =

> =

> =

> -----Original Message-----
> From: Randzio, Pawel =

> Sent: Friday, May 13, 2022 12:12 PM
> To: 'Derek Dolney' <z23@posteo.net>; =A3ukasz Hawry=B3ko <lukasz@hawrylko=
.pl>
> Cc: tboot-devel@lists.sourceforge.net
> Subject: RE: [tboot-devel] suspend problem since kernel 5.15
> =

> Hi Derek,
> =

> I've also been picking at that issue for the past few months and reached =
the same wall as you have with the -EBUSY callback return, although your me=
ssage kind of gives me a new idea for where to look for the root cause as i=
t seems I have not tracked all possible callbacks.
> I'm not a kernel developer either and honestly debugging that S3 issue is=
 troublesome to me too, to say the least. If anyone on this mailing list ha=
s any idea how to further the debugging or even better - solve this issue, =
please feel free to share ideas.
> =

> On a side note, please add Vincent into the communication, that might spe=
ed up the process.
> Vincent may add others that could know what might be going on with that i=
ssue.
> =

> Thanks,
> Pawe=B3
> =

> -----Original Message-----
> From: Derek Dolney <z23@posteo.net> =

> Sent: Thursday, May 12, 2022 6:20 PM
> To: =A3ukasz Hawry=B3ko <lukasz@hawrylko.pl>; tboot-devel@lists.sourcefor=
ge.net
> Subject: Re: [tboot-devel] suspend problem since kernel 5.15
> =

> I have been working on this as best I can. However, I confess that I am n=
ot a kernel developer and have really no understanding of these tboot inter=
nals. Nevertheless here is a brief update. Please anyone feel free to share=
 any ideas how to move forward to some resolution.
> =

> I got a desktop machine with rs232 serial output running tboot and reprod=
uced the suspend problem that way and with this setup I can collect kernel =
printk and also cpu hotplug (cpuhp) tracing output. I have also thankfully =
got quite a bit of help from Vincent Donnefort who wrote the cpuhp changes =
(the commit I posted) that have exposed the issue. He has been very helpful=
, let me try to tell you what we have figured out.
> =

> On suspend, I get into the tboot callback:
> =

> static int tboot_dying_cpu(unsigned int cpu) {
> 	atomic_inc(&ap_wfs_count);
> 	if (num_online_cpus() =3D=3D 1) {
> 		if (tboot_wait_for_aps(atomic_read(&ap_wfs_count)))
> 			return -EBUSY;
> 	}
> 	return 0;
> }
> =

> but the tboot_wait_for_aps times out for me so the callback returns EBUSY=
. The problem with that happening is that there is not a rollback mechanism=
 in place at this point in the cpuhp sequence. So I mean from cpuhp point o=
f view, there is not even a mechanism to handle the tboot callback failure.=
 Besides that, we don't know what could be a sensible thing to do in the ca=
se of EBUSY. What does it mean tboot is busy and what should be done about =
it? Please help us to understand.
> =

> =

> _______________________________________________
> tboot-devel mailing list
> tboot-devel@lists.sourceforge.net
> https://lists.sourceforge.net/lists/listinfo/tboot-devel
> ---------------------------------------------------------------------
> Intel Technology Poland sp. z o.o.
> ul. Slowackiego 173 | 80-298 Gdansk | Sad Rejonowy Gdansk Polnoc | VII Wy=
dzial Gospodarczy Krajowego Rejestru Sadowego - KRS 101882 | NIP 957-07-52-=
316 | Kapital zakladowy 200.000 PLN.
> Ta wiadomosc wraz z zalacznikami jest przeznaczona dla okreslonego adresa=
ta i moze zawierac informacje poufne. W razie przypadkowego otrzymania tej =
wiadomosci, prosimy o powiadomienie nadawcy oraz trwale jej usuniecie; jaki=
ekolwiek przegladanie lub rozpowszechnianie jest zabronione.
> This e-mail and any attachments may contain confidential material for the=
 sole use of the intended recipient(s). If you are not the intended recipie=
nt, please contact the sender and delete all copies; any review or distribu=
tion by others is strictly prohibited.
> =



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
