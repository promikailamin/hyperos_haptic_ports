.class public Lcom/android/internal/telephony/cdma/SmsMessage;
.super Lcom/android/internal/telephony/SmsMessageBase;
.source "SmsMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    }
.end annotation


# static fields
.field private static final blacklist BEARER_DATA:B = 0x8t

.field private static final blacklist BEARER_REPLY_OPTION:B = 0x6t

.field private static final blacklist CAUSE_CODES:B = 0x7t

.field private static final blacklist DESTINATION_ADDRESS:B = 0x4t

.field private static final blacklist DESTINATION_SUB_ADDRESS:B = 0x5t

.field private static final blacklist LOGGABLE_TAG:Ljava/lang/String; = "CDMA:SMS"

.field static final blacklist LOG_TAG:Ljava/lang/String; = "SmsMessage"

.field private static final blacklist ORIGINATING_ADDRESS:B = 0x2t

.field private static final blacklist ORIGINATING_SUB_ADDRESS:B = 0x3t

.field private static final blacklist PRIORITY_EMERGENCY:I = 0x3

.field private static final blacklist PRIORITY_INTERACTIVE:I = 0x1

.field private static final blacklist PRIORITY_NORMAL:I = 0x0

.field private static final blacklist PRIORITY_URGENT:I = 0x2

.field private static final blacklist RETURN_ACK:I = 0x1

.field private static final blacklist RETURN_NO_ACK:I = 0x0

.field private static final blacklist SERVICE_CATEGORY:B = 0x1t

.field private static final blacklist TELESERVICE_IDENTIFIER:B = 0x0t

.field private static final blacklist VDBG:Z = false


# instance fields
.field private greylist mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

.field private greylist mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

.field private blacklist status:I


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 121
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsMessageBase;-><init>()V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/SmsAddress;Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;)V
    .registers 3
    .param p1, "addr"    # Lcom/android/internal/telephony/SmsAddress;
    .param p2, "env"    # Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    .line 114
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsMessageBase;-><init>()V

    .line 115
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 116
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    .line 117
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->createPdu()V

    .line 118
    return-void
.end method

