Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 17A6DAE206
	for <lists+tboot-devel@lfdr.de>; Tue, 10 Sep 2019 03:42:28 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1i7VAg-00014R-O0; Tue, 10 Sep 2019 01:42:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <robert.haskins@lmco.com>) id 1i7VAf-00014C-2V
 for tboot-devel@lists.sourceforge.net; Tue, 10 Sep 2019 01:42:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:In-Reply-To:References:
 Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LnwoUSipOtu6QiN9cPZD+v+H2p3mUXjNg6ANbYovmww=; b=Xb11pQ1uZ5IlDNA/rQcYt9tGoi
 Form+kTpmU0yCZPMmZ9s7QZG1za2rp3ejramhAKwlq0GTWJXswvnZnA6FaBhexQpsHsCVIg8eKbZQ
 ixRBcGT83TyJ53fesKcHftm06ocRFVylgmwS56JVKeKI0zV8rqdxeiJiIF2smo1nqKPo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:
 CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=LnwoUSipOtu6QiN9cPZD+v+H2p3mUXjNg6ANbYovmww=; b=T0Q7UFo931vZEOFKgSJDVbRZ/g
 eBIZ0j4PBnbzOlpg9RjrGY3/PL5rvmnbPYdivSjBgsNHG2cWc0lqLuDFPq0YramD2hvftuxsu5cts
 SaLEMaCkassPdow1HbJY8krhBP274m9/loW98HL/KjrfGEYVhYZsNnzFTAaRc32Jxz2o=;
Received: from mailfo01.lmco.com ([192.31.106.12])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1i7VAX-00Fl7P-S8
 for tboot-devel@lists.sourceforge.net; Tue, 10 Sep 2019 01:42:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lmco.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 mime-version; s=corpgw190711;
 bh=LnwoUSipOtu6QiN9cPZD+v+H2p3mUXjNg6ANbYovmww=;
 b=cvD1/tALEKZ8+dognFTqYdmyPUYG5e2AoC+mSETr82dec6fNOjDsJ4zpM9ioFZtnC8k4
 4xM2j5+6lBGLCsHuARiZzgeryeqsXsT89b90HIu6fbX7+XXPquaG1lhPHQXWZADziW5d
 VKs6zKSSAoA18c244GURd+kwFGQNqQtej1cwbc959zaoQoF1OUqbHBz+WpLRmgARUfSI
 y8IjspgF4yY4w6TXu6HKyO9TCN7ncpbn0fzhEm4X7HDhY2dpEsU5bltVwvekEPqpF+l1
 xHBbB3TK1KlbBoE6Twu3kFUIUxP9iz9Hb8o9D+3SVbBqv2lPBcF/wXLnY0/e376+YxkY 1Q== 
Received: from lmxpvfgd08w06.us.lmco.com (lmxpvfg08w06.ems.lmco.com
 [172.23.84.53])
 by mailfo01.lmco.com (8.16.0.22/8.16.0.22) with ESMTP id x8A1fsWl026119;
 Tue, 10 Sep 2019 01:41:54 GMT
Received: from lmxpvfgd08w05.us.lmco.com (172.23.84.52) by
 lmxpvfgd08w06.us.lmco.com (172.23.84.53) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
 15.1.1466.3; Mon, 9 Sep 2019 21:41:53 -0400
Received: from lmxpvfgd08w05.us.lmco.com ([172.23.84.52]) by
 lmxpvfgd08w05.us.lmco.com ([172.23.84.52]) with mapi id 15.01.1466.003; Mon,
 9 Sep 2019 21:41:53 -0400
From: "Haskins, Robert" <robert.haskins@lmco.com>
To: "greg@idfusion.net" <greg@idfusion.net>
Thread-Topic: EXTERNAL: Re: [tboot-devel] GETSEC[SENTER]....and then reset
Thread-Index: AdVijl5TUWltJHjOR6SN943Yoh6R4ADVv9OAAEtsstAAGVNzUA==
Date: Tue, 10 Sep 2019 01:41:53 +0000
Message-ID: <33f30dd7b8674454be7d9a8b5d280eab@lmco.com>
References: <fc9d52706f3d43549996876d4a0b7030@lmco.com>
 <20190907213307.GA12122@wind.enjellic.com>
 <20714fedc99d4e0d8b8c8d54434b3e1a@lmco.com>
In-Reply-To: <20714fedc99d4e0d8b8c8d54434b3e1a@lmco.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [172.23.84.15]
MIME-Version: 1.0
X-LM-Outbound: External 172.23.84.53 cntry=**
 g=ucv7AgsbQ7kaQUYUJL_jt1786zwdwoDM q=x8A1fsWl026119 m=1
X-LM-OSENDER: robert.haskins@lmco.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-09-10_01:, , signatures=0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: idfusion.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1i7VAX-00Fl7P-S8
Subject: Re: [tboot-devel] EXTERNAL: Re:  GETSEC[SENTER]....and then reset
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
Content-Type: multipart/mixed; boundary="===============2633117938981536059=="
Errors-To: tboot-devel-bounces@lists.sourceforge.net

--===============2633117938981536059==
Content-Language: en-US
Content-Type: multipart/signed; protocol="application/x-pkcs7-signature";
	micalg=SHA1; boundary="----=_NextPart_000_02C1_01D56757.63B48BD0"

------=_NextPart_000_02C1_01D56757.63B48BD0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

OK, here is my latest TBOOT log. It looks like we did get an error code
(TXT.ERRORCODE: 0xc0007051) this time around:

