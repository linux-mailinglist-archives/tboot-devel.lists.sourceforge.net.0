Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B3CC4A06503
	for <lists+tboot-devel@lfdr.de>; Wed,  8 Jan 2025 20:02:46 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1tVbK2-0003uc-VZ;
	Wed, 08 Jan 2025 19:02:30 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <n0t3p4d.opensource@gmail.com>) id 1tVbK2-0003uU-8o
 for tboot-devel@lists.sourceforge.net;
 Wed, 08 Jan 2025 19:02:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:To:Subject:
 MIME-Version:Date:Message-ID:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jnfWyBL0LmPCF08DFWxAHCzQa3qstZbmbwaDbu1+ayA=; b=VyOqnMOHy2oQPcWfYBwhilwyIX
 6qTLOqHELlVFaXON1leCmXp6uWCL21psIVLt73EXz1+MpC/bA44cZRsrafHTEMWy3pksKx8I2BwNu
 uuLyhUYXYwSOSRZXidCVE+9leFrjR2pL/wXmGIXHysp8dFguhAInt6VWFG4ek4MBX6Po=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:To:Subject:MIME-Version:Date:
 Message-ID:From:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=jnfWyBL0LmPCF08DFWxAHCzQa3qstZbmbwaDbu1+ayA=; b=H
 Xi2af8E4RP9WklYJBjqwxqbHTgUR0U3EJq3oFGxTifCuGiUNWGCt0ojiJ3XXUIi/vZJzJBT630l8g
 ys2EOux3REfLyLnwadlt0jWz9oRRc+0EV6G/IlP5KCrgbu6IYFAde9h0/qO2kpYZ6YH+mLUpkIMN5
 UyODpjDrCy/TPNsE=;
Received: from mail-wr1-f51.google.com ([209.85.221.51])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1tVbK0-0000Sa-78 for tboot-devel@lists.sourceforge.net;
 Wed, 08 Jan 2025 19:02:29 +0000
Received: by mail-wr1-f51.google.com with SMTP id
 ffacd0b85a97d-3862d16b4f5so90118f8f.0
 for <tboot-devel@lists.sourceforge.net>; Wed, 08 Jan 2025 11:02:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1736362936; x=1736967736; darn=lists.sourceforge.net;
 h=content-transfer-encoding:content-language:to:subject:user-agent
 :mime-version:date:message-id:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=jnfWyBL0LmPCF08DFWxAHCzQa3qstZbmbwaDbu1+ayA=;
 b=UOH8sZa/i3rpkcKP8QCtH0HNphEQwcV0ciGrZcdN5tFyYwNANKQFwbS01Cz05eqnpu
 22RCPWqBBtvr6bUTY7pZG3+lmpHd1ZXSIU/bTS7u4THBB291Dm5bkOjo/QQdymf1QKC2
 MUDMDzx5dInE2EDWr6IBDYlpYvwdVZ9GB15SFE/Ei0bULMD3RAvyFeNZjdPODoFLd9LK
 cJqrZ9S1HqhYn3pembAn4IRbDbHi/VhuXAGHh5EbudjVTwbj+qEjwtv7uC7hTALjxIxx
 hy+rOZXENVv510KRxMUtVOxBeDJBnxzp8ahf/xk2ZmkAqIONieUODwTSE5Lfrn5/2VMC
 Dt+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1736362936; x=1736967736;
 h=content-transfer-encoding:content-language:to:subject:user-agent
 :mime-version:date:message-id:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=jnfWyBL0LmPCF08DFWxAHCzQa3qstZbmbwaDbu1+ayA=;
 b=CR63q2N6/juJot+pNUC6uryknm2WKFCEhVw2y4l5jFliu756RX6nfCOH7U5fae6m34
 DAKkkS3Qcc9JzPlGVTgbwORTKULsz/uWbzJx4GFkVHf8EjLdCTSGSnz5V33MmIJnjnQb
 +C4WPqdsojVssJBx/SJiMwXMbMIdrBjsYuwPTyQEDqkNtcNWzg+rgs3xibHvhDrqW/3n
 RcooOrRXMbt697UjN8hJpmllaJgnAA3BW4ZrdZTdn9tWPj7xwPihLiiiir7g2Cn6YNbc
 dyRqxHkDOkVo8MBrT19YEgk2e6mg1/wrdlF195zuzXHrCWdd7yVBCHoMqyNxcmdcL7w9
 vFLQ==
X-Gm-Message-State: AOJu0Yz4VyyJHc+brIvqfy7/WnPW3KvyEvAxYfj9wC5Ob+BDsTvzEuUD
 +/Icga9oofdQ4yy2Oh3BhCg7QKKgDyhPmOqrVjtaMrrsbWmWN2IRweVWDA==
