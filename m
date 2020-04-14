Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 37CF51A83C9
	for <lists+tboot-devel@lfdr.de>; Tue, 14 Apr 2020 17:51:24 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1jONqD-0006KJ-MO; Tue, 14 Apr 2020 15:51:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <timo.lindfors@iki.fi>) id 1jONq9-0006K5-Np
 for tboot-devel@lists.sourceforge.net; Tue, 14 Apr 2020 15:51:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:References:Message-ID:
 In-Reply-To:Subject:cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yaI7OFUMwTb6EGYCGEDf5XnLPRwntF+IWJ31ciB89zI=; b=Sc3YGfcftQ4xIT2yrMOS+ZRamW
 fdCJ/Ci9HqUyOXdUZVoBz+WghCUU0l1uedYZ3wqojUJaLnBnIuzUkOYioiYcp5p1VSqtYxPoaJ2+f
 JZDA+eBaUk9IaH7ZtqwlQRk10yl+vhphTiy/JkOPnT3uOVMlyLDNzIQPM/c1EKsXxN8Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:References:Message-ID:In-Reply-To:Subject:cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=yaI7OFUMwTb6EGYCGEDf5XnLPRwntF+IWJ31ciB89zI=; b=Z073WSl2bFECnESZek8WsZC0eE
 Y9f7UrCdSdxqe5ykBk8lUSHBugfEx7toJpFq3WOKZudCFfNgma5khd3c4rTfHBW7qgAMTQxWiaEr/
 B4QZf8/4sP8J7nQfrBkT0V1q00RGHN+XoTOh0shSNFy4f4DydkmQFKdKLnuzGyVKtRhM=;
Received: from meesny.iki.fi ([195.140.195.201])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jONq0-00EoV2-Il
 for tboot-devel@lists.sourceforge.net; Tue, 14 Apr 2020 15:51:09 +0000
Received: from mail.home (82-181-208-90.bb.dnainternet.fi [82.181.208.90])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: timo.lindfors)
 by meesny.iki.fi (Postfix) with ESMTPSA id AA551205E9;
 Tue, 14 Apr 2020 18:33:16 +0300 (EEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi; s=meesny;
 t=1586878396;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=yaI7OFUMwTb6EGYCGEDf5XnLPRwntF+IWJ31ciB89zI=;
 b=KtmwMKo9yqV4jPP3VtDG2a5HnXACFPwUVr/bYvXEMqpCVLO4BXWQAOd6RtwDex+KRdJunJ
 gnzfGteiLz9AXXAgSCjwjesCuQrNJ7Lcz+yNuHmg2fANNnp7fPjU+du7DZE25/7rrvR2I7
 mRZQJ4YyzTsP4wvWOOJ7mv5D20H+Ew8=
Received: from localhost ([127.0.0.1]) by mail.home with esmtp (Exim 4.89)
 (envelope-from <timo.lindfors@iki.fi>)
 id 1jONYh-0002zB-Vx; Tue, 14 Apr 2020 18:33:08 +0300
Date: Tue, 14 Apr 2020 18:33:07 +0300 (EEST)
From: Timo Lindfors <timo.lindfors@iki.fi>
To: Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>
In-Reply-To: <1787201313da7a0fdc21a52e6319c94c80c995bb.camel@linux.intel.com>
Message-ID: <alpine.DEB.2.20.2004141823080.11458@mail.home>
References: <alpine.DEB.2.20.2003312317470.19721@mail.home>
 <dc275925ce5f44633594ec3fd6732b13f3abeb4c.camel@linux.intel.com>
 <alpine.DEB.2.20.2004021722080.21308@mail.home>
 <d5d36808a38af260d0e8390aaaf5dc6724cf787f.camel@linux.intel.com> 
 <alpine.DEB.2.20.2004081710220.25471@mail.home>
 <c5561325a53303ad556dadf49ba7269295ac30fc.camel@linux.intel.com>
 <alpine.DEB.2.20.2004081831250.25596@mail.home>
 <89eb86fd43cd9cadd48db77433959d708d060e74.camel@linux.intel.com>
 <alpine.DEB.2.20.2004141036360.11002@mail.home>
 <1787201313da7a0fdc21a52e6319c94c80c995bb.camel@linux.intel.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi;
 s=meesny; t=1586878396;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=yaI7OFUMwTb6EGYCGEDf5XnLPRwntF+IWJ31ciB89zI=;
 b=rATOxVV+Qp5/XmHEmsQRtMMrvTAKZDgGnXGm2HqWEuFCcOpvkL6g1c/t/lcHgW9xvbKchY
 aXw8Oy8+dUdCaiNaJHc7EdN2NTRQH+wUcFSyWZxeWUIymff7ch7VporajpUPFzJp31l155
 rBd3FLzEoRqkqFCoG1SMwomUd75Fs70=
ARC-Seal: i=1; s=meesny; d=iki.fi; t=1586878396; a=rsa-sha256; cv=none;
 b=riMFAEmZxjkpUH2d9t83lp+B2iH3JPjVsLBIwrEwDSUMmTTREFSZX4YyrHPQ5W5Ij4OYZ9
 reIyggwV64bil6TMjoQdttOEZickyDUoSMb72NdV4XIhwvV96vyye6FAXXgCLwiMHR6MxA
 A4QPa3h7LWcdq9MbVhgjDo/cULXwMyE=
ARC-Authentication-Results: i=1; ORIGINATING;
 auth=pass smtp.auth=timo.lindfors smtp.mailfrom=timo.lindfors@iki.fi
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: f.name]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1jONq0-00EoV2-Il
Subject: Re: [tboot-devel] tboot not picking the right ACM module on Dell
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
Cc: tboot-devel@lists.sourceforge.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: tboot-devel-bounces@lists.sourceforge.net

