/*
 * Copyright 2019 mtkrtk
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#ifndef __spi__
#define __spi__

#include <stdint.h>

extern const uint8_t *spiSendBuffer;
extern uint8_t *spiReceiveBuffer;
extern uint32_t spiBytesToSend;
extern uint32_t spiBytesToReceive;

#ifndef INLINE_ALL
void spi_init(void);
void spi_transfer(const void *txBuffer, void *rxBuffer, uint32_t length);
extern void spi_transfer_callback(void);
#endif

#endif