TBOOT: IA32_FEATURE_CONTROL_MSR: 0000ff07
TBOOT: CPU is SMX-capable
TBOOT: SMX is enabled
TBOOT: TXT chipset and all needed capabilities present
TBOOT: *********************** TBOOT ***********************
TBOOT:    2019-04-10 11:00 +0200 1.9.10
TBOOT: *****************************************************
TBOOT: command line: logging=serial,memory
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
TBOOT: 	0000000000000000 - 0000000000058000  (1)
TBOOT: 	0000000000058000 - 0000000000059000  (2)
TBOOT: 	0000000000059000 - 000000000009e000  (1)
TBOOT: 	000000000009e000 - 0000000000100000  (2)
TBOOT: 	0000000000100000 - 000000005d4e1000  (1)
TBOOT: 	000000005d4e1000 - 000000005d4e2000  (4)
TBOOT: 	000000005d4e2000 - 000000005d4e3000  (2)
TBOOT: 	000000005d4e3000 - 000000005ef88000  (1)
TBOOT: 	000000005ef88000 - 000000005f888000  (2)
TBOOT: 	000000005f888000 - 0000000075a9f000  (1)
TBOOT: 	0000000075a9f000 - 0000000075c9f000  (20)
TBOOT: 	0000000075c9f000 - 000000007648f000  (2)
TBOOT: 	000000007648f000 - 0000000076b7f000  (4)
TBOOT: 	0000000076b7f000 - 0000000076bff000  (3)
TBOOT: 	0000000076bff000 - 0000000076c00000  (1)
TBOOT: 	0000000076c00000 - 0000000080000000  (2)
TBOOT: 	00000000e0000000 - 00000000f0000000  (2)
TBOOT: 	00000000fd000000 - 00000000fe800000  (2)
TBOOT: 	00000000fec00000 - 00000000fec01000  (2)
TBOOT: 	00000000fed00000 - 00000000fed01000  (2)
TBOOT: 	00000000fed10000 - 00000000fed1a000  (2)
TBOOT: 	00000000fed20000 - 00000000fed80000  (2)
TBOOT: 	00000000fed84000 - 00000000fed85000  (2)
TBOOT: 	00000000fee00000 - 00000000fee01000  (2)
TBOOT: 	00000000ff900000 - 0000000100000000  (2)
TBOOT: 	0000000100000000 - 000000047e000000  (1)
TBOOT: checking if module  is an SINIT for this platform...
TBOOT: chipset production fused: 1
TBOOT: chipset ids: vendor: 0x8086, device: 0xb006, revision: 0x1
TBOOT: processor family/model/stepping: 0x806ea
TBOOT: platform id: 0x1c000000000000
TBOOT: 	 1 ACM chipset id entries:
TBOOT: 	     vendor: 0x8086, device: 0xc002, flags: 0x1, revision: 0x7,
extended: 0x0
TBOOT: 	 chipset id mismatch
TBOOT: checking if module  is an SINIT for this platform...
TBOOT: 	 1 ACM chipset id entries:
TBOOT: 	     vendor: 0x8086, device: 0xa000, flags: 0x1, revision: 0x1,
extended: 0x0
TBOOT: 	 chipset id mismatch
TBOOT: checking if module  is an SINIT for this platform...
TBOOT: 	 1 ACM chipset id entries:
TBOOT: 	     vendor: 0x8086, device: 0xc000, flags: 0x1, revision: 0x3f,
extended: 0x0
TBOOT: 	 chipset id mismatch
TBOOT: checking if module  is an SINIT for this platform...
TBOOT: 	 1 ACM chipset id entries:
TBOOT: 	     vendor: 0x8086, device: 0xc000, flags: 0x1, revision: 0x7,
extended: 0x0
TBOOT: 	 chipset id mismatch
TBOOT: checking if module  is an SINIT for this platform...
TBOOT: 	 1 ACM chipset id entries:
TBOOT: 	     vendor: 0x8086, device: 0x8003, flags: 0x1, revision: 0xf,
extended: 0x0
TBOOT: 	 chipset id mismatch
TBOOT: checking if module  is an SINIT for this platform...
TBOOT: 	 1 ACM chipset id entries:
TBOOT: 	     vendor: 0x8086, device: 0x8001, flags: 0x1, revision: 0x7,
extended: 0x0
TBOOT: 	 chipset id mismatch
TBOOT: checking if module  is an SINIT for this platform...
TBOOT: 	 1 ACM chipset id entries:
TBOOT: 	     vendor: 0x8086, device: 0x9000, flags: 0x1, revision: 0x3f,
extended: 0x0
TBOOT: 	 chipset id mismatch
TBOOT: checking if module  is an SINIT for this platform...
TBOOT: 	 ACM info_table version mismatch (6)
TBOOT: 	 1 ACM chipset id entries:
TBOOT: 	     vendor: 0x8086, device: 0xb008, flags: 0x1, revision: 0x1,
extended: 0x0
TBOOT: 	 chipset id mismatch
TBOOT: checking if module  is an SINIT for this platform...
TBOOT: 	 ACM info_table version mismatch (6)
TBOOT: 	 1 ACM chipset id entries:
TBOOT: 	     vendor: 0x8086, device: 0xb006, flags: 0x1, revision: 0x1,
extended: 0x0
TBOOT: 	 2 ACM processor id entries:
TBOOT: 	     fms: 0x406e0, fms_mask: 0xfff3ff0, platform_id: 0x0,
platform_mask: 0x0
TBOOT: 	     fms: 0x506e0, fms_mask: 0xfff3ff0, platform_id: 0x0,
platform_mask: 0x0
TBOOT: 	 processor mismatch
TBOOT: checking if module  is an SINIT for this platform...
TBOOT: 	 ACM info_table version mismatch (6)
TBOOT: 	 1 ACM chipset id entries:
TBOOT: 	     vendor: 0x8086, device: 0xb006, flags: 0x1, revision: 0x1,
extended: 0x0
TBOOT: 	 4 ACM processor id entries:
TBOOT: 	     fms: 0x406e0, fms_mask: 0xfff3ff0, platform_id: 0x0,
platform_mask: 0x0
TBOOT: 	     fms: 0x506e0, fms_mask: 0xfff3ff0, platform_id: 0x0,
platform_mask: 0x0
TBOOT: 	     fms: 0x806e0, fms_mask: 0xfff3ff0, platform_id: 0x0,
platform_mask: 0x0
TBOOT: SINIT matches platform
TBOOT: TXT.SINIT.BASE: 0x76ed0000
TBOOT: TXT.SINIT.SIZE: 0x50000 (327680)
TBOOT: copied SINIT (size=20000) to 0x76ed0000
TBOOT: AC mod base alignment OK
TBOOT: AC mod size OK
TBOOT: AC module header dump for SINIT:
TBOOT: 	 type: 0x2 (ACM_TYPE_CHIPSET)
TBOOT: 	 subtype: 0x0 
TBOOT: 	 length: 0xa1 (161)
TBOOT: 	 version: 0
TBOOT: 	 chipset_id: 0xb006
TBOOT: 	 flags: 0x0
TBOOT: 		 pre_production: 0
TBOOT: 		 debug_signed: 0
TBOOT: 	 vendor: 0x8086
TBOOT: 	 date: 0x20180904
TBOOT: 	 size*4: 0x20000 (131072)
TBOOT: 	 txt_svn: 0x00000000
TBOOT: 	 se_svn: 0x00000004
TBOOT: 	 code_control: 0x0
TBOOT: 	 entry point: 0x00000008:0000e418
TBOOT: 	 scratch_size: 0x8f (143)
TBOOT: 	 info_table:
TBOOT: 		 uuid: {0x7fc03aaa, 0x46a7, 0x18db, 0xac2e,
		{0x69, 0x8f, 0x8d, 0x41, 0x7f, 0x5a}}
