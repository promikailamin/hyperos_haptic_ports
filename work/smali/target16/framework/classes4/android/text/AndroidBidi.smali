.class public Landroid/text/AndroidBidi;
.super Ljava/lang/Object;
.source "AndroidBidi.java"


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist-max-r bidi(I[C[B)I
    .registers 8

    .line 39
    if-eqz p1, :cond_3d

    if-eqz p2, :cond_3d

    .line 43
    array-length v0, p1

    .line 44
    array-length v1, p2

    if-lt v1, v0, :cond_37

    .line 49
    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p0, :pswitch_data_44

    .line 54
    :pswitch_d
    move p0, v1

    goto :goto_18

    .line 52
    :pswitch_f
    const/16 p0, 0x7e

    goto :goto_18

    .line 50
    :pswitch_12
    move p0, v1

    goto :goto_18

    .line 51
    :pswitch_14
    move p0, v2

    goto :goto_18

    .line 53
    :pswitch_16
    const/16 p0, 0x7f

    .line 56
    :goto_18
    new-instance v3, Landroid/icu/text/Bidi;

    invoke-direct {v3, v0, v1}, Landroid/icu/text/Bidi;-><init>(II)V

    .line 57
    const/4 v4, 0x0

    invoke-virtual {v3, p1, p0, v4}, Landroid/icu/text/Bidi;->setPara([CB[B)V

    .line 58
    nop

    :goto_22
    if-ge v1, v0, :cond_2d

    .line 59
    invoke-virtual {v3, v1}, Landroid/icu/text/Bidi;->getLevelAt(I)B

    move-result p0

    aput-byte p0, p2, v1

    .line 58
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 61
    :cond_2d
    invoke-virtual {v3}, Landroid/icu/text/Bidi;->getParaLevel()B

    move-result p0

    .line 62
    and-int/2addr p0, v2

    if-nez p0, :cond_35

    goto :goto_36

    :cond_35
    const/4 v2, -0x1

    :goto_36
    return v2

    .line 45
    :cond_37
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0

    .line 40
    :cond_3d
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0

    nop

    :pswitch_data_44
    .packed-switch -0x2
        :pswitch_16
        :pswitch_14
        :pswitch_d
        :pswitch_12
        :pswitch_f
    .end packed-switch
.end method

.method public static greylist-max-o directions(I[BI[CII)Landroid/text/Layout$Directions;
    .registers 22

    .line 79
    move/from16 v0, p5

    if-nez v0, :cond_7

    .line 80
    sget-object v0, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    return-object v0

    .line 83
    :cond_7
    const/4 v2, 0x1

    move/from16 v3, p0

    if-ne v3, v2, :cond_e

    const/4 v3, 0x0

    goto :goto_f

    :cond_e
    move v3, v2

    .line 84
    :goto_f
    aget-byte v4, p1, p2

    .line 85
    nop

    .line 86
    nop

    .line 87
    add-int/lit8 v5, p2, 0x1

    add-int v6, p2, v0

    move v8, v2

    move v7, v4

    :goto_19
    if-ge v5, v6, :cond_26

    .line 88
    aget-byte v9, p1, v5

    .line 89
    if-eq v9, v7, :cond_23

    .line 90
    nop

    .line 91
    add-int/lit8 v8, v8, 0x1

    move v7, v9

    .line 87
    :cond_23
    add-int/lit8 v5, v5, 0x1

    goto :goto_19

    .line 96
    :cond_26
    nop

    .line 97
    and-int/lit8 v5, v7, 0x1

    and-int/lit8 v6, v3, 0x1

    if-eq v5, v6, :cond_4d

    move v5, v0

    .line 99
    :goto_2e
    add-int/lit8 v5, v5, -0x1

    if-ltz v5, :cond_47

    .line 100
    add-int v6, p4, v5

    aget-char v6, p3, v6

    .line 102
    const/16 v7, 0xa

    if-ne v6, v7, :cond_3d

    .line 103
    add-int/lit8 v5, v5, -0x1

    .line 104
    goto :goto_47

    .line 107
    :cond_3d
    const/16 v7, 0x20

    if-eq v6, v7, :cond_46

    const/16 v7, 0x9

    if-eq v6, v7, :cond_46

    .line 108
    goto :goto_47

    .line 110
    :cond_46
    goto :goto_2e

    .line 111
    :cond_47
    :goto_47
    add-int/2addr v5, v2

    .line 112
    if-eq v5, v0, :cond_4e

    .line 113
    add-int/lit8 v8, v8, 0x1

    goto :goto_4e

    .line 97
    :cond_4d
    move v5, v0

    .line 117
    :cond_4e
    :goto_4e
    if-ne v8, v2, :cond_5c

    if-ne v4, v3, :cond_5c

    .line 119
    and-int/lit8 v0, v4, 0x1

    if-eqz v0, :cond_59

    .line 120
    sget-object v0, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    return-object v0

    .line 122
    :cond_59
    sget-object v0, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    return-object v0

    .line 125
    :cond_5c
    mul-int/lit8 v6, v8, 0x2

    new-array v7, v6, [I

    .line 126
    nop

    .line 127
    shl-int/lit8 v9, v4, 0x1a

    .line 132
    nop

    .line 133
    nop

    .line 134
    nop

    .line 135
    add-int v10, p2, v5

    move/from16 v13, p2

    move v15, v13

    move v14, v2

    move v11, v4

    move v12, v9

    move v9, v11

    :goto_6f
    if-ge v13, v10, :cond_92

    .line 136
    aget-byte v1, p1, v13

    .line 137
    if-eq v1, v4, :cond_8f

    .line 138
    nop

    .line 139
    if-le v1, v11, :cond_7a

    .line 140
    move v11, v1

    goto :goto_7d

    .line 141
    :cond_7a
    if-ge v1, v9, :cond_7d

    .line 142
    move v9, v1

    .line 145
    :cond_7d
    :goto_7d
    add-int/lit8 v4, v14, 0x1

    sub-int v15, v13, v15

    or-int/2addr v12, v15

    aput v12, v7, v14

    .line 146
    add-int/lit8 v14, v4, 0x1

    sub-int v12, v13, p2

    aput v12, v7, v4

    .line 147
    shl-int/lit8 v4, v1, 0x1a

    .line 148
    move v12, v4

    move v15, v13

    move v4, v1

    .line 135
    :cond_8f
    add-int/lit8 v13, v13, 0x1

    goto :goto_6f

    .line 151
    :cond_92
    sub-int/2addr v10, v15

    or-int v1, v10, v12

    aput v1, v7, v14

    .line 152
    if-ge v5, v0, :cond_a3

    .line 153
    add-int/2addr v14, v2

    aput v5, v7, v14

    .line 154
    add-int/2addr v14, v2

    sub-int/2addr v0, v5

    shl-int/lit8 v1, v3, 0x1a

    or-int/2addr v0, v1

    aput v0, v7, v14

    .line 169
    :cond_a3
    and-int/lit8 v0, v9, 0x1

    if-ne v0, v3, :cond_af

    .line 170
    add-int/lit8 v9, v9, 0x1

    .line 171
    if-le v11, v9, :cond_ad

    move v0, v2

    goto :goto_b4

    :cond_ad
    const/4 v0, 0x0

    goto :goto_b4

    .line 173
    :cond_af
    if-le v8, v2, :cond_b3

    move v0, v2

    goto :goto_b4

    :cond_b3
    const/4 v0, 0x0

    .line 175
    :goto_b4
    if-eqz v0, :cond_f4

    .line 176
    sub-int/2addr v11, v2

    :goto_b7
    if-lt v11, v9, :cond_f4

    .line 177
    const/4 v0, 0x0

    :goto_ba
    if-ge v0, v6, :cond_f1

    .line 178
    aget v1, v7, v0

    aget-byte v1, p1, v1

    if-lt v1, v11, :cond_ee

    .line 179
    add-int/lit8 v1, v0, 0x2

    .line 180
    :goto_c4
    if-ge v1, v6, :cond_cf

    aget v2, v7, v1

    aget-byte v2, p1, v2

    if-lt v2, v11, :cond_cf

    .line 181
    add-int/lit8 v1, v1, 0x2

    goto :goto_c4

    .line 183
    :cond_cf
    add-int/lit8 v2, v1, -0x2

    :goto_d1
    if-ge v0, v2, :cond_ec

    .line 184
    aget v3, v7, v0

    aget v4, v7, v2

    aput v4, v7, v0

    aput v3, v7, v2

    .line 185
    add-int/lit8 v3, v0, 0x1

    aget v4, v7, v3

    add-int/lit8 v5, v2, 0x1

    aget v8, v7, v5

    aput v8, v7, v3

    aput v4, v7, v5

    .line 183
    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v2, v2, -0x2

    goto :goto_d1

    .line 187
    :cond_ec
    add-int/lit8 v0, v1, 0x2

    .line 177
    :cond_ee
    add-int/lit8 v0, v0, 0x2

    goto :goto_ba

    .line 176
    :cond_f1
    add-int/lit8 v11, v11, -0x1

    goto :goto_b7

    .line 192
    :cond_f4
    new-instance v0, Landroid/text/Layout$Directions;

    invoke-direct {v0, v7}, Landroid/text/Layout$Directions;-><init>([I)V

    return-object v0
.end method
