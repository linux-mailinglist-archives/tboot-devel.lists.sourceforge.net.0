Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 156C5CB3B8F
	for <lists+tboot-devel@lfdr.de>; Wed, 10 Dec 2025 19:11:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Content-Transfer-Encoding:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:References:To:MIME-Version:Date:
	Message-ID:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uTno/AkkGnPqD85LzjLq5Q6nRTwk5ixWM4D46VPadok=; b=fVtxi8Rbe70UNvQEx/nXATmHMe
	W8/JE0iatvpAb6AXAwG38UXgJVsyj8yTJCspvAK/36w4Lm6dTrtX/DpztvKCIqDauiiZ7WFeDcgK2
	ltDnBLvoqhPLf7T9a6WW55m7Ah77/AwUGY/UfdaJQN8BwSh6+Mf97RJ5EMLHEcVnI2eE=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1vTOed-00005x-T2;
	Wed, 10 Dec 2025 18:11:11 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tcamuso@redhat.com>) id 1vTOec-00005o-1O
 for tboot-devel@lists.sourceforge.net;
 Wed, 10 Dec 2025 18:11:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+JDXolFvYToa3N4Up5yZoz5aLabDxuH9KGdZibcWMIw=; b=nU4VhIqYvoh3V99rbhKuybnBEF
 s7FpOpZTG6gV3gdQkrKk+UfO+QMDDG967ApePvfEOAQeFeaTpsjJisSzCkQrEzeozvf+NPkAIjRP4
 dyn5Gg9TNypA1WrHlwZ5l4Sg4TcfqKjQUYcQ+A5LB1HkM8ptDdA+3aR4z3VC7owkzP84=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+JDXolFvYToa3N4Up5yZoz5aLabDxuH9KGdZibcWMIw=; b=JlwPunfB72OjUTlXEpSfMo1UjI
 klLx29YEO712Nh/HDaEqhwohQNqF+ns6QAZmKwzvLr258hzrEq+8YklFDPTVuFhjKS3EpFASW68sD
 YMki+Rw/a7gKs1dK6lc7wIz4EtuE9Mskl1aErnjlwIcaqfqzUA+UnmQNSHQ2HtgaCNBI=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vTOeX-0004Fa-O9 for tboot-devel@lists.sourceforge.net;
 Wed, 10 Dec 2025 18:11:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1765390254;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=+JDXolFvYToa3N4Up5yZoz5aLabDxuH9KGdZibcWMIw=;
 b=McpsIJLCe7pMGF2PMct/FzxVTHJM/8JAD6ZtTCH6/mg7nc/gtH1lyEcQ9VNGXf2ey0OBqG
 ImNTsj8ghdDdErQJBBT/f3LKjyE7has7lOwkvqknyiqIXGaMntgyWonxmLDoRdvjmeIpWr
 HbfTqcDIWYFmeXkGFSR+4oYaZZzSvAc=
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com
 [209.85.210.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-447-gWCt4uGfN9KAYA_LJNlEsw-1; Wed, 10 Dec 2025 13:10:53 -0500
X-MC-Unique: gWCt4uGfN9KAYA_LJNlEsw-1
X-Mimecast-MFC-AGG-ID: gWCt4uGfN9KAYA_LJNlEsw_1765390252
Received: by mail-pf1-f200.google.com with SMTP id
 d2e1a72fcca58-7b9090d9f2eso143294b3a.0
 for <tboot-devel@lists.sourceforge.net>; Wed, 10 Dec 2025 10:10:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1765390252; x=1765995052;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=+JDXolFvYToa3N4Up5yZoz5aLabDxuH9KGdZibcWMIw=;
 b=drtK77uJSfBu3nux/lQURynAVTN7TryNI44nteX/6eWcqEf7sFRHcU6jsK3RlGLsQz
 oB1TsnfoNJc9FnDHBnezAx6t7t2otf1WcNMQr1WPWBnPciU8KokBUmehVP7o4LZ1w6+1
 hmYobzVrZYPZdBWoeisdmofUxmJTwwhWa9hsZpDWoVr68WFKO/N3zlazrDt6ngNtskAl
 NmGAB5my6S1MZnBFJrr2pzjIebVlbO0KOCsq1dxBRBcU+KMdq5hscKBHqYKvPmQ73s/O
 Nq9biA1E5KV/B6WYXprpNXWeCWCyvIetWIW76t49TmvLPIYPhNNLBN6lziVq81dno0eO
 jJVg==
X-Forwarded-Encrypted: i=1;
 AJvYcCV3nOAKTKqQEBXguMzG1l1My7l+AyuEGv5kMvihe6swaSqbMLQb0uGzTGk4hVIESqbUYIK1PXPEMfFmEg==@lists.sourceforge.net
X-Gm-Message-State: AOJu0Yzmhor8Z0cteHwJPrIBO2iUWItyOIL4GMGY9FGeorzFXRWdFACy
 ubawAqweZkblz+QdEGc/MV/bh8cguUb43ToP0CNL1+eYLsvGybsko72jB6DRYfMtC9DvOk0bdrq
 Bb3fpDn6MO7CgJvoRRTD4UQws7cAZQzqQ06RTwGEhsnYs5yc1KpmB4Zo5NXKytFDuTHLKhHBD
X-Gm-Gg: ASbGncuCnk7NkocmFZVictj5pbL7qcyGVye3+nMoDsU9/VNJK7YJiOrVFQSp2u/HRFv
 fTQJBBlt4cIlIxj7rDe8nsFUrRsa22VmIV3Hf9SW2pdP8XN0CP7vd1SGaCfWQ8qeXHBy84AeD2a
 G171mI6Gchx6n2TWAWGLDkqztge7Q9hXt/ErjBagfj9rW84F2HYQCDFSyrtZvJixMCnHDSTgugm
 hk7LeqUSVutqkXULTN57Vh5344W6fCpr+pwqjFz+IknUuRPz/srl+ju6DkxoJHWLjYaBM3iW5vK
 xglRHEvnN01ZsxBwEliuRUFE4XL5E+xIWlxJevuiWqQrP1k8DAMXmxSW2sLOwQKGP7sPl/rWnz4
 v6itzEJwrkfFOdMZBmeX+9Ugn
X-Received: by 2002:a05:6a00:845:b0:792:574d:b12 with SMTP id
 d2e1a72fcca58-7f22d204db8mr3112120b3a.10.1765390251942; 
 Wed, 10 Dec 2025 10:10:51 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEYs6sCyW+pPWJZ7h+WItvNX+krQXSVqaQvfrO+4k5L5BJr149fn44WwXC1n26fGUofB/nBaA==
X-Received: by 2002:a05:6a00:845:b0:792:574d:b12 with SMTP id
 d2e1a72fcca58-7f22d204db8mr3112093b3a.10.1765390251513; 
 Wed, 10 Dec 2025 10:10:51 -0800 (PST)
Received: from [192.168.3.252] ([74.75.144.57])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-7f4c54802adsm177801b3a.60.2025.12.10.10.10.46
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 10 Dec 2025 10:10:50 -0800 (PST)
Message-ID: <acdc2b7f-8d2f-47b7-8324-01c060e8aa68@redhat.com>
Date: Wed, 10 Dec 2025 13:10:44 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Bagas Sanjaya <bagasdotme@gmail.com>, ning.sun@intel.com,
 tboot-devel@lists.sourceforge.net
References: <20251017073619.547993-1-michal.camacho.romero@linux.intel.com>
 <aST5ruhnbILZnoUO@archie.me>
In-Reply-To: <aST5ruhnbILZnoUO@archie.me>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: iZsRinw7OSRDZ3_a2EQyQGscZluKK3J0SmduV-S20dg_1765390252
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 11/24/2025 7:34 PM, Bagas Sanjaya wrote: > On Thu, Nov
 13, 2025 at 09:37:14AM -0500, Tony Camuso wrote: >> The tboot->shutdown_entry
 is effectively bios code and CET needs to be >> disabled before [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.129.124 listed in wl.mailspike.net]
X-Headers-End: 1vTOeX-0004Fa-O9
Subject: Re: [tboot-devel] [PATCH 1/1] Disable CET when calling tboot
 shutdown procedure.
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
From: Tony Camuso via tboot-devel <tboot-devel@lists.sourceforge.net>
Reply-To: Tony Camuso <tcamuso@redhat.com>
Cc: linux-kernel@vger.kernel.org, bp@alien8.de, tglx@linutronix.de,
 mingo@kernel.org, rppt@kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: tboot-devel-bounces@lists.sourceforge.net

On 11/24/2025 7:34 PM, Bagas Sanjaya wrote:
> On Thu, Nov 13, 2025 at 09:37:14AM -0500, Tony Camuso wrote:
>> The tboot->shutdown_entry is effectively bios code and CET needs to be
>> disabled before calling it.
>>
>> It resolves TBOOT shutdown failure bug, reported on the SLES (SUSE Linux
>> Enterprise Server) 16.0 OS. OS power off, called by the "init 0" command,
>> was failing, due to activated Intel Control-Flow Enforcement Technology
>> (CET).
>> Disabling CET has allowed to execute OS and TBOOT shutdown properly.
> 
> Are ``systemctl poweroff`` and ``shutdown -P`` are also affected?
> 
> Confused...
> 

Yes, all shutdown methods on kernels launched with tboot, on systems that
expose the CPU ibt flag to kernels v6.12+ will cause the stack trace appended
below.

The stack trace demonstrates that CET enforcement collides with legacy
BIOS shutdown code that lacks ENDBR markers. The kernel BUG at
cet.c:102 is a direct result of CET being active when jumping into
tboot->shutdown_entry.

Legacy BIOS/tboot code without ENDBR now traps, requiring CET to be disabled
around that call.

The patch:
     Prevents CET from falsely trapping on non-CET BIOS code.

     Maintains system stability during shutdown.

     Preserves CET protection elsewhere, only disabling it for the
     narrow window where legacy firmware must run.


[  169.420078] reboot: Power down
[  169.427516] Missing ENDBR: 0x8041d0
[  169.431128] ------------[ cut here ]------------
[  169.435805] kernel BUG at arch/x86/kernel/cet.c:102!
[  169.440840] Oops: invalid opcode: 0000 [#1] SMP NOPTI
[  169.445966] CPU: 0 UID: 0 PID: 3354 Comm: poweroff Kdump: loaded Not tainted 6.12.0-124.8.1.el10_1.x86_64 #1 PREEMPT(voluntary)
[  169.457580] Hardware name: Dell Inc. PowerEdge R570/03TJR3, BIOS 1.2.1 01/23/2025
[  169.465113] RIP: 0010:exc_control_protection+0x18c/0x190
[  169.470490] Code: 1c ff 45 31 c9 49 89 d8 b9 09 00 00 00 48 8b 93 80 00 00 00 be 63 00 00 00 48 c7 c7 a4 85 e5 a4 e8 79 92 30 ff e9 02 ff ff ff <0f> 0b 66 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 66 0f
[  169.489292] RSP: 0018:ff55b3cba167fa88 EFLAGS: 00010002
[  169.494581] RAX: 0000000000000017 RBX: ff55b3cba167faa8 RCX: 00000000ffff7fff
[  169.501765] RDX: 0000000000000000 RSI: 0000000000000003 RDI: 0000000000000001
[  169.508949] RBP: 0000000000000003 R08: 0000000000000000 R09: ffffffffa59e2b08
[  169.516132] R10: ffffffffa5922ac8 R11: 0000000000000003 R12: 0000000000000000
[  169.523316] R13: 0000000000000000 R14: 0000000000000000 R15: 0000000000000000
[  169.530514] FS:  00007f5f9a122140(0000) GS:ff39175c2de00000(0000) knlGS:0000000000000000
[  169.538659] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[  169.544454] CR2: 0000559386dc5320 CR3: 000000010fbe2000 CR4: 0000000000f71ef0
[  169.551651] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
[  169.558835] DR3: 0000000000000000 DR6: 00000000fffe07f0 DR7: 0000000000000400
[  169.566019] PKRU: 55555554
[  169.568784] Call Trace:
[  169.571295]  <TASK>
[  169.573458]  ? show_trace_log_lvl+0x1b0/0x2f0
[  169.577880]  ? show_trace_log_lvl+0x1b0/0x2f0
[  169.582301]  ? asm_exc_control_protection+0x26/0x30
[  169.587244]  ? exc_control_protection+0x18c/0x190
[  169.592011]  ? __die_body.cold+0x8/0x12
[  169.595910]  ? die+0x2e/0x50
[  169.598863]  ? do_trap+0xca/0x110
[  169.602243]  ? do_error_trap+0x65/0x80
[  169.606049]  ? exc_control_protection+0x18c/0x190
[  169.610816]  ? exc_invalid_op+0x50/0x70
[  169.614715]  ? exc_control_protection+0x18c/0x190
[  169.619482]  ? asm_exc_invalid_op+0x1a/0x20
[  169.623728]  ? exc_control_protection+0x18c/0x190
[  169.628496]  ? exc_control_protection+0x14f/0x190
[  169.633263]  asm_exc_control_protection+0x26/0x30
[  169.638030] RIP: 0010:0x8041d0
[  169.641142] Code: Unable to access opcode bytes at 0x8041a6.
[  169.646857] RSP: 0018:ff55b3cba167fb50 EFLAGS: 00010007
[  169.652144] RAX: 00000000008041d0 RBX: 0000000000000000 RCX: 0000000000000005
[  169.659341] RDX: 00c6e8a7c0000000 RSI: 0000000000000001 RDI: ffffffffff1ff000
[  169.666525] RBP: 0000000000000005 R08: 0000000000000000 R09: 000000000000ffff
[  169.673709] R10: 0000000000000000 R11: ffffffffffff0000 R12: 0000000000002001
[  169.680906] R13: ffffffffa5ae02c8 R14: 00000000ffffffff R15: 0000000000000000
[  169.688091]  ? tboot_shutdown+0x5b/0x140
[  169.692084]  ? tboot_sleep+0x12c/0x140
[  169.695890]  ? acpi_os_enter_sleep+0x2b/0x60
[  169.700221]  ? acpi_hw_legacy_sleep+0x140/0x1c0
[  169.704816]  ? acpi_power_off+0x16/0x40
[  169.708715]  ? sys_off_notify+0x48/0x70
[  169.712615]  ? notifier_call_chain+0x5a/0xd0
[  169.716943]  ? atomic_notifier_call_chain+0x32/0x50
[  169.721885]  ? do_kernel_power_off+0x3e/0x50
[  169.726213]  ? native_machine_power_off+0x21/0x40
[  169.730983]  ? __do_sys_reboot+0x1d2/0x240
[  169.735151]  ? do_syscall_64+0x7d/0x160
[  169.739053]  ? syscall_exit_work+0xf3/0x120
[  169.743302]  ? syscall_exit_to_user_mode+0x32/0x190
[  169.748243]  ? do_syscall_64+0x89/0x160
[  169.752143]  ? __count_memcg_events+0xdf/0x170
[  169.756645]  ? handle_mm_fault+0x256/0x370
[  169.760813]  ? do_user_addr_fault+0x347/0x640
[  169.765235]  ? exc_page_fault+0x73/0x160
[  169.769228]  ? entry_SYSCALL_64_after_hwframe+0x76/0x7e



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