TBOOT: 		     ACM_UUID_V3
TBOOT: 		 chipset_acm_type: 0x1 (SINIT)
TBOOT: 		 version: 6
TBOOT: 		 length: 0x30 (48)
TBOOT: 		 chipset_id_list: 0x4f0
TBOOT: 		 os_sinit_data_ver: 0x7
TBOOT: 		 min_mle_hdr_ver: 0x00020000
TBOOT: 		 capabilities: 0x0000036e
TBOOT: 		     rlp_wake_getsec: 0
TBOOT: 		     rlp_wake_monitor: 1
TBOOT: 		     ecx_pgtbl: 1
TBOOT: 		     stm: 1
TBOOT: 		     pcr_map_no_legacy: 0
TBOOT: 		     pcr_map_da: 1
TBOOT: 		     platform_type: 1
TBOOT: 		     max_phy_addr: 1
TBOOT: 		     tcg_event_log_format: 1
TBOOT: 		 acm_ver: 171
TBOOT: 	 chipset list:
TBOOT: 		 count: 1
TBOOT: 		 entry 0:
TBOOT: 		     flags: 0x1
TBOOT: 		     vendor_id: 0x8086
TBOOT: 		     device_id: 0xb006
TBOOT: 		     revision_id: 0x1
TBOOT: 		     extended_id: 0x0
TBOOT: 	 processor list:
TBOOT: 		 count: 4
TBOOT: 		 entry 0:
TBOOT: 		     fms: 0x406e0
TBOOT: 		     fms_mask: 0xfff3ff0
TBOOT: 		     platform_id: 0x0
TBOOT: 		     platform_mask: 0x0
TBOOT: 		 entry 1:
TBOOT: 		     fms: 0x506e0
TBOOT: 		     fms_mask: 0xfff3ff0
TBOOT: 		     platform_id: 0x0
TBOOT: 		     platform_mask: 0x0
TBOOT: 		 entry 2:
TBOOT: 		     fms: 0x806e0
TBOOT: 		     fms_mask: 0xfff3ff0
TBOOT: 		     platform_id: 0x0
TBOOT: 		     platform_mask: 0x0
TBOOT: 		 entry 3:
TBOOT: 		     fms: 0x906e0
TBOOT: 		     fms_mask: 0xfff3ff0
TBOOT: 		     platform_id: 0x0
TBOOT: 		     platform_mask: 0x0
TBOOT: 	 TPM info list:
TBOOT: 		 TPM capability:
TBOOT: 		      ext_policy: 0x3
TBOOT: 		      tpm_family : 0x3
TBOOT: 		      tpm_nv_index_set : 0x0
TBOOT: 		 alg count: 6
TBOOT: 		     alg_id: 0x4
TBOOT: 		     alg_id: 0xb
TBOOT: 		     alg_id: 0xc
TBOOT: 		     alg_id: 0xd
TBOOT: 		     alg_id: 0x14
TBOOT: 		     alg_id: 0x18
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
TBOOT: 	 extend policy: 2
TBOOT: 	 current alg id: 0x4
TBOOT: 	 timeout values: A: 750, B: 2000, C: 75000, D: 750
TBOOT: SGX:verify_IA32_se_svn_status is called
TBOOT: SGX is enabled, cpuid.ebx:0x29c6fbf
TBOOT: Comparing se_svn with ACM Header se_svn
TBOOT: se_svn is equal to ACM se_svn
TBOOT: reading Verified Launch Policy from TPM NV...
TBOOT: TPM: fail to get public data of 0x01200001 in TPM NV
TBOOT: 	:reading failed
TBOOT: reading Launch Control Policy from TPM NV...
TBOOT: TPM: fail to get public data of 0x01400001 in TPM NV
TBOOT: 	:reading failed
TBOOT: failed to read policy from TPM NV, using default
TBOOT: policy:
TBOOT: 	 version: 2
TBOOT: 	 policy_type: TB_POLTYPE_CONT_NON_FATAL
TBOOT: 	 hash_alg: TB_HALG_SHA1
TBOOT: 	 policy_control: 00000001 (EXTEND_PCR17)
TBOOT: 	 num_entries: 3
TBOOT: 	 policy entry[0]:
TBOOT: 		 mod_num: 0
TBOOT: 		 pcr: none
TBOOT: 		 hash_type: TB_HTYPE_ANY
TBOOT: 		 num_hashes: 0
TBOOT: 	 policy entry[1]:
TBOOT: 		 mod_num: any
TBOOT: 		 pcr: 19
TBOOT: 		 hash_type: TB_HTYPE_ANY
TBOOT: 		 num_hashes: 0
TBOOT: 	 policy entry[2]:
TBOOT: 		 mod_num: nv_raw
		 nv_index: 40000010
