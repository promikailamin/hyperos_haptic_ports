.class public interface abstract Landroid/hardware/radio/network/EutranBands$$;
.super Ljava/lang/Object;
.source "EutranBands.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/network/EutranBands;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "$"
.end annotation


# direct methods
.method public static blacklist arrayToString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 7

    .line 140
    if-nez p0, :cond_5

    const-string p0, "null"

    return-object p0

    .line 141
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 142
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 143
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 144
    new-instance v2, Ljava/util/StringJoiner;

    const-string v3, "["

    const-string v4, "]"

    const-string v5, ", "

    invoke-direct {v2, v5, v3, v4}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 145
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_3a

    .line 146
    nop

    :goto_26
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-ge v3, v0, :cond_4f

    .line 147
    invoke-static {p0, v3}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/radio/network/EutranBands$$;->arrayToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 146
    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    .line 150
    :cond_3a
    const-class v1, [I

    if-ne v0, v1, :cond_54

    .line 151
    check-cast p0, [I

    array-length v0, p0

    :goto_41
    if-ge v3, v0, :cond_4f

    aget v1, p0, v3

    .line 152
    invoke-static {v1}, Landroid/hardware/radio/network/EutranBands$$;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 151
    add-int/lit8 v3, v3, 0x1

    goto :goto_41

    .line 155
    :cond_4f
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 150
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

    .line 142
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

    .line 77
    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    const-string p0, "BAND_1"

    return-object p0

    .line 78
    :cond_6
    const/4 v0, 0x2

    if-ne p0, v0, :cond_c

    const-string p0, "BAND_2"

    return-object p0

    .line 79
    :cond_c
    const/4 v0, 0x3

    if-ne p0, v0, :cond_12

    const-string p0, "BAND_3"

    return-object p0

    .line 80
    :cond_12
    const/4 v0, 0x4

    if-ne p0, v0, :cond_18

    const-string p0, "BAND_4"

    return-object p0

    .line 81
    :cond_18
    const/4 v0, 0x5

    if-ne p0, v0, :cond_1e

    const-string p0, "BAND_5"

    return-object p0

    .line 82
    :cond_1e
    const/4 v0, 0x6

    if-ne p0, v0, :cond_24

    const-string p0, "BAND_6"

    return-object p0

    .line 83
    :cond_24
    const/4 v0, 0x7

    if-ne p0, v0, :cond_2a

    const-string p0, "BAND_7"

    return-object p0

    .line 84
    :cond_2a
    const/16 v0, 0x8

    if-ne p0, v0, :cond_31

    const-string p0, "BAND_8"

    return-object p0

    .line 85
    :cond_31
    const/16 v0, 0x9

    if-ne p0, v0, :cond_38

    const-string p0, "BAND_9"

    return-object p0

    .line 86
    :cond_38
    const/16 v0, 0xa

    if-ne p0, v0, :cond_3f

    const-string p0, "BAND_10"

    return-object p0

    .line 87
    :cond_3f
    const/16 v0, 0xb

    if-ne p0, v0, :cond_46

    const-string p0, "BAND_11"

    return-object p0

    .line 88
    :cond_46
    const/16 v0, 0xc

    if-ne p0, v0, :cond_4d

    const-string p0, "BAND_12"

    return-object p0

    .line 89
    :cond_4d
    const/16 v0, 0xd

    if-ne p0, v0, :cond_54

    const-string p0, "BAND_13"

    return-object p0

    .line 90
    :cond_54
    const/16 v0, 0xe

    if-ne p0, v0, :cond_5b

    const-string p0, "BAND_14"

    return-object p0

    .line 91
    :cond_5b
    const/16 v0, 0x11

    if-ne p0, v0, :cond_62

    const-string p0, "BAND_17"

    return-object p0

    .line 92
    :cond_62
    const/16 v0, 0x12

    if-ne p0, v0, :cond_69

    const-string p0, "BAND_18"

    return-object p0

    .line 93
    :cond_69
    const/16 v0, 0x13

    if-ne p0, v0, :cond_70

    const-string p0, "BAND_19"

    return-object p0

    .line 94
    :cond_70
    const/16 v0, 0x14

    if-ne p0, v0, :cond_77

    const-string p0, "BAND_20"

    return-object p0

    .line 95
    :cond_77
    const/16 v0, 0x15

    if-ne p0, v0, :cond_7e

    const-string p0, "BAND_21"

    return-object p0

    .line 96
    :cond_7e
    const/16 v0, 0x16

    if-ne p0, v0, :cond_85

    const-string p0, "BAND_22"

    return-object p0

    .line 97
    :cond_85
    const/16 v0, 0x17

    if-ne p0, v0, :cond_8c

    const-string p0, "BAND_23"

    return-object p0

    .line 98
    :cond_8c
    const/16 v0, 0x18

    if-ne p0, v0, :cond_93

    const-string p0, "BAND_24"

    return-object p0

    .line 99
    :cond_93
    const/16 v0, 0x19

    if-ne p0, v0, :cond_9a

    const-string p0, "BAND_25"

    return-object p0

    .line 100
    :cond_9a
    const/16 v0, 0x1a

    if-ne p0, v0, :cond_a1

    const-string p0, "BAND_26"

    return-object p0

    .line 101
    :cond_a1
    const/16 v0, 0x1b

    if-ne p0, v0, :cond_a8

    const-string p0, "BAND_27"

    return-object p0

    .line 102
    :cond_a8
    const/16 v0, 0x1c

    if-ne p0, v0, :cond_af

    const-string p0, "BAND_28"

    return-object p0

    .line 103
    :cond_af
    const/16 v0, 0x1e

    if-ne p0, v0, :cond_b6

    const-string p0, "BAND_30"

    return-object p0

    .line 104
    :cond_b6
    const/16 v0, 0x1f

    if-ne p0, v0, :cond_bd

    const-string p0, "BAND_31"

    return-object p0

    .line 105
    :cond_bd
    const/16 v0, 0x21

    if-ne p0, v0, :cond_c4

    const-string p0, "BAND_33"

    return-object p0

    .line 106
    :cond_c4
    const/16 v0, 0x22

    if-ne p0, v0, :cond_cb

    const-string p0, "BAND_34"

    return-object p0

    .line 107
    :cond_cb
    const/16 v0, 0x23

    if-ne p0, v0, :cond_d2

    const-string p0, "BAND_35"

    return-object p0

    .line 108
    :cond_d2
    const/16 v0, 0x24

    if-ne p0, v0, :cond_d9

    const-string p0, "BAND_36"

    return-object p0

    .line 109
    :cond_d9
    const/16 v0, 0x25

    if-ne p0, v0, :cond_e0

    const-string p0, "BAND_37"

    return-object p0

    .line 110
    :cond_e0
    const/16 v0, 0x26

    if-ne p0, v0, :cond_e7

    const-string p0, "BAND_38"

    return-object p0

    .line 111
    :cond_e7
    const/16 v0, 0x27

    if-ne p0, v0, :cond_ee

    const-string p0, "BAND_39"

    return-object p0

    .line 112
    :cond_ee
    const/16 v0, 0x28

    if-ne p0, v0, :cond_f5

    const-string p0, "BAND_40"

    return-object p0

    .line 113
    :cond_f5
    const/16 v0, 0x29

    if-ne p0, v0, :cond_fc

    const-string p0, "BAND_41"

    return-object p0

    .line 114
    :cond_fc
    const/16 v0, 0x2a

    if-ne p0, v0, :cond_103

    const-string p0, "BAND_42"

    return-object p0

    .line 115
    :cond_103
    const/16 v0, 0x2b

    if-ne p0, v0, :cond_10a

    const-string p0, "BAND_43"

    return-object p0

    .line 116
    :cond_10a
    const/16 v0, 0x2c

    if-ne p0, v0, :cond_111

    const-string p0, "BAND_44"

    return-object p0

    .line 117
    :cond_111
    const/16 v0, 0x2d

    if-ne p0, v0, :cond_118

    const-string p0, "BAND_45"

    return-object p0

    .line 118
    :cond_118
    const/16 v0, 0x2e

    if-ne p0, v0, :cond_11f

    const-string p0, "BAND_46"

    return-object p0

    .line 119
    :cond_11f
    const/16 v0, 0x2f

    if-ne p0, v0, :cond_126

    const-string p0, "BAND_47"

    return-object p0

    .line 120
    :cond_126
    const/16 v0, 0x30

    if-ne p0, v0, :cond_12d

    const-string p0, "BAND_48"

    return-object p0

    .line 121
    :cond_12d
    const/16 v0, 0x41

    if-ne p0, v0, :cond_134

    const-string p0, "BAND_65"

    return-object p0

    .line 122
    :cond_134
    const/16 v0, 0x42

    if-ne p0, v0, :cond_13b

    const-string p0, "BAND_66"

    return-object p0

    .line 123
    :cond_13b
    const/16 v0, 0x44

    if-ne p0, v0, :cond_142

    const-string p0, "BAND_68"

    return-object p0

    .line 124
    :cond_142
    const/16 v0, 0x46

    if-ne p0, v0, :cond_149

    const-string p0, "BAND_70"

    return-object p0

    .line 125
    :cond_149
    const/16 v0, 0x31

    if-ne p0, v0, :cond_150

    const-string p0, "BAND_49"

    return-object p0

    .line 126
    :cond_150
    const/16 v0, 0x32

    if-ne p0, v0, :cond_157

    const-string p0, "BAND_50"

    return-object p0

    .line 127
    :cond_157
    const/16 v0, 0x33

    if-ne p0, v0, :cond_15e

    const-string p0, "BAND_51"

    return-object p0

    .line 128
    :cond_15e
    const/16 v0, 0x34

    if-ne p0, v0, :cond_165

    const-string p0, "BAND_52"

    return-object p0

    .line 129
    :cond_165
    const/16 v0, 0x35

    if-ne p0, v0, :cond_16c

    const-string p0, "BAND_53"

    return-object p0

    .line 130
    :cond_16c
    const/16 v0, 0x47

    if-ne p0, v0, :cond_173

    const-string p0, "BAND_71"

    return-object p0

    .line 131
    :cond_173
    const/16 v0, 0x48

    if-ne p0, v0, :cond_17a

    const-string p0, "BAND_72"

    return-object p0

    .line 132
    :cond_17a
    const/16 v0, 0x49

    if-ne p0, v0, :cond_181

    const-string p0, "BAND_73"

    return-object p0

    .line 133
    :cond_181
    const/16 v0, 0x4a

    if-ne p0, v0, :cond_188

    const-string p0, "BAND_74"

    return-object p0

    .line 134
    :cond_188
    const/16 v0, 0x55

    if-ne p0, v0, :cond_18f

    const-string p0, "BAND_85"

    return-object p0

    .line 135
    :cond_18f
    const/16 v0, 0x57

    if-ne p0, v0, :cond_196

    const-string p0, "BAND_87"

    return-object p0

    .line 136
    :cond_196
    const/16 v0, 0x58

    if-ne p0, v0, :cond_19d

    const-string p0, "BAND_88"

    return-object p0

    .line 137
    :cond_19d
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
