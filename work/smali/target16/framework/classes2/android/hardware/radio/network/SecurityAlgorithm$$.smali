.class public interface abstract Landroid/hardware/radio/network/SecurityAlgorithm$$;
.super Ljava/lang/Object;
.source "SecurityAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/network/SecurityAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "$"
.end annotation


# direct methods
.method public static blacklist arrayToString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 7

    .line 128
    if-nez p0, :cond_5

    const-string p0, "null"

    return-object p0

    .line 129
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 130
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 131
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 132
    new-instance v2, Ljava/util/StringJoiner;

    const-string v3, "["

    const-string v4, "]"

    const-string v5, ", "

    invoke-direct {v2, v5, v3, v4}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 133
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_3a

    .line 134
    nop

    :goto_26
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-ge v3, v0, :cond_4f

    .line 135
    invoke-static {p0, v3}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/radio/network/SecurityAlgorithm$$;->arrayToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 134
    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    .line 138
    :cond_3a
    const-class v1, [I

    if-ne v0, v1, :cond_54

    .line 139
    check-cast p0, [I

    array-length v0, p0

    :goto_41
    if-ge v3, v0, :cond_4f

    aget v1, p0, v3

    .line 140
    invoke-static {v1}, Landroid/hardware/radio/network/SecurityAlgorithm$$;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 139
    add-int/lit8 v3, v3, 0x1

    goto :goto_41

    .line 143
    :cond_4f
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 138
    :cond_54
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wrong type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 130
    :cond_6d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not an array: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist toString(I)Ljava/lang/String;
    .registers 2

    .line 82
    if-nez p0, :cond_5

    const-string p0, "A50"

    return-object p0

    .line 83
    :cond_5
    const/4 v0, 0x1

    if-ne p0, v0, :cond_b

    const-string p0, "A51"

    return-object p0

    .line 84
    :cond_b
    const/4 v0, 0x2

    if-ne p0, v0, :cond_11

    const-string p0, "A52"

    return-object p0

    .line 85
    :cond_11
    const/4 v0, 0x3

    if-ne p0, v0, :cond_17

    const-string p0, "A53"

    return-object p0

    .line 86
    :cond_17
    const/4 v0, 0x4

    if-ne p0, v0, :cond_1d

    const-string p0, "A54"

    return-object p0

    .line 87
    :cond_1d
    const/16 v0, 0xe

    if-ne p0, v0, :cond_24

    const-string p0, "GEA0"

    return-object p0

    .line 88
    :cond_24
    const/16 v0, 0xf

    if-ne p0, v0, :cond_2b

    const-string p0, "GEA1"

    return-object p0

    .line 89
    :cond_2b
    const/16 v0, 0x10

    if-ne p0, v0, :cond_32

    const-string p0, "GEA2"

    return-object p0

    .line 90
    :cond_32
    const/16 v0, 0x11

    if-ne p0, v0, :cond_39

    const-string p0, "GEA3"

    return-object p0

    .line 91
    :cond_39
    const/16 v0, 0x12

    if-ne p0, v0, :cond_40

    const-string p0, "GEA4"

    return-object p0

    .line 92
    :cond_40
    const/16 v0, 0x13

    if-ne p0, v0, :cond_47

    const-string p0, "GEA5"

    return-object p0

    .line 93
    :cond_47
    const/16 v0, 0x1d

    if-ne p0, v0, :cond_4e

    const-string p0, "UEA0"

    return-object p0

    .line 94
    :cond_4e
    const/16 v0, 0x1e

    if-ne p0, v0, :cond_55

    const-string p0, "UEA1"

    return-object p0

    .line 95
    :cond_55
    const/16 v0, 0x1f

    if-ne p0, v0, :cond_5c

    const-string p0, "UEA2"

    return-object p0

    .line 96
    :cond_5c
    const/16 v0, 0x29

    if-ne p0, v0, :cond_63

    const-string p0, "EEA0"

    return-object p0

    .line 97
    :cond_63
    const/16 v0, 0x2a

    if-ne p0, v0, :cond_6a

    const-string p0, "EEA1"

    return-object p0

    .line 98
    :cond_6a
    const/16 v0, 0x2b

    if-ne p0, v0, :cond_71

    const-string p0, "EEA2"

    return-object p0

    .line 99
    :cond_71
    const/16 v0, 0x2c

    if-ne p0, v0, :cond_78

    const-string p0, "EEA3"

    return-object p0

    .line 100
    :cond_78
    const/16 v0, 0x37

    if-ne p0, v0, :cond_7f

    const-string p0, "NEA0"

    return-object p0

    .line 101
    :cond_7f
    const/16 v0, 0x38

    if-ne p0, v0, :cond_86

    const-string p0, "NEA1"

    return-object p0

    .line 102
    :cond_86
    const/16 v0, 0x39

    if-ne p0, v0, :cond_8d

    const-string p0, "NEA2"

    return-object p0

    .line 103
    :cond_8d
    const/16 v0, 0x3a

    if-ne p0, v0, :cond_94

    const-string p0, "NEA3"

    return-object p0

    .line 104
    :cond_94
    const/16 v0, 0x42

    if-ne p0, v0, :cond_9b

    const-string p0, "SIP_NO_IPSEC_CONFIG"

    return-object p0

    .line 105
    :cond_9b
    const/16 v0, 0x43

    if-ne p0, v0, :cond_a2

    const-string p0, "IMS_NULL"

    return-object p0

    .line 106
    :cond_a2
    const/16 v0, 0x44

    if-ne p0, v0, :cond_a9

    const-string p0, "SIP_NULL"

    return-object p0

    .line 107
    :cond_a9
    const/16 v0, 0x45

    if-ne p0, v0, :cond_b0

    const-string p0, "AES_GCM"

    return-object p0

    .line 108
    :cond_b0
    const/16 v0, 0x46

    if-ne p0, v0, :cond_b7

    const-string p0, "AES_GMAC"

    return-object p0

    .line 109
    :cond_b7
    const/16 v0, 0x47

    if-ne p0, v0, :cond_be

    const-string p0, "AES_CBC"

    return-object p0

    .line 110
    :cond_be
    const/16 v0, 0x48

    if-ne p0, v0, :cond_c5

    const-string p0, "DES_EDE3_CBC"

    return-object p0

    .line 111
    :cond_c5
    const/16 v0, 0x49

    if-ne p0, v0, :cond_cc

    const-string p0, "AES_EDE3_CBC"

    return-object p0

    .line 112
    :cond_cc
    const/16 v0, 0x4a

    if-ne p0, v0, :cond_d3

    const-string p0, "HMAC_SHA1_96"

    return-object p0

    .line 113
    :cond_d3
    const/16 v0, 0x4b

    if-ne p0, v0, :cond_da

    const-string p0, "HMAC_MD5_96"

    return-object p0

    .line 114
    :cond_da
    const/16 v0, 0x55

    if-ne p0, v0, :cond_e1

    const-string p0, "RTP"

    return-object p0

    .line 115
    :cond_e1
    const/16 v0, 0x56

    if-ne p0, v0, :cond_e8

    const-string p0, "SRTP_NULL"

    return-object p0

    .line 116
    :cond_e8
    const/16 v0, 0x57

    if-ne p0, v0, :cond_ef

    const-string p0, "SRTP_AES_COUNTER"

    return-object p0

    .line 117
    :cond_ef
    const/16 v0, 0x58

    if-ne p0, v0, :cond_f6

    const-string p0, "SRTP_AES_F8"

    return-object p0

    .line 118
    :cond_f6
    const/16 v0, 0x59

    if-ne p0, v0, :cond_fd

    const-string p0, "SRTP_HMAC_SHA1"

    return-object p0

    .line 119
    :cond_fd
    const/16 v0, 0x63

    if-ne p0, v0, :cond_104

    const-string p0, "ENCR_AES_GCM_16"

    return-object p0

    .line 120
    :cond_104
    const/16 v0, 0x64

    if-ne p0, v0, :cond_10b

    const-string p0, "ENCR_AES_CBC"

    return-object p0

    .line 121
    :cond_10b
    const/16 v0, 0x65

    if-ne p0, v0, :cond_112

    const-string p0, "AUTH_HMAC_SHA2_256_128"

    return-object p0

    .line 122
    :cond_112
    const/16 v0, 0x71

    if-ne p0, v0, :cond_119

    const-string p0, "UNKNOWN"

    return-object p0

    .line 123
    :cond_119
    const/16 v0, 0x72

    if-ne p0, v0, :cond_120

    const-string p0, "OTHER"

    return-object p0

    .line 124
    :cond_120
    const/16 v0, 0x7c

    if-ne p0, v0, :cond_127

    const-string p0, "ORYX"

    return-object p0

    .line 125
    :cond_127
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