TBOOT: 		 pcr: 22
TBOOT: 		 hash_type: TB_HTYPE_ANY
TBOOT: 		 num_hashes: 0
TBOOT: no policy in TPM NV.
TBOOT: IA32_FEATURE_CONTROL_MSR: 0000ff07
TBOOT: CPU is SMX-capable
TBOOT: CPU is VMX-capable
TBOOT: SMX is enabled
TBOOT: TXT chipset and all needed capabilities present
TBOOT: TXT.ERRORCODE: 0xc0007051
TBOOT: AC module error : acm_type=0x1, progress=0x05, error=0x1c
TBOOT: TXT.ESTS: 0x0
TBOOT: TXT.E2STS: 0xc
TBOOT: IA32_FEATURE_CONTROL_MSR: 0000ff07
TBOOT: CPU is SMX-capable
TBOOT: CPU is VMX-capable
TBOOT: SMX is enabled
TBOOT: TXT chipset and all needed capabilities present
TBOOT: TXT.HEAP.BASE: 0x76f20000
TBOOT: TXT.HEAP.SIZE: 0xe0000 (917504)
TBOOT: unsupported BIOS data version (6)
TBOOT: bios_data (@0x76f20008, 0x56):
TBOOT: 	 version: 6
TBOOT: 	 bios_sinit_size: 0x0 (0)
TBOOT: 	 lcp_pd_base: 0x0
TBOOT: 	 lcp_pd_size: 0x0 (0)
TBOOT: 	 num_logical_procs: 8
TBOOT: 	 flags: 0x200000000
TBOOT: 	 ext_data_elts[]:
TBOOT: 		 BIOS_SPEC_VER:
TBOOT: 		     major: 0x2
TBOOT: 		     minor: 0x1
TBOOT: 		     rev: 0x0
TBOOT: 		 ACM:
TBOOT: 		     num_acms: 1
TBOOT: 		     acm_addrs[0]: 0xffe42000
TBOOT: IA32_FEATURE_CONTROL_MSR: 0000ff07
TBOOT: CPU is SMX-capable
TBOOT: CPU is VMX-capable
TBOOT: SMX is enabled
TBOOT: TXT chipset and all needed capabilities present
TBOOT: CR0 and EFLAGS OK
TBOOT: supports preserving machine check errors
TBOOT: CPU support processor-based S-CRTM
TBOOT: CPU is ready for SENTER
TBOOT: checking previous errors on the last boot.
	last boot has error.
TBOOT: TPM: TPM 2.0 FIFO interface is active...
TBOOT: file addresses:
TBOOT: 	 &_start=0x804000
TBOOT: 	 &_end=0xb57ca0
TBOOT: 	 &_mle_start=0x804000
TBOOT: 	 &_mle_end=0x83b000
TBOOT: 	 &_post_launch_entry=0x804010
TBOOT: 	 &_txt_wakeup=0x804200
TBOOT: 	 &g_mle_hdr=0x81e960
TBOOT: MLE header:
TBOOT: 	 uuid={0x9082ac5a, 0x476f, 0x74a7, 0x5c0f,
		{0x55, 0xa2, 0xcb, 0x51, 0xb6, 0x42}}
