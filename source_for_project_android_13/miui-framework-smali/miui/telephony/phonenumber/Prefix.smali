.class public Lmiui/telephony/phonenumber/Prefix;
.super Ljava/lang/Object;
.source "Prefix.java"


# static fields
.field public static final whitelist EMPTY:Ljava/lang/String; = ""

.field public static final whitelist PREFIX_10193:Ljava/lang/String; = "10193"

.field public static final whitelist PREFIX_11808:Ljava/lang/String; = "11808"

.field public static final whitelist PREFIX_12520:Ljava/lang/String; = "12520"

.field public static final whitelist PREFIX_125831:Ljava/lang/String; = "125831"

.field public static final whitelist PREFIX_125832:Ljava/lang/String; = "125832"

.field public static final whitelist PREFIX_125833:Ljava/lang/String; = "125833"

.field public static final whitelist PREFIX_12593:Ljava/lang/String; = "12593"

.field public static final whitelist PREFIX_17900:Ljava/lang/String; = "17900"

.field public static final whitelist PREFIX_17901:Ljava/lang/String; = "17901"

.field public static final whitelist PREFIX_17908:Ljava/lang/String; = "17908"

.field public static final whitelist PREFIX_17909:Ljava/lang/String; = "17909"

.field public static final whitelist PREFIX_17911:Ljava/lang/String; = "17911"

.field public static final whitelist PREFIX_17950:Ljava/lang/String; = "17950"

.field public static final whitelist PREFIX_17951:Ljava/lang/String; = "17951"

.field public static final whitelist PREFIX_17960:Ljava/lang/String; = "17960"

.field public static final whitelist PREFIX_17961:Ljava/lang/String; = "17961"

.field public static final whitelist PREFIX_17968:Ljava/lang/String; = "17968"

.field public static final whitelist PREFIX_17969:Ljava/lang/String; = "17969"

.field public static final whitelist PREFIX_17990:Ljava/lang/String; = "17990"

.field public static final whitelist PREFIX_17991:Ljava/lang/String; = "17991"

.field public static final whitelist PREFIX_17995:Ljava/lang/String; = "17995"

.field public static final whitelist PREFIX_17996:Ljava/lang/String; = "17996"

