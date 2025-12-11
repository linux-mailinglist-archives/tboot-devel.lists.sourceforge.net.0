Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 51DF8CB5F89
	for <lists+tboot-devel@lfdr.de>; Thu, 11 Dec 2025 14:06:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Cc:Reply-To:From:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:References:To:MIME-Version:Date:Message-ID:Sender:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/lo5f8zu3+bp/PU/ek37TsKwLiKiS/4Xt+cc91tuKU8=; b=POq84KFSsw+FDJRjoEx3DJhhbU
	++2rcsV/QUOYgEHk6VaRatGwX6w9rIJ3mari24tFkEPlNZFGPvg5kk0Io2WHR6EN0Y3RSJPy7rYjz
	QBPgXh8gei4LXlvm8XBMDKVeCvYKNhSBIYap/ka8pIyCnDHnD3ELOUdEIK3yRl7FcHY0=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1vTgMY-0007jO-So;
	Thu, 11 Dec 2025 13:05:42 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tcamuso@redhat.com>) id 1vTgMX-0007jI-VV
 for tboot-devel@lists.sourceforge.net;
 Thu, 11 Dec 2025 13:05:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:In-Reply-To:References:Cc:To:From:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kFQygyNUaZfMxJhQ8hOKyr+VdEMm8OomwuhWTO+mgjA=; b=QCEFbomvk5a06SrdUGqnE8etym
 T7svQFoxhzQ8SK+HfMktAbpydBXDe7A4Xac0n1sQN8ICzYlh2QvbpfkXc3eSWUhyLYuILc0kqdd/D
 T/6mZS9Rl8vlz4KFAGNqg1pRCs5cNsOuDkdJHe6gKuXG4tPcaoz+dsN1x8tmwjz4feyY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:In-Reply-To:References:Cc:To:From:Subject:MIME-Version:Date:
 Message-ID:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=kFQygyNUaZfMxJhQ8hOKyr+VdEMm8OomwuhWTO+mgjA=; b=D6x9INGzuoM/W+kqSg737p3a1E
 0pkjszF66C4oG3ILrhM8zAMl91NPfeOeSnzm3VAT8/cFlNn5/8dRXzTPlYZa+c1OGD9PP5xMDwE+a
 Krvz1R61b52d4r0wlKmbiPnLo8KDQ3CeoHEpcYJK7w0SNNOBvTxqMSt6YK5G11TISvak=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vTgMW-0006GQ-Tk for tboot-devel@lists.sourceforge.net;
 Thu, 11 Dec 2025 13:05:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1765458329;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=kFQygyNUaZfMxJhQ8hOKyr+VdEMm8OomwuhWTO+mgjA=;
 b=G2PV9Wv6H6srsu6yo51TfPZSlN+xIsMUp7Jz83PWCuJLbxy+vc8z4JEqLti0gQWqeImTHF
 pisUkNoUR6sbGHn2Aje9Bgmr8UEw82Fnk6ZlDZh8IjHsHztKw3UAS0/EicLt6q0Qxbu/wL
 4GrFS0zpUkjp7xpoj6FtceFrboBKF6A=
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-683-28Q31z5iMSuDv4ikumRVGQ-1; Thu, 11 Dec 2025 08:05:28 -0500
X-MC-Unique: 28Q31z5iMSuDv4ikumRVGQ-1
X-Mimecast-MFC-AGG-ID: 28Q31z5iMSuDv4ikumRVGQ_1765458328
Received: by mail-qk1-f197.google.com with SMTP id
 af79cd13be357-8b22d590227so10598985a.1
 for <tboot-devel@lists.sourceforge.net>; Thu, 11 Dec 2025 05:05:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1765458328; x=1766063128;
 h=in-reply-to:content-language:references:cc:to:from:subject
 :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=kFQygyNUaZfMxJhQ8hOKyr+VdEMm8OomwuhWTO+mgjA=;
 b=SYTbHgBOp+sw8rzifp5R/qR+CZ1C1KcwXz4y4J2RrqP6qfNvaETms4rmJocvFYZ1Z1
 LjPvHMm9vdF2QN5kpExwdOIFz2eLkkP6Vb3FcIjFOCsG7nFoJx5J28knJRGSjlvq+WaN
 eabbj0K0RUyscHtgJrcQh/xST5N6KjCCq6uqDGORAaKMuQsCDeY3osOh4wADjWT+gc0t
 +QzgQ+pawMdJ6Lc7I8Oyl+R4A/ck4fyNQqboQxWFse1mfOYpupyzipPwVGm+m0ctTxMp
 0MYcgxEMEeDigmgXCjwUZRI0SFlwnx1d7xxSvqGW8qSBkSgnITG+LxDbcqMfKsNs4efI
 fhRQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCU1D+aq6lRcIFyphc4OjDspQZGrxl8/jEk4vHq95wkLfh43d4SFRiPZuYa1xi9NtNIKnj4eaflsnZFNlg==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YzhY7CRNd+6RPjne9l7pdqMn/VoG+ZdI5MEdux2RrNOGgWEhX8Z
 Ov1gLAD/lSx2FRha44gbO/TGl9craZQYcjAS5JiOHWB3kNOK/tSqKyzeUow2idOc1BaEGpZUjOO
 jHKtDkElbP4sUqubIy83L7Ph3rlyiUUkzjzKmhk6gLlOfdQOrnbhlMSgtHp5nB23IbscdNidQ
