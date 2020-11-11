Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 87CE42AFB30
	for <lists+tboot-devel@lfdr.de>; Wed, 11 Nov 2020 23:15:36 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1kcyOo-0004C4-Ri; Wed, 11 Nov 2020 22:15:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jsnitsel@redhat.com>) id 1kcyOm-0004Bw-5U
 for tboot-devel@lists.sourceforge.net; Wed, 11 Nov 2020 22:15:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5XrAgtQd7kZszYIojrGZ0Srxdy9oshw1k1Bt3yL+/yY=; b=CNUVPcr0AbR4IYbclZNXDpumAS
 G9ctNN/BTOveqJJcyDePN29jLuyqw4pO9g8Z7nqTcjoZrbl1+6TNHhOCVYQF9tZV5IsE64oT61+iR
 /D0gN/5cGkd2TsLFjXricUQTWaQ6IZcz0Y1Rr4W7l+jqjvbT1xYfgy+W7qmwhpaIIhHs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Date:Subject:To:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=5XrAgtQd7kZszYIojrGZ0Srxdy9oshw1k1Bt3yL+/yY=; b=e
 aMsdkXZeJYsZ+KuFYrefNyfehcuWJ4J5s7vxq7fPC9UQFXJfO7T1B/jtVBrTxxu1hFCG660rudhbC
 H48cAgZQScsbru4G7LmHweqvemvmxqvVfMndQxb7oH9TSGsyLn3fk1u/ViFy/HAX7SshdhXzwRiHg
 eSm3zt39akjdNXhk=;
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1kcyOk-008R26-90
 for tboot-devel@lists.sourceforge.net; Wed, 11 Nov 2020 22:15:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1605132912;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type;
 bh=5XrAgtQd7kZszYIojrGZ0Srxdy9oshw1k1Bt3yL+/yY=;
 b=FbLTe2w4b16DT4XmUotkZgfidngA/8ZCzC/2HPded0thJGf7HjZV4bltd7nNANX6Eav5ph
 07TQqkRDY42m0CeSGFeUiLbFMXjBu4uw4XWs0JmF81n/RCazRZ8nNw9U869SrLN/fAakCT
 nNRoFg2I5cAkq9WGm1/xMFQ5LsArWYU=
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com
 [209.85.160.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-438-VuVTI5lINx2J-H81H3rm1Q-1; Wed, 11 Nov 2020 17:15:10 -0500
X-MC-Unique: VuVTI5lINx2J-H81H3rm1Q-1
Received: by mail-qt1-f198.google.com with SMTP id g12so2087896qtc.15
 for <tboot-devel@lists.sourceforge.net>; Wed, 11 Nov 2020 14:15:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:user-agent:from:to:subject:date:message-id
 :mime-version;
 bh=5XrAgtQd7kZszYIojrGZ0Srxdy9oshw1k1Bt3yL+/yY=;
 b=dwPu17bQ3/8LoR+MRb1hRUz+npFBxVxdCz3qmfL+Q9yJqBX3/PgYEFgZhxqm3Q31uV
 PDRnFwnyHJhsHj3UO0uOHNOot9vW2bhak5BY7iMO266tleZnHAqfGK00MHfnGFzBEX59
 imcErmUcTBmLCCDI+E7xdXFvBie9ngDXZHIkdSNNvdbWirpYfdr8+nx/uinsiSbYrbnd
 SmAdw4mMWFxju7OU+9dHRJ/Ezu6LlX3PwOrAhTanoWIKrdH1Z0lSxsCI+MPtv5Wm2BHx
 ybKb8f3HkIO7p+S1XaELFR5KJTvgm2IMZneNeQsaJc1RU3j55hXUEPfVwawRztkQEp2U
 Uw7A==
X-Gm-Message-State: AOAM532GzkeyGNr7O936w5v5uXW/Vf15JGLtcjYKeC+/DAMQoT3JEiP7
 3FsieZIz+8VExNBdsGmEDuBtcO+RmqwTVLrzaBZFrgjPub9YQu0wq9tewL9kgpKAiNargq1KBzr
 vD+zBbTGhtK4MORlUjbHcvGQk3h1QWJMnP1q78HIMKoUucdS6r5CVtspgFIY4Xj6LheNRRmydzb
 JSNQY8y64=
X-Received: by 2002:a0c:e443:: with SMTP id d3mr16348694qvm.18.1605132909846; 
 Wed, 11 Nov 2020 14:15:09 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwbKUFZyBND15+04WdYnH7wX15dV7B9IzxFfyF6AQhfzXvRbRrveGC+RY6Uy98HHEe/33FeWg==
X-Received: by 2002:a0c:e443:: with SMTP id d3mr16348669qvm.18.1605132909616; 
 Wed, 11 Nov 2020 14:15:09 -0800 (PST)
Received: from localhost (ip98-179-76-75.ph.ph.cox.net. [98.179.76.75])
 by smtp.gmail.com with ESMTPSA id q189sm3562884qkd.41.2020.11.11.14.15.08
 for <tboot-devel@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Nov 2020 14:15:08 -0800 (PST)
User-agent: mu4e 1.4.10; emacs 27.1
From: Jerry Snitselaar <jsnitsel@redhat.com>
To: tboot-devel@lists.sourceforge.net
Date: Wed, 11 Nov 2020 15:15:05 -0700
Message-ID: <87h7pv35hy.fsf@redhat.com>
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jsnitsel@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [63.128.21.124 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [63.128.21.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1kcyOk-008R26-90
Subject: [tboot-devel] tboot and tpm1.2
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


Would it be possible, or has any thought been given to being able to
build tboot with only tpm2.0 support? We have started to deprecate
support for tpm1.2, and eventually would like to just support
tpm2.0. One possible stopping point to accomplishing that is the
dependency tboot has on trousers. I don't know much about tboot,
so I don't know if that is something that could be possible in
the future.

Thanks,
Jerry



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
