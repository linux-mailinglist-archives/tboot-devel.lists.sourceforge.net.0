Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 256701CCAAE
	for <lists+tboot-devel@lfdr.de>; Sun, 10 May 2020 14:12:38 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1jXkop-0005bo-DS; Sun, 10 May 2020 12:12:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <timo.lindfors@iki.fi>) id 1jXkon-0005bg-Tc
 for tboot-devel@lists.sourceforge.net; Sun, 10 May 2020 12:12:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=piM/UeT30GHmbCJETJ7nejCq934hZgwKK/McDWCMH9I=; b=JMYKu01tH4JbwjgwEGOcTsx2eg
 ZOrbRxRUUg9WP7OkSFGMb/q7cjhI7qIuji7VSxHTYnXSmoGkbgDmV+vNlXv8tnVRxEnEI0QMXAX15
 A2tZdiw/hBKbdYZDcoRxViLvt9g+zFmAQ6atmjspGlkxrzMfi7xy136vg7sX+UHQ/Rms=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:To:From:Date:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=piM/UeT30GHmbCJETJ7nejCq934hZgwKK/McDWCMH9I=; b=S
 tWvBvU2Aj9FDwOYs9yDPsSZRFbOtcXnOoghMPEra6EJncougpTpjFGNuG03rRfY77uzG21bSSu5hE
 QpWf7VfVbVsoUaHP/8zAFj0RrL7zayUJJMacUH5w48KssIxu5zHVUxmhF+D74dXswmt59SuR1Ji2G
 rsP1bkuXN+F4bKw0=;
Received: from meesny.iki.fi ([195.140.195.201])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jXkoj-006myH-Tb
 for tboot-devel@lists.sourceforge.net; Sun, 10 May 2020 12:12:29 +0000
Received: from mail.home (82-181-208-90.bb.dnainternet.fi [82.181.208.90])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: timo.lindfors)
 by meesny.iki.fi (Postfix) with ESMTPSA id 364D5202BF
 for <tboot-devel@lists.sourceforge.net>; Sun, 10 May 2020 15:12:14 +0300 (EEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi; s=meesny;
 t=1589112734;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type;
 bh=piM/UeT30GHmbCJETJ7nejCq934hZgwKK/McDWCMH9I=;
 b=BP7yrynaXffxSPxXhsMZLy5CNRC94h1R/B11/2iZKci4e1U9QTzPvRZxVVdyd8sQqcJEFb
 dAUA7UjkwddtJKpVknjdeojUuEzKG1Tr4HGTzbeSK6/1HgFc7W0gD9urRjTBuSHF5tQdq4
 5ewIvxbr/3TcfRnK+mUPDQwU7kpTZTg=
Received: from localhost ([127.0.0.1]) by mail.home with esmtp (Exim 4.89)
 (envelope-from <timo.lindfors@iki.fi>) id 1jXkoR-0001Rr-NY
 for tboot-devel@lists.sourceforge.net; Sun, 10 May 2020 15:12:07 +0300
Date: Sun, 10 May 2020 15:12:07 +0300 (EEST)
From: Timo Lindfors <timo.lindfors@iki.fi>
To: tboot-devel@lists.sourceforge.net
Message-ID: <alpine.DEB.2.20.2005101501330.5531@mail.home>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi;
 s=meesny; t=1589112734;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type;
 bh=piM/UeT30GHmbCJETJ7nejCq934hZgwKK/McDWCMH9I=;
 b=auGf0BgMFlv4ekt28GF2iwSWr7rWZQnAJj9nmy4OoOG3k5m4xSD85ZpDns/UifKXLw3uWu
 JQTVa1bjKw2X0goa6bbUCRDO0s+cSgW7W68TLbbYT5x/pmmgrbrK5u6MP6vXK2JoCIRFoS
 DQRMnbBtkDbnvy7wRPqAGthIcq3jMmo=
ARC-Seal: i=1; s=meesny; d=iki.fi; t=1589112734; a=rsa-sha256; cv=none;
 b=h1tD41GmCDzUaUDuHJSEUKRLUDKeAdCCSuxmeYrILVHxVAlaIwsUhTplciahF3DrKfrHbC
 cEWGaE2MwII0si1HP6iZWTKFw6RQZjoBB4YEFSS8TUIzypT+9kuPNjwGR67hndeZYYlXxU
 J+4b7mlNp801T1ZlLNoyXfvMATJ5m5A=
ARC-Authentication-Results: i=1; ORIGINATING;
 auth=pass smtp.auth=timo.lindfors smtp.mailfrom=timo.lindfors@iki.fi
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1jXkoj-006myH-Tb
Subject: [tboot-devel] packaging for debian,
 some clarifications for licensing?
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: tboot-devel-bounces@lists.sourceforge.net

Hi,

I'm planning to package tboot for Debian. As part of the process I went 
through all the copyright and license notices in tboot-1.9.12.tar.gz.gpg.

Everything looks pretty smooth but I do have two concerns:

1) lcptools/Linux_LCP_Tools_User_Manual.doc has the paragraph

