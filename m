Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BC36B19A095
	for <lists+tboot-devel@lfdr.de>; Tue, 31 Mar 2020 23:17:14 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1jJOFr-0001il-95; Tue, 31 Mar 2020 21:17:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lindi@kapsi.fi>) id 1jJOFq-0001ie-BS
 for tboot-devel@lists.sourceforge.net; Tue, 31 Mar 2020 21:17:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6oYEvzykJUApO0bObx5udSydvzi9RJXTwYIphC/bR/E=; b=FPiyB1D5+yYAWjhyaZM5DlIQqD
 4ATZlGMqCla2YLZUg3zxjd8+6SIZeiHPvrayXf0o3XGuhAA+kqeZDVNPRAEnx5wRrlMiz71U8iPCy
 PtFK2uj7q4RZeZDjxm3yplOIdJwiDqp+5dMPWXdDxzQR8bDtc2VPAdIFAeIqZTIQycKY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:To:From:Date:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=6oYEvzykJUApO0bObx5udSydvzi9RJXTwYIphC/bR/E=; b=A
 XqwKPSjy5wlODGYzl+pTGwvUeIQJKlBVJmqAYYPCTzVLDrJrfeNb6Om8XyiXjcsPBY6jlf5TReqhP
 XVrZOT54xFA1NwHsoBa7R5jLHt8qcA+KGk1mi4E1p4PKd8MaiEENn6ImoNQOVrXrCo1F9Zj59jH0g
 8mxtNzb93sGr11WI=;
Received: from mail.kapsi.fi ([91.232.154.25])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jJOFn-00EZXO-8N
 for tboot-devel@lists.sourceforge.net; Tue, 31 Mar 2020 21:17:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=kapsi.fi;
 s=20161220; h=Content-Type:MIME-Version:Message-ID:Subject:To:From:Date:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6oYEvzykJUApO0bObx5udSydvzi9RJXTwYIphC/bR/E=; b=AEWXTrDtq0vj8C5DpA8HQr0MAR
 vjK2KznRYDp5hiIBljRM6xUbwqxEy8oY+3FqL4LZ6SF6QMUPwFNtScA3yKHs6aabB/Ufgih7UBFVk
 JKloXhvPYAKSTrPqfB5Byit06hrfaRt9a243IBRLlNXAfh6VTE/deU3sF9Zvo6fB3U8PB0EOY+sIS
 My8q3rN8HkIX99hm2+0YbLI9IYjD0kYe8MqYX+Ze0nlRTa5r2ZJ6FgT+xr1mdJn90NXmRvAe3inSk
 luTXPicDrM0B/lmSU/cftIPr6HMlC8mqO9KxyuVN/m0k/B7Oeo/iWja/UYFzKE9mR6YD+mTS4yOKv
 AHmle+EQ==;
Received: from 82-181-208-90.bb.dnainternet.fi ([82.181.208.90] helo=mail.home)
 by mail.kapsi.fi with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <timo.lindfors@iki.fi>)
 id 1jJNTa-0007gG-7C
 for tboot-devel@lists.sourceforge.net; Tue, 31 Mar 2020 23:27:10 +0300
Received: from localhost ([127.0.0.1]) by mail.home with esmtp (Exim 4.89)
 (envelope-from <timo.lindfors@iki.fi>) id 1jJNTV-00058j-Qd
 for tboot-devel@lists.sourceforge.net; Tue, 31 Mar 2020 23:27:05 +0300
Date: Tue, 31 Mar 2020 23:27:05 +0300 (EEST)
From: Timo Lindfors <timo.lindfors@iki.fi>
To: tboot-devel@lists.sourceforge.net
Message-ID: <alpine.DEB.2.20.2003312317470.19721@mail.home>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 82.181.208.90
X-SA-Exim-Mail-From: timo.lindfors@iki.fi
X-SA-Exim-Scanned: No (on mail.kapsi.fi); SAEximRunCond expanded to false
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1jJOFn-00EZXO-8N
Subject: [tboot-devel] tboot not picking the right ACM module on Dell
 Latitude E5470
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

