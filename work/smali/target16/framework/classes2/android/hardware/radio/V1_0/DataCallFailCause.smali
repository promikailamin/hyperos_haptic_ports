.class public final Landroid/hardware/radio/V1_0/DataCallFailCause;
.super Ljava/lang/Object;
.source "DataCallFailCause.java"


# static fields
.field public static final blacklist ACTIVATION_REJECT_GGSN:I = 0x1e

.field public static final blacklist ACTIVATION_REJECT_UNSPECIFIED:I = 0x1f

.field public static final blacklist APN_TYPE_CONFLICT:I = 0x70

.field public static final blacklist AUTH_FAILURE_ON_EMERGENCY_CALL:I = 0x7a

.field public static final blacklist COMPANION_IFACE_IN_USE:I = 0x76

.field public static final blacklist CONDITIONAL_IE_ERROR:I = 0x64

.field public static final blacklist DATA_REGISTRATION_FAIL:I = -0x2

.field public static final blacklist EMERGENCY_IFACE_ONLY:I = 0x74

.field public static final blacklist EMM_ACCESS_BARRED:I = 0x73

.field public static final blacklist EMM_ACCESS_BARRED_INFINITE_RETRY:I = 0x79

.field public static final blacklist ERROR_UNSPECIFIED:I = 0xffff

.field public static final blacklist ESM_INFO_NOT_RECEIVED:I = 0x35

.field public static final blacklist FEATURE_NOT_SUPP:I = 0x28

.field public static final blacklist FILTER_SEMANTIC_ERROR:I = 0x2c

.field public static final blacklist FILTER_SYTAX_ERROR:I = 0x2d

.field public static final blacklist IFACE_AND_POL_FAMILY_MISMATCH:I = 0x78

.field public static final blacklist IFACE_MISMATCH:I = 0x75

.field public static final blacklist INSUFFICIENT_RESOURCES:I = 0x1a

.field public static final blacklist INTERNAL_CALL_PREEMPT_BY_HIGH_PRIO_APN:I = 0x72

.field public static final blacklist INVALID_MANDATORY_INFO:I = 0x60

.field public static final blacklist INVALID_PCSCF_ADDR:I = 0x71

.field public static final blacklist INVALID_TRANSACTION_ID:I = 0x51

.field public static final blacklist IP_ADDRESS_MISMATCH:I = 0x77

.field public static final blacklist MAX_ACTIVE_PDP_CONTEXT_REACHED:I = 0x41

.field public static final blacklist MESSAGE_INCORRECT_SEMANTIC:I = 0x5f

.field public static final blacklist MESSAGE_TYPE_UNSUPPORTED:I = 0x61

.field public static final blacklist MISSING_UKNOWN_APN:I = 0x1b

.field public static final blacklist MSG_AND_PROTOCOL_STATE_UNCOMPATIBLE:I = 0x65

.field public static final blacklist MSG_TYPE_NONCOMPATIBLE_STATE:I = 0x62

.field public static final blacklist MULTI_CONN_TO_SAME_PDN_NOT_ALLOWED:I = 0x37

.field public static final blacklist NAS_SIGNALLING:I = 0xe

.field public static final blacklist NETWORK_FAILURE:I = 0x26

.field public static final blacklist NONE:I = 0x0

.field public static final blacklist NSAPI_IN_USE:I = 0x23

.field public static final blacklist OEM_DCFAILCAUSE_1:I = 0x1001

.field public static final blacklist OEM_DCFAILCAUSE_10:I = 0x100a

.field public static final blacklist OEM_DCFAILCAUSE_11:I = 0x100b

.field public static final blacklist OEM_DCFAILCAUSE_12:I = 0x100c

.field public static final blacklist OEM_DCFAILCAUSE_13:I = 0x100d

.field public static final blacklist OEM_DCFAILCAUSE_14:I = 0x100e

.field public static final blacklist OEM_DCFAILCAUSE_15:I = 0x100f

.field public static final blacklist OEM_DCFAILCAUSE_2:I = 0x1002

.field public static final blacklist OEM_DCFAILCAUSE_3:I = 0x1003

.field public static final blacklist OEM_DCFAILCAUSE_4:I = 0x1004

.field public static final blacklist OEM_DCFAILCAUSE_5:I = 0x1005

.field public static final blacklist OEM_DCFAILCAUSE_6:I = 0x1006

.field public static final blacklist OEM_DCFAILCAUSE_7:I = 0x1007

.field public static final blacklist OEM_DCFAILCAUSE_8:I = 0x1008

.field public static final blacklist OEM_DCFAILCAUSE_9:I = 0x1009

.field public static final blacklist ONLY_IPV4_ALLOWED:I = 0x32

.field public static final blacklist ONLY_IPV6_ALLOWED:I = 0x33

.field public static final blacklist ONLY_SINGLE_BEARER_ALLOWED:I = 0x34

.field public static final blacklist OPERATOR_BARRED:I = 0x8

.field public static final blacklist PDN_CONN_DOES_NOT_EXIST:I = 0x36

.field public static final blacklist PDP_WITHOUT_ACTIVE_TFT:I = 0x2e

.field public static final blacklist PREF_RADIO_TECH_CHANGED:I = -0x4

.field public static final blacklist PROTOCOL_ERRORS:I = 0x6f

.field public static final blacklist QOS_NOT_ACCEPTED:I = 0x25

.field public static final blacklist RADIO_POWER_OFF:I = -0x5

.field public static final blacklist REGULAR_DEACTIVATION:I = 0x24

.field public static final blacklist SERVICE_OPTION_NOT_SUBSCRIBED:I = 0x21

