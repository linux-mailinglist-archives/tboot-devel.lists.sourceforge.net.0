Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 29AD8717A58
	for <lists+tboot-devel@lfdr.de>; Wed, 31 May 2023 10:41:09 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1q4HO5-0001Oe-3S;
	Wed, 31 May 2023 08:40:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mgerstner@suse.de>) id 1q4HO0-0001N0-Vq
 for tboot-devel@lists.sourceforge.net;
 Wed, 31 May 2023 08:40:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=G41FRjflWxbOhjLdcudSOgVcSXfmsucrdRKFpHLm34I=; b=fgctxEAjVt4/nnLjEFy6ToTnwI
 N7FerTnEpK3+E8GEHusnQsWyEuxGPP91GxX222hxarEqaZSo+5bFyFv4E7+z8wBJY4a1zfh7N7bOu
 o6UeVAwLkalNMbeWEpUcO/bqDesqSK0D6HwknczwrOj7JEK1BRIiyVeCpgTAs6/r4z4U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:To:From:Date:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=G41FRjflWxbOhjLdcudSOgVcSXfmsucrdRKFpHLm34I=; b=e
 WN9YrOetNnnGmsp6Kl+Q3AgzBMU82KjqHgpvquLVtA1M5FoA8lKIkowf1AqnKaklPpnIBbL5At5yJ
 LyypotjPiHBp/OR1iluOJ3z9tmbSsJfpiGjZwQRTFttK7ZsJ1/oA4jYwpSzcwL6WxN9EvQEdKySaW
 1Nxl3ITyhBY53P7A=;
Received: from smtp-out1.suse.de ([195.135.220.28])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1q4HO0-00006i-7w for tboot-devel@lists.sourceforge.net;
 Wed, 31 May 2023 08:40:52 +0000
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by smtp-out1.suse.de (Postfix) with ESMTPS id B008C218EA
 for <tboot-devel@lists.sourceforge.net>; Wed, 31 May 2023 08:40:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1685522442; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
 mime-version:mime-version:content-type:content-type;
 bh=G41FRjflWxbOhjLdcudSOgVcSXfmsucrdRKFpHLm34I=;
 b=D3ADuz96yjJ9G0vswSnREn2OxPrafHQXX5HPM8E/HwOv94WArk0Uu6bKMCI+QD6CLG5VId
 mvl4wR++BBoOkaRHki2UtEf5OyUrAKL85egwk/SMo8D5ercne3uSmXUPKd+pYieQg9d4jT
 /+ts+IvNXFkCKGn4MXGy0sGyL+sSHNA=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1685522442;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
 mime-version:mime-version:content-type:content-type;
 bh=G41FRjflWxbOhjLdcudSOgVcSXfmsucrdRKFpHLm34I=;
 b=uFB6y1uN7EOKdRI22S5OejvF9CNtfvuFK72ENbgVnCl64J8eZkL5rY17rRF8sjQ1tt7JOQ
 WMnml6bqBvhyGtAQ==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id A78A013488
 for <tboot-devel@lists.sourceforge.net>; Wed, 31 May 2023 08:40:42 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
 by imap2.suse-dmz.suse.de with ESMTPSA id 9ZfdKAoId2TIZAAAMHmgww
 (envelope-from <mgerstner@suse.de>)
 for <tboot-devel@lists.sourceforge.net>; Wed, 31 May 2023 08:40:42 +0000
Date: Wed, 31 May 2023 10:40:41 +0200
From: Matthias Gerstner <mgerstner@suse.de>
To: tboot-devel@lists.sourceforge.net
Message-ID: <ZHcICboOAuvLlT7V@kasco.suse.de>
MIME-Version: 1.0
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello list, a customer is experiencing a regression using
 tboot in some new hardware/boot environment. Their boot gets stuck in the
 call to move_modules(), producing the following log: TBOOT: no LCP module
 found TBOOT: This is an ELF32 file. TBOOT: kernel is ELF format TBOOT:
 0x6ff000
 bytes copied from 0x101000 to 0x364f000 TBOOT: loader context was moved from
 0x100130 to 0x364e130 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.28 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1q4HO0-00006i-7w
Subject: [tboot-devel] Likely bug in move_modules() causing broken boot if
 MBI is below tboot's memory
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
Content-Type: multipart/mixed; boundary="===============7240390386942508413=="
Errors-To: tboot-devel-bounces@lists.sourceforge.net


--===============7240390386942508413==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="iXhnTPjuf1+OBi1q"
Content-Disposition: inline


--iXhnTPjuf1+OBi1q
Content-Type: multipart/mixed; protected-headers=v1;
	boundary="JFk9Py6TEnlgqoP9"
Content-Disposition: inline
Date: Wed, 31 May 2023 10:40:41 +0200
From: Matthias Gerstner <mgerstner@suse.de>
To: tboot-devel@lists.sourceforge.net
Subject: Likely bug in move_modules() causing broken boot if MBI is below
 tboot's memory