X-Gm-Gg: ASbGncuVGi83A6dPK9e2Q9oRe5bfxRyUmRQauS+2nJIYc+BgMWOI13TXyW/pF3EQ5zs
 xnMdjKqZzSu9H4S6HXSBi7bQ6KqFQwhrkjFMPQxfV9xOHTR3DO81L6PLUPeDw3DN7maMqjGt/sx
 89f0kLsjDMPbZBRkY7q+k65EIQHLTfY8CX8Im/Y0W/Lt+Kr1RVuqL5Up/GrLDmJu+LEsgxq/0z6
 5sszZ44WOlv5cZVMfWcu6IGSNkAWYsNEYLJQHQZKZRcm75LrguEiMt03CkWd0VxaJw00aw8SPra
 5bc7wsw+zHltDhbPioc29Et51x68KQ==
X-Google-Smtp-Source: AGHT+IHdc42sgf5MbUyGDyESlaQfR4KbEPrGyv8W/pI7PPzvh1nTR6gRNZAhj72QOy1VxgmzVfYr2w==
X-Received: by 2002:a05:6000:1787:b0:38a:5dc4:6dcd with SMTP id
 ffacd0b85a97d-38a8b0f2ba7mr314076f8f.22.1736362936183; 
 Wed, 08 Jan 2025 11:02:16 -0800 (PST)
Received: from [192.168.11.100] (p57948688.dip0.t-ipconnect.de.
 [87.148.134.136]) by smtp.googlemail.com with ESMTPSA id
 ffacd0b85a97d-38a1c8a6dd3sm53580484f8f.96.2025.01.08.11.02.15
 for <tboot-devel@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 08 Jan 2025 11:02:15 -0800 (PST)
