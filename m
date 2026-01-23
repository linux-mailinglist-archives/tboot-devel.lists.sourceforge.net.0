Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
Delivered-To: lists+tboot-devel@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GIlEEFyCc2kDxAAAu9opvQ
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	for <lists+tboot-devel@lfdr.de>; Fri, 23 Jan 2026 15:14:52 +0100
X-Original-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 58B4A76D49
	for <lists+tboot-devel@lfdr.de>; Fri, 23 Jan 2026 15:14:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Content-Transfer-Encoding:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:MIME-Version:Date:Message-ID:From:Sender:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=dJHsLIAcD6FSPkoG7rnUys3Xvm60jtcj748UJCXWjbo=; b=IugMMhSuMUYCqjj6ob/uOvd/8S
	6eDNElUWmYzqOyxe5nrepyqkaG29wIRu+vwlh+8juOFghafGAsmbbFNtx4Xh8KuLczhqneav8unAM
	9372J/MSVOJZCXVDXEer8cVeQGz4UnTaWEqTg7ZVlAw1WzILrW8bOiCkI9GSTSpDTG+k=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1vjHvk-0005go-4c;
	Fri, 23 Jan 2026 14:14:32 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <n0t3p4d.opensource@gmail.com>) id 1vjHvi-0005gf-IR
 for tboot-devel@lists.sourceforge.net;
 Fri, 23 Jan 2026 14:14:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Subject:To:
 MIME-Version:Date:Message-ID:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9D/Aq2tem1MV0K1heKvHnoI718KIs84GGrlm19SLedI=; b=ZNV9BUstyKvieB9DZEfPCF+NhI
 V2ON0B5cfVmiAGNuaIGi7AoiwZur6ry0cdXnh6KbgOkfb/acy09xBQiJH8PZ5o8Zzx/Er+vneLImd
 siSI2bpnqENmMiUXWUcJfFCT0EYWsCcf3QTSvJvMd5jCFGyJqBn5989Wc1JOK1PEVtSk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Subject:To:MIME-Version:Date:
 Message-ID:From:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=9D/Aq2tem1MV0K1heKvHnoI718KIs84GGrlm19SLedI=; b=Y
 Ihv6+yO0UG6t2tWQG7zgvTFOloHTq+L4M+2+YiIdJyPlW/FkdxkC0ZY9QTP+w2MPtG8JhBV4tbLXu
 zATwKBd5msJTuWo9y0DfgPxqOlI3i6HCIHRq/Sm/X6KCMlDZswsJJjNfzFZwa7lJKcHiFn4ui0Snv
 zyIQbbJ/OF9PqMrA=;
Received: from mail-ed1-f47.google.com ([209.85.208.47])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vjHvi-0006de-1o for tboot-devel@lists.sourceforge.net;
 Fri, 23 Jan 2026 14:14:30 +0000
Received: by mail-ed1-f47.google.com with SMTP id
 4fb4d7f45d1cf-64d02c01865so3677093a12.1
 for <tboot-devel@lists.sourceforge.net>; Fri, 23 Jan 2026 06:14:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1769177658; x=1769782458; darn=lists.sourceforge.net;
 h=content-transfer-encoding:subject:to:content-language:user-agent
 :mime-version:date:message-id:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=9D/Aq2tem1MV0K1heKvHnoI718KIs84GGrlm19SLedI=;
 b=XSARNYxI4TKMEJ+xgxnnKSz07ylLJQFTA9K0H5ULKZn8+v4BZoIyFVc3jmO33/OeGH
 esauPi9dvLs5ds/wRsy9n6ZdOaher1HqVR4Jg3m+8mhQ+3iD7MUvn8e+lW/wXaIL+oSn
 zkU7YaFHe+UquPI0bi+XkbvwszFOHdRMvDFeBiidL6WgxTaI8P64idfl2xGmH49vPWuU
 BEQHicJcGsDZbV2OCEd6GTRTRLiNlQKYEpKcu4+fVD+z0jqDQElgDo2m7rXXxQecZiqZ
 c2N0sT9kE9oG0alFIH/2MkyTKVUN8WLlYPahM43mBxdu7qUeNUgFIXbkzISbeQawT5qh
 gxgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1769177658; x=1769782458;
 h=content-transfer-encoding:subject:to:content-language:user-agent
 :mime-version:date:message-id:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=9D/Aq2tem1MV0K1heKvHnoI718KIs84GGrlm19SLedI=;
 b=ND26VmLTDPoD7S6RmhZnnWAEF9V9gZjRMYbm7QbiTfkcjdHvkmITTXKmwhfiBFFKYQ
 BIoR/J4WA9ndRyAnaejmNHFbp35Z/Yo4VWTv2sRfjBMZ+b2+U2CGBnMGuHAnzbH0yW5o
 wCinL/v+n6gS/oPJaU/MSBJCR6nkb8WYZwL5YCvCceLMqZQAE8kfcMBt2/yc70VGeBw1
 dHoQKIE98p9JSHI6+IwkoXnN6tjRZNc1u644xeVVx7RQSZDdNdnzCfVIHj4638oRvAP8
 hBvnb//oYMaJ1XNhreBWyatQ/rOENiefShT/nK8oRPtTQd0q+D1cdVA214xcNH0QMa1g
 mOmw==
X-Gm-Message-State: AOJu0YyHOcQu9YqDMyqbHc8DDnxlBEXw3t44JwMCnl7F5TLV1v4vm7Ln
 WJUoy9RHxZrCYINq/GY7sR9I35rJ4WKCaWU361X0R1nVDvmdD6Ydna2bYCsH1A==
