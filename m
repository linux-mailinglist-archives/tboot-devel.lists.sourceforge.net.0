Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
Delivered-To: lists+tboot-devel@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gN5INSVac2nruwAAu9opvQ
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	for <lists+tboot-devel@lfdr.de>; Fri, 23 Jan 2026 12:23:17 +0100
X-Original-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 15FF474F4C
	for <lists+tboot-devel@lfdr.de>; Fri, 23 Jan 2026 12:23:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:
	Message-ID:To:From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=nFErx72pjoGpuRMTqYI6gfSn7iQv2S+DZNIxW2m/T1k=; b=S8CibQ7JHlivtrep64eKKRIe8f
	xWGlVoNu/6W7FCD1TGj9x/d1o5jbvMRSq0IgcaqSoWoWcGsnbpIkbqJ6hNWUqHjg2l7S/h7UzAUfi
	DQaOXCAeEak+O00kUjjV+BfkPvTyVmEINFIW7iaAI/A04dXynT3xbCX9Z94vPHat6A/g=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1vjFFk-0008Di-F3;
	Fri, 23 Jan 2026 11:23:00 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mgerstner@suse.de>) id 1vjFFj-0008Dc-9M
 for tboot-devel@lists.sourceforge.net;
 Fri, 23 Jan 2026 11:22:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hwCWGsR7uA9afdiI8MS+9liXCKqkSVeRaKxJ6fbIZiA=; b=b93ekLv0/TE3Ai3n6Bamyo7BQ9
 Jf/cQJJl6gN34q/HEnslYrzGzknUN/lwZL8G+wvabwvk8O7oamxaJ2ug4munf+Nt6HCYwnjVI4u7r
 81t2MMfpq+rP3QLEahnZXNFGo+gPXKr/gLATJlyGH1z8lNUkjFqVw43jIlegJSYsiVw0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:To:From:Date:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=hwCWGsR7uA9afdiI8MS+9liXCKqkSVeRaKxJ6fbIZiA=; b=L
 tFGm+HpInqh9Oc5n/G1qUlC3Qh49VFhMKgYSKWXHlgy+b1+QciXOvI0Y6QFIbNJIKUhUFL8IJbDpI
 zwvb3Bf8D4ZqsQ8YsLFdmA4zlMnAxCKYqN8yL8vJWfeGTYZ4rBTjsGqe5nUyE72Wgc1UQi+9xBr+l
 Igl3F2scnfN7U5ss=;
Received: from smtp-out1.suse.de ([195.135.223.130])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vjFFi-0006sR-6I for tboot-devel@lists.sourceforge.net;
 Fri, 23 Jan 2026 11:22:59 +0000
