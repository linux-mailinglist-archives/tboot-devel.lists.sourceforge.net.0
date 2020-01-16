Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A829213D23A
	for <lists+tboot-devel@lfdr.de>; Thu, 16 Jan 2020 03:36:49 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1irv1Y-0007ag-7I; Thu, 16 Jan 2020 02:36:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <christopher.w.clark@gmail.com>) id 1irv1W-0007aZ-Pj
 for tboot-devel@lists.sourceforge.net; Thu, 16 Jan 2020 02:36:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jyN0M/wmeAZ4+TveRXSAEhUxNQD+2aaP2m7dMH4d178=; b=PmJr5QFOSTint2JJUTnoglTSkg
 T43enCpH/EdrAD6yWIG8m5HgQc0363yK9HF2fzMxi88UyXL4oi2agh7v8Mz/JPjOwNw3pKlgAAtzQ
 N82YNcy+lc45AzScpsOPzaMG0ME2E4K6cL5hyqUYTIaQM2050dY7qBXg41GtSuwBvmkU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=jyN0M/wmeAZ4+TveRXSAEhUxNQD+2aaP2m7dMH4d178=; b=C
 tnAPlW5XxK6VPh+NjtPaaMDIX2p/I4BEp6yvw69KngSPBHIXKJm8oRlJBrsbrml+UAOWQiTfaavk3
 b9lqOVCTXNCE1y1nLItZxuMHzXOwT719lRWmzJvBcXqg1AgoHcQ6VuYEGdDS5N/OeE4sk4N5AG02u
 rJP4KngEUWOFkSTg=;
Received: from mail-lf1-f49.google.com ([209.85.167.49])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1irv1S-008VQM-DR
 for tboot-devel@lists.sourceforge.net; Thu, 16 Jan 2020 02:36:42 +0000
Received: by mail-lf1-f49.google.com with SMTP id n12so14346794lfe.3
 for <tboot-devel@lists.sourceforge.net>; Wed, 15 Jan 2020 18:36:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=jyN0M/wmeAZ4+TveRXSAEhUxNQD+2aaP2m7dMH4d178=;
 b=obwXg7m10OUWeqmGeL+avRdnga6hcpwm4f6BhPLAtudwDCd8RzOO4FANiWXqpNaOII
 uEJ6xgTCfajKOMJlPHb3N6ng+eAdQfMMM9CFhV0gcu8+Ls2eCb4k8stNZrEvcXdk/SBJ
 Egh6p7Yjf9CBKUGkAF2D/sJTGtiG54ndevrPd8xoCNJAxfRWTOQw9DgWlfa02cGR/Ste
 5qhjavAcJh/AmKSjL+MFnVfDq48aXamFB+zlNHZIPKGw251ln4pcsDH4zkB6NNpwuO31
 uzrVTUaCiaZckpNQIoye0DsWi3Y2jt9BuJUHInT1lmYv8Wyvy1XQR7yACC212ScGTM/A
 gTTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=jyN0M/wmeAZ4+TveRXSAEhUxNQD+2aaP2m7dMH4d178=;
 b=ku/vuynbDZpDjDF/Nk8brs1Te354hZOTRTwcCoY00SQWv2MBcaH5YMyi1x7b66iNqM
 VbU4IN/kQ9baTERJaIDzZFBrDI3h4QS154KtMe5Xit4A4grjUBICvz3PahDcGLbB+jzL
 OImrGEE8MkAcKBHKPF/NKl9GsEx6Ody0k/jXHhGxvlpeb0tkYfLxhD3wcu3/wXTBzqVt
 62+4P2DXU5fN/5DjeYqkbc6moPVREbvreQQn0leArCu91aD4ZUHcIRT0r845iLrg20c3
 SDHHp6jOKppOLuwnZsuTfHIu2SzN6I+LK1SDUgAMQoEhCMcGrWQo7bsTUbumrEHUFDi+
 OLcw==
X-Gm-Message-State: APjAAAUrWQ8T5YRQJ+HfRLL/zLX4/aIt+4piqtjVUtvVN22kX5w0obM8
 S1pnG8evhUAcgkzJpAQ2ye90BX3JVp5vt2tEDI0rqBHm
X-Google-Smtp-Source: APXvYqyEOBXt7QSiSrHTFDMiSXQBAYSdIxNsjZKreIq/UWiZb0uA7l/EK7TuPbGP3lpd1PxrsEcMysWlslveDwa1WOA=
X-Received: by 2002:ac2:4436:: with SMTP id w22mr1020754lfl.185.1579142190919; 
 Wed, 15 Jan 2020 18:36:30 -0800 (PST)
