Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DEC374C58D9
	for <lists+tboot-devel@lfdr.de>; Sun, 27 Feb 2022 02:04:28 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1nO7z3-0005dA-75; Sun, 27 Feb 2022 01:04:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <salah.coronya@gmail.com>) id 1nO7z2-0005d4-EF
 for tboot-devel@lists.sourceforge.net; Sun, 27 Feb 2022 01:04:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:To:Subject:
 From:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eVIqf1ZtwItisuNVqQjlzKV+krM8/0pFkFSEGsswQEQ=; b=heDX1Emn7R+8QJfFDwi2MVFUP5
 wg4Haza1k/f2R+o+v8STFdu/6DK9OlVkTsmSt2grqyVOhU8VgvENAmQNgDapsGhWOJzHzfMJ5JZ+u
 kIIu+nP8WehdXAcKysnqEiAbb1v7qqDqFw/iCM1Gq96V7GxZKPhbtIGEU43gBaESORLI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:To:Subject:From:MIME-Version:Date:
 Message-ID:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=eVIqf1ZtwItisuNVqQjlzKV+krM8/0pFkFSEGsswQEQ=; b=i
 snUq68hUfGXXcwNpIE6nvCF3Z6x6rFiwSJTHLRa/TZstq1Ty11RKHBa/RXAPVjCnTDkCg8eh1Kx3F
 f4LEbE4s0j6106x0I1RO7uCq8hUMcjqSpqZZuifh8f1InSWDP6Gm5nVaPyGF7jLpYZORMdzy2xPZ6
 E7BeR/2gqUrxNPGM=;
Received: from mail-qk1-f181.google.com ([209.85.222.181])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nO7yx-0004pp-Bn
 for tboot-devel@lists.sourceforge.net; Sun, 27 Feb 2022 01:04:19 +0000
Received: by mail-qk1-f181.google.com with SMTP id f21so7691877qke.13
 for <tboot-devel@lists.sourceforge.net>; Sat, 26 Feb 2022 17:04:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:content-language:from
 :subject:to:content-transfer-encoding;
 bh=eVIqf1ZtwItisuNVqQjlzKV+krM8/0pFkFSEGsswQEQ=;
 b=UVN0GPZZDjqm7u5tv8Uk0RYscDZNR8cCMK5m1e9wqu8EBP1ECv5VyQB1wGJprchs3c
 /3tFqqw5zqB2infirKuC0QdCSSKJk5ZWyOLfat+MFsdEqG776W4YNXpcvKp5JCRCZjbW
 TGyZSOckW7JkQrozRCOHIn+uB6ORXYtdMqUjjnP7E8OgKhc2/LbHOtXTDPZZXrOhk1y6
 4xmwzeYrj4GZATqbC9/+A5nAHk0oX2b2aFb8BpiYBXCcq2osTNpv47ctq3r/kgtLqcgn
 Buyj7tZYUsuCGFRU8tWW4BwWw2iUEX47jwzD096/wEZy6b6uskZ0yjTTV0ocHWhb7CP4
 l8pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent
 :content-language:from:subject:to:content-transfer-encoding;
 bh=eVIqf1ZtwItisuNVqQjlzKV+krM8/0pFkFSEGsswQEQ=;
 b=2YQxhrlcoZ6TooE43tlbmD3akwKfK/o6eEeDMS7c2RqvGs78RKy8EmAiE09ufP+WtY
 9B/RuSeexOlfD6T/19as5rPgHEwOVODzgNIsWy6HUGHbLmXKJiIRfX0ps13VoxxqQ1bZ
 B/TRFIFoCzAFD7p7IVYCMVCEAM+00AWYnooIOyJNgMUYtLqDZNY6xvr/CfeM1ovKBin1
 K0DPsjqMzqRPz8Ij8NmjktxWjHQwB6yr0lSJAQ0ZWyNg9lQagyHk2a4mT+hWX1WG1dM3
 cqZEMGTP9+mQTJn5wZZ/HwU7F2BRBOdWPAMK+JpUPsCaA4xZPA7B2f6aGze4X7wyJoNL
 11yA==
X-Gm-Message-State: AOAM532Ad60DJJyCQosZTPBYkTxFajSn8w3hNOSlpeD1xNCKCDBHhy5b
 03CWhaNi/7eh6qw7GWwGPe2abxbz2wLV1Q==
X-Google-Smtp-Source: ABdhPJxdYD5Cq4xnYK4xUZwDV9iot/OO9qYnU4biItoNq8TPconmsNUmWEFl4dDevbt3KyF4XG15wQ==
X-Received: by 2002:a37:395:0:b0:508:1973:6808 with SMTP id
 143-20020a370395000000b0050819736808mr8270365qkd.512.1645923848398; 
 Sat, 26 Feb 2022 17:04:08 -0800 (PST)
Received: from ?IPV6:2600:6c40:4300:be3:c1dc:16e9:29a:6790?
 ([2600:6c40:4300:be3:c1dc:16e9:29a:6790])
 by smtp.gmail.com with ESMTPSA id
 u3-20020a05622a010300b002dd22803f20sm4249839qtw.46.2022.02.26.17.04.07
 for <tboot-devel@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 26 Feb 2022 17:04:08 -0800 (PST)
Message-ID: <76bdb759-1c14-a891-3722-f1ae5c8ecf02@gmail.com>
Date: Sat, 26 Feb 2022 19:04:07 -0600
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.1
Content-Language: en-US
From: Christopher Byrne <salah.coronya@gmail.com>
To: tboot-devel@lists.sourceforge.net
X-Spam-Score: 1.3 (+)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  As of tboot 1.10.4, lcp2_mlehash has stopped working due to
 643:8635a40eab19 Touch ups for GCC12: lcp2_mlehash --create --verbose
 /boot/tboot.gz
 cmdline opt: mlefile:/boot/tboot.gz [read_mle_file] checking whether the
 file exists or not ... : existed! trying to uncompress the file ... :
 succeeded! [...] 
 Content analysis details:   (1.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [salah.coronya[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.181 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.181 listed in wl.mailspike.net]
 1.5 FROM_FMBLA_NEWDOM      From domain was registered in last 7 days
X-Headers-End: 1nO7yx-0004pp-Bn
Subject: [tboot-devel] changeset 643:8635a40eab19 broke lcp2_mlehash
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

As of tboot 1.10.4, lcp2_mlehash has stopped working due to 
643:8635a40eab19 Touch ups for GCC12:


lcp2_mlehash --create --verbose /boot/tboot.gz
cmdline opt: mlefile:/boot/tboot.gz
[read_mle_file]
checking whether the file exists or not ... : existed!
trying to uncompress the file ... : succeeded!
creating a temporary file to uncompress ... : succeeded!
opening the decompressed file ... : succeeded!
testing decompression is ... : succeeded!
reading the decompressed file ... : succeeded!
[is_elf_image]
checking whether image is an elf image ... : failed! - Pointer is zero.

It looks like fix was designed to fix a use-after-free warning (which, 
due to -Werror is fatal), but the original code looks correct. I believe 
the gcc warning is bogus.

On a side note, could the -Werror flag be removed by default? Its useful 
for development but not in release versions: See 
https://flameeyes.blog/2009/02/25/future-proof-your-code-dont-use-werror/?utm_source=blogdoteu&utm_medium=referral&utm_campaign=permanent 



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