if I have the following ACM modules in /boot

018c4c0bc64cad7c939061e111937849f61af395c9981a03ac4a10083058aa5d 
4th_gen_i5_i7_SINIT_75.BIN
0848adfea4c9479b1cd096aeda1d4a3afe309dd45ca43a1e8d8b3cf972c9c14f
6th_7th_gen_i5_i7-SINIT_79.bin
193fc2b763bae1b1eebaf15452b395fd5153043190eb61dd86e246914ee7d80e
6th_gen_i5_i7_SINIT_71.BIN

update-grub generates a configuration file like

echo    'Loading tboot 1.9.7 ...'
          multiboot2      /tboot.gz logging=serial,memory
          echo    'Loading Linux...
          module2 /vmlinuz...
          echo    'Loading initial ramdisk ...'
          module2 /initrd.img...
          echo    'Loading sinit 4th_gen_i5_i7_SINIT_75.BIN ...'
          module2 /4th_gen_i5_i7_SINIT_75.BIN
          echo    'Loading sinit 6th_7th_gen_i5_i7-SINIT_79.bin ...'
          module2 /6th_7th_gen_i5_i7-SINIT_79.bin
          echo    'Loading sinit 6th_gen_i5_i7_SINIT_71.BIN ...'
          module2 /6th_gen_i5_i7_SINIT_71.BIN

Unfortunately if modules are ordered like this the machine will just 
reboot after a while.

The machine boots correctly if I order "6th_gen" to be before 
"6th_7th_gen" in the above list.

I'm not quite sure which part should be fixed here:

1) Is this a bug in the file 6th_7th_gen? If yes, should it be somehow 
blacklisted and/or documented so that users would avoid it?

2) Is this a bug in tboot's logic that tries to pick a matching module? I 
could not see anything wrong in the code.

3) Should we fix this in the shell script that generates the configuration 
file so that it orders the files "correctly"?


Here's the cpu information and tboot version

cpu:
processor    : 0
vendor_id    : GenuineIntel
cpu family    : 6
model        : 94
model name    : Intel(R) Core(TM) i7-6820HQ CPU @ 2.70GHz
stepping    : 3
microcode    : 0xcc
cpu MHz        : 844.213
cache size    : 8192 KB
physical id    : 0
siblings    : 8
core id        : 0
cpu cores    : 4
apicid        : 0
initial apicid    : 0
fpu        : yes
fpu_exception    : yes
cpuid level    : 22
wp        : yes
flags        : fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca
cmov pat pse36 clflush dts acpi mmx fxsr sse sse2 ss ht tm pbe syscall
nx pdpe1gb rdtscp lm constant_tsc art arch_perfmon pebs bts rep_good
nopl xtopology nonstop_tsc cpuid aperfmperf tsc_known_freq pni pclmulqdq
dtes64 monitor ds_cpl vmx smx est tm2 ssse3 sdbg fma cx16 xtpr pdcm pcid
sse4_1 sse4_2 x2apic movbe popcnt tsc_deadline_timer aes xsave avx f16c
rdrand lahf_lm abm 3dnowprefetch cpuid_fault epb invpcid_single pti ssbd
ibrs ibpb stibp tpr_shadow vnmi flexpriority ept vpid ept_ad fsgsbase
tsc_adjust bmi1 hle avx2 smep bmi2 erms invpcid rtm mpx rdseed adx smap
clflushopt intel_pt xsaveopt xsavec xgetbv1 xsaves dtherm ida arat pln
pts hwp hwp_notify hwp_act_window hwp_epp md_clear flush_l1d
bugs        : cpu_meltdown spectre_v1 spectre_v2 spec_store_bypass l1tf
mds swapgs taa itlb_multihit
bogomips    : 5424.00
clflush size    : 64
cache_alignment    : 64
address sizes    : 39 bits physical, 48 bits virtual
power management:

ii  tboot          1.9.7-0ubuntu1 amd64        Trusted Boot (tboot)


best regards,
Timo Lindfors



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
