.class public Landroid/database/sqlite/SQLiteTokenizer;
.super Ljava/lang/Object;
.source "SQLiteTokenizer.java"


# static fields
.field public static final blacklist OPTION_NONE:I = 0x0

.field public static final blacklist OPTION_TOKEN_ONLY:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist genException(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;
    .registers 4

    .line 57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " in \'"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "\'"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist isAlNum(C)Z
    .registers 2

    .line 49
    invoke-static {p0}, Landroid/database/sqlite/SQLiteTokenizer;->isAlpha(C)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {p0}, Landroid/database/sqlite/SQLiteTokenizer;->isNum(C)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method private static blacklist isAlpha(C)Z
    .registers 2

    .line 41
    const/16 v0, 0x61

    if-gt v0, p0, :cond_8

    const/16 v0, 0x7a

    if-le p0, v0, :cond_14

    :cond_8
    const/16 v0, 0x41

    if-gt v0, p0, :cond_10

    const/16 v0, 0x5a

    if-le p0, v0, :cond_14

    :cond_10
    const/16 v0, 0x5f

    if-ne p0, v0, :cond_16

    :cond_14
    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method private static blacklist isAnyOf(CLjava/lang/String;)Z
    .registers 2

    .line 53
    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-ltz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public static blacklist isFunction(Ljava/lang/String;)Z
    .registers 4

    .line 264
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_1aa

    :cond_f
    goto/16 :goto_1a3

    :sswitch_11
    const-string/jumbo v0, "replace"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x15

    goto/16 :goto_1a4

    :sswitch_1e
    const-string/jumbo v0, "zeroblob"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x20

    goto/16 :goto_1a4

    :sswitch_2b
    const-string/jumbo v0, "randomblob"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x14

    goto/16 :goto_1a4

    :sswitch_38
    const-string/jumbo v0, "upper"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x1f

    goto/16 :goto_1a4

    :sswitch_45
    const-string/jumbo v0, "total"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x1a

    goto/16 :goto_1a4

    :sswitch_52
    const-string/jumbo v0, "rtrim"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x17

    goto/16 :goto_1a4

    :sswitch_5f
    const-string/jumbo v0, "round"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x16

    goto/16 :goto_1a4

    :sswitch_6c
    const-string/jumbo v0, "ltrim"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0xf

    goto/16 :goto_1a4

    :sswitch_79
    const-string/jumbo v0, "lower"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0xe

    goto/16 :goto_1a4

    :sswitch_86
    const-string v0, "instr"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x9

    goto/16 :goto_1a4

    :sswitch_92
    const-string v0, "count"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/4 p0, 0x4

    goto/16 :goto_1a4

    :sswitch_9d
    const-string/jumbo v0, "trim"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x1b

    goto/16 :goto_1a4

    :sswitch_aa
    const-string/jumbo v0, "like"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0xb

    goto/16 :goto_1a4

    :sswitch_b7
    const-string v0, "glob"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/4 p0, 0x5

    goto/16 :goto_1a4

    :sswitch_c2
    const-string v0, "char"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/4 p0, 0x2

    goto/16 :goto_1a4

    :sswitch_cd
    const-string/jumbo v0, "sum"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x19

    goto/16 :goto_1a4

    :sswitch_da
    const-string/jumbo v0, "min"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x11

    goto/16 :goto_1a4

    :sswitch_e7
    const-string/jumbo v0, "max"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x10

    goto/16 :goto_1a4

    :sswitch_f4
    const-string v0, "hex"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/4 p0, 0x7

    goto/16 :goto_1a4

    :sswitch_ff
    const-string v0, "avg"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    move p0, v2

    goto/16 :goto_1a4

    :sswitch_10a
    const-string v0, "abs"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    move p0, v1

    goto/16 :goto_1a4

    :sswitch_115
    const-string/jumbo v0, "unlikely"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x1e

    goto/16 :goto_1a4

    :sswitch_122
    const-string/jumbo v0, "unicode"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x1d

    goto/16 :goto_1a4

    :sswitch_12f
    const-string/jumbo v0, "likelihood"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0xc

    goto/16 :goto_1a4

    :sswitch_13c
    const-string v0, "group_concat"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/4 p0, 0x6

    goto :goto_1a4

    :sswitch_146
    const-string/jumbo v0, "typeof"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x1c

    goto :goto_1a4

    :sswitch_152
    const-string/jumbo v0, "substr"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x18

    goto :goto_1a4

    :sswitch_15e
    const-string/jumbo v0, "random"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x13

    goto :goto_1a4

    :sswitch_16a
    const-string v0, "coalesce"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/4 p0, 0x3

    goto :goto_1a4

    :sswitch_174
    const-string/jumbo v0, "nullif"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x12

    goto :goto_1a4

    :sswitch_180
    const-string/jumbo v0, "likely"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0xd

    goto :goto_1a4

    :sswitch_18c
    const-string/jumbo v0, "length"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0xa

    goto :goto_1a4

    :sswitch_198
    const-string v0, "ifnull"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x8

    goto :goto_1a4

    :goto_1a3
    const/4 p0, -0x1

    :goto_1a4
    packed-switch p0, :pswitch_data_230

    .line 276
    return v1

    .line 274
    :pswitch_1a8
    return v2

    nop

    :sswitch_data_1aa
    .sparse-switch
        -0x470203dc -> :sswitch_198
        -0x41f1c51a -> :sswitch_18c
        -0x41bacc9c -> :sswitch_180
        -0x3da7731c -> :sswitch_174
        -0x38705059 -> :sswitch_16a
        -0x37ed1b3d -> :sswitch_15e
        -0x3523a80f -> :sswitch_152
        -0x3330496f -> :sswitch_146
        -0x275cff2c -> :sswitch_13c
        -0x18bba190 -> :sswitch_12f
        -0x111b8523 -> :sswitch_122
        -0xce3d4c3 -> :sswitch_115
        0x17872 -> :sswitch_10a
        0x17ad2 -> :sswitch_ff
        0x1931b -> :sswitch_f4
        0x1a564 -> :sswitch_e7
        0x1a652 -> :sswitch_da
        0x1be4b -> :sswitch_cd
        0x2e9356 -> :sswitch_c2
        0x307578 -> :sswitch_b7
        0x32af97 -> :sswitch_aa
        0x367422 -> :sswitch_9d
        0x5a7510f -> :sswitch_92
        0x5fb62ec -> :sswitch_86
        0x6262b01 -> :sswitch_79
        0x6285e8e -> :sswitch_6c
        0x67ab18e -> :sswitch_5f
        0x67ceb94 -> :sswitch_52
        0x696db44 -> :sswitch_45
        0x6a558a2 -> :sswitch_38
        0x6eafae0 -> :sswitch_2b
        0x28f79a45 -> :sswitch_1e
        0x413cb2b4 -> :sswitch_11
    .end sparse-switch

    :pswitch_data_230
    .packed-switch 0x0
        :pswitch_1a8
        :pswitch_1a8
        :pswitch_1a8
        :pswitch_1a8
        :pswitch_1a8
        :pswitch_1a8
        :pswitch_1a8
        :pswitch_1a8
        :pswitch_1a8
        :pswitch_1a8
        :pswitch_1a8
        :pswitch_1a8
        :pswitch_1a8
        :pswitch_1a8
        :pswitch_1a8
        :pswitch_1a8
        :pswitch_1a8
        :pswitch_1a8
        :pswitch_1a8
        :pswitch_1a8
        :pswitch_1a8
        :pswitch_1a8
        :pswitch_1a8
        :pswitch_1a8
        :pswitch_1a8
        :pswitch_1a8
        :pswitch_1a8
        :pswitch_1a8
        :pswitch_1a8
        :pswitch_1a8
        :pswitch_1a8
        :pswitch_1a8
        :pswitch_1a8
    .end packed-switch
.end method

.method public static blacklist isKeyword(Ljava/lang/String;)Z
    .registers 4

    .line 215
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_6ba

    :cond_f
    goto/16 :goto_6b4

    :sswitch_11
    const-string v0, "HAVING"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x3d

    goto/16 :goto_6b5

    :sswitch_1d
    const-string v0, "GROUPS"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x3c

    goto/16 :goto_6b5

    :sswitch_29
    const-string v0, "FILTER"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x34

    goto/16 :goto_6b5

    :sswitch_35
    const-string v0, "WITHOUT"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x8e

    goto/16 :goto_6b5

    :sswitch_41
    const-string v0, "EXISTS"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x31

    goto/16 :goto_6b5

    :sswitch_4d
    const-string v0, "EXCEPT"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x2e

    goto/16 :goto_6b5

    :sswitch_59
    const-string v0, "ESCAPE"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x2d

    goto/16 :goto_6b5

    :sswitch_65
    const-string v0, "DETACH"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x26

    goto/16 :goto_6b5

    :sswitch_71
    const-string v0, "DELETE"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x24

    goto/16 :goto_6b5

    :sswitch_7d
    const-string v0, "CREATE"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x1a

    goto/16 :goto_6b5

    :sswitch_89
    const-string v0, "COMMIT"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x17

    goto/16 :goto_6b5

    :sswitch_95
    const-string v0, "COLUMN"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x16

    goto/16 :goto_6b5

    :sswitch_a1
    const-string v0, "BINARY"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0xf

    goto/16 :goto_6b5

    :sswitch_ad
    const-string v0, "BEFORE"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0xc

    goto/16 :goto_6b5

    :sswitch_b9
    const-string v0, "ATTACH"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0xa

    goto/16 :goto_6b5

    :sswitch_c5
    const-string v0, "ACTION"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    move p0, v2

    goto/16 :goto_6b5

    :sswitch_d0
    const-string v0, "REFERENCES"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x6a

    goto/16 :goto_6b5

    :sswitch_dc
    const-string v0, "CURRENT"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x1c

    goto/16 :goto_6b5

    :sswitch_e8
    const-string v0, "REPLACE"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x6f

    goto/16 :goto_6b5

    :sswitch_f4
    const-string v0, "RELEASE"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x6d

    goto/16 :goto_6b5

    :sswitch_100
    const-string v0, "REINDEX"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x6c

    goto/16 :goto_6b5

    :sswitch_10c
    const-string v0, "COLLATE"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x15

    goto/16 :goto_6b5

    :sswitch_118
    const-string v0, "DEFERRED"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x23

    goto/16 :goto_6b5

    :sswitch_124
    const-string v0, "PRECEDING"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x64

    goto/16 :goto_6b5

    :sswitch_130
    const-string v0, "CASCADE"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x11

    goto/16 :goto_6b5

    :sswitch_13c
    const-string v0, "VIRTUAL"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x89

    goto/16 :goto_6b5

    :sswitch_148
    const-string v0, "DISTINCT"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x27

    goto/16 :goto_6b5

    :sswitch_154
    const-string v0, "PARTITION"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x61

    goto/16 :goto_6b5

    :sswitch_160
    const-string v0, "ROLLBACK"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x72

    goto/16 :goto_6b5

    :sswitch_16c
    const-string v0, "BETWEEN"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0xe

    goto/16 :goto_6b5

    :sswitch_178
    const-string v0, "TEMPORARY"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x7b

    goto/16 :goto_6b5

    :sswitch_184
    const-string v0, "RESTRICT"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x70

    goto/16 :goto_6b5

    :sswitch_190
    const-string v0, "PRIMARY"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x65

    goto/16 :goto_6b5

    :sswitch_19c
    const-string v0, "DEFERRABLE"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x22

    goto/16 :goto_6b5

    :sswitch_1a8
    const-string v0, "CONSTRAINT"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x19

    goto/16 :goto_6b5

    :sswitch_1b4
    const-string v0, "UNBOUNDED"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x81

    goto/16 :goto_6b5

    :sswitch_1c0
    const-string v0, "CONFLICT"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x18

    goto/16 :goto_6b5

    :sswitch_1cc
    const-string v0, "EXCLUSIVE"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x30

    goto/16 :goto_6b5

    :sswitch_1d8
    const-string v0, "WHERE"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x8b

    goto/16 :goto_6b5

    :sswitch_1e4
    const-string v0, "USING"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x85

    goto/16 :goto_6b5

    :sswitch_1f0
    const-string v0, "UNION"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x82

    goto/16 :goto_6b5

    :sswitch_1fc
    const-string v0, "TABLE"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x79

    goto/16 :goto_6b5

    :sswitch_208
    const-string v0, "RTRIM"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x75

    goto/16 :goto_6b5

    :sswitch_214
    const-string v0, "RIGHT"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x71

    goto/16 :goto_6b5

    :sswitch_220
    const-string v0, "RANGE"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x68

    goto/16 :goto_6b5

    :sswitch_22c
    const-string v0, "RAISE"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x67

    goto/16 :goto_6b5

    :sswitch_238
    const-string v0, "QUERY"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x66

    goto/16 :goto_6b5

    :sswitch_244
    const-string v0, "OUTER"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x5f

    goto/16 :goto_6b5

    :sswitch_250
    const-string v0, "ORDER"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x5d

    goto/16 :goto_6b5

    :sswitch_25c
    const-string v0, "MATCH"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x51

    goto/16 :goto_6b5

    :sswitch_268
    const-string v0, "LIMIT"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x50

    goto/16 :goto_6b5

    :sswitch_274
    const-string v0, "INNER"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x45

    goto/16 :goto_6b5

    :sswitch_280
    const-string v0, "INDEX"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x42

    goto/16 :goto_6b5

    :sswitch_28c
    const-string v0, "GROUP"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x3b

    goto/16 :goto_6b5

    :sswitch_298
    const-string v0, "CROSS"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x1b

    goto/16 :goto_6b5

    :sswitch_2a4
    const-string v0, "CHECK"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x14

    goto/16 :goto_6b5

    :sswitch_2b0
    const-string v0, "BEGIN"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0xd

    goto/16 :goto_6b5

    :sswitch_2bc
    const-string v0, "ALTER"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/4 p0, 0x5

    goto/16 :goto_6b5

    :sswitch_2c7
    const-string v0, "AFTER"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/4 p0, 0x3

    goto/16 :goto_6b5

    :sswitch_2d2
    const-string v0, "ABORT"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    move p0, v1

    goto/16 :goto_6b5

    :sswitch_2dd
    const-string v0, "FOREIGN"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x37

    goto/16 :goto_6b5

    :sswitch_2e9
    const-string v0, "WITH"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x8d

    goto/16 :goto_6b5

    :sswitch_2f5
    const-string v0, "WHEN"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x8a

    goto/16 :goto_6b5

    :sswitch_301
    const-string v0, "VIEW"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x88

    goto/16 :goto_6b5

    :sswitch_30d
    const-string v0, "TIES"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x7d

    goto/16 :goto_6b5

    :sswitch_319
    const-string v0, "THEN"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x7c

    goto/16 :goto_6b5

    :sswitch_325
    const-string v0, "TEMP"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x7a

    goto/16 :goto_6b5

    :sswitch_331
    const-string v0, "ROWS"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x74

    goto/16 :goto_6b5

    :sswitch_33d
    const-string v0, "PLAN"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x62

    goto/16 :goto_6b5

    :sswitch_349
    const-string v0, "OVER"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x60

    goto/16 :goto_6b5

    :sswitch_355
    const-string v0, "NULL"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x58

    goto/16 :goto_6b5

    :sswitch_361
    const-string v0, "LIKE"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x4f

    goto/16 :goto_6b5

    :sswitch_36d
    const-string v0, "LEFT"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x4e

    goto/16 :goto_6b5

    :sswitch_379
    const-string v0, "JOIN"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x4c

    goto/16 :goto_6b5

    :sswitch_385
    const-string v0, "INTO"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x49

    goto/16 :goto_6b5

    :sswitch_391
    const-string v0, "GLOB"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x3a

    goto/16 :goto_6b5

    :sswitch_39d
    const-string v0, "FULL"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x39

    goto/16 :goto_6b5

    :sswitch_3a9
    const-string v0, "FROM"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x38

    goto/16 :goto_6b5

    :sswitch_3b5
    const-string v0, "FAIL"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x33

    goto/16 :goto_6b5

    :sswitch_3c1
    const-string v0, "ELSE"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x2b

    goto/16 :goto_6b5

    :sswitch_3cd
    const-string v0, "EACH"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x2a

    goto/16 :goto_6b5

    :sswitch_3d9
    const-string v0, "DROP"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x29

    goto/16 :goto_6b5

    :sswitch_3e5
    const-string v0, "DESC"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x25

    goto/16 :goto_6b5

    :sswitch_3f1
    const-string v0, "CAST"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x13

    goto/16 :goto_6b5

    :sswitch_3fd
    const-string v0, "CASE"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x12

    goto/16 :goto_6b5

    :sswitch_409
    const-string v0, "SET"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x78

    goto/16 :goto_6b5

    :sswitch_415
    const-string v0, "ROW"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x73

    goto/16 :goto_6b5

    :sswitch_421
    const-string v0, "NOT"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x55

    goto/16 :goto_6b5

    :sswitch_42d
    const-string v0, "KEY"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x4d

    goto/16 :goto_6b5

    :sswitch_439
    const-string v0, "FOR"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x36

    goto/16 :goto_6b5

    :sswitch_445
    const-string v0, "END"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x2c

    goto/16 :goto_6b5

    :sswitch_451
    const-string v0, "ASC"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x9

    goto/16 :goto_6b5

    :sswitch_45d
    const-string v0, "AND"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/4 p0, 0x7

    goto/16 :goto_6b5

    :sswitch_468
    const-string v0, "ALL"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/4 p0, 0x4

    goto/16 :goto_6b5

    :sswitch_473
    const-string v0, "ADD"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/4 p0, 0x2

    goto/16 :goto_6b5

    :sswitch_47e
    const-string v0, "TO"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x7e

    goto/16 :goto_6b5

    :sswitch_48a
    const-string v0, "OR"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x5c

    goto/16 :goto_6b5

    :sswitch_496
    const-string v0, "ON"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x5b

    goto/16 :goto_6b5

    :sswitch_4a2
    const-string v0, "OF"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x59

    goto/16 :goto_6b5

    :sswitch_4ae
    const-string v0, "NO"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x53

    goto/16 :goto_6b5

    :sswitch_4ba
    const-string v0, "IS"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x4a

    goto/16 :goto_6b5

    :sswitch_4c6
    const-string v0, "IN"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x41

    goto/16 :goto_6b5

    :sswitch_4d2
    const-string v0, "IF"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x3e

    goto/16 :goto_6b5

    :sswitch_4de
    const-string v0, "DO"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x28

    goto/16 :goto_6b5

    :sswitch_4ea
    const-string v0, "BY"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x10

    goto/16 :goto_6b5

    :sswitch_4f6
    const-string v0, "AS"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x8

    goto/16 :goto_6b5

    :sswitch_502
    const-string v0, "TRANSACTION"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x7f

    goto/16 :goto_6b5

    :sswitch_50e
    const-string v0, "ANALYZE"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/4 p0, 0x6

    goto/16 :goto_6b5

    :sswitch_519
    const-string v0, "CURRENT_TIMESTAMP"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x1f

    goto/16 :goto_6b5

    :sswitch_525
    const-string v0, "TRIGGER"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x80

    goto/16 :goto_6b5

    :sswitch_531
    const-string v0, "RECURSIVE"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x69

    goto/16 :goto_6b5

    :sswitch_53d
    const-string v0, "IMMEDIATE"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x40

    goto/16 :goto_6b5

    :sswitch_549
    const-string v0, "CURRENT_TIME"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x1e

    goto/16 :goto_6b5

    :sswitch_555
    const-string v0, "CURRENT_DATE"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x1d

    goto/16 :goto_6b5

    :sswitch_561
    const-string v0, "EXPLAIN"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x32

    goto/16 :goto_6b5

    :sswitch_56d
    const-string v0, "EXCLUDE"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x2f

    goto/16 :goto_6b5

    :sswitch_579
    const-string v0, "FOLLOWING"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x35

    goto/16 :goto_6b5

    :sswitch_585
    const-string v0, "INTERSECT"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x48

    goto/16 :goto_6b5

    :sswitch_591
    const-string v0, "SAVEPOINT"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x76

    goto/16 :goto_6b5

    :sswitch_59d
    const-string v0, "AUTOINCREMENT"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0xb

    goto/16 :goto_6b5

    :sswitch_5a9
    const-string v0, "NOTNULL"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x57

    goto/16 :goto_6b5

    :sswitch_5b5
    const-string v0, "NOTHING"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x56

    goto/16 :goto_6b5

    :sswitch_5c1
    const-string v0, "INSTEAD"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x47

    goto/16 :goto_6b5

    :sswitch_5cd
    const-string v0, "INDEXED"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x43

    goto/16 :goto_6b5

    :sswitch_5d9
    const-string v0, "DATABASE"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x20

    goto/16 :goto_6b5

    :sswitch_5e5
    const-string v0, "WINDOW"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x8c

    goto/16 :goto_6b5

    :sswitch_5f1
    const-string v0, "INITIALLY"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x44

    goto/16 :goto_6b5

    :sswitch_5fd
    const-string v0, "VALUES"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x87

    goto/16 :goto_6b5

    :sswitch_609
    const-string v0, "VACUUM"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x86

    goto/16 :goto_6b5

    :sswitch_615
    const-string v0, "UPDATE"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x84

    goto/16 :goto_6b5

    :sswitch_621
    const-string v0, "UNIQUE"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x83

    goto/16 :goto_6b5

    :sswitch_62d
    const-string v0, "NATURAL"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x52

    goto/16 :goto_6b5

    :sswitch_639
    const-string v0, "SELECT"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x77

    goto/16 :goto_6b5

    :sswitch_645
    const-string v0, "RENAME"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x6e

    goto/16 :goto_6b5

    :sswitch_651
    const-string v0, "REGEXP"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x6b

    goto :goto_6b5

    :sswitch_65c
    const-string v0, "PRAGMA"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x63

    goto :goto_6b5

    :sswitch_667
    const-string v0, "OTHERS"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x5e

    goto :goto_6b5

    :sswitch_672
    const-string v0, "OFFSET"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x5a

    goto :goto_6b5

    :sswitch_67d
    const-string v0, "NOCASE"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x54

    goto :goto_6b5

    :sswitch_688
    const-string v0, "DEFAULT"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x21

    goto :goto_6b5

    :sswitch_693
    const-string v0, "ISNULL"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x4b

    goto :goto_6b5

    :sswitch_69e
    const-string v0, "INSERT"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x46

    goto :goto_6b5

    :sswitch_6a9
    const-string v0, "IGNORE"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x3f

    goto :goto_6b5

    :goto_6b4
    const/4 p0, -0x1

    :goto_6b5
    packed-switch p0, :pswitch_data_8f8

    .line 254
    return v1

    .line 252
    :pswitch_6b9
    return v2

    :sswitch_data_6ba
    .sparse-switch
        -0x7f610e2e -> :sswitch_6a9
        -0x7efc4947 -> :sswitch_69e
        -0x7eb7de4f -> :sswitch_693
        -0x79209ddf -> :sswitch_688
        -0x766d4b8f -> :sswitch_67d
        -0x7535a76d -> :sswitch_672
        -0x746fa89d -> :sswitch_667
        -0x72da26c4 -> :sswitch_65c
        -0x7024f2f7 -> :sswitch_651
        -0x7021d4c2 -> :sswitch_645
        -0x6e6dd704 -> :sswitch_639
        -0x6e275bf7 -> :sswitch_62d
        -0x6a86802f -> :sswitch_621
        -0x6a6cd337 -> :sswitch_615
        -0x698b844b -> :sswitch_609
        -0x69876ede -> :sswitch_5fd
        -0x68bf4c4f -> :sswitch_5f1
        -0x67613010 -> :sswitch_5e5
        -0x66b0fe85 -> :sswitch_5d9
        -0x61602b2f -> :sswitch_5cd
        -0x608640de -> :sswitch_5c1
        -0x56498c53 -> :sswitch_5b5
        -0x5646a546 -> :sswitch_5a9
        -0x4ecc4580 -> :sswitch_59d
        -0x4e00f5ed -> :sswitch_591
        -0x3bec8b01 -> :sswitch_585
        -0x2c40fd8f -> :sswitch_579
        -0x23f39646 -> :sswitch_56d
        -0x233caf29 -> :sswitch_561
        -0x1c97b92c -> :sswitch_555
        -0x1c90560d -> :sswitch_549
        -0x16e3386f -> :sswitch_53d
        -0x146b8bee -> :sswitch_531
        -0x14611e68 -> :sswitch_525
        -0xfab9e70 -> :sswitch_519
        -0x8b916d4 -> :sswitch_50e
        -0xb9942 -> :sswitch_502
        0x832 -> :sswitch_4f6
        0x857 -> :sswitch_4ea
        0x88b -> :sswitch_4de
        0x91d -> :sswitch_4d2
        0x925 -> :sswitch_4c6
        0x92a -> :sswitch_4ba
        0x9c1 -> :sswitch_4ae
        0x9d7 -> :sswitch_4a2
        0x9df -> :sswitch_496
        0x9e3 -> :sswitch_48a
        0xa7b -> :sswitch_47e
        0xfc81 -> :sswitch_473
        0xfd81 -> :sswitch_468
        0xfdb7 -> :sswitch_45d
        0xfe51 -> :sswitch_451
        0x10cbb -> :sswitch_445
        0x110a9 -> :sswitch_439
        0x1223f -> :sswitch_42d
        0x12eb3 -> :sswitch_421
        0x13dba -> :sswitch_415
        0x14042 -> :sswitch_409
        0x1f7330 -> :sswitch_3fd
        0x1f733f -> :sswitch_3f1
        0x1ff691 -> :sswitch_3e5
        0x2026ef -> :sswitch_3d9
        0x205a01 -> :sswitch_3cd
        0x208539 -> :sswitch_3c1
        0x20cf1e -> :sswitch_3b5
        0x210faa -> :sswitch_3a9
        0x211a8f -> :sswitch_39d
        0x216d78 -> :sswitch_391
        0x225e60 -> :sswitch_385
        0x22d52a -> :sswitch_379
        0x239807 -> :sswitch_36d
        0x23a797 -> :sswitch_361
        0x24bd87 -> :sswitch_355
        0x2534d4 -> :sswitch_349
        0x258329 -> :sswitch_33d
        0x2679d9 -> :sswitch_331
        0x273bd4 -> :sswitch_325
        0x27461d -> :sswitch_319
        0x2749e3 -> :sswitch_30d
        0x2832a5 -> :sswitch_301
        0x28a33a -> :sswitch_2f5
        0x28a8c6 -> :sswitch_2e9
        0x2670cb4 -> :sswitch_2dd
        0x3b32b10 -> :sswitch_2d2
        0x3b50dbc -> :sswitch_2c7
        0x3b7c7f6 -> :sswitch_2bc
        0x3c28089 -> :sswitch_2b0
        0x3d1ece8 -> :sswitch_2a4
        0x3d6a020 -> :sswitch_298
        0x40efe5f -> :sswitch_28c
        0x42930b2 -> :sswitch_280
        0x4295636 -> :sswitch_274
        0x451539b -> :sswitch_268
        0x45be1a5 -> :sswitch_25c
        0x47f8f2e -> :sswitch_250
        0x481285b -> :sswitch_244
        0x49d20a8 -> :sswitch_238
        0x4a22fcc -> :sswitch_22c
        0x4a2411d -> :sswitch_220
        0x4a5c9fc -> :sswitch_214
        0x4aaf374 -> :sswitch_208
        0x4be43ae -> :sswitch_1fc
        0x4d25eaf -> :sswitch_1f0
        0x4d4a464 -> :sswitch_1e4
        0x4ebc4c7 -> :sswitch_1d8
        0xa9fce7e -> :sswitch_1cc
        0xc131bd2 -> :sswitch_1c0
        0x1050f1c4 -> :sswitch_1b4
        0x119101dd -> :sswitch_1a8
        0x1423ac9a -> :sswitch_19c
        0x180899e2 -> :sswitch_190
        0x1a96aabc -> :sswitch_184
        0x1c688e31 -> :sswitch_178
        0x1de1f7e8 -> :sswitch_16c
        0x1f2aeee4 -> :sswitch_160
        0x3ad122ca -> :sswitch_154
        0x3fdb1efc -> :sswitch_148
        0x4694aaeb -> :sswitch_13c
        0x4bdd9294 -> :sswitch_130
        0x53d214a3 -> :sswitch_124
        0x5543f7df -> :sswitch_118
        0x6362e006 -> :sswitch_10c
        0x6ba68e5f -> :sswitch_100
        0x6bccb3e7 -> :sswitch_f4
        0x6c083e94 -> :sswitch_e8
        0x6df74959 -> :sswitch_dc
        0x6f769688 -> :sswitch_d0
        0x72c27236 -> :sswitch_c5
        0x73b1e245 -> :sswitch_b9
        0x748d337f -> :sswitch_ad
        0x74c90001 -> :sswitch_a1
        0x76d1c756 -> :sswitch_95
        0x76d21d37 -> :sswitch_89
        0x76f894fc -> :sswitch_7d
        0x77f979ab -> :sswitch_71
        0x77fd0b93 -> :sswitch_65
        0x7a6f7481 -> :sswitch_59
        0x7ab5f919 -> :sswitch_4d
        0x7ab8e85c -> :sswitch_41
        0x7b918ca8 -> :sswitch_35
        0x7b9bbf78 -> :sswitch_29
        0x7dd0cdd4 -> :sswitch_1d
        0x7e991825 -> :sswitch_11
    .end sparse-switch

    :pswitch_data_8f8
    .packed-switch 0x0
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
        :pswitch_6b9
    .end packed-switch
.end method

.method private static blacklist isNum(C)Z
    .registers 2

    .line 45
    const/16 v0, 0x30

    if-gt v0, p0, :cond_a

    const/16 v0, 0x39

    if-gt p0, v0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public static blacklist isType(Ljava/lang/String;)Z
    .registers 4

    .line 285
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_11a

    :cond_f
    goto/16 :goto_114

    :sswitch_11
    const-string v0, "DOUBLE"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x10

    goto/16 :goto_115

    :sswitch_1d
    const-string v0, "BIGINT"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/4 p0, 0x5

    goto/16 :goto_115

    :sswitch_28
    const-string v0, "VARCHAR"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x9

    goto/16 :goto_115

    :sswitch_34
    const-string v0, "BOOLEAN"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x14

    goto/16 :goto_115

    :sswitch_40
    const-string v0, "MEDIUMINT"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/4 p0, 0x4

    goto/16 :goto_115

    :sswitch_4b
    const-string v0, "SMALLINT"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/4 p0, 0x3

    goto/16 :goto_115

    :sswitch_56
    const-string v0, "NCHAR"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0xa

    goto/16 :goto_115

    :sswitch_62
    const-string v0, "FLOAT"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x11

    goto/16 :goto_115

    :sswitch_6e
    const-string v0, "CHARACTER"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x8

    goto/16 :goto_115

    :sswitch_7a
    const-string v0, "TEXT"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0xc

    goto/16 :goto_115

    :sswitch_86
    const-string v0, "REAL"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0xf

    goto/16 :goto_115

    :sswitch_92
    const-string v0, "INT8"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/4 p0, 0x7

    goto/16 :goto_115

    :sswitch_9d
    const-string v0, "INT2"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/4 p0, 0x6

    goto/16 :goto_115

    :sswitch_a8
    const-string v0, "DATE"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x15

    goto/16 :goto_115

    :sswitch_b4
    const-string v0, "CLOB"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0xd

    goto :goto_115

    :sswitch_bf
    const-string v0, "BLOB"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0xe

    goto :goto_115

    :sswitch_ca
    const-string v0, "INT"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    move p0, v1

    goto :goto_115

    :sswitch_d4
    const-string v0, "NVARCHAR"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0xb

    goto :goto_115

    :sswitch_df
    const-string v0, "TINYINT"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/4 p0, 0x2

    goto :goto_115

    :sswitch_e9
    const-string v0, "NUMERIC"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x12

    goto :goto_115

    :sswitch_f4
    const-string v0, "INTEGER"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    move p0, v2

    goto :goto_115

    :sswitch_fe
    const-string v0, "DATETIME"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x16

    goto :goto_115

    :sswitch_109
    const-string v0, "DECIMAL"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x13

    goto :goto_115

    :goto_114
    const/4 p0, -0x1

    :goto_115
    packed-switch p0, :pswitch_data_178

    .line 294
    return v1

    .line 292
    :pswitch_119
    return v2

    :sswitch_data_11a
    .sparse-switch
        -0x794760cf -> :sswitch_109
        -0x66705485 -> :sswitch_fe
        -0x607ef2e2 -> :sswitch_f4
        -0x4c705913 -> :sswitch_e9
        -0x236e0f31 -> :sswitch_df
        -0x207e5931 -> :sswitch_d4
        0x11bcf -> :sswitch_ca
        0x1f279d -> :sswitch_bf
        0x1f9bfc -> :sswitch_b4
        0x1fe7ae -> :sswitch_a8
        0x225e43 -> :sswitch_9d
        0x225e49 -> :sswitch_92
        0x26519e -> :sswitch_86
        0x273d2d -> :sswitch_7a
        0x353cb09 -> :sswitch_6e
        0x3fe2a3c -> :sswitch_62
        0x46ab4a4 -> :sswitch_56
        0xa7f0188 -> :sswitch_4b
        0x26d1e83a -> :sswitch_40
        0x2ea6f808 -> :sswitch_34
        0x38e5fadd -> :sswitch_28
        0x74c5eeef -> :sswitch_1d
        0x788a6fd1 -> :sswitch_11
    .end sparse-switch

    :pswitch_data_178
    .packed-switch 0x0
        :pswitch_119
        :pswitch_119
        :pswitch_119
        :pswitch_119
        :pswitch_119
        :pswitch_119
        :pswitch_119
        :pswitch_119
        :pswitch_119
        :pswitch_119
        :pswitch_119
        :pswitch_119
        :pswitch_119
        :pswitch_119
        :pswitch_119
        :pswitch_119
        :pswitch_119
        :pswitch_119
        :pswitch_119
        :pswitch_119
        :pswitch_119
        :pswitch_119
        :pswitch_119
    .end packed-switch
.end method

.method private static blacklist peek(Ljava/lang/String;I)C
    .registers 3

    .line 61
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_b

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method public static blacklist tokenize(Ljava/lang/String;I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 79
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/database/sqlite/SQLiteTokenizer$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Landroid/database/sqlite/SQLiteTokenizer$$ExternalSyntheticLambda0;-><init>(Ljava/util/ArrayList;)V

    invoke-static {p0, p1, v1}, Landroid/database/sqlite/SQLiteTokenizer;->tokenize(Ljava/lang/String;ILjava/util/function/Consumer;)V

    .line 80
    return-object v0
.end method

.method public static blacklist tokenize(Ljava/lang/String;ILjava/util/function/Consumer;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 90
    if-nez p0, :cond_3

    .line 91
    return-void

    .line 93
    :cond_3
    nop

    .line 94
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    .line 95
    :goto_9
    if-ge v1, v0, :cond_110

    .line 96
    invoke-static {p0, v1}, Landroid/database/sqlite/SQLiteTokenizer;->peek(Ljava/lang/String;I)C

    move-result v2

    .line 99
    invoke-static {v2}, Landroid/database/sqlite/SQLiteTokenizer;->isAlpha(C)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 100
    nop

    .line 101
    add-int/lit8 v2, v1, 0x1

    .line 102
    :goto_18
    invoke-static {p0, v2}, Landroid/database/sqlite/SQLiteTokenizer;->peek(Ljava/lang/String;I)C

    move-result v3

    invoke-static {v3}, Landroid/database/sqlite/SQLiteTokenizer;->isAlNum(C)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 103
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 105
    :cond_25
    nop

    .line 107
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 108
    invoke-interface {p2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 110
    move v1, v2

    goto :goto_9

    .line 114
    :cond_2f
    const-string v3, "\'\"`"

    invoke-static {v2, v3}, Landroid/database/sqlite/SQLiteTokenizer;->isAnyOf(CLjava/lang/String;)Z

    move-result v3

    const-string v4, "Unterminated quote"

    const-string v5, "Non-token detected"

    if-eqz v3, :cond_95

    .line 115
    nop

    .line 116
    add-int/lit8 v1, v1, 0x1

    move v3, v1

    .line 119
    :goto_3f
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 120
    if-ltz v3, :cond_90

    .line 123
    add-int/lit8 v6, v3, 0x1

    invoke-static {p0, v6}, Landroid/database/sqlite/SQLiteTokenizer;->peek(Ljava/lang/String;I)C

    move-result v7

    if-eq v7, v2, :cond_8d

    .line 124
    nop

    .line 129
    nop

    .line 130
    nop

    .line 132
    const/16 v4, 0x27

    if-eq v2, v4, :cond_82

    .line 134
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 139
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_7c

    .line 140
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    .line 140
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_7d

    .line 143
    :cond_7c
    nop

    .line 145
    :goto_7d
    invoke-interface {p2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 146
    move v1, v6

    goto :goto_9

    .line 147
    :cond_82
    and-int/lit8 p1, p1, 0x1

    if-nez p1, :cond_88

    move v1, v6

    goto :goto_9

    .line 148
    :cond_88
    invoke-static {v5, p0}, Landroid/database/sqlite/SQLiteTokenizer;->genException(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    .line 127
    :cond_8d
    add-int/lit8 v3, v3, 0x2

    goto :goto_3f

    .line 121
    :cond_90
    invoke-static {v4, p0}, Landroid/database/sqlite/SQLiteTokenizer;->genException(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    .line 154
    :cond_95
    const/16 v3, 0x5b

    if-ne v2, v3, :cond_b6

    .line 155
    nop

    .line 156
    add-int/lit8 v1, v1, 0x1

    .line 158
    const/16 v2, 0x5d

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 159
    if-ltz v2, :cond_b1

    .line 162
    nop

    .line 163
    add-int/lit8 v3, v2, 0x1

    .line 165
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 167
    invoke-interface {p2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 168
    move v1, v3

    goto/16 :goto_9

    .line 160
    :cond_b1
    invoke-static {v4, p0}, Landroid/database/sqlite/SQLiteTokenizer;->genException(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    .line 170
    :cond_b6
    and-int/lit8 p1, p1, 0x1

    if-nez p1, :cond_10b

    .line 175
    const-string v3, "Unterminated comment"

    const/16 v4, 0x2d

    if-ne v2, v4, :cond_db

    add-int/lit8 v5, v1, 0x1

    invoke-static {p0, v5}, Landroid/database/sqlite/SQLiteTokenizer;->peek(Ljava/lang/String;I)C

    move-result v5

    if-ne v5, v4, :cond_db

    .line 176
    add-int/lit8 v1, v1, 0x2

    .line 177
    const/16 v2, 0xa

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 178
    if-ltz v1, :cond_d6

    .line 182
    add-int/lit8 v1, v1, 0x1

    .line 184
    goto/16 :goto_9

    .line 180
    :cond_d6
    invoke-static {v3, p0}, Landroid/database/sqlite/SQLiteTokenizer;->genException(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    .line 186
    :cond_db
    const/16 v4, 0x2f

    if-ne v2, v4, :cond_fc

    add-int/lit8 v4, v1, 0x1

    invoke-static {p0, v4}, Landroid/database/sqlite/SQLiteTokenizer;->peek(Ljava/lang/String;I)C

    move-result v4

    const/16 v5, 0x2a

    if-ne v4, v5, :cond_fc

    .line 187
    add-int/lit8 v1, v1, 0x2

    .line 188
    const-string v2, "*/"

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 189
    if-ltz v1, :cond_f7

    .line 192
    add-int/lit8 v1, v1, 0x2

    .line 194
    goto/16 :goto_9

    .line 190
    :cond_f7
    invoke-static {v3, p0}, Landroid/database/sqlite/SQLiteTokenizer;->genException(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    .line 198
    :cond_fc
    const/16 v3, 0x3b

    if-eq v2, v3, :cond_104

    .line 205
    add-int/lit8 v1, v1, 0x1

    .line 206
    goto/16 :goto_9

    .line 199
    :cond_104
    const-string p1, "Semicolon is not allowed"

    invoke-static {p1, p0}, Landroid/database/sqlite/SQLiteTokenizer;->genException(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    .line 171
    :cond_10b
    invoke-static {v5, p0}, Landroid/database/sqlite/SQLiteTokenizer;->genException(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    .line 207
    :cond_110
    return-void
.end method