MIME-Version: 1.0
From: Christopher Clark <christopher.w.clark@gmail.com>
Date: Wed, 15 Jan 2020 18:36:19 -0800
Message-ID: <CACMJ4GZ9oGRG3kBhhDJZ_o=mJKfjA4MR5DoXz3RUQS3mk1W4gQ@mail.gmail.com>
To: tboot-devel@lists.sourceforge.net
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (christopher.w.clark[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.49 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: cr0.ne]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1irv1S-008VQM-DR
Subject: [tboot-devel] tboot, TPM 2.0 on Dell PowerEdge R730
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

Hello

I am trying to boot with tboot and TPM 2.0 on a Dell PowerEdge R730
and encountering reboot at SENTER every time with the following:

TBOOT: TXT.ERRORCODE: 0xc0033451
TBOOT: AC module error : acm_type=0x1, progress=0x05, error=0xd

which SINIT_Errors-Broadwell-4th-gen.pdf indicates is: Invalid PMR configuration

I am having difficulty determining how the PMR values could be incorrect
and so fail the SINIT validation, what values would be accepted, whether
something critical is outside the ranges, or unwanted within them, or indeed if
something else is incorrect.

Can TXT + TPM 2.0 + tboot boot on this system?
Is there some prior TPM configuration (beyond clearing it) necessary
to enable boot?

Advice appreciated, and system details are below.
thanks,

Christopher

tboot command line: min_ram=0x2000000 loglvl=all
serial=115200,8n1,0x3f8 logging=serial,memory

From the log:
TBOOT: original e820 map:
TBOOT:  0000000000000000 - 000000000009c000  (1)
TBOOT:  000000000009c000 - 00000000000a0000  (2)
TBOOT:  00000000000e0000 - 0000000000100000  (2)
TBOOT:  0000000000100000 - 000000007a289000  (1)
TBOOT:  000000007a289000 - 000000007af0b000  (2)
TBOOT:  000000007af0b000 - 000000007b93b000  (4)
TBOOT:  000000007b93b000 - 000000007bab4000  (3)
TBOOT:  000000007bab4000 - 000000007bae9000  (1)
TBOOT:  000000007bae9000 - 000000007baff000  (3)
TBOOT:  000000007baff000 - 000000007bb00000  (1)
TBOOT:  000000007bb00000 - 0000000090000000  (2)
TBOOT:  00000000feda8000 - 00000000fedac000  (2)
TBOOT:  00000000ff310000 - 0000000100000000  (2)
TBOOT:  0000000100000000 - 0000004080000000  (1)
...
TBOOT: no LCP module found
TBOOT: INTEL TXT LOG elt SIZE = 36
TBOOT: os_sinit_data (@0x7bf35154, 0x90):
TBOOT:   version: 7
TBOOT:   flags: 1
TBOOT:   mle_ptab: 0x801000
TBOOT:   mle_size: 0x38000 (229376)
TBOOT:   mle_hdr_base: 0x1b600
TBOOT:   vtd_pmr_lo_base: 0x0
TBOOT:   vtd_pmr_lo_size: 0x7a200000
TBOOT:   vtd_pmr_hi_base: 0x100000000
TBOOT:   vtd_pmr_hi_size: 0x3f80000000
TBOOT:   lcp_po_base: 0x0
TBOOT:   lcp_po_size: 0x0 (0)
TBOOT:   capabilities: 0x00000001
TBOOT:       rlp_wake_getsec: 1
TBOOT:       rlp_wake_monitor: 0
TBOOT:       ecx_pgtbl: 0
TBOOT:       stm: 0
TBOOT:       pcr_map_no_legacy: 0
TBOOT:       pcr_map_da: 0
TBOOT:       platform_type: 0
TBOOT:       max_phy_addr: 0
TBOOT:       tcg_event_log_format: 0
TBOOT:   efi_rsdt_ptr: 0x0
TBOOT:   ext_data_elts[]:
TBOOT:           EVENT_LOG_PTR:
TBOOT:                 size: 36
TBOOT:                count: 1
TBOOT:                   Log Descrption:
TBOOT:                               Alg: 4
TBOOT:                              Size: 4096
TBOOT:                      EventsOffset: [0,0]
TBOOT:                                No Event Log.
TBOOT: setting MTRRs for acmod: base=0x7bf00000, size=0x20000, num_pages=32
TBOOT: The maximum allowed MTRR range size=256 Pages
TBOOT: executing GETSEC[SENTER]...

== BIOS error message after reboot
"UEFI0046: An issue is observed in the previous invocation of TXT SINIT
Authenticated Code Module (ACM) because the TXT information stored in the TPM
chip may be corrupted.
Do one of the following: 1) Update the BIOS firmware. 2) Go to System Setup >
System Security page, click the "Clear" option under TPM command. Restart the
system, go to System Setup > System Security page, click the "Activate" option
under TPM command, and then enable TXT."

