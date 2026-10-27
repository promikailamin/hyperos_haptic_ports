.class public Landroid/telephony/SmsMessage;
.super Ljava/lang/Object;
.source "SmsMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/SmsMessage$SubmitPdu;,
        Landroid/telephony/SmsMessage$MessageClass;,
        Landroid/telephony/SmsMessage$NoEmsSupportConfig;,
        Landroid/telephony/SmsMessage$Format;,
        Landroid/telephony/SmsMessage$EncodingSize;
    }
.end annotation


# static fields
.field public static final whitelist ENCODING_16BIT:I = 0x3

.field public static final whitelist ENCODING_7BIT:I = 0x1

.field public static final whitelist ENCODING_8BIT:I = 0x2

.field public static final whitelist ENCODING_KSC5601:I = 0x4

.field public static final whitelist ENCODING_UNKNOWN:I = 0x0

.field public static final whitelist FORMAT_3GPP:Ljava/lang/String; = "3gpp"

.field public static final whitelist FORMAT_3GPP2:Ljava/lang/String; = "3gpp2"

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "SmsMessage"

.field public static final whitelist MAX_USER_DATA_BYTES:I = 0x8c

.field public static final whitelist MAX_USER_DATA_BYTES_WITH_HEADER:I = 0x86

.field public static final whitelist MAX_USER_DATA_SEPTETS:I = 0xa0

.field public static final whitelist MAX_USER_DATA_SEPTETS_WITH_HEADER:I = 0x99

.field private static greylist-max-o mIsNoEmsSupportConfigListLoaded:Z