From: N0T3P4D <n0t3p4d.opensource@gmail.com>
X-Google-Original-From: N0T3P4D <N0T3P4D.opensource@gmail.com>
Message-ID: <280ad04d-d54a-4200-aec1-f8fb389c24cb@gmail.com>
Date: Wed, 8 Jan 2025 20:02:14 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: "tboot-devel@lists.sourceforge.net" <tboot-devel@lists.sourceforge.net>
Content-Language: en-US
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, I'm unable to get a successful TXT boot on the Protectli
 VP6670 (12th Gen Intel(R) Core(TM) i7-1255U) using tboot 1.11.9 and the latest
 (non-coreboot) UEFI firmware 1.80 on Gentoo Linux. TXT is enable [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.221.51 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.221.51 listed in bl.score.senderscore.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [n0t3p4d.opensource[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.51 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.51 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1tVbK0-0000Sa-78
Subject: [tboot-devel] Unsuccessful TXT boot on Protectli VP6670
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

I'm unable to get a successful TXT boot on the Protectli VP6670 (12th Gen Intel(R) Core(TM) i7-1255U) using tboot 1.11.9 and the latest (non-coreboot) UEFI firmware 1.80 on Gentoo 
Linux. TXT is enabled in the firmware and the kernel.

The SINIT ACM module does not seem to be included in the firmware and is provided as the last multiboot2 module in GRUB.

txt-info shows

Intel(r) TXT Configuration Registers:
	STS: 0x00000002
	    senter_done: FALSE
	    sexit_done: TRUE
	    mem_config_lock: FALSE
	    private_open: FALSE
	    locality_1_open: FALSE
	    locality_2_open: FALSE
	ESTS: 0x00
	    txt_reset: FALSE
	E2STS: 0x0000000000000004
	    secrets: FALSE
	ERRORCODE: 0x00000000
	DIDVID: 0x00000001b00c8086
	    vendor_id: 0x8086
	    device_id: 0xb00c
	    revision_id: 0x1
	FSBIF: 0xffffffffffffffff
	QPIIF: 0x000000009d003000
	SINIT.BASE: 0x00000000
	SINIT.SIZE: 0B (0x0)
	HEAP.BASE: 0x00000000
	HEAP.SIZE: 0B (0x0)
	DPR: 0x0000000000000000
	    lock: FALSE
	    top: 0x00000000
	    size: 0MB (0B)
	PUBLIC.KEY:
	    87 9a 8f 9c bf 9e 3d 1d 12 dc 9a d7 6d de 34 e6
	    aa 40 36 64 c7 39 db 34 7b 85 8f 0b e0 33 ae 3a

***********************************************************
	 TXT measured launch: FALSE
	 secrets flag set: FALSE

The TXT error log (see below for full log) does not show an explicit error. The only interesting part seems to be related to SINIT ACM:

TBOOT: chipset ids: vendor: 0x8086, device: 0xb00c, revision: 0x1
TBOOT: processor family/model/stepping: 0x906a4
TBOOT: platform id: 0x1c000000000000
TBOOT: 	 3 ACM chipset id entries:
TBOOT: 	     vendor: 0x8086, device: 0xb00f, flags: 0x1, revision: 0x1, extended: 0x0
TBOOT: 	     vendor: 0x8086, device: 0xb012, flags: 0x1, revision: 0x1, extended: 0x0
TBOOT: 	     vendor: 0x8086, device: 0xb00c, flags: 0x1, revision: 0x1, extended: 0x0
TBOOT: 	 6 ACM processor id entries:
TBOOT: 	     fms: 0x90670, fms_mask: 0xfff3ff0, platform_id: 0x0, platform_mask: 0x0
TBOOT: 	     fms: 0x906a0, fms_mask: 0xfff3ff0, platform_id: 0x0, platform_mask: 0x0
TBOOT: SINIT matches platform
TBOOT: TXT.SINIT.BASE: 0x0
TBOOT: TXT.SINIT.SIZE: 0x0 (0)
TBOOT: BIOS-reserved SINIT size (0) is too small for loaded SINIT (1fdc0)
TBOOT: SINIT ACM not provided.

txt-acminfo /boot/ADL_SINIT_v1_18_16_20230427_REL_NT_O1.PW_signed.bin (see below for full output) finishes with
ERROR: No TXT heap is available

Any help is appreciated!

Best regards

N0T3P4D

-----

txt-acminfo /boot/ADL_SINIT_v1_18_16_20230427_REL_NT_O1.PW_signed.bin
AC module header dump for /boot/ADL_SINIT_v1_18_16_20230427_REL_NT_O1.PW_signed.bin:
	 type: 0x2 (ACM_TYPE_CHIPSET)
	 subtype: 0x0
	 length: 0xe0 (224)
	 version: 196608
	 chipset_id: 0xb00c
	 flags: 0x0
		 pre_production: 0
		 debug_signed: 0
	 vendor: 0x8086
	 date: 0x20230427
	 size*4: 0x1fdc0 (130496)
	 txt_svn: 0x00000004
	 se_svn: 0x0000000b
	 code_control: 0x0
	 entry point: 0x00000008:0000da16
	 scratch_size: 0xd0 (208)
	 info_table:
		 uuid: {0x7fc03aaa, 0x46a7, 0x18db, 0xac2e,
		{0x69, 0x8f, 0x8d, 0x41, 0x7f, 0x5a}}
		     ACM_UUID_V3
		 chipset_acm_type: 0x1 (SINIT)
		 version: 7
		 length: 0x30 (48)
		 chipset_id_list: 0x6f0
		 os_sinit_data_ver: 0x7
		 min_mle_hdr_ver: 0x00020000
		 capabilities: 0x0000077e
		     rlp_wake_getsec: 0
		     rlp_wake_monitor: 1
		     ecx_pgtbl: 1
		     stm: 1
		     pcr_map_no_legacy: 1
		     pcr_map_da: 1
		     platform_type: 1
		     max_phy_addr: 1
		     tcg_event_log_format: 1
		     cbnt_supported: 1
		 acm_ver: 39
		 acm_revision: 1.12.10
	 chipset list:
		 count: 3
		 entry 0:
		     flags: 0x1
		     vendor_id: 0x8086
		     device_id: 0xb00f
		     revision_id: 0x1
		     extended_id: 0x0
		 entry 1:
		     flags: 0x1
		     vendor_id: 0x8086
		     device_id: 0xb012
		     revision_id: 0x1
		     extended_id: 0x0
		 entry 2:
		     flags: 0x1
		     vendor_id: 0x8086
		     device_id: 0xb00c
		     revision_id: 0x1
		     extended_id: 0x0
	 processor list:
		 count: 6
		 entry 0:
		     fms: 0x90670
		     fms_mask: 0xfff3ff0
		     platform_id: 0x0
		     platform_mask: 0x0
		 entry 1:
		     fms: 0x906a0
		     fms_mask: 0xfff3ff0
		     platform_id: 0x0
		     platform_mask: 0x0
		 entry 2:
		     fms: 0xb0670
		     fms_mask: 0xfff3ff0
		     platform_id: 0x0
		     platform_mask: 0x0
		 entry 3:
		     fms: 0xb06a0
		     fms_mask: 0xfff3ff0
		     platform_id: 0x0
		     platform_mask: 0x0
		 entry 4:
		     fms: 0xb06e0
		     fms_mask: 0xfff3ff0
		     platform_id: 0x0
		     platform_mask: 0x0
		 entry 5:
		     fms: 0xb06f0
		     fms_mask: 0xfff3ff0
		     platform_id: 0x0
		     platform_mask: 0x0
	 TPM info list:
		 TPM capability:
		      ext_policy: 0x3
		      tpm_family : 0x3
		      tpm_nv_index_set : 0x1
		 alg count: 4
		     alg_id: 0x4
		     alg_id: 0xb
		     alg_id: 0xc
		     alg_id: 0x16
signature information:
	 key size*4: 0x60 (96)
	 RSA public key:
	     59 4b a3 88 70 7c 03 8f 23 5d d1 02 f8 93 25 78
	     ed 3f b4 f9 cf 67 e1 f9 7f c6 68 4e d1 08 c5 9d
	     7e 09 8e 9d 05 f4 e1 ad 1b 7c db 86 6d 87 a9 88
	     13 5c 47 a1 45 dd 11 4e 73 5c 0b dd 07 2f 07 d7
	     3d be e9 eb 4a a4 34 f3 a5 f2 ff 2c df 9c 8a dc
	     39 1f ac b0 96 30 48 ae 85 8c 81 c9 cf 68 6f dc
	     86 56 93 6c 59 c2 9d ff 0b 3b 87 59 af 1b d5 8d
	     9d 84 a2 2f d6 ad d6 49 8a 1a 5c d2 a6 df 98 f5
	     25 48 7f b1 62 0f dd 9d 89 9f ea 0a 65 c3 c7 26
	     9c 87 00 7c 6c 0a 04 90 5d 9b 1a 1c d5 36 fa d6
	     c9 d1 2a d9 e6 93 0f 5e 5f 42 8b 75 98 f9 7d f8
	     47 2e a8 71 1c d2 b9 58 a0 75 7d 7e 81 0c d7 3f
	     cc e8 a2 f2 e2 87 76 aa 60 ea 8c 47 7a 74 84 33
	     a4 49 60 e8 4b 7f b9 27 e9 cd 35 5f c0 ed a1 5f
	     34 31 b0 be 66 90 94 72 e5 3c 5f be 7f 1f ea 32
	     14 d9 c6 2b b8 c3 91 12 ba 34 ae 21 0b 21 c9 25
	     0d 7f b7 e5 4e f4 75 b3 f4 2f 2a c9 9d 18 dd 18
	     55 84 a0 f0 b6 91 f9 11 11 a1 bb b3 1e 38 75 15
	     67 33 ca 16 46 a8 77 22 2b b1 8f c8 29 bc ed f1
	     82 de 20 af a9 2f ec 4e dd 31 15 25 6b 20 35 24
	     19 f7 83 5a 2b e9 2e 43 85 a2 fb 5e 2e 8f cc bb
	     85 81 ac 73 53 1a 25 4c 77 13 76 0e e0 82 b6 f8
	     ae d8 eb 79 aa b9 cc 67 d8 54 7b 9b d0 de 06 06
	     77 70 c7 ee 73 31 d7 96 5a 1a 29 33 e3 a6 30 a8
	 RSA public key exponent: 0xe5b77f0d
	 PKCS #1.5 RSA signature:
	     4e f4 75 b3 f4 2f 2a c9 9d 18 dd 18 55 84 a0 f0
	     b6 91 f9 11 11 a1 bb b3 1e 38 75 15 67 33 ca 16
	     46 a8 77 22 2b b1 8f c8 29 bc ed f1 82 de 20 af
	     a9 2f ec 4e dd 31 15 25 6b 20 35 24 19 f7 83 5a
	     2b e9 2e 43 85 a2 fb 5e 2e 8f cc bb 85 81 ac 73
	     53 1a 25 4c 77 13 76 0e e0 82 b6 f8 ae d8 eb 79
	     aa b9 cc 67 d8 54 7b 9b d0 de 06 06 77 70 c7 ee
	     73 31 d7 96 5a 1a 29 33 e3 a6 30 a8 c6 71 12 5c
	     21 42 69 3c 20 66 81 8a 60 63 f5 d0 b7 25 ce 9e
	     9f 01 12 fa cb 29 7c 7e 96 40 c9 5f a6 c8 ec 4e
	     12 92 ab a8 0c b5 1a fc 2f f3 6a 93 17 e1 d0 e2
	     0d d1 01 9a bc e9 9a 82 0e 9a aa 90 f4 62 eb 6d
	     e5 e6 c0 c0 63 f5 17 c7 9b f6 2f ce 75 d7 61 69
	     80 7a 34 bc 34 ca 47 9e 55 7a d5 97 30 34 fb 79
	     20 a7 b6 3a 2a 8b c3 66 3e a8 23 56 62 b9 f2 60
	     7b 28 55 37 38 6f 5b 06 22 ee a9 26 5f 26 b7 dd
ERROR: No TXT heap is available

TBOOT log:
	 max_size=65474
	 zip_count=0
	 curr_pos=11505
	 buf:
TBOOT: *********************** TBOOT ***********************
TBOOT:    2024-10-11 12:00 +0100 1.11.9
TBOOT: *****************************************************
TBOOT: This tboot version supports TPR.
TBOOT: This tboot version tries to move SINIT in ldr_ctx v3.
TBOOT: This tboot version disables DMA remapping.
TBOOT: command line: pcr_map=da loglvl=all serial=115200,8n1,0x2f8 logging=serial,memory
TBOOT: IA32_FEATURE_CONTROL_MSR: 0000ff07
TBOOT: CPU is SMX-capable
TBOOT: CPU is VMX-capable
TBOOT: SMX is enabled
TBOOT: TXT chipset and all needed capabilities present
TBOOT: Loader context at: 0x853c48
TBOOT: MB2 dump: addr 0x22000, size 4264
TBOOT: MB2 tag found of type 21 size 12
TBOOT: MB2 tag found of type 1 size 76 pcr_map=da loglvl=all serial=115200,8n1,0x2f8 logging=serial,memory
TBOOT: MB2 tag found of type 2 size 18 GRUB 2.12
TBOOT: MB2 tag found of type 3 size 45 mod_start: 0x5495000, mod_end: 0x5e9f400	root=/dev/nvme0n1p2 ro noefi
TBOOT:
TBOOT: MB2 tag found of type 3 size 17 mod_start: 0x1000, mod_end: 0x137d
TBOOT: MB2 tag found of type 3 size 17 mod_start: 0x2000, mod_end: 0x21dc0
TBOOT: MB2 tag found of type 6 size 544
TBOOT: MB2 tag found of type 4 size 16
TBOOT: MB2 tag found of type 12 size 16
TBOOT: MB2 tag found of type 14 size 28
TBOOT: MB2 tag found of type 15 size 44
TBOOT: MB2 tag found of type 17 size 3376
TBOOT: MB2 tag found of type 0 size 8
TBOOT: IA32_FEATURE_CONTROL_MSR: 0000ff07
TBOOT: CPU is SMX-capable
TBOOT: CPU is VMX-capable
TBOOT: SMX is enabled
TBOOT: TXT chipset and all needed capabilities present
TBOOT: move modules above tboot.
TBOOT: Highest mod end: 0x5e9f400
TBOOT: Initial mod destination: 0x5ea0000
TBOOT: TBOOT memory end: 0x5495000
TBOOT: 0x7ff000 bytes copied from 0x1000 to 0x5ea0000
TBOOT: loader context was moved from 0x22000 to 0x5ec1000
TBOOT: Loader context after moving modules0x853c48
TBOOT: MB2 dump: addr 0x5ec1000, size 4264
TBOOT: MB2 tag found of type 21 size 12
TBOOT: MB2 tag found of type 1 size 76 pcr_map=da loglvl=all serial=115200,8n1,0x2f8 logging=serial,memory
TBOOT: MB2 tag found of type 2 size 18 GRUB 2.12
TBOOT: MB2 tag found of type 3 size 45 mod_start: 0x5495000, mod_end: 0x5e9f400	root=/dev/nvme0n1p2 ro noefi
TBOOT:
TBOOT: MB2 tag found of type 3 size 17 mod_start: 0x5ea0000, mod_end: 0x5ea037d
TBOOT: MB2 tag found of type 3 size 17 mod_start: 0x5ea1000, mod_end: 0x5ec0dc0
TBOOT: MB2 tag found of type 6 size 544
TBOOT: MB2 tag found of type 4 size 16
TBOOT: MB2 tag found of type 12 size 16
TBOOT: MB2 tag found of type 14 size 28
TBOOT: MB2 tag found of type 15 size 44
TBOOT: MB2 tag found of type 17 size 3376
TBOOT: MB2 tag found of type 0 size 8
TBOOT: IA32_FEATURE_CONTROL_MSR: 0000ff07
TBOOT: CPU is SMX-capable
TBOOT: CPU is VMX-capable
TBOOT: SMX is enabled
TBOOT: TXT chipset and all needed capabilities present
TBOOT: BSP is cpu 0
TBOOT: Original EFI memory map:
TBOOT:  0000000000000000 - 0000000000025000 (2  | 0xf | EFI_LOADER_DATA)
TBOOT:  0000000000025000 - 000000000009e000 (7  | 0xf | EFI_CONVENTIONAL_MEMORY)
TBOOT:  000000000009e000 - 000000000009f000 (0  | 0xf | EFI_RESERVED_TYPE)
TBOOT:  000000000009f000 - 00000000000a0000 (4  | 0xf | EFI_BOOT_SERVICES_DATA)
TBOOT:  0000000000100000 - 0000000000800000 (7  | 0xf | EFI_CONVENTIONAL_MEMORY)
TBOOT:  0000000000800000 - 0000000005ea0000 (2  | 0xf | EFI_LOADER_DATA)
TBOOT:  0000000005ea0000 - 0000000063961000 (7  | 0xf | EFI_CONVENTIONAL_MEMORY)
TBOOT:  0000000063961000 - 0000000065961000 (1  | 0xf | EFI_LOADER_CODE)
TBOOT:  0000000065961000 - 00000000659e1000 (4  | 0xf | EFI_BOOT_SERVICES_DATA)
TBOOT:  00000000659e1000 - 000000006bdd0000 (7  | 0xf | EFI_CONVENTIONAL_MEMORY)
TBOOT:  000000006bdd0000 - 000000006bdf4000 (1  | 0xf | EFI_LOADER_CODE)
TBOOT:  000000006bdf4000 - 000000006be11000 (7  | 0xf | EFI_CONVENTIONAL_MEMORY)
TBOOT:  000000006be11000 - 000000006be12000 (4  | 0xf | EFI_BOOT_SERVICES_DATA)
TBOOT:  000000006be12000 - 000000006be13000 (2  | 0xf | EFI_LOADER_DATA)
TBOOT:  000000006be13000 - 000000006be19000 (7  | 0xf | EFI_CONVENTIONAL_MEMORY)
TBOOT:  000000006be19000 - 000000006d7b0000 (4  | 0xf | EFI_BOOT_SERVICES_DATA)
TBOOT:  000000006d7b0000 - 000000006d7cb000 (3  | 0xf | EFI_BOOT_SERVICES_CODE)
TBOOT:  000000006d7cb000 - 000000006d7f6000 (4  | 0xf | EFI_BOOT_SERVICES_DATA)
TBOOT:  000000006d7f6000 - 000000006d7f8000 (3  | 0xf | EFI_BOOT_SERVICES_CODE)
TBOOT:  000000006d7f8000 - 000000006d7fd000 (4  | 0xf | EFI_BOOT_SERVICES_DATA)
TBOOT:  000000006d7fd000 - 000000006d7ff000 (3  | 0xf | EFI_BOOT_SERVICES_CODE)
TBOOT:  000000006d7ff000 - 000000006d804000 (4  | 0xf | EFI_BOOT_SERVICES_DATA)
TBOOT:  000000006d804000 - 000000006d808000 (3  | 0xf | EFI_BOOT_SERVICES_CODE)
TBOOT:  000000006d808000 - 000000006d810000 (4  | 0xf | EFI_BOOT_SERVICES_DATA)
TBOOT:  000000006d810000 - 000000006d812000 (3  | 0xf | EFI_BOOT_SERVICES_CODE)
TBOOT:  000000006d812000 - 000000006d818000 (4  | 0xf | EFI_BOOT_SERVICES_DATA)
TBOOT:  000000006d818000 - 000000006d819000 (3  | 0xf | EFI_BOOT_SERVICES_CODE)
TBOOT:  000000006d819000 - 000000006d830000 (4  | 0xf | EFI_BOOT_SERVICES_DATA)
TBOOT:  000000006d830000 - 000000006d834000 (3  | 0xf | EFI_BOOT_SERVICES_CODE)
TBOOT:  000000006d834000 - 000000006d83c000 (4  | 0xf | EFI_BOOT_SERVICES_DATA)
TBOOT:  000000006d83c000 - 000000006d844000 (3  | 0xf | EFI_BOOT_SERVICES_CODE)
TBOOT:  000000006d844000 - 000000006d85c000 (4  | 0xf | EFI_BOOT_SERVICES_DATA)
TBOOT:  000000006d85c000 - 000000006d862000 (3  | 0xf | EFI_BOOT_SERVICES_CODE)
TBOOT:  000000006d862000 - 000000006d872000 (4  | 0xf | EFI_BOOT_SERVICES_DATA)
TBOOT:  000000006d872000 - 000000006d8be000 (3  | 0xf | EFI_BOOT_SERVICES_CODE)
TBOOT:  000000006d8be000 - 000000006d901000 (4  | 0xf | EFI_BOOT_SERVICES_DATA)
TBOOT:  000000006d901000 - 000000006d904000 (3  | 0xf | EFI_BOOT_SERVICES_CODE)
TBOOT:  000000006d904000 - 000000006d9d9000 (4  | 0xf | EFI_BOOT_SERVICES_DATA)
TBOOT:  000000006d9d9000 - 000000006d9e0000 (3  | 0xf | EFI_BOOT_SERVICES_CODE)
TBOOT:  000000006d9e0000 - 000000006d9eb000 (4  | 0xf | EFI_BOOT_SERVICES_DATA)
TBOOT:  000000006d9eb000 - 000000006d9f0000 (3  | 0xf | EFI_BOOT_SERVICES_CODE)
TBOOT:  000000006d9f0000 - 000000006d9f9000 (4  | 0xf | EFI_BOOT_SERVICES_DATA)
TBOOT:  000000006d9f9000 - 000000006da36000 (3  | 0xf | EFI_BOOT_SERVICES_CODE)
TBOOT:  000000006da36000 - 000000006e922000 (4  | 0xf | EFI_BOOT_SERVICES_DATA)
TBOOT:  000000006e922000 - 000000006e939000 (3  | 0xf | EFI_BOOT_SERVICES_CODE)
TBOOT:  000000006e939000 - 000000006e949000 (4  | 0xf | EFI_BOOT_SERVICES_DATA)
TBOOT:  000000006e949000 - 000000006e951000 (3  | 0xf | EFI_BOOT_SERVICES_CODE)
TBOOT:  000000006e951000 - 0000000071360000 (4  | 0xf | EFI_BOOT_SERVICES_DATA)
TBOOT:  0000000071360000 - 000000007162c000 (7  | 0xf | EFI_CONVENTIONAL_MEMORY)
TBOOT:  000000007162c000 - 0000000072155000 (3  | 0xf | EFI_BOOT_SERVICES_CODE)
TBOOT:  0000000072155000 - 0000000075255000 (0  | 0xf | EFI_RESERVED_TYPE)
TBOOT:  0000000075255000 - 000000007536f000 (9  | 0xf | EFI_ACPI_RECLAIM_MEMORY)
TBOOT:  000000007536f000 - 000000007544c000 (10 | 0xf | EFI_ACPI_MEMORY_NVS)
TBOOT:  000000007544c000 - 0000000075f66000 (6  | 0x800000000000000f | EFI_RUNTIME_SERVICES_DATA)
TBOOT:  0000000075f66000 - 0000000075fff000 (5  | 0x800000000000000f | EFI_RUNTIME_SERVICES_CODE)
TBOOT:  0000000075fff000 - 0000000076000000 (4  | 0xf | EFI_BOOT_SERVICES_DATA)
TBOOT:  0000000100000000 - 000000107fc00000 (7  | 0xf | EFI_CONVENTIONAL_MEMORY)
TBOOT:  00000000000a0000 - 0000000000100000 (0  | 0x0 | EFI_RESERVED_TYPE)
TBOOT:  0000000076000000 - 000000007a000000 (0  | 0xf | EFI_RESERVED_TYPE)
TBOOT:  000000007a600000 - 000000007a800000 (0  | 0xf | EFI_RESERVED_TYPE)
TBOOT:  000000007ac00000 - 000000007b000000 (0  | 0x0 | EFI_RESERVED_TYPE)
TBOOT:  000000007b000000 - 000000007c000000 (0  | 0x9 | EFI_RESERVED_TYPE)
TBOOT:  000000007c000000 - 0000000080400000 (0  | 0x0 | EFI_RESERVED_TYPE)
TBOOT:  00000000c0000000 - 00000000d0000000 (11 | 0x8000000000000001 | EFI_MEMORY_MAPPED_IO)
TBOOT:  00000000fe000000 - 00000000fe011000 (11 | 0x8000000000000001 | EFI_MEMORY_MAPPED_IO)
TBOOT:  00000000fec00000 - 00000000fec01000 (11 | 0x8000000000000001 | EFI_MEMORY_MAPPED_IO)
TBOOT:  00000000fed00000 - 00000000fed01000 (11 | 0x8000000000000001 | EFI_MEMORY_MAPPED_IO)
TBOOT:  00000000fed20000 - 00000000fed80000 (0  | 0x0 | EFI_RESERVED_TYPE)
TBOOT:  00000000fee00000 - 00000000fee01000 (11 | 0x8000000000000001 | EFI_MEMORY_MAPPED_IO)
TBOOT:  00000000ff000000 - 0000000100000000 (11 | 0x800000000000100d | EFI_MEMORY_MAPPED_IO)
TBOOT: Original E820 memory map:
TBOOT: 	0000000000000000 - 000000000009e000  (1 - E820_RAM)
TBOOT: 	000000000009e000 - 000000000009f000  (2 - E820_RESERVED)
TBOOT: 	000000000009f000 - 00000000000a0000  (1 - E820_RAM)
TBOOT: 	00000000000a0000 - 0000000000100000  (2 - E820_RESERVED)
TBOOT: 	0000000000100000 - 0000000072155000  (1 - E820_RAM)
TBOOT: 	0000000072155000 - 0000000075255000  (2 - E820_RESERVED)
TBOOT: 	0000000075255000 - 000000007536f000  (3 - E820_ACPI)
TBOOT: 	000000007536f000 - 000000007544c000  (4 - E820_NVS)
TBOOT: 	000000007544c000 - 0000000075f66000  (2 - E820_RESERVED)
TBOOT: 	0000000075f66000 - 0000000075fff000  (20 - unknown type)
TBOOT: 	0000000075fff000 - 0000000076000000  (1 - E820_RAM)
TBOOT: 	0000000076000000 - 000000007a000000  (2 - E820_RESERVED)
TBOOT: 	000000007a600000 - 000000007a800000  (2 - E820_RESERVED)
TBOOT: 	000000007ac00000 - 0000000080400000  (2 - E820_RESERVED)
TBOOT: 	00000000c0000000 - 00000000d0000000  (2 - E820_RESERVED)
TBOOT: 	00000000fe000000 - 00000000fe011000  (2 - E820_RESERVED)
TBOOT: 	00000000fec00000 - 00000000fec01000  (2 - E820_RESERVED)
TBOOT: 	00000000fed00000 - 00000000fed01000  (2 - E820_RESERVED)
TBOOT: 	00000000fed20000 - 00000000fed80000  (2 - E820_RESERVED)
TBOOT: 	00000000fee00000 - 00000000fee01000  (2 - E820_RESERVED)
TBOOT: 	00000000ff000000 - 0000000100000000  (2 - E820_RESERVED)
TBOOT: 	0000000100000000 - 000000107fc00000  (1 - E820_RAM)
TBOOT: checking if module  is an SINIT for this platform...
TBOOT: chipset production fused: 1
TBOOT: chipset ids: vendor: 0x8086, device: 0xb00c, revision: 0x1
TBOOT: processor family/model/stepping: 0x906a4
TBOOT: platform id: 0x1c000000000000
TBOOT: 	 3 ACM chipset id entries:
TBOOT: 	     vendor: 0x8086, device: 0xb00f, flags: 0x1, revision: 0x1, extended: 0x0
TBOOT: 	     vendor: 0x8086, device: 0xb012, flags: 0x1, revision: 0x1, extended: 0x0
TBOOT: 	     vendor: 0x8086, device: 0xb00c, flags: 0x1, revision: 0x1, extended: 0x0
TBOOT: 	 6 ACM processor id entries:
TBOOT: 	     fms: 0x90670, fms_mask: 0xfff3ff0, platform_id: 0x0, platform_mask: 0x0
TBOOT: 	     fms: 0x906a0, fms_mask: 0xfff3ff0, platform_id: 0x0, platform_mask: 0x0
TBOOT: SINIT matches platform
TBOOT: TXT.SINIT.BASE: 0x0
TBOOT: TXT.SINIT.SIZE: 0x0 (0)
TBOOT: BIOS-reserved SINIT size (0) is too small for loaded SINIT (1fdc0)
TBOOT: SINIT ACM not provided.
TBOOT: reserving tboot memory log (60000 - 6ffff) in e820 table
TBOOT: got sinit match on module #2
TBOOT: v2 LCP policy data found
TBOOT: ELF magic number is not matched, image is not ELF format.
TBOOT: assuming kernel is Linux format
TBOOT: Kernel (protected mode) from 0x6000000 to 0x6a06400
TBOOT: Kernel (real mode) from 0x90000 to 0x94000
TBOOT: Linux cmdline from 0x98d00 to 0x99100:
TBOOT: 	root=/dev/nvme0n1p2 ro noefi
TBOOT: EFI memmap: memmap base: 0x71808, memmap size: 0xd80
TBOOT: EFI memmap: descr size: 0x30, descr version: 0x1
TBOOT: transfering control to kernel @0x6000000...



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