TBOOT: 	 length=34
TBOOT: 	 version=00020001
TBOOT: 	 entry_point=00000010
TBOOT: 	 first_valid_page=00000000
TBOOT: 	 mle_start_off=4000
TBOOT: 	 mle_end_off=3b000
TBOOT: 	 capabilities: 0x00000227
TBOOT: 	     rlp_wake_getsec: 1
TBOOT: 	     rlp_wake_monitor: 1
TBOOT: 	     ecx_pgtbl: 1
TBOOT: 	     stm: 0
TBOOT: 	     pcr_map_no_legacy: 0
TBOOT: 	     pcr_map_da: 1
TBOOT: 	     platform_type: 0
TBOOT: 	     max_phy_addr: 0
TBOOT: 	     tcg_event_log_format: 1
TBOOT: MLE start=0x804000, end=0x83b000, size=0x37000
TBOOT: ptab_size=3000, ptab_base=0x801000
TBOOT: TXT.HEAP.BASE: 0x76f20000
TBOOT: TXT.HEAP.SIZE: 0xe0000 (917504)
TBOOT: unsupported BIOS data version (6)
TBOOT: bios_data (@0x76f20008, 0x56):
TBOOT: 	 version: 6
TBOOT: 	 bios_sinit_size: 0x0 (0)
TBOOT: 	 lcp_pd_base: 0x0
TBOOT: 	 lcp_pd_size: 0x0 (0)
TBOOT: 	 num_logical_procs: 8
TBOOT: 	 flags: 0x200000000
TBOOT: 	 ext_data_elts[]:
TBOOT: 		 BIOS_SPEC_VER:
TBOOT: 		     major: 0x2
TBOOT: 		     minor: 0x1
TBOOT: 		     rev: 0x0
TBOOT: 		 ACM:
TBOOT: 		     num_acms: 1
TBOOT: 		     acm_addrs[0]: 0xffe42000
TBOOT: discarding RAM above reserved regions: 0x5d4e3000 - 0x5ef88000
TBOOT: discarding RAM above reserved regions: 0x5f888000 - 0x75a9f000
TBOOT: discarding RAM above reserved regions: 0x76bff000 - 0x76c00000
TBOOT: min_lo_ram: 0x0, max_lo_ram: 0x5d4e1000
TBOOT: min_hi_ram: 0x100000000, max_hi_ram: 0x47e000000
TBOOT: no LCP module found
TBOOT: SINIT ACM supports TCG compliant TPM 2.0 event log format,
tcg_event_log_format = 1 
TBOOT: TCG compliant TPM 2.0 event log descriptor:
TBOOT: 	 phys_addr = 0x76F30176
TBOOT: 	 allcoated_event_container_size = 0x2000 
TBOOT: 	 first_record_offset = 0x0 
TBOOT: 	 next_record_offset = 0x0 
TBOOT: heap_ext_data_element TYPE = 8 
TBOOT: heap_ext_data_element SIZE = 28 
TBOOT: os_sinit_data (@0x76f3517e, 0x88):
TBOOT: 	 version: 7
TBOOT: 	 flags: 1
TBOOT: 	 mle_ptab: 0x801000
TBOOT: 	 mle_size: 0x37000 (225280)
TBOOT: 	 mle_hdr_base: 0x1a960
TBOOT: 	 vtd_pmr_lo_base: 0x0
TBOOT: 	 vtd_pmr_lo_size: 0x5d400000
TBOOT: 	 vtd_pmr_hi_base: 0x100000000
TBOOT: 	 vtd_pmr_hi_size: 0x37e000000
TBOOT: 	 lcp_po_base: 0x0
TBOOT: 	 lcp_po_size: 0x0 (0)
TBOOT: 	 capabilities: 0x00000202
TBOOT: 	     rlp_wake_getsec: 0
TBOOT: 	     rlp_wake_monitor: 1
TBOOT: 	     ecx_pgtbl: 0
TBOOT: 	     stm: 0
TBOOT: 	     pcr_map_no_legacy: 0
TBOOT: 	     pcr_map_da: 0
TBOOT: 	     platform_type: 0
TBOOT: 	     max_phy_addr: 0
TBOOT: 	     tcg_event_log_format: 1
TBOOT: 	 efi_rsdt_ptr: 0x83fe00
TBOOT: 	 ext_data_elts[]:
TBOOT: 	 TCG EVENT_LOG_PTR:
TBOOT: 		       type: 8
TBOOT: 		       size: 28
TBOOT: 	 TCG Event Log Descrption:
TBOOT: 	     allcoated_event_container_size: 8192
TBOOT: 	                       EventsOffset: [0,0]
TBOOT: 			 No Event Log found.
TBOOT: setting MTRRs for acmod: base=0x76ed0000, size=0x20000, num_pages=32
TBOOT: The maximum allowed MTRR range size=16 Pages 
TBOOT: executing GETSEC[SENTER]...

-----Original Message-----
From: Haskins, Robert (US N-INCADENCE STRATEGIC SOLUTIONS CORPORATION) 
Sent: Monday, September 9, 2019 9:40 AM
To: 'greg@idfusion.net' <greg@idfusion.net>
Cc: 'tboot-devel@lists.sourceforge.net' <tboot-devel@lists.sourceforge.net>
Subject: RE: EXTERNAL: Re: [tboot-devel] GETSEC[SENTER]....and then reset

Thanks for your response! My responses are here:

1) We do have serial logging setup and working. I will work to get the logs
off the machine.
2) The platform is TPM2.
3) I am not sure what you mean by this question. Are you referring to index
0x1c10103? (see https://sourceforge.net/p/tboot/mailman/message/35551544/)
4) We are not implementing any launch control policy.

Thank you for your help!

-----Original Message-----
From: Dr. Greg <greg@idfusion.net> 
Sent: Saturday, September 7, 2019 5:33 PM
To: Haskins, Robert (US N-INCADENCE STRATEGIC SOLUTIONS CORPORATION)
<robert.haskins@lmco.com>
Cc: tboot-devel@lists.sourceforge.net
Subject: EXTERNAL: Re: [tboot-devel] GETSEC[SENTER]....and then reset

On Tue, Sep 03, 2019 at 08:37:06PM +0000, Haskins, Robert wrote:

Good afternoon Robert, I hope your weekend is going well.

> I have a Getac S410 G2 that I am trying to get TBOOT working on under 
> a vanilla RHEL 7.6 O/S with TBOOT 1.9.10. The TBOOT startup looks fine:
> 
> TXT.ERRCODE: 0x0
> 
> SINIT match on "the 6th_7th_gen_i5_i7-SINIT_79.bin" file
> 
> "last boot has no error"
> 
> Once it gets to GETSEC[SENTER], it just resets back to grub/startup
screen.
> 
> What am I doing wrong?

It could be a plethora of things.

It would be helpful to have logs from the first phase execution of tboot.
Since tboot is generating a hard platform reset you will need serial logging
or something else to capture the logs unless you are able to get memory
based logging to work.

Is the platform TPM1 or TPM2?  Given it is i6/i7 I'm assuming the latter.

Are the required TPM NVRAM locations configured?

Are you attempting to implement any type of launch control policy?

Logs and answers to the above questions should help get a conversation
started.

Have a good evening.

Dr. Greg

As always,
Dr. Greg Wettstein, Ph.D, Worker
IDfusion, LLC               SGX secured infrastructure and
4206 N. 19th Ave.           autonomously self-defensive platforms.
Fargo, ND  58102
PH: 701-281-1686            EMAIL: greg@idfusion.net
----------------------------------------------------------------------------
--
"Sweeny's Law: The length of a progress report is inversely proportional  to
the amount of progress."

------=_NextPart_000_02C1_01D56757.63B48BD0
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"

