/*
 * Copyright (C) 2003, 2004, 2005, 2006, 2007
 * Robert Lougher <rob@jamvm.org.uk>.
 *
 * This file is part of JamVM.
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License
 * as published by the Free Software Foundation; either version 2,
 * or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301, USA.
 */

#include "config.h"

/* The iPhone currently appears to use a slightly modified
   OABI convention, where r7 is used as a frame pointer.
   CallNativeOABI.S does not modify or use r7.

   EABI support is included in case iPhone moves to EABI.
   Most ARM Linux distributions have made this move.
*/

#ifdef __ARM_EABI__
#include "callNativeEABI.S"
#else
#include "callNativeOABI.S"
#endif