X-Gm-Gg: AY/fxX6kAlS8tq7zc4FEkSVBn9pNkjiZYb+Bmtqv+w5Xfjvidnqm9sWTW8nSszi42mb
 bpgmfnTWtNQcDytM2L2nyVgU7yNeaxaViT3jH9cuPNUHfz9z2IuBoxSjJK1/OCFi35RoQJ/oMZw
 o35S4LGptCNa1HUCD+LObk7LDOvBb576RKxUIltgDBWsda/HdoomXpdfwSeYGWrUWrm+REwCaOB
 Pyd+JFzqz0LjZqLleGu0/f21hy7muWrl50sm+WM04G/Ajc6pRMtf/nswVGiporvLeQ47gprVuwP
 zAn50hXGyVcrw5Ve5Is9Ir8vRUV6jkRwXk+pdxFVtIWtG/OvbM9tJWIWzJp/adhHHE6c8EAnUB4
 O0am++oCu1x8=
X-Received: by 2002:a05:620a:2908:b0:8b2:edc8:13cc with SMTP id
 af79cd13be357-8ba39f50bf9mr807665985a.40.1765458327772; 
 Thu, 11 Dec 2025 05:05:27 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEucA98oVDnaWhAH5P8ltvAkna6CSudt4YsrfE7BXn38MS/hwtA6qr8olg+YFlitoBfD9QZ9A==
X-Received: by 2002:a05:620a:2908:b0:8b2:edc8:13cc with SMTP id
 af79cd13be357-8ba39f50bf9mr807642985a.40.1765458326025; 
 Thu, 11 Dec 2025 05:05:26 -0800 (PST)
Received: from [10.6.10.143] ([66.187.232.140])
 by smtp.gmail.com with ESMTPSA id
 6a1803df08f44-8886ef30465sm23518046d6.53.2025.12.11.05.05.24
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 11 Dec 2025 05:05:25 -0800 (PST)
Message-ID: <ed7ec35b-2260-4823-9aac-ef8604b6051b@redhat.com>
Date: Thu, 11 Dec 2025 08:05:24 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Bagas Sanjaya <bagasdotme@gmail.com>, ning.sun@intel.com,
 tboot-devel@lists.sourceforge.net
References: <20251017073619.547993-1-michal.camacho.romero@linux.intel.com>
 <aST5ruhnbILZnoUO@archie.me>
 <acdc2b7f-8d2f-47b7-8324-01c060e8aa68@redhat.com>
