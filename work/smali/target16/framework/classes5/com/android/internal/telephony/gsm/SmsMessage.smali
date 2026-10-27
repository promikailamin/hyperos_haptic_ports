.class public Lcom/android/internal/telephony/gsm/SmsMessage;
.super Lcom/android/internal/telephony/SmsMessageBase;
.source "SmsMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;,
        Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;
    }
.end annotation


# static fields
.field private static final blacklist INVALID_VALIDITY_PERIOD:I = -0x1

.field static final blacklist LOG_TAG:Ljava/lang/String; = "SmsMessage"

.field private static final blacklist VALIDITY_PERIOD_FORMAT_ABSOLUTE:I = 0x3

.field private static final blacklist VALIDITY_PERIOD_FORMAT_ENHANCED:I = 0x1

.field private static final blacklist VALIDITY_PERIOD_FORMAT_NONE:I = 0x0

.field private static final blacklist VALIDITY_PERIOD_FORMAT_RELATIVE:I = 0x2

.field private static final blacklist VALIDITY_PERIOD_MAX:I = 0x9b0a0

.field private static final blacklist VALIDITY_PERIOD_MIN:I = 0x5

.field private static final blacklist VDBG:Z = false


# instance fields
.field private blacklist mDataCodingScheme:I

.field private blacklist mIsStatusReportMessage:Z

.field private blacklist mMti:I

.field private blacklist mProtocolIdentifier:I

.field private blacklist mReplyPathPresent:Z

.field private blacklist mStatus:I

.field private blacklist mVoiceMailCount:I

.field private blacklist messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 114
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsMessageBase;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mReplyPathPresent:Z

    .line 91
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsStatusReportMessage:Z

    .line 93
    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    .line 115
    return-void
.end method

