Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 287AD3B3165
	for <lists+tboot-devel@lfdr.de>; Thu, 24 Jun 2021 16:32:24 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1lwQOu-0000NL-Eb; Thu, 24 Jun 2021 14:32:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <tcamuso@redhat.com>) id 1lwQOt-0000NE-Al
 for tboot-devel@lists.sourceforge.net; Thu, 24 Jun 2021 14:32:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Date:Message-ID:Subject:From:To:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GvTzY+G0/noe5omL/iTQUzQ+xZSPBGM2skHRcPeZDvs=; b=h1plAa5H3Wy3fe4YTTOXhbu1M3
 LA/zzDuhmS+HxZU+Uxr/NMN6UdMidHs9Ts5hb9yA778q4G0nu3B6SIrmYrHjdyPEn7jXUg1DjicNJ
 OvrriWuehlolcy+ifSPKeN3r8nsq2e00C5bqrC5IlhB9WLRNhDkvIYxyuSS30dUkOnFk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Date:Message-ID:
 Subject:From:To:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=GvTzY+G0/noe5omL/iTQUzQ+xZSPBGM2skHRcPeZDvs=; b=b
 34Q7mLTBLz+u2dwwGxjMZuFToq+ybGFGk2q0OAOWwT83TaHq+DAtbEZXvbYebKoq/lnuHKY8Z7cpn
 3p6GAIqNw9t6rWZjYuhXzVVGhTFU4GV8H7sbpJW95I7ZTlhD7fiNZ/wFveWGCsqpjoB68F9S3V73v
 ZgOKVRXGdyOYHj+s=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lwQOq-0004MX-V7
 for tboot-devel@lists.sourceforge.net; Thu, 24 Jun 2021 14:32:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1624545128;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=GvTzY+G0/noe5omL/iTQUzQ+xZSPBGM2skHRcPeZDvs=;
 b=edzeXFVD96vEV4vbhykrtm2r1KAQoFaI9gs8wlda47FVhBsGPBn2w0RMLXvZrYs4DGT4qQ
 ZztbEg52yCNPnNZOZlNlOcOUsVwjlHoTzI5/oCKP1VOjodybtGod3JH6vle0Sc/ph+BK6w
 vTTIJUG/+846zaLVSY/vjtGot8Cex1c=
Received: from mail-oo1-f72.google.com (mail-oo1-f72.google.com
 [209.85.161.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-573-cRD7Qs5gOLSxwbIfuYwuXA-1; Thu, 24 Jun 2021 10:32:06 -0400
X-MC-Unique: cRD7Qs5gOLSxwbIfuYwuXA-1
Received: by mail-oo1-f72.google.com with SMTP id
 t19-20020a4ae4130000b029023950cb8d35so3838153oov.6
 for <tboot-devel@lists.sourceforge.net>; Thu, 24 Jun 2021 07:32:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:from:subject:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=GvTzY+G0/noe5omL/iTQUzQ+xZSPBGM2skHRcPeZDvs=;
 b=AHjp3Q9P+kICkkoT4zv7ZbLhBosICR9ZO4xpeUUJ60iUKASBktgHS1PuHrTFRS3HdU
 C30Z43wRvVlh3af2tvXKTW2StNuyYI4qvAn39J5EXmwdF9DfNcGwGevN1BIr8De014nF
 bjtoIVyn774QBI8Y8oUQ3410I7HRoqoLO1GjZ4Rqu9omhC3t12Vdd7ziBkR+zb2W4nuz
 2+R9YcArVIB8iMAI8NY5mHRur1cfWQMjZskhNpGAscfF3xvRszNRwouSaV40mwlYcWvp
 wbwnzP3MCxwMKKUYeIyAIme4Q2xuHW+WKDif5kb9kUu7hVWk4XvQI+cQDqKSgojUrvTd
 lRGg==
X-Gm-Message-State: AOAM531d+TjHmRi40j8W0cf19LpElr2XRVo+CPXgt9E0El3xFsvhPl4v
 QWmG9BbjM0U6oinNnpkcOvxzgX0gTcJ9XVrSEYzOUTN+yjE0Qk7pndmhi0i8Ank+pijjpZJBSak
 mmSzNN8OR7AulMNEtFMK/R+E9xG3TV5ybp18dbRDmauqEXftO2LEGL//IX9HoiVHXM4B3O12oiO
 3uh1bIyw==
X-Received: by 2002:a4a:c55:: with SMTP id n21mr4637850ooe.59.1624545125715;
 Thu, 24 Jun 2021 07:32:05 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxf9OMka5NMMwfr0+uy7Qxua/iA+pjWSnxWfRosxwMmVngoWZ+9/1veutWJa3y/kPt6joz3Lg==
X-Received: by 2002:a4a:c55:: with SMTP id n21mr4637824ooe.59.1624545125407;
 Thu, 24 Jun 2021 07:32:05 -0700 (PDT)
Received: from [192.168.1.5] ([72.64.5.41])
 by smtp.gmail.com with ESMTPSA id v20sm706835otp.81.2021.06.24.07.32.04
 for <tboot-devel@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 24 Jun 2021 07:32:04 -0700 (PDT)
To: tboot-devel@lists.sourceforge.net
From: Tony Camuso <tcamuso@redhat.com>
Message-ID: <7b61ac19-b3c4-3a0f-4530-3ebad6cd36fb@redhat.com>
Date: Thu, 24 Jun 2021 10:32:02 -0400
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=tcamuso@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.4 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lwQOq-0004MX-V7
Subject: [tboot-devel] SSL3 compliance updates
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

While SSL3 will provide backward compliance for deprecated
functions for a while, there are a number of them in tboot
that must be updated before backwards compliance is dropped
in SSL3.

Is there an ETA for SSL3 compliance?



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