In-Reply-To: <acdc2b7f-8d2f-47b7-8324-01c060e8aa68@redhat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: ldbMfYJJ67ToZct6uq2LDZNvJ2XVCoCSzDh6xycbypo_1765458328
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 12/10/25 1:10 PM, Tony Camuso wrote: > On 11/24/2025 7:34
 PM, Bagas Sanjaya wrote: >> On Thu, Nov 13, 2025 at 09:37:14AM -0500, Tony
 Camuso wrote: >>> The tboot->shutdown_entry is effectively bios [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.129.124 listed in wl.mailspike.net]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1vTgMW-0006GQ-Tk
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
Content-Type: multipart/mixed; boundary="===============1019183541533985255=="
Errors-To: tboot-devel-bounces@lists.sourceforge.net

This is a multi-part message in MIME format.
--===============1019183541533985255==
Content-Type: multipart/alternative;
 boundary="------------6eww0jj0URdFB02fJ04hl0q2"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------6eww0jj0URdFB02fJ04hl0q2
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit


On 12/10/25 1:10 PM, Tony Camuso wrote:
> On 11/24/2025 7:34 PM, Bagas Sanjaya wrote:
>> On Thu, Nov 13, 2025 at 09:37:14AM -0500, Tony Camuso wrote:
>>> The tboot->shutdown_entry is effectively bios code and CET needs to be
>>> disabled before calling it.
>>>
>>> It resolves TBOOT shutdown failure bug, reported on the SLES (SUSE 
>>> Linux
>>> Enterprise Server) 16.0 OS. OS power off, called by the "init 0" 
>>> command,
>>> was failing, due to activated Intel Control-Flow Enforcement Technology
>>> (CET).
>>> Disabling CET has allowed to execute OS and TBOOT shutdown properly.
>>
>> Are ``systemctl poweroff`` and ``shutdown -P`` are also affected?
>>
>> Confused...
>>
>
> Yes, all shutdown methods on kernels launched with tboot, on systems that
> expose the CPU ibt flag to kernels v6.12+ will cause the stack trace 
> appended
> below.
>
> The stack trace demonstrates that CET enforcement collides with legacy
> BIOS shutdown code that lacks ENDBR markers. The kernel BUG at
> cet.c:102 is a direct result of CET being active when jumping into
> tboot->shutdown_entry.
>
> Legacy BIOS/tboot code without ENDBR now traps, requiring CET to be 
> disabled
> around that call.
>
> The patch:
>     Prevents CET from falsely trapping on non-CET BIOS code.

Need to clarify further:

The patch prevents CET from trapping when tboot invokes the 
BIOS-provided shutdown_entry routine, which lacks ENDBR instructions.

tboot side: In |tboot_shutdown()|, the kernel switches to the tboot page 
tables and then calls: shutdown = (void(*)(void))(unsigned 
long)tboot->shutdown_entry; shutdown();

That |shutdown_entry| pointer comes from the tboot structure, populated 
at boot.

BIOS side: The actual routine behind |shutdown_entry| is implemented in 
BIOS/firmware. It’s not compiled with CET/IBT support, so it lacks the 
required ENDBR64 instruction at its entry point When CET is still 
enabled, the CPU enforces IBT. Jumping into that BIOS routine without 
ENDBR triggers a #CP (control protection exception), which is what the 
stack trace shows.

So it is the BIOS shutdown_entry function itself that causes the trap, 
but only because tboot is handing control to it while CET is active.