"This document and the software described in it are furnished under 
license and may only be used or copied in accordance with the terms of the 
license."

but it is not at all clear what license this is talking about. Is it the 
BSD-3-clause license used in most other files or something else? Would it 
be possible to clarify this either in this file or in the COPYING file?

2) The COPYING file states

"Files which do not contain any copyright information are assumed to be
copyrighted by Intel Corporation. All other files contain their copyright 
and license at the beginning of the file."

This is a good clarification but this file does not actually explain what 
the license of files without license information is. Is it the 
BSD-3-clause license used in most files? The files without license 
information that I could identify are:

CHANGELOG
Config.mk
COPYING
docs/Makefile
docs/man/acminfo.8
docs/man/lcp_crtpconf.8
docs/man/lcp_crtpol2.8
docs/man/lcp_crtpol.8
docs/man/lcp_crtpolelt.8
docs/man/lcp_crtpollist.8
docs/man/lcp_mlehash.8
docs/man/lcp_readpol.8
docs/man/lcp_writepol.8
docs/man/tb_polgen.8
docs/man/txt-stat.8
docs/policy_v1.txt
docs/policy_v2.txt
docs/txt-info.txt
docs/vlp.txt
.hg_archival.txt
.hgignore
.hgtags
lcp-gen2/asn1spec.py
lcp-gen2/build.py
lcp-gen2/defines.py
lcp-gen2/ElementBase.py
lcp-gen2/ElementGui.py
lcp-gen2/LcpPolicy.py
lcp-gen2/list.py
lcp-gen2/mleLegacy.py
lcp-gen2/mle.py
lcp-gen2/pconfLegacy.py
lcp-gen2/pconf.py
lcp-gen2/pdef.py
lcp-gen2/sbiosLegacy.py
lcp-gen2/sbios.py
lcp-gen2/stm.py
lcp-gen2/tools.py
lcp-gen2/TxtPolicyGen2.py
lcp-gen2/UserGuide.txt
lcp-gen2/util.py
lcptools/Linux_LCP_Tools_User_Manual.doc
lcptools/Linux_LCP_Tools_User_Manual.pdf
lcptools/Makefile
lcptools-v2/lcptools.txt
lcptools-v2/Makefile
Makefile
README
tboot/common/tboot.lds.x
tboot/Config.mk
tboot/Makefile
tb_polgen/Makefile
test-patches/e820-test.patch
test-patches/mtrrs-test.patch
test-patches/tpm-test.patch
test-patches/vsprintf-test.patch
txt-test/Kbuild
txt-test/Makefile
utils/Makefile




Finally, here is the machine-readable copyright information I was able to 
compile from all other files in that release:

Format: https://www.debian.org/doc/packaging-manuals/copyright-format/1.0/
Upstream-Name: tboot
Source: https://sourceforge.net/projects/tboot/

