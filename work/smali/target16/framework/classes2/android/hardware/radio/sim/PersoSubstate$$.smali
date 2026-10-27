.class public interface abstract Landroid/hardware/radio/sim/PersoSubstate$$;
.super Ljava/lang/Object;
.source "PersoSubstate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/sim/PersoSubstate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "$"
.end annotation


# direct methods
.method public static blacklist arrayToString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 7

    .line 116
    if-nez p0, :cond_5

    const-string p0, "null"

    return-object p0

    .line 117
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 119
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 120
    new-instance v2, Ljava/util/StringJoiner;

    const-string v3, "["

    const-string v4, "]"

    const-string v5, ", "

    invoke-direct {v2, v5, v3, v4}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 121
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_3a

    .line 122
    nop

    :goto_26
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-ge v3, v0, :cond_4f

    .line 123
    invoke-static {p0, v3}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/radio/sim/PersoSubstate$$;->arrayToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 122
    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    .line 126
    :cond_3a
    const-class v1, [I

    if-ne v0, v1, :cond_54

    .line 127
    check-cast p0, [I

    array-length v0, p0

    :goto_41
    if-ge v3, v0, :cond_4f

    aget v1, p0, v3

    .line 128
    invoke-static {v1}, Landroid/hardware/radio/sim/PersoSubstate$$;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 127
    add-int/lit8 v3, v3, 0x1

    goto :goto_41

    .line 131
    :cond_4f
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 126
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

    .line 118
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

    .line 78
    if-nez p0, :cond_5

    const-string p0, "UNKNOWN"

    return-object p0

    .line 79
    :cond_5
    const/4 v0, 0x1

    if-ne p0, v0, :cond_b

    const-string p0, "IN_PROGRESS"

    return-object p0

    .line 80
    :cond_b
    const/4 v0, 0x2

    if-ne p0, v0, :cond_11

    const-string p0, "READY"

    return-object p0

    .line 81
    :cond_11
    const/4 v0, 0x3

    if-ne p0, v0, :cond_17

    const-string p0, "SIM_NETWORK"

    return-object p0

    .line 82
    :cond_17
    const/4 v0, 0x4

    if-ne p0, v0, :cond_1d

    const-string p0, "SIM_NETWORK_SUBSET"

    return-object p0

    .line 83
    :cond_1d
    const/4 v0, 0x5

    if-ne p0, v0, :cond_23

    const-string p0, "SIM_CORPORATE"

    return-object p0

    .line 84
    :cond_23
    const/4 v0, 0x6

    if-ne p0, v0, :cond_29

    const-string p0, "SIM_SERVICE_PROVIDER"

    return-object p0

    .line 85
    :cond_29
    const/4 v0, 0x7

    if-ne p0, v0, :cond_2f

    const-string p0, "SIM_SIM"

    return-object p0

    .line 86
    :cond_2f
    const/16 v0, 0x8

    if-ne p0, v0, :cond_36

    const-string p0, "SIM_NETWORK_PUK"

    return-object p0

    .line 87
    :cond_36
    const/16 v0, 0x9

    if-ne p0, v0, :cond_3d

    const-string p0, "SIM_NETWORK_SUBSET_PUK"

    return-object p0

    .line 88
    :cond_3d
    const/16 v0, 0xa

    if-ne p0, v0, :cond_44

    const-string p0, "SIM_CORPORATE_PUK"

    return-object p0

    .line 89
    :cond_44
    const/16 v0, 0xb

    if-ne p0, v0, :cond_4b

    const-string p0, "SIM_SERVICE_PROVIDER_PUK"

    return-object p0

    .line 90
    :cond_4b
    const/16 v0, 0xc

    if-ne p0, v0, :cond_52

    const-string p0, "SIM_SIM_PUK"

    return-object p0

    .line 91
    :cond_52
    const/16 v0, 0xd

    if-ne p0, v0, :cond_59

    const-string p0, "RUIM_NETWORK1"

    return-object p0

    .line 92
    :cond_59
    const/16 v0, 0xe

    if-ne p0, v0, :cond_60

    const-string p0, "RUIM_NETWORK2"

    return-object p0

    .line 93
    :cond_60
    const/16 v0, 0xf

    if-ne p0, v0, :cond_67

    const-string p0, "RUIM_HRPD"

    return-object p0

    .line 94
    :cond_67
    const/16 v0, 0x10

    if-ne p0, v0, :cond_6e

    const-string p0, "RUIM_CORPORATE"

    return-object p0

    .line 95
    :cond_6e
    const/16 v0, 0x11

    if-ne p0, v0, :cond_75

    const-string p0, "RUIM_SERVICE_PROVIDER"

    return-object p0

    .line 96
    :cond_75
    const/16 v0, 0x12

    if-ne p0, v0, :cond_7c

    const-string p0, "RUIM_RUIM"

    return-object p0

    .line 97
    :cond_7c
    const/16 v0, 0x13

    if-ne p0, v0, :cond_83

    const-string p0, "RUIM_NETWORK1_PUK"

    return-object p0

    .line 98
    :cond_83
    const/16 v0, 0x14

    if-ne p0, v0, :cond_8a

    const-string p0, "RUIM_NETWORK2_PUK"

    return-object p0

    .line 99
    :cond_8a
    const/16 v0, 0x15

    if-ne p0, v0, :cond_91

    const-string p0, "RUIM_HRPD_PUK"

    return-object p0

    .line 100
    :cond_91
    const/16 v0, 0x16

    if-ne p0, v0, :cond_98

    const-string p0, "RUIM_CORPORATE_PUK"

    return-object p0

    .line 101
    :cond_98
    const/16 v0, 0x17

    if-ne p0, v0, :cond_9f

    const-string p0, "RUIM_SERVICE_PROVIDER_PUK"

    return-object p0

    .line 102
    :cond_9f
    const/16 v0, 0x18

    if-ne p0, v0, :cond_a6

    const-string p0, "RUIM_RUIM_PUK"

    return-object p0

    .line 103
    :cond_a6
    const/16 v0, 0x19

    if-ne p0, v0, :cond_ad

    const-string p0, "SIM_SPN"

    return-object p0

    .line 104
    :cond_ad
    const/16 v0, 0x1a

    if-ne p0, v0, :cond_b4

    const-string p0, "SIM_SPN_PUK"

    return-object p0

    .line 105
    :cond_b4
    const/16 v0, 0x1b

    if-ne p0, v0, :cond_bb

    const-string p0, "SIM_SP_EHPLMN"

    return-object p0

    .line 106
    :cond_bb
    const/16 v0, 0x1c

    if-ne p0, v0, :cond_c2

    const-string p0, "SIM_SP_EHPLMN_PUK"

    return-object p0

    .line 107
    :cond_c2
    const/16 v0, 0x1d

    if-ne p0, v0, :cond_c9

    const-string p0, "SIM_ICCID"

    return-object p0

    .line 108
    :cond_c9
    const/16 v0, 0x1e

    if-ne p0, v0, :cond_d0

    const-string p0, "SIM_ICCID_PUK"

    return-object p0

    .line 109
    :cond_d0
    const/16 v0, 0x1f

    if-ne p0, v0, :cond_d7

    const-string p0, "SIM_IMPI"

    return-object p0

    .line 110
    :cond_d7
    const/16 v0, 0x20

    if-ne p0, v0, :cond_de

    const-string p0, "SIM_IMPI_PUK"

    return-object p0

    .line 111
    :cond_de
    const/16 v0, 0x21

    if-ne p0, v0, :cond_e5

    const-string p0, "SIM_NS_SP"

    return-object p0

    .line 112
    :cond_e5
    const/16 v0, 0x22

    if-ne p0, v0, :cond_ec

    const-string p0, "SIM_NS_SP_PUK"

    return-object p0

    .line 113
    :cond_ec
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