Received: from imap1.dmz-prg2.suse.org (imap1.dmz-prg2.suse.org
 [IPv6:2a07:de40:b281:104:10:150:64:97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out1.suse.de (Postfix) with ESMTPS id 683D1337B2
 for <tboot-devel@lists.sourceforge.net>; Fri, 23 Jan 2026 11:07:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1769166471; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
 mime-version:mime-version:content-type:content-type;
 bh=hwCWGsR7uA9afdiI8MS+9liXCKqkSVeRaKxJ6fbIZiA=;
 b=1vHmqd8Em8Llg3Gm5LzIGUyczhGzA5VSLCTgPpUe+2gQUr6GDyjy7L+JZrBShTIi/JmfL3
 BDDFRlI9jnknYSqEbUs+z2SJi6DV82LLI9W7i+0QVbS5/CHqyjcsKhyfZ/QN5pdISYBvWw
 LPWToc8pGjxTtx4lG8moszxetPr1B7A=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1769166471;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
 mime-version:mime-version:content-type:content-type;
 bh=hwCWGsR7uA9afdiI8MS+9liXCKqkSVeRaKxJ6fbIZiA=;
 b=gyIFvH4qis1E8E4+rOYgxoKjQ4U4wazR0L06ML99n8HI7P16U7ZVm9tGlY4UPBonlsQFY5
 /HUpJ49Ml8mawqDw==
Authentication-Results: smtp-out1.suse.de;
 dkim=pass header.d=suse.de header.s=susede2_rsa header.b=1vHmqd8E;
 dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b=gyIFvH4q
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1769166471; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
 mime-version:mime-version:content-type:content-type;
 bh=hwCWGsR7uA9afdiI8MS+9liXCKqkSVeRaKxJ6fbIZiA=;
 b=1vHmqd8Em8Llg3Gm5LzIGUyczhGzA5VSLCTgPpUe+2gQUr6GDyjy7L+JZrBShTIi/JmfL3
 BDDFRlI9jnknYSqEbUs+z2SJi6DV82LLI9W7i+0QVbS5/CHqyjcsKhyfZ/QN5pdISYBvWw
 LPWToc8pGjxTtx4lG8moszxetPr1B7A=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1769166471;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
 mime-version:mime-version:content-type:content-type;
 bh=hwCWGsR7uA9afdiI8MS+9liXCKqkSVeRaKxJ6fbIZiA=;
 b=gyIFvH4qis1E8E4+rOYgxoKjQ4U4wazR0L06ML99n8HI7P16U7ZVm9tGlY4UPBonlsQFY5
 /HUpJ49Ml8mawqDw==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 54C501395E
 for <tboot-devel@lists.sourceforge.net>; Fri, 23 Jan 2026 11:07:51 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
 by imap1.dmz-prg2.suse.org with ESMTPSA id OyiqFIdWc2kNXQAAD6G6ig
 (envelope-from <mgerstner@suse.de>)
 for <tboot-devel@lists.sourceforge.net>; Fri, 23 Jan 2026 11:07:51 +0000
Date: Fri, 23 Jan 2026 12:07:51 +0100
From: Matthias Gerstner <mgerstner@suse.de>
To: tboot-devel@lists.sourceforge.net
Message-ID: <aXNWh0OHTdtfvzFj@kasco.suse.de>
MIME-Version: 1.0
X-Spam-Score: -6.61
X-Spam-Level: 
X-Spam-Flag: NO
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello list, although it seems there is no longer an active
 upstream for tboot, here is a patch for a compiler error/warning in tboot
 which occurs with gcc-16. Maybe at least other users of tboot can make use
 of i [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
X-Headers-End: 1vjFFi-0006sR-6I
Subject: [tboot-devel] =?utf-8?q?=5BPatch=5D_gcc-16_compile_error_in_strpb?=
 =?utf-8?b?cmtfcygpOiB2YXJpYWJsZSDigJhsZW7igJkgc2V0IGJ1dCBub3QgdXNlZA==?=
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
Content-Type: multipart/mixed; boundary="===============6720444284226974151=="
Errors-To: tboot-devel-bounces@lists.sourceforge.net
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.11 / 15.00];
	SIGNED_PGP(-2.00)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	MIME_GOOD(-0.20)[multipart/mixed,multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[suse.de : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	HAS_ATTACHMENT(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:+,4:+,5:~,6:+,7:+];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,suse.de:-];
	DKIM_MIXED(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mgerstner@suse.de,tboot-devel-bounces@lists.sourceforge.net];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	PREVIOUSLY_DELIVERED(0.00)[tboot-devel@lists.sourceforge.net];
	NEURAL_HAM(-0.00)[-0.998];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[tboot-devel];
	DBL_BLOCKED_OPENRESOLVER(0.00)[suse.com:url,kasco.suse.de:mid]
X-Rspamd-Queue-Id: 15FF474F4C
X-Rspamd-Action: no action


--===============6720444284226974151==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ifPqmqGl8vKwqJgX"
Content-Disposition: inline


--ifPqmqGl8vKwqJgX
Content-Type: multipart/mixed; protected-headers=v1;
	boundary="RCjB2KHIk6zHkjA2"
Content-Disposition: inline
Date: Fri, 23 Jan 2026 12:07:51 +0100
From: Matthias Gerstner <mgerstner@suse.de>
To: tboot-devel@lists.sourceforge.net
Subject: [Patch] gcc-16 compile error =?utf-8?Q?in_?=
 =?utf-8?B?c3RycGJya19zKCk6IHZhcmlhYmxlIOKAmGxlbuKAmQ==?= set but not used


--RCjB2KHIk6zHkjA2
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello list,

although it seems there is no longer an active upstream for tboot, here
is a patch for a compiler error/warning in tboot which occurs with
gcc-16. Maybe at least other users of tboot can make use of it.

The diagnostic is as follows:

    safeclib/strpbrk_s.c: In function =E2=80=98strpbrk_s=E2=80=99:
    safeclib/strpbrk_s.c:95:13: error: variable =E2=80=98len=E2=80=99 set b=
ut not used [-Werror=3Dunused-but-set-variable=3D]
        95 |     rsize_t len;
           |             ^~~
    cc1: all warnings being treated as errors

It seems that this function does not take the `slen` parameter into
account at all, thereby not providing the safety guarantees that the
function's signature suggests. My take on fixing the issue is found in
the attached patch. Hopefully this doesn't cause any regressions in
spots where this shortcoming has masked errors before.

Cheers

Matthias

--=20
Matthias Gerstner <matthias.gerstner@suse.de>
Security Engineer
https://www.suse.com/security
GPG Key ID: 0x14C405C971923553
=20
SUSE Software Solutions Germany GmbH
HRB 36809, AG N=C3=BCrnberg
Gesch=C3=A4ftsf=C3=BChrer: Jochen Jaser, Andrew McDonald, Werner Knoblich

--RCjB2KHIk6zHkjA2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename=gcc16-compat.patch
Content-Transfer-Encoding: quoted-printable

Index: tboot-1.11.10/safestringlib/safeclib/strpbrk_s.c
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
--- tboot-1.11.10.orig/safestringlib/safeclib/strpbrk_s.c
+++ tboot-1.11.10/safestringlib/safeclib/strpbrk_s.c
@@ -92,7 +92,6 @@ strpbrk_s (char *dest, rsize_t dmax,
            char *src,  rsize_t slen, char **first)
 {
     char *ps;
-    rsize_t len;
=20
     if (first =3D=3D NULL) {
         invoke_safe_str_constraint_handler("strpbrk_s: count is null",
@@ -140,11 +139,10 @@ strpbrk_s (char *dest, rsize_t dmax,
     /*
      * look for a matching char in the substring src
      */
-    while (*dest && dmax) {
+    while (*dest && dmax && slen) {
=20
         ps =3D src;
-        len =3D slen;
-        while (*ps) {
+        while (*ps && slen) {
=20
             /* check for a match with the substring */
             if (*dest =3D=3D *ps) {
@@ -152,7 +150,7 @@ strpbrk_s (char *dest, rsize_t dmax,
                 return RCNEGATE(EOK);
             }
             ps++;
-            len--;
+	    slen--;
         }
         dest++;
         dmax--;

--RCjB2KHIk6zHkjA2--

--ifPqmqGl8vKwqJgX
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iQJPBAABCAA5FiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAmlzVocbFIAAAAAABAAO
bWFudTIsMi41KzEuMTEsMiwyAAoJEBTEBclxkjVTbBAP/1FM2gJqa5pv/dv9c9TY
2a87NXq5OT6Eo9Phtk6bH1HAScICuu1ldwELo1oZNua6NpfQmPcJsXWehB2dGXWY
E4JgMeqoTLvg7YBk8CDg8hUfqwazDZwDd7s0NQkV03toct0z0iG60NSK7CR+dBsY
75N3sva4j2Lqhv1XdxgPc3MGNyvt5zlo600+jbXyJKieVBG9jVl3pqLmXxtyRSSc
OSaEGnaL3maNCSo2K3OfNSJpBkj0gxBIsE1tXo64ckNj4LwNPMyoSyhmYsMWW3sr
M/qIF0QPNNnAkbRZbgK8gc0BeNzsY6gedlmuVZNagREw5FYPgLma9k3ZNA9Qo3nc
2uc9px8RdHPI1WWiafo6yypNoWytixrIQEIqhuP9PufqqdoOJDbCw9bAqtDDw8S1
pNnVf4iUKn180cRm910qEs6DkM1TixnpQ5HCWFFe537CS1vL/C7RHFwjSkSRwZXK
/MTiAAanyIdP3cgXXbrZBkek5CviY7qwK2ZkIVGv+QMjYayBYV8qqdMqyoLz2C5f
L5YvjTN4a09z5usbG4W4HvYtfgRBbay0lHQFWZSeRh8PoLiZOvKhWddJbozfztfp
iymj/rtzQ8bRHZycaWlXInZ5bzRwK+/Ff83nS048wytbQOPBrgJkLPUulnC5PF5D
fNV9X6ZoH7T0jGZnK3Fxw4B6
=A3vz
-----END PGP SIGNATURE-----

--ifPqmqGl8vKwqJgX--


--===============6720444284226974151==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============6720444284226974151==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel

--===============6720444284226974151==--

