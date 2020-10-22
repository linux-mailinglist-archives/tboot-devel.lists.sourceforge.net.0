Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BF292295E25
	for <lists+tboot-devel@lfdr.de>; Thu, 22 Oct 2020 14:17:29 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1kVZWu-00087b-Pd; Thu, 22 Oct 2020 12:17:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcamuso@redhat.com>) id 1kVZWs-00087R-P4
 for tboot-devel@lists.sourceforge.net; Thu, 22 Oct 2020 12:17:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Date:Message-ID:Subject:From:Cc:To:In-Reply-To:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ckvEMB91hF1C+OVNYr4ZIgGxKNIbhBm9w8peLy6+pUw=; b=iU7JwoawGOEeUpWSEkHjwTl0J+
 ZJEC1Mi8fetb8ilIh4/aKpDjrQIRwHGH/P6aN7mHTtJufYDqmLtMjRtqYvRrvCsNqCbl1FGBWhXk+
 f6hTlgsjsXsb43purRHtVfUx1+xR/TKFxcVnBl0nq3hHYVnlCfVE4ZAUBRsME2hHjuVs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Date:Message-ID:
 Subject:From:Cc:To:In-Reply-To:Sender:Reply-To:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=ckvEMB91hF1C+OVNYr4ZIgGxKNIbhBm9w8peLy6+pUw=; b=T
 MOArXO/FtdiGKoGb8RYzF8Alwlh3Tt5NLjKjLF0M084LXiFtDo0ORiUpgrKCjHUkxMKElyGIAFnrJ
 vlslVWYIaLjD1NX43w0yt9cVnbn/Q/iiQfCywTj8JC+EJbESFQqaD5XKJjPQ7usQLIq8kxGXNKA5C
 1fXvvNjAo/fk/WDY=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1kVZWm-008dd9-AG
 for tboot-devel@lists.sourceforge.net; Thu, 22 Oct 2020 12:17:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1603369022;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:  in-reply-to:in-reply-to; 
 bh=ckvEMB91hF1C+OVNYr4ZIgGxKNIbhBm9w8peLy6+pUw=;
 b=IJUxsuSU7nmfy35eEPsofl7dXg5PpNWWLGk/2kMLKW74+23OgizKa1yuRMvsAU5MYajmc1
 Dgcw3jj38s7So4zOzrMkFzkfDasUF9gpnTKwBvf3vx3IdTJG3Sazb/F3j8Z2SjCDNnwiDA
 pYxOR0Jy2PIZbbPlqJB0/vOeoTZhRTY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-60-o78v_OH6M4SRsmjLhXBkBA-1; Thu, 22 Oct 2020 08:10:34 -0400
X-MC-Unique: o78v_OH6M4SRsmjLhXBkBA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 837305F9D0;
 Thu, 22 Oct 2020 12:10:33 +0000 (UTC)
Received: from [10.3.112.23] (ovpn-112-23.phx2.redhat.com [10.3.112.23])
 by smtp.corp.redhat.com (Postfix) with ESMTP id F2A905578E;
 Thu, 22 Oct 2020 12:10:32 +0000 (UTC)
In-Reply-To: 
To: Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>
From: tony camuso <tcamuso@redhat.com>
Message-ID: <19014eb0-1933-bb62-8378-1ab01bd80aa2@redhat.com>
Date: Thu, 22 Oct 2020 08:10:32 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=tcamuso@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: intel.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [216.205.24.124 listed in list.dnswl.org]
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
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1kVZWm-008dd9-AG
Subject: Re: [tboot-devel] tboot fails to build after applying changeset:
 599:d4c520cbea8c
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
Cc: tboot-devel@lists.sourceforge.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: tboot-devel-bounces@lists.sourceforge.net

> Message: 2
> Date: Wed, 21 Oct 2020 09:45:02 +0200
> From: Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>
> To: tony camuso <tcamuso@redhat.com>,
> 	tboot-devel@lists.sourceforge.net
> Subject: Re: [tboot-devel] tboot fails to build after applying
> 	changeset: 599:d4c520cbea8c
> Message-ID:
> 	<969ac82b8f87a33a73c4c395a5481851f0be071f.camel@linux.intel.com>
> Content-Type: text/plain; charset="UTF-8"
> 
> Hi Tony
> 
> On Tue, 2020-10-20 at 12:48 -0400, tony camuso wrote:
>> I'm applying the following patches from the hg repo.
>>
>> 0001-Fix-CFLAGS-passing-to-recursive-makefiles.patch
>> 0002-Install-man-pages-only-for-tools-that-are-installed.patch
>> 0003-Add-man-pages-for-all-installed-commands.patch
>> 0004-Fix-spelling-errors.patch
>> 0005-All-TXT-tools-now-have-txt-prefix.patch
>> 0006-Update-man-pages-for-txt-tools.patch
>> 0007-Clarify-license-issues.patch
>> 0008-Fix-issues-reported-by-Coverity-Scan.patch
>> 0009-Fix-man-page-syntax-error.patch
>> 0010-Ensure-txt-acminfo-does-not-print-false-information-.patch
>> 0011-Do-not-try-to-read-EFI-mem-map-when-booted-with-mult.patch
>> 0012-Use-SHA1-based-default-policy-when-TPM1.2-is-detecte.patch
>> 0013-Unmask-NMI-after-returning-from-SINIT.patch
>> 0014-Update-GRUB-scripts-to-use-multiboot2-only.patch
>> 0015-Update-lcptools-v2-to-meet-requirements-from-MLE-DG-.patch
>> 0016-Implement-SM2-signing-and-SM2-signature-verification.patch
>>
>> After applying this patch ...
>> changeset:   599:d4c520cbea8c
>> user:        Mateusz Mowka <mateusz.mowka@intel.com>
>> date:        Fri Jul 17 14:19:31 2020 +0200
>> summary:     Implement SM2 signing and SM2 signature verification.
>>
>> I get the following build errors. What am I missing?
>>
>> lcputils.c: In function 'verify_ec_signature':
>> lcputils.c:730:19: error: 'NID_sm2' undeclared (first use in this function)
>>            curveId = NID_sm2;
>>                      ^
>> lcputils.c:730:19: note: each undeclared identifier is reported only once for each function it appears in
>> lcputils.c:731:9: error: implicit declaration of function 'EVP_sm3' [-Werror=implicit-function-declaration]
>>            mdtype = EVP_sm3();
>>            ^
> 
> What is your OpenSSL version? These functions should be available in
> OpenSSL since 1.1.1 version.
> 
> Thanks,
> Lukasz
> 

OK, that was it.
$ openssl version
OpenSSL 1.0.2k-fips  26 Jan 2017

I don't see that problem with ..
OpenSSL 1.1.1g FIPS  21 Apr 2020

THANKS!



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