nb: Boot mode is BIOS, despite the UEFI label in the message.
Following the above and clearing the TPM removes the BIOS warning at boot,
but does not enable tboot to boot correctly when attempted.

== Software

tboot 1.9.11; also tested with 1.9.5, 1.9.6 and 1.9.9 from OpenXT 7.0,
OpenXT 8.0 and current development builds, with and without min_ram values.
All versions report the same errorcode.

I modified tboot to enable configuration of max_lo_ram at the command line, and
so vary vtd_pmr_lo_size, and then tested with a range of values, to no success.
I tested a reduced max_hi_ram, and so lowered vtd_pmr_hi_size to 16GB
to test that.

I have also ported Linux's Intel IOMMU reset PMR logic into tboot, to clear the
PMR in case anything prior to tboot on the system were configuring it, which
also did not change the symptoms.

Tested with both GRUB and isolinux.

== Platform, firmware
Hardware: Dell PowerEdge R730
Chipset: Intel C610
BIOS: 2.11.0 (released 20th Dec 2019)
BIOS SINIT: v3.1.3_20190718
TPM: 2.0 NTC
TPM firmware: 1.3.0.1
Boot mode: BIOS (ie. not UEFI)

All firmware on the host is up to date.
Dell has released a TPM Update utility for some platforms
(Latitude/OptiPlex/Precision/XPS series) to upgrade their TPM firmware
to 1.3.2.8, A02; but that tool will not run on this host (tested with
each of Windows Server 2012 R2, Windows Server 2016 and Windows 10).

== Full tboot log

TBOOT: *********************** TBOOT ***********************
TBOOT:    2019-11-25 16:00 +0200 1.9.11
TBOOT: *****************************************************
TBOOT: command line: min_ram=0x2000000 loglvl=all
serial=115200,8n1,0x3f8 logging=serial,memory
TBOOT: IA32_FEATURE_CONTROL_MSR: 0000ff07
TBOOT: CPU is SMX-capable
TBOOT: CPU is VMX-capable
TBOOT: SMX is enabled
TBOOT: TXT chipset and all needed capabilities present
TBOOT: IA32_FEATURE_CONTROL_MSR: 0000ff07
TBOOT: CPU is SMX-capable
TBOOT: CPU is VMX-capable
TBOOT: SMX is enabled
TBOOT: TXT chipset and all needed capabilities present
TBOOT: BSP is cpu 0
TBOOT: original e820 map:
TBOOT:  0000000000000000 - 000000000009c000  (1)
TBOOT:  000000000009c000 - 00000000000a0000  (2)
TBOOT:  00000000000e0000 - 0000000000100000  (2)
TBOOT:  0000000000100000 - 000000007a289000  (1)
TBOOT:  000000007a289000 - 000000007af0b000  (2)
TBOOT:  000000007af0b000 - 000000007b93b000  (4)
TBOOT:  000000007b93b000 - 000000007bab4000  (3)
TBOOT:  000000007bab4000 - 000000007bae9000  (1)
TBOOT:  000000007bae9000 - 000000007baff000  (3)
TBOOT:  000000007baff000 - 000000007bb00000  (1)
TBOOT:  000000007bb00000 - 0000000090000000  (2)
TBOOT:  00000000feda8000 - 00000000fedac000  (2)
TBOOT:  00000000ff310000 - 0000000100000000  (2)
TBOOT:  0000000100000000 - 0000004080000000  (1)
TBOOT: checking if module  is an SINIT for this platform...
TBOOT:   ACM size mismatch: acmod_size=f678400, acm_hdr->size*4=c0c0c0c0
TBOOT: checking if module root=/dev/ram rw start_install=new
answerfile=/install/answers/default.ans console=hvc0.
TBOOT:   ACM header size in bytes overflows
TBOOT: no SINIT AC module found
TBOOT: TXT.SINIT.BASE: 0x7bf00000
TBOOT: TXT.SINIT.SIZE: 0x20000 (131072)
TBOOT: BIOS has already loaded an SINIT module
TBOOT:   ACM info_table version mismatch (6)
TBOOT: chipset production fused: 1
TBOOT: chipset ids: vendor: 0x8086, device: 0xb002, revision: 0x1
TBOOT: processor family/model/stepping: 0x306f2
TBOOT: platform id: 0x0
TBOOT:   1 ACM chipset id entries:
TBOOT:       vendor: 0x8086, device: 0xb002, flags: 0x1, revision:
0x1, extended: 0x0
TBOOT:   3 ACM processor id entries:
TBOOT:       fms: 0x306f0, fms_mask: 0xfff3ff0, platform_id: 0x0,
platform_mask: 0x0
TBOOT: no SINIT provided by bootloader; using BIOS SINIT
TBOOT: AC mod base alignment OK
TBOOT: AC mod size OK
TBOOT: AC module header dump for SINIT:
TBOOT:   type: 0x2 (ACM_TYPE_CHIPSET)
TBOOT:   subtype: 0x0
TBOOT:   length: 0xa1 (161)
TBOOT:   version: 0
TBOOT:   chipset_id: 0x1d00
TBOOT:   flags: 0x0
TBOOT:           pre_production: 0
TBOOT:           debug_signed: 0
TBOOT:   vendor: 0x8086
TBOOT:   date: 0x20190718
TBOOT:   size*4: 0x20000 (131072)
TBOOT:   txt_svn: 0x00000001
TBOOT:   se_svn: 0x00000000
TBOOT:   code_control: 0x0
TBOOT:   entry point: 0x00000008:0000a14d
TBOOT:   scratch_size: 0x8f (143)
TBOOT:   info_table:
TBOOT:           uuid: {0x7fc03aaa, 0x46a7, 0x18db, 0xac2e,
                {0x69, 0x8f, 0x8d, 0x41, 0x7f, 0x5a}}
