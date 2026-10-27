.class Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;
.super Ljava/lang/Object;
.source "SmsMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/SmsMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PduParser"
.end annotation


# instance fields
.field greylist-max-r mCur:I

.field greylist-max-r mPdu:[B

.field blacklist mUserData:[B

.field blacklist mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

.field greylist mUserDataSeptetPadding:I


# direct methods
.method constructor greylist <init>([B)V
    .registers 3
    .param p1, "pdu"    # [B

    .line 787
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 788
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    .line 789
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    .line 790
    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserDataSeptetPadding:I

    .line 791
    return-void
.end method


# virtual methods
.method blacklist constructUserData(ZZ)I
    .registers 12
    .param p1, "hasUserDataHeader"    # Z
    .param p2, "dataInSeptets"    # Z

    .line 915
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    .line 916
    .local v0, "offset":I
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    add-int/lit8 v2, v0, 0x1

    .end local v0    # "offset":I
    .local v2, "offset":I
    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    .line 917
    .local v0, "userDataLength":I
    const/4 v3, 0x0

    .line 918
    .local v3, "headerSeptets":I
    const/4 v4, 0x0

    .line 920
    .local v4, "userDataHeaderLength":I
    const/4 v5, 0x0

    if-eqz p1, :cond_36

    .line 921
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "offset":I
    .local v6, "offset":I
    aget-byte v2, v1, v2

    and-int/lit16 v4, v2, 0xff

    .line 923
    new-array v2, v4, [B

    .line 924
    .local v2, "udh":[B
    invoke-static {v1, v6, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 925
    invoke-static {v2}, Lcom/android/internal/telephony/SmsHeader;->fromByteArray([B)Lcom/android/internal/telephony/SmsHeader;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 926
    add-int v1, v6, v4

    .line 928
    .end local v6    # "offset":I
    .local v1, "offset":I
    add-int/lit8 v6, v4, 0x1

    mul-int/lit8 v6, v6, 0x8

    .line 929
    .local v6, "headerBits":I
    div-int/lit8 v3, v6, 0x7

    .line 930
    rem-int/lit8 v7, v6, 0x7

    if-lez v7, :cond_2e

    const/4 v7, 0x1

    goto :goto_2f

    :cond_2e
    move v7, v5

    :goto_2f
    add-int/2addr v3, v7

    .line 931
    mul-int/lit8 v7, v3, 0x7

    sub-int/2addr v7, v6

    iput v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserDataSeptetPadding:I

    move v2, v1

    .line 935
    .end local v1    # "offset":I
    .end local v6    # "headerBits":I
    .local v2, "offset":I
    :cond_36
    if-eqz p2, :cond_3d

    .line 941
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    array-length v1, v1

    sub-int/2addr v1, v2

    .local v1, "bufferLen":I
    goto :goto_48

    .line 947
    .end local v1    # "bufferLen":I
    :cond_3d
    if-eqz p1, :cond_42

    add-int/lit8 v1, v4, 0x1

    goto :goto_43

    :cond_42
    move v1, v5

    :goto_43
    sub-int v1, v0, v1

    .line 948
    .restart local v1    # "bufferLen":I
    if-gez v1, :cond_48

    .line 949
    const/4 v1, 0x0

    .line 953
    :cond_48
    :goto_48
    new-array v6, v1, [B

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserData:[B

    .line 954
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    array-length v8, v6

    invoke-static {v7, v2, v6, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 955
    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    .line 957
    if-eqz p2, :cond_5d

    .line 959
    sub-int v6, v0, v3

    .line 961
    .local v6, "count":I
    if-gez v6, :cond_5b

    goto :goto_5c

    :cond_5b
    move v5, v6

    :goto_5c
    return v5

    .line 964
    .end local v6    # "count":I
    :cond_5d
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserData:[B

    array-length v5, v5

    return v5
.end method

.method blacklist getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;
    .registers 7

    .line 842
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xff

    .line 843
    .local v2, "addressLength":I
    add-int/lit8 v3, v2, 0x1

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x2

    .line 846
    .local v3, "lengthBytes":I
    :try_start_e
    new-instance v4, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-direct {v4, v0, v1, v3}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;-><init>([BII)V
    :try_end_13
    .catch Ljava/text/ParseException; {:try_start_e .. :try_end_13} :catch_1b

    move-object v0, v4

    .line 851
    .local v0, "ret":Lcom/android/internal/telephony/gsm/GsmSmsAddress;
    nop

    .line 853
    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    .line 855
    return-object v0

    .line 847
    .end local v0    # "ret":Lcom/android/internal/telephony/gsm/GsmSmsAddress;
    :catch_1b
    move-exception v0

    .line 848
    .local v0, "e":Ljava/text/ParseException;
    const/4 v1, 0x0

    .line 850
    .local v1, "ret":Lcom/android/internal/telephony/gsm/GsmSmsAddress;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method greylist getByte()I
    .registers 4

    .line 828
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method blacklist getSCAddress()Ljava/lang/String;
    .registers 5

    .line 802
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v0

    .line 804
    .local v0, "len":I
    if-nez v0, :cond_8

    .line 806
    const/4 v1, 0x0

    .local v1, "ret":Ljava/lang/String;
    goto :goto_1c

    .line 810
    .end local v1    # "ret":Ljava/lang/String;
    :cond_8
    :try_start_8
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    const/4 v3, 0x2

    invoke-static {v1, v2, v0, v3}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BIII)Ljava/lang/String;

    move-result-object v1
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_11} :catch_12

    .line 815
    .restart local v1    # "ret":Ljava/lang/String;
    goto :goto_1c

    .line 812
    .end local v1    # "ret":Ljava/lang/String;
    :catch_12
    move-exception v1

    .line 813
    .local v1, "tr":Ljava/lang/RuntimeException;
    const-string v2, "SmsMessage"

    const-string v3, "invalid SC address: "

    invoke-static {v2, v3, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 814
    const/4 v2, 0x0

    move-object v1, v2

    .line 818
    .local v1, "ret":Ljava/lang/String;
    :goto_1c
    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    .line 820
    return-object v1
.end method

.method blacklist getSCTimestampMillis()J
    .registers 16

    .line 864
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    aget-byte v0, v0, v1

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    move-result v0

    .line 865
    .local v0, "year":I
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    aget-byte v1, v1, v2

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    move-result v1

    .line 866
    .local v1, "month":I
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    aget-byte v2, v2, v3

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    move-result v8

    .line 867
    .local v8, "day":I
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    aget-byte v2, v2, v3

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    move-result v9

    .line 868
    .local v9, "hour":I
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    aget-byte v2, v2, v3

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    move-result v10

    .line 869
    .local v10, "minute":I
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    aget-byte v2, v2, v3

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    move-result v11

    .line 876
    .local v11, "second":I
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    aget-byte v12, v2, v3

    .line 879
    .local v12, "tzByte":B
    and-int/lit8 v2, v12, -0x9

    int-to-byte v2, v2

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    move-result v2

    .line 881
    .local v2, "timezoneOffset":I
    and-int/lit8 v3, v12, 0x8

    if-nez v3, :cond_6b

    move v3, v2

    goto :goto_6c

    :cond_6b
    neg-int v3, v2

    :goto_6c
    move v13, v3

    .line 883
    .end local v2    # "timezoneOffset":I
    .local v13, "timezoneOffset":I
    mul-int/lit8 v2, v13, 0xf

    mul-int/lit8 v14, v2, 0x3c

    .line 886
    .local v14, "timeZoneOffsetSeconds":I
    const/16 v2, 0x5a

    if-lt v0, v2, :cond_78

    add-int/lit16 v2, v0, 0x76c

    goto :goto_7a

    :cond_78
    add-int/lit16 v2, v0, 0x7d0

    .line 888
    .local v2, "fullYear":I
    :goto_7a
    move v3, v1

    move v4, v8

    move v5, v9

    move v6, v10

    move v7, v11

    :try_start_7f
    invoke-static/range {v2 .. v7}, Ljava/time/LocalDateTime;->of(IIIIII)Ljava/time/LocalDateTime;

    move-result-object v3

    .line 895
    .local v3, "localDateTime":Ljava/time/LocalDateTime;
    sget-object v4, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    .line 896
    invoke-virtual {v3, v4}, Ljava/time/LocalDateTime;->toEpochSecond(Ljava/time/ZoneOffset;)J

    move-result-wide v4
    :try_end_89
    .catch Ljava/time/DateTimeException; {:try_start_7f .. :try_end_89} :catch_8f

    int-to-long v6, v14

    sub-long/2addr v4, v6

    .line 898
    .local v4, "epochSeconds":J
    const-wide/16 v6, 0x3e8

    mul-long/2addr v6, v4

    return-wide v6

    .line 899
    .end local v3    # "localDateTime":Ljava/time/LocalDateTime;
    .end local v4    # "epochSeconds":J
    :catch_8f
    move-exception v3

    .line 900
    .local v3, "ex":Ljava/time/DateTimeException;
    const-string v4, "SmsMessage"

    const-string v5, "Invalid timestamp"

    invoke-static {v4, v5, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 902
    .end local v3    # "ex":Ljava/time/DateTimeException;
    const-wide/16 v3, 0x0

    return-wide v3
.end method

.method greylist getUserData()[B
    .registers 2

    .line 975
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserData:[B

    return-object v0
.end method

.method blacklist getUserDataGSM7Bit(III)Ljava/lang/String;
    .registers 10
    .param p1, "septetCount"    # I
    .param p2, "languageTable"    # I
    .param p3, "languageShiftTable"    # I

    .line 998
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    iget v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserDataSeptetPadding:I

    move v2, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BIIIII)Ljava/lang/String;

    move-result-object v0

    .line 1001
    .local v0, "ret":Ljava/lang/String;
    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    mul-int/lit8 v2, p1, 0x7

    div-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    .line 1003
    return-object v0
.end method

.method blacklist getUserDataGSM8bit(I)Ljava/lang/String;
    .registers 4
    .param p1, "byteCount"    # I

    .line 1016
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    invoke-static {v0, v1, p1}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;

    move-result-object v0

    .line 1018
    .local v0, "ret":Ljava/lang/String;
    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    .line 1020
    return-object v0
.end method

.method blacklist getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;
    .registers 2

    .line 984
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    return-object v0
.end method

.method blacklist getUserDataKSC5601(I)Ljava/lang/String;
    .registers 6
    .param p1, "byteCount"    # I

    .line 1056
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    const-string v3, "KSC5601"

    invoke-direct {v0, v1, v2, p1, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_b} :catch_c

    .line 1060
    .local v0, "ret":Ljava/lang/String;
    goto :goto_17

    .line 1057
    .end local v0    # "ret":Ljava/lang/String;
    :catch_c
    move-exception v0

    .line 1058
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    const-string v1, ""

    .line 1059
    .local v1, "ret":Ljava/lang/String;
    const-string v2, "SmsMessage"

    const-string v3, "implausible UnsupportedEncodingException"

    invoke-static {v2, v3, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 1062
    .end local v1    # "ret":Ljava/lang/String;
    .local v0, "ret":Ljava/lang/String;
    :goto_17
    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    .line 1063
    return-object v0
.end method

.method greylist getUserDataUCS2(I)Ljava/lang/String;
    .registers 6
    .param p1, "byteCount"    # I

    .line 1035
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    const-string v3, "utf-16"

    invoke-direct {v0, v1, v2, p1, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_b} :catch_c

    .line 1039
    .local v0, "ret":Ljava/lang/String;
    goto :goto_17

    .line 1036
    .end local v0    # "ret":Ljava/lang/String;
    :catch_c
    move-exception v0

    .line 1037
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    const-string v1, ""

    .line 1038
    .local v1, "ret":Ljava/lang/String;
    const-string v2, "SmsMessage"

    const-string v3, "implausible UnsupportedEncodingException"

    invoke-static {v2, v3, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 1041
    .end local v1    # "ret":Ljava/lang/String;
    .local v0, "ret":Ljava/lang/String;
    :goto_17
    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    .line 1042
    return-object v0
.end method

.method blacklist moreDataPresent()Z
    .registers 3

    .line 1067
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    array-length v0, v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    if-le v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method