--JFk9Py6TEnlgqoP9
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello list,

a customer is experiencing a regression using tboot in some new
hardware/boot environment. Their boot gets stuck in the call to
move_modules(), producing the following log:

    TBOOT: no LCP module found
    TBOOT: This is an ELF32 file.
    TBOOT: kernel is ELF format
    TBOOT: 0x6ff000 bytes copied from 0x101000 to 0x364f000
    TBOOT: loader context was moved from 0x100130 to 0x364e130

The next logline that should occur "move modules to high memory" never
shows up. An engineer on the customer side identified the likely cause
of this; quote:

> Looks like this is a bug in tboot... in move_modules(), it tries to copy =
the MBI
> and any modules that are loaded below tboot to memory above tboot--but du=
e to
> faulty logic in an if/then, it is not copying the MBI if its address is b=
elow
> tboot & below the lowest module's address.
>
> You can see that with the tboot messages:
>
> TBOOT: 0x6ff000 bytes copied from 0x101000 to 0x3586000
> TBOOT: loader context was moved from 0x100130 to 0x3585130
>
> The loader context (MBI) was not moved, so when it tries to access it at =
the new
> location, it may see no modules, or it may get bad info, just depending o=
n what
> happens to me in that memory.
>
> The latest upstream code appears to have this bug, also.

I have attached the suggested patch to this email.

Can you please review the patch and apply it to the repository if the
analysis is correct?

Thanks

Matthias

--=20
Matthias Gerstner <matthias.gerstner@suse.de>
Security Engineer
https://www.suse.com/security
GPG Key ID: 0x14C405C971923553
=20
SUSE Software Solutions Germany GmbH
HRB 36809, AG N=FCrnberg
Gesch=E4ftsf=FChrer: Ivo Totev, Andrew Myers, Andrew McDonald, Boudien Moer=
man

--JFk9Py6TEnlgqoP9
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="tboot_copy_mbi.patch"
Content-Transfer-Encoding: quoted-printable

--- tboot/common/loader.c.orig	2023-05-31 01:49:45.935321582 -0500
+++ tboot/common/loader.c	2023-05-31 01:57:27.914405762 -0500
@@ -1099,11 +1099,17 @@ move_modules(loader_ctx *lctx)
=20
     if ( below_tboot(lowest) )
         from =3D lowest;
-    else
-        if ( below_tboot((unsigned long)lctx->addr) )
+
+    /*
+     * if MBI is below tboot & the lowest module, make sure it gets
+     * copied, too!
+     */
+    if ( below_tboot((unsigned long)lctx->addr) &&=20
+	 (unsigned long)lctx->addr < lowest )
             from =3D (unsigned long)lctx->addr;
-        else
-            return;
+
+    if (from =3D=3D 0)
+	    return;
=20
     unsigned long highest =3D get_highest_mod_end(lctx);
     unsigned long to =3D PAGE_UP(highest);

--JFk9Py6TEnlgqoP9--

--iXhnTPjuf1+OBi1q
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAmR3CAkACgkQFMQFyXGS
NVOZYRAAn7rZMhNlPHmsqH4px+3RDGfhaF5amu50PkyUEJYy/Dat2Kf8UICU6Z+O
yHk398eIFJihTy+fCI4iy3EUNDOwf6NHgrC+z7Pg7z5Sia4I15Vjg00E9JJpVp2D
w76CjxARvMtJEUktKOj+b18duDbvFfZ2608rLg7LKaoVRgNzRm50KHS0EWi/SSn2
AaOX0eZPf7scGh1AYN0YbyeakEaJEZwUf/sfdbfMuJZbsVsEL1rrYgavhxxy76C2
7sVCZBhmMYZZtHbAJuWvqao77WER9xaWRktVe86OKmAeJqiyGg6Y/RR3cHRnf6dO
GHvs4XXEV6BBMxN36lmNtaDMjW5u54DhIhyvQ/8SHtGoYGz4Ms4UtLZc7Vbg2gAy
V4KC7bkMTpDdMBBoflj31xhowMRnSAf1aDJAzMmxUadDFX1wKWooT9YGFLOPwvyA
pULyHoTZ0fdILdkbGqW/vOKZg92AQpIFoohlNjNy8ZGojw6sh5y4eXdx3H8rmDRy
LjNnZjromFeSIspvTK294YzGN9D9l3p6CApIQpfLaJPIuJN7lu5amBzVdVKWpP5c
Thv35d1KrD0LbQ0L9XrH2nmW3z/K4OO+0/TaE7HacM2MQBhHuSEhZD8Xez8recek
818gEtjJGdnsgu1qee5H9VHKejvvWjazLdxXj9M2xO2346SImO4=
=gjDO
-----END PGP SIGNATURE-----

--iXhnTPjuf1+OBi1q--


--===============7240390386942508413==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============7240390386942508413==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel

--===============7240390386942508413==--