TBOOT:               ACM_UUID_V3
TBOOT:           chipset_acm_type: 0x1 (SINIT)
TBOOT:           version: 6
TBOOT:           length: 0x30 (48)
TBOOT:           chipset_id_list: 0x4f0
TBOOT:           os_sinit_data_ver: 0x7
TBOOT:           min_mle_hdr_ver: 0x00020000
TBOOT:           capabilities: 0x000000a5
TBOOT:               rlp_wake_getsec: 1
TBOOT:               rlp_wake_monitor: 0
TBOOT:               ecx_pgtbl: 1
TBOOT:               stm: 0
TBOOT:               pcr_map_no_legacy: 0
TBOOT:               pcr_map_da: 1
TBOOT:               platform_type: 2
TBOOT:               max_phy_addr: 0
TBOOT:               tcg_event_log_format: 0
TBOOT:           acm_ver: 107
TBOOT:   chipset list:
TBOOT:           count: 1
TBOOT:           entry 0:
TBOOT:               flags: 0x1
TBOOT:               vendor_id: 0x8086
TBOOT:               device_id: 0xb002
TBOOT:               revision_id: 0x1
TBOOT:               extended_id: 0x0
TBOOT:   processor list:
TBOOT:           count: 3
TBOOT:           entry 0:
TBOOT:               fms: 0x306f0
TBOOT:               fms_mask: 0xfff3ff0
TBOOT:               platform_id: 0x0
TBOOT:               platform_mask: 0x0
TBOOT:           entry 1:
TBOOT:               fms: 0x50660
TBOOT:               fms_mask: 0xfff3ff0
TBOOT:               platform_id: 0x0
TBOOT:               platform_mask: 0x0
TBOOT:           entry 2:
TBOOT:               fms: 0x406f0
TBOOT:               fms_mask: 0xfff3ff0
TBOOT:               platform_id: 0x0
TBOOT:               platform_mask: 0x0
TBOOT:   TPM info list:
TBOOT:           TPM capability:
TBOOT:                ext_policy: 0x3
TBOOT:                tpm_family : 0x3
TBOOT:                tpm_nv_index_set : 0x0
TBOOT:           alg count: 3
TBOOT:               alg_id: 0x4
TBOOT:               alg_id: 0xb
TBOOT:               alg_id: 0x14
TBOOT: TPM: TPM 2.0 FIFO interface is active...
TBOOT: TPM: FIFO_INF Locality 0 is open
TBOOT: TPM: discrete TPM2.0 Family 0x1
TBOOT: TPM: supported bank count = 2
TBOOT: TPM: bank alg = 00000004
TBOOT: TPM: bank alg = 0000000b
TBOOT: tboot: supported alg count = 2
TBOOT: tboot: hash alg = 00000004
TBOOT: tboot: hash alg = 0000000B
TBOOT: TPM:CreatePrimary creating hierarchy handle = 40000007
TBOOT: TPM:CreatePrimary created object handle = 80000000
TBOOT: TPM attribute:
TBOOT:   extend policy: 2
TBOOT:   current alg id: 0x4
TBOOT:   timeout values: A: 750, B: 2000, C: 75000, D: 750
TBOOT: SGX:verify_IA32_se_svn_status is called
TBOOT: SGX is not enabled, cpuid.ebx: 0x37ab
TBOOT: reading Verified Launch Policy from TPM NV...
TBOOT: TPM: fail to get public data of 0x01200001 in TPM NV
TBOOT:  :reading failed
TBOOT: reading Launch Control Policy from TPM NV...
TBOOT:  :32 bytes read
TBOOT:  :reading failed
TBOOT: failed to read policy from TPM NV, using default
TBOOT: policy:
TBOOT:   version: 2
TBOOT:   policy_type: TB_POLTYPE_CONT_NON_FATAL
TBOOT:   hash_alg: TB_HALG_SHA1
TBOOT:   policy_control: 00000001 (EXTEND_PCR17)
TBOOT:   num_entries: 3
TBOOT:   policy entry[0]:
TBOOT:           mod_num: 0
TBOOT:           pcr: none
TBOOT:           hash_type: TB_HTYPE_ANY
TBOOT:           num_hashes: 0
TBOOT:   policy entry[1]:
TBOOT:           mod_num: any
TBOOT:           pcr: 19
TBOOT:           hash_type: TB_HTYPE_ANY
TBOOT:           num_hashes: 0
TBOOT:   policy entry[2]:
TBOOT:           mod_num: nv_raw
                 nv_index: 40000010
