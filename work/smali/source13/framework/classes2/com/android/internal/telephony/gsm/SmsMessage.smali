.class public Lcom/android/internal/telephony/gsm/SmsMessage;
.super Lcom/android/internal/telephony/SmsMessageBase;
.source "SmsMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;,
        Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
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
    .registers 6
    .param p0, "msgBody"    # Ljava/lang/CharSequence;
    .param p1, "use7bitOnly"    # Z

    .line 1082
    const/4 v0, 0x0

    .line 1083
    .local v0, "newMsgBody":Ljava/lang/CharSequence;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 1084
    .local v1, "r":Landroid/content/res/Resources;
    const v2, 0x11101b8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1085
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->translate(Ljava/lang/CharSequence;Z)Ljava/lang/String;

    move-result-object v0

    .line 1087
    :cond_13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1088
    move-object v0, p0

    .line 1090
    :cond_1a
    invoke-static {v0, p1}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v2

    .line 1091
    .local v2, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    if-nez v2, :cond_25

    .line 1092
    invoke-static {v0}, Lcom/android/internal/telephony/SmsMessageBase;->calcUnicodeEncodingDetails(Ljava/lang/CharSequence;)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v3

    return-object v3

    .line 1094
    :cond_25
    return-object v2
.end method

.method public static greylist-max-q createFromEfRecord(I[B)Lcom/android/internal/telephony/gsm/SmsMessage;
    .registers 9
    .param p0, "index"    # I
    .param p1, "data"    # [B

    .line 156
    const-string v0, "SmsMessage"

    const/4 v1, 0x0

    :try_start_3
    new-instance v2, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v2}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    .line 158
    .local v2, "msg":Lcom/android/internal/telephony/gsm/SmsMessage;
    iput p0, v2, Lcom/android/internal/telephony/gsm/SmsMessage;->mIndexOnIcc:I

    .line 163
    const/4 v3, 0x0

    aget-byte v4, p1, v3

    const/4 v5, 0x1

    and-int/2addr v4, v5

    if-nez v4, :cond_17

    .line 164
    const-string v3, "SMS parsing failed: Trying to parse a free record"

    invoke-static {v0, v3}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    return-object v1

    .line 168
    :cond_17
    aget-byte v4, p1, v3

    and-int/lit8 v4, v4, 0x7

    iput v4, v2, Lcom/android/internal/telephony/gsm/SmsMessage;->mStatusOnIcc:I

    .line 171
    array-length v4, p1

    sub-int/2addr v4, v5

    .line 175
    .local v4, "size":I
    new-array v6, v4, [B

    .line 176
    .local v6, "pdu":[B
    invoke-static {p1, v5, v6, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 177
    invoke-direct {v2, v6}, Lcom/android/internal/telephony/gsm/SmsMessage;->parsePdu([B)V
    :try_end_27
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_27} :catch_28

    .line 178
    return-object v2

    .line 179
    .end local v2    # "msg":Lcom/android/internal/telephony/gsm/SmsMessage;
    .end local v4    # "size":I
    .end local v6    # "pdu":[B
    :catch_28
    move-exception v2

    .line 180
    .local v2, "ex":Ljava/lang/RuntimeException;
    const-string v3, "SMS PDU parsing failed: "

    invoke-static {v0, v3, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 181
    return-object v1
.end method

.method public static greylist createFromPdu([B)Lcom/android/internal/telephony/gsm/SmsMessage;
    .registers 5
    .param p0, "pdu"    # [B

    .line 123
    const-string v0, "SmsMessage"

    const/4 v1, 0x0

    :try_start_3
    new-instance v2, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v2}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    .line 124
    .local v2, "msg":Lcom/android/internal/telephony/gsm/SmsMessage;
    invoke-direct {v2, p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parsePdu([B)V
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_b} :catch_13
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_b} :catch_c

    .line 125
    return-object v2

    .line 129
    .end local v2    # "msg":Lcom/android/internal/telephony/gsm/SmsMessage;
    :catch_c
    move-exception v2

    .line 130
    .local v2, "e":Ljava/lang/OutOfMemoryError;
    const-string v3, "SMS PDU parsing failed with out of memory: "

    invoke-static {v0, v3, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 131
    return-object v1

    .line 126
    .end local v2    # "e":Ljava/lang/OutOfMemoryError;
    :catch_13
    move-exception v2

    .line 127
    .local v2, "ex":Ljava/lang/RuntimeException;
    const-string v3, "SMS PDU parsing failed: "

    invoke-static {v0, v3, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 128
    return-object v1
.end method

.method private static greylist encodeUCS2(Ljava/lang/String;[B)[B
    .registers 9
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "header"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .line 442
    const-string v0, "utf-16be"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 444
    .local v0, "textPart":[B
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_1f

    .line 446
    array-length v3, p1

    array-length v4, v0

    add-int/2addr v3, v4

    add-int/2addr v3, v2

    new-array v3, v3, [B

    .line 448
    .local v3, "userData":[B
    array-length v4, p1

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 449
    array-length v4, p1

    invoke-static {p1, v1, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 450
    array-length v4, p1

    add-int/2addr v4, v2

    array-length v5, v0

    invoke-static {v0, v1, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_20

    .line 453
    .end local v3    # "userData":[B
    :cond_1f
    move-object v3, v0

    .line 455
    .restart local v3    # "userData":[B
    :goto_20
    array-length v4, v3

    const/16 v5, 0xff

    if-gt v4, v5, :cond_33

    .line 459
    array-length v4, v3

    add-int/2addr v4, v2

    new-array v4, v4, [B

    .line 460
    .local v4, "ret":[B
    array-length v6, v3

    and-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    .line 461
    array-length v5, v3

    invoke-static {v3, v1, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 462
    return-object v4

    .line 456
    .end local v4    # "ret":[B
    :cond_33
    new-instance v1, Lcom/android/internal/telephony/EncodeException;

    const-string v4, "Payload cannot exceed 255 bytes"

    invoke-direct {v1, v4, v2}, Lcom/android/internal/telephony/EncodeException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public static blacklist getDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .registers 32
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "originatingAddress"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "date"    # J

    .line 634
    move-object/from16 v1, p2

    const/4 v2, 0x0

    if-eqz p1, :cond_1e0

    if-nez v1, :cond_9

    goto/16 :goto_1e0

    .line 639
    :cond_9
    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v4

    .line 640
    .local v4, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    iget v5, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 641
    .local v5, "encoding":I
    iget v6, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    .line 642
    .local v6, "languageTable":I
    iget v7, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    .line 643
    .local v7, "languageShiftTable":I
    const/4 v0, 0x0

    .line 645
    .local v0, "header":[B
    const/4 v8, 0x1

    if-ne v5, v8, :cond_2b

    if-nez v6, :cond_1c

    if-eqz v7, :cond_2b

    .line 646
    :cond_1c
    new-instance v9, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v9}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 647
    .local v9, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    iput v6, v9, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 648
    iput v7, v9, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 649
    invoke-static {v9}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v0

    move-object v9, v0

    goto :goto_2c

    .line 652
    .end local v9    # "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    :cond_2b
    move-object v9, v0

    .end local v0    # "header":[B
    .local v9, "header":[B
    :goto_2c
    new-instance v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    move-object v10, v0

    .line 654
    .local v10, "ret":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v11, 0xb4

    invoke-direct {v0, v11}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    move-object v11, v0

    .line 657
    .local v11, "bo":Ljava/io/ByteArrayOutputStream;
    if-nez p0, :cond_3f

    .line 658
    iput-object v2, v10, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    goto :goto_46

    .line 660
    :cond_3f
    nop

    .line 661
    invoke-static/range {p0 .. p0}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, v10, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    .line 665
    :goto_46
    invoke-virtual {v11, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 669
    invoke-static/range {p1 .. p1}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v12

    .line 672
    .local v12, "oaBytes":[B
    if-nez v12, :cond_50

    return-object v2

    .line 676
    :cond_50
    array-length v0, v12

    sub-int/2addr v0, v8

    const/4 v13, 0x2

    mul-int/2addr v0, v13

    array-length v14, v12

    sub-int/2addr v14, v8

    aget-byte v14, v12, v14

    const/16 v15, 0xf0

    and-int/2addr v14, v15

    if-ne v14, v15, :cond_5f

    move v14, v8

    goto :goto_60

    :cond_5f
    move v14, v3

    :goto_60
    sub-int/2addr v0, v14

    invoke-virtual {v11, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 679
    array-length v0, v12

    invoke-virtual {v11, v12, v3, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 682
    invoke-virtual {v11, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 687
    const-string v14, "Implausible UnsupportedEncodingException "

    const-string v15, "SmsMessage"

    if-ne v5, v8, :cond_76

    .line 688
    :try_start_71
    invoke-static {v1, v9, v6, v7}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B

    move-result-object v0
    :try_end_75
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_71 .. :try_end_75} :catch_7c

    .local v0, "userData":[B
    goto :goto_7b

    .line 692
    .end local v0    # "userData":[B
    :cond_76
    :try_start_76
    invoke-static {v1, v9}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B

    move-result-object v0
    :try_end_7a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_76 .. :try_end_7a} :catch_7e
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_76 .. :try_end_7a} :catch_7c

    .line 696
    .restart local v0    # "userData":[B
    nop

    .line 716
    :goto_7b
    goto :goto_9d

    .line 698
    .end local v0    # "userData":[B
    :catch_7c
    move-exception v0

    goto :goto_87

    .line 693
    :catch_7e
    move-exception v0

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    .line 694
    .local v0, "uex":Ljava/io/UnsupportedEncodingException;
    :try_start_83
    invoke-static {v15, v14, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_86
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_83 .. :try_end_86} :catch_7c

    .line 695
    return-object v2

    .line 698
    .end local v0    # "uex":Ljava/io/UnsupportedEncodingException;
    :goto_87
    move-object/from16 v16, v0

    .line 699
    .local v16, "ex":Lcom/android/internal/telephony/EncodeException;
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/EncodeException;->getError()I

    move-result v0

    const-string v13, "Exceed size limitation EncodeException"

    if-ne v0, v8, :cond_97

    .line 700
    move-object/from16 v3, v16

    .end local v16    # "ex":Lcom/android/internal/telephony/EncodeException;
    .local v3, "ex":Lcom/android/internal/telephony/EncodeException;
    invoke-static {v15, v13, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 701
    return-object v2

    .line 706
    .end local v3    # "ex":Lcom/android/internal/telephony/EncodeException;
    .restart local v16    # "ex":Lcom/android/internal/telephony/EncodeException;
    :cond_97
    :try_start_97
    invoke-static {v1, v9}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B

    move-result-object v0
    :try_end_9b
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_97 .. :try_end_9b} :catch_1d9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_97 .. :try_end_9b} :catch_1d2

    .line 707
    .local v0, "userData":[B
    const/4 v5, 0x3

    .line 714
    nop

    .line 718
    .end local v16    # "ex":Lcom/android/internal/telephony/EncodeException;
    :goto_9d
    const-string v13, "Message too long ("

    if-ne v5, v8, :cond_cc

    .line 719
    aget-byte v8, v0, v3

    and-int/lit16 v8, v8, 0xff

    const/16 v14, 0xa0

    if-le v8, v14, :cond_c8

    .line 721
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " septets)"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    return-object v2

    .line 726
    :cond_c8
    invoke-virtual {v11, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_f8

    .line 728
    :cond_cc
    aget-byte v8, v0, v3

    and-int/lit16 v8, v8, 0xff

    const/16 v14, 0x8c

    if-le v8, v14, :cond_f3

    .line 730
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " bytes)"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    return-object v2

    .line 735
    :cond_f3
    const/16 v2, 0x8

    invoke-virtual {v11, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 739
    :goto_f8
    const/4 v2, 0x7

    new-array v2, v2, [B

    .line 741
    .local v2, "scts":[B
    invoke-static/range {p3 .. p4}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v8

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v8

    .line 742
    .local v8, "zoneDateTime":Ljava/time/ZonedDateTime;
    invoke-virtual {v8}, Ljava/time/ZonedDateTime;->toLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object v13

    .line 746
    .local v13, "localDateTime":Ljava/time/LocalDateTime;
    invoke-virtual {v8}, Ljava/time/ZonedDateTime;->getOffset()Ljava/time/ZoneOffset;

    move-result-object v14

    invoke-virtual {v14}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v14

    div-int/lit8 v14, v14, 0x3c

    div-int/lit8 v14, v14, 0xf

    .line 747
    .local v14, "timezoneOffset":I
    if-gez v14, :cond_11b

    const/4 v15, 0x1

    goto :goto_11c

    :cond_11b
    move v15, v3

    .line 748
    .local v15, "negativeOffset":Z
    :goto_11c
    if-eqz v15, :cond_11f

    .line 749
    neg-int v14, v14

    .line 751
    :cond_11f
    invoke-virtual {v13}, Ljava/time/LocalDateTime;->getYear()I

    move-result v3

    .line 752
    .local v3, "year":I
    invoke-virtual {v13}, Ljava/time/LocalDateTime;->getMonthValue()I

    move-result v20

    .line 753
    .local v20, "month":I
    invoke-virtual {v13}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result v21

    .line 754
    .local v21, "day":I
    invoke-virtual {v13}, Ljava/time/LocalDateTime;->getHour()I

    move-result v22

    .line 755
    .local v22, "hour":I
    invoke-virtual {v13}, Ljava/time/LocalDateTime;->getMinute()I

    move-result v23

    .line 756
    .local v23, "minute":I
    invoke-virtual {v13}, Ljava/time/LocalDateTime;->getSecond()I

    move-result v24

    .line 758
    .local v24, "second":I
    const/16 v1, 0x7d0

    if-le v3, v1, :cond_13e

    add-int/lit16 v1, v3, -0x7d0

    goto :goto_140

    :cond_13e
    add-int/lit16 v1, v3, -0x76c

    .line 759
    .end local v3    # "year":I
    .local v1, "year":I
    :goto_140
    rem-int/lit8 v3, v1, 0xa

    and-int/lit8 v3, v3, 0xf

    const/16 v25, 0x4

    shl-int/lit8 v3, v3, 0x4

    div-int/lit8 v26, v1, 0xa

    and-int/lit8 v26, v26, 0xf

    or-int v3, v3, v26

    int-to-byte v3, v3

    const/16 v19, 0x0

    aput-byte v3, v2, v19

    .line 760
    rem-int/lit8 v3, v20, 0xa

    and-int/lit8 v3, v3, 0xf

    shl-int/lit8 v3, v3, 0x4

    div-int/lit8 v26, v20, 0xa

    and-int/lit8 v26, v26, 0xf

    or-int v3, v3, v26

    int-to-byte v3, v3

    const/16 v18, 0x1

    aput-byte v3, v2, v18

    .line 761
    rem-int/lit8 v3, v21, 0xa

    and-int/lit8 v3, v3, 0xf

    shl-int/lit8 v3, v3, 0x4

    div-int/lit8 v18, v21, 0xa

    and-int/lit8 v18, v18, 0xf

    or-int v3, v3, v18

    int-to-byte v3, v3

    const/16 v17, 0x2

    aput-byte v3, v2, v17

    .line 762
    const/4 v3, 0x3

    rem-int/lit8 v17, v22, 0xa

    and-int/lit8 v17, v17, 0xf

    shl-int/lit8 v17, v17, 0x4

    div-int/lit8 v18, v22, 0xa

    and-int/lit8 v18, v18, 0xf

    move/from16 v26, v1

    .end local v1    # "year":I
    .local v26, "year":I
    or-int v1, v17, v18

    int-to-byte v1, v1

    aput-byte v1, v2, v3

    .line 763
    rem-int/lit8 v1, v23, 0xa

    and-int/lit8 v1, v1, 0xf

    shl-int/lit8 v1, v1, 0x4

    div-int/lit8 v3, v23, 0xa

    and-int/lit8 v3, v3, 0xf

    or-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, v2, v25

    .line 764
    const/4 v1, 0x5

    rem-int/lit8 v3, v24, 0xa

    and-int/lit8 v3, v3, 0xf

    shl-int/lit8 v3, v3, 0x4

    div-int/lit8 v17, v24, 0xa

    and-int/lit8 v17, v17, 0xf

    or-int v3, v3, v17

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 765
    const/4 v1, 0x6

    rem-int/lit8 v3, v14, 0xa

    and-int/lit8 v3, v3, 0xf

    shl-int/lit8 v3, v3, 0x4

    div-int/lit8 v17, v14, 0xa

    and-int/lit8 v17, v17, 0xf

    or-int v3, v3, v17

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 766
    if-eqz v15, :cond_1c2

    .line 767
    const/4 v1, 0x0

    aget-byte v3, v2, v1

    const/16 v16, 0x8

    or-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    goto :goto_1c3

    .line 766
    :cond_1c2
    const/4 v1, 0x0

    .line 769
    :goto_1c3
    array-length v3, v2

    invoke-virtual {v11, v2, v1, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 771
    array-length v3, v0

    invoke-virtual {v11, v0, v1, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 772
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, v10, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    .line 773
    return-object v10

    .line 711
    .end local v0    # "userData":[B
    .end local v2    # "scts":[B
    .end local v8    # "zoneDateTime":Ljava/time/ZonedDateTime;
    .end local v13    # "localDateTime":Ljava/time/LocalDateTime;
    .end local v14    # "timezoneOffset":I
    .end local v15    # "negativeOffset":Z
    .end local v20    # "month":I
    .end local v21    # "day":I
    .end local v22    # "hour":I
    .end local v23    # "minute":I
    .end local v24    # "second":I
    .end local v26    # "year":I
    .restart local v16    # "ex":Lcom/android/internal/telephony/EncodeException;
    :catch_1d2
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 712
    .local v0, "uex":Ljava/io/UnsupportedEncodingException;
    invoke-static {v15, v14, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 713
    return-object v2

    .line 708
    .end local v0    # "uex":Ljava/io/UnsupportedEncodingException;
    :catch_1d9
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 709
    .local v0, "ex1":Lcom/android/internal/telephony/EncodeException;
    invoke-static {v15, v13, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 710
    return-object v2

    .line 635
    .end local v0    # "ex1":Lcom/android/internal/telephony/EncodeException;
    .end local v4    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .end local v5    # "encoding":I
    .end local v6    # "languageTable":I
    .end local v7    # "languageShiftTable":I
    .end local v9    # "header":[B
    .end local v10    # "ret":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .end local v11    # "bo":Ljava/io/ByteArrayOutputStream;
    .end local v12    # "oaBytes":[B
    .end local v16    # "ex":Lcom/android/internal/telephony/EncodeException;
    :cond_1e0
    :goto_1e0
    return-object v2
.end method

.method public static blacklist getRelativeValidityPeriod(I)I
    .registers 3
    .param p0, "validityPeriod"    # I

    .line 216
    const/4 v0, -0x1

    .line 218
    .local v0, "relValidityPeriod":I
    const/4 v1, 0x5

    if-lt p0, v1, :cond_2b

    .line 219
    const/16 v1, 0x2d0

    if-gt p0, v1, :cond_d

    .line 220
    div-int/lit8 v1, p0, 0x5

    add-int/lit8 v0, v1, -0x1

    goto :goto_2b

    .line 221
    :cond_d
    const/16 v1, 0x5a0

    if-gt p0, v1, :cond_18

    .line 222
    add-int/lit16 v1, p0, -0x2d0

    div-int/lit8 v1, v1, 0x1e

    add-int/lit16 v0, v1, 0x8f

    goto :goto_2b

    .line 223
    :cond_18
    const v1, 0xa8c0

    if-gt p0, v1, :cond_22

    .line 224
    div-int/lit16 v1, p0, 0x5a0

    add-int/lit16 v0, v1, 0xa6

    goto :goto_2b

    .line 225
    :cond_22
    const v1, 0x9b0a0

    if-gt p0, v1, :cond_2b

    .line 226
    div-int/lit16 v1, p0, 0x2760

    add-int/lit16 v0, v1, 0xc0

    .line 229
    :cond_2b
    :goto_2b
    return v0
.end method

.method public static blacklist getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .registers 13
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "destinationPort"    # I
    .param p3, "data"    # [B
    .param p4, "statusReportRequested"    # Z

    .line 517
    new-instance v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-direct {v0}, Lcom/android/internal/telephony/SmsHeader$PortAddrs;-><init>()V

    .line 518
    .local v0, "portAddrs":Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    iput p2, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 519
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    .line 520
    iput-boolean v1, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    .line 522
    new-instance v2, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v2}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 523
    .local v2, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    iput-object v0, v2, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    .line 525
    invoke-static {v2}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v3

    .line 527
    .local v3, "smsHeaderData":[B
    array-length v4, p3

    array-length v5, v3

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    const/16 v5, 0x8c

    if-le v4, v5, :cond_44

    .line 528
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SMS data message may only contain "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v4, v3

    sub-int/2addr v5, v4

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " bytes"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "SmsMessage"

    invoke-static {v4, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    const/4 v1, 0x0

    return-object v1

    .line 533
    :cond_44
    new-instance v4, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v4}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    .line 534
    .local v4, "ret":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    const/16 v5, 0x41

    invoke-static {p0, p1, v5, p4, v4}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v5

    .line 539
    .local v5, "bo":Ljava/io/ByteArrayOutputStream;
    if-nez v5, :cond_52

    return-object v4

    .line 543
    :cond_52
    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 548
    array-length v6, p3

    array-length v7, v3

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 551
    array-length v6, v3

    invoke-virtual {v5, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 552
    array-length v6, v3

    invoke-virtual {v5, v3, v1, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 555
    array-length v6, p3

    invoke-virtual {v5, p3, v1, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 557
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, v4, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    .line 558
    return-object v4
.end method

.method public static greylist getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .registers 5
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "statusReportRequested"    # Z

    .line 480
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-r getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .registers 14
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "statusReportRequested"    # Z
    .param p4, "validityPeriod"    # I

    .line 498
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v8, p4

    invoke-static/range {v0 .. v8}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static greylist getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .registers 13
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "statusReportRequested"    # Z
    .param p4, "header"    # [B

    .line 248
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v7}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-r getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .registers 17
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "statusReportRequested"    # Z
    .param p4, "header"    # [B
    .param p5, "encoding"    # I
    .param p6, "languageTable"    # I
    .param p7, "languageShiftTable"    # I

    .line 274
    const/4 v8, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-static/range {v0 .. v8}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-r getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .registers 26
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "statusReportRequested"    # Z
    .param p4, "header"    # [B
    .param p5, "encoding"    # I
    .param p6, "languageTable"    # I
    .param p7, "languageShiftTable"    # I
    .param p8, "validityPeriod"    # I

    .line 302
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-eqz v2, :cond_16b

    if-nez v1, :cond_f

    move-object/from16 v15, p0

    move/from16 v13, p3

    const/4 v3, 0x0

    goto/16 :goto_170

    .line 306
    :cond_f
    const/4 v4, 0x1

    const-string v5, "SmsMessage"

    const/4 v6, 0x0

    if-nez p5, :cond_87

    .line 308
    invoke-static {v2, v6}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v0

    .line 309
    .local v0, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    iget v7, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 310
    .end local p5    # "encoding":I
    .local v7, "encoding":I
    iget v8, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    .line 311
    .end local p6    # "languageTable":I
    .local v8, "languageTable":I
    iget v9, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    .line 313
    .end local p7    # "languageShiftTable":I
    .local v9, "languageShiftTable":I
    if-ne v7, v4, :cond_84

    if-nez v8, :cond_25

    if-eqz v9, :cond_84

    .line 315
    :cond_25
    if-eqz p4, :cond_76

    .line 316
    invoke-static/range {p4 .. p4}, Lcom/android/internal/telephony/SmsHeader;->fromByteArray([B)Lcom/android/internal/telephony/SmsHeader;

    move-result-object v10

    .line 317
    .local v10, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    iget v11, v10, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    if-ne v11, v8, :cond_37

    iget v11, v10, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    if-eq v11, v9, :cond_34

    goto :goto_37

    :cond_34
    move-object/from16 v11, p4

    goto :goto_75

    .line 319
    :cond_37
    :goto_37
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Updating language table in SMS header: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v10, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " -> "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, ", "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v13, v10, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iput v8, v10, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 323
    iput v9, v10, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 324
    invoke-static {v10}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v11

    .line 326
    .end local v10    # "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    .end local p4    # "header":[B
    .local v11, "header":[B
    :goto_75
    goto :goto_8f

    .line 327
    .end local v11    # "header":[B
    .restart local p4    # "header":[B
    :cond_76
    new-instance v10, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v10}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 328
    .restart local v10    # "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    iput v8, v10, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 329
    iput v9, v10, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 330
    invoke-static {v10}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v11

    .end local p4    # "header":[B
    .restart local v11    # "header":[B
    goto :goto_8f

    .line 335
    .end local v0    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .end local v10    # "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    .end local v11    # "header":[B
    .restart local p4    # "header":[B
    :cond_84
    move-object/from16 v11, p4

    goto :goto_8f

    .line 306
    .end local v7    # "encoding":I
    .end local v8    # "languageTable":I
    .end local v9    # "languageShiftTable":I
    .restart local p5    # "encoding":I
    .restart local p6    # "languageTable":I
    .restart local p7    # "languageShiftTable":I
    :cond_87
    move-object/from16 v11, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    .line 335
    .end local p4    # "header":[B
    .end local p5    # "encoding":I
    .end local p6    # "languageTable":I
    .end local p7    # "languageShiftTable":I
    .restart local v7    # "encoding":I
    .restart local v8    # "languageTable":I
    .restart local v9    # "languageShiftTable":I
    .restart local v11    # "header":[B
    :goto_8f
    new-instance v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    move-object v10, v0

    .line 337
    .local v10, "ret":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    invoke-static/range {p8 .. p8}, Lcom/android/internal/telephony/gsm/SmsMessage;->getRelativeValidityPeriod(I)I

    move-result v12

    .line 339
    .local v12, "relativeValidityPeriod":I
    const/4 v0, 0x1

    .line 341
    .local v0, "mtiByte":B
    if-eqz v11, :cond_9f

    .line 343
    or-int/lit8 v13, v0, 0x40

    int-to-byte v0, v13

    .line 346
    :cond_9f
    const/4 v13, -0x1

    if-eq v12, v13, :cond_a7

    .line 348
    or-int/lit8 v14, v0, 0x10

    int-to-byte v0, v14

    move v14, v0

    goto :goto_a8

    .line 346
    :cond_a7
    move v14, v0

    .line 351
    .end local v0    # "mtiByte":B
    .local v14, "mtiByte":B
    :goto_a8
    move-object/from16 v15, p0

    move/from16 v13, p3

    invoke-static {v15, v1, v14, v13, v10}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v6

    .line 357
    .local v6, "bo":Ljava/io/ByteArrayOutputStream;
    if-nez v6, :cond_b3

    return-object v10

    .line 362
    :cond_b3
    const-string v3, "Implausible UnsupportedEncodingException "

    if-ne v7, v4, :cond_bc

    .line 363
    :try_start_b7
    invoke-static {v2, v11, v8, v9}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B

    move-result-object v0
    :try_end_bb
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_b7 .. :try_end_bb} :catch_c2

    .local v0, "userData":[B
    goto :goto_c1

    .line 367
    .end local v0    # "userData":[B
    :cond_bc
    :try_start_bc
    invoke-static {v2, v11}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B

    move-result-object v0
    :try_end_c0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_bc .. :try_end_c0} :catch_c4
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_bc .. :try_end_c0} :catch_c2

    .line 373
    .restart local v0    # "userData":[B
    nop

    .line 393
    :goto_c1
    goto :goto_e7

    .line 375
    .end local v0    # "userData":[B
    :catch_c2
    move-exception v0

    goto :goto_ce

    .line 368
    :catch_c4
    move-exception v0

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    .line 369
    .local v0, "uex":Ljava/io/UnsupportedEncodingException;
    :try_start_c9
    invoke-static {v5, v3, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_cc
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_c9 .. :try_end_cc} :catch_c2

    .line 372
    const/4 v3, 0x0

    return-object v3

    .line 375
    .end local v0    # "uex":Ljava/io/UnsupportedEncodingException;
    :goto_ce
    move-object/from16 p5, v0

    .line 376
    .local p5, "ex":Lcom/android/internal/telephony/EncodeException;
    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/telephony/EncodeException;->getError()I

    move-result v0

    const-string v1, "Exceed size limitation EncodeException"

    if-ne v0, v4, :cond_df

    .line 377
    move-object/from16 v3, p5

    .end local p5    # "ex":Lcom/android/internal/telephony/EncodeException;
    .local v3, "ex":Lcom/android/internal/telephony/EncodeException;
    invoke-static {v5, v1, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 378
    const/4 v1, 0x0

    return-object v1

    .line 383
    .end local v3    # "ex":Lcom/android/internal/telephony/EncodeException;
    .restart local p5    # "ex":Lcom/android/internal/telephony/EncodeException;
    :cond_df
    move-object/from16 v16, p5

    .end local p5    # "ex":Lcom/android/internal/telephony/EncodeException;
    .local v16, "ex":Lcom/android/internal/telephony/EncodeException;
    :try_start_e1
    invoke-static {v2, v11}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B

    move-result-object v0
    :try_end_e5
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_e1 .. :try_end_e5} :catch_163
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_e1 .. :try_end_e5} :catch_15b

    .line 384
    .local v0, "userData":[B
    const/4 v7, 0x3

    .line 391
    nop

    .line 395
    .end local v16    # "ex":Lcom/android/internal/telephony/EncodeException;
    :goto_e7
    const-string v1, "Message too long ("

    if-ne v7, v4, :cond_11a

    .line 396
    const/4 v3, 0x0

    aget-byte v4, v0, v3

    and-int/lit16 v4, v4, 0xff

    const/16 v3, 0xa0

    if-le v4, v3, :cond_115

    .line 398
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x0

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " septets)"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    const/4 v1, 0x0

    return-object v1

    .line 409
    :cond_115
    const/4 v3, 0x0

    invoke-virtual {v6, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_149

    .line 411
    :cond_11a
    const/4 v3, 0x0

    aget-byte v4, v0, v3

    and-int/lit16 v4, v4, 0xff

    const/16 v3, 0x8c

    if-le v4, v3, :cond_144

    .line 413
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x0

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " bytes)"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    const/4 v1, 0x0

    return-object v1

    .line 418
    :cond_144
    const/16 v1, 0x8

    invoke-virtual {v6, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 422
    :goto_149
    const/4 v1, -0x1

    if-eq v12, v1, :cond_14f

    .line 423
    invoke-virtual {v6, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 426
    :cond_14f
    array-length v1, v0

    const/4 v3, 0x0

    invoke-virtual {v6, v0, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 427
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, v10, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    .line 428
    return-object v10

    .line 388
    .end local v0    # "userData":[B
    .restart local v16    # "ex":Lcom/android/internal/telephony/EncodeException;
    :catch_15b
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 389
    .local v0, "uex":Ljava/io/UnsupportedEncodingException;
    invoke-static {v5, v3, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 390
    const/4 v3, 0x0

    return-object v3

    .line 385
    .end local v0    # "uex":Ljava/io/UnsupportedEncodingException;
    :catch_163
    move-exception v0

    const/4 v3, 0x0

    move-object v4, v0

    move-object v0, v4

    .line 386
    .local v0, "ex1":Lcom/android/internal/telephony/EncodeException;
    invoke-static {v5, v1, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 387
    return-object v3

    .line 302
    .end local v0    # "ex1":Lcom/android/internal/telephony/EncodeException;
    .end local v6    # "bo":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "encoding":I
    .end local v8    # "languageTable":I
    .end local v9    # "languageShiftTable":I
    .end local v10    # "ret":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .end local v11    # "header":[B
    .end local v12    # "relativeValidityPeriod":I
    .end local v14    # "mtiByte":B
    .end local v16    # "ex":Lcom/android/internal/telephony/EncodeException;
    .restart local p4    # "header":[B
    .local p5, "encoding":I
    .restart local p6    # "languageTable":I
    .restart local p7    # "languageShiftTable":I
    :cond_16b
    move-object/from16 v15, p0

    move/from16 v13, p3

    const/4 v3, 0x0

    .line 303
    :goto_170
    return-object v3
.end method

.method private static greylist getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;
    .registers 12
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "mtiByte"    # B
    .param p3, "statusReportRequested"    # Z
    .param p4, "ret"    # Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    .line 579
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0xb4

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 583
    .local v0, "bo":Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    if-nez p0, :cond_d

    .line 584
    iput-object v1, p4, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    goto :goto_13

    .line 586
    :cond_d
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p4, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    .line 591
    :goto_13
    if-eqz p3, :cond_18

    .line 593
    or-int/lit8 v2, p2, 0x20

    int-to-byte p2, v2

    .line 596
    :cond_18
    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 599
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 603
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v3

    .line 606
    .local v3, "daBytes":[B
    if-nez v3, :cond_26

    return-object v1

    .line 610
    :cond_26
    array-length v1, v3

    const/4 v4, 0x1

    sub-int/2addr v1, v4

    mul-int/lit8 v1, v1, 0x2

    .line 611
    array-length v5, v3

    sub-int/2addr v5, v4

    aget-byte v5, v3, v5

    const/16 v6, 0xf0

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_35

    goto :goto_36

    :cond_35
    move v4, v2

    :goto_36
    sub-int/2addr v1, v4

    .line 610
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 614
    array-length v1, v3

    invoke-virtual {v0, v3, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 617
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 618
    return-object v0
.end method

.method public static blacklist getTPLayerLengthForPDU(Ljava/lang/String;)I
    .registers 4
    .param p0, "pdu"    # Ljava/lang/String;

    .line 190
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    div-int/2addr v0, v1

    .line 191
    .local v0, "len":I
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 193
    .local v1, "smscLen":I
    sub-int v2, v0, v1

    add-int/lit8 v2, v2, -0x1

    return v2
.end method

.method private blacklist parsePdu([B)V
    .registers 6
    .param p1, "pdu"    # [B

    .line 1199
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mPdu:[B

    .line 1203
    new-instance v0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;-><init>([B)V

    .line 1205
    .local v0, "p":Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mScAddress:Ljava/lang/String;

    .line 1207
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mScAddress:Ljava/lang/String;

    .line 1215
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v1

    .line 1217
    .local v1, "firstByte":I
    and-int/lit8 v2, v1, 0x3

    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMti:I

    .line 1218
    packed-switch v2, :pswitch_data_30

    .line 1234
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unsupported message type"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1230
    :pswitch_22
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseSmsStatusReport(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V

    .line 1231
    goto :goto_2e

    .line 1227
    :pswitch_26
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseSmsSubmit(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V

    .line 1228
    goto :goto_2e

    .line 1224
    :pswitch_2a
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseSmsDeliver(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V

    .line 1225
    nop

    .line 1236
    :goto_2e
    return-void

    nop

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_2a
        :pswitch_26
        :pswitch_22
        :pswitch_2a
    .end packed-switch
.end method

.method private blacklist parseSmsDeliver(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V
    .registers 8
    .param p1, "p"    # Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;
    .param p2, "firstByte"    # I

    .line 1290
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

    .line 1292
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 1294
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 1301
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    .line 1305
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    .line 1313
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCTimestampMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mScTimeMillis:J

    .line 1317
    and-int/lit8 v0, p2, 0x40

    const/16 v3, 0x40

    if-ne v0, v3, :cond_2e

    goto :goto_2f

    :cond_2e
    move v1, v2

    :goto_2f
    move v0, v1

    .line 1319
    .local v0, "hasUserDataHeader":Z
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V

    .line 1320
    return-void
.end method

.method private blacklist parseSmsStatusReport(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V
    .registers 8
    .param p1, "p"    # Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;
    .param p2, "firstByte"    # I

    .line 1245
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsStatusReportMessage:Z

    .line 1248
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageRef:I

    .line 1250
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mRecipientAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 1252
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCTimestampMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mScTimeMillis:J

    .line 1254
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCTimestampMillis()J

    .line 1256
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mStatus:I

    .line 1259
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->moreDataPresent()Z

    move-result v1

    if-eqz v1, :cond_59

    .line 1261
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v1

    .line 1262
    .local v1, "extraParams":I
    move v2, v1

    .line 1263
    .local v2, "moreExtraParams":I
    :goto_29
    and-int/lit16 v3, v2, 0x80

    if-eqz v3, :cond_32

    .line 1267
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v2

    goto :goto_29

    .line 1271
    :cond_32
    and-int/lit8 v3, v1, 0x78

    if-nez v3, :cond_59

    .line 1273
    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_40

    .line 1274
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    .line 1277
    :cond_40
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_4a

    .line 1278
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    .line 1281
    :cond_4a
    and-int/lit8 v3, v1, 0x4

    if-eqz v3, :cond_59

    .line 1282
    and-int/lit8 v3, p2, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_55

    goto :goto_56

    :cond_55
    const/4 v0, 0x0

    .line 1283
    .local v0, "hasUserDataHeader":Z
    :goto_56
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V

    .line 1287
    .end local v0    # "hasUserDataHeader":Z
    .end local v1    # "extraParams":I
    .end local v2    # "moreExtraParams":I
    :cond_59
    return-void
.end method

.method private blacklist parseSmsSubmit(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V
    .registers 9
    .param p1, "p"    # Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;
    .param p2, "firstByte"    # I

    .line 1329
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

    .line 1332
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageRef:I

    .line 1334
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mRecipientAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 1336
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mRecipientAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 1342
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    .line 1346
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    .line 1354
    const/4 v0, 0x0

    .line 1355
    .local v0, "validityPeriodLength":I
    shr-int/lit8 v3, p2, 0x3

    and-int/lit8 v3, v3, 0x3

    .line 1356
    .local v3, "validityPeriodFormat":I
    if-nez v3, :cond_30

    .line 1357
    const/4 v0, 0x0

    goto :goto_36

    .line 1358
    :cond_30
    const/4 v4, 0x2

    if-ne v3, v4, :cond_35

    .line 1359
    const/4 v0, 0x1

    goto :goto_36

    .line 1361
    :cond_35
    const/4 v0, 0x7

    .line 1365
    :goto_36
    add-int/lit8 v4, v0, -0x1

    .end local v0    # "validityPeriodLength":I
    .local v4, "validityPeriodLength":I
    if-lez v0, :cond_3f

    .line 1366
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move v0, v4

    goto :goto_36

    .line 1369
    :cond_3f
    and-int/lit8 v0, p2, 0x40

    const/16 v5, 0x40

    if-ne v0, v5, :cond_46

    goto :goto_47

    :cond_46
    move v1, v2

    :goto_47
    move v0, v1

    .line 1371
    .local v0, "hasUserDataHeader":Z
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V

    .line 1372
    return-void
.end method

.method private blacklist parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V
    .registers 19
    .param p1, "p"    # Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;
    .param p2, "hasUserDataHeader"    # Z

    .line 1382
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x0

    .line 1383
    .local v3, "hasMessageClass":Z
    const/4 v4, 0x0

    .line 1385
    .local v4, "userDataCompressed":Z
    const/4 v5, 0x0

    .line 1387
    .local v5, "encodingType":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    .line 1389
    .local v6, "r":Landroid/content/res/Resources;
    iget v7, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v8, v7, 0x80

    const-string v9, " Dont store = "

    const v10, 0x11101b7

    const/16 v11, 0xd0

    const/16 v12, 0xe0

    const/16 v13, 0x80

    const-string v14, "SmsMessage"

    if-nez v8, :cond_86

    .line 1390
    and-int/lit8 v8, v7, 0x20

    if-eqz v8, :cond_26

    const/4 v8, 0x1

    goto :goto_27

    :cond_26
    const/4 v8, 0x0

    :goto_27
    move v4, v8

    .line 1391
    and-int/lit8 v8, v7, 0x10

    if-eqz v8, :cond_2e

    const/4 v8, 0x1

    goto :goto_2f

    :cond_2e
    const/4 v8, 0x0

    :goto_2f
    move v3, v8

    .line 1393
    if-eqz v4, :cond_4e

    .line 1394
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "4 - Unsupported SMS data coding scheme (compression) "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v8, v8, 0xff

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v14, v7}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_167

    .line 1397
    :cond_4e
    shr-int/lit8 v7, v7, 0x2

    and-int/lit8 v7, v7, 0x3

    packed-switch v7, :pswitch_data_298

    goto :goto_84

    .line 1403
    :pswitch_56
    const/4 v5, 0x3

    .line 1404
    goto :goto_84

    .line 1409
    :pswitch_58
    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_60

    .line 1411
    const/4 v5, 0x2

    .line 1412
    goto :goto_84

    .line 1416
    :cond_60
    :pswitch_60
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "1 - Unsupported SMS data coding scheme "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v8, v8, 0xff

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v14, v7}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1418
    const v7, 0x10e0110

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    goto :goto_84

    .line 1399
    :pswitch_82
    const/4 v5, 0x1

    .line 1400
    nop

    .line 1420
    :goto_84
    goto/16 :goto_167

    .line 1423
    :cond_86
    and-int/lit16 v8, v7, 0xf0

    const/16 v10, 0xf0

    if-ne v8, v10, :cond_98

    .line 1424
    const/4 v3, 0x1

    .line 1425
    const/4 v4, 0x0

    .line 1427
    and-int/lit8 v7, v7, 0x4

    if-nez v7, :cond_95

    .line 1429
    const/4 v5, 0x1

    goto/16 :goto_167

    .line 1432
    :cond_95
    const/4 v5, 0x2

    goto/16 :goto_167

    .line 1434
    :cond_98
    and-int/lit16 v8, v7, 0xf0

    const/16 v15, 0xc0

    if-eq v8, v15, :cond_ea

    and-int/lit16 v8, v7, 0xf0

    if-eq v8, v11, :cond_ea

    and-int/lit16 v8, v7, 0xf0

    if-ne v8, v12, :cond_a7

    goto :goto_ea

    .line 1475
    :cond_a7
    and-int/lit16 v8, v7, 0xc0

    if-ne v8, v13, :cond_ce

    .line 1478
    const/16 v8, 0x84

    if-ne v7, v8, :cond_b2

    .line 1480
    const/4 v5, 0x4

    goto/16 :goto_167

    .line 1482
    :cond_b2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "5 - Unsupported SMS data coding scheme "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v8, v8, 0xff

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v14, v7}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_167

    .line 1486
    :cond_ce
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "3 - Unsupported SMS data coding scheme "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v8, v8, 0xff

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v14, v7}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_167

    .line 1443
    :cond_ea
    :goto_ea
    and-int/lit16 v8, v7, 0xf0

    if-ne v8, v12, :cond_f0

    .line 1444
    const/4 v5, 0x3

    goto :goto_f1

    .line 1446
    :cond_f0
    const/4 v5, 0x1

    .line 1449
    :goto_f1
    const/4 v4, 0x0

    .line 1450
    and-int/lit8 v8, v7, 0x8

    const/16 v12, 0x8

    if-ne v8, v12, :cond_fa

    const/4 v8, 0x1

    goto :goto_fb

    :cond_fa
    const/4 v8, 0x0

    .line 1454
    .local v8, "active":Z
    :goto_fb
    and-int/lit8 v7, v7, 0x3

    if-nez v7, :cond_149

    .line 1455
    const/4 v7, 0x1

    iput-boolean v7, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsMwi:Z

    .line 1456
    iput-boolean v8, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiSense:Z

    .line 1457
    iget v7, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/2addr v7, v10

    if-ne v7, v15, :cond_10b

    const/4 v7, 0x1

    goto :goto_10c

    :cond_10b
    const/4 v7, 0x0

    :goto_10c
    iput-boolean v7, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiDontStore:Z

    .line 1460
    const/4 v7, 0x1

    if-ne v8, v7, :cond_115

    .line 1461
    const/4 v7, -0x1

    iput v7, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    goto :goto_118

    .line 1463
    :cond_115
    const/4 v7, 0x0

    iput v7, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    .line 1466
    :goto_118
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MWI in DCS for Vmail. DCS = "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v10, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v10, v10, 0xff

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v10, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiDontStore:Z

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " vmail count = "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v10, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v14, v7}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_166

    .line 1471
    :cond_149
    const/4 v7, 0x0

    iput-boolean v7, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsMwi:Z

    .line 1472
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MWI in DCS for fax/email/other: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v10, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v10, v10, 0xff

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v14, v7}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1475
    .end local v8    # "active":Z
    :goto_166
    nop

    .line 1491
    :goto_167
    const/4 v7, 0x1

    if-ne v5, v7, :cond_16c

    const/4 v7, 0x1

    goto :goto_16d

    :cond_16c
    const/4 v7, 0x0

    :goto_16d
    invoke-virtual {v1, v2, v7}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->constructUserData(ZZ)I

    move-result v7

    .line 1493
    .local v7, "count":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserData()[B

    move-result-object v8

    iput-object v8, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mUserData:[B

    .line 1494
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v8

    iput-object v8, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 1504
    if-eqz v2, :cond_22d

    iget-object v8, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget-object v8, v8, Lcom/android/internal/telephony/SmsHeader;->specialSmsMsgList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eqz v8, :cond_22d

    .line 1505
    iget-object v8, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget-object v8, v8, Lcom/android/internal/telephony/SmsHeader;->specialSmsMsgList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_191
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_22b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;

    .line 1506
    .local v10, "msg":Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;
    iget v12, v10, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;->msgIndType:I

    and-int/lit16 v12, v12, 0xff

    .line 1513
    .local v12, "msgInd":I
    if-eqz v12, :cond_1be

    if-ne v12, v13, :cond_1a6

    goto :goto_1be

    .line 1559
    :cond_1a6
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "TP_UDH fax/email/extended msg/multisubscriber profile. Msg Ind = "

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v14, v11}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x0

    goto :goto_225

    .line 1514
    :cond_1be
    :goto_1be
    const/4 v11, 0x1

    iput-boolean v11, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsMwi:Z

    .line 1515
    if-ne v12, v13, :cond_1c9

    .line 1517
    const/4 v11, 0x0

    iput-boolean v11, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiDontStore:Z

    const/16 v13, 0xe0

    goto :goto_1e8

    .line 1518
    :cond_1c9
    iget-boolean v11, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiDontStore:Z

    if-nez v11, :cond_1e6

    .line 1526
    iget v11, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v15, v11, 0xf0

    const/16 v13, 0xd0

    if-eq v15, v13, :cond_1dc

    and-int/lit16 v15, v11, 0xf0

    const/16 v13, 0xe0

    if-ne v15, v13, :cond_1e2

    goto :goto_1de

    :cond_1dc
    const/16 v13, 0xe0

    :goto_1de
    and-int/lit8 v11, v11, 0x3

    if-eqz v11, :cond_1e8

    .line 1532
    :cond_1e2
    const/4 v11, 0x1

    iput-boolean v11, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiDontStore:Z

    goto :goto_1e8

    .line 1518
    :cond_1e6
    const/16 v13, 0xe0

    .line 1536
    :cond_1e8
    :goto_1e8
    iget v11, v10, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;->msgCount:I

    and-int/lit16 v11, v11, 0xff

    iput v11, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    .line 1544
    if-lez v11, :cond_1f5

    .line 1545
    const/4 v11, 0x1

    iput-boolean v11, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiSense:Z

    const/4 v15, 0x0

    goto :goto_1f9

    .line 1547
    :cond_1f5
    const/4 v11, 0x1

    const/4 v15, 0x0

    iput-boolean v15, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiSense:Z

    .line 1549
    :goto_1f9
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "MWI in TP-UDH for Vmail. Msg Ind = "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v13, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiDontStore:Z

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " Vmail count = "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v13, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v14, v11}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1562
    .end local v10    # "msg":Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;
    .end local v12    # "msgInd":I
    :goto_225
    const/16 v11, 0xd0

    const/16 v13, 0x80

    goto/16 :goto_191

    .line 1505
    :cond_22b
    const/4 v15, 0x0

    goto :goto_22e

    .line 1504
    :cond_22d
    const/4 v15, 0x0

    .line 1565
    :goto_22e
    const/4 v8, 0x0

    packed-switch v5, :pswitch_data_2a4

    goto :goto_26d

    .line 1592
    :pswitch_233
    invoke-virtual {v1, v7}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataKSC5601(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageBody:Ljava/lang/String;

    goto :goto_26d

    .line 1588
    :pswitch_23a
    invoke-virtual {v1, v7}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataUCS2(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageBody:Ljava/lang/String;

    .line 1589
    goto :goto_26d

    .line 1573
    :pswitch_241
    const v9, 0x11101b7

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    if-eqz v9, :cond_251

    .line 1575
    invoke-virtual {v1, v7}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataGSM8bit(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageBody:Ljava/lang/String;

    goto :goto_26d

    .line 1577
    :cond_251
    iput-object v8, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageBody:Ljava/lang/String;

    .line 1579
    goto :goto_26d

    .line 1582
    :pswitch_254
    nop

    .line 1583
    if-eqz v2, :cond_25c

    iget-object v8, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget v8, v8, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    goto :goto_25d

    :cond_25c
    move v8, v15

    .line 1584
    :goto_25d
    if-eqz v2, :cond_263

    iget-object v9, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget v15, v9, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 1582
    :cond_263
    invoke-virtual {v1, v7, v8, v15}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataGSM7Bit(III)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageBody:Ljava/lang/String;

    .line 1585
    goto :goto_26d

    .line 1567
    :pswitch_26a
    iput-object v8, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageBody:Ljava/lang/String;

    .line 1568
    nop

    .line 1598
    :goto_26d
    iget-object v8, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageBody:Ljava/lang/String;

    if-eqz v8, :cond_274

    .line 1599
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseMessageBody()V

    .line 1602
    :cond_274
    if-nez v3, :cond_27b

    .line 1603
    sget-object v8, Lcom/android/internal/telephony/SmsConstants$MessageClass;->UNKNOWN:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    iput-object v8, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    goto :goto_297

    .line 1605
    :cond_27b
    iget v8, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit8 v8, v8, 0x3

    packed-switch v8, :pswitch_data_2b2

    goto :goto_297

    .line 1616
    :pswitch_283
    sget-object v8, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_3:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    iput-object v8, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    goto :goto_297

    .line 1613
    :pswitch_288
    sget-object v8, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_2:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    iput-object v8, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    .line 1614
    goto :goto_297

    .line 1610
    :pswitch_28d
    sget-object v8, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_1:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    iput-object v8, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    .line 1611
    goto :goto_297

    .line 1607
    :pswitch_292
    sget-object v8, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_0:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    iput-object v8, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    .line 1608
    nop

    .line 1620
    :goto_297
    return-void

    :pswitch_data_298
    .packed-switch 0x0
        :pswitch_82
        :pswitch_58
        :pswitch_56
        :pswitch_60
    .end packed-switch

    :pswitch_data_2a4
    .packed-switch 0x0
        :pswitch_26a
        :pswitch_254
        :pswitch_241
        :pswitch_23a
        :pswitch_233
    .end packed-switch

    :pswitch_data_2b2
    .packed-switch 0x0
        :pswitch_292
        :pswitch_28d
        :pswitch_288
        :pswitch_283
    .end packed-switch
.end method


# virtual methods
.method blacklist getDataCodingScheme()I
    .registers 2

    .line 1108
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    return v0
.end method

.method public blacklist getMessageClass()Lcom/android/internal/telephony/SmsConstants$MessageClass;
    .registers 2

    .line 1627
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    return-object v0
.end method

.method public blacklist getNumOfVoicemails()I
    .registers 3

    .line 1652
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsMwi:Z

    if-nez v0, :cond_27

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->isCphsMwiMessage()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1653
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    .line 1654
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageSet()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1655
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    goto :goto_20

    .line 1657
    :cond_1d
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    .line 1659
    :goto_20
    const-string v0, "SmsMessage"

    const-string v1, "CPHS voice mail message"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1661
    :cond_27
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    return v0
.end method

.method public blacklist getProtocolIdentifier()I
    .registers 2

    .line 1100
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    return v0
.end method

.method public greylist-max-r getStatus()I
    .registers 2

    .line 1174
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mStatus:I

    return v0
.end method

.method public blacklist isCphsMwiMessage()Z
    .registers 2

    .line 1122
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageClear()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    .line 1123
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

    .line 1122
    :goto_18
    return v0
.end method

.method public greylist isMWIClearMessage()Z
    .registers 3

    .line 1130
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsMwi:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiSense:Z

    if-nez v0, :cond_a

    .line 1131
    return v1

    .line 1134
    :cond_a
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    .line 1135
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageClear()Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    .line 1134
    :goto_1a
    return v1
.end method

.method public greylist isMWISetMessage()Z
    .registers 3

    .line 1142
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsMwi:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiSense:Z

    if-eqz v0, :cond_a

    .line 1143
    return v1

    .line 1146
    :cond_a
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    .line 1147
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageSet()Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    .line 1146
    :goto_1a
    return v1
.end method

.method public greylist isMwiDontStore()Z
    .registers 4

    .line 1154
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsMwi:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiDontStore:Z

    if-eqz v0, :cond_a

    .line 1155
    return v1

    .line 1158
    :cond_a
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->isCphsMwiMessage()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1162
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1163
    return v1

    .line 1167
    :cond_1d
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isReplace()Z
    .registers 4

    .line 1114
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    and-int/lit16 v1, v0, 0xc0

    const/16 v2, 0x40

    if-ne v1, v2, :cond_14

    and-int/lit8 v1, v0, 0x3f

    if-lez v1, :cond_14

    and-int/lit8 v0, v0, 0x3f

    const/16 v1, 0x8

    if-ge v0, v1, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method public blacklist isReplyPathPresent()Z
    .registers 2

    .line 1187
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mReplyPathPresent:Z

    return v0
.end method

.method public greylist-max-r isStatusReportMessage()Z
    .registers 2

    .line 1181
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

    .line 1637
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    sget-object v1, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_2:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    if-ne v0, v1, :cond_12

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    const/16 v1, 0x7f

    if-eq v0, v1, :cond_10

    const/16 v1, 0x7c

    if-ne v0, v1, :cond_12

    :cond_10
    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method