>   Maintains system stability during shutdown.
>
>     Preserves CET protection elsewhere, only disabling it for the
>     narrow window where legacy firmware must run.
>
>
> [  169.420078] reboot: Power down
> [  169.427516] Missing ENDBR: 0x8041d0
> [  169.431128] ------------[ cut here ]------------
> [  169.435805] kernel BUG at arch/x86/kernel/cet.c:102!
> [  169.440840] Oops: invalid opcode: 0000 [#1] SMP NOPTI
> [  169.445966] CPU: 0 UID: 0 PID: 3354 Comm: poweroff Kdump: loaded 
> Not tainted 6.12.0-124.8.1.el10_1.x86_64 #1 PREEMPT(voluntary)
> [  169.457580] Hardware name: Dell Inc. PowerEdge R570/03TJR3, BIOS 
> 1.2.1 01/23/2025
> [  169.465113] RIP: 0010:exc_control_protection+0x18c/0x190
> [  169.470490] Code: 1c ff 45 31 c9 49 89 d8 b9 09 00 00 00 48 8b 93 
> 80 00 00 00 be 63 00 00 00 48 c7 c7 a4 85 e5 a4 e8 79 92 30 ff e9 02 
> ff ff ff <0f> 0b 66 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 
> 66 0f
> [  169.489292] RSP: 0018:ff55b3cba167fa88 EFLAGS: 00010002
> [  169.494581] RAX: 0000000000000017 RBX: ff55b3cba167faa8 RCX: 
> 00000000ffff7fff
> [  169.501765] RDX: 0000000000000000 RSI: 0000000000000003 RDI: 
> 0000000000000001
> [  169.508949] RBP: 0000000000000003 R08: 0000000000000000 R09: 
> ffffffffa59e2b08
> [  169.516132] R10: ffffffffa5922ac8 R11: 0000000000000003 R12: 
> 0000000000000000
> [  169.523316] R13: 0000000000000000 R14: 0000000000000000 R15: 
> 0000000000000000
> [  169.530514] FS:  00007f5f9a122140(0000) GS:ff39175c2de00000(0000) 
> knlGS:0000000000000000
> [  169.538659] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [  169.544454] CR2: 0000559386dc5320 CR3: 000000010fbe2000 CR4: 
> 0000000000f71ef0
> [  169.551651] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 
> 0000000000000000
> [  169.558835] DR3: 0000000000000000 DR6: 00000000fffe07f0 DR7: 
> 0000000000000400
> [  169.566019] PKRU: 55555554
> [  169.568784] Call Trace:
> [  169.571295]  <TASK>
> [  169.573458]  ? show_trace_log_lvl+0x1b0/0x2f0
> [  169.577880]  ? show_trace_log_lvl+0x1b0/0x2f0
> [  169.582301]  ? asm_exc_control_protection+0x26/0x30
> [  169.587244]  ? exc_control_protection+0x18c/0x190
> [  169.592011]  ? __die_body.cold+0x8/0x12
> [  169.595910]  ? die+0x2e/0x50
> [  169.598863]  ? do_trap+0xca/0x110
> [  169.602243]  ? do_error_trap+0x65/0x80
> [  169.606049]  ? exc_control_protection+0x18c/0x190
> [  169.610816]  ? exc_invalid_op+0x50/0x70
> [  169.614715]  ? exc_control_protection+0x18c/0x190
> [  169.619482]  ? asm_exc_invalid_op+0x1a/0x20
> [  169.623728]  ? exc_control_protection+0x18c/0x190
> [  169.628496]  ? exc_control_protection+0x14f/0x190
> [  169.633263]  asm_exc_control_protection+0x26/0x30
> [  169.638030] RIP: 0010:0x8041d0
> [  169.641142] Code: Unable to access opcode bytes at 0x8041a6.
> [  169.646857] RSP: 0018:ff55b3cba167fb50 EFLAGS: 00010007
> [  169.652144] RAX: 00000000008041d0 RBX: 0000000000000000 RCX: 
> 0000000000000005
> [  169.659341] RDX: 00c6e8a7c0000000 RSI: 0000000000000001 RDI: 
> ffffffffff1ff000
> [  169.666525] RBP: 0000000000000005 R08: 0000000000000000 R09: 
> 000000000000ffff
> [  169.673709] R10: 0000000000000000 R11: ffffffffffff0000 R12: 
> 0000000000002001
> [  169.680906] R13: ffffffffa5ae02c8 R14: 00000000ffffffff R15: 
> 0000000000000000
> [  169.688091]  ? tboot_shutdown+0x5b/0x140
> [  169.692084]  ? tboot_sleep+0x12c/0x140
> [  169.695890]  ? acpi_os_enter_sleep+0x2b/0x60
> [  169.700221]  ? acpi_hw_legacy_sleep+0x140/0x1c0
> [  169.704816]  ? acpi_power_off+0x16/0x40
> [  169.708715]  ? sys_off_notify+0x48/0x70
> [  169.712615]  ? notifier_call_chain+0x5a/0xd0
> [  169.716943]  ? atomic_notifier_call_chain+0x32/0x50
> [  169.721885]  ? do_kernel_power_off+0x3e/0x50
> [  169.726213]  ? native_machine_power_off+0x21/0x40
> [  169.730983]  ? __do_sys_reboot+0x1d2/0x240
> [  169.735151]  ? do_syscall_64+0x7d/0x160
> [  169.739053]  ? syscall_exit_work+0xf3/0x120
> [  169.743302]  ? syscall_exit_to_user_mode+0x32/0x190
> [  169.748243]  ? do_syscall_64+0x89/0x160
> [  169.752143]  ? __count_memcg_events+0xdf/0x170
> [  169.756645]  ? handle_mm_fault+0x256/0x370
> [  169.760813]  ? do_user_addr_fault+0x347/0x640
> [  169.765235]  ? exc_page_fault+0x73/0x160
> [  169.769228]  ? entry_SYSCALL_64_after_hwframe+0x76/0x7e
>
--------------6eww0jj0URdFB02fJ04hl0q2
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p><font face="monospace"><br>
      </font></p>
    <div class="moz-cite-prefix"><font face="monospace">On 12/10/25 1:10
        PM, Tony Camuso wrote:<br>
      </font></div>
    <blockquote type="cite"
      cite="mid:acdc2b7f-8d2f-47b7-8324-01c060e8aa68@redhat.com"><font
        face="monospace">On 11/24/2025 7:34 PM, Bagas Sanjaya wrote:
        <br>
      </font>
      <blockquote type="cite"><font face="monospace">On Thu, Nov 13,
          2025 at 09:37:14AM -0500, Tony Camuso wrote:
          <br>
        </font>
        <blockquote type="cite"><font face="monospace">The
            tboot-&gt;shutdown_entry is effectively bios code and CET
            needs to be
            <br>
            disabled before calling it.
            <br>
          </font>
          <font face="monospace"><br>
            It resolves TBOOT shutdown failure bug, reported on the SLES
            (SUSE Linux
            <br>
            Enterprise Server) 16.0 OS. OS power off, called by the
            "init 0" command,
            <br>
            was failing, due to activated Intel Control-Flow Enforcement
            Technology
            <br>
            (CET).
            <br>
            Disabling CET has allowed to execute OS and TBOOT shutdown
            properly.
            <br>
          </font></blockquote>
        <font face="monospace"><br>
          Are ``systemctl poweroff`` and ``shutdown -P`` are also
          affected?
          <br>
        </font>
        <font face="monospace"><br>
          Confused...
          <br>
        </font>
        <font face="monospace"><br>
        </font></blockquote>
      <font face="monospace"><br>
        Yes, all shutdown methods on kernels launched with tboot, on
        systems that
        <br>
        expose the CPU ibt flag to kernels v6.12+ will cause the stack
        trace appended
        <br>
        below.
        <br>
      </font>
      <font face="monospace"><br>
        The stack trace demonstrates that CET enforcement collides with
        legacy
        <br>
        BIOS shutdown code that lacks ENDBR markers. The kernel BUG at
        <br>
        cet.c:102 is a direct result of CET being active when jumping
        into
        <br>
        tboot-&gt;shutdown_entry.
        <br>
      </font>
      <font face="monospace"><br>
        Legacy BIOS/tboot code without ENDBR now traps, requiring CET to
        be disabled
        <br>
        around that call.
        <br>
      </font>
      <font face="monospace"><br>
        The patch:
        <br>
            Prevents CET from falsely trapping on non-CET BIOS code. <br>
      </font></blockquote>
    <p><font face="monospace">Need to clarify further:</font></p>
    <pre><div><pre><div>The patch prevents CET from trapping when tboot invokes the BIOS-provided
shutdown_entry routine, which lacks ENDBR instructions.
</div></pre><p><span>tboot side:  
  In <code>tboot_shutdown()</code>, the kernel switches to the tboot page tables and then calls:
	shutdown = (void(*)(void))(unsigned long)tboot-&gt;shutdown_entry;
	shutdown();</span></p><p><span>  That <code>shutdown_entry</code> pointer comes from the tboot structure, populated at boot.</span></p><p><span>BIOS side:
  The actual routine behind <code>shutdown_entry</code> is implemented in BIOS/firmware. 
</span><span>  It’s not compiled with CET/IBT support, so it lacks the required ENDBR64 
  instruction at its entry point

  When CET is still enabled, the CPU enforces IBT. Jumping into that BIOS 
  routine without ENDBR triggers a #CP (control protection exception), 
  which is what the stack trace shows.</span></p><p><span>  So it is the BIOS shutdown_entry function itself that causes the trap, 
  but only because tboot is handing control to it while CET is active.</span></p><p>
</p></div></pre>
    <blockquote type="cite"
      cite="mid:acdc2b7f-8d2f-47b7-8324-01c060e8aa68@redhat.com">
      <pre><font face="monospace">    Maintains system stability during shutdown.</font></pre>
      <font face="monospace"><br>
            Preserves CET protection elsewhere, only disabling it for
        the
        <br>
            narrow window where legacy firmware must run.
        <br>
      </font>
      <font face="monospace"><br>
      </font>
      <font face="monospace"><br>
        [  169.420078] reboot: Power down
        <br>
        [  169.427516] Missing ENDBR: 0x8041d0
        <br>
        [  169.431128] ------------[ cut here ]------------
        <br>
        [  169.435805] kernel BUG at arch/x86/kernel/cet.c:102!
        <br>
        [  169.440840] Oops: invalid opcode: 0000 [#1] SMP NOPTI
        <br>
        [  169.445966] CPU: 0 UID: 0 PID: 3354 Comm: poweroff Kdump:
        loaded Not tainted 6.12.0-124.8.1.el10_1.x86_64 #1
        PREEMPT(voluntary)
        <br>
        [  169.457580] Hardware name: Dell Inc. PowerEdge R570/03TJR3,
        BIOS 1.2.1 01/23/2025
        <br>
        [  169.465113] RIP: 0010:exc_control_protection+0x18c/0x190
        <br>
        [  169.470490] Code: 1c ff 45 31 c9 49 89 d8 b9 09 00 00 00 48
        8b 93 80 00 00 00 be 63 00 00 00 48 c7 c7 a4 85 e5 a4 e8 79 92
        30 ff e9 02 ff ff ff &lt;0f&gt; 0b 66 90 90 90 90 90 90 90 90 90
        90 90 90 90 90 90 90 90 66 0f
        <br>
        [  169.489292] RSP: 0018:ff55b3cba167fa88 EFLAGS: 00010002
        <br>
        [  169.494581] RAX: 0000000000000017 RBX: ff55b3cba167faa8 RCX:
        00000000ffff7fff
        <br>
        [  169.501765] RDX: 0000000000000000 RSI: 0000000000000003 RDI:
        0000000000000001
        <br>
        [  169.508949] RBP: 0000000000000003 R08: 0000000000000000 R09:
        ffffffffa59e2b08
        <br>
        [  169.516132] R10: ffffffffa5922ac8 R11: 0000000000000003 R12:
        0000000000000000
        <br>
        [  169.523316] R13: 0000000000000000 R14: 0000000000000000 R15:
        0000000000000000
        <br>
        [  169.530514] FS:  00007f5f9a122140(0000)
        GS:ff39175c2de00000(0000) knlGS:0000000000000000
        <br>
        [  169.538659] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
        <br>
        [  169.544454] CR2: 0000559386dc5320 CR3: 000000010fbe2000 CR4:
        0000000000f71ef0
        <br>
        [  169.551651] DR0: 0000000000000000 DR1: 0000000000000000 DR2:
        0000000000000000
        <br>
        [  169.558835] DR3: 0000000000000000 DR6: 00000000fffe07f0 DR7:
        0000000000000400
        <br>
        [  169.566019] PKRU: 55555554
        <br>
        [  169.568784] Call Trace:
        <br>
        [  169.571295]  &lt;TASK&gt;
        <br>
        [  169.573458]  ? show_trace_log_lvl+0x1b0/0x2f0
        <br>
        [  169.577880]  ? show_trace_log_lvl+0x1b0/0x2f0
        <br>
        [  169.582301]  ? asm_exc_control_protection+0x26/0x30
        <br>
        [  169.587244]  ? exc_control_protection+0x18c/0x190
        <br>
        [  169.592011]  ? __die_body.cold+0x8/0x12
        <br>
        [  169.595910]  ? die+0x2e/0x50
        <br>
        [  169.598863]  ? do_trap+0xca/0x110
        <br>
        [  169.602243]  ? do_error_trap+0x65/0x80
        <br>
        [  169.606049]  ? exc_control_protection+0x18c/0x190
        <br>
        [  169.610816]  ? exc_invalid_op+0x50/0x70
        <br>
        [  169.614715]  ? exc_control_protection+0x18c/0x190
        <br>
        [  169.619482]  ? asm_exc_invalid_op+0x1a/0x20
        <br>
        [  169.623728]  ? exc_control_protection+0x18c/0x190
        <br>
        [  169.628496]  ? exc_control_protection+0x14f/0x190
        <br>
        [  169.633263]  asm_exc_control_protection+0x26/0x30
        <br>
        [  169.638030] RIP: 0010:0x8041d0
        <br>
        [  169.641142] Code: Unable to access opcode bytes at 0x8041a6.
        <br>
        [  169.646857] RSP: 0018:ff55b3cba167fb50 EFLAGS: 00010007
        <br>
        [  169.652144] RAX: 00000000008041d0 RBX: 0000000000000000 RCX:
        0000000000000005
        <br>
        [  169.659341] RDX: 00c6e8a7c0000000 RSI: 0000000000000001 RDI:
        ffffffffff1ff000
        <br>
        [  169.666525] RBP: 0000000000000005 R08: 0000000000000000 R09:
        000000000000ffff
        <br>
        [  169.673709] R10: 0000000000000000 R11: ffffffffffff0000 R12:
        0000000000002001
        <br>
        [  169.680906] R13: ffffffffa5ae02c8 R14: 00000000ffffffff R15:
        0000000000000000
        <br>
        [  169.688091]  ? tboot_shutdown+0x5b/0x140
        <br>
        [  169.692084]  ? tboot_sleep+0x12c/0x140
        <br>
        [  169.695890]  ? acpi_os_enter_sleep+0x2b/0x60
        <br>
        [  169.700221]  ? acpi_hw_legacy_sleep+0x140/0x1c0
        <br>
        [  169.704816]  ? acpi_power_off+0x16/0x40
        <br>
        [  169.708715]  ? sys_off_notify+0x48/0x70
        <br>
        [  169.712615]  ? notifier_call_chain+0x5a/0xd0
        <br>
        [  169.716943]  ? atomic_notifier_call_chain+0x32/0x50
        <br>
        [  169.721885]  ? do_kernel_power_off+0x3e/0x50
        <br>
        [  169.726213]  ? native_machine_power_off+0x21/0x40
        <br>
        [  169.730983]  ? __do_sys_reboot+0x1d2/0x240
        <br>
        [  169.735151]  ? do_syscall_64+0x7d/0x160
        <br>
        [  169.739053]  ? syscall_exit_work+0xf3/0x120
        <br>
        [  169.743302]  ? syscall_exit_to_user_mode+0x32/0x190
        <br>
        [  169.748243]  ? do_syscall_64+0x89/0x160
        <br>
        [  169.752143]  ? __count_memcg_events+0xdf/0x170
        <br>
        [  169.756645]  ? handle_mm_fault+0x256/0x370
        <br>
        [  169.760813]  ? do_user_addr_fault+0x347/0x640
        <br>
        [  169.765235]  ? exc_page_fault+0x73/0x160
        <br>
        [  169.769228]  ? entry_SYSCALL_64_after_hwframe+0x76/0x7e
        <br>
      </font>
      <font face="monospace"><br>
      </font></blockquote>
  </body>
</html>

--------------6eww0jj0URdFB02fJ04hl0q2--



--===============1019183541533985255==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============1019183541533985255==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel

--===============1019183541533985255==--