X-Gm-Gg: AZuq6aJy+MTpCHcVAmwy1YqWlne5V5GzGeU8OFUw85Fr1Cl4DoqXuEoALvCwzp1sTNc
 mzm+Fs2YQuDvUrmvECoFDBpQhtE5jlCnXZ1f1o0uPGdJjAL0+GdeZGUPc/1dX07PLezH7KctV8s
 4gwYI3LdBLS7xw89tik/8OVJyg9VT6mfWHMHmqlCzgDdg/RZ3HZF+SxwtBFjQS82Oj9/WuRzk0X
 hx+7Q05KDQJAWg/8EAMO2235anRvrvS6agSaRbFOyJ5qjkYnU9C3OtaHcyPwrE8OUu1M/0XPiNW
 UbXb9JDVp97eTRxI7jl/e25wv1Ocl5aLX9ynv2hgO36SmYQuUDttCAigzdxE+VRL8lwlM8GaWp2
 sxglGuELYPgr3s50lDcXBgwm88eGyYAtD9byaqhz9AADYPWFH3NTLhKFNSOOwnrKuVRE2kVo6lh
 Ia4S8Ml4TI8XD2emUv5jas/buVz7fSPmbgBGa2qevVyCjNjW0leS5Ty7nPxm1XjjcqNvGBcbVHu
 BW8le9KAPrCCgasc7/3W0wZ+/bMeRw3oeUle2pidaEQbhcJfSNVt8kWMrERdSM=
X-Received: by 2002:a05:6402:f0a:b0:64b:7b73:7d50 with SMTP id
 4fb4d7f45d1cf-6584874e05bmr1526478a12.1.1769177658298; 
 Fri, 23 Jan 2026 06:14:18 -0800 (PST)
Received: from ?IPV6:2003:c9:7f45:b602:5054:ff:fe35:12f1?
 (p200300c97f45b602505400fffe3512f1.dip0.t-ipconnect.de.
 [2003:c9:7f45:b602:5054:ff:fe35:12f1])
 by smtp.googlemail.com with ESMTPSA id
 4fb4d7f45d1cf-6584b955523sm1017496a12.26.2026.01.23.06.14.17
 for <tboot-devel@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 23 Jan 2026 06:14:17 -0800 (PST)
From: N0T3P4D <n0t3p4d.opensource@gmail.com>
X-Google-Original-From: N0T3P4D <N0T3P4D.opensource@gmail.com>
Message-ID: <22406ebd-3d44-47b0-ab50-22cac3deb041@gmail.com>
Date: Fri, 23 Jan 2026 15:14:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: "tboot-devel@lists.sourceforge.net" <tboot-devel@lists.sourceforge.net>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi,
 I recently bought a Thinkpad X1 2-in-1 Gen 10 (21NVS07F00)
 specifically for its support of Intel TXT. With Intel TME enabled, I can
 successfully boot using a verified launch policy that continues on non-fatal
 errors. Using a stricter setting, the boot hangs. 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 [n0t3p4d.opensource(at)gmail.com]
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.47 listed in wl.mailspike.net]
X-Headers-End: 1vjHvi-0006de-1o
Subject: [tboot-devel] MTRRs with non-contiguous regions,
 failed to verify platform
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.01 / 15.00];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_ALL(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,gmail.com:s=20230601];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	MIME_TRACE(0.00)[0:+];
	DKIM_MIXED(0.00)[];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,gmail.com:-];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	ARC_NA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[tboot-devel@lists.sourceforge.net];
	FROM_NEQ_ENVFROM(0.00)[n0t3p4dopensource@gmail.com,tboot-devel-bounces@lists.sourceforge.net];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[tboot-devel];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[pastebin.com:url,lists.sourceforge.net:dkim,lists.sourceforge.net:helo,lists.sourceforge.net:rdns]
X-Rspamd-Queue-Id: 58B4A76D49
X-Rspamd-Action: no action

Hi,

I recently bought a Thinkpad X1 2-in-1 Gen 10 (21NVS07F00) specifically for its support of Intel TXT.

With Intel TME enabled, I can successfully boot using a verified launch policy that continues on non-fatal errors. Using a stricter setting, the boot hangs.

In the log, the following messages can be found, which document the trigger of an error condition:

TBOOT: var MTRRs with non-contiguous regions: base=0xc0000, mask=0x3fc0000
TBOOT: mtrr_def_type: e = 1, fe = 1, type = 6
TBOOT: mtrrs:
TBOOT:             base          mask      type  v
TBOOT:         00000000c0000 0000003fc0000  00  01
TBOOT:         00000000a0000 0000003fe0000  00  01
TBOOT:         000000009c000 0000003ffc000  00  01
TBOOT:         0000001000000 0000003000000  00  01
TBOOT:         0000002000000 0000002000000  00  01
TBOOT:         000000085f800 0000003fff800  00  01
TBOOT:         0000000000000 0000000000000  00  00
TBOOT:         0000000000000 0000000000000  00  00
TBOOT:         0000000000000 0000000000000  00  00
TBOOT:         0000000000000 0000000000000  00  00
TBOOT: failed to verify platform

The full log can be found here: https://pastebin.com/Hhk4AEb7

The problem also occurs with the latest tboot version 1.11.10. Interestingly, when Intel TME is disabled, tboot hangs with the same policy. Unfortunately, VGA output for tboot does 
not work on this machine and I cannot access this machine's serial console provided via AMT to obtain a log in this case. (I don't really care about support for disabled TME, but 
wanted to mention it nevertheless.)

Any help is appreciated. I can test patches or provide additional (debug) information if needed. I also posted this problem on the Lenovo Linux forum, but did not receive any reply.

Thank you and best regards

N0T3P4D


_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