.field public static final blacklist SERVICE_OPTION_NOT_SUPPORTED:I = 0x20

.field public static final blacklist SERVICE_OPTION_OUT_OF_ORDER:I = 0x22

.field public static final blacklist SIGNAL_LOST:I = -0x3

.field public static final blacklist TETHERED_CALL_ACTIVE:I = -0x6

.field public static final blacklist TFT_SEMANTIC_ERROR:I = 0x29

.field public static final blacklist TFT_SYTAX_ERROR:I = 0x2a

.field public static final blacklist UMTS_REACTIVATION_REQ:I = 0x27

.field public static final blacklist UNKNOWN_INFO_ELEMENT:I = 0x63

.field public static final blacklist UNKNOWN_PDP_ADDRESS_TYPE:I = 0x1c

.field public static final blacklist UNKNOWN_PDP_CONTEXT:I = 0x2b

.field public static final blacklist UNSUPPORTED_APN_IN_CURRENT_PLMN:I = 0x42

.field public static final blacklist USER_AUTHENTICATION:I = 0x1d

.field public static final blacklist VOICE_REGISTRATION_FAIL:I = -0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final blacklist dumpBitfield(I)Ljava/lang/String;
    .registers 5

    .line 306
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 307
    nop

    .line 308
    const-string v1, "NONE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    and-int/lit8 v1, p0, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_17

    .line 310
    const-string v1, "OPERATOR_BARRED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    goto :goto_18

    .line 309
    :cond_17
    const/4 v2, 0x0

    .line 313
    :goto_18
    and-int/lit8 v1, p0, 0xe

    const/16 v3, 0xe

    if-ne v1, v3, :cond_24

    .line 314
    const-string v1, "NAS_SIGNALLING"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    move v2, v3

    .line 317
    :cond_24
    and-int/lit8 v1, p0, 0x1a

    const/16 v3, 0x1a

    if-ne v1, v3, :cond_31

    .line 318
    const-string v1, "INSUFFICIENT_RESOURCES"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    or-int/lit8 v2, v2, 0x1a

    .line 321
    :cond_31
    and-int/lit8 v1, p0, 0x1b

    const/16 v3, 0x1b

    if-ne v1, v3, :cond_3e

    .line 322
    const-string v1, "MISSING_UKNOWN_APN"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    or-int/lit8 v2, v2, 0x1b

    .line 325
    :cond_3e
    and-int/lit8 v1, p0, 0x1c

    const/16 v3, 0x1c

    if-ne v1, v3, :cond_4b

    .line 326
    const-string v1, "UNKNOWN_PDP_ADDRESS_TYPE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    or-int/lit8 v2, v2, 0x1c

    .line 329
    :cond_4b
    and-int/lit8 v1, p0, 0x1d

    const/16 v3, 0x1d

    if-ne v1, v3, :cond_58

    .line 330
    const-string v1, "USER_AUTHENTICATION"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    or-int/lit8 v2, v2, 0x1d

    .line 333
    :cond_58
    and-int/lit8 v1, p0, 0x1e

    const/16 v3, 0x1e

    if-ne v1, v3, :cond_65

    .line 334
    const-string v1, "ACTIVATION_REJECT_GGSN"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    or-int/lit8 v2, v2, 0x1e

    .line 337
    :cond_65
    and-int/lit8 v1, p0, 0x1f

    const/16 v3, 0x1f

    if-ne v1, v3, :cond_71

    .line 338
    const-string v1, "ACTIVATION_REJECT_UNSPECIFIED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    move v2, v3

    .line 341
    :cond_71
    and-int/lit8 v1, p0, 0x20

    const/16 v3, 0x20

    if-ne v1, v3, :cond_7e

    .line 342
    const-string v1, "SERVICE_OPTION_NOT_SUPPORTED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    or-int/lit8 v2, v2, 0x20

    .line 345
    :cond_7e
    and-int/lit8 v1, p0, 0x21

    const/16 v3, 0x21

    if-ne v1, v3, :cond_8b

    .line 346
    const-string v1, "SERVICE_OPTION_NOT_SUBSCRIBED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    or-int/lit8 v2, v2, 0x21

    .line 349
    :cond_8b
    and-int/lit8 v1, p0, 0x22

    const/16 v3, 0x22

    if-ne v1, v3, :cond_98

    .line 350
    const-string v1, "SERVICE_OPTION_OUT_OF_ORDER"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    or-int/lit8 v2, v2, 0x22

    .line 353
    :cond_98
    and-int/lit8 v1, p0, 0x23

    const/16 v3, 0x23

    if-ne v1, v3, :cond_a5

    .line 354
    const-string v1, "NSAPI_IN_USE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    or-int/lit8 v2, v2, 0x23

    .line 357
    :cond_a5
    and-int/lit8 v1, p0, 0x24

    const/16 v3, 0x24

    if-ne v1, v3, :cond_b2

    .line 358
    const-string v1, "REGULAR_DEACTIVATION"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    or-int/lit8 v2, v2, 0x24

    .line 361
    :cond_b2
    and-int/lit8 v1, p0, 0x25

    const/16 v3, 0x25

    if-ne v1, v3, :cond_bf

    .line 362
    const-string v1, "QOS_NOT_ACCEPTED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    or-int/lit8 v2, v2, 0x25

    .line 365
    :cond_bf
    and-int/lit8 v1, p0, 0x26

    const/16 v3, 0x26

    if-ne v1, v3, :cond_cc

    .line 366
    const-string v1, "NETWORK_FAILURE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 367
    or-int/lit8 v2, v2, 0x26

    .line 369
    :cond_cc
    and-int/lit8 v1, p0, 0x27

    const/16 v3, 0x27

    if-ne v1, v3, :cond_d9

    .line 370
    const-string v1, "UMTS_REACTIVATION_REQ"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    or-int/lit8 v2, v2, 0x27

    .line 373
    :cond_d9
    and-int/lit8 v1, p0, 0x28

    const/16 v3, 0x28

    if-ne v1, v3, :cond_e6

    .line 374
    const-string v1, "FEATURE_NOT_SUPP"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    or-int/lit8 v2, v2, 0x28

    .line 377
    :cond_e6
    and-int/lit8 v1, p0, 0x29

    const/16 v3, 0x29

    if-ne v1, v3, :cond_f3

    .line 378
    const-string v1, "TFT_SEMANTIC_ERROR"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    or-int/lit8 v2, v2, 0x29

    .line 381
    :cond_f3
    and-int/lit8 v1, p0, 0x2a

    const/16 v3, 0x2a

    if-ne v1, v3, :cond_100

    .line 382
    const-string v1, "TFT_SYTAX_ERROR"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    or-int/lit8 v2, v2, 0x2a

    .line 385
    :cond_100
    and-int/lit8 v1, p0, 0x2b

    const/16 v3, 0x2b

    if-ne v1, v3, :cond_10d

    .line 386
    const-string v1, "UNKNOWN_PDP_CONTEXT"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    or-int/lit8 v2, v2, 0x2b

    .line 389
    :cond_10d
    and-int/lit8 v1, p0, 0x2c

    const/16 v3, 0x2c

    if-ne v1, v3, :cond_11a

    .line 390
    const-string v1, "FILTER_SEMANTIC_ERROR"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    or-int/lit8 v2, v2, 0x2c

    .line 393
    :cond_11a
    and-int/lit8 v1, p0, 0x2d

    const/16 v3, 0x2d

    if-ne v1, v3, :cond_127

    .line 394
    const-string v1, "FILTER_SYTAX_ERROR"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    or-int/lit8 v2, v2, 0x2d

    .line 397
    :cond_127
    and-int/lit8 v1, p0, 0x2e

    const/16 v3, 0x2e

    if-ne v1, v3, :cond_134

    .line 398
    const-string v1, "PDP_WITHOUT_ACTIVE_TFT"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    or-int/lit8 v2, v2, 0x2e

    .line 401
    :cond_134
    and-int/lit8 v1, p0, 0x32

    const/16 v3, 0x32

    if-ne v1, v3, :cond_141

    .line 402
    const-string v1, "ONLY_IPV4_ALLOWED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    or-int/lit8 v2, v2, 0x32

    .line 405
    :cond_141
    and-int/lit8 v1, p0, 0x33

    const/16 v3, 0x33

    if-ne v1, v3, :cond_14e

    .line 406
    const-string v1, "ONLY_IPV6_ALLOWED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    or-int/lit8 v2, v2, 0x33

    .line 409
    :cond_14e
    and-int/lit8 v1, p0, 0x34

    const/16 v3, 0x34

    if-ne v1, v3, :cond_15b

    .line 410
    const-string v1, "ONLY_SINGLE_BEARER_ALLOWED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    or-int/lit8 v2, v2, 0x34

    .line 413
    :cond_15b
    and-int/lit8 v1, p0, 0x35

    const/16 v3, 0x35

    if-ne v1, v3, :cond_168

    .line 414
    const-string v1, "ESM_INFO_NOT_RECEIVED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 415
    or-int/lit8 v2, v2, 0x35

    .line 417
    :cond_168
    and-int/lit8 v1, p0, 0x36

    const/16 v3, 0x36

    if-ne v1, v3, :cond_175

    .line 418
    const-string v1, "PDN_CONN_DOES_NOT_EXIST"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 419
    or-int/lit8 v2, v2, 0x36

    .line 421
    :cond_175
    and-int/lit8 v1, p0, 0x37

    const/16 v3, 0x37

    if-ne v1, v3, :cond_182

    .line 422
    const-string v1, "MULTI_CONN_TO_SAME_PDN_NOT_ALLOWED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    or-int/lit8 v2, v2, 0x37

    .line 425
    :cond_182
    and-int/lit8 v1, p0, 0x41

    const/16 v3, 0x41

    if-ne v1, v3, :cond_18f

    .line 426
    const-string v1, "MAX_ACTIVE_PDP_CONTEXT_REACHED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    or-int/lit8 v2, v2, 0x41

    .line 429
    :cond_18f
    and-int/lit8 v1, p0, 0x42

    const/16 v3, 0x42

    if-ne v1, v3, :cond_19c

    .line 430
    const-string v1, "UNSUPPORTED_APN_IN_CURRENT_PLMN"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    or-int/lit8 v2, v2, 0x42

    .line 433
    :cond_19c
    and-int/lit8 v1, p0, 0x51

    const/16 v3, 0x51

    if-ne v1, v3, :cond_1a9

    .line 434
    const-string v1, "INVALID_TRANSACTION_ID"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 435
    or-int/lit8 v2, v2, 0x51

    .line 437
    :cond_1a9
    and-int/lit8 v1, p0, 0x5f

    const/16 v3, 0x5f

    if-ne v1, v3, :cond_1b6

    .line 438
    const-string v1, "MESSAGE_INCORRECT_SEMANTIC"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 439
    or-int/lit8 v2, v2, 0x5f

    .line 441
    :cond_1b6
    and-int/lit8 v1, p0, 0x60

    const/16 v3, 0x60

    if-ne v1, v3, :cond_1c3

    .line 442
    const-string v1, "INVALID_MANDATORY_INFO"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 443
    or-int/lit8 v2, v2, 0x60

    .line 445
    :cond_1c3
    and-int/lit8 v1, p0, 0x61

    const/16 v3, 0x61

    if-ne v1, v3, :cond_1d0

    .line 446
    const-string v1, "MESSAGE_TYPE_UNSUPPORTED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 447
    or-int/lit8 v2, v2, 0x61

    .line 449
    :cond_1d0
    and-int/lit8 v1, p0, 0x62

    const/16 v3, 0x62

    if-ne v1, v3, :cond_1dd

    .line 450
    const-string v1, "MSG_TYPE_NONCOMPATIBLE_STATE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 451
    or-int/lit8 v2, v2, 0x62

    .line 453
    :cond_1dd
    and-int/lit8 v1, p0, 0x63

    const/16 v3, 0x63

    if-ne v1, v3, :cond_1ea

    .line 454
    const-string v1, "UNKNOWN_INFO_ELEMENT"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    or-int/lit8 v2, v2, 0x63

    .line 457
    :cond_1ea
    and-int/lit8 v1, p0, 0x64

    const/16 v3, 0x64

    if-ne v1, v3, :cond_1f7

    .line 458
    const-string v1, "CONDITIONAL_IE_ERROR"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 459
    or-int/lit8 v2, v2, 0x64

    .line 461
    :cond_1f7
    and-int/lit8 v1, p0, 0x65

    const/16 v3, 0x65

    if-ne v1, v3, :cond_204

    .line 462
    const-string v1, "MSG_AND_PROTOCOL_STATE_UNCOMPATIBLE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 463
    or-int/lit8 v2, v2, 0x65

    .line 465
    :cond_204
    and-int/lit8 v1, p0, 0x6f

    const/16 v3, 0x6f

    if-ne v1, v3, :cond_211

    .line 466
    const-string v1, "PROTOCOL_ERRORS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 467
    or-int/lit8 v2, v2, 0x6f

    .line 469
    :cond_211
    and-int/lit8 v1, p0, 0x70

    const/16 v3, 0x70

    if-ne v1, v3, :cond_21e

    .line 470
    const-string v1, "APN_TYPE_CONFLICT"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 471
    or-int/lit8 v2, v2, 0x70

    .line 473
    :cond_21e
    and-int/lit8 v1, p0, 0x71

    const/16 v3, 0x71

    if-ne v1, v3, :cond_22b

    .line 474
    const-string v1, "INVALID_PCSCF_ADDR"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 475
    or-int/lit8 v2, v2, 0x71

    .line 477
    :cond_22b
    and-int/lit8 v1, p0, 0x72

    const/16 v3, 0x72

    if-ne v1, v3, :cond_238

    .line 478
    const-string v1, "INTERNAL_CALL_PREEMPT_BY_HIGH_PRIO_APN"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 479
    or-int/lit8 v2, v2, 0x72

    .line 481
    :cond_238
    and-int/lit8 v1, p0, 0x73

    const/16 v3, 0x73

    if-ne v1, v3, :cond_245

    .line 482
    const-string v1, "EMM_ACCESS_BARRED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 483
    or-int/lit8 v2, v2, 0x73

    .line 485
    :cond_245
    and-int/lit8 v1, p0, 0x74

    const/16 v3, 0x74

    if-ne v1, v3, :cond_252

    .line 486
    const-string v1, "EMERGENCY_IFACE_ONLY"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 487
    or-int/lit8 v2, v2, 0x74

    .line 489
    :cond_252
    and-int/lit8 v1, p0, 0x75

    const/16 v3, 0x75

    if-ne v1, v3, :cond_25f

    .line 490
    const-string v1, "IFACE_MISMATCH"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 491
    or-int/lit8 v2, v2, 0x75

    .line 493
    :cond_25f
    and-int/lit8 v1, p0, 0x76

    const/16 v3, 0x76

    if-ne v1, v3, :cond_26c

    .line 494
    const-string v1, "COMPANION_IFACE_IN_USE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 495
    or-int/lit8 v2, v2, 0x76

    .line 497
    :cond_26c
    and-int/lit8 v1, p0, 0x77

    const/16 v3, 0x77

    if-ne v1, v3, :cond_279

    .line 498
    const-string v1, "IP_ADDRESS_MISMATCH"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 499
    or-int/lit8 v2, v2, 0x77

    .line 501
    :cond_279
    and-int/lit8 v1, p0, 0x78

    const/16 v3, 0x78

    if-ne v1, v3, :cond_286

    .line 502
    const-string v1, "IFACE_AND_POL_FAMILY_MISMATCH"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 503
    or-int/lit8 v2, v2, 0x78

    .line 505
    :cond_286
    and-int/lit8 v1, p0, 0x79

    const/16 v3, 0x79

    if-ne v1, v3, :cond_293

    .line 506
    const-string v1, "EMM_ACCESS_BARRED_INFINITE_RETRY"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 507
    or-int/lit8 v2, v2, 0x79

    .line 509
    :cond_293
    and-int/lit8 v1, p0, 0x7a

    const/16 v3, 0x7a

    if-ne v1, v3, :cond_2a0

    .line 510
    const-string v1, "AUTH_FAILURE_ON_EMERGENCY_CALL"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 511
    or-int/lit8 v2, v2, 0x7a

    .line 513
    :cond_2a0
    and-int/lit16 v1, p0, 0x1001

    const/16 v3, 0x1001

    if-ne v1, v3, :cond_2ad

    .line 514
    const-string v1, "OEM_DCFAILCAUSE_1"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 515
    or-int/lit16 v2, v2, 0x1001

    .line 517
    :cond_2ad
    and-int/lit16 v1, p0, 0x1002

    const/16 v3, 0x1002

    if-ne v1, v3, :cond_2ba

    .line 518
    const-string v1, "OEM_DCFAILCAUSE_2"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 519
    or-int/lit16 v2, v2, 0x1002

    .line 521
    :cond_2ba
    and-int/lit16 v1, p0, 0x1003

    const/16 v3, 0x1003

    if-ne v1, v3, :cond_2c7

    .line 522
    const-string v1, "OEM_DCFAILCAUSE_3"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 523
    or-int/lit16 v2, v2, 0x1003

    .line 525
    :cond_2c7
    and-int/lit16 v1, p0, 0x1004

    const/16 v3, 0x1004

    if-ne v1, v3, :cond_2d4

    .line 526
    const-string v1, "OEM_DCFAILCAUSE_4"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 527
    or-int/lit16 v2, v2, 0x1004

    .line 529
    :cond_2d4
    and-int/lit16 v1, p0, 0x1005

    const/16 v3, 0x1005

    if-ne v1, v3, :cond_2e1

    .line 530
    const-string v1, "OEM_DCFAILCAUSE_5"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 531
    or-int/lit16 v2, v2, 0x1005

    .line 533
    :cond_2e1
    and-int/lit16 v1, p0, 0x1006

    const/16 v3, 0x1006

    if-ne v1, v3, :cond_2ee

    .line 534
    const-string v1, "OEM_DCFAILCAUSE_6"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 535
    or-int/lit16 v2, v2, 0x1006

    .line 537
    :cond_2ee
    and-int/lit16 v1, p0, 0x1007

    const/16 v3, 0x1007

    if-ne v1, v3, :cond_2fb

    .line 538
    const-string v1, "OEM_DCFAILCAUSE_7"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 539
    or-int/lit16 v2, v2, 0x1007

    .line 541
    :cond_2fb
    and-int/lit16 v1, p0, 0x1008

    const/16 v3, 0x1008

    if-ne v1, v3, :cond_308

    .line 542
    const-string v1, "OEM_DCFAILCAUSE_8"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 543
    or-int/lit16 v2, v2, 0x1008

    .line 545
    :cond_308
    and-int/lit16 v1, p0, 0x1009

    const/16 v3, 0x1009

    if-ne v1, v3, :cond_315

    .line 546
    const-string v1, "OEM_DCFAILCAUSE_9"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 547
    or-int/lit16 v2, v2, 0x1009

    .line 549
    :cond_315
    and-int/lit16 v1, p0, 0x100a

    const/16 v3, 0x100a

    if-ne v1, v3, :cond_322

    .line 550
    const-string v1, "OEM_DCFAILCAUSE_10"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 551
    or-int/lit16 v2, v2, 0x100a

    .line 553
    :cond_322
    and-int/lit16 v1, p0, 0x100b

    const/16 v3, 0x100b

    if-ne v1, v3, :cond_32f

    .line 554
    const-string v1, "OEM_DCFAILCAUSE_11"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 555
    or-int/lit16 v2, v2, 0x100b

    .line 557
    :cond_32f
    and-int/lit16 v1, p0, 0x100c

    const/16 v3, 0x100c

    if-ne v1, v3, :cond_33c

    .line 558
    const-string v1, "OEM_DCFAILCAUSE_12"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 559
    or-int/lit16 v2, v2, 0x100c

    .line 561
    :cond_33c
    and-int/lit16 v1, p0, 0x100d

    const/16 v3, 0x100d

    if-ne v1, v3, :cond_349

    .line 562
    const-string v1, "OEM_DCFAILCAUSE_13"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 563
    or-int/lit16 v2, v2, 0x100d

    .line 565
    :cond_349
    and-int/lit16 v1, p0, 0x100e

    const/16 v3, 0x100e

    if-ne v1, v3, :cond_356

    .line 566
    const-string v1, "OEM_DCFAILCAUSE_14"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 567
    or-int/lit16 v2, v2, 0x100e

    .line 569
    :cond_356
    and-int/lit16 v1, p0, 0x100f

    const/16 v3, 0x100f

    if-ne v1, v3, :cond_363

    .line 570
    const-string v1, "OEM_DCFAILCAUSE_15"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 571
    or-int/lit16 v2, v2, 0x100f

    .line 573
    :cond_363
    and-int/lit8 v1, p0, -0x1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_36e

    .line 574
    const-string v1, "VOICE_REGISTRATION_FAIL"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 575
    const/4 v2, -0x1

    .line 577
    :cond_36e
    and-int/lit8 v1, p0, -0x2

    const/4 v3, -0x2

    if-ne v1, v3, :cond_37a

    .line 578
    const-string v1, "DATA_REGISTRATION_FAIL"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 579
    or-int/lit8 v2, v2, -0x2

    .line 581
    :cond_37a
    and-int/lit8 v1, p0, -0x3

    const/4 v3, -0x3

    if-ne v1, v3, :cond_386

    .line 582
    const-string v1, "SIGNAL_LOST"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 583
    or-int/lit8 v2, v2, -0x3

    .line 585
    :cond_386
    and-int/lit8 v1, p0, -0x4

    const/4 v3, -0x4

    if-ne v1, v3, :cond_392

    .line 586
    const-string v1, "PREF_RADIO_TECH_CHANGED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 587
    or-int/lit8 v2, v2, -0x4

    .line 589
    :cond_392
    and-int/lit8 v1, p0, -0x5

    const/4 v3, -0x5

    if-ne v1, v3, :cond_39e

    .line 590
    const-string v1, "RADIO_POWER_OFF"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 591
    or-int/lit8 v2, v2, -0x5

    .line 593
    :cond_39e
    and-int/lit8 v1, p0, -0x6

    const/4 v3, -0x6

    if-ne v1, v3, :cond_3aa

    .line 594
    const-string v1, "TETHERED_CALL_ACTIVE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 595
    or-int/lit8 v2, v2, -0x6

    .line 597
    :cond_3aa
    const v1, 0xffff

    and-int/2addr v1, p0

    const v3, 0xffff

    if-ne v1, v3, :cond_3bc

    .line 598
    const-string v1, "ERROR_UNSPECIFIED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 599
    const v1, 0xffff

    or-int/2addr v2, v1

    .line 601
    :cond_3bc
    if-eq p0, v2, :cond_3da

    .line 602
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    not-int v2, v2

    and-int/2addr p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 604
    :cond_3da
    const-string p0, " | "

    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final blacklist toString(I)Ljava/lang/String;
    .registers 3

    .line 80
    if-nez p0, :cond_5

    .line 81
    const-string p0, "NONE"

    return-object p0

    .line 83
    :cond_5
    const/16 v0, 0x8

    if-ne p0, v0, :cond_c

    .line 84
    const-string p0, "OPERATOR_BARRED"

    return-object p0

    .line 86
    :cond_c
    const/16 v0, 0xe

    if-ne p0, v0, :cond_13

    .line 87
    const-string p0, "NAS_SIGNALLING"

    return-object p0

    .line 89
    :cond_13
    const/16 v0, 0x1a

    if-ne p0, v0, :cond_1a

    .line 90
    const-string p0, "INSUFFICIENT_RESOURCES"

    return-object p0

    .line 92
    :cond_1a
    const/16 v0, 0x1b

    if-ne p0, v0, :cond_21

    .line 93
    const-string p0, "MISSING_UKNOWN_APN"

    return-object p0

    .line 95
    :cond_21
    const/16 v0, 0x1c

    if-ne p0, v0, :cond_28

    .line 96
    const-string p0, "UNKNOWN_PDP_ADDRESS_TYPE"

    return-object p0

    .line 98
    :cond_28
    const/16 v0, 0x1d

    if-ne p0, v0, :cond_2f

    .line 99
    const-string p0, "USER_AUTHENTICATION"

    return-object p0

    .line 101
    :cond_2f
    const/16 v0, 0x1e

    if-ne p0, v0, :cond_36

    .line 102
    const-string p0, "ACTIVATION_REJECT_GGSN"

    return-object p0

    .line 104
    :cond_36
    const/16 v0, 0x1f

    if-ne p0, v0, :cond_3d

    .line 105
    const-string p0, "ACTIVATION_REJECT_UNSPECIFIED"

    return-object p0

    .line 107
    :cond_3d
    const/16 v0, 0x20

    if-ne p0, v0, :cond_44

    .line 108
    const-string p0, "SERVICE_OPTION_NOT_SUPPORTED"

    return-object p0

    .line 110
    :cond_44
    const/16 v0, 0x21

    if-ne p0, v0, :cond_4b

    .line 111
    const-string p0, "SERVICE_OPTION_NOT_SUBSCRIBED"

    return-object p0

    .line 113
    :cond_4b
    const/16 v0, 0x22

    if-ne p0, v0, :cond_52

    .line 114
    const-string p0, "SERVICE_OPTION_OUT_OF_ORDER"

    return-object p0

    .line 116
    :cond_52
    const/16 v0, 0x23

    if-ne p0, v0, :cond_59

    .line 117
    const-string p0, "NSAPI_IN_USE"

    return-object p0

    .line 119
    :cond_59
    const/16 v0, 0x24

    if-ne p0, v0, :cond_60

    .line 120
    const-string p0, "REGULAR_DEACTIVATION"

    return-object p0

    .line 122
    :cond_60
    const/16 v0, 0x25

    if-ne p0, v0, :cond_67

    .line 123
    const-string p0, "QOS_NOT_ACCEPTED"

    return-object p0

    .line 125
    :cond_67
    const/16 v0, 0x26

    if-ne p0, v0, :cond_6e

    .line 126
    const-string p0, "NETWORK_FAILURE"

    return-object p0

    .line 128
    :cond_6e
    const/16 v0, 0x27

    if-ne p0, v0, :cond_75

    .line 129
    const-string p0, "UMTS_REACTIVATION_REQ"

    return-object p0

    .line 131
    :cond_75
    const/16 v0, 0x28

    if-ne p0, v0, :cond_7c

    .line 132
    const-string p0, "FEATURE_NOT_SUPP"

    return-object p0

    .line 134
    :cond_7c
    const/16 v0, 0x29

    if-ne p0, v0, :cond_83

    .line 135
    const-string p0, "TFT_SEMANTIC_ERROR"

    return-object p0

    .line 137
    :cond_83
    const/16 v0, 0x2a

    if-ne p0, v0, :cond_8a

    .line 138
    const-string p0, "TFT_SYTAX_ERROR"

    return-object p0

    .line 140
    :cond_8a
    const/16 v0, 0x2b

    if-ne p0, v0, :cond_91

    .line 141
    const-string p0, "UNKNOWN_PDP_CONTEXT"

    return-object p0

    .line 143
    :cond_91
    const/16 v0, 0x2c

    if-ne p0, v0, :cond_98

    .line 144
    const-string p0, "FILTER_SEMANTIC_ERROR"

    return-object p0

    .line 146
    :cond_98
    const/16 v0, 0x2d

    if-ne p0, v0, :cond_9f

    .line 147
    const-string p0, "FILTER_SYTAX_ERROR"

    return-object p0

    .line 149
    :cond_9f
    const/16 v0, 0x2e

    if-ne p0, v0, :cond_a6

    .line 150
    const-string p0, "PDP_WITHOUT_ACTIVE_TFT"

    return-object p0

    .line 152
    :cond_a6
    const/16 v0, 0x32

    if-ne p0, v0, :cond_ad

    .line 153
    const-string p0, "ONLY_IPV4_ALLOWED"

    return-object p0

    .line 155
    :cond_ad
    const/16 v0, 0x33

    if-ne p0, v0, :cond_b4

    .line 156
    const-string p0, "ONLY_IPV6_ALLOWED"

    return-object p0

    .line 158
    :cond_b4
    const/16 v0, 0x34

    if-ne p0, v0, :cond_bb

    .line 159
    const-string p0, "ONLY_SINGLE_BEARER_ALLOWED"

    return-object p0

    .line 161
    :cond_bb
    const/16 v0, 0x35

    if-ne p0, v0, :cond_c2

    .line 162
    const-string p0, "ESM_INFO_NOT_RECEIVED"

    return-object p0

    .line 164
    :cond_c2
    const/16 v0, 0x36

    if-ne p0, v0, :cond_c9

    .line 165
    const-string p0, "PDN_CONN_DOES_NOT_EXIST"

    return-object p0

    .line 167
    :cond_c9
    const/16 v0, 0x37

    if-ne p0, v0, :cond_d0

    .line 168
    const-string p0, "MULTI_CONN_TO_SAME_PDN_NOT_ALLOWED"

    return-object p0

    .line 170
    :cond_d0
    const/16 v0, 0x41

    if-ne p0, v0, :cond_d7

    .line 171
    const-string p0, "MAX_ACTIVE_PDP_CONTEXT_REACHED"

    return-object p0

    .line 173
    :cond_d7
    const/16 v0, 0x42

    if-ne p0, v0, :cond_de

    .line 174
    const-string p0, "UNSUPPORTED_APN_IN_CURRENT_PLMN"

    return-object p0

    .line 176
    :cond_de
    const/16 v0, 0x51

    if-ne p0, v0, :cond_e5

    .line 177
    const-string p0, "INVALID_TRANSACTION_ID"

    return-object p0

    .line 179
    :cond_e5
    const/16 v0, 0x5f

    if-ne p0, v0, :cond_ec

    .line 180
    const-string p0, "MESSAGE_INCORRECT_SEMANTIC"

    return-object p0

    .line 182
    :cond_ec
    const/16 v0, 0x60

    if-ne p0, v0, :cond_f3

    .line 183
    const-string p0, "INVALID_MANDATORY_INFO"

    return-object p0

    .line 185
    :cond_f3
    const/16 v0, 0x61

    if-ne p0, v0, :cond_fa

    .line 186
    const-string p0, "MESSAGE_TYPE_UNSUPPORTED"

    return-object p0

    .line 188
    :cond_fa
    const/16 v0, 0x62

    if-ne p0, v0, :cond_101

    .line 189
    const-string p0, "MSG_TYPE_NONCOMPATIBLE_STATE"

    return-object p0

    .line 191
    :cond_101
    const/16 v0, 0x63

    if-ne p0, v0, :cond_108

    .line 192
    const-string p0, "UNKNOWN_INFO_ELEMENT"

    return-object p0

    .line 194
    :cond_108
    const/16 v0, 0x64

    if-ne p0, v0, :cond_10f

    .line 195
    const-string p0, "CONDITIONAL_IE_ERROR"

    return-object p0

    .line 197
    :cond_10f
    const/16 v0, 0x65

    if-ne p0, v0, :cond_116

    .line 198
    const-string p0, "MSG_AND_PROTOCOL_STATE_UNCOMPATIBLE"

    return-object p0

    .line 200
    :cond_116
    const/16 v0, 0x6f

    if-ne p0, v0, :cond_11d

    .line 201
    const-string p0, "PROTOCOL_ERRORS"

    return-object p0

    .line 203
    :cond_11d
    const/16 v0, 0x70

    if-ne p0, v0, :cond_124

    .line 204
    const-string p0, "APN_TYPE_CONFLICT"

    return-object p0

    .line 206
    :cond_124
    const/16 v0, 0x71

    if-ne p0, v0, :cond_12b

    .line 207
    const-string p0, "INVALID_PCSCF_ADDR"

    return-object p0

    .line 209
    :cond_12b
    const/16 v0, 0x72

    if-ne p0, v0, :cond_132

    .line 210
    const-string p0, "INTERNAL_CALL_PREEMPT_BY_HIGH_PRIO_APN"

    return-object p0

    .line 212
    :cond_132
    const/16 v0, 0x73

    if-ne p0, v0, :cond_139

    .line 213
    const-string p0, "EMM_ACCESS_BARRED"

    return-object p0

    .line 215
    :cond_139
    const/16 v0, 0x74

    if-ne p0, v0, :cond_140

    .line 216
    const-string p0, "EMERGENCY_IFACE_ONLY"

    return-object p0

    .line 218
    :cond_140
    const/16 v0, 0x75

    if-ne p0, v0, :cond_147

    .line 219
    const-string p0, "IFACE_MISMATCH"

    return-object p0

    .line 221
    :cond_147
    const/16 v0, 0x76

    if-ne p0, v0, :cond_14e

    .line 222
    const-string p0, "COMPANION_IFACE_IN_USE"

    return-object p0

    .line 224
    :cond_14e
    const/16 v0, 0x77

    if-ne p0, v0, :cond_155

    .line 225
    const-string p0, "IP_ADDRESS_MISMATCH"

    return-object p0

    .line 227
    :cond_155
    const/16 v0, 0x78

    if-ne p0, v0, :cond_15c

    .line 228
    const-string p0, "IFACE_AND_POL_FAMILY_MISMATCH"

    return-object p0

    .line 230
    :cond_15c
    const/16 v0, 0x79

    if-ne p0, v0, :cond_163

    .line 231
    const-string p0, "EMM_ACCESS_BARRED_INFINITE_RETRY"

    return-object p0

    .line 233
    :cond_163
    const/16 v0, 0x7a

    if-ne p0, v0, :cond_16a

    .line 234
    const-string p0, "AUTH_FAILURE_ON_EMERGENCY_CALL"

    return-object p0

    .line 236
    :cond_16a
    const/16 v0, 0x1001

    if-ne p0, v0, :cond_171

    .line 237
    const-string p0, "OEM_DCFAILCAUSE_1"

    return-object p0

    .line 239
    :cond_171
    const/16 v0, 0x1002

    if-ne p0, v0, :cond_178

    .line 240
    const-string p0, "OEM_DCFAILCAUSE_2"

    return-object p0

    .line 242
    :cond_178
    const/16 v0, 0x1003

    if-ne p0, v0, :cond_17f

    .line 243
    const-string p0, "OEM_DCFAILCAUSE_3"

    return-object p0

    .line 245
    :cond_17f
    const/16 v0, 0x1004

    if-ne p0, v0, :cond_186

    .line 246
    const-string p0, "OEM_DCFAILCAUSE_4"

    return-object p0

    .line 248
    :cond_186
    const/16 v0, 0x1005

    if-ne p0, v0, :cond_18d

    .line 249
    const-string p0, "OEM_DCFAILCAUSE_5"

    return-object p0

    .line 251
    :cond_18d
    const/16 v0, 0x1006

    if-ne p0, v0, :cond_194

    .line 252
    const-string p0, "OEM_DCFAILCAUSE_6"

    return-object p0

    .line 254
    :cond_194
    const/16 v0, 0x1007

    if-ne p0, v0, :cond_19b

    .line 255
    const-string p0, "OEM_DCFAILCAUSE_7"

    return-object p0

    .line 257
    :cond_19b
    const/16 v0, 0x1008

    if-ne p0, v0, :cond_1a2

    .line 258
    const-string p0, "OEM_DCFAILCAUSE_8"

    return-object p0

    .line 260
    :cond_1a2
    const/16 v0, 0x1009

    if-ne p0, v0, :cond_1a9

    .line 261
    const-string p0, "OEM_DCFAILCAUSE_9"

    return-object p0

    .line 263
    :cond_1a9
    const/16 v0, 0x100a

    if-ne p0, v0, :cond_1b0

    .line 264
    const-string p0, "OEM_DCFAILCAUSE_10"

    return-object p0

    .line 266
    :cond_1b0
    const/16 v0, 0x100b

    if-ne p0, v0, :cond_1b7

    .line 267
    const-string p0, "OEM_DCFAILCAUSE_11"

    return-object p0

    .line 269
    :cond_1b7
    const/16 v0, 0x100c

    if-ne p0, v0, :cond_1be

    .line 270
    const-string p0, "OEM_DCFAILCAUSE_12"

    return-object p0

    .line 272
    :cond_1be
    const/16 v0, 0x100d

    if-ne p0, v0, :cond_1c5

    .line 273
    const-string p0, "OEM_DCFAILCAUSE_13"

    return-object p0

    .line 275
    :cond_1c5
    const/16 v0, 0x100e

    if-ne p0, v0, :cond_1cc

    .line 276
    const-string p0, "OEM_DCFAILCAUSE_14"

    return-object p0

    .line 278
    :cond_1cc
    const/16 v0, 0x100f

    if-ne p0, v0, :cond_1d3

    .line 279
    const-string p0, "OEM_DCFAILCAUSE_15"

    return-object p0

    .line 281
    :cond_1d3
    const/4 v0, -0x1

    if-ne p0, v0, :cond_1d9

    .line 282
    const-string p0, "VOICE_REGISTRATION_FAIL"

    return-object p0

    .line 284
    :cond_1d9
    const/4 v0, -0x2

    if-ne p0, v0, :cond_1df

    .line 285
    const-string p0, "DATA_REGISTRATION_FAIL"

    return-object p0

    .line 287
    :cond_1df
    const/4 v0, -0x3

    if-ne p0, v0, :cond_1e5

    .line 288
    const-string p0, "SIGNAL_LOST"

    return-object p0

    .line 290
    :cond_1e5
    const/4 v0, -0x4

    if-ne p0, v0, :cond_1eb

    .line 291
    const-string p0, "PREF_RADIO_TECH_CHANGED"

    return-object p0

    .line 293
    :cond_1eb
    const/4 v0, -0x5

    if-ne p0, v0, :cond_1f1

    .line 294
    const-string p0, "RADIO_POWER_OFF"

    return-object p0

    .line 296
    :cond_1f1
    const/4 v0, -0x6

    if-ne p0, v0, :cond_1f7

    .line 297
    const-string p0, "TETHERED_CALL_ACTIVE"

    return-object p0

    .line 299
    :cond_1f7
    const v0, 0xffff

    if-ne p0, v0, :cond_1ff

    .line 300
    const-string p0, "ERROR_UNSPECIFIED"

    return-object p0

    .line 302
    :cond_1ff
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