MIAGCSqGSIb3DQEHAqCAMIACAQExCzAJBgUrDgMCGgUAMIAGCSqGSIb3DQEHAQAAoIIYbjCCBUgw
ggOwoAMCAQICED0iwxgXQWuDTuHIobIkRkgwDQYJKoZIhvcNAQELBQAwgbQxCzAJBgNVBAYTAlVT
MREwDwYDVQQIEwhDb2xvcmFkbzEPMA0GA1UEBxMGRGVudmVyMSQwIgYDVQQKExtMb2NraGVlZCBN
YXJ0aW4gQ29ycG9yYXRpb24xIjAgBgNVBAsTGUNlcnRpZmljYXRpb24gQXV0aG9yaXRpZXMxNzA1
BgNVBAMTLkxvY2toZWVkIE1hcnRpbiBSb290IENlcnRpZmljYXRpb24gQXV0aG9yaXR5IDMwHhcN
MTUwOTA5MTkxMzUzWhcNNDAwOTA5MTkxODAyWjCBtDELMAkGA1UEBhMCVVMxETAPBgNVBAgTCENv
bG9yYWRvMQ8wDQYDVQQHEwZEZW52ZXIxJDAiBgNVBAoTG0xvY2toZWVkIE1hcnRpbiBDb3Jwb3Jh
dGlvbjEiMCAGA1UECxMZQ2VydGlmaWNhdGlvbiBBdXRob3JpdGllczE3MDUGA1UEAxMuTG9ja2hl
ZWQgTWFydGluIFJvb3QgQ2VydGlmaWNhdGlvbiBBdXRob3JpdHkgMzCCAaIwDQYJKoZIhvcNAQEB
BQADggGPADCCAYoCggGBAJ8SncFQtUArHQZfhqRa1B0xJnntx8d5gH2pvnNIehp7s8hwjrWQFeYU
MGqRfjkriQJ1L64vr5szzixJNt2oQcU8noR/ZgLGaUQylYgpeszqcQahPBS+p3qNr/Fw3idiNURb
cFyoRXz8mlH5DcjNm5Ol1FjaGaklJ5dXBBg4j0F0wJnGkDx5/2SJFznQer/9Tz2l6fxE41AFGipR
yGcqYPjlpeiNwFWXwjCRUCLFeDJD+EqTnJ3rj5UNpw5aFG4nkegAckQBWSxRFywNuwVPvPj6743j
fZPdGlDl9T6FIcGQ1GItvRg3H3+g5dNXOWy1JNnDohxmF+vSyn/peBicwt0INbyycd8p0oihuoCJ
OJ82XkerKBQRjD2vifK/8RLbwDtZHc3uWLKAjb0ls+VYNOeI1MGp0nFEz60E7zGvVyWSXMS4RUNd
EmzINJLAvtuJZylVBAfzxhC19ZytsGERjr+rbDprhQWkz5SOkeytV+xvD5Tfekv67CAqBS7BnnYQ
+wIDAQABo1QwUjAOBgNVHQ8BAf8EBAMCAcYwDwYDVR0TAQH/BAUwAwEB/zAdBgNVHQ4EFgQUagkc
j+L7W4vsq23LidV5X1vMyK4wEAYJKwYBBAGCNxUBBAMCAQAwDQYJKoZIhvcNAQELBQADggGBAH6c
JT1R9VIUX0/LrStRdMlvBZDTznP0oDLauicKbIewhlgvFdW0xJsmdWOO++ZKJ++q0tJdl8UXSrUv
Be7GBXG5FvHkMD2bulmbURz8hoFmFmgQAUEvPRtMQvRINuIww790miwc1vKyh5PLghKj14FX14pU
ckCP2AKjLLZ2iwLcz2av1eUBbneuQVEiyIO8ahXdi+jtwFlKfS6PtWVtlh13bwr8JaXMaD69cRGo
Ov6M+jGHHSTW0kWIL10yCdzA5MxOG5WJWFG5fJTS4yWManlAnJNO9ltNbc+WPI+RNLdyeoJG/MGJ
F3yeHg3gdViVrAOAzwx56lejBg55yUFudvh3hwyYYeQB8pRqA+Nx1t+uZypqhQrYat6ujv18WUHE
L7wgZcp0zbRJfAfAq74xbpljsvHsW5QV0un/pQv7egAXxYuFiVYKxf67yNXu6fDebr3yMWNQwLN3
LyYu/T2GsKnS4F2UUKXhdoK72TWPEOlkv0WWBzd2ZMHuqVde9FvwaDCCBaIwggQKoAMCAQICE0gA
AAApE/aPZV6t5vkAAAAAACkwDQYJKoZIhvcNAQELBQAwgbQxCzAJBgNVBAYTAlVTMREwDwYDVQQI
EwhDb2xvcmFkbzEPMA0GA1UEBxMGRGVudmVyMSQwIgYDVQQKExtMb2NraGVlZCBNYXJ0aW4gQ29y
cG9yYXRpb24xIjAgBgNVBAsTGUNlcnRpZmljYXRpb24gQXV0aG9yaXRpZXMxNzA1BgNVBAMTLkxv
Y2toZWVkIE1hcnRpbiBSb290IENlcnRpZmljYXRpb24gQXV0aG9yaXR5IDMwHhcNMTkwMjIwMDA0
NTIyWhcNMjUwOTEwMDA1NTIyWjCBjjELMAkGA1UEBhMCVVMxJDAiBgNVBAoTG0xvY2toZWVkIE1h
cnRpbiBDb3Jwb3JhdGlvbjEiMCAGA1UECxMZQ2VydGlmaWNhdGlvbiBBdXRob3JpdGllczE1MDMG
A1UEAxMsTG9ja2hlZWQgTWFydGluIENlcnRpZmljYXRpb24gQXV0aG9yaXR5IDcgRzIwggEiMA0G
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
dHBzOi8vY3JsLmV4dGVybmFsLmxtY28uY29tL2NybC9jZXJ0dXBkL2RvY3MvTE1DUC5wZGYAMB0G
A1UdDgQWBBR/MsVjIyPSxXFdD8p8UC9BPNBUmzAfBgNVHSMEGDAWgBTe3150PhWwev7Kk7mGxqpD
MbLbqzB0BgNVHR8EbTBrMGmgZ6BlhmNodHRwOi8vY3JsLmV4dGVybmFsLmxtY28uY29tL2NybC9j
ZXJ0dXBkL0xvY2toZWVkJTIwTWFydGluJTIwQ2VydGlmaWNhdGlvbiUyMEF1dGhvcml0eSUyMDcl
MjBHMi5jcmwwggFSBggrBgEFBQcBAQSCAUQwggFAMIGFBggrBgEFBQcwAoZ5aHR0cDovL2NybC5l
eHRlcm5hbC5sbWNvLmNvbS9jcmwvY2VydHVwZC91c2Fwa2NzMDcudXMubG1jby5jb21fTG9ja2hl
ZWQlMjBNYXJ0aW4lMjBDZXJ0aWZpY2F0aW9uJTIwQXV0aG9yaXR5JTIwNyUyMEcyLnA3YzCBhQYI
KwYBBQUHMAKGeWh0dHA6Ly9jcmwuZXh0ZXJuYWwubG1jby5jb20vY3JsL2NlcnR1cGQvdXNhcGtj
czA3LnVzLmxtY28uY29tX0xvY2toZWVkJTIwTWFydGluJTIwQ2VydGlmaWNhdGlvbiUyMEF1dGhv
cml0eSUyMDclMjBHMi5jcnQwLgYIKwYBBQUHMAGGImh0dHA6Ly9vY3NwLmV4dGVybmFsLmxtY28u
Y29tL29jc3AwRgYDVR0RBD8wPaAiBgorBgEEAYI3FAIDoBQMEm41NDQ1YUB1cy5sbWNvLmNvbYEX
cm9iZXJ0Lmhhc2tpbnNAbG1jby5jb20wDQYJKoZIhvcNAQELBQADggEBAFbXIEGHjH00A4T+BHmp
FAgCdFK09w6SiidIgJWpKFOInSB3qStj/cyrmt8+UHCtabm93cWXtIzL3Yv8V209aBnSLC0DzBdx
fYsmDNwzO0cvjnwH/M9Ptztw6j9WOozgPrt9QFr9ftjncy7QTiladuSwgtlWFfVZ2bfCmGX2cdsM
mDNhdtfS0mlXiPtkYiNN5Af9NguVrtL8aol+5zd98c0AGWvhmsV3NZ9JdZVqC1QgzEK+nIJNq9Ll
brV+X6Sk2eWa6dwd6Cj6b1pqmMYkWDRg6xgO12Yo9TQVnXn9BEKK4v8j/QSl/GFig7kuHDi4Ed0Z
7G2+RVd7YS9yOAzEq44wggbAMIIFqKADAgECAhMTAAVoB3M+k44vsmd1AAAABWgHMA0GCSqGSIb3
DQEBCwUAMIGOMQswCQYDVQQGEwJVUzEkMCIGA1UEChMbTG9ja2hlZWQgTWFydGluIENvcnBvcmF0
aW9uMSIwIAYDVQQLExlDZXJ0aWZpY2F0aW9uIEF1dGhvcml0aWVzMTUwMwYDVQQDEyxMb2NraGVl
ZCBNYXJ0aW4gQ2VydGlmaWNhdGlvbiBBdXRob3JpdHkgNyBHMjAeFw0xOTA0MDIxNjU5MjhaFw0y
MDA0MDExNjU5MjhaMHcxEzARBgoJkiaJk/IsZAEZFgNjb20xFDASBgoJkiaJk/IsZAEZFgRsbWNv
MRIwEAYKCZImiZPyLGQBGRYCdXMxDDAKBgNVBAsTA01TMjEOMAwGA1UECxMFVXNlcnMxGDAWBgNV
BAMTD0hhc2tpbnMsIFJvYmVydDCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAORUs26w
ht3zTl8ZibTFEo3DAw4ZFQR+ektiZD2VdnG6Ei2JDLU07cMKWfG6BitSHqOfuIVZohru5+Y6babS
zk7c9mSCZTAiNL5dWcii/zslAUeRs+BfYYvQp7cSEVBWyI92zBPcUevFW46MVABhTbU6wnzud19B
nm02yvqycJpbuovLhUDTM3xddRsRuOLxxcmVPWZzLZeL3djN+6c16yDwOyKjvDbz3yrwwLksWBSb
gKhT+gw6wClRyUqHsFAHVI2IZxwKnbN3Ms9VNc6rHD+7SO63g5H8PGi1hgwr0c7kLf9ytyZPojbm
vjZyfIo7ZDt3N0hLxfoAS+s4zmU/NdkCAwEAAaOCAyswggMnMD4GCSsGAQQBgjcVBwQxMC8GJysG
AQQBgjcVCIH/jRmD4rNLhd2TKIfS8EOCh6JBgTaE0rcDg/nwegIBZAIBCzAfBgNVHSUEGDAWBgor
BgEEAYI3CgMMBggrBgEFBQcDBDAOBgNVHQ8BAf8EBAMCBsAwYAYDVR0gBFkwVzBVBgsrBgEEAWdk
AQICBTBGMEQGCCsGAQUFBwIBFjhodHRwczovL2NybC5leHRlcm5hbC5sbWNvLmNvbS9jcmwvY2Vy
dHVwZC9kb2NzL0xNQ1AucGRmADAdBgNVHQ4EFgQU19DxyKjUWZjgpi3jGI6f3UMmlFAwHwYDVR0j
BBgwFoAU3t9edD4VsHr+ypO5hsaqQzGy26swdAYDVR0fBG0wazBpoGegZYZjaHR0cDovL2NybC5l
eHRlcm5hbC5sbWNvLmNvbS9jcmwvY2VydHVwZC9Mb2NraGVlZCUyME1hcnRpbiUyMENlcnRpZmlj
YXRpb24lMjBBdXRob3JpdHklMjA3JTIwRzIuY3JsMIIBUgYIKwYBBQUHAQEEggFEMIIBQDCBhQYI
KwYBBQUHMAKGeWh0dHA6Ly9jcmwuZXh0ZXJuYWwubG1jby5jb20vY3JsL2NlcnR1cGQvdXNhcGtj
czA3LnVzLmxtY28uY29tX0xvY2toZWVkJTIwTWFydGluJTIwQ2VydGlmaWNhdGlvbiUyMEF1dGhv
cml0eSUyMDclMjBHMi5wN2MwgYUGCCsGAQUFBzAChnlodHRwOi8vY3JsLmV4dGVybmFsLmxtY28u
Y29tL2NybC9jZXJ0dXBkL3VzYXBrY3MwNy51cy5sbWNvLmNvbV9Mb2NraGVlZCUyME1hcnRpbiUy
MENlcnRpZmljYXRpb24lMjBBdXRob3JpdHklMjA3JTIwRzIuY3J0MC4GCCsGAQUFBzABhiJodHRw
Oi8vb2NzcC5leHRlcm5hbC5sbWNvLmNvbS9vY3NwMEYGA1UdEQQ/MD2gIgYKKwYBBAGCNxQCA6AU
DBJuNTQ0NWFAdXMubG1jby5jb22BF3JvYmVydC5oYXNraW5zQGxtY28uY29tMA0GCSqGSIb3DQEB
CwUAA4IBAQBReZFQ0lIxX5uJv5sh/tN4w+F9tPmFHZIqREULbWpfavQBxYY52IcdbDflDTVFmNCg
ZEN7gib8mlP6F7vpGPh5GpVBVWWo0koI0FEhxl5jbzYeizjpY+l3q5SMewAb17WI1rIqLGvU8Zql
GpkjhvQi818EnWCGQ8Xr59ClhLdsChyHT33b6j7cBGrD3Ff6mcDPWHsXiGfgt/dCrIsMPo37P0xI
7N8YwEeuUVKcYMnfVQl6Ei5GTQ0lDkIVSxuV9U469clhX+KdTVgfcesi4f0TdavirQrkz7hC3/vX
Z6wLd6bH7TBD5od6CyRciiCgLBj28ovN7OxehUGmnSwoTEhmMYIEOzCCBDcCAQEwgaYwgY4xCzAJ
BgNVBAYTAlVTMSQwIgYDVQQKExtMb2NraGVlZCBNYXJ0aW4gQ29ycG9yYXRpb24xIjAgBgNVBAsT
GUNlcnRpZmljYXRpb24gQXV0aG9yaXRpZXMxNTAzBgNVBAMTLExvY2toZWVkIE1hcnRpbiBDZXJ0
aWZpY2F0aW9uIEF1dGhvcml0eSA3IEcyAhMTAAVoB3M+k44vsmd1AAAABWgHMAkGBSsOAwIaBQCg
ggJpMBgGCSqGSIb3DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTE5MDkxMDAxNDE1
MFowIwYJKoZIhvcNAQkEMRYEFJUigpIoiLxV75E033u8umk7mfiCMIGTBgkqhkiG9w0BCQ8xgYUw
gYIwCwYJYIZIAWUDBAEqMAsGCWCGSAFlAwQBFjAKBggqhkiG9w0DBzALBglghkgBZQMEAQIwDgYI
KoZIhvcNAwICAgCAMA0GCCqGSIb3DQMCAgFAMAcGBSsOAwIaMAsGCWCGSAFlAwQCAzALBglghkgB
ZQMEAgIwCwYJYIZIAWUDBAIBMIG3BgkrBgEEAYI3EAQxgakwgaYwgY4xCzAJBgNVBAYTAlVTMSQw
IgYDVQQKExtMb2NraGVlZCBNYXJ0aW4gQ29ycG9yYXRpb24xIjAgBgNVBAsTGUNlcnRpZmljYXRp
b24gQXV0aG9yaXRpZXMxNTAzBgNVBAMTLExvY2toZWVkIE1hcnRpbiBDZXJ0aWZpY2F0aW9uIEF1
dGhvcml0eSA3IEcyAhMTAAVn3SQ+Al3H/XaCAAAABWfdMIG5BgsqhkiG9w0BCRACCzGBqaCBpjCB
jjELMAkGA1UEBhMCVVMxJDAiBgNVBAoTG0xvY2toZWVkIE1hcnRpbiBDb3Jwb3JhdGlvbjEiMCAG
A1UECxMZQ2VydGlmaWNhdGlvbiBBdXRob3JpdGllczE1MDMGA1UEAxMsTG9ja2hlZWQgTWFydGlu
IENlcnRpZmljYXRpb24gQXV0aG9yaXR5IDcgRzICExMABWfdJD4CXcf9doIAAAAFZ90wDQYJKoZI
hvcNAQEBBQAEggEAn71yJzfVpcS4qNv9mM/JNNbJ2XK1JS14m9qR7/TPNFwT5qjk2lAFt4boi0Ob
cYHkWEkwX5clMYP9UbW1krXLxAQTyaq5oIRuLGCMeZ4TUE6WYfZR4TAVYplPER67wLNdjEoHcKlG
KATMsKzkFupli0v/RXuW9Mdk/u9ejbGHegRTHHYKxifQyuzmjeU6VLCNNUYwbrYpWvdH5A1bH+fL
+O3GJJG0TBdetHKezae3xIwIwmMcEAQGz69vNHIBQusu1z/xxEsky4TN2s4P+Fz6ss67BPorx5sp
NbMgYVRD23Ond2fQyZK+F3SXfLPMsNGOIMSpYi7T4dx3zyMNmbcrCQAAAAAAAA==

------=_NextPart_000_02C1_01D56757.63B48BD0--


--===============2633117938981536059==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============2633117938981536059==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel

--===============2633117938981536059==--

