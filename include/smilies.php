<?php
/////////////////////////////////////////////////////////////////////////////////////
// xbtit - Bittorrent tracker/frontend
//
// Copyright (C) 2004 - 2012  Btiteam
//
//    This file is part of xbtit.
//
// Redistribution and use in source and binary forms, with or without modification,
// are permitted provided that the following conditions are met:
//
//   1. Redistributions of source code must retain the above copyright notice,
//      this list of conditions and the following disclaimer.
//   2. Redistributions in binary form must reproduce the above copyright notice,
//      this list of conditions and the following disclaimer in the documentation
//      and/or other materials provided with the distribution.
//   3. The name of the author may not be used to endorse or promote products
//      derived from this software without specific prior written permission.
//
// THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR IMPLIED
// WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
// MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
// IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
// SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED
// TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
// PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
// LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
// NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
// EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//
////////////////////////////////////////////////////////////////////////////////////

$smilies = array(
  ':)' => 'smile1.gif',
  ';)' => 'wink.gif',
  ':D' => 'grin.gif',
  ':P' => 'tongue.gif',
  ':(' => 'sad.gif',
  ':\'(' => 'cry.gif',
  ':|' => 'noexpression.gif',
  ':-/' => 'confused.gif',
  ':-O' => 'ohmy.gif',
  '8)' => 'cool1.gif',
  'O:-' => 'angel.gif',
  '-_-' => 'sleep.gif',
  ':grrr:' => 'angry.gif',
  ':smile:' => 'smile2.gif',
  ':lol:' => 'laugh.gif',
  ':cool:' => 'cool2.gif',
  ':fun:' => 'fun.gif',
  ':thumbsup:' => 'thumbsup.gif',
  ':thumbsdown:' => 'thumbsdown.gif',
  ':blush:' => 'blush.gif',
  ':weep:' => 'weep.gif',
  ':unsure:' => 'unsure.gif',
  ':closedeyes:' => 'closedeyes.gif',
  ':yes:' => 'yes.gif',
  ':no:' => 'no.gif',
  ':love:' => 'love.gif',
  ':?:' => 'question.gif',
  ':!:' => 'excl.gif',
  ':idea:' => 'idea.gif',
  ':arrow:' => 'arrow.gif',
  ':hmm:' => 'hmm.gif',
  ':huh:' => 'huh.gif',
  ':w00t:' => 'w00t.gif',
  ':geek:' => 'geek.gif',
  ':look:' => 'look.gif',
  ':rolleyes:' => 'rolleyes.gif',
  ':kiss:' => 'kiss.gif',
  ':shifty:' => 'shifty.gif',
  ':blink:' => 'blink.gif',
  ':smartass:' => 'smartass.gif',
  ':sick:' => 'sick.gif',
  ':crazy:' => 'crazy.gif',
  ':wacko:' => 'wacko.gif',
  ':alien:' => 'alien.gif',
  ':wizard:' => 'wizard.gif',
  ':wave:' => 'wave.gif',
  ':wavecry:' => 'wavecry.gif',
  ':baby:' => 'baby.gif',
  ':ras:' => 'ras.gif',
  ':sly:' => 'sly.gif',
  ':devil:' => 'devil.gif',
  ':evil:' => 'evil.gif',
  ':evilmad:' => 'evilmad.gif',
  ':yucky:' => 'yucky.gif',
  ':nugget:' => 'nugget.gif',
  ':sneaky:' => 'sneaky.gif',
  ':smart:' => 'smart.gif',
  ':shutup:' => 'shutup.gif',
  ':shutup2:' => 'shutup2.gif',
  ':yikes:' => 'yikes.gif',
  ':flowers:' => 'flowers.gif',
  ':wub:' => 'wub.gif',
  ':osama:' => 'osama.gif',
  ':saddam:' => 'saddam.gif',
  ':santa:' => 'santa.gif',
  ':indian:' => 'indian.gif',
  ':guns:' => 'guns.gif',
  ':crockett:' => 'crockett.gif',
  ':zorro:' => 'zorro.gif',
  ':snap:' => 'snap.gif',
  ':beer:' => 'beer.gif',
  ':drunk:' => 'drunk.gif',
  ':sleeping:' => 'sleeping.gif',
  ':mama:' => 'mama.gif',
  ':pepsi:' => 'pepsi.gif',
  ':medieval:' => 'medieval.gif',
  ':rambo:' => 'rambo.gif',
  ':ninja:' => 'ninja.gif',
  ':hannibal:' => 'hannibal.gif',
  ':party:' => 'party.gif',
  ':snorkle:' => 'snorkle.gif',
  ':evo:' => 'evo.gif',
  ':king:' => 'king.gif',
  ':chef:' => 'chef.gif',
  ':mario:' => 'mario.gif',
  ':pope:' => 'pope.gif',
  ':fez:' => 'fez.gif',
  ':cap:' => 'cap.gif',
  ':cowboy:' => 'cowboy.gif',
  ':pirate:' => 'pirate.gif',
  ':rock:' => 'rock.gif',
  ':cigar:' => 'cigar.gif',
  ':icecream:' => 'icecream.gif',
  ':oldtimer:' => 'oldtimer.gif',
  ':wolverine:' => 'wolverine.gif',
  ':strongbench:' => 'strongbench.gif',
  ':weakbench:' => 'weakbench.gif',
  ':bike:' => 'bike.gif',
  ':music:' => 'music.gif',
  ':book:' => 'book.gif',
  ':fish:' => 'fish.gif',
  ':whistle:' => 'whistle.gif',
  ':stupid:' => 'stupid.gif',
  ':dots:' => 'dots.gif',
  ':axe:' => 'axe.gif',
  ':hooray:' => 'hooray.gif',
  ':yay:' => 'yay.gif',
  ':cake:' => 'cake.gif',
  ':hbd:' => 'hbd.gif',
  ':hi:' => 'hi.gif',
  ':offtopic:' => 'offtopic.gif',
  ':band:' => 'band.gif',
  ':hump:' => 'hump.gif',
  ':punk:' => 'punk.gif',
  ':bounce:' => 'bounce.gif',
  ':group:' => 'group.gif',
  ':console:' => 'console.gif',
  ':smurf:' => 'smurf.gif',
  ':spidey:' => 'spidey.gif',
  ':smurf:' => 'smurf.gif',
  ':rant:' => 'rant.gif',
  ':pimp:' => 'pimp.gif',
  ':nuke:' => 'nuke.gif',
  ':judge:' => 'judge.gif',
  ':jacko:' => 'jacko.gif',
  ':ike:' => 'ike.gif',
  ':greedy:' => 'greedy.gif',
  ':dumbells:' => 'dumbells.gif',
  ':clover:' => 'clover.gif',
  ':shit:' => 'shit.gif',
  ':beer1:' => 'beer1.gif',
  ':bmkid:' => 'bmkid.gif',
);

$privatesmilies = array(
  ':-)' => 'smile1.gif',
  ';-)' => 'wink.gif',
  ':-D' => 'grin.gif',
  ':-P' => 'tongue.gif',
  ':-(' => 'sad.gif',
  ':Boozer:' => 'alcoholic.gif',
  ':spank:' => 'spank.gif',
);
?>