TBOOT:           pcr: 22
TBOOT:           hash_type: TB_HTYPE_ANY
TBOOT:           num_hashes: 0
TBOOT: no policy in TPM NV.
TBOOT: IA32_FEATURE_CONTROL_MSR: 0000ff07
TBOOT: CPU is SMX-capable
TBOOT: CPU is VMX-capable
TBOOT: SMX is enabled
TBOOT: TXT chipset and all needed capabilities present
TBOOT: TXT.ERRORCODE: 0xc0033451
TBOOT: AC module error : acm_type=0x1, progress=0x05, error=0xd
TBOOT: TXT.ESTS: 0x0
TBOOT: TXT.E2STS: 0x8
TBOOT: IA32_FEATURE_CONTROL_MSR: 0000ff07
TBOOT: CPU is SMX-capable
TBOOT: CPU is VMX-capable
TBOOT: SMX is enabled
TBOOT: TXT chipset and all needed capabilities present
TBOOT: RSDP (v2, DELL  ) @ 0x0fe3
TBOOT: TXT.HEAP.BASE: 0x7bf20000
TBOOT: TXT.HEAP.SIZE: 0xe0000 (917504)
TBOOT: bios_data (@0x7bf20008, 0x2c):
TBOOT:   version: 3
TBOOT:   bios_sinit_size: 0x20000 (131072)
TBOOT:   lcp_pd_base: 0x0
TBOOT:   lcp_pd_size: 0x0 (0)
TBOOT:   num_logical_procs: 56
TBOOT:   flags: 0x00000000
TBOOT: IA32_FEATURE_CONTROL_MSR: 0000ff07
TBOOT: CPU is SMX-capable
TBOOT: CPU is VMX-capable
TBOOT: SMX is enabled
TBOOT: TXT chipset and all needed capabilities present
TBOOT: CR0.NE not set
TBOOT: CR0 and EFLAGS OK
TBOOT: supports preserving machine check errors
TBOOT: CPU support processor-based S-CRTM
TBOOT: CPU is ready for SENTER
TBOOT: checking previous errors on the last boot.
        last boot has error.
