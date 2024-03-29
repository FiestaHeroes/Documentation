| AbState              |                    |                                                                                                                                          |
| -------------------- | ------------------ | ---------------------------------------------------------------------------------------------------------------------------------------- |
| SHINE_ABSTATE_ID     | ID                 | Abnormal Status ID                                                                                                                       |
| STR[32]              | InxName            | State Abnormality Index Linked with StaName of ActiveSkill                                                                               |
| INX["ABSTATEINDEX"]  | AbStataIndex       | Status Abnormal Index Refers to the global index enum value.                                                                             |
| BYTE                 | KeepTimePower      | If the value is 1, you can increase skill power.                                                                                         |
| BYTE                 | StateGrade         | Divide status ailments into low, intermediate, and advanced levels.                                                                      |
| STR[32]              | PartyState1        | Abnormal conditions that can be cast when there is only one party member                                                                 |
| STR[32]              | PartyState2        | Abnormal conditions that can be cast when in a party of 2                                                                                |
| STR[32]              | PartyState3        | Abnormal conditions that can be cast when in a party of 3                                                                                |
| STR[32]              | PartyState4        | Abnormal conditions that can be cast when in a party of 4                                                                                |
| STR[32]              | PartyState5        | Abnormal conditions that can be cast when in a party of 5                                                                                |
| DWORD                | PartyRange         | If this part is not empty, PartyState is given to the person whose PartyEnchantNumber is in PartyRange every 5 seconds.                  |
| DWORD                | PartyEnchantNumber | Depending on the addition of party members, specify how many times to upgrade the party buff level until the number of additions         |
| STR[32]              | SubAbState         | Index of SubAbState to apply in this state or more                                                                                       |
| INX["DispelAttr"]    | DispelIndex        | A value that defines the resistance or cancellation of status ailments that the character receives from mobs                             |
| INX["SubDispelAttr"] | SubDispelIndex     | MobInfo The value that defines the state abnormality corresponding to the number displayed in the MobResist sheet of Excel.              |
| BYTE                 | IsSave             | Whether or not to save state abnormalities when linking                                                                                  |
| STR[32]              | MainStateInx       | If the state abnormality consists of Main and Sub, insert this value of the Sub state abnormality into the Main state abnormality index. |
| BYTE                 | Duplicate          | How many stacks are possible                                                                                                             |

## Abstate Types

Abstates have a hidden type that changes how it can be used. A simple dump:


| Index | Type |
| -------------------- | ------------------ | 
| 0 | Normal |
| 1 | Tick |
| 2 | Normal |
| 3 | Party |
| 4 | Normal |
| 5 | Normal |
| 6 | Normal |
| 7 | Normal |
| 8 | Normal |
| 9 | Normal |
| 10 | Normal |
| 11 | Normal |
| 12 | Normal |
| 13 | Normal |
| 14 | Tick |
| 15 | RestCount |
| 16 | RestCount |
| 17 | Normal |
| 18 | Party |
| 19 | Normal |
| 20 | Normal |
| 21 | Normal |
| 22 | Tick |
| 23 | Normal |
| 24 | Tick |
| 25 | Normal |
| 26 | Party |
| 27 | Normal |
| 28 | RestCount |
| 29 | Party |
| 30 | Normal |
| 31 | Normal |
| 32 | Normal |
| 33 | Normal |
| 34 | Normal |
| 35 | Normal |
| 36 | Normal |
| 37 | Normal |
| 38 | Normal |
| 39 | Normal |
| 40 | Normal |
| 41 | Normal |
| 42 | Normal |
| 43 | Normal |
| 44 | Normal |
| 45 | Normal |
| 46 | Normal |
| 47 | Normal |
| 48 | Normal |
| 49 | Normal |
| 50 | Normal |
| 51 | Tick |
| 52 | Normal |
| 53 | Party |
| 54 | Normal |
| 55 | Tick |
| 56 | Normal |
| 57 | Tick |
| 58 | Normal |
| 59 | Party |
| 60 | Normal |
| 61 | Tick |
| 62 | Normal |
| 63 | Normal |
| 64 | Tick |
| 65 | Normal |
| 66 | Normal |
| 67 | Normal |
| 68 | Normal |
| 69 | Normal |
| 70 | Normal |
| 71 | Normal |
| 72 | Normal |
| 73 | Normal |
| 74 | Normal |
| 75 | Normal |
| 76 | Normal |
| 77 | Normal |
| 78 | Normal |
| 79 | Tick |
| 80 | Normal |
| 81 | Normal |
| 82 | Normal |
| 83 | Normal |
| 84 | Normal |
| 85 | EachTick |
| 86 | Normal |
| 87 | Normal |
| 88 | Normal |
| 89 | Normal |
| 90 | Party |
| 91 | Normal |
| 92 | Normal |
| 93 | Normal |
| 94 | Normal |
| 95 | Normal |
| 96 | Normal |
| 97 | Polymorph |
| 98 | Normal |
| 99 | Normal |
| 100 | Tick |
| 101 | Normal |
| 102 | Normal |
| 103 | Tick |
| 104 | Normal |
| 105 | Normal |
| 106 | Normal |
| 107 | Normal |
| 108 | Normal |
| 109 | Tick |
| 110 | Normal |
| 111 | Normal |
| 112 | Normal |
| 113 | EachTick |
| 114 | EachTick |
| 115 | EachTick |
| 116 | Tick |
| 117 | Normal |
| 118 | Normal |
| 119 | Normal |
| 120 | Normal |
| 121 | Normal |
| 122 | Normal |
| 123 | Normal |
| 124 | Normal |
| 125 | Normal |
| 126 | Normal |
| 127 | Normal |
| 128 | Normal |
| 129 | Normal |
| 130 | Normal |
| 131 | Normal |
| 132 | Normal |
| 133 | Normal |
| 134 | Normal |
| 135 | Normal |
| 136 | Normal |
| 137 | Normal |
| 138 | Normal |
| 139 | Normal |
| 140 | Normal |
| 141 | Tick |
| 142 | Tick |
| 143 | Tick |
| 144 | Tick |
| 145 | Tick |
| 146 | Tick |
| 147 | Tick |
| 148 | Tick |
| 149 | Tick |
| 150 | Tick |
| 151 | Normal |
| 152 | Normal |
| 153 | Normal |
| 154 | Normal |
| 155 | Normal |
| 156 | Normal |
| 157 | Normal |
| 158 | Normal |
| 159 | Normal |
| 160 | Normal |
| 161 | Normal |
| 162 | Normal |
| 163 | Normal |
| 164 | Normal |
| 165 | Normal |
| 166 | Normal |
| 167 | Normal |
| 168 | Normal |
| 169 | Normal |
| 170 | Normal |
| 171 | Normal |
| 172 | Normal |
| 173 | Tick |
| 174 | Tick |
| 175 | Tick |
| 176 | Tick |
| 177 | Tick |
| 178 | Tick |
| 179 | Tick |
| 180 | Tick |
| 181 | Tick |
| 182 | Tick |
| 183 | Tick |
| 184 | Tick |
| 185 | Tick |
| 186 | Tick |
| 187 | Tick |
| 188 | Tick |
| 189 | Tick |
| 190 | Tick |
| 191 | Tick |
| 192 | Tick |
| 193 | Tick |
| 194 | Tick |
| 195 | Tick |
| 196 | Tick |
| 197 | Tick |
| 198 | Normal |
| 199 | Normal |
| 200 | Normal |
| 201 | Normal |
| 202 | Normal |
| 203 | Normal |
| 204 | Tick |
| 205 | Tick |
| 206 | Tick |
| 207 | Tick |
| 208 | Tick |
| 209 | Tick |
| 210 | Tick |
| 211 | Tick |
| 212 | Tick |
| 213 | Tick |
| 214 | Tick |
| 215 | Normal |
| 216 | Normal |
| 217 | Normal |
| 218 | Normal |
| 219 | Normal |
| 220 | Normal |
| 221 | Normal |
| 222 | Normal |
| 223 | Normal |
| 224 | Normal |
| 225 | Normal |
| 226 | Normal |
| 227 | Normal |
| 228 | Normal |
| 229 | Normal |
| 230 | Normal |
| 231 | Normal |
| 232 | Normal |
| 233 | Normal |
| 234 | Normal |
| 235 | Normal |
| 236 | Normal |
| 237 | Normal |
| 238 | Normal |
| 239 | Normal |
| 240 | Normal |
| 241 | Normal |
| 242 | Normal |
| 243 | Normal |
| 244 | Normal |
| 245 | Normal |
| 246 | Normal |
| 247 | Normal |
| 248 | Normal |
| 249 | Normal |
| 250 | Normal |
| 251 | Normal |
| 252 | Normal |
| 253 | Normal |
| 254 | Normal |
| 255 | Normal |
| 256 | Normal |
| 257 | Normal |
| 258 | Normal |
| 259 | Normal |
| 260 | Normal |
| 261 | Normal |
| 262 | Normal |
| 263 | Normal |
| 264 | Normal |
| 265 | Normal |
| 266 | Normal |
| 267 | Normal |
| 268 | Normal |
| 269 | Normal |
| 270 | Normal |
| 271 | Normal |
| 272 | Normal |
| 273 | Normal |
| 274 | Normal |
| 275 | Normal |
| 276 | Normal |
| 277 | Normal |
| 278 | Normal |
| 279 | Normal |
| 280 | Normal |
| 281 | Normal |
| 282 | Normal |
| 283 | Normal |
| 284 | Normal |
| 285 | Normal |
| 286 | Normal |
| 287 | Normal |
| 288 | Hide |
| 289 | Normal |
| 290 | Normal |
| 291 | Normal |
| 292 | Normal |
| 293 | WedCpl |
| 294 | Normal |
| 295 | Normal |
| 296 | Tick |
| 297 | GldAca |
| 298 | Normal |
| 299 | GldAca |
| 300 | Normal |
| 301 | Normal |
| 302 | Normal |
| 303 | Tick |
| 304 | Tick |
| 305 | Normal |
| 306 | Normal |
| 307 | Normal |
| 308 | Normal |
| 309 | Normal |
| 310 | Normal |
| 311 | Normal |
| 312 | Normal |
| 313 | Normal |
| 314 | Normal |
| 315 | Normal |
| 316 | EachTick |
| 317 | EachTick |
| 318 | EachTick |
| 319 | EachTick |
| 320 | EachTick |
| 321 | EachTick |
| 322 | EachTick |
| 323 | EachTick |
| 324 | EachTick |
| 325 | EachTick |
| 326 | Normal |
| 327 | Tick |
| 328 | Normal |
| 329 | Normal |
| 330 | Normal |
| 331 | Normal |
| 332 | Tick |
| 333 | RestCount |
| 334 | Normal |
| 335 | Normal |
| 336 | Normal |
| 337 | Normal |
| 338 | Normal |
| 339 | Tick |
| 340 | Normal |
| 341 | Normal |
| 342 | Tick |
| 343 | EachTick |
| 344 | Normal |
| 345 | Normal |
| 346 | ReinforcedMove |
| 347 | ReinforcedMove |
| 348 | ReinforcedMove |
| 349 | ReinforcedMove |
| 350 | Recover |
| 351 | Normal |
| 352 | Normal |
| 353 | Normal |
| 354 | Normal |
| 355 | Normal |
| 356 | Normal |
| 357 | Normal |
| 358 | Normal |
| 359 | Normal |
| 360 | Normal |
| 361 | Normal |
| 362 | Normal |
| 363 | Normal |
| 364 | Normal |
| 365 | Normal |
| 366 | Normal |
| 367 | Normal |
| 368 | Normal |
| 369 | Normal |
| 370 | Normal |
| 371 | EachTick |
| 372 | Normal |
| 373 | Normal |
| 374 | Tick |
| 375 | Tick |
| 376 | Tick |
| 377 | Tick |
| 378 | Normal |
| 379 | Normal |
| 380 | Tick |
| 381 | Tick |
| 382 | Normal |
| 383 | ReinforcedMove |
| 384 | Normal |
| 385 | Normal |
| 386 | Normal |
| 387 | Tick |
| 388 | Normal |
| 389 | Normal |
| 390 | Normal |
| 391 | Normal |
| 392 | Normal |
| 393 | Normal |
| 394 | Normal |
| 395 | Tick |
| 396 | Tick |
| 397 | Normal |
| 398 | Tick |
| 399 | Normal |
| 400 | Normal |
| 401 | Normal |
| 402 | Normal |
| 403 | Normal |
| 404 | Normal |
| 405 | Normal |
| 406 | Normal |
| 407 | Normal |
| 408 | Normal |
| 409 | Tick |
| 410 | Tick |
| 411 | Normal |
| 412 | Normal |
| 413 | Normal |
| 414 | Normal |
| 415 | Normal |
| 416 | Tick |
| 417 | Normal |
| 418 | Normal |
| 419 | Normal |
| 420 | Tick |
| 421 | Normal |
| 422 | Normal |
| 423 | Normal |
| 424 | Normal |
| 425 | Normal |
| 426 | Normal |
| 427 | Normal |
| 428 | Normal |
| 429 | Normal |
| 430 | Normal |
| 431 | Tick |
| 432 | Normal |
| 433 | Tick |
| 434 | Normal |
| 435 | Normal |
| 436 | Normal |
| 437 | Normal |
| 438 | Normal |
| 439 | Normal |
| 440 | Normal |
| 441 | Tick |
| 442 | Normal |
| 443 | Normal |
| 444 | Normal |
| 445 | Normal |
| 446 | Normal |
| 447 | Normal |
| 448 | Normal |
| 449 | Normal |
| 450 | Normal |
| 451 | Tick |
| 452 | Normal |
| 453 | Normal |
| 454 | Normal |
| 455 | Tick |
| 456 | Normal |
| 457 | Tick |
| 458 | Normal |
| 459 | RestCount |
| 460 | RestCount |
| 461 | Tick |
| 462 | Tick |
| 463 | Normal |
| 464 | Normal |
| 465 | Normal |
| 466 | Normal |
| 467 | Normal |
| 468 | Tick |
| 469 | Normal |
| 470 | Normal |
| 471 | Normal |
| 472 | Normal |
| 473 | Normal |
| 474 | Normal |
| 475 | Normal |
| 476 | Normal |
| 477 | Normal |
| 478 | Normal |
| 479 | Normal |
| 480 | Normal |
| 481 | Normal |
| 482 | Normal |
| 483 | Normal |
| 484 | Normal |
| 485 | Normal |
| 486 | Normal |
| 487 | Normal |
| 488 | Normal |
| 489 | Normal |
| 490 | Normal |
| 491 | Normal |
| 492 | Tick |
| 493 | RestCount |
| 494 | Tick |
| 495 | Tick |
| 496 | Normal |
| 497 | Normal |
| 498 | Normal |
| 499 | Normal |
| 500 | Normal |
| 501 | Tick |
| 502 | Normal |
| 503 | Normal |
| 504 | ReinforcedMove |
| 505 | Normal |
| 506 | Normal |
| 507 | Normal |
| 508 | Normal |
| 509 | Normal |
| 510 | Normal |
| 511 | Normal |
| 512 | Normal |
| 513 | Normal |
| 514 | Normal |
| 515 | Normal |
| 516 | Normal |
| 517 | Normal |
| 518 | Normal |
| 519 | Normal |
| 520 | Normal |
| 521 | Normal |
| 522 | Normal |
| 523 | Normal |
| 524 | Normal |
| 525 | Normal |
| 526 | Normal |
| 527 | Normal |
| 528 | Normal |
| 529 | Normal |
| 530 | Normal |
| 531 | Normal |
| 532 | Normal |
| 533 | Normal |
| 534 | Normal |
| 535 | Normal |
| 536 | Normal |
| 537 | Normal |
| 538 | Normal |
| 539 | Normal |
| 540 | Normal |
| 541 | Normal |
| 542 | Normal |
| 543 | Normal |
| 544 | Normal |
| 545 | Tick |
| 546 | ReinforcedMove |
| 547 | Normal |
| 548 | Normal |
| 549 | Normal |
| 550 | Normal |
| 551 | Normal |
| 552 | Normal |
| 553 | Normal |
| 554 | Normal |
| 555 | Normal |
| 556 | Normal |
| 557 | Tick |
| 558 | Normal |
| 559 | ReinforcedMove |
| 560 | Normal |
| 561 | Normal |
| 562 | Normal |
| 563 | Tick |
| 564 | Normal |
| 565 | Normal |
| 566 | Normal |
| 567 | Normal |
| 568 | Normal |
| 569 | Normal |
| 570 | Tick |
| 571 | Normal |
| 572 | Normal |
| 573 | Normal |
| 574 | Normal |
| 575 | Tick |
| 576 | Normal |
| 577 | Normal |
| 578 | Normal |
| 579 | Normal |
| 580 | Normal |
| 581 | Tick |
| 582 | Tick |
| 583 | Normal |
| 584 | Normal |
| 585 | Normal |
| 586 | Normal |
| 587 | Tick |
| 588 | Normal |
| 589 | Tick |
| 590 | RestCountHPRate |
| 591 | Tick |
| 592 | Normal |
| 593 | Normal |
| 594 | Normal |
| 595 | Normal |
| 596 | RestCount |
| 597 | Normal |
| 598 | Normal |
| 599 | Normal |
| 600 | Normal |
| 601 | Normal |
| 602 | Party |
| 603 | Normal |
| 604 | Normal |
| 605 | Normal |
| 606 | Normal |
| 607 | Normal |
| 608 | Normal |
| 609 | Normal |
| 610 | Normal |
| 611 | Normal |
| 612 | Normal |
| 613 | Normal |
| 614 | Normal |
| 615 | Tick |
| 616 | Tick |
| 617 | Tick |
| 618 | Tick |
| 619 | Tick |
| 620 | Tick |
| 621 | Normal |
| 622 | Normal |
| 623 | Normal |
| 624 | Tick |
| 625 | EachTick |
| 626 | EachTick |
| 627 | Normal |
| 628 | Normal |
| 629 | Normal |
| 630 | Normal |
| 631 | Normal |
| 632 | Normal |
| 633 | ReinforcedMove |
| 634 | ReinforcedMove |
| 635 | Tick |
| 636 | Normal |
| 637 | Normal |
| 638 | Tick |
| 639 | EachTick |
| 640 | Tick |
| 641 | Tick |
| 642 | Tick |
| 643 | Normal |
| 644 | Normal |
| 645 | Normal |
| 646 | Normal |
| 647 | Normal |
| 648 | Normal |
| 649 | Normal |
| 650 | Normal |
| 651 | Normal |
| 652 | Normal |
| 653 | Normal |
| 654 | Normal |
| 655 | Normal |
| 656 | Normal |
| 657 | Normal |
| 658 | Normal |
| 659 | Tick |
| 660 | Tick |
| 661 | Tick |
| 662 | ReinforcedMove |
| 663 | Normal |
| 664 | EachTick |
| 665 | Tick |
| 666 | Normal |
| 667 | Normal |
| 668 | Normal |
| 669 | Tick |
| 670 | Normal |
| 671 | Normal |
| 672 | Normal |
| 673 | Normal |
| 674 | Normal |
| 675 | Normal |
| 676 | Normal |
| 677 | Normal |
| 678 | Normal |
| 679 | Normal |
| 680 | Normal |
| 681 | Normal |
| 682 | Normal |
| 683 | Normal |
| 684 | Tick |
| 685 | Tick |
| 686 | Normal |
| 687 | Normal |
| 688 | Normal |
| 689 | Normal |
| 690 | Normal |
| 691 | ReinforcedMove |
| 692 | Normal |
| 693 | Normal |
| 694 | Normal |
| 695 | Normal |
| 696 | Normal |
| 697 | Normal |
| 698 | Normal |
| 699 | Normal |
| 700 | Normal |
| 701 | Normal |
| 702 | Normal |
| 703 | Normal |
| 704 | Normal |
| 705 | Normal |
| 706 | Normal |
| 707 | Normal |
| 708 | Normal |
| 709 | Tick |
| 710 | Tick |
| 711 | Normal |
| 712 | Normal |
| 713 | Normal |
| 714 | Normal |
| 715 | Normal |
| 716 | Party |
| 717 | Normal |
| 718 | Normal |
| 719 | Normal |
| 720 | Normal |
| 721 | Normal |
| 722 | Normal |
| 723 | Normal |
| 724 | Normal |
| 725 | Normal |
| 726 | Normal |
| 727 | Normal |
| 728 | Normal |
| 729 | Normal |
| 730 | Normal |
| 731 | Normal |
| 732 | Normal |
| 733 | Party |
| 734 | Party |
| 735 | Party |
| 736 | Party |
| 737 | Party |
| 738 | Normal |
| 739 | Normal |
| 740 | Normal |
| 741 | Normal |
| 742 | Normal |
| 743 | Normal |
| 744 | Normal |
| 745 | Normal |
| 746 | Normal |
| 747 | Normal |
| 748 | Normal |
| 749 | Normal |
| 750 | Normal |
| 751 | Tick |
| 752 | Tick |
| 753 | Tick |
| 754 | Normal |
| 755 | Normal |
| 756 | Normal |
| 757 | Normal |
| 758 | Tick |
| 759 | Normal |
| 760 | Tick |
| 761 | Normal |
| 762 | Normal |
| 763 | Normal |
| 764 | Tick |
| 765 | Normal |
| 766 | Tick |
| 767 | Normal |
| 768 | ReinforcedMove |
| 769 | Normal |
| 770 | Normal |
| 771 | Normal |
| 772 | Normal |
| 773 | Normal |
| 774 | Normal |
| 775 | Normal |
| 776 | Normal |
| 777 | Normal |
| 778 | Normal |
| 779 | Normal |
| 780 | Normal |
| 781 | Normal |
| 782 | Normal |
| 783 | Normal |
| 784 | Normal |
| 785 | Normal |
| 786 | Normal |
| 787 | Normal |
| 788 | Normal |
| 789 | Normal |
| 790 | Normal |
| 791 | Normal |
