Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 076662E9E61
	for <lists+tboot-devel@lfdr.de>; Mon,  4 Jan 2021 20:57:59 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1kwVzC-0008RE-BH; Mon, 04 Jan 2021 19:57:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jandryuk@gmail.com>) id 1kwVzB-0008Qn-7D
 for tboot-devel@lists.sourceforge.net; Mon, 04 Jan 2021 19:57:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3nyM2PBVn6YNTSBLBe7K6zj4ThJ5RBHr/xcQcvg6otg=; b=cecwUn3vosCTUXze65NMqzDREa
 juyh01PPrAE+WRYSQmprO+4TB3Kq7k4vhQM3jXrpU6350kTqTZEZ7Tmiq9NCXGVZyyOrioL2TWJb7
 tcwveAQSZ+ekwRoTo/QfK2zp7hKB4V77AVQZGLhuKkpbNn/vNjPN/cI8Fp7mOYEVxKQY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=3nyM2PBVn6YNTSBLBe7K6zj4ThJ5RBHr/xcQcvg6otg=; b=X
 reDZk5aHx3SR1elGhzqY7iiuVEcsJV8ECzIB+4/C5MX0PqdGakushVAZQWQReyUZ/X/SrOsP0gP7c
 0sPfPszRL2+ianiV2Q7q1jKLc4DcImB0P8LGgahAZfhjKBuqVFWyMzEmgl64baOkGC6muNof0SicU
 W4zvgWh5QPjNXxTQ=;
Received: from mail-lf1-f54.google.com ([209.85.167.54])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kwVz7-00Cwry-0C
 for tboot-devel@lists.sourceforge.net; Mon, 04 Jan 2021 19:57:49 +0000
Received: by mail-lf1-f54.google.com with SMTP id m12so67244272lfo.7
 for <tboot-devel@lists.sourceforge.net>; Mon, 04 Jan 2021 11:57:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=3nyM2PBVn6YNTSBLBe7K6zj4ThJ5RBHr/xcQcvg6otg=;
 b=tJqLbrqvZf+qTb6bLdIlR3nXbdnx2Er/yimrpzfFXTQcEme5SIkHv/BlUhbgTOzrko
 z1lSpKp8LT2WGIHGYZQn6PFKB6KD4Xx3V8ouQU9uKHS78TFpqrckG2Vuk8dRRoHhCwqL
 wJsCxSsPcCOMzyYtdc9sI5fByT0tr8zmOtDkGN+PPVGYpkkYrHJ3xeH1k2eWyn0w0Gtm
 XnIqH4h7v9xJ9tBOXFkIq1UTKP0RNPE7aeiSykj/qhCM4euGuP+dRYnZQxWmYYQ94CaP
 quCTeXbsNMp71VFVn/YqUW2moXPZD+DSdNmUtu9v4SMI/dcVTH2F+NSvwtEVJf909UBN
 DrYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=3nyM2PBVn6YNTSBLBe7K6zj4ThJ5RBHr/xcQcvg6otg=;
 b=cChFAJYsuV095/819jhH8IM41OGS7OH0cQriofRpdiZWFta17rbFJvCRZw/Z3wj2ge
 YlhJRf7HFz8XDjek1XrYMzDdX6DlGHcusaz9jM+Wzc9CYEWOZYns/MvASjU6wx9hENL0
 SAs0yJEboszp5xBed2+TT9qq6N0wWc8RZkkYqmkLje/OtjtOYZb10zhanzYfscFUdmcl
 T+vVcoHi8kfYhYwrKXMUpq5nKplbhFh0Ie/mVUjFjO9E/gCmLiyy2QmPaXFD3odEhWHb
 9QYAMIcfKd936ex3suV7Q6MWJyCKs8Y3T0FM/fIQe+6BKz/A5NqcSSpEEz5WFANBEUKX
 9Wkw==
X-Gm-Message-State: AOAM532s81QbLc/2OXxNfEhXttHss5OPSeEo8u/DY1xIJoa6ZFuRWbvV
 FPDW6903IlGu7GAhBkOaV+OHFBYGp3NKk5dOwduO8WSHRvk=
X-Google-Smtp-Source: ABdhPJzsNRF5XoVbkWNRziiSv2/MqENV900Fikp5C37jQ9YzMMic2MlkYf/3liovunmrYB/7KmIFHYz48RWpRrorpfs=
X-Received: by 2002:a2e:888e:: with SMTP id k14mr37885878lji.285.1609790250643; 
 Mon, 04 Jan 2021 11:57:30 -0800 (PST)
MIME-Version: 1.0
From: Jason Andryuk <jandryuk@gmail.com>
Date: Mon, 4 Jan 2021 14:57:19 -0500
Message-ID: <CAKf6xpskX4rBd9eAiDa60uZKQnXD-QP5EWMKnMfr4Y8T0D0j7A@mail.gmail.com>
To: tboot-devel@lists.sourceforge.net
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.54 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (jandryuk[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.54 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kwVz7-00Cwry-0C
Subject: [tboot-devel] 10th Gen ACM
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

Hi,

Are SINIT ACMs available for 10th Gen processors, specifically 10th Gen 10810U?

The intel page https://software.intel.com/content/www/us/en/develop/articles/intel-trusted-execution-technology.html
has 8th_9th_gen_i5_i7-SINIT_81.zip as the latest file - but the file
inside is named 7th_8th_gen_i5_i7-SINIT_81.bin.

Thanks,
Jason


_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