Files:
  include/elf_defns.h
  include/lcp2.h
  include/config.h
  include/lcp_hlp.h
  include/hash.h
  include/mle.h
  include/uuid.h
  include/tb_policy.h
  include/lcp3_hlp.h
  include/lcp3.h
  include/tboot.h
  include/lcp.h
  include/tb_error.h
  lcptools/lcptools.h
  lcptools/lcputils.h
  lcptools/lcptools.c
  lcptools/writepol.c
  lcptools/lcputils.c
  lcptools/relindex.c
  lcptools/lock.c
  lcptools/defindex.c
  lcptools/readpol.c
  lcptools/getcap.c
  lcptools-v2/crtpol.c
  lcptools-v2/mle_elt.c
  lcptools-v2/lcputils.h
  lcptools-v2/polelt.h
  lcptools-v2/poldata.c
  lcptools-v2/pollist2.c
  lcptools-v2/hash.c
  lcptools-v2/lcputils.c
  lcptools-v2/pollist1.c
  lcptools-v2/sbios_elt.c
  lcptools-v2/mlehash.c
  lcptools-v2/custom_elt.c
  lcptools-v2/pol.c
  lcptools-v2/pol.h
  lcptools-v2/stm_elt.c
  lcptools-v2/polelt_plugin.h
  lcptools-v2/pollist1.h
  lcptools-v2/pollist2.h
  lcptools-v2/poldata.h
  lcptools-v2/crtpollist.c
  lcptools-v2/polelt.c
  lcptools-v2/crtpolelt.c
  tboot/txt/acmod.c
  tboot/txt/txt.c
  tboot/txt/heap.c
  tboot/txt/vmcs.c
  tboot/txt/verify.c
  tboot/txt/errors.c
  tboot/txt/mtrrs.c
  tboot/include/txt/txt.h
  tboot/include/txt/config_regs.h
  tboot/include/txt/acmod.h
  tboot/include/txt/errorcode.h
  tboot/include/txt/heap.h
  tboot/include/txt/smx.h
  tboot/include/txt/vmcs.h
  tboot/include/txt/mtrrs.h
  tboot/include/txt/verify.h
  tboot/include/sha1.h
  tboot/include/cmdline.h
  tboot/include/io.h
  tboot/include/msr.h
  tboot/include/page.h
  tboot/include/processor.h
  tboot/include/loader.h
  tboot/include/string.h
  tboot/include/compiler.h
  tboot/include/tpm_20.h
  tboot/include/linux_defns.h
  tboot/include/e820.h
  tboot/include/paging.h
  tboot/include/com.h
  tboot/include/ctype.h
  tboot/include/tpm.h
  tboot/include/mutex.h
  tboot/include/multiboot.h
  tboot/include/integrity.h
  tboot/include/printk.h
  tboot/include/types.h
  tboot/include/misc.h
  tboot/include/efi_memmap.h
  tboot/include/vga.h
  tboot/include/vtd.h
  tboot/common/memcmp.c
  tboot/common/acpi.c
  tboot/common/boot.S
  tboot/common/shutdown.S
  tboot/common/strlen.c
  tboot/common/tpm_20.c
  tboot/common/tboot.c
  tboot/common/vtd.c
  tboot/common/printk.c
  tboot/common/strtoul.c
  tboot/common/wakeup.S
  tboot/common/misc.c
  tboot/common/sha1.c
  tboot/common/linux.c
  tboot/common/hash.c
  tboot/common/strncmp.c
  tboot/common/tpm.c
  tboot/common/loader.c
  tboot/common/strncpy.c
  tboot/common/vsprintf.c
  tboot/common/paging.c
  tboot/common/integrity.c
  tboot/common/mutex.S
  tboot/common/strcmp.c
  tboot/common/cmdline.c
  tboot/common/vga.c
  tboot/common/policy.c
  tboot/common/tb_error.c
  tboot/common/elf.c
  tboot/common/index.c
  tboot/common/efi_memmap.c
  tboot/common/tpm_12.c
  tboot/common/e820.c
  tboot/common/memcpy.c
  tb_polgen/commands.c
  tb_polgen/hash.c
  tb_polgen/param.c
  tb_polgen/tb_polgen.c
  tb_polgen/policy.c
  tb_polgen/tb_polgen.h
  txt-test/txt-test.c
  utils/txt-stat.c
  utils/acminfo.c
  utils/parse_err.c