.method public static greylist calculateLength(Ljava/lang/CharSequence;ZZ)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .registers 4
    .param p0, "messageBody"    # Ljava/lang/CharSequence;
    .param p1, "use7bitOnly"    # Z
    .param p2, "isEntireMsg"    # Z

    .line 417
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->calcTextEncodingDetails(Ljava/lang/CharSequence;ZZ)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist convertDtmfToAscii(B)B
    .registers 2
    .param p0, "dtmfDigit"    # B

    .line 1158
    packed-switch p0, :pswitch_data_36

    .line 1176
    const/16 v0, 0x20

    .local v0, "asciiDigit":B
    goto :goto_35

    .line 1174
    .end local v0    # "asciiDigit":B
    :pswitch_6
    const/16 v0, 0x43

    .restart local v0    # "asciiDigit":B
    goto :goto_35

    .line 1173
    .end local v0    # "asciiDigit":B
    :pswitch_9
    const/16 v0, 0x42

    .restart local v0    # "asciiDigit":B
    goto :goto_35

    .line 1172
    .end local v0    # "asciiDigit":B
    :pswitch_c
    const/16 v0, 0x41

    .restart local v0    # "asciiDigit":B
    goto :goto_35

    .line 1171
    .end local v0    # "asciiDigit":B
    :pswitch_f
    const/16 v0, 0x23

    .restart local v0    # "asciiDigit":B
    goto :goto_35

    .line 1170
    .end local v0    # "asciiDigit":B
    :pswitch_12
    const/16 v0, 0x2a

    .restart local v0    # "asciiDigit":B
    goto :goto_35

    .line 1169
    .end local v0    # "asciiDigit":B
    :pswitch_15
    const/16 v0, 0x30

    .restart local v0    # "asciiDigit":B
    goto :goto_35

    .line 1168
    .end local v0    # "asciiDigit":B
    :pswitch_18
    const/16 v0, 0x39

    .restart local v0    # "asciiDigit":B
    goto :goto_35

    .line 1167
    .end local v0    # "asciiDigit":B
    :pswitch_1b
    const/16 v0, 0x38

    .restart local v0    # "asciiDigit":B
    goto :goto_35

    .line 1166
    .end local v0    # "asciiDigit":B
    :pswitch_1e
    const/16 v0, 0x37

    .restart local v0    # "asciiDigit":B
    goto :goto_35

    .line 1165
    .end local v0    # "asciiDigit":B
    :pswitch_21
    const/16 v0, 0x36

    .restart local v0    # "asciiDigit":B
    goto :goto_35

    .line 1164
    .end local v0    # "asciiDigit":B
    :pswitch_24
    const/16 v0, 0x35

    .restart local v0    # "asciiDigit":B
    goto :goto_35

    .line 1163
    .end local v0    # "asciiDigit":B
    :pswitch_27
    const/16 v0, 0x34

    .restart local v0    # "asciiDigit":B
    goto :goto_35

    .line 1162
    .end local v0    # "asciiDigit":B
    :pswitch_2a
    const/16 v0, 0x33

    .restart local v0    # "asciiDigit":B
    goto :goto_35

    .line 1161
    .end local v0    # "asciiDigit":B
    :pswitch_2d
    const/16 v0, 0x32

    .restart local v0    # "asciiDigit":B
    goto :goto_35

    .line 1160
    .end local v0    # "asciiDigit":B
    :pswitch_30
    const/16 v0, 0x31

    .restart local v0    # "asciiDigit":B
    goto :goto_35

    .line 1159
    .end local v0    # "asciiDigit":B
    :pswitch_33
    const/16 v0, 0x44

    .line 1180
    .restart local v0    # "asciiDigit":B
    :goto_35
    return v0

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method public static greylist-max-q createFromEfRecord(I[B)Lcom/android/internal/telephony/cdma/SmsMessage;
    .registers 9
    .param p0, "index"    # I
    .param p1, "data"    # [B

    .line 162
    const-string v0, "SmsMessage"

    const/4 v1, 0x0

    :try_start_3
    new-instance v2, Lcom/android/internal/telephony/cdma/SmsMessage;

    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/SmsMessage;-><init>()V

    .line 164
    .local v2, "msg":Lcom/android/internal/telephony/cdma/SmsMessage;
    iput p0, v2, Lcom/android/internal/telephony/cdma/SmsMessage;->mIndexOnIcc:I

    .line 169
    const/4 v3, 0x0

    aget-byte v4, p1, v3

    const/4 v5, 0x1

    and-int/2addr v4, v5

    if-nez v4, :cond_17

    .line 170
    const-string v3, "SMS parsing failed: Trying to parse a free record"

    invoke-static {v0, v3}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    return-object v1

    .line 173
    :cond_17
    aget-byte v4, p1, v3

    and-int/lit8 v4, v4, 0x7

    iput v4, v2, Lcom/android/internal/telephony/cdma/SmsMessage;->mStatusOnIcc:I

    .line 178
    aget-byte v4, p1, v5

    and-int/lit16 v4, v4, 0xff

    .line 182
    .local v4, "size":I
    new-array v5, v4, [B

    .line 183
    .local v5, "pdu":[B
    const/4 v6, 0x2

    invoke-static {p1, v6, v5, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 186
    invoke-direct {v2, v5}, Lcom/android/internal/telephony/cdma/SmsMessage;->parsePduFromEfRecord([B)V
    :try_end_2a
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_2a} :catch_2b

    .line 187
    return-object v2

    .line 188
    .end local v2    # "msg":Lcom/android/internal/telephony/cdma/SmsMessage;
    .end local v4    # "size":I
    .end local v5    # "pdu":[B
    :catch_2b
    move-exception v2

    .line 189
    .local v2, "ex":Ljava/lang/RuntimeException;
    const-string v3, "SMS PDU parsing failed: "

    invoke-static {v0, v3, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 190
    return-object v1
.end method

.method public static greylist createFromPdu([B)Lcom/android/internal/telephony/cdma/SmsMessage;
    .registers 6
    .param p0, "pdu"    # [B

    .line 135
    const-string v0, "SmsMessage"

    new-instance v1, Lcom/android/internal/telephony/cdma/SmsMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/cdma/SmsMessage;-><init>()V

    .line 138
    .local v1, "msg":Lcom/android/internal/telephony/cdma/SmsMessage;
    const/4 v2, 0x0

    :try_start_8
    invoke-direct {v1, p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->parsePdu([B)V
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_b} :catch_13
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_b} :catch_c

    .line 139
    return-object v1

    .line 143
    :catch_c
    move-exception v3

    .line 144
    .local v3, "e":Ljava/lang/OutOfMemoryError;
    const-string v4, "SMS PDU parsing failed with out of memory: "

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 145
    return-object v2

    .line 140
    .end local v3    # "e":Ljava/lang/OutOfMemoryError;
    :catch_13
    move-exception v3

    .line 141
    .local v3, "ex":Ljava/lang/RuntimeException;
    const-string v4, "SMS PDU parsing failed: "

    invoke-static {v0, v4, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    return-object v2
.end method

.method private blacklist decodeSmsDisplayAddress(Lcom/android/internal/telephony/SmsAddress;)V
    .registers 6
    .param p1, "addr"    # Lcom/android/internal/telephony/SmsAddress;

    .line 838
    invoke-static {}, Landroid/sysprop/TelephonyProperties;->operator_idp_string()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 839
    .local v0, "idd":Ljava/lang/String;
    new-instance v1, Ljava/lang/String;

    iget-object v2, p1, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v1, p1, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    .line 840
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "+"

    if-nez v1, :cond_42

    iget-object v1, p1, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 841
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    goto :goto_67

    .line 842
    :cond_42
    iget v1, p1, Lcom/android/internal/telephony/SmsAddress;->ton:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_67

    .line 843
    iget-object v1, p1, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x2b

    if-eq v1, v3, :cond_67

    .line 844
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    .line 847
    :cond_67
    :goto_67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " decodeSmsDisplayAddress = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SmsMessage"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 848
    return-void
.end method

.method public static blacklist getDeliverPdu(Ljava/lang/String;Ljava/lang/String;J)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .registers 13
    .param p0, "origAddr"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "date"    # J

    .line 1049
    const/4 v0, 0x0

    if-eqz p0, :cond_ad

    if-nez p1, :cond_7

    goto/16 :goto_ad

    .line 1053
    :cond_7
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v1

    .line 1054
    .local v1, "addr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    if-nez v1, :cond_e

    return-object v0

    .line 1056
    :cond_e
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;-><init>()V

    .line 1057
    .local v2, "bearerData":Lcom/android/internal/telephony/cdma/sms/BearerData;
    const/4 v3, 0x1

    iput v3, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    .line 1059
    const/4 v3, 0x0

    iput v3, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    .line 1061
    iput-boolean v3, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->deliveryAckReq:Z

    .line 1062
    iput-boolean v3, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->userAckReq:Z

    .line 1063
    iput-boolean v3, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->readAckReq:Z

    .line 1064
    iput-boolean v3, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->reportReq:Z

    .line 1066
    new-instance v4, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v4}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    iput-object v4, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    .line 1067
    iget-object v4, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iput-object p1, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 1069
    invoke-static {p2, p3}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->fromMillis(J)Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    move-result-object v4

    iput-object v4, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    .line 1071
    invoke-static {v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode(Lcom/android/internal/telephony/cdma/sms/BearerData;)[B

    move-result-object v4

    .line 1072
    .local v4, "encodedBearerData":[B
    if-nez v4, :cond_39

    return-object v0

    .line 1075
    :cond_39
    :try_start_39
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    const/16 v6, 0x64

    invoke-direct {v5, v6}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1076
    .local v5, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v6, Ljava/io/DataOutputStream;

    invoke-direct {v6, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1077
    .local v6, "dos":Ljava/io/DataOutputStream;
    const/16 v7, 0x1002

    invoke-virtual {v6, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1078
    invoke-virtual {v6, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1079
    invoke-virtual {v6, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1080
    iget v7, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    invoke-virtual {v6, v7}, Ljava/io/DataOutputStream;->write(I)V

    .line 1081
    iget v7, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    invoke-virtual {v6, v7}, Ljava/io/DataOutputStream;->write(I)V

    .line 1082
    iget v7, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    invoke-virtual {v6, v7}, Ljava/io/DataOutputStream;->write(I)V

    .line 1083
    iget v7, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    invoke-virtual {v6, v7}, Ljava/io/DataOutputStream;->write(I)V

    .line 1084
    iget v7, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    invoke-virtual {v6, v7}, Ljava/io/DataOutputStream;->write(I)V

    .line 1085
    iget-object v7, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    iget-object v8, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    array-length v8, v8

    invoke-virtual {v6, v7, v3, v8}, Ljava/io/DataOutputStream;->write([BII)V

    .line 1087
    invoke-virtual {v6, v3}, Ljava/io/DataOutputStream;->write(I)V

    .line 1088
    invoke-virtual {v6, v3}, Ljava/io/DataOutputStream;->write(I)V

    .line 1089
    invoke-virtual {v6, v3}, Ljava/io/DataOutputStream;->write(I)V

    .line 1090
    array-length v7, v4

    invoke-virtual {v6, v7}, Ljava/io/DataOutputStream;->write(I)V

    .line 1091
    array-length v7, v4

    invoke-virtual {v6, v4, v3, v7}, Ljava/io/DataOutputStream;->write([BII)V

    .line 1092
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V

    .line 1094
    new-instance v3, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    invoke-direct {v3}, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;-><init>()V

    .line 1095
    .local v3, "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    iput-object v7, v3, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedMessage:[B

    .line 1096
    iput-object v0, v3, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedScAddress:[B
    :try_end_92
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_92} :catch_93

    .line 1097
    return-object v3

    .line 1098
    .end local v3    # "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .end local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "dos":Ljava/io/DataOutputStream;
    :catch_93
    move-exception v3

    .line 1099
    .local v3, "ex":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "creating Deliver PDU failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SmsMessage"

    invoke-static {v6, v5}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    .end local v3    # "ex":Ljava/io/IOException;
    return-object v0

    .line 1050
    .end local v1    # "addr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .end local v2    # "bearerData":Lcom/android/internal/telephony/cdma/sms/BearerData;
    .end local v4    # "encodedBearerData":[B
    :cond_ad
    :goto_ad
    return-object v0
.end method

.method public static declared-synchronized greylist getNextMessageId()I
    .registers 7

    const-class v0, Lcom/android/internal/telephony/cdma/SmsMessage;

    monitor-enter v0

    .line 916
    :try_start_3
    invoke-static {}, Landroid/sysprop/TelephonyProperties;->cdma_msg_id()Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 917
    .local v1, "msgId":I
    const v3, 0xffff

    rem-int v3, v1, v3
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_84

    add-int/2addr v3, v2

    .line 919
    .local v3, "nextMsgId":I
    :try_start_1c
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Landroid/sysprop/TelephonyProperties;->cdma_msg_id(Ljava/lang/Integer;)V

    .line 920
    const-string v4, "CDMA:SMS"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lcom/android/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_68

    .line 921
    const-string v4, "SmsMessage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "next persist.radio.cdma.msgid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    const-string v4, "SmsMessage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readback gets "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/sysprop/TelephonyProperties;->cdma_msg_id()Ljava/util/Optional;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_68
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_68} :catch_69
    .catchall {:try_start_1c .. :try_end_68} :catchall_84

    .line 926
    :cond_68
    goto :goto_82

    .line 924
    :catch_69
    move-exception v2

    .line 925
    .local v2, "ex":Ljava/lang/RuntimeException;
    :try_start_6a
    const-string v4, "SmsMessage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set nextMessage ID failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_82
    .catchall {:try_start_6a .. :try_end_82} :catchall_84

    .line 927
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    :goto_82
    monitor-exit v0

    return v1

    .line 915
    .end local v1    # "msgId":I
    .end local v3    # "nextMsgId":I
    :catchall_84
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static greylist getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;Z)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .registers 4
    .param p0, "destAddr"    # Ljava/lang/String;
    .param p1, "userData"    # Lcom/android/internal/telephony/cdma/sms/UserData;
    .param p2, "statusReportRequested"    # Z

    .line 306
    invoke-static {p0, p2, p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-r getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;ZI)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .registers 5
    .param p0, "destAddr"    # Ljava/lang/String;
    .param p1, "userData"    # Lcom/android/internal/telephony/cdma/sms/UserData;
    .param p2, "statusReportRequested"    # Z
    .param p3, "priority"    # I

    .line 322
    invoke-static {p0, p2, p1, p3}, Lcom/android/internal/telephony/cdma/SmsMessage;->privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static greylist getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .registers 9
    .param p0, "scAddr"    # Ljava/lang/String;
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "destPort"    # I
    .param p3, "data"    # [B
    .param p4, "statusReportRequested"    # Z

    .line 277
    new-instance v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-direct {v0}, Lcom/android/internal/telephony/SmsHeader$PortAddrs;-><init>()V

    .line 278
    .local v0, "portAddrs":Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    iput p2, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 279
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    .line 280
    iput-boolean v1, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    .line 282
    new-instance v2, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v2}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 283
    .local v2, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    iput-object v0, v2, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    .line 285
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v3}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 286
    .local v3, "uData":Lcom/android/internal/telephony/cdma/sms/UserData;
    iput-object v2, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 287
    iput v1, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 288
    const/4 v1, 0x1

    iput-boolean v1, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 289
    iput-object p3, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 291
    invoke-static {p1, p4, v3}, Lcom/android/internal/telephony/cdma/SmsMessage;->privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v1

    return-object v1
.end method

.method public static greylist getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .registers 11
    .param p0, "scAddr"    # Ljava/lang/String;
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "statusReportRequested"    # Z
    .param p4, "smsHeader"    # Lcom/android/internal/telephony/SmsHeader;

    .line 219
    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-r getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .registers 8
    .param p0, "scAddr"    # Ljava/lang/String;
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "statusReportRequested"    # Z
    .param p4, "smsHeader"    # Lcom/android/internal/telephony/SmsHeader;
    .param p5, "priority"    # I

    .line 245
    if-eqz p2, :cond_13

    if-nez p1, :cond_5

    goto :goto_13

    .line 249
    :cond_5
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 250
    .local v0, "uData":Lcom/android/internal/telephony/cdma/sms/UserData;
    iput-object p2, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 251
    iput-object p4, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 252
    invoke-static {p1, p3, v0, p5}, Lcom/android/internal/telephony/cdma/SmsMessage;->privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v1

    return-object v1

    .line 246
    .end local v0    # "uData":Lcom/android/internal/telephony/cdma/sms/UserData;
    :cond_13
    :goto_13
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getTPLayerLengthForPDU(Ljava/lang/String;)I
    .registers 3
    .param p0, "pdu"    # Ljava/lang/String;

    .line 199
    const-string v0, "SmsMessage"

    const-string v1, "getTPLayerLengthForPDU: is not supported in CDMA mode."

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist parsePdu([B)V
    .registers 14
    .param p1, "pdu"    # [B

    .line 459
    const-string v0, "createFromPdu: conversion from byte array to object failed: "

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 460
    .local v1, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 463
    .local v2, "dis":Ljava/io/DataInputStream;
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {v3}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    .line 464
    .local v3, "env":Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    new-instance v4, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v4}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    .line 467
    .local v4, "addr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    new-instance v5, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    invoke-direct {v5}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;-><init>()V

    .line 470
    .local v5, "subaddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    :try_start_1b
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    iput v6, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    .line 471
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    iput v6, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    .line 472
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    iput v6, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    .line 474
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    iput v6, v4, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    .line 475
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    iput v6, v4, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    .line 476
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    iput v6, v4, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    .line 477
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    iput v6, v4, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    .line 479
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v6

    .line 480
    .local v6, "length":I
    iput v6, v4, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    .line 483
    array-length v7, p1
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_4c} :catch_ef
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_4c} :catch_ca

    const-string v8, " > pdu len "

    if-gt v6, v7, :cond_a8

    .line 488
    :try_start_50
    new-array v7, v6, [B

    iput-object v7, v4, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    .line 489
    iget-object v7, v4, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    const/4 v9, 0x0

    invoke-virtual {v2, v7, v9, v6}, Ljava/io/DataInputStream;->read([BII)I

    .line 491
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerReply:I

    .line 493
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    iput-byte v7, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->replySeqNo:B

    .line 494
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    iput-byte v7, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->errorClass:B

    .line 495
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    iput-byte v7, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->causeCode:B

    .line 498
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    .line 500
    .local v7, "bearerDataLength":I
    array-length v10, p1

    if-gt v7, v10, :cond_86

    .line 505
    new-array v8, v7, [B

    iput-object v8, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    .line 506
    iget-object v8, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    invoke-virtual {v2, v8, v9, v7}, Ljava/io/DataInputStream;->read([BII)I

    .line 507
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    .line 513
    goto :goto_e1

    .line 501
    :cond_86
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "createFromPdu: Invalid pdu, bearerDataLength "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v10, p1

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v9, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v2    # "dis":Ljava/io/DataInputStream;
    .end local v3    # "env":Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    .end local v4    # "addr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .end local v5    # "subaddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .end local p0    # "this":Lcom/android/internal/telephony/cdma/SmsMessage;
    .end local p1    # "pdu":[B
    throw v9

    .line 484
    .end local v7    # "bearerDataLength":I
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v2    # "dis":Ljava/io/DataInputStream;
    .restart local v3    # "env":Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    .restart local v4    # "addr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local v5    # "subaddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .restart local p0    # "this":Lcom/android/internal/telephony/cdma/SmsMessage;
    .restart local p1    # "pdu":[B
    :cond_a8
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "createFromPdu: Invalid pdu, addr.numberOfDigits "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, p1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v2    # "dis":Ljava/io/DataInputStream;
    .end local v3    # "env":Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    .end local v4    # "addr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .end local v5    # "subaddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .end local p0    # "this":Lcom/android/internal/telephony/cdma/SmsMessage;
    .end local p1    # "pdu":[B
    throw v7
    :try_end_ca
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_ca} :catch_ef
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_ca} :catch_ca

    .line 511
    .end local v6    # "length":I
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v2    # "dis":Ljava/io/DataInputStream;
    .restart local v3    # "env":Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    .restart local v4    # "addr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local v5    # "subaddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .restart local p0    # "this":Lcom/android/internal/telephony/cdma/SmsMessage;
    .restart local p1    # "pdu":[B
    :catch_ca
    move-exception v6

    .line 512
    .local v6, "ex":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, "SmsMessage"

    invoke-static {v7, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    .end local v6    # "ex":Ljava/lang/Exception;
    :goto_e1
    iput-object v4, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 517
    iput-object v4, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 518
    iput-object v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    .line 519
    iput-object v3, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    .line 520
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mPdu:[B

    .line 522
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseSms()V

    .line 523
    return-void

    .line 508
    :catch_ef
    move-exception v6

    .line 509
    .local v6, "ex":Ljava/io/IOException;
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
.end method

.method private blacklist parsePduFromEfRecord([B)V
    .registers 21
    .param p1, "pdu"    # [B

    .line 529
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "SmsMessage"

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v4, v0

    .line 530
    .local v4, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v5, v0

    .line 531
    .local v5, "dis":Ljava/io/DataInputStream;
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    move-object v6, v0

    .line 532
    .local v6, "env":Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    move-object v7, v0

    .line 533
    .local v7, "addr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;-><init>()V

    move-object v8, v0

    .line 536
    .local v8, "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    :try_start_24
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput v0, v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    .line 538
    :goto_2a
    invoke-virtual {v5}, Ljava/io/DataInputStream;->available()I

    move-result v0

    if-lez v0, :cond_1f9

    .line 539
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    .line 540
    .local v0, "parameterId":I
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v9

    .line 541
    .local v9, "parameterLen":I
    new-array v10, v9, [B
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_3a} :catch_204

    .line 543
    .local v10, "parameterData":[B
    const/4 v11, 0x6

    const/4 v13, 0x2

    const/4 v14, 0x3

    const/16 v15, 0x8

    const/4 v12, 0x0

    packed-switch v0, :pswitch_data_226

    .line 655
    move-object/from16 v18, v8

    move/from16 v16, v9

    .end local v8    # "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .end local v9    # "parameterLen":I
    .local v16, "parameterLen":I
    .local v18, "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    :try_start_47
    new-instance v8, Ljava/lang/Exception;
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_49} :catch_202

    goto/16 :goto_1dc

    .line 651
    .end local v16    # "parameterLen":I
    .end local v18    # "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .restart local v8    # "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .restart local v9    # "parameterLen":I
    :pswitch_4b
    :try_start_4b
    invoke-virtual {v5, v10, v12, v9}, Ljava/io/DataInputStream;->read([BII)I

    .line 652
    iput-object v10, v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    .line 653
    move-object/from16 v18, v8

    goto/16 :goto_1d8

    .line 643
    :pswitch_54
    invoke-virtual {v5, v10, v12, v9}, Ljava/io/DataInputStream;->read([BII)I

    .line 644
    new-instance v14, Lcom/android/internal/util/BitwiseInputStream;

    invoke-direct {v14, v10}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 645
    .local v14, "ccBis":Lcom/android/internal/util/BitwiseInputStream;
    invoke-virtual {v14, v11}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v11

    aget-byte v11, v11, v12

    iput-byte v11, v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->replySeqNo:B

    .line 646
    invoke-virtual {v14, v13}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v11

    aget-byte v11, v11, v12

    iput-byte v11, v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->errorClass:B

    .line 647
    iget-byte v11, v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->errorClass:B

    if-eqz v11, :cond_7c

    .line 648
    invoke-virtual {v14, v15}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v11

    aget-byte v11, v11, v12

    iput-byte v11, v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->causeCode:B

    move-object/from16 v18, v8

    goto/16 :goto_1d8

    .line 647
    :cond_7c
    move-object/from16 v18, v8

    goto/16 :goto_1d8

    .line 638
    .end local v14    # "ccBis":Lcom/android/internal/util/BitwiseInputStream;
    :pswitch_80
    invoke-virtual {v5, v10, v12, v9}, Ljava/io/DataInputStream;->read([BII)I

    .line 639
    new-instance v12, Lcom/android/internal/util/BitwiseInputStream;

    invoke-direct {v12, v10}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 640
    .local v12, "replyOptBis":Lcom/android/internal/util/BitwiseInputStream;
    invoke-virtual {v12, v11}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v11

    iput v11, v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerReply:I

    .line 641
    move-object/from16 v18, v8

    goto/16 :goto_1d8

    .line 619
    .end local v12    # "replyOptBis":Lcom/android/internal/util/BitwiseInputStream;
    :pswitch_92
    invoke-virtual {v5, v10, v12, v9}, Ljava/io/DataInputStream;->read([BII)I

    .line 620
    new-instance v11, Lcom/android/internal/util/BitwiseInputStream;

    invoke-direct {v11, v10}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 621
    .local v11, "subAddrBis":Lcom/android/internal/util/BitwiseInputStream;
    invoke-virtual {v11, v14}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v13

    iput v13, v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->type:I

    .line 622
    const/4 v13, 0x1

    invoke-virtual {v11, v13}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v13

    aget-byte v12, v13, v12

    iput-byte v12, v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->odd:B

    .line 623
    invoke-virtual {v11, v15}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v12

    .line 624
    .local v12, "subAddrLen":I
    new-array v13, v12, [B

    .line 625
    .local v13, "subdata":[B
    const/4 v15, 0x0

    .local v15, "index":I
    :goto_b0
    if-ge v15, v12, :cond_c8

    .line 626
    move/from16 v17, v12

    const/4 v14, 0x4

    .end local v12    # "subAddrLen":I
    .local v17, "subAddrLen":I
    invoke-virtual {v11, v14}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v12

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    .line 628
    .local v12, "b":B
    invoke-static {v12}, Lcom/android/internal/telephony/cdma/SmsMessage;->convertDtmfToAscii(B)B

    move-result v14

    aput-byte v14, v13, v15

    .line 625
    add-int/lit8 v15, v15, 0x1

    move/from16 v12, v17

    const/4 v14, 0x3

    goto :goto_b0

    .end local v17    # "subAddrLen":I
    .local v12, "subAddrLen":I
    :cond_c8
    move/from16 v17, v12

    .line 630
    .end local v12    # "subAddrLen":I
    .end local v15    # "index":I
    .restart local v17    # "subAddrLen":I
    iput-object v13, v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->origBytes:[B

    .line 631
    const/4 v12, 0x3

    if-ne v0, v12, :cond_d5

    .line 632
    iput-object v8, v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    move-object/from16 v18, v8

    goto/16 :goto_1d8

    .line 634
    :cond_d5
    iput-object v8, v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->destSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    :try_end_d7
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_d7} :catch_db

    .line 636
    move-object/from16 v18, v8

    goto/16 :goto_1d8

    .line 660
    .end local v0    # "parameterId":I
    .end local v9    # "parameterLen":I
    .end local v10    # "parameterData":[B
    .end local v11    # "subAddrBis":Lcom/android/internal/util/BitwiseInputStream;
    .end local v13    # "subdata":[B
    .end local v17    # "subAddrLen":I
    :catch_db
    move-exception v0

    move-object/from16 v18, v8

    goto/16 :goto_207

    .line 562
    .restart local v0    # "parameterId":I
    .restart local v9    # "parameterLen":I
    .restart local v10    # "parameterData":[B
    :pswitch_e0
    :try_start_e0
    invoke-virtual {v5, v10, v12, v9}, Ljava/io/DataInputStream;->read([BII)I

    .line 563
    new-instance v11, Lcom/android/internal/util/BitwiseInputStream;

    invoke-direct {v11, v10}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 564
    .local v11, "addrBis":Lcom/android/internal/util/BitwiseInputStream;
    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v14

    iput v14, v7, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    .line 565
    invoke-virtual {v11, v12}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v14

    iput v14, v7, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    .line 566
    const/4 v14, 0x0

    .line 567
    .local v14, "numberType":I
    iget v13, v7, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I
    :try_end_f8
    .catch Ljava/lang/Exception; {:try_start_e0 .. :try_end_f8} :catch_204

    if-ne v13, v12, :cond_10d

    .line 568
    const/4 v12, 0x3

    :try_start_fb
    invoke-virtual {v11, v12}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v12

    move v14, v12

    .line 569
    iput v14, v7, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    .line 571
    iget v12, v7, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    if-nez v12, :cond_10d

    .line 572
    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v13

    iput v13, v7, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I
    :try_end_10d
    .catch Ljava/lang/Exception; {:try_start_fb .. :try_end_10d} :catch_db

    .line 575
    :cond_10d
    :try_start_10d
    invoke-virtual {v11, v15}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v12

    iput v12, v7, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    .line 577
    iget v12, v7, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    new-array v12, v12, [B

    .line 578
    .local v12, "data":[B
    const/4 v13, 0x0

    .line 580
    .local v13, "b":B
    iget v15, v7, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I
    :try_end_11a
    .catch Ljava/lang/Exception; {:try_start_10d .. :try_end_11a} :catch_204

    if-nez v15, :cond_139

    .line 582
    const/4 v15, 0x0

    .restart local v15    # "index":I
    :goto_11d
    move-object/from16 v18, v8

    .end local v8    # "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .restart local v18    # "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    :try_start_11f
    iget v8, v7, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    if-ge v15, v8, :cond_136

    .line 583
    const/4 v8, 0x4

    invoke-virtual {v11, v8}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v16

    and-int/lit8 v8, v16, 0xf

    int-to-byte v13, v8

    .line 586
    invoke-static {v13}, Lcom/android/internal/telephony/cdma/SmsMessage;->convertDtmfToAscii(B)B

    move-result v8

    aput-byte v8, v12, v15

    .line 582
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v8, v18

    goto :goto_11d

    :cond_136
    move/from16 v16, v9

    .end local v15    # "index":I
    goto :goto_181

    .line 588
    .end local v18    # "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .restart local v8    # "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    :cond_139
    move-object/from16 v18, v8

    .end local v8    # "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .restart local v18    # "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    iget v8, v7, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    const/4 v15, 0x1

    if-ne v8, v15, :cond_17a

    .line 589
    iget v8, v7, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    if-nez v8, :cond_15e

    .line 590
    const/4 v8, 0x0

    .local v8, "index":I
    :goto_145
    iget v15, v7, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    if-ge v8, v15, :cond_15b

    .line 591
    move/from16 v16, v9

    const/16 v15, 0x8

    .end local v9    # "parameterLen":I
    .restart local v16    # "parameterLen":I
    invoke-virtual {v11, v15}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v9

    and-int/lit16 v9, v9, 0xff

    int-to-byte v13, v9

    .line 592
    aput-byte v13, v12, v8

    .line 590
    add-int/lit8 v8, v8, 0x1

    move/from16 v9, v16

    goto :goto_145

    .end local v16    # "parameterLen":I
    .restart local v9    # "parameterLen":I
    :cond_15b
    move/from16 v16, v9

    .end local v8    # "index":I
    .end local v9    # "parameterLen":I
    .restart local v16    # "parameterLen":I
    goto :goto_181

    .line 595
    .end local v16    # "parameterLen":I
    .restart local v9    # "parameterLen":I
    :cond_15e
    move/from16 v16, v9

    .end local v9    # "parameterLen":I
    .restart local v16    # "parameterLen":I
    iget v8, v7, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_174

    .line 596
    const/4 v8, 0x2

    if-ne v14, v8, :cond_16e

    .line 597
    const-string v8, "TODO: Addr is email id"

    invoke-static {v3, v8}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_181

    .line 599
    :cond_16e
    const-string v8, "TODO: Addr is data network address"

    invoke-static {v3, v8}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_181

    .line 602
    :cond_174
    const-string v8, "Addr is of incorrect type"

    invoke-static {v3, v8}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_181

    .line 605
    .end local v16    # "parameterLen":I
    .restart local v9    # "parameterLen":I
    :cond_17a
    move/from16 v16, v9

    .end local v9    # "parameterLen":I
    .restart local v16    # "parameterLen":I
    const-string v8, "Incorrect Digit mode"

    invoke-static {v3, v8}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    :goto_181
    iput-object v12, v7, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    .line 608
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Addr="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 609
    const/4 v8, 0x2

    if-ne v0, v8, :cond_1a5

    .line 610
    iput-object v7, v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 611
    iput-object v7, v1, Lcom/android/internal/telephony/cdma/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    goto :goto_1d8

    .line 613
    :cond_1a5
    iput-object v7, v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->destAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 614
    iput-object v7, v1, Lcom/android/internal/telephony/cdma/SmsMessage;->mRecipientAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 616
    goto :goto_1d8

    .line 558
    .end local v11    # "addrBis":Lcom/android/internal/util/BitwiseInputStream;
    .end local v12    # "data":[B
    .end local v13    # "b":B
    .end local v14    # "numberType":I
    .end local v16    # "parameterLen":I
    .end local v18    # "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .local v8, "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .restart local v9    # "parameterLen":I
    :pswitch_1aa
    move-object/from16 v18, v8

    move/from16 v16, v9

    .end local v8    # "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .end local v9    # "parameterLen":I
    .restart local v16    # "parameterLen":I
    .restart local v18    # "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v8

    iput v8, v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    .line 559
    goto :goto_1d8

    .line 550
    .end local v16    # "parameterLen":I
    .end local v18    # "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .restart local v8    # "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .restart local v9    # "parameterLen":I
    :pswitch_1b5
    move-object/from16 v18, v8

    move/from16 v16, v9

    .end local v8    # "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .end local v9    # "parameterLen":I
    .restart local v16    # "parameterLen":I
    .restart local v18    # "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v8

    iput v8, v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    .line 551
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "teleservice = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    nop

    .line 657
    .end local v0    # "parameterId":I
    .end local v10    # "parameterData":[B
    .end local v16    # "parameterLen":I
    :goto_1d8
    move-object/from16 v8, v18

    goto/16 :goto_2a

    .line 655
    .restart local v0    # "parameterId":I
    .restart local v10    # "parameterData":[B
    .restart local v16    # "parameterLen":I
    :goto_1dc
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "unsupported parameterId ("

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ")"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local v4    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v5    # "dis":Ljava/io/DataInputStream;
    .end local v6    # "env":Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    .end local v7    # "addr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .end local v18    # "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .end local p0    # "this":Lcom/android/internal/telephony/cdma/SmsMessage;
    .end local p1    # "pdu":[B
    throw v8

    .line 658
    .end local v0    # "parameterId":I
    .end local v10    # "parameterData":[B
    .end local v16    # "parameterLen":I
    .restart local v4    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v5    # "dis":Ljava/io/DataInputStream;
    .restart local v6    # "env":Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    .restart local v7    # "addr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local v8    # "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .restart local p0    # "this":Lcom/android/internal/telephony/cdma/SmsMessage;
    .restart local p1    # "pdu":[B
    :cond_1f9
    move-object/from16 v18, v8

    .end local v8    # "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .restart local v18    # "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V

    .line 659
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_201
    .catch Ljava/lang/Exception; {:try_start_11f .. :try_end_201} :catch_202

    .line 662
    goto :goto_21d

    .line 660
    :catch_202
    move-exception v0

    goto :goto_207

    .end local v18    # "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .restart local v8    # "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    :catch_204
    move-exception v0

    move-object/from16 v18, v8

    .line 661
    .end local v8    # "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .local v0, "ex":Ljava/lang/Exception;
    .restart local v18    # "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    :goto_207
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parsePduFromEfRecord: conversion from pdu to SmsMessage failed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_21d
    iput-object v6, v1, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    .line 666
    iput-object v2, v1, Lcom/android/internal/telephony/cdma/SmsMessage;->mPdu:[B

    .line 668
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseSms()V

    .line 669
    return-void

    nop

    :pswitch_data_226
    .packed-switch 0x0
        :pswitch_1b5
        :pswitch_1aa
        :pswitch_e0
        :pswitch_92
        :pswitch_e0
        :pswitch_92
        :pswitch_80
        :pswitch_54
        :pswitch_4b
    .end packed-switch
.end method

.method private static greylist privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .registers 4
    .param p0, "destAddrStr"    # Ljava/lang/String;
    .param p1, "statusReportRequested"    # Z
    .param p2, "userData"    # Lcom/android/internal/telephony/cdma/sms/UserData;

    .line 937
    const/4 v0, -0x1

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .registers 16
    .param p0, "destAddrStr"    # Ljava/lang/String;
    .param p1, "statusReportRequested"    # Z
    .param p2, "userData"    # Lcom/android/internal/telephony/cdma/sms/UserData;
    .param p3, "priority"    # I

    .line 961
    nop

    .line 962
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCodeForSms(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 961
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v0

    .line 963
    .local v0, "destAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    const/4 v1, 0x0

    if-nez v0, :cond_d

    return-object v1

    .line 965
    :cond_d
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;-><init>()V

    .line 966
    .local v2, "bearerData":Lcom/android/internal/telephony/cdma/sms/BearerData;
    const/4 v3, 0x2

    iput v3, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    .line 968
    invoke-static {}, Lcom/android/internal/telephony/cdma/SmsMessage;->getNextMessageId()I

    move-result v4

    iput v4, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    .line 970
    iput-boolean p1, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->deliveryAckReq:Z

    .line 971
    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->userAckReq:Z

    .line 972
    iput-boolean v4, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->readAckReq:Z

    .line 973
    iput-boolean v4, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->reportReq:Z

    .line 974
    const/4 v5, 0x1

    if-ltz p3, :cond_2e

    const/4 v6, 0x3

    if-gt p3, v6, :cond_2e

    .line 975
    iput-boolean v5, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->priorityIndicatorSet:Z

    .line 976
    iput p3, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    .line 979
    :cond_2e
    iput-object p2, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    .line 981
    invoke-static {v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode(Lcom/android/internal/telephony/cdma/sms/BearerData;)[B

    move-result-object v6

    .line 982
    .local v6, "encodedBearerData":[B
    if-nez v6, :cond_37

    return-object v1

    .line 983
    :cond_37
    const-string v7, "CDMA:SMS"

    invoke-static {v7, v3}, Lcom/android/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    const-string v8, "SmsMessage"

    if-eqz v7, :cond_77

    .line 984
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MO (encoded) BearerData = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MO raw BearerData = \'"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v6}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "\'"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    :cond_77
    iget-boolean v7, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    if-eqz v7, :cond_82

    iget v7, p2, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-eq v7, v3, :cond_82

    .line 990
    const/16 v3, 0x1005

    goto :goto_84

    :cond_82
    const/16 v3, 0x1002

    .line 992
    .local v3, "teleservice":I
    :goto_84
    new-instance v7, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {v7}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    .line 993
    .local v7, "envelope":Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    iput v4, v7, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    .line 994
    iput v3, v7, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    .line 995
    iput-object v0, v7, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->destAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 996
    iput v5, v7, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerReply:I

    .line 997
    iput-object v6, v7, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    .line 1009
    :try_start_93
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    const/16 v9, 0x64

    invoke-direct {v5, v9}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1010
    .local v5, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v9, Ljava/io/DataOutputStream;

    invoke-direct {v9, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1011
    .local v9, "dos":Ljava/io/DataOutputStream;
    iget v10, v7, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    invoke-virtual {v9, v10}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1012
    invoke-virtual {v9, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1013
    invoke-virtual {v9, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1014
    iget v10, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    invoke-virtual {v9, v10}, Ljava/io/DataOutputStream;->write(I)V

    .line 1015
    iget v10, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    invoke-virtual {v9, v10}, Ljava/io/DataOutputStream;->write(I)V

    .line 1016
    iget v10, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    invoke-virtual {v9, v10}, Ljava/io/DataOutputStream;->write(I)V

    .line 1017
    iget v10, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    invoke-virtual {v9, v10}, Ljava/io/DataOutputStream;->write(I)V

    .line 1018
    iget v10, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    invoke-virtual {v9, v10}, Ljava/io/DataOutputStream;->write(I)V

    .line 1019
    iget-object v10, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    iget-object v11, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    array-length v11, v11

    invoke-virtual {v9, v10, v4, v11}, Ljava/io/DataOutputStream;->write([BII)V

    .line 1021
    invoke-virtual {v9, v4}, Ljava/io/DataOutputStream;->write(I)V

    .line 1022
    invoke-virtual {v9, v4}, Ljava/io/DataOutputStream;->write(I)V

    .line 1023
    invoke-virtual {v9, v4}, Ljava/io/DataOutputStream;->write(I)V

    .line 1024
    array-length v10, v6

    invoke-virtual {v9, v10}, Ljava/io/DataOutputStream;->write(I)V

    .line 1025
    array-length v10, v6

    invoke-virtual {v9, v6, v4, v10}, Ljava/io/DataOutputStream;->write([BII)V

    .line 1026
    invoke-virtual {v9}, Ljava/io/DataOutputStream;->close()V

    .line 1028
    new-instance v4, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    invoke-direct {v4}, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;-><init>()V

    .line 1029
    .local v4, "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    iput-object v10, v4, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedMessage:[B

    .line 1030
    iput-object v1, v4, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedScAddress:[B
    :try_end_ec
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_ec} :catch_ed

    .line 1031
    return-object v4

    .line 1032
    .end local v4    # "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .end local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v9    # "dos":Ljava/io/DataOutputStream;
    :catch_ed
    move-exception v4

    .line 1033
    .local v4, "ex":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "creating SubmitPdu failed: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    .end local v4    # "ex":Ljava/io/IOException;
    return-object v1
.end method


# virtual methods
.method public blacklist createPdu()V
    .registers 8

    .line 1110
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    .line 1111
    .local v0, "env":Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    iget-object v1, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 1112
    .local v1, "addr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    const/16 v3, 0x64

    invoke-direct {v2, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1113
    .local v2, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/io/DataOutputStream;

    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-direct {v4, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1116
    .local v3, "dos":Ljava/io/DataOutputStream;
    :try_start_15
    iget v4, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1117
    iget v4, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1118
    iget v4, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1120
    iget v4, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1121
    iget v4, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1122
    iget v4, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1123
    iget v4, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1124
    iget v4, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1125
    iget-object v4, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    iget-object v5, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    array-length v5, v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Ljava/io/DataOutputStream;->write([BII)V

    .line 1127
    iget v4, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerReply:I

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1129
    iget-byte v4, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->replySeqNo:B

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1130
    iget-byte v4, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->errorClass:B

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1131
    iget-byte v4, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->causeCode:B

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1133
    iget-object v4, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1134
    iget-object v4, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    array-length v5, v5

    invoke-virtual {v3, v4, v6, v5}, Ljava/io/DataOutputStream;->write([BII)V

    .line 1135
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 1145
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mPdu:[B
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_71} :catch_72

    .line 1148
    goto :goto_8b

    .line 1146
    :catch_72
    move-exception v4

    .line 1147
    .local v4, "ex":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createPdu: conversion from object to byte array failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SmsMessage"

    invoke-static {v6, v5}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    .end local v4    # "ex":Ljava/io/IOException;
    :goto_8b
    return-void
.end method

.method public blacklist getEnvelopeBearerData()[B
    .registers 2

    .line 880
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    return-object v0
.end method

.method public blacklist getEnvelopeServiceCategory()I
    .registers 2

    .line 887
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    return v0
.end method

.method public greylist getIncomingSmsFingerprint()[B
    .registers 5

    .line 1200
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1202
    .local v0, "output":Ljava/io/ByteArrayOutputStream;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1203
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1204
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1205
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    array-length v2, v2

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1207
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    if-eqz v1, :cond_4e

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->origBytes:[B

    if-eqz v1, :cond_4e

    .line 1208
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->origBytes:[B

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->origBytes:[B

    array-length v2, v2

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1212
    :cond_4e
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public blacklist getMessageClass()Lcom/android/internal/telephony/SmsConstants$MessageClass;
    .registers 2

    .line 895
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->displayMode:I

    if-nez v0, :cond_9

    .line 896
    sget-object v0, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_0:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    return-object v0

    .line 898
    :cond_9
    sget-object v0, Lcom/android/internal/telephony/SmsConstants$MessageClass;->UNKNOWN:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    return-object v0
.end method

.method public greylist getMessageType()I
    .registers 2

    .line 445
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    if-eqz v0, :cond_8

    .line 446
    const/4 v0, 0x1

    return v0

    .line 448
    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public greylist getNumOfVoicemails()I
    .registers 2

    .line 1188
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    return v0
.end method

.method public blacklist getProtocolIdentifier()I
    .registers 3

    .line 330
    const-string v0, "SmsMessage"

    const-string v1, "getProtocolIdentifier: is not supported in CDMA mode."

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getSmsCbProgramData()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/telephony/cdma/CdmaSmsCbProgramData;",
            ">;"
        }
    .end annotation

    .line 1221
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->serviceCategoryProgramData:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist getStatus()I
    .registers 2

    .line 387
    iget v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->status:I

    shl-int/lit8 v0, v0, 0x10

    return v0
.end method

.method public greylist getTeleService()I
    .registers 2

    .line 431
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    return v0
.end method

.method public blacklist isCphsMwiMessage()Z
    .registers 3

    .line 350
    const-string v0, "SmsMessage"

    const-string v1, "isCphsMwiMessage: is not supported in CDMA mode."

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isMWIClearMessage()Z
    .registers 2

    .line 359
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    if-eqz v0, :cond_a

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public blacklist isMWISetMessage()Z
    .registers 2

    .line 367
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    if-eqz v0, :cond_a

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    if-lez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public blacklist isMwiDontStore()Z
    .registers 2

    .line 375
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    if-eqz v0, :cond_10

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    if-lez v0, :cond_10

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public blacklist isReplace()Z
    .registers 3

    .line 340
    const-string v0, "SmsMessage"

    const-string v1, "isReplace: is not supported in CDMA mode."

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isReplyPathPresent()Z
    .registers 3

    .line 402
    const-string v0, "SmsMessage"

    const-string v1, "isReplyPathPresent: is not supported in CDMA mode."

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    const/4 v0, 0x0

    return v0
.end method

.method public greylist isStatusReportMessage()Z
    .registers 3

    .line 394
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public blacklist parseBroadcastSms(Ljava/lang/String;II)Landroid/telephony/SmsCbMessage;
    .registers 21
    .param p1, "plmn"    # Ljava/lang/String;
    .param p2, "slotIndex"    # I
    .param p3, "subId"    # I

    .line 858
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v2, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decode([BI)Lcom/android/internal/telephony/cdma/sms/BearerData;

    move-result-object v1

    .line 859
    .local v1, "bData":Lcom/android/internal/telephony/cdma/sms/BearerData;
    const-string v2, "SmsMessage"

    if-nez v1, :cond_19

    .line 860
    const-string v3, "BearerData.decode() returned null"

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    const/4 v2, 0x0

    return-object v2

    .line 864
    :cond_19
    const/4 v3, 0x2

    const-string v4, "CDMA:SMS"

    invoke-static {v4, v3}, Lcom/android/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 865
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MT raw BearerData = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    invoke-static {v4}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    :cond_40
    new-instance v8, Landroid/telephony/SmsCbLocation;

    move-object/from16 v2, p1

    invoke-direct {v8, v2}, Landroid/telephony/SmsCbLocation;-><init>(Ljava/lang/String;)V

    .line 870
    .local v8, "location":Landroid/telephony/SmsCbLocation;
    new-instance v3, Landroid/telephony/SmsCbMessage;

    const/4 v5, 0x2

    const/4 v6, 0x1

    iget v7, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v9, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    .line 872
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->getLanguage()Ljava/lang/String;

    move-result-object v10

    iget-object v4, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v11, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    iget v12, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    const/4 v13, 0x0

    iget-object v14, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->cmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

    move-object v4, v3

    move/from16 v15, p2

    move/from16 v16, p3

    invoke-direct/range {v4 .. v16}, Landroid/telephony/SmsCbMessage;-><init>(IIILandroid/telephony/SmsCbLocation;ILjava/lang/String;Ljava/lang/String;ILandroid/telephony/SmsCbEtwsInfo;Landroid/telephony/SmsCbCmasInfo;II)V

    .line 870
    return-object v3
.end method

.method public greylist parseSms()V
    .registers 6

    .line 761
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    const/high16 v1, 0x40000

    if-ne v0, v1, :cond_23

    .line 762
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    .line 763
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    if-eqz v0, :cond_22

    .line 764
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    iput v1, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    .line 770
    :cond_22
    return-void

    .line 772
    :cond_23
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decode([B)Lcom/android/internal/telephony/cdma/sms/BearerData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    .line 773
    const-string v0, "CDMA:SMS"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    const-string v2, "SmsMessage"

    if-eqz v0, :cond_74

    .line 774
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MT raw BearerData = \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    .line 775
    invoke-static {v3}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 774
    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MT (decoded) BearerData = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    :cond_74
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mMessageRef:I

    .line 779
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    if-eqz v0, :cond_98

    .line 780
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mUserData:[B

    .line 781
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 782
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mMessageBody:Ljava/lang/String;

    .line 785
    :cond_98
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v0, :cond_a1

    .line 786
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->decodeSmsDisplayAddress(Lcom/android/internal/telephony/SmsAddress;)V

    .line 790
    :cond_a1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mRecipientAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v0, :cond_aa

    .line 791
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mRecipientAddress:Lcom/android/internal/telephony/SmsAddress;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->decodeSmsDisplayAddress(Lcom/android/internal/telephony/SmsAddress;)V

    .line 795
    :cond_aa
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    if-eqz v0, :cond_ba

    .line 796
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->toMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mScTimeMillis:J

    .line 802
    :cond_ba
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    const/4 v3, 0x4

    if-ne v0, v3, :cond_ff

    .line 810
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatusSet:Z

    if-nez v0, :cond_ef

    .line 811
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DELIVERY_ACK message without msgStatus ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 812
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mUserData:[B

    if-nez v3, :cond_d9

    const-string v3, "also missing"

    goto :goto_db

    :cond_d9
    const-string v3, "does have"

    :goto_db
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " userData)."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 811
    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    iput v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->status:I

    goto :goto_12a

    .line 816
    :cond_ef
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->errorClass:I

    shl-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->status:I

    .line 817
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatus:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->status:I

    goto :goto_12a

    .line 819
    :cond_ff
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_12a

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    if-ne v0, v1, :cond_10d

    goto :goto_12a

    .line 821
    :cond_10d
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported message type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v2, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 824
    :cond_12a
    :goto_12a
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mMessageBody:Ljava/lang/String;

    if-eqz v0, :cond_132

    .line 826
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseMessageBody()V

    goto :goto_134

    .line 827
    :cond_132
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mUserData:[B

    .line 830
    :goto_134
    return-void
.end method

.method public blacklist preprocessCdmaFdeaWap()Z
    .registers 12

    .line 688
    const-string v0, "SmsMessage"

    const/4 v1, 0x0

    :try_start_3
    new-instance v2, Lcom/android/internal/util/BitwiseInputStream;

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mUserData:[B

    invoke-direct {v2, v3}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 691
    .local v2, "inStream":Lcom/android/internal/util/BitwiseInputStream;
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    if-eqz v4, :cond_18

    .line 692
    const-string v3, "Invalid FDEA WDP Header Message Identifier SUBPARAMETER_ID"

    invoke-static {v0, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    return v1

    .line 697
    :cond_18
    invoke-virtual {v2, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_25

    .line 698
    const-string v3, "Invalid FDEA WDP Header Message Identifier SUBPARAM_LEN"

    invoke-static {v0, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    return v1

    .line 703
    :cond_25
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    const/4 v6, 0x4

    invoke-virtual {v2, v6}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v6

    iput v6, v4, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    .line 706
    invoke-virtual {v2, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    shl-int/2addr v4, v3

    .line 707
    .local v4, "msgId":I
    invoke-virtual {v2, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v6

    or-int/2addr v4, v6

    .line 708
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iput v4, v6, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    .line 709
    iput v4, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mMessageRef:I

    .line 712
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v8

    if-ne v8, v7, :cond_49

    move v8, v7

    goto :goto_4a

    :cond_49
    move v8, v1

    :goto_4a
    iput-boolean v8, v6, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    .line 713
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-boolean v6, v6, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    if-eqz v6, :cond_58

    .line 714
    const-string v3, "Invalid FDEA WDP Header Message Identifier HEADER_IND"

    invoke-static {v0, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    return v1

    .line 719
    :cond_58
    invoke-virtual {v2, v5}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 722
    invoke-virtual {v2, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v5

    if-eq v5, v7, :cond_67

    .line 723
    const-string v3, "Invalid FDEA WDP Header User Data SUBPARAMETER_ID"

    invoke-static {v0, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    return v1

    .line 728
    :cond_67
    invoke-virtual {v2, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v5

    mul-int/2addr v5, v3

    .line 731
    .local v5, "userDataLen":I
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v6, v6, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    const/4 v8, 0x5

    invoke-virtual {v2, v8}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v8

    iput v8, v6, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 732
    const/4 v6, 0x5

    .line 733
    .local v6, "consumedBits":I
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v8, v8, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v8, v8, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-eqz v8, :cond_86

    .line 734
    const-string v3, "Invalid FDEA WDP Header User Data MSG_ENCODING"

    invoke-static {v0, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    return v1

    .line 739
    :cond_86
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v8, v8, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-virtual {v2, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v9

    iput v9, v8, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 740
    add-int/2addr v6, v3

    .line 742
    sub-int v8, v5, v6

    .line 743
    .local v8, "remainingBits":I
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v9, v9, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v9, v9, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    mul-int/2addr v9, v3

    .line 744
    .local v9, "dataBits":I
    if-ge v9, v8, :cond_9e

    move v3, v9

    goto :goto_9f

    :cond_9e
    move v3, v8

    .line 745
    .end local v9    # "dataBits":I
    .local v3, "dataBits":I
    :goto_9f
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v9, v9, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-virtual {v2, v3}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v10

    iput-object v10, v9, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 746
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v9, v9, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v9, v9, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iput-object v9, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mUserData:[B
    :try_end_b1
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_3 .. :try_end_b1} :catch_b2

    .line 747
    return v7

    .line 748
    .end local v2    # "inStream":Lcom/android/internal/util/BitwiseInputStream;
    .end local v3    # "dataBits":I
    .end local v4    # "msgId":I
    .end local v5    # "userDataLen":I
    .end local v6    # "consumedBits":I
    .end local v8    # "remainingBits":I
    :catch_b2
    move-exception v2

    .line 749
    .local v2, "ex":Lcom/android/internal/util/BitwiseInputStream$AccessException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail to preprocess FDEA WAP: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    .end local v2    # "ex":Lcom/android/internal/util/BitwiseInputStream$AccessException;
    return v1
.end method