.field private static greylist-max-o mNoEmsSupportConfigList:[Landroid/telephony/SmsMessage$NoEmsSupportConfig;


# instance fields
.field private greylist-max-r mSubId:I

.field public greylist mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1181
    const/4 v0, 0x0

    sput-object v0, Landroid/telephony/SmsMessage;->mNoEmsSupportConfigList:[Landroid/telephony/SmsMessage$NoEmsSupportConfig;

    .line 1182
    const/4 v0, 0x0

    sput-boolean v0, Landroid/telephony/SmsMessage;->mIsNoEmsSupportConfigListLoaded:Z

    return-void
.end method

.method public constructor greylist-max-o <init>(Lcom/android/internal/telephony/SmsMessageBase;)V
    .registers 3

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/SmsMessage;->mSubId:I

    .line 187
    iput-object p1, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    .line 188
    return-void
.end method

.method public static whitelist calculateLength(Ljava/lang/CharSequence;Z)[I
    .registers 3

    .line 365
    invoke-static {}, Landroid/telephony/SmsManager;->getDefaultSmsSubscriptionId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)[I

    move-result-object p0

    return-object p0
.end method

.method public static blacklist calculateLength(Ljava/lang/CharSequence;ZI)[I
    .registers 9

    .line 388
    invoke-static {p2}, Landroid/telephony/SmsMessage;->useCdmaFormatForMoSms(I)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 389
    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZZ)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object p0

    goto :goto_10

    .line 391
    :cond_c
    invoke-static {p0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object p0

    .line 393
    :goto_10
    nop

    .line 394
    iget v0, p0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 395
    iget v1, p0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    .line 396
    iget v2, p0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    .line 397
    iget v3, p0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 398
    iget v4, p0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    .line 399
    iget v5, p0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    filled-new-array/range {v0 .. v5}, [I

    move-result-object p0

    .line 400
    return-object p0
.end method

.method public static whitelist calculateLength(Ljava/lang/String;Z)[I
    .registers 2

    .line 530
    invoke-static {p0, p1}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)[I

    move-result-object p0

    return-object p0
.end method

.method public static blacklist calculateLength(Ljava/lang/String;ZI)[I
    .registers 3

    .line 548
    invoke-static {p0, p1, p2}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)[I

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o createFromEfRecord(I[B)Landroid/telephony/SmsMessage;
    .registers 3

    .line 270
    invoke-static {}, Landroid/telephony/SmsManager;->getDefaultSmsSubscriptionId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/telephony/SmsMessage;->createFromEfRecord(I[BI)Landroid/telephony/SmsMessage;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o createFromEfRecord(I[BI)Landroid/telephony/SmsMessage;
    .registers 3

    .line 286
    invoke-static {p2}, Landroid/telephony/SmsMessage;->isCdmaVoice(I)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 287
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->createFromEfRecord(I[B)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object p0

    goto :goto_f

    .line 290
    :cond_b
    invoke-static {p0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->createFromEfRecord(I[B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object p0

    .line 294
    :goto_f
    if-eqz p0, :cond_17

    new-instance p1, Landroid/telephony/SmsMessage;

    invoke-direct {p1, p0}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    goto :goto_18

    :cond_17
    const/4 p1, 0x0

    :goto_18
    return-object p1
.end method

.method public static whitelist createFromNativeSmsSubmitPdu([BZ)Landroid/telephony/SmsMessage;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 313
    const/4 v0, 0x0

    if-eqz p1, :cond_8

    .line 314
    invoke-static {v0, p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->createFromEfRecord(I[B)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object p0

    goto :goto_c

    .line 318
    :cond_8
    invoke-static {v0, p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->createFromEfRecord(I[B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object p0

    .line 322
    :goto_c
    if-eqz p0, :cond_14

    new-instance p1, Landroid/telephony/SmsMessage;

    invoke-direct {p1, p0}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    return-object p1
.end method

.method public static whitelist createFromPdu([B)Landroid/telephony/SmsMessage;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 204
    nop

    .line 208
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    .line 209
    const/4 v1, 0x2

    if-ne v1, v0, :cond_f

    .line 210
    const-string v0, "3gpp2"

    goto :goto_11

    :cond_f
    const-string v0, "3gpp"

    .line 211
    :goto_11
    invoke-static {p0, v0}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;
    .registers 3

    .line 227
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;Z)Landroid/telephony/SmsMessage;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist createFromPdu([BLjava/lang/String;Z)Landroid/telephony/SmsMessage;
    .registers 8

    .line 232
    const/4 v0, 0x0

    const-string v1, "SmsMessage"

    if-nez p0, :cond_b

    .line 233
    const-string p0, "createFromPdu(): pdu is null"

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    return-object v0

    .line 237
    :cond_b
    const-string v2, "3gpp2"

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "3gpp"

    if-eqz v3, :cond_17

    move-object v3, v4

    goto :goto_18

    .line 238
    :cond_17
    move-object v3, v2

    .line 239
    :goto_18
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 240
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object p1

    goto :goto_2d

    .line 241
    :cond_23
    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 242
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object p1

    .line 248
    :goto_2d
    if-eqz p1, :cond_35

    .line 249
    new-instance p0, Landroid/telephony/SmsMessage;

    invoke-direct {p0, p1}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    return-object p0

    .line 251
    :cond_35
    if-eqz p2, :cond_3d

    .line 252
    const/4 p1, 0x0

    invoke-static {p0, v3, p1}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;Z)Landroid/telephony/SmsMessage;

    move-result-object p0

    return-object p0

    .line 254
    :cond_3d
    const-string p0, "createFromPdu(): wrappedMessage is null"

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    return-object v0

    .line 244
    :cond_43
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "createFromPdu(): unsupported message format "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    return-object v0
.end method

.method public static greylist fragmentText(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 413
    invoke-static {}, Landroid/telephony/SmsManager;->getDefaultSmsSubscriptionId()I

    move-result v0

    invoke-static {p0, v0}, Landroid/telephony/SmsMessage;->fragmentText(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist fragmentText(Ljava/lang/String;I)Ljava/util/ArrayList;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 427
    invoke-static {p1}, Landroid/telephony/SmsMessage;->useCdmaFormatForMoSms(I)Z

    move-result p1

    .line 430
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_d

    .line 431
    invoke-static {p0, v0, v1}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZZ)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v2

    goto :goto_11

    .line 433
    :cond_d
    invoke-static {p0, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v2

    .line 441
    :goto_11
    iget v3, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-ne v3, v1, :cond_38

    .line 443
    iget v3, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    if-eqz v3, :cond_1f

    iget v3, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    if-eqz v3, :cond_1f

    .line 444
    const/4 v3, 0x7

    goto :goto_2b

    .line 445
    :cond_1f
    iget v3, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    if-nez v3, :cond_2a

    iget v3, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    if-eqz v3, :cond_28

    goto :goto_2a

    .line 448
    :cond_28
    move v3, v0

    goto :goto_2b

    .line 446
    :cond_2a
    :goto_2a
    const/4 v3, 0x4

    .line 451
    :goto_2b
    iget v4, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    if-le v4, v1, :cond_31

    .line 452
    add-int/lit8 v3, v3, 0x6

    .line 455
    :cond_31
    if-eqz v3, :cond_35

    .line 456
    add-int/lit8 v3, v3, 0x1

    .line 459
    :cond_35
    rsub-int v3, v3, 0xa0

    .line 460
    goto :goto_51

    .line 461
    :cond_38
    iget v3, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    if-le v3, v1, :cond_4f

    .line 462
    nop

    .line 469
    invoke-static {}, Landroid/telephony/SmsMessage;->hasEmsSupport()Z

    move-result v3

    if-nez v3, :cond_4c

    iget v3, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    const/16 v4, 0xa

    if-ge v3, v4, :cond_4c

    .line 470
    const/16 v3, 0x84

    goto :goto_51

    .line 477
    :cond_4c
    const/16 v3, 0x86

    goto :goto_51

    .line 473
    :cond_4f
    const/16 v3, 0x8c

    .line 477
    :goto_51
    nop

    .line 478
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    .line 479
    const v5, 0x1110276

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_6d

    .line 483
    if-eqz p1, :cond_67

    iget v4, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    if-ne v4, v1, :cond_67

    move v4, v1

    goto :goto_68

    :cond_67
    move v4, v0

    :goto_68
    invoke-static {p0, v4}, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->translate(Ljava/lang/CharSequence;Z)Ljava/lang/String;

    move-result-object v4

    goto :goto_6e

    .line 479
    :cond_6d
    const/4 v4, 0x0

    .line 485
    :goto_6e
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_75

    .line 486
    goto :goto_76

    .line 485
    :cond_75
    move-object p0, v4

    .line 489
    :goto_76
    nop

    .line 490
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 491
    new-instance v5, Ljava/util/ArrayList;

    iget v6, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 492
    :goto_82
    if-ge v0, v4, :cond_ee

    .line 493
    nop

    .line 494
    iget v6, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-ne v6, v1, :cond_a0

    .line 495
    if-eqz p1, :cond_97

    iget v6, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    if-ne v6, v1, :cond_97

    .line 497
    sub-int v6, v4, v0

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int/2addr v6, v0

    goto :goto_a4

    .line 500
    :cond_97
    iget v6, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    iget v7, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    invoke-static {p0, v0, v3, v6, v7}, Lcom/android/internal/telephony/GsmAlphabet;->findGsmSeptetLimitIndex(Ljava/lang/String;IIII)I

    move-result v6

    goto :goto_a4

    .line 504
    :cond_a0
    invoke-static {v0, v3, p0}, Lcom/android/internal/telephony/SmsMessageBase;->findNextUnicodePosition(IILjava/lang/CharSequence;)I

    move-result v6

    .line 506
    :goto_a4
    if-le v6, v0, :cond_b3

    if-le v6, v4, :cond_a9

    goto :goto_b3

    .line 511
    :cond_a9
    invoke-virtual {p0, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 512
    nop

    .line 513
    move v0, v6

    goto :goto_82

    .line 507
    :cond_b3
    :goto_b3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "fragmentText failed ("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " >= "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " or "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SmsMessage"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    nop

    .line 514
    :cond_ee
    return-object v5
.end method

.method public static whitelist getSmsPdu(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Landroid/telephony/SmsMessage$SubmitPdu;
    .registers 11
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 672
    invoke-static {p0}, Landroid/telephony/SmsMessage;->isCdmaVoice(I)Z

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p0, :cond_19

    .line 673
    if-eq p1, v2, :cond_14

    if-ne p1, v1, :cond_f

    goto :goto_14

    .line 678
    :cond_f
    invoke-static {p2, p3, p4, v0, v3}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object p0

    goto :goto_27

    .line 675
    :cond_14
    :goto_14
    invoke-static {p3, p4, p5, p6}, Lcom/android/internal/telephony/cdma/SmsMessage;->getDeliverPdu(Ljava/lang/String;Ljava/lang/String;J)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object p0

    goto :goto_27

    .line 682
    :cond_19
    if-eq p1, v2, :cond_23

    if-ne p1, v1, :cond_1e

    goto :goto_23

    .line 687
    :cond_1e
    invoke-static {p2, p3, p4, v0, v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object p0

    goto :goto_27

    .line 684
    :cond_23
    :goto_23
    invoke-static {p2, p3, p4, p5, p6}, Lcom/android/internal/telephony/gsm/SmsMessage;->getDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object p0

    .line 692
    :goto_27
    if-eqz p0, :cond_2e

    new-instance v3, Landroid/telephony/SmsMessage$SubmitPdu;

    invoke-direct {v3, p0}, Landroid/telephony/SmsMessage$SubmitPdu;-><init>(Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)V

    :cond_2e
    return-object v3
.end method

.method public static whitelist getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/telephony/SmsMessage$SubmitPdu;
    .registers 5

    .line 583
    nop

    .line 588
    invoke-static {}, Landroid/telephony/SmsManager;->getDefaultSmsSubscriptionId()I

    move-result v0

    .line 583
    invoke-static {p0, p1, p2, p3, v0}, Landroid/telephony/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Landroid/telephony/SmsMessage$SubmitPdu;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Landroid/telephony/SmsMessage$SubmitPdu;
    .registers 6

    .line 607
    invoke-static {p4}, Landroid/telephony/SmsMessage;->useCdmaFormatForMoSms(I)Z

    move-result p4

    const/4 v0, 0x0

    if-eqz p4, :cond_c

    .line 608
    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object p0

    goto :goto_10

    .line 611
    :cond_c
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object p0

    .line 615
    :goto_10
    if-eqz p0, :cond_17

    new-instance v0, Landroid/telephony/SmsMessage$SubmitPdu;

    invoke-direct {v0, p0}, Landroid/telephony/SmsMessage$SubmitPdu;-><init>(Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)V

    :cond_17
    return-object v0
.end method

.method public static whitelist getSubmitPdu(Ljava/lang/String;Ljava/lang/String;S[BZ)Landroid/telephony/SmsMessage$SubmitPdu;
    .registers 6

    .line 635
    invoke-static {}, Landroid/telephony/SmsMessage;->useCdmaFormatForMoSms()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 636
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object p0

    goto :goto_f

    .line 639
    :cond_b
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object p0

    .line 643
    :goto_f
    if-eqz p0, :cond_17

    new-instance p1, Landroid/telephony/SmsMessage$SubmitPdu;

    invoke-direct {p1, p0}, Landroid/telephony/SmsMessage$SubmitPdu;-><init>(Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)V

    goto :goto_18

    :cond_17
    const/4 p1, 0x0

    :goto_18
    return-object p1
.end method

.method public static whitelist getSubmitPduEncodedMessage(ZLjava/lang/String;Ljava/lang/String;IIIIII)[B
    .registers 18
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 727
    new-instance v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v0}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 728
    iput p6, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 729
    move/from16 v1, p7

    iput v1, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 730
    move/from16 v1, p8

    iput v1, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 737
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 738
    new-instance v2, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v2}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 739
    iput-object v0, v2, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 746
    if-ne p3, v1, :cond_1f

    .line 747
    iput p4, v2, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 748
    iput p5, v2, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 751
    :cond_1f
    const/4 v8, 0x0

    if-eqz p0, :cond_35

    .line 752
    nop

    .line 754
    invoke-static {v2}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v4

    .line 752
    const/4 v0, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    goto :goto_50

    .line 757
    :cond_35
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 758
    iput-object p2, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 759
    iput-object v2, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 760
    if-ne p3, v1, :cond_45

    .line 761
    const/16 v2, 0x9

    iput v2, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    goto :goto_48

    .line 763
    :cond_45
    const/4 v2, 0x4

    iput v2, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 765
    :goto_48
    iput-boolean v1, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 766
    invoke-static {p1, v0, v8}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;Z)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedMessage:[B

    .line 769
    :goto_50
    if-nez v0, :cond_55

    .line 770
    new-array v0, v8, [B

    return-object v0

    .line 772
    :cond_55
    return-object v0
.end method

.method public static whitelist getTPLayerLengthForPDU(Ljava/lang/String;)I
    .registers 2

    .line 333
    invoke-static {}, Landroid/telephony/SmsMessage;->isCdmaVoice()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 334
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTPLayerLengthForPDU(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 336
    :cond_b
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getTPLayerLengthForPDU(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static greylist-max-o hasEmsSupport()Z
    .registers 9

    .line 1101
    invoke-static {}, Landroid/telephony/SmsMessage;->isNoEmsSupportConfigListExisted()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    .line 1102
    return v1

    .line 1107
    :cond_8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1109
    :try_start_c
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 1110
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object v4
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_5e

    .line 1112
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1113
    nop

    .line 1115
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5d

    .line 1116
    sget-object v2, Landroid/telephony/SmsMessage;->mNoEmsSupportConfigList:[Landroid/telephony/SmsMessage$NoEmsSupportConfig;

    array-length v3, v2

    const/4 v5, 0x0

    move v6, v5

    :goto_2b
    if-ge v6, v3, :cond_5d

    aget-object v7, v2, v6

    .line 1117
    if-nez v7, :cond_39

    .line 1118
    const-string v7, "SmsMessage"

    const-string v8, "hasEmsSupport currentConfig is null"

    invoke-static {v7, v8}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    goto :goto_5a

    .line 1122
    :cond_39
    iget-object v8, v7, Landroid/telephony/SmsMessage$NoEmsSupportConfig;->mOperatorNumber:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5a

    iget-object v8, v7, Landroid/telephony/SmsMessage$NoEmsSupportConfig;->mGid1:Ljava/lang/String;

    .line 1123
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_59

    iget-object v8, v7, Landroid/telephony/SmsMessage$NoEmsSupportConfig;->mGid1:Ljava/lang/String;

    .line 1124
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5a

    iget-object v7, v7, Landroid/telephony/SmsMessage$NoEmsSupportConfig;->mGid1:Ljava/lang/String;

    .line 1125
    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5a

    .line 1126
    :cond_59
    return v5

    .line 1116
    :cond_5a
    :goto_5a
    add-int/lit8 v6, v6, 0x1

    goto :goto_2b

    .line 1130
    :cond_5d
    return v1

    .line 1112
    :catchall_5e
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1113
    throw v0
.end method

.method private static greylist-max-o isCdmaVoice()Z
    .registers 1

    .line 1083
    invoke-static {}, Landroid/telephony/SmsManager;->getDefaultSmsSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SmsMessage;->isCdmaVoice(I)Z

    move-result v0

    return v0
.end method

.method private static greylist-max-o isCdmaVoice(I)Z
    .registers 2

    .line 1092
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(I)I

    move-result p0

    .line 1093
    const/4 v0, 0x2

    if-ne v0, p0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method

.method private static greylist-max-o isNoEmsSupportConfigListExisted()Z
    .registers 9

    .line 1185
    const-class v0, Landroid/telephony/SmsMessage;

    monitor-enter v0

    .line 1186
    :try_start_3
    sget-boolean v1, Landroid/telephony/SmsMessage;->mIsNoEmsSupportConfigListLoaded:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_3a

    .line 1187
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 1188
    if-eqz v1, :cond_3a

    .line 1189
    const v4, 0x1070122

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 1191
    if-eqz v1, :cond_38

    array-length v4, v1

    if-lez v4, :cond_38

    .line 1192
    array-length v4, v1

    new-array v4, v4, [Landroid/telephony/SmsMessage$NoEmsSupportConfig;

    sput-object v4, Landroid/telephony/SmsMessage;->mNoEmsSupportConfigList:[Landroid/telephony/SmsMessage$NoEmsSupportConfig;

    .line 1193
    move v4, v2

    :goto_21
    array-length v5, v1

    if-ge v4, v5, :cond_38

    .line 1194
    sget-object v5, Landroid/telephony/SmsMessage;->mNoEmsSupportConfigList:[Landroid/telephony/SmsMessage$NoEmsSupportConfig;

    new-instance v6, Landroid/telephony/SmsMessage$NoEmsSupportConfig;

    aget-object v7, v1, v4

    const-string v8, ";"

    .line 1195
    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/telephony/SmsMessage$NoEmsSupportConfig;-><init>([Ljava/lang/String;)V

    aput-object v6, v5, v4

    .line 1193
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    .line 1198
    :cond_38
    sput-boolean v3, Landroid/telephony/SmsMessage;->mIsNoEmsSupportConfigListLoaded:Z

    .line 1201
    :cond_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_46

    .line 1203
    sget-object v0, Landroid/telephony/SmsMessage;->mNoEmsSupportConfigList:[Landroid/telephony/SmsMessage$NoEmsSupportConfig;

    if-eqz v0, :cond_45

    sget-object v0, Landroid/telephony/SmsMessage;->mNoEmsSupportConfigList:[Landroid/telephony/SmsMessage$NoEmsSupportConfig;

    array-length v0, v0

    if-eqz v0, :cond_45

    .line 1204
    return v3

    .line 1207
    :cond_45
    return v2

    .line 1201
    :catchall_46
    move-exception v1

    :try_start_47
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    throw v1
.end method

.method public static greylist-max-o shouldAppendPageNumberAsPrefix()Z
    .registers 8

    .line 1138
    invoke-static {}, Landroid/telephony/SmsMessage;->isNoEmsSupportConfigListExisted()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1139
    return v1

    .line 1144
    :cond_8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1146
    :try_start_c
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 1147
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object v4
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_4f

    .line 1149
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1150
    nop

    .line 1152
    sget-object v2, Landroid/telephony/SmsMessage;->mNoEmsSupportConfigList:[Landroid/telephony/SmsMessage$NoEmsSupportConfig;

    array-length v3, v2

    move v5, v1

    :goto_24
    if-ge v5, v3, :cond_4e

    aget-object v6, v2, v5

    .line 1153
    iget-object v7, v6, Landroid/telephony/SmsMessage$NoEmsSupportConfig;->mOperatorNumber:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4b

    iget-object v7, v6, Landroid/telephony/SmsMessage$NoEmsSupportConfig;->mGid1:Ljava/lang/String;

    .line 1154
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_48

    iget-object v7, v6, Landroid/telephony/SmsMessage$NoEmsSupportConfig;->mGid1:Ljava/lang/String;

    .line 1155
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4b

    iget-object v7, v6, Landroid/telephony/SmsMessage$NoEmsSupportConfig;->mGid1:Ljava/lang/String;

    .line 1156
    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4b

    .line 1157
    :cond_48
    iget-boolean v0, v6, Landroid/telephony/SmsMessage$NoEmsSupportConfig;->mIsPrefix:Z

    return v0

    .line 1152
    :cond_4b
    add-int/lit8 v5, v5, 0x1

    goto :goto_24

    .line 1160
    :cond_4e
    return v1

    .line 1149
    :catchall_4f
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1150
    throw v0
.end method

.method private static greylist useCdmaFormatForMoSms()Z
    .registers 1

    .line 1054
    invoke-static {}, Landroid/telephony/SmsManager;->getDefaultSmsSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SmsMessage;->useCdmaFormatForMoSms(I)Z

    move-result v0

    return v0
.end method

.method private static greylist-max-r useCdmaFormatForMoSms(I)Z
    .registers 3

    .line 1068
    invoke-static {p0}, Landroid/telephony/SmsManager;->getSmsManagerForSubscriptionId(I)Landroid/telephony/SmsManager;

    move-result-object v0

    .line 1069
    invoke-virtual {v0}, Landroid/telephony/SmsManager;->isImsSmsSupported()Z

    move-result v1

    if-nez v1, :cond_f

    .line 1071
    invoke-static {p0}, Landroid/telephony/SmsMessage;->isCdmaVoice(I)Z

    move-result p0

    return p0

    .line 1074
    :cond_f
    const-string p0, "3gpp2"

    invoke-virtual {v0}, Landroid/telephony/SmsManager;->getImsSmsFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public whitelist getDisplayMessageBody()Ljava/lang/String;
    .registers 2

    .line 835
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDisplayOriginatingAddress()Ljava/lang/String;
    .registers 2

    .line 805
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getEmailBody()Ljava/lang/String;
    .registers 2

    .line 868
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getEmailBody()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getEmailFrom()Ljava/lang/String;
    .registers 2

    .line 876
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getEmailFrom()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getIndexOnIcc()I
    .registers 2

    .line 990
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getIndexOnIcc()I

    move-result v0

    return v0
.end method

.method public whitelist getIndexOnSim()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 981
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getIndexOnIcc()I

    move-result v0

    return v0
.end method

.method public whitelist getMessageBody()Ljava/lang/String;
    .registers 2

    .line 813
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getMessageClass()Landroid/telephony/SmsMessage$MessageClass;
    .registers 3

    .line 820
    sget-object v0, Landroid/telephony/SmsMessage$1;->$SwitchMap$com$android$internal$telephony$SmsConstants$MessageClass:[I

    iget-object v1, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageClass()Lcom/android/internal/telephony/SmsConstants$MessageClass;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/SmsConstants$MessageClass;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_20

    .line 825
    sget-object v0, Landroid/telephony/SmsMessage$MessageClass;->UNKNOWN:Landroid/telephony/SmsMessage$MessageClass;

    return-object v0

    .line 824
    :pswitch_14
    sget-object v0, Landroid/telephony/SmsMessage$MessageClass;->CLASS_3:Landroid/telephony/SmsMessage$MessageClass;

    return-object v0

    .line 823
    :pswitch_17
    sget-object v0, Landroid/telephony/SmsMessage$MessageClass;->CLASS_2:Landroid/telephony/SmsMessage$MessageClass;

    return-object v0

    .line 822
    :pswitch_1a
    sget-object v0, Landroid/telephony/SmsMessage$MessageClass;->CLASS_1:Landroid/telephony/SmsMessage$MessageClass;

    return-object v0

    .line 821
    :pswitch_1d
    sget-object v0, Landroid/telephony/SmsMessage$MessageClass;->CLASS_0:Landroid/telephony/SmsMessage$MessageClass;

    return-object v0

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
    .end packed-switch
.end method

.method public whitelist getOriginatingAddress()Ljava/lang/String;
    .registers 2

    .line 796
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPdu()[B
    .registers 2

    .line 942
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist getProtocolIdentifier()I
    .registers 2

    .line 883
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getProtocolIdentifier()I

    move-result v0

    return v0
.end method

.method public whitelist getPseudoSubject()Ljava/lang/String;
    .registers 2

    .line 843
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getPseudoSubject()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getReceivedEncodingType()I
    .registers 2

    .line 1032
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getReceivedEncodingType()I

    move-result v0

    return v0
.end method

.method public whitelist getRecipientAddress()Ljava/lang/String;
    .registers 2

    .line 1217
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getRecipientAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getServiceCenterAddress()Ljava/lang/String;
    .registers 2

    .line 780
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getStatus()I
    .registers 2

    .line 1006
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getStatus()I

    move-result v0

    return v0
.end method

.method public whitelist getStatusOnIcc()I
    .registers 2

    .line 971
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getStatusOnIcc()I

    move-result v0

    return v0
.end method

.method public whitelist getStatusOnSim()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 957
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getStatusOnIcc()I

    move-result v0

    return v0
.end method

.method public greylist getSubId()I
    .registers 2

    .line 157
    iget v0, p0, Landroid/telephony/SmsMessage;->mSubId:I

    return v0
.end method

.method public whitelist getTimestampMillis()J
    .registers 3

    .line 850
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getUserData()[B
    .registers 2

    .line 933
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getUserData()[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist is3gpp()Z
    .registers 2

    .line 1041
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    instance-of v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage;

    return v0
.end method

.method public whitelist isCphsMwiMessage()Z
    .registers 2

    .line 901
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isCphsMwiMessage()Z

    move-result v0

    return v0
.end method

.method public whitelist isEmail()Z
    .registers 2

    .line 860
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isEmail()Z

    move-result v0

    return v0
.end method

.method public whitelist isMWIClearMessage()Z
    .registers 2

    .line 909
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isMWIClearMessage()Z

    move-result v0

    return v0
.end method

.method public whitelist isMWISetMessage()Z
    .registers 2

    .line 917
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isMWISetMessage()Z

    move-result v0

    return v0
.end method

.method public whitelist isMwiDontStore()Z
    .registers 2

    .line 925
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isMwiDontStore()Z

    move-result v0

    return v0
.end method

.method public whitelist isReplace()Z
    .registers 2

    .line 891
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isReplace()Z

    move-result v0

    return v0
.end method

.method public whitelist isReplyPathPresent()Z
    .registers 2

    .line 1021
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isReplyPathPresent()Z

    move-result v0

    return v0
.end method

.method public whitelist isStatusReportMessage()Z
    .registers 2

    .line 1013
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isStatusReportMessage()Z

    move-result v0

    return v0
.end method

.method public greylist setSubId(I)V
    .registers 2

    .line 148
    iput p1, p0, Landroid/telephony/SmsMessage;->mSubId:I

    .line 149
    return-void
.end method