On Tue, 14 Apr 2020, Lukasz Hawrylko wrote:
> I don't know if that tool exists. Anyway, I will look at that multiple
> SINITs bug in TBOOT, when it will be fixed, that kind of tool will not
> be required.

True, that would mostly not be needed if tboot worked automatically. I can 
think of two use cases where it might still be useful:

1) You could save disk space and boot speed by not having grub read all 
SINIT modules from disk.

2) You might want to know before reboot that you have the matching SINIT 
module if you are enabling TPM support remotely for your server :)

> In mean time, you can check acminfo from utils directory. It examines
> SINIT binary and also can check if SINIT is compatible with current
> platform. You can easily adopt it (with bash scripting help) to do what
> you need.

Thanks, I will look into that.


Currently I am trying to automate sealing of disk encryption keys
after an upgrade. Here's a quick and dirty prototype that "works on my 
server"(TM) but probably contains many bugs. In particular it does not 
currently know how to predict PCR-17 and just assumes that it has the same 
value on next reboot. Posting it here in the hope that this will activate 
discussion on the list for potential alternatives :)

#!/usr/bin/python3
# tpm-luks-auto-seal 2020-04-14
import argparse
import subprocess
import hashlib
import binascii
import glob
import re
import os
import tempfile

INITIAL_HASH = b'\x00'*20

def text_to_hash(text):
     hash = binascii.unhexlify(text.replace(' ', '').replace('\n', ''))
     assert len(hash) == 20
     return hash

def hash_to_text(hash):
     assert len(hash) == 20
     return binascii.hexlify(hash).decode('utf-8')

def extend_hash(hash1, hash2):
     assert len(hash1) == 20
     assert len(hash2) == 20
     return sha1(hash1 + hash2)

def sha1(data):
     m = hashlib.sha1()
     m.update(data)
     return m.digest()

def predict_pcrs(configuration):
     pcr = {}

     pcr[17] = get_current_pcrs()[17]

     pcr[18] = INITIAL_HASH
     tboot_hash = text_to_hash(subprocess.check_output([
         '/usr/sbin/lcp_mlehash',
         '-c',
         configuration.tboot_cmdline,
         configuration.tboot], encoding='utf-8'))
     pcr[18] = extend_hash(pcr[18], tboot_hash)
     with open(configuration.kernel, 'rb') as f:
         kernel_hash = sha1(sha1(configuration.kernel_cmdline.encode('utf-8')) + sha1(f.read()))
         pcr[18] = extend_hash(pcr[18], kernel_hash)

     pcr[19] = INITIAL_HASH
     with open(configuration.initrd, 'rb') as f:
         initrd_hash = sha1(sha1(b'') + sha1(f.read()))
         pcr[19] = extend_hash(pcr[19], initrd_hash)

     return pcr