.field public static final whitelist SMS_PREFIXES:[Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 34
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lmiui/telephony/phonenumber/Prefix;->SMS_PREFIXES:[Ljava/lang/String;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist isSmsPrefix(Ljava/lang/String;)Z
    .registers 7
    .param p0, "prefix"    # Ljava/lang/String;

    .line 118
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1a

    .line 119
    sget-object v0, Lmiui/telephony/phonenumber/Prefix;->SMS_PREFIXES:[Ljava/lang/String;

    array-length v2, v0

    move v3, v1

    :goto_b
    if-ge v3, v2, :cond_1a

    aget-object v4, v0, v3

    .line 120
    .local v4, "sms":Ljava/lang/String;
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 121
    const/4 v0, 0x1

    return v0

    .line 119
    .end local v4    # "sms":Ljava/lang/String;
    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 125
    :cond_1a
    return v1
.end method

.method public static whitelist parse(Ljava/lang/StringBuffer;II)Ljava/lang/String;
    .registers 11
    .param p0, "buffer"    # Ljava/lang/StringBuffer;
    .param p1, "start"    # I
    .param p2, "length"    # I

    .line 37
    const-string v0, ""

    if-gtz p2, :cond_5

    .line 38
    return-object v0

    .line 41
    :cond_5
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    const/16 v2, 0x31

    const/16 v3, 0x39

    packed-switch v1, :pswitch_data_222

    goto/16 :goto_220

    .line 101
    :pswitch_12
    const/16 v1, 0xa

    if-lt p2, v1, :cond_220

    .line 102
    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    packed-switch v1, :pswitch_data_236

    goto/16 :goto_220

    .line 104
    :pswitch_21
    add-int/lit8 v1, p1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-lt v1, v2, :cond_220

    add-int/lit8 v1, p1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-gt v1, v3, :cond_220

    .line 105
    add-int/lit8 v0, p1, 0x3

    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 43
    :pswitch_38
    const/4 v1, 0x4

    if-le p2, v1, :cond_220

    .line 44
    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    const/16 v4, 0x35

    const/16 v5, 0x33

    const/16 v6, 0x38

    const/16 v7, 0x30

    sparse-switch v1, :sswitch_data_23c

    goto/16 :goto_220

    .line 73
    :sswitch_4e
    add-int/lit8 v1, p1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_220

    .line 74
    add-int/lit8 v1, p1, 0x3

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v7, :cond_69

    add-int/lit8 v1, p1, 0x4

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v7, :cond_69

    const-string v0, "17900"

    return-object v0

    .line 75
    :cond_69
    add-int/lit8 v1, p1, 0x3

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v7, :cond_7c

    add-int/lit8 v1, p1, 0x4

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_7c

    const-string v0, "17901"

    return-object v0

    .line 76
    :cond_7c
    add-int/lit8 v1, p1, 0x3

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v7, :cond_8f

    add-int/lit8 v1, p1, 0x4

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v6, :cond_8f

    const-string v0, "17908"

    return-object v0

    .line 77
    :cond_8f
    add-int/lit8 v1, p1, 0x3

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v7, :cond_a2

    add-int/lit8 v1, p1, 0x4

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_a2

    const-string v0, "17909"

    return-object v0

    .line 78
    :cond_a2
    add-int/lit8 v1, p1, 0x3

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_b5

    add-int/lit8 v1, p1, 0x4

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_b5

    const-string v0, "17911"

    return-object v0

    .line 79
    :cond_b5
    add-int/lit8 v1, p1, 0x3

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_c8

    add-int/lit8 v1, p1, 0x4

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v7, :cond_c8

    const-string v0, "17950"

    return-object v0

    .line 80
    :cond_c8
    add-int/lit8 v1, p1, 0x3

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_db

    add-int/lit8 v1, p1, 0x4

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_db

    const-string v0, "17951"

    return-object v0

    .line 81
    :cond_db
    add-int/lit8 v1, p1, 0x3

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    const/16 v5, 0x36

    if-ne v1, v5, :cond_f0

    add-int/lit8 v1, p1, 0x4

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v7, :cond_f0

    const-string v0, "17960"

    return-object v0

    .line 82
    :cond_f0
    add-int/lit8 v1, p1, 0x3

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_103

    add-int/lit8 v1, p1, 0x4

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_103

    const-string v0, "17961"

    return-object v0

    .line 83
    :cond_103
    add-int/lit8 v1, p1, 0x3

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_116

    add-int/lit8 v1, p1, 0x4

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v6, :cond_116

    const-string v0, "17968"

    return-object v0

    .line 84
    :cond_116
    add-int/lit8 v1, p1, 0x3

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_129

    add-int/lit8 v1, p1, 0x4

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_129

    const-string v0, "17969"

    return-object v0

    .line 85
    :cond_129
    add-int/lit8 v1, p1, 0x3

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_13c

    add-int/lit8 v1, p1, 0x4

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v7, :cond_13c

    const-string v0, "17990"

    return-object v0

    .line 86
    :cond_13c
    add-int/lit8 v1, p1, 0x3

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_14f

    add-int/lit8 v1, p1, 0x4

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_14f

    const-string v0, "17991"

    return-object v0

    .line 87
    :cond_14f
    add-int/lit8 v1, p1, 0x3

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_162

    add-int/lit8 v1, p1, 0x4

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_162

    const-string v0, "17995"

    return-object v0

    .line 88
    :cond_162
    add-int/lit8 v1, p1, 0x3

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_220

    add-int/lit8 v1, p1, 0x4

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_220

    const-string v0, "17996"

    return-object v0

    .line 56
    :sswitch_175
    add-int/lit8 v1, p1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_220

    .line 57
    const/4 v1, 0x5

    if-le p2, v1, :cond_19b

    add-int/lit8 v4, p1, 0x3

    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_19b

    add-int/lit8 v4, p1, 0x4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_19b

    add-int/lit8 v4, p1, 0x5

    .line 58
    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    if-ne v4, v2, :cond_19b

    .line 59
    const-string v0, "125831"

    return-object v0

    .line 61
    :cond_19b
    if-le p2, v1, :cond_1ba

    add-int/lit8 v2, p1, 0x3

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    if-ne v2, v6, :cond_1ba

    add-int/lit8 v2, p1, 0x4

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    if-ne v2, v5, :cond_1ba

    add-int/lit8 v2, p1, 0x5

    .line 62
    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    const/16 v4, 0x32

    if-ne v2, v4, :cond_1ba

    .line 63
    const-string v0, "125832"

    return-object v0

    .line 65
    :cond_1ba
    if-le p2, v1, :cond_1d7

    add-int/lit8 v1, p1, 0x3

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v6, :cond_1d7

    add-int/lit8 v1, p1, 0x4

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_1d7

    add-int/lit8 v1, p1, 0x5

    .line 66
    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_1d7

    .line 67
    const-string v0, "125833"

    return-object v0

    .line 69
    :cond_1d7
    add-int/lit8 v1, p1, 0x3

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_220

    add-int/lit8 v1, p1, 0x4

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_220

    const-string v0, "12593"

    return-object v0

    .line 51
    :sswitch_1ea
    add-int/lit8 v1, p1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v6, :cond_220

    .line 52
    add-int/lit8 v1, p1, 0x3

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v7, :cond_220

    add-int/lit8 v1, p1, 0x4

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v6, :cond_220

    const-string v0, "11808"

    return-object v0

    .line 46
    :sswitch_205
    add-int/lit8 v1, p1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_220

    .line 47
    add-int/lit8 v1, p1, 0x3

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_220

    add-int/lit8 v1, p1, 0x4

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_220

    const-string v0, "10193"

    return-object v0

    .line 114
    :cond_220
    :goto_220
    return-object v0

    nop

    :pswitch_data_222
    .packed-switch 0x31
        :pswitch_38
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
    .end packed-switch

    :pswitch_data_236
    .packed-switch 0x30
        :pswitch_21
    .end packed-switch

    :sswitch_data_23c
    .sparse-switch
        0x30 -> :sswitch_205
        0x31 -> :sswitch_1ea
        0x32 -> :sswitch_175
        0x37 -> :sswitch_4e
    .end sparse-switch
.end method