.method public static greylist calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .registers 4

    .line 1148
    nop

    .line 1149
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 1150
    const v1, 0x1110276

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1151
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->translate(Ljava/lang/CharSequence;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    .line 1150
    :cond_14
    const/4 v0, 0x0

    .line 1153
    :goto_15
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1154
    goto :goto_1d

    .line 1153
    :cond_1c
    move-object p0, v0

    .line 1156
    :goto_1d
    invoke-static {p0, p1}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object p1

    .line 1157
    if-nez p1, :cond_28

    .line 1158
    invoke-static {p0}, Lcom/android/internal/telephony/SmsMessageBase;->calcUnicodeEncodingDetails(Ljava/lang/CharSequence;)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object p0

    return-object p0

    .line 1160
    :cond_28
    return-object p1
.end method

.method public static greylist-max-q createFromEfRecord(I[B)Lcom/android/internal/telephony/gsm/SmsMessage;
    .registers 8

    .line 156
    const-string v0, "SmsMessage"

    const/4 v1, 0x0

    :try_start_3
    new-instance v2, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v2}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    .line 158
    iput p0, v2, Lcom/android/internal/telephony/gsm/SmsMessage;->mIndexOnIcc:I

    .line 163
    const/4 p0, 0x0

    aget-byte v3, p1, p0

    const/4 v4, 0x1

    and-int/2addr v3, v4

    if-nez v3, :cond_17

    .line 164
    const-string p0, "SMS parsing failed: Trying to parse a free record"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    return-object v1

    .line 168
    :cond_17
    aget-byte v3, p1, p0

    and-int/lit8 v3, v3, 0x7

    iput v3, v2, Lcom/android/internal/telephony/gsm/SmsMessage;->mStatusOnIcc:I

    .line 171
    array-length v3, p1

    sub-int/2addr v3, v4

    .line 175
    new-array v5, v3, [B

    .line 176
    invoke-static {p1, v4, v5, p0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 177
    invoke-direct {v2, v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->parsePdu([B)V
    :try_end_27
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_27} :catch_28

    .line 178
    return-object v2

    .line 179
    :catch_28
    move-exception p0

    .line 180
    const-string p1, "SMS PDU parsing failed: "

    invoke-static {v0, p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 181
    return-object v1
.end method

.method public static greylist createFromPdu([B)Lcom/android/internal/telephony/gsm/SmsMessage;
    .registers 4

    .line 123
    const-string v0, "SmsMessage"

    const/4 v1, 0x0

    :try_start_3
    new-instance v2, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v2}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    .line 124
    invoke-direct {v2, p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parsePdu([B)V
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_b} :catch_13
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_b} :catch_c

    .line 125
    return-object v2

    .line 129
    :catch_c
    move-exception p0

    .line 130
    const-string v2, "SMS PDU parsing failed with out of memory: "

    invoke-static {v0, v2, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 131
    return-object v1

    .line 126
    :catch_13
    move-exception p0

    .line 127
    const-string v2, "SMS PDU parsing failed: "

    invoke-static {v0, v2, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 128
    return-object v1
.end method

.method private static greylist encodeUCS2(Ljava/lang/String;[B)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .line 467
    const-string/jumbo v0, "utf-16be"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 469
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_21

    .line 471
    array-length v2, p1

    array-length v3, p0

    add-int/2addr v2, v3

    add-int/2addr v2, v1

    new-array v2, v2, [B

    .line 473
    array-length v3, p1

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 474
    array-length v3, p1

    invoke-static {p1, v0, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 475
    array-length p1, p1

    add-int/2addr p1, v1

    array-length v3, p0

    invoke-static {p0, v0, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, v2

    goto :goto_22

    .line 478
    :cond_21
    nop

    .line 480
    :goto_22
    array-length p1, p0

    const/16 v2, 0xff

    if-gt p1, v2, :cond_35

    .line 484
    array-length p1, p0

    add-int/2addr p1, v1

    new-array p1, p1, [B

    .line 485
    array-length v3, p0

    and-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    .line 486
    array-length v2, p0

    invoke-static {p0, v0, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 487
    return-object p1

    .line 481
    :cond_35
    new-instance p0, Lcom/android/internal/telephony/EncodeException;

    const-string p1, "Payload cannot exceed 255 bytes"

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/EncodeException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public static blacklist getDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .registers 24

    .line 700
    move-object/from16 v1, p2

    const/4 v2, 0x0

    if-eqz p1, :cond_1be

    if-nez v1, :cond_9

    goto/16 :goto_1be

    .line 705
    :cond_9
    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v0

    .line 706
    iget v4, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 707
    iget v5, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    .line 708
    iget v0, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    .line 709
    nop

    .line 711
    const/4 v6, 0x1

    if-ne v4, v6, :cond_2a

    if-nez v5, :cond_1c

    if-eqz v0, :cond_2a

    .line 712
    :cond_1c
    new-instance v7, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v7}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 713
    iput v5, v7, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 714
    iput v0, v7, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 715
    invoke-static {v7}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v7

    goto :goto_2b

    .line 718
    :cond_2a
    move-object v7, v2

    :goto_2b
    new-instance v8, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v8}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    .line 720
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    const/16 v10, 0xb4

    invoke-direct {v9, v10}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 723
    if-nez p0, :cond_3c

    .line 724
    iput-object v2, v8, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    goto :goto_43

    .line 726
    :cond_3c
    nop

    .line 727
    invoke-static/range {p0 .. p0}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v10

    iput-object v10, v8, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    .line 731
    :goto_43
    invoke-virtual {v9, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 735
    invoke-static/range {p1 .. p1}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v10

    .line 738
    if-nez v10, :cond_4d

    return-object v2

    .line 742
    :cond_4d
    array-length v11, v10

    sub-int/2addr v11, v6

    const/4 v12, 0x2

    mul-int/2addr v11, v12

    array-length v13, v10

    sub-int/2addr v13, v6

    aget-byte v13, v10, v13

    const/16 v14, 0xf0

    and-int/2addr v13, v14

    if-ne v13, v14, :cond_5c

    move v13, v6

    goto :goto_5d

    :cond_5c
    move v13, v3

    :goto_5d
    sub-int/2addr v11, v13

    invoke-virtual {v9, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 745
    array-length v11, v10

    invoke-virtual {v9, v10, v3, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 748
    invoke-virtual {v9, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 753
    const/4 v10, 0x3

    const-string v11, "Implausible UnsupportedEncodingException "

    const-string v13, "SmsMessage"

    if-ne v4, v6, :cond_74

    .line 754
    :try_start_6f
    invoke-static {v1, v7, v5, v0}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B

    move-result-object v0
    :try_end_73
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_6f .. :try_end_73} :catch_7a

    goto :goto_79

    .line 758
    :cond_74
    :try_start_74
    invoke-static {v1, v7}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B

    move-result-object v0
    :try_end_78
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_74 .. :try_end_78} :catch_7c
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_74 .. :try_end_78} :catch_7a

    .line 762
    nop

    .line 782
    :goto_79
    goto :goto_93

    .line 764
    :catch_7a
    move-exception v0

    goto :goto_81

    .line 759
    :catch_7c
    move-exception v0

    .line 760
    :try_start_7d
    invoke-static {v13, v11, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_80
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_7d .. :try_end_80} :catch_7a

    .line 761
    return-object v2

    .line 765
    :goto_81
    invoke-virtual {v0}, Lcom/android/internal/telephony/EncodeException;->getError()I

    move-result v4

    const-string v5, "Exceed size limitation EncodeException"

    if-ne v4, v6, :cond_8d

    .line 766
    invoke-static {v13, v5, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 767
    return-object v2

    .line 772
    :cond_8d
    :try_start_8d
    invoke-static {v1, v7}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B

    move-result-object v0
    :try_end_91
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_8d .. :try_end_91} :catch_1b9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8d .. :try_end_91} :catch_1b4

    .line 773
    nop

    .line 780
    move v4, v10

    .line 784
    :goto_93
    const-string v1, "Message too long ("

    const/16 v5, 0x8

    if-ne v4, v6, :cond_c4

    .line 785
    aget-byte v4, v0, v3

    and-int/lit16 v4, v4, 0xff

    const/16 v7, 0xa0

    if-le v4, v7, :cond_c0

    .line 787
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " septets)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    return-object v2

    .line 792
    :cond_c0
    invoke-virtual {v9, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_ee

    .line 794
    :cond_c4
    aget-byte v4, v0, v3

    and-int/lit16 v4, v4, 0xff

    const/16 v7, 0x8c

    if-le v4, v7, :cond_eb

    .line 796
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bytes)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    return-object v2

    .line 801
    :cond_eb
    invoke-virtual {v9, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 805
    :goto_ee
    const/4 v1, 0x7

    new-array v2, v1, [B

    .line 807
    invoke-static/range {p3 .. p4}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v4

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v4

    .line 808
    invoke-virtual {v4}, Ljava/time/ZonedDateTime;->toLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object v7

    .line 812
    invoke-virtual {v4}, Ljava/time/ZonedDateTime;->getOffset()Ljava/time/ZoneOffset;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v4

    div-int/lit8 v4, v4, 0x3c

    div-int/lit8 v4, v4, 0xf

    .line 813
    if-gez v4, :cond_111

    move v11, v6

    goto :goto_112

    :cond_111
    move v11, v3

    .line 814
    :goto_112
    if-eqz v11, :cond_115

    .line 815
    neg-int v4, v4

    .line 817
    :cond_115
    invoke-virtual {v7}, Ljava/time/LocalDateTime;->getYear()I

    move-result v13

    .line 818
    invoke-virtual {v7}, Ljava/time/LocalDateTime;->getMonthValue()I

    move-result v14

    .line 819
    invoke-virtual {v7}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result v15

    .line 820
    invoke-virtual {v7}, Ljava/time/LocalDateTime;->getHour()I

    move-result v16

    .line 821
    invoke-virtual {v7}, Ljava/time/LocalDateTime;->getMinute()I

    move-result v17

    .line 822
    invoke-virtual {v7}, Ljava/time/LocalDateTime;->getSecond()I

    move-result v7

    .line 824
    move/from16 p0, v5

    const/16 v5, 0x7d0

    if-le v13, v5, :cond_135

    sub-int/2addr v13, v5

    goto :goto_137

    :cond_135
    add-int/lit16 v13, v13, -0x76c

    .line 825
    :goto_137
    rem-int/lit8 v5, v13, 0xa

    and-int/lit8 v5, v5, 0xf

    const/16 v18, 0x4

    shl-int/lit8 v5, v5, 0x4

    div-int/lit8 v13, v13, 0xa

    and-int/lit8 v13, v13, 0xf

    or-int/2addr v5, v13

    int-to-byte v5, v5

    aput-byte v5, v2, v3

    .line 826
    rem-int/lit8 v5, v14, 0xa

    and-int/lit8 v5, v5, 0xf

    shl-int/lit8 v5, v5, 0x4

    div-int/lit8 v14, v14, 0xa

    and-int/lit8 v13, v14, 0xf

    or-int/2addr v5, v13

    int-to-byte v5, v5

    aput-byte v5, v2, v6

    .line 827
    rem-int/lit8 v5, v15, 0xa

    and-int/lit8 v5, v5, 0xf

    shl-int/lit8 v5, v5, 0x4

    div-int/lit8 v15, v15, 0xa

    and-int/lit8 v6, v15, 0xf

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v2, v12

    .line 828
    rem-int/lit8 v5, v16, 0xa

    and-int/lit8 v5, v5, 0xf

    shl-int/lit8 v5, v5, 0x4

    div-int/lit8 v16, v16, 0xa

    and-int/lit8 v6, v16, 0xf

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v2, v10

    .line 829
    rem-int/lit8 v5, v17, 0xa

    and-int/lit8 v5, v5, 0xf

    shl-int/lit8 v5, v5, 0x4

    div-int/lit8 v17, v17, 0xa

    and-int/lit8 v6, v17, 0xf

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v2, v18

    .line 830
    rem-int/lit8 v5, v7, 0xa

    and-int/lit8 v5, v5, 0xf

    shl-int/lit8 v5, v5, 0x4

    div-int/lit8 v7, v7, 0xa

    and-int/lit8 v6, v7, 0xf

    or-int/2addr v5, v6

    int-to-byte v5, v5

    const/4 v6, 0x5

    aput-byte v5, v2, v6

    .line 831
    rem-int/lit8 v5, v4, 0xa

    and-int/lit8 v5, v5, 0xf

    shl-int/lit8 v5, v5, 0x4

    div-int/lit8 v4, v4, 0xa

    and-int/lit8 v4, v4, 0xf

    or-int/2addr v4, v5

    int-to-byte v4, v4

    const/4 v5, 0x6

    aput-byte v4, v2, v5

    .line 832
    if-eqz v11, :cond_1a6

    .line 833
    aget-byte v4, v2, v3

    or-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 835
    :cond_1a6
    invoke-virtual {v9, v2, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 837
    array-length v1, v0

    invoke-virtual {v9, v0, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 838
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, v8, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    .line 839
    return-object v8

    .line 777
    :catch_1b4
    move-exception v0

    .line 778
    invoke-static {v13, v11, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 779
    return-object v2

    .line 774
    :catch_1b9
    move-exception v0

    .line 775
    invoke-static {v13, v5, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 776
    return-object v2

    .line 701
    :cond_1be
    :goto_1be
    return-object v2
.end method

.method public static blacklist getRelativeValidityPeriod(I)I
    .registers 3

    .line 216
    nop

    .line 218
    const/4 v0, 0x5

    if-lt p0, v0, :cond_29

    .line 219
    const/16 v1, 0x2d0

    if-gt p0, v1, :cond_c

    .line 220
    div-int/2addr p0, v0

    add-int/lit8 p0, p0, -0x1

    goto :goto_2a

    .line 221
    :cond_c
    const/16 v0, 0x5a0

    if-gt p0, v0, :cond_16

    .line 222
    sub-int/2addr p0, v1

    div-int/lit8 p0, p0, 0x1e

    add-int/lit16 p0, p0, 0x8f

    goto :goto_2a

    .line 223
    :cond_16
    const v1, 0xa8c0

    if-gt p0, v1, :cond_1f

    .line 224
    div-int/2addr p0, v0

    add-int/lit16 p0, p0, 0xa6

    goto :goto_2a

    .line 225
    :cond_1f
    const v0, 0x9b0a0

    if-gt p0, v0, :cond_29

    .line 226
    div-int/lit16 p0, p0, 0x2760

    add-int/lit16 p0, p0, 0xc0

    goto :goto_2a

    .line 229
    :cond_29
    const/4 p0, -0x1

    :goto_2a
    return p0
.end method

.method public static blacklist getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .registers 11

    .line 601
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZI)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZI)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .registers 13

    .line 543
    new-instance v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-direct {v0}, Lcom/android/internal/telephony/SmsHeader$PortAddrs;-><init>()V

    .line 544
    iput p2, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 545
    const/4 p2, 0x0

    iput p2, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    .line 546
    iput-boolean p2, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    .line 548
    new-instance v1, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v1}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 549
    iput-object v0, v1, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    .line 551
    invoke-static {v1}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v0

    .line 553
    array-length v1, p3

    array-length v2, v0

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x8c

    if-le v1, v2, :cond_44

    .line 554
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "SMS data message may only contain "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    array-length p1, v0

    sub-int/2addr v2, p1

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " bytes"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SmsMessage"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    const/4 p0, 0x0

    return-object p0

    .line 559
    :cond_44
    new-instance v5, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v5}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    .line 560
    const/16 v3, 0x41

    move-object v1, p0

    move-object v2, p1

    move v4, p4

    move v6, p5

    invoke-static/range {v1 .. v6}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;I)Ljava/io/ByteArrayOutputStream;

    move-result-object p0

    .line 565
    if-nez p0, :cond_56

    return-object v5

    .line 569
    :cond_56
    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 574
    array-length p1, p3

    array-length p4, v0

    add-int/2addr p1, p4

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 577
    array-length p1, v0

    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 578
    array-length p1, v0

    invoke-virtual {p0, v0, p2, p1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 581
    array-length p1, p3

    invoke-virtual {p0, p3, p2, p1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 583
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    iput-object p0, v5, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    .line 584
    return-object v5
.end method

.method public static greylist getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .registers 5

    .line 505
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-r getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .registers 15

    .line 523
    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v8, p4

    invoke-static/range {v0 .. v9}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object p0

    return-object p0
.end method

.method public static greylist getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .registers 13

    .line 248
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v7}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-r getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .registers 18

    .line 273
    const/4 v8, -0x1

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-static/range {v0 .. v9}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-r getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .registers 19

    .line 299
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-static/range {v0 .. v9}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .registers 27

    .line 327
    move-object/from16 v1, p2

    if-eqz v1, :cond_153

    if-nez p1, :cond_a

    const/16 v16, 0x0

    goto/16 :goto_155

    .line 331
    :cond_a
    const/4 v3, 0x1

    const-string v4, "SmsMessage"

    const/4 v5, 0x0

    if-nez p5, :cond_82

    .line 333
    invoke-static {v1, v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v0

    .line 334
    iget v6, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 335
    iget v7, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    .line 336
    iget v0, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    .line 338
    if-ne v6, v3, :cond_7f

    if-nez v7, :cond_20

    if-eqz v0, :cond_7f

    .line 340
    :cond_20
    if-eqz p4, :cond_71

    .line 341
    invoke-static/range {p4 .. p4}, Lcom/android/internal/telephony/SmsHeader;->fromByteArray([B)Lcom/android/internal/telephony/SmsHeader;

    move-result-object v8

    .line 342
    iget v9, v8, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    if-ne v9, v7, :cond_32

    iget v9, v8, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    if-eq v9, v0, :cond_2f

    goto :goto_32

    :cond_2f
    move-object/from16 v8, p4

    goto :goto_70

    .line 344
    :cond_32
    :goto_32
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Updating language table in SMS header: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v8, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " -> "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ", "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v11, v8, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iput v7, v8, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 348
    iput v0, v8, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 349
    invoke-static {v8}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v8

    .line 351
    :goto_70
    goto :goto_8a

    .line 352
    :cond_71
    new-instance v8, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v8}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 353
    iput v7, v8, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 354
    iput v0, v8, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 355
    invoke-static {v8}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v8

    goto :goto_8a

    .line 360
    :cond_7f
    move-object/from16 v8, p4

    goto :goto_8a

    .line 331
    :cond_82
    move-object/from16 v8, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v0, p7

    .line 360
    :goto_8a
    new-instance v13, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v13}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    .line 362
    invoke-static/range {p8 .. p8}, Lcom/android/internal/telephony/gsm/SmsMessage;->getRelativeValidityPeriod(I)I

    move-result v15

    .line 364
    nop

    .line 366
    if-eqz v8, :cond_9a

    .line 368
    const/16 v9, 0x41

    int-to-byte v9, v9

    goto :goto_9b

    .line 366
    :cond_9a
    move v9, v3

    .line 371
    :goto_9b
    const/4 v10, -0x1

    if-eq v15, v10, :cond_a3

    .line 373
    or-int/lit8 v9, v9, 0x10

    int-to-byte v9, v9

    move v11, v9

    goto :goto_a4

    .line 371
    :cond_a3
    move v11, v9

    .line 376
    :goto_a4
    move-object/from16 v9, p0

    move/from16 v12, p3

    move/from16 v14, p9

    move v2, v10

    const/16 v16, 0x0

    move-object/from16 v10, p1

    invoke-static/range {v9 .. v14}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;I)Ljava/io/ByteArrayOutputStream;

    move-result-object v9

    .line 382
    if-nez v9, :cond_b6

    return-object v13

    .line 387
    :cond_b6
    const-string v10, "Implausible UnsupportedEncodingException "

    if-ne v6, v3, :cond_bf

    .line 388
    :try_start_ba
    invoke-static {v1, v8, v7, v0}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B

    move-result-object v0
    :try_end_be
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_ba .. :try_end_be} :catch_c5

    goto :goto_c4

    .line 392
    :cond_bf
    :try_start_bf
    invoke-static {v1, v8}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B

    move-result-object v0
    :try_end_c3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_bf .. :try_end_c3} :catch_c7
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_bf .. :try_end_c3} :catch_c5

    .line 398
    nop

    .line 418
    :goto_c4
    goto :goto_de

    .line 400
    :catch_c5
    move-exception v0

    goto :goto_cc

    .line 393
    :catch_c7
    move-exception v0

    .line 394
    :try_start_c8
    invoke-static {v4, v10, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_cb
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_c8 .. :try_end_cb} :catch_c5

    .line 397
    return-object v16

    .line 401
    :goto_cc
    invoke-virtual {v0}, Lcom/android/internal/telephony/EncodeException;->getError()I

    move-result v6

    const-string v7, "Exceed size limitation EncodeException"

    if-ne v6, v3, :cond_d8

    .line 402
    invoke-static {v4, v7, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 403
    return-object v16

    .line 408
    :cond_d8
    :try_start_d8
    invoke-static {v1, v8}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B

    move-result-object v0
    :try_end_dc
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_d8 .. :try_end_dc} :catch_14e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_d8 .. :try_end_dc} :catch_149

    .line 409
    nop

    .line 416
    const/4 v6, 0x3

    .line 420
    :goto_de
    const-string v1, "Message too long ("

    if-ne v6, v3, :cond_10d

    .line 421
    aget-byte v3, v0, v5

    and-int/lit16 v3, v3, 0xff

    const/16 v6, 0xa0

    if-le v3, v6, :cond_109

    .line 423
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte v0, v0, v5

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " septets)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    return-object v16

    .line 434
    :cond_109
    invoke-virtual {v9, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_139

    .line 436
    :cond_10d
    aget-byte v3, v0, v5

    and-int/lit16 v3, v3, 0xff

    const/16 v6, 0x8c

    if-le v3, v6, :cond_134

    .line 438
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte v0, v0, v5

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bytes)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    return-object v16

    .line 443
    :cond_134
    const/16 v1, 0x8

    invoke-virtual {v9, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 447
    :goto_139
    if-eq v15, v2, :cond_13e

    .line 448
    invoke-virtual {v9, v15}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 451
    :cond_13e
    array-length v1, v0

    invoke-virtual {v9, v0, v5, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 452
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, v13, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    .line 453
    return-object v13

    .line 413
    :catch_149
    move-exception v0

    .line 414
    invoke-static {v4, v10, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 415
    return-object v16

    .line 410
    :catch_14e
    move-exception v0

    .line 411
    invoke-static {v4, v7, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 412
    return-object v16

    .line 327
    :cond_153
    const/16 v16, 0x0

    .line 328
    :goto_155
    return-object v16
.end method

.method private static greylist getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;
    .registers 11

    .line 623
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;I)Ljava/io/ByteArrayOutputStream;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;I)Ljava/io/ByteArrayOutputStream;
    .registers 8

    .line 645
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0xb4

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 649
    const/4 v1, 0x0

    if-nez p0, :cond_d

    .line 650
    iput-object v1, p4, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    goto :goto_13

    .line 652
    :cond_d
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object p0

    iput-object p0, p4, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    .line 657
    :goto_13
    if-eqz p3, :cond_18

    .line 659
    or-int/lit8 p0, p2, 0x20

    int-to-byte p2, p0

    .line 662
    :cond_18
    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 665
    invoke-virtual {v0, p5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 669
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object p0

    .line 672
    if-nez p0, :cond_25

    return-object v1

    .line 676
    :cond_25
    array-length p1, p0

    const/4 p2, 0x1

    sub-int/2addr p1, p2

    mul-int/lit8 p1, p1, 0x2

    .line 677
    array-length p3, p0

    sub-int/2addr p3, p2

    aget-byte p3, p0, p3

    const/16 p4, 0xf0

    and-int/2addr p3, p4

    const/4 p5, 0x0

    if-ne p3, p4, :cond_35

    goto :goto_36

    :cond_35
    move p2, p5

    :goto_36
    sub-int/2addr p1, p2

    .line 676
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 680
    array-length p1, p0

    invoke-virtual {v0, p0, p5, p1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 683
    invoke-virtual {v0, p5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 684
    return-object v0
.end method

.method public static blacklist getTPLayerLengthForPDU(Ljava/lang/String;)I
    .registers 4

    .line 190
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    div-int/2addr v0, v1

    .line 191
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x10

    invoke-static {p0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    .line 193
    sub-int/2addr v0, p0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private blacklist parsePdu([B)V
    .registers 4

    .line 1265
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mPdu:[B

    .line 1269
    new-instance v0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;-><init>([B)V

    .line 1271
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCAddress()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mScAddress:Ljava/lang/String;

    .line 1273
    iget-object p1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mScAddress:Ljava/lang/String;

    .line 1281
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result p1

    .line 1283
    and-int/lit8 v1, p1, 0x3

    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMti:I

    .line 1284
    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMti:I

    packed-switch v1, :pswitch_data_32

    .line 1300
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Unsupported message type"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1296
    :pswitch_24
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseSmsStatusReport(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V

    .line 1297
    goto :goto_30

    .line 1293
    :pswitch_28
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseSmsSubmit(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V

    .line 1294
    goto :goto_30

    .line 1290
    :pswitch_2c
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseSmsDeliver(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V

    .line 1291
    nop

    .line 1302
    :goto_30
    return-void

    nop

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_28
        :pswitch_24
        :pswitch_2c
    .end packed-switch
.end method

.method private blacklist parseSmsDeliver(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V
    .registers 8

    .line 1356
    and-int/lit16 v0, p2, 0x80

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x80

    if-ne v0, v3, :cond_a

    move v0, v1

    goto :goto_b

    :cond_a
    move v0, v2

    :goto_b
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mReplyPathPresent:Z

    .line 1358
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 1360
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 1367
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    .line 1371
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    .line 1379
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCTimestampMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mScTimeMillis:J

    .line 1383
    const/16 v0, 0x40

    and-int/2addr p2, v0

    if-ne p2, v0, :cond_2d

    goto :goto_2e

    :cond_2d
    move v1, v2

    .line 1385
    :goto_2e
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V

    .line 1386
    return-void
.end method

.method private blacklist parseSmsStatusReport(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V
    .registers 6

    .line 1311
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsStatusReportMessage:Z

    .line 1314
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageRef:I

    .line 1316
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mRecipientAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 1318
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCTimestampMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mScTimeMillis:J

    .line 1320
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCTimestampMillis()J

    .line 1322
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mStatus:I

    .line 1325
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->moreDataPresent()Z

    move-result v1

    if-eqz v1, :cond_58

    .line 1327
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v1

    .line 1328
    move v2, v1

    .line 1329
    :goto_29
    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_32

    .line 1333
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v2

    goto :goto_29

    .line 1337
    :cond_32
    and-int/lit8 v2, v1, 0x78

    if-nez v2, :cond_58

    .line 1339
    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_40

    .line 1340
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    .line 1343
    :cond_40
    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_4a

    .line 1344
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    .line 1347
    :cond_4a
    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_58

    .line 1348
    const/16 v1, 0x40

    and-int/2addr p2, v1

    if-ne p2, v1, :cond_54

    goto :goto_55

    :cond_54
    const/4 v0, 0x0

    .line 1349
    :goto_55
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V

    .line 1353
    :cond_58
    return-void
.end method

.method private blacklist parseSmsSubmit(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V
    .registers 7

    .line 1395
    and-int/lit16 v0, p2, 0x80

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x80

    if-ne v0, v3, :cond_a

    move v0, v1

    goto :goto_b

    :cond_a
    move v0, v2

    :goto_b
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mReplyPathPresent:Z

    .line 1398
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageRef:I

    .line 1400
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mRecipientAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 1402
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mRecipientAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 1408
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    .line 1412
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    .line 1420
    nop

    .line 1421
    shr-int/lit8 v0, p2, 0x3

    and-int/lit8 v0, v0, 0x3

    .line 1422
    if-nez v0, :cond_30

    .line 1423
    move v0, v2

    goto :goto_36

    .line 1424
    :cond_30
    const/4 v3, 0x2

    if-ne v0, v3, :cond_35

    .line 1425
    move v0, v1

    goto :goto_36

    .line 1427
    :cond_35
    const/4 v0, 0x7

    .line 1431
    :goto_36
    add-int/lit8 v3, v0, -0x1

    if-lez v0, :cond_3f

    .line 1432
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move v0, v3

    goto :goto_36

    .line 1435
    :cond_3f
    const/16 v0, 0x40

    and-int/2addr p2, v0

    if-ne p2, v0, :cond_45

    goto :goto_46

    :cond_45
    move v1, v2

    .line 1437
    :goto_46
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V

    .line 1438
    return-void
.end method

.method private blacklist parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V
    .registers 22

    .line 1448
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 1449
    nop

    .line 1451
    nop

    .line 1453
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    .line 1455
    iget v4, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    const/16 v5, 0x80

    and-int/2addr v4, v5

    const-string v6, " Dont store = "

    const v7, 0x1110275

    const/16 v8, 0xd0

    const/16 v10, 0xe0

    const-string v12, "SmsMessage"

    const/16 v13, 0xf0

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-nez v4, :cond_9e

    .line 1456
    iget v4, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_2a

    move v4, v14

    goto :goto_2b

    :cond_2a
    move v4, v15

    .line 1457
    :goto_2b
    const/16 v16, 0x2

    iget v9, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit8 v9, v9, 0x10

    if-eqz v9, :cond_35

    move v9, v14

    goto :goto_36

    :cond_35
    move v9, v15

    .line 1459
    :goto_36
    if-eqz v4, :cond_58

    .line 1460
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v17, 0x3

    const-string v11, "4 - Unsupported SMS data coding scheme (compression) "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v11, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v11, v11, 0xff

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v9

    move v9, v15

    goto/16 :goto_18f

    .line 1463
    :cond_58
    const/16 v17, 0x3

    iget v4, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    shr-int/lit8 v4, v4, 0x2

    and-int/lit8 v4, v4, 0x3

    packed-switch v4, :pswitch_data_2d0

    move/from16 v16, v15

    goto :goto_99

    .line 1469
    :pswitch_66
    nop

    .line 1470
    move/from16 v16, v17

    goto :goto_99

    .line 1475
    :pswitch_6a
    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_72

    .line 1477
    nop

    .line 1478
    goto :goto_99

    .line 1482
    :cond_72
    :pswitch_72
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "1 - Unsupported SMS data coding scheme "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v11, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v11, v11, 0xff

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1484
    const v4, 0x10e0196

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    move/from16 v16, v4

    goto :goto_99

    .line 1465
    :pswitch_96
    nop

    .line 1466
    move/from16 v16, v14

    .line 1486
    :goto_99
    move v4, v9

    move/from16 v9, v16

    goto/16 :goto_18f

    .line 1489
    :cond_9e
    const/16 v16, 0x2

    const/16 v17, 0x3

    iget v4, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/2addr v4, v13

    const/4 v9, 0x4

    if-ne v4, v13, :cond_b8

    .line 1490
    nop

    .line 1491
    nop

    .line 1493
    iget v4, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/2addr v4, v9

    if-nez v4, :cond_b3

    .line 1495
    move v4, v14

    move v9, v4

    goto/16 :goto_18f

    .line 1498
    :cond_b3
    move v4, v14

    move/from16 v9, v16

    goto/16 :goto_18f

    .line 1500
    :cond_b8
    iget v4, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/2addr v4, v13

    const/16 v11, 0xc0

    if-eq v4, v11, :cond_111

    iget v4, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/2addr v4, v13

    if-eq v4, v8, :cond_111

    iget v4, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/2addr v4, v13

    if-ne v4, v10, :cond_ca

    goto :goto_111

    .line 1541
    :cond_ca
    iget v4, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/2addr v4, v11

    if-ne v4, v5, :cond_f3

    .line 1544
    iget v4, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    const/16 v11, 0x84

    if-ne v4, v11, :cond_d8

    .line 1546
    move v4, v15

    goto/16 :goto_18f

    .line 1548
    :cond_d8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "5 - Unsupported SMS data coding scheme "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v9, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v9, v9, 0xff

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10d

    .line 1552
    :cond_f3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "3 - Unsupported SMS data coding scheme "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v9, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v9, v9, 0xff

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1557
    :goto_10d
    move v4, v15

    move v9, v4

    goto/16 :goto_18f

    .line 1509
    :cond_111
    :goto_111
    iget v4, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/2addr v4, v13

    if-ne v4, v10, :cond_119

    .line 1510
    move/from16 v9, v17

    goto :goto_11a

    .line 1512
    :cond_119
    move v9, v14

    .line 1515
    :goto_11a
    nop

    .line 1516
    iget v4, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    const/16 v7, 0x8

    and-int/2addr v4, v7

    if-ne v4, v7, :cond_124

    move v4, v14

    goto :goto_125

    :cond_124
    move v4, v15

    .line 1520
    :goto_125
    iget v7, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit8 v7, v7, 0x3

    if-nez v7, :cond_172

    .line 1521
    iput-boolean v14, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsMwi:Z

    .line 1522
    iput-boolean v4, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiSense:Z

    .line 1523
    iget v7, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/2addr v7, v13

    if-ne v7, v11, :cond_136

    move v7, v14

    goto :goto_137

    :cond_136
    move v7, v15

    :goto_137
    iput-boolean v7, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiDontStore:Z

    .line 1526
    if-ne v4, v14, :cond_13f

    .line 1527
    const/4 v4, -0x1

    iput v4, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    goto :goto_141

    .line 1529
    :cond_13f
    iput v15, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    .line 1532
    :goto_141
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MWI in DCS for Vmail. DCS = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v7, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v7, v7, 0xff

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v7, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiDontStore:Z

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " vmail count = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v7, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18e

    .line 1537
    :cond_172
    iput-boolean v15, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsMwi:Z

    .line 1538
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MWI in DCS for fax/email/other: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v7, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v7, v7, 0xff

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1541
    :goto_18e
    move v4, v15

    .line 1557
    :goto_18f
    if-ne v9, v14, :cond_193

    move v7, v14

    goto :goto_194

    :cond_193
    move v7, v15

    :goto_194
    invoke-virtual {v1, v2, v7}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->constructUserData(ZZ)I

    move-result v7

    .line 1559
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserData()[B

    move-result-object v11

    iput-object v11, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mUserData:[B

    .line 1560
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v11

    iput-object v11, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 1561
    iput v9, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mReceivedEncodingType:I

    .line 1571
    if-eqz v2, :cond_263

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget-object v11, v11, Lcom/android/internal/telephony/SmsHeader;->specialSmsMsgList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-eqz v11, :cond_263

    .line 1572
    iget-object v11, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget-object v11, v11, Lcom/android/internal/telephony/SmsHeader;->specialSmsMsgList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1ba
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_261

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v10, v18

    check-cast v10, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;

    .line 1573
    iget v8, v10, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;->msgIndType:I

    and-int/lit16 v8, v8, 0xff

    .line 1580
    if-eqz v8, :cond_1eb

    if-ne v8, v5, :cond_1d1

    goto :goto_1eb

    .line 1626
    :cond_1d1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "TP_UDH fax/email/extended msg/multisubscriber profile. Msg Ind = "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v12, v8}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v10, v15

    const/16 v15, 0xd0

    goto :goto_257

    .line 1581
    :cond_1eb
    :goto_1eb
    iput-boolean v14, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsMwi:Z

    .line 1582
    if-ne v8, v5, :cond_1f6

    .line 1584
    iput-boolean v15, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiDontStore:Z

    const/16 v5, 0xe0

    const/16 v15, 0xd0

    goto :goto_21a

    .line 1585
    :cond_1f6
    iget-boolean v13, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiDontStore:Z

    if-nez v13, :cond_216

    .line 1593
    iget v13, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    const/16 v5, 0xf0

    and-int/2addr v13, v5

    const/16 v15, 0xd0

    if-eq v13, v15, :cond_20b

    iget v13, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/2addr v13, v5

    const/16 v5, 0xe0

    if-ne v13, v5, :cond_213

    goto :goto_20d

    :cond_20b
    const/16 v5, 0xe0

    :goto_20d
    iget v13, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit8 v13, v13, 0x3

    if-eqz v13, :cond_21a

    .line 1599
    :cond_213
    iput-boolean v14, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiDontStore:Z

    goto :goto_21a

    .line 1585
    :cond_216
    const/16 v5, 0xe0

    const/16 v15, 0xd0

    .line 1603
    :cond_21a
    :goto_21a
    iget v10, v10, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;->msgCount:I

    and-int/lit16 v10, v10, 0xff

    iput v10, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    .line 1611
    iget v10, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    if-lez v10, :cond_228

    .line 1612
    iput-boolean v14, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiSense:Z

    const/4 v10, 0x0

    goto :goto_22b

    .line 1614
    :cond_228
    const/4 v10, 0x0

    iput-boolean v10, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiSense:Z

    .line 1616
    :goto_22b
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MWI in TP-UDH for Vmail. Msg Ind = "

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v8, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiDontStore:Z

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " Vmail count = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v8, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v12, v5}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1629
    :goto_257
    move v8, v15

    const/16 v5, 0x80

    const/16 v13, 0xf0

    move v15, v10

    const/16 v10, 0xe0

    goto/16 :goto_1ba

    .line 1572
    :cond_261
    move v10, v15

    goto :goto_264

    .line 1571
    :cond_263
    move v10, v15

    .line 1632
    :goto_264
    const/4 v5, 0x0

    packed-switch v9, :pswitch_data_2dc

    goto :goto_2a5

    .line 1659
    :pswitch_269
    invoke-virtual {v1, v7}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataKSC5601(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageBody:Ljava/lang/String;

    goto :goto_2a5

    .line 1655
    :pswitch_270
    invoke-virtual {v1, v7}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataUCS2(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageBody:Ljava/lang/String;

    .line 1656
    goto :goto_2a5

    .line 1640
    :pswitch_277
    const v2, 0x1110275

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_287

    .line 1642
    invoke-virtual {v1, v7}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataGSM8bit(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageBody:Ljava/lang/String;

    goto :goto_2a5

    .line 1644
    :cond_287
    iput-object v5, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageBody:Ljava/lang/String;

    .line 1646
    goto :goto_2a5

    .line 1649
    :pswitch_28a
    nop

    .line 1650
    if-eqz v2, :cond_292

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget v3, v3, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    goto :goto_293

    :cond_292
    move v3, v10

    .line 1651
    :goto_293
    if-eqz v2, :cond_29a

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget v15, v2, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    goto :goto_29b

    :cond_29a
    move v15, v10

    .line 1649
    :goto_29b
    invoke-virtual {v1, v7, v3, v15}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataGSM7Bit(III)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageBody:Ljava/lang/String;

    .line 1652
    goto :goto_2a5

    .line 1634
    :pswitch_2a2
    iput-object v5, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageBody:Ljava/lang/String;

    .line 1635
    nop

    .line 1665
    :goto_2a5
    iget-object v1, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageBody:Ljava/lang/String;

    if-eqz v1, :cond_2ac

    .line 1666
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseMessageBody()V

    .line 1669
    :cond_2ac
    if-nez v4, :cond_2b3

    .line 1670
    sget-object v1, Lcom/android/internal/telephony/SmsConstants$MessageClass;->UNKNOWN:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    goto :goto_2cf

    .line 1672
    :cond_2b3
    iget v1, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit8 v1, v1, 0x3

    packed-switch v1, :pswitch_data_2ea

    goto :goto_2cf

    .line 1683
    :pswitch_2bb
    sget-object v1, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_3:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    goto :goto_2cf

    .line 1680
    :pswitch_2c0
    sget-object v1, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_2:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    .line 1681
    goto :goto_2cf

    .line 1677
    :pswitch_2c5
    sget-object v1, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_1:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    .line 1678
    goto :goto_2cf

    .line 1674
    :pswitch_2ca
    sget-object v1, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_0:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    .line 1675
    nop

    .line 1687
    :goto_2cf
    return-void

    :pswitch_data_2d0
    .packed-switch 0x0
        :pswitch_96
        :pswitch_6a
        :pswitch_66
        :pswitch_72
    .end packed-switch

    :pswitch_data_2dc
    .packed-switch 0x0
        :pswitch_2a2
        :pswitch_28a
        :pswitch_277
        :pswitch_270
        :pswitch_269
    .end packed-switch

    :pswitch_data_2ea
    .packed-switch 0x0
        :pswitch_2ca
        :pswitch_2c5
        :pswitch_2c0
        :pswitch_2bb
    .end packed-switch
.end method


# virtual methods
.method blacklist getDataCodingScheme()I
    .registers 2

    .line 1174
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    return v0
.end method

.method public blacklist getMessageClass()Lcom/android/internal/telephony/SmsConstants$MessageClass;
    .registers 2

    .line 1694
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    return-object v0
.end method

.method public blacklist getNumOfVoicemails()I
    .registers 3

    .line 1719
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsMwi:Z

    if-nez v0, :cond_27

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->isCphsMwiMessage()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1720
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    .line 1721
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageSet()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1722
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    goto :goto_20

    .line 1724
    :cond_1d
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    .line 1726
    :goto_20
    const-string v0, "SmsMessage"

    const-string v1, "CPHS voice mail message"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1728
    :cond_27
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    return v0
.end method

.method public blacklist getProtocolIdentifier()I
    .registers 2

    .line 1166
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    return v0
.end method

.method public greylist-max-r getStatus()I
    .registers 2

    .line 1240
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mStatus:I

    return v0
.end method

.method public blacklist isCphsMwiMessage()Z
    .registers 2

    .line 1188
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageClear()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    .line 1189
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageSet()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    .line 1188
    :goto_18
    return v0
.end method

.method public greylist isMWIClearMessage()Z
    .registers 3

    .line 1196
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsMwi:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiSense:Z

    if-nez v0, :cond_a

    .line 1197
    return v1

    .line 1200
    :cond_a
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    .line 1201
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageClear()Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    .line 1200
    :goto_1a
    return v1
.end method

.method public greylist isMWISetMessage()Z
    .registers 3

    .line 1208
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsMwi:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiSense:Z

    if-eqz v0, :cond_a

    .line 1209
    return v1

    .line 1212
    :cond_a
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    .line 1213
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageSet()Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    .line 1212
    :goto_1a
    return v1
.end method

.method public greylist isMwiDontStore()Z
    .registers 4

    .line 1220
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsMwi:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiDontStore:Z

    if-eqz v0, :cond_a

    .line 1221
    return v1

    .line 1224
    :cond_a
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->isCphsMwiMessage()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1228
    const-string v0, " "

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1229
    return v1

    .line 1233
    :cond_1d
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isReplace()Z
    .registers 3

    .line 1180
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    and-int/lit16 v0, v0, 0xc0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_18

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    and-int/lit8 v0, v0, 0x3f

    if-lez v0, :cond_18

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    and-int/lit8 v0, v0, 0x3f

    const/16 v1, 0x8

    if-ge v0, v1, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method

.method public blacklist isReplyPathPresent()Z
    .registers 2

    .line 1253
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mReplyPathPresent:Z

    return v0
.end method

.method public greylist-max-r isStatusReportMessage()Z
    .registers 2

    .line 1247
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsStatusReportMessage:Z

    return v0
.end method

.method public blacklist isTypeZero()Z
    .registers 3

    .line 140
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    const/16 v1, 0x40

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method blacklist isUsimDataDownload()Z
    .registers 3

    .line 1704
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    sget-object v1, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_2:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    if-ne v0, v1, :cond_14

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    const/16 v1, 0x7f

    if-eq v0, v1, :cond_12

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    const/16 v1, 0x7c

    if-ne v0, v1, :cond_14

    :cond_12
    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method