TBOOT: TPM: TPM 2.0 FIFO interface is active...
TBOOT: file addresses:
TBOOT:   &_start=0x804000
TBOOT:   &_end=0xb58ca0
TBOOT:   &_mle_start=0x804000
TBOOT:   &_mle_end=0x83c000
TBOOT:   &_post_launch_entry=0x804010
TBOOT:   &_txt_wakeup=0x804200
TBOOT:   &g_mle_hdr=0x81f600
TBOOT: MLE header:
TBOOT:   uuid={0x9082ac5a, 0x476f, 0x74a7, 0x5c0f,
                {0x55, 0xa2, 0xcb, 0x51, 0xb6, 0x42}}
TBOOT:   length=34
TBOOT:   version=00020001
TBOOT:   entry_point=00000010
TBOOT:   first_valid_page=00000000
TBOOT:   mle_start_off=4000
TBOOT:   mle_end_off=3c000
TBOOT:   capabilities: 0x00000227
TBOOT:       rlp_wake_getsec: 1
TBOOT:       rlp_wake_monitor: 1
TBOOT:       ecx_pgtbl: 1
TBOOT:       stm: 0
TBOOT:       pcr_map_no_legacy: 0
TBOOT:       pcr_map_da: 1
TBOOT:       platform_type: 0
TBOOT:       max_phy_addr: 0
TBOOT:       tcg_event_log_format: 1
TBOOT: MLE start=0x804000, end=0x83c000, size=0x38000
TBOOT: ptab_size=3000, ptab_base=0x801000
TBOOT: configuring DMAR remapping
TBOOT:     record passes table end
TBOOT: TXT.HEAP.BASE: 0x7bf20000
TBOOT: TXT.HEAP.SIZE: 0xe0000 (917504)
TBOOT: bios_data (@0x7bf20008, 0x2c):
TBOOT:   version: 3
TBOOT:   bios_sinit_size: 0x20000 (131072)
TBOOT:   lcp_pd_base: 0x0
TBOOT:   lcp_pd_size: 0x0 (0)
TBOOT:   num_logical_procs: 56
TBOOT:   flags: 0x00000000
TBOOT: highest min_ram (0x2000000) region found: base=0x100000, size=0x7a189000
TBOOT: discarding RAM above reserved regions: 0x7bab4000 - 0x7bae9000
TBOOT: discarding RAM above reserved regions: 0x7baff000 - 0x7bb00000
TBOOT: min_lo_ram: 0x0, max_lo_ram: 0x7a289000
TBOOT: min_hi_ram: 0x100000000, max_hi_ram: 0x4080000000
TBOOT: no LCP module found
TBOOT: INTEL TXT LOG elt SIZE = 36
TBOOT: os_sinit_data (@0x7bf35154, 0x90):
TBOOT:   version: 7
TBOOT:   flags: 1
TBOOT:   mle_ptab: 0x801000
TBOOT:   mle_size: 0x38000 (229376)
TBOOT:   mle_hdr_base: 0x1b600
TBOOT:   vtd_pmr_lo_base: 0x0
TBOOT:   vtd_pmr_lo_size: 0x7a200000
TBOOT:   vtd_pmr_hi_base: 0x100000000
TBOOT:   vtd_pmr_hi_size: 0x3f80000000
TBOOT:   lcp_po_base: 0x0
TBOOT:   lcp_po_size: 0x0 (0)
TBOOT:   capabilities: 0x00000001
TBOOT:       rlp_wake_getsec: 1
TBOOT:       rlp_wake_monitor: 0
TBOOT:       ecx_pgtbl: 0
TBOOT:       stm: 0
TBOOT:       pcr_map_no_legacy: 0
TBOOT:       pcr_map_da: 0
TBOOT:       platform_type: 0
TBOOT:       max_phy_addr: 0
TBOOT:       tcg_event_log_format: 0
TBOOT:   efi_rsdt_ptr: 0x0
TBOOT:   ext_data_elts[]:
TBOOT:           EVENT_LOG_PTR:
TBOOT:                 size: 36
TBOOT:                count: 1
TBOOT:                   Log Descrption:
TBOOT:                               Alg: 4
TBOOT:                              Size: 4096
TBOOT:                      EventsOffset: [0,0]
TBOOT:                                No Event Log.
TBOOT: setting MTRRs for acmod: base=0x7bf00000, size=0x20000, num_pages=32
TBOOT: The maximum allowed MTRR range size=256 Pages
TBOOT: executing GETSEC[SENTER]...


_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