Copyright:
  1989, 1990, 1991, 1992, 1993 The Regents of the University of California
  1995, 1996, 1997, 1998 WIDE Project.
  2001-2020 Intel Corporation
  2004 Artur Grabowski <art@openbsd.org>
  2016 Real-Time Systems GmbH
  2020 Cisco Systems, Inc. <pmoore2@cisco.com>
  2007, 2011, 2012, 2013, 2014, 2015, 2018 Gang Wei
  2007, 2008, 2009, 2010, 2011 Joseph Cihula
  2019, 2020 Lukasz Hawrylko
  2014, 2015, 2016, 2017, 2018 Ning Sun
  2014 Qiaowei Ren
  2008, 2009, 2010 Shane Wang
License: BSD-3-clause

Files:
  tboot/common/pci_cfgreg.c
  tboot/common/com.c
  tboot/include/atomic.h
  tboot/include/pci_cfgreg.h
  lcptools-v2/pconf2_elt.c
Copyright:
  1997 Stefan Esser <se@freebsd.org>
  1998 Doug Rabson
  1998 Michael Smith <msmith@freebsd.org>
  2000 Michael Smith <msmith@freebsd.org>
  2000 BSDi
  2004 Scott Long <scottl@freebsd.org>
  2010 Intel Corporation
  2020 Cisco Systems, Inc. <pmoore2@cisco.com>
  2007, 2009, 2010 Joseph Cihula
  2010 Shane Wang
  2014, 2018 Gang Wei
  2020 Lukasz Hawrylko
License: BSD-2-clause

Files:
  safestringlib/*
Copyright:
  2008 Bo Berry
  2005-2013 by Cisco Systems, Inc.
  2012 Jonathan Toppins <jtoppins@users.sourceforge.net>
  2014-2016 Intel Corporation.
  2018 Gang Wei
License: Expat

Files:
  tboot/include/sha2.h
  tboot/common/sha256.c
  tboot/common/sha384.c
  tboot/common/sha512.c
Copyright:
  2000 Tom St Denis
License: public-domain

Files:
  tboot/common/vmac.c
  tboot/include/vmac.h
Copyright:
  2008 Ted Krovetz <tdk@acm.org>
  2008 Wei Dai
  2010 Intel Corporation.
  2009 Joseph Cihula
  2010 Shane Wang
License: public-domain

Files:
  tboot/include/rijndael.h
  tboot/common/rijndael.c
Copyright:
  2000 Vincent Rijmen <vincent.rijmen@esat.kuleuven.ac.be>
  2000 Antoon Bosselaers <antoon.bosselaers@esat.kuleuven.ac.be>
  2000 Paulo Barreto <paulo.barreto@terra.com.br>
  2009 Joseph Cihula
License: public-domain
  EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

Files:
  tboot/20_linux_tboot
  tboot/20_linux_xen_tboot
Copyright:
  2006, 2007, 2008, 2009, 2010 Free Software Foundation, Inc.
  2012, 2013, 2014, 2018 Gang Wei
  2019, 2020 Lukasz Hawrylko
  2015, 2016, 2017 Ning Sun
License: GPL-3+

Files:
  tboot/include/lz.h
  tboot/common/lz.c
Copyright:
  2003-2010 Marcus Geelnard
  2015, 2016 Ning Sun
License: Zlib

Files:
  tboot/include/acpi.h
Copyright:
  2005 Thorsten Lockert <tholo@sigmasoft.com>
  2005 Marco Peereboom <marco@openbsd.org>
  2010 Intel Corporation
  2014 Gang Wei
  2007, 2008, 2009, 2010 Joseph Cihula
  2019 Lukasz Hawrylko
  2016, 2017 Ning Sun
  2008 Shane Wang
License: ISC



-Timo



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