class Configuration:
     def __init__(self, tboot, tboot_cmdline, kernel, kernel_cmdline, initrd):
         self.tboot = tboot
         self.tboot_cmdline = tboot_cmdline
         self.kernel = kernel
         self.kernel_cmdline = kernel_cmdline
         self.initrd = initrd
     def __str__(self):
         return "{}({}) {}({}) {}".format(self.tboot, self.tboot_cmdline, self.kernel, self.kernel_cmdline, self.initrd)

def get_current_pcrs():
     pcrs = {}
     with open("/sys/devices/pnp0/00:05/tpm/tpm0/pcrs") as f:
         for line in f.readlines():
             assert line.startswith("PCR-")
             n = int(line.split(":")[0].split("-")[1])
             pcrs[n] = text_to_hash(line.split(":")[1])
     return pcrs

def get_grub_entries(cfg, prefix):
     inside_entry = False
     entries = []
     with open(cfg) as f:
         for line in f.readlines():
             line = line.rstrip().strip()
             if line.startswith("menuentry"):
                 inside_entry = True
                 entry = {}
             elif inside_entry:
                 parts = re.split("\s+", line)
                 if line.startswith("}"):
                     if "tboot_cmdline" in entry:
                         entries.append(entry)
                     inside_entry = False
                 elif parts[0] == "multiboot":
                     entry["tboot"] = prefix + parts[1]
                     entry["tboot_cmdline"] = parts[2]
                 elif parts[0] == "module" and "vmlinuz" in parts[1]:
                     entry["kernel"] = prefix + parts[1]
                     entry["kernel_cmdline"] = " ".join(parts[2:])
                 elif parts[0] == "module" and "initrd" in parts[1]:
                     entry["initrd"] = prefix + parts[1]
     return entries

def get_configurations():
     configurations = []

     for e in get_grub_entries("/boot/grub/grub.cfg", "/boot"):
         assert os.path.exists(e["tboot"])
         assert os.path.exists(e["kernel"])
         assert os.path.exists(e["initrd"])
         if " single " in e["kernel_cmdline"]:
             # Skip for  now
             continue

         c = Configuration(tboot=e["tboot"],
                           tboot_cmdline=e["tboot_cmdline"],
                           kernel=e["kernel"],
                           kernel_cmdline=e["kernel_cmdline"],
                           initrd=e["initrd"])
         configurations.append(c)
     return configurations

if __name__ == "__main__":
     parser = argparse.ArgumentParser()
     parser.add_argument("--luks-key-file", default="/etc/luks.key")
     parser.add_argument("--force", action="store_true")
     args = parser.parse_args()

     print("==== Current configuration")
     current_pcr = get_current_pcrs()
     for i in range(17, 20):
         print("PCR-{} {}".format(i, hash_to_text(current_pcr[i])))

     configurations = get_configurations()
     count = 1
     pcrs = []
     for c in configurations:
         print("==== Predicted configuration #{}".format(count))
         print("# {}".format(c))
         pcr = predict_pcrs(c)
         for i in range(17, 20):
             print("PCR-{} {}{}".format(i, hash_to_text(pcr[i]), "*" if pcr[i]!=current_pcr[i] else ""))
         count += 1
         pcrs.append(pcr)

     with open(args.luks_key_file) as f:
         luks_key_length = len(f.read())
     assert luks_key_length >= 12
     assert luks_key_length < 128

     if not args.force:
         reply = input("Do you want to enable these configurations (use --force to automate this) (Y/n)? ")
         if not reply.lower().startswith("y"):
             print("Aborting")
             sys.exit(0)

     print("Removing old configurations (1-20)")
     for i in range(20):
         try:
             subprocess.check_call(["tpm_nvrelease",
                                    "-i", str(i+1),
                                    "--pwdo=1234"])
         except subprocess.CalledProcessError:
             pass

     for i in range(len(configurations)):
         print("Enabling configuration #{}".format(i+1))
         with tempfile.NamedTemporaryFile(mode="w+") as f:
             for j in range(17, 20):
                 f.write("r {} {}\n".format(j, hash_to_text(pcrs[i][j])))
             f.flush()

             subprocess.check_call(["tpm_nvdefine",
                                    "-i", str(i+1),
                                    "-s", str(luks_key_length),
                                    "-p", "OWNERWRITE|READ_STCLEAR",
                                    "--pwdo=1234",
                                    "-z",
                                    "-f", f.name])
             subprocess.check_call(["tpm_nvwrite",
                                    "-i", str(i+1),
                                    "-f", args.luks_key_file,
                                    "-z", "--password=1234"])




-Timo


_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
