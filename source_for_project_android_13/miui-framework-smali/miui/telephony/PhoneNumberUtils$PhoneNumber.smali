.class public Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
.super Ljava/lang/Object;
.source "PhoneNumberUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/telephony/PhoneNumberUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneNumber"
.end annotation


# static fields
.field private static final blacklist EMPTY:Ljava/lang/String; = ""

.field private static final blacklist HASH_STRING_INDICATOR:C = '\u0001'

.field private static final blacklist MAX_NUMBER_LENGTH:I = 0x100

.field private static final blacklist MISSING_AREA_CODE_INDICATOR:C = '\u0002'

.field private static final blacklist POOL_SIZE:I = 0xa

.field private static final blacklist sPool:[Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

.field private static blacklist sPoolIndex:I


# instance fields
.field private blacklist mAreaCode:Ljava/lang/String;

.field private blacklist mBuffer:Ljava/lang/StringBuffer;

.field private blacklist mCountryCode:Ljava/lang/String;

.field private blacklist mDefaultCountryCode:Ljava/lang/String;

.field private blacklist mEffectiveNumber:Ljava/lang/String;

.field private blacklist mEffectiveNumberStart:I

.field private blacklist mIsChinaEnvironment:Z

.field private blacklist mNetIddCode:Ljava/lang/String;

.field private blacklist mOriginal:Ljava/lang/CharSequence;

.field private blacklist mPostDialString:Ljava/lang/String;

.field private blacklist mPostDialStringStart:I

.field private blacklist mPrefix:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 210
    const/16 v0, 0xa

    new-array v0, v0, [Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    sput-object v0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->sPool:[Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    .line 211
    const/4 v0, -0x1

    sput v0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->sPoolIndex:I

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 3

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    .line 228
    invoke-direct {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->clear()V

    .line 229
    return-void
.end method

.method public static whitelist addCountryCode(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "number"    # Ljava/lang/String;

    .line 650
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 651
    return-object p0

    .line 653
    :cond_7
    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v0

    .line 654
    .local v0, "pn":Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1f

    .line 655
    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1f

    move v1, v3

    goto :goto_20

    :cond_1f
    move v1, v2

    .line 656
    .local v1, "addCountryCode":Z
    :goto_20
    if-eqz v1, :cond_4c

    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->isChineseNumber()Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 657
    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_34

    .line 658
    const/4 v1, 0x0

    goto :goto_4c

    .line 659
    :cond_34
    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->isServiceNumber()Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 660
    const/4 v1, 0x0

    goto :goto_4c

    .line 661
    :cond_3c
    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->isNormalMobileNumber()Z

    move-result v4

    if-nez v4, :cond_4c

    .line 662
    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getAreaCode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/2addr v4, v3

    move v1, v4

    .line 666
    :cond_4c
    :goto_4c
    const-string v4, "*"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "#"

    if-nez v4, :cond_5c

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_63

    .line 667
    :cond_5c
    invoke-virtual {p0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_63

    .line 668
    const/4 v1, 0x0

    .line 671
    :cond_63
    move-object v4, p0

    .line 672
    .local v4, "result":Ljava/lang/String;
    if-eqz v1, :cond_bc

    .line 673
    invoke-static {}, Lmiui/telephony/phonenumber/CountryCode;->getUserDefinedCountryCode()Ljava/lang/String;

    move-result-object v5

    .line 674
    .local v5, "countryCode":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_74

    .line 675
    invoke-static {}, Lmiui/telephony/phonenumber/CountryCode;->getIccCountryCode()Ljava/lang/String;

    move-result-object v5

    .line 677
    :cond_74
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_bc

    .line 679
    const-string v6, "39"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "+"

    if-nez v6, :cond_a7

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v6, 0x30

    if-eq v2, v6, :cond_8d

    goto :goto_a7

    .line 682
    :cond_8d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_bc

    .line 680
    :cond_a7
    :goto_a7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 686
    .end local v5    # "countryCode":Ljava/lang/String;
    :cond_bc
    :goto_bc
    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->recycle()V

    .line 687
    return-object v4
.end method

.method private static blacklist areEqual(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z
    .registers 9
    .param p0, "s1"    # Ljava/lang/CharSequence;
    .param p1, "b1"    # I
    .param p2, "s2"    # Ljava/lang/CharSequence;
    .param p3, "b2"    # I
    .param p4, "length"    # I

    .line 787
    const/4 v0, 0x0

    if-eqz p0, :cond_35

    if-eqz p2, :cond_35

    if-ltz p1, :cond_35

    if-ltz p3, :cond_35

    if-gez p4, :cond_c

    goto :goto_35

    .line 790
    :cond_c
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int v2, p1, p4

    if-lt v1, v2, :cond_34

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int v2, p3, p4

    if-ge v1, v2, :cond_1d

    goto :goto_34

    .line 794
    :cond_1d
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1e
    if-ge v1, p4, :cond_32

    .line 795
    add-int v2, p1, v1

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    add-int v3, p3, v1

    invoke-interface {p2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_2f

    .line 796
    return v0

    .line 794
    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 799
    .end local v1    # "i":I
    :cond_32
    const/4 v0, 0x1

    return v0

    .line 791
    :cond_34
    :goto_34
    return v0

    .line 788
    :cond_35
    :goto_35
    return v0
.end method

.method private blacklist attach(Ljava/lang/CharSequence;)V
    .registers 7
    .param p1, "number"    # Ljava/lang/CharSequence;

    .line 245
    if-nez p1, :cond_4

    .line 246
    const-string p1, ""

    .line 248
    :cond_4
    iput-object p1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mOriginal:Ljava/lang/CharSequence;

    .line 249
    const/4 v0, 0x0

    .line 250
    .local v0, "postDialString":Z
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .local v2, "len":I
    :goto_c
    if-ge v1, v2, :cond_53

    .line 251
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 252
    .local v3, "c":C
    if-eqz v0, :cond_20

    invoke-static {v3}, Lmiui/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 253
    iget-object v4, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_50

    .line 254
    :cond_20
    if-nez v1, :cond_2c

    const/16 v4, 0x2b

    if-ne v3, v4, :cond_2c

    .line 255
    iget-object v4, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_50

    .line 256
    :cond_2c
    const/16 v4, 0x30

    if-lt v3, v4, :cond_3a

    const/16 v4, 0x39

    if-gt v3, v4, :cond_3a

    .line 257
    iget-object v4, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_50

    .line 258
    :cond_3a
    if-nez v0, :cond_50

    invoke-static {v3}, Lmiui/telephony/PhoneNumberUtils;->isStartsPostDial(C)Z

    move-result v4

    if-eqz v4, :cond_50

    .line 259
    iget-object v4, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    iput v4, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mPostDialStringStart:I

    .line 260
    const/4 v0, 0x1

    .line 261
    iget-object v4, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 250
    .end local v3    # "c":C
    :cond_50
    :goto_50
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 264
    .end local v1    # "i":I
    .end local v2    # "len":I
    :cond_53
    if-nez v0, :cond_5d

    .line 265
    iget-object v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    iput v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mPostDialStringStart:I

    .line 267
    :cond_5d
    return-void
.end method

.method private blacklist clear()V
    .registers 3

    .line 232
    iget-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 233
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mPrefix:Ljava/lang/String;

    .line 234
    iput-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mCountryCode:Ljava/lang/String;

    .line 235
    iput-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mAreaCode:Ljava/lang/String;

    .line 236
    iput v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    .line 237
    iput-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    .line 238
    iput v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mPostDialStringStart:I

    .line 239
    iput-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mPostDialString:Ljava/lang/String;

    .line 240
    iput-boolean v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mIsChinaEnvironment:Z

    .line 241
    iput-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mNetIddCode:Ljava/lang/String;

    .line 242
    return-void
.end method

.method public static whitelist getDefaultCountryCode()Ljava/lang/String;
    .registers 1

    .line 779
    invoke-static {}, Lmiui/telephony/phonenumber/CountryCode;->getIccCountryCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getDialableNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "hash"    # Ljava/lang/String;

    .line 717
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 718
    const-string v0, ""

    return-object v0

    .line 721
    :cond_9
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 722
    .local v0, "index":I
    const/4 v1, 0x1

    if-gez v0, :cond_13

    .line 723
    const/4 v0, 0x1

    goto :goto_14

    .line 725
    :cond_13
    add-int/2addr v0, v1

    .line 728
    :goto_14
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v1, :cond_20

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_21

    :cond_20
    move-object v1, p0

    :goto_21
    return-object v1
.end method

.method public static whitelist getHashString(Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .param p0, "dialable"    # Ljava/lang/String;

    .line 694
    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v0

    .line 695
    .local v0, "pn":Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    move-object v1, p0

    .line 696
    .local v1, "result":Ljava/lang/String;
    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->isSmsPrefix()Z

    move-result v2

    if-eqz v2, :cond_25

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getEffectiveNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_29

    :cond_25
    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getEffectiveNumber()Ljava/lang/String;

    move-result-object v2

    .line 697
    .local v2, "effectiveNumber":Ljava/lang/String;
    :goto_29
    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->isChineseNumber()Z

    move-result v3

    const-string v4, "%c(00%s)%s%s"

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-nez v3, :cond_52

    .line 698
    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    aput-object v7, v3, v6

    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getCountryCode()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v9

    aput-object v2, v3, v8

    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getPostDialString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_102

    .line 699
    :cond_52
    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->isNormalMobileNumber()Z

    move-result v3

    const-string v10, "86"

    if-eqz v3, :cond_72

    .line 700
    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    aput-object v7, v3, v6

    aput-object v10, v3, v9

    aput-object v2, v3, v8

    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getPostDialString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_102

    .line 701
    :cond_72
    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getCountryCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v11, "%c(00%s)%s-%s%s"

    const/4 v12, 0x5

    if-nez v3, :cond_bd

    .line 702
    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getAreaCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a6

    .line 703
    new-array v3, v12, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    aput-object v4, v3, v6

    aput-object v10, v3, v9

    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getAreaCode()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    aput-object v2, v3, v5

    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getPostDialString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v11, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_102

    .line 705
    :cond_a6
    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    aput-object v7, v3, v6

    aput-object v10, v3, v9

    aput-object v2, v3, v8

    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getPostDialString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_102

    .line 707
    :cond_bd
    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getAreaCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e4

    .line 708
    new-array v3, v12, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    aput-object v4, v3, v6

    aput-object v10, v3, v9

    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getAreaCode()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    aput-object v2, v3, v5

    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getPostDialString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v11, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_102

    .line 710
    :cond_e4
    new-array v3, v12, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    aput-object v4, v3, v6

    aput-object v10, v3, v9

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    aput-object v4, v3, v8

    aput-object v2, v3, v5

    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getPostDialString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    const-string v4, "%c(00%s)%c%s%s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 712
    :goto_102
    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->recycle()V

    .line 713
    return-object v1
.end method

.method public static whitelist getLocation(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/CharSequence;

    .line 754
    invoke-static {p1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v0

    .line 755
    .local v0, "pn":Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    invoke-virtual {v0, p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getLocation(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 756
    .local v1, "location":Ljava/lang/String;
    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->recycle()V

    .line 757
    return-object v1
.end method

.method public static whitelist getLocationAreaCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .line 768
    invoke-static {p1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v0

    .line 769
    .local v0, "pn":Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    invoke-virtual {v0, p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getLocationAreaCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 770
    .local v1, "location":Ljava/lang/String;
    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->recycle()V

    .line 771
    return-object v1
.end method

.method public static whitelist getOperator(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/CharSequence;

    .line 761
    invoke-static {p1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v0

    .line 762
    .local v0, "pn":Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    invoke-virtual {v0, p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getOperator(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 763
    .local v1, "operator":Ljava/lang/String;
    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->recycle()V

    .line 764
    return-object v1
.end method

.method public static whitelist isChineseOperator()Z
    .registers 1

    .line 783
    invoke-static {}, Lmiui/telephony/phonenumber/CountryCode;->isChinaEnvironment()Z

    move-result v0

    return v0
.end method

.method public static whitelist isValidCountryCode(Ljava/lang/String;)Z
    .registers 2
    .param p0, "countryCode"    # Ljava/lang/String;

    .line 775
    invoke-static {p0}, Lmiui/telephony/phonenumber/CountryCodeConverter;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static whitelist parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    .registers 3
    .param p0, "number"    # Ljava/lang/CharSequence;

    .line 270
    invoke-static {}, Lmiui/telephony/phonenumber/CountryCode;->isChinaEnvironment()Z

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;ZLjava/lang/String;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist parse(Ljava/lang/CharSequence;Z)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    .registers 3
    .param p0, "number"    # Ljava/lang/CharSequence;
    .param p1, "isChinaEnvironment"    # Z

    .line 274
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;ZLjava/lang/String;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist parse(Ljava/lang/CharSequence;ZLjava/lang/String;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    .registers 7
    .param p0, "number"    # Ljava/lang/CharSequence;
    .param p1, "isChinaEnvironment"    # Z
    .param p2, "iddCode"    # Ljava/lang/String;

    .line 278
    const/4 v0, 0x0

    .line 279
    .local v0, "pn":Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->sPool:[Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    monitor-enter v1

    .line 280
    :try_start_4
    sget v2, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->sPoolIndex:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_10

    .line 281
    new-instance v2, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    invoke-direct {v2}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;-><init>()V

    move-object v0, v2

    goto :goto_1a

    .line 283
    :cond_10
    aget-object v3, v1, v2

    move-object v0, v3

    .line 284
    add-int/lit8 v3, v2, -0x1

    sput v3, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->sPoolIndex:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 286
    :goto_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_23

    .line 288
    invoke-direct {v0, p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->attach(Ljava/lang/CharSequence;)V

    .line 289
    iput-boolean p1, v0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mIsChinaEnvironment:Z

    .line 290
    iput-object p2, v0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mNetIddCode:Ljava/lang/String;

    .line 291
    return-object v0

    .line 286
    :catchall_23
    move-exception v2

    :try_start_24
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v2
.end method

.method public static whitelist replaceCdmaInternationalAccessCode(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "number"    # Ljava/lang/String;

    .line 733
    const-string v0, "+86"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3c

    invoke-static {}, Lmiui/telephony/phonenumber/CountryCode;->getNetworkCountryCode()Ljava/lang/String;

    move-result-object v0

    const-string v2, "86"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 735
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 736
    .local v0, "leftNumber":Ljava/lang/String;
    invoke-static {v0}, Lmiui/telephony/PhoneNumberUtils;->isChinaMobileNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 737
    return-object v0

    .line 740
    :cond_21
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-ne v1, v2, :cond_2a

    .line 741
    return-object v0

    .line 743
    :cond_2a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 746
    .end local v0    # "leftNumber":Ljava/lang/String;
    :cond_3c
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6a

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x2b

    if-ne v0, v2, :cond_6a

    .line 747
    invoke-static {}, Lmiui/telephony/phonenumber/CountryCode;->getIddCodes()Ljava/util/List;

    move-result-object v0

    .line 748
    .local v0, "iddCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 750
    .end local v0    # "iddCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_6a
    return-object p0
.end method


# virtual methods
.method public whitelist getAreaCode()Ljava/lang/String;
    .registers 7

    .line 367
    iget-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mAreaCode:Ljava/lang/String;

    if-nez v0, :cond_72

    .line 368
    const-string v0, ""

    iput-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mAreaCode:Ljava/lang/String;

    .line 369
    invoke-virtual {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->isChineseNumber()Z

    move-result v0

    if-eqz v0, :cond_72

    invoke-virtual {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/telephony/phonenumber/Prefix;->isSmsPrefix(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_72

    .line 370
    const/4 v0, 0x1

    .line 371
    .local v0, "areacodeExists":Z
    invoke-virtual {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    .line 372
    .local v1, "countryCode":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 373
    const/4 v0, 0x0

    .line 374
    iget-object v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    if-le v2, v3, :cond_41

    iget-object v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    .line 375
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-ne v2, v3, :cond_41

    .line 376
    const/4 v0, 0x1

    .line 377
    iget v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    .line 381
    :cond_41
    if-eqz v0, :cond_72

    .line 382
    invoke-static {}, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->getInstance()Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;

    move-result-object v2

    iget-object v3, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v4, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    iget v5, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mPostDialStringStart:I

    sub-int/2addr v5, v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->parseAreaCode(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mAreaCode:Ljava/lang/String;

    .line 383
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_67

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_67

    .line 384
    iget v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    goto :goto_72

    .line 386
    :cond_67
    iget v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    iget-object v3, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mAreaCode:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    .line 391
    .end local v0    # "areacodeExists":Z
    .end local v1    # "countryCode":Ljava/lang/String;
    :cond_72
    :goto_72
    iget-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mAreaCode:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getCountryCode()Ljava/lang/String;
    .registers 9

    .line 323
    iget-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mCountryCode:Ljava/lang/String;

    if-nez v0, :cond_7e

    .line 324
    invoke-virtual {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getPrefix()Ljava/lang/String;

    .line 325
    invoke-static {}, Lmiui/telephony/phonenumber/CountryCode;->getIddCodes()Ljava/util/List;

    move-result-object v0

    .line 326
    .local v0, "iddCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 327
    .local v2, "iddCode":Ljava/lang/String;
    const-string v3, "+"

    .line 328
    .local v3, "idd":Ljava/lang/String;
    iget-object v4, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v5, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x0

    invoke-static {v4, v5, v3, v7, v6}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->areEqual(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v4

    if-nez v4, :cond_47

    .line 329
    iget-object v4, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mNetIddCode:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 330
    move-object v3, v2

    goto :goto_38

    .line 332
    :cond_36
    iget-object v3, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mNetIddCode:Ljava/lang/String;

    .line 334
    :goto_38
    iget-object v4, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v5, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v4, v5, v3, v7, v6}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->areEqual(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v4

    if-nez v4, :cond_47

    .line 335
    const/4 v3, 0x0

    .line 339
    :cond_47
    if-eqz v3, :cond_79

    .line 340
    iget v4, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    .line 342
    iget-object v5, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v6, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mPostDialStringStart:I

    sub-int/2addr v6, v4

    invoke-static {v5, v4, v6}, Lmiui/telephony/phonenumber/CountryCodeConverter;->parse(Ljava/lang/StringBuffer;II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mCountryCode:Ljava/lang/String;

    .line 343
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_6f

    .line 344
    iget v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    iget-object v4, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v1, v4

    iput v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    .line 345
    goto :goto_7e

    .line 347
    :cond_6f
    iget v4, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    goto :goto_7d

    .line 350
    :cond_79
    const-string v4, ""

    iput-object v4, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mCountryCode:Ljava/lang/String;

    .line 352
    .end local v2    # "iddCode":Ljava/lang/String;
    .end local v3    # "idd":Ljava/lang/String;
    :goto_7d
    goto :goto_f

    .line 354
    .end local v0    # "iddCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_7e
    :goto_7e
    iget-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getEffectiveNumber()Ljava/lang/String;
    .registers 4

    .line 395
    iget-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    if-nez v0, :cond_20

    .line 396
    invoke-virtual {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getAreaCode()Ljava/lang/String;

    .line 397
    iget-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    iget v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    if-le v0, v1, :cond_1c

    .line 398
    iget-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mPostDialStringStart:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    goto :goto_20

    .line 400
    :cond_1c
    const-string v0, ""

    iput-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    .line 403
    :cond_20
    :goto_20
    iget-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mOriginal:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mOriginal:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_37

    :cond_35
    iget-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    :goto_37
    return-object v0
.end method

.method public whitelist getFakeNumberToQueryLocation()Ljava/lang/String;
    .registers 9

    .line 407
    const-string v0, ""

    .line 408
    .local v0, "queryNumber":Ljava/lang/String;
    invoke-virtual {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getEffectiveNumber()Ljava/lang/String;

    move-result-object v1

    .line 409
    .local v1, "effectiveNumber":Ljava/lang/String;
    invoke-virtual {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getAreaCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_55

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 411
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 412
    .local v2, "effectiveNumberlength":I
    const/4 v3, 0x7

    .line 413
    .local v3, "minLength":I
    const/16 v4, 0xb

    .line 415
    .local v4, "fakeNumberLength":I
    const-string v5, "141"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2f

    .line 416
    const-string v5, "1064"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 417
    :cond_2f
    const/16 v3, 0x9

    .line 418
    const/16 v4, 0xd

    .line 420
    :cond_33
    if-lt v2, v3, :cond_4e

    if-ge v2, v4, :cond_4e

    .line 421
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mOriginal:Ljava/lang/CharSequence;

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 422
    .local v5, "sb":Ljava/lang/StringBuilder;
    move v6, v2

    .local v6, "i":I
    :goto_3f
    if-ge v6, v4, :cond_49

    .line 423
    const/16 v7, 0x39

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 422
    add-int/lit8 v6, v6, 0x1

    goto :goto_3f

    .line 425
    .end local v6    # "i":I
    :cond_49
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 426
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    goto :goto_54

    .line 427
    :cond_4e
    iget-object v5, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mOriginal:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 429
    .end local v2    # "effectiveNumberlength":I
    .end local v3    # "minLength":I
    .end local v4    # "fakeNumberLength":I
    :goto_54
    goto :goto_5b

    .line 431
    :cond_55
    iget-object v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mOriginal:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 433
    :goto_5b
    return-object v0
.end method

.method public whitelist getLocation(Landroid/content/Context;)Ljava/lang/String;
    .registers 12
    .param p1, "context"    # Landroid/content/Context;

    .line 597
    const-string v0, "tw"

    invoke-static {v0}, Lmiui/os/Build;->checkRegion(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 598
    const-string v0, ""

    return-object v0

    .line 600
    :cond_b
    const-string v0, ""

    .line 601
    .local v0, "location":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 602
    .local v1, "locale":Ljava/util/Locale;
    invoke-virtual {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->isChineseNumber()Z

    move-result v2

    .line 603
    .local v2, "ischinesenumber":Z
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_55

    if-nez v2, :cond_2e

    goto :goto_55

    .line 609
    :cond_2e
    invoke-static {}, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->getInstance()Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;

    move-result-object v4

    iget-object v6, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v7, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    iget v3, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mPostDialStringStart:I

    sub-int v8, v3, v7

    .line 611
    invoke-virtual {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->isNormalMobileNumber()Z

    move-result v3

    if-nez v3, :cond_4d

    invoke-virtual {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getAreaCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4b

    goto :goto_4d

    :cond_4b
    const/4 v3, 0x0

    goto :goto_4e

    :cond_4d
    :goto_4d
    const/4 v3, 0x1

    :goto_4e
    move v9, v3

    .line 609
    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->getLocation(Landroid/content/Context;Ljava/lang/CharSequence;IIZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_89

    .line 605
    :cond_55
    :goto_55
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "locale.getLanguage = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isChineseNumber = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PhoneNumberUtils"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    invoke-static {}, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->getInstance()Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;

    move-result-object v3

    invoke-virtual {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getCountryCode()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mOriginal:Ljava/lang/CharSequence;

    invoke-virtual {v3, p1, v4, v5, v1}, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->getExternalLocation(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 613
    :goto_89
    return-object v0
.end method

.method public whitelist getLocationAreaCode(Landroid/content/Context;)Ljava/lang/String;
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .line 633
    const-string v0, ""

    .line 634
    .local v0, "areaCode":Ljava/lang/String;
    invoke-virtual {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->isChineseNumber()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 635
    invoke-virtual {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->isNormalMobileNumber()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 636
    invoke-static {}, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->getInstance()Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;

    move-result-object v1

    iget-object v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v3, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    iget v4, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mPostDialStringStart:I

    sub-int/2addr v4, v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->getAreaCode(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_22

    .line 639
    :cond_1e
    invoke-virtual {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getAreaCode()Ljava/lang/String;

    move-result-object v0

    .line 642
    :cond_22
    :goto_22
    return-object v0
.end method

.method public whitelist getNormalizedNumber(ZZ)Ljava/lang/String;
    .registers 9
    .param p1, "withCountryCode"    # Z
    .param p2, "withPostDialString"    # Z

    .line 564
    const/4 v0, 0x0

    .line 565
    .local v0, "number":Ljava/lang/String;
    invoke-virtual {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->isChineseNumber()Z

    move-result v1

    if-nez v1, :cond_46

    .line 566
    iget v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    if-eqz p1, :cond_14

    invoke-virtual {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    .line 567
    .local v1, "start":I
    :cond_14
    if-eqz p2, :cond_1d

    iget-object v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    goto :goto_1f

    :cond_1d
    iget v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mPostDialStringStart:I

    .line 568
    .local v2, "end":I
    :goto_1f
    iget-object v3, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 569
    if-eqz p1, :cond_44

    invoke-virtual {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getCountryCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_44

    .line 570
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 572
    .end local v1    # "start":I
    .end local v2    # "end":I
    :cond_44
    goto/16 :goto_d1

    :cond_46
    invoke-virtual {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->isNormalMobileNumber()Z

    move-result v1

    const-string v2, "+86"

    if-eqz v1, :cond_75

    .line 574
    if-eqz p2, :cond_57

    iget-object v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    goto :goto_59

    :cond_57
    iget v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mPostDialStringStart:I

    .line 575
    .local v1, "end":I
    :goto_59
    iget-object v3, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v4, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    invoke-virtual {v3, v4, v1}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 576
    if-eqz p1, :cond_74

    .line 577
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 579
    .end local v1    # "end":I
    :cond_74
    goto :goto_d1

    .line 581
    :cond_75
    if-eqz p2, :cond_7e

    iget-object v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    goto :goto_80

    :cond_7e
    iget v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mPostDialStringStart:I

    .line 582
    .restart local v1    # "end":I
    :goto_80
    invoke-virtual {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getAreaCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c9

    invoke-virtual {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->isServiceNumber()Z

    move-result v3

    if-nez v3, :cond_c9

    .line 583
    iget-object v3, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v4, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    invoke-virtual {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getAreaCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4, v1}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 584
    if-eqz p1, :cond_b5

    .line 585
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_d1

    .line 587
    :cond_b5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_d1

    .line 590
    :cond_c9
    iget-object v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v3, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    invoke-virtual {v2, v3, v1}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 593
    .end local v1    # "end":I
    :goto_d1
    return-object v0
.end method

.method public whitelist getNumberWithoutPrefix(Z)Ljava/lang/String;
    .registers 5
    .param p1, "withPostDialString"    # Z

    .line 546
    const/4 v0, 0x0

    .line 547
    .local v0, "start":I
    invoke-virtual {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 548
    invoke-virtual {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 550
    :cond_13
    iget-object v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    if-eqz p1, :cond_1c

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_22

    :cond_1c
    iget v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mPostDialStringStart:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_22
    return-object v1
.end method

.method public whitelist getOperator(Landroid/content/Context;)Ljava/lang/String;
    .registers 10
    .param p1, "context"    # Landroid/content/Context;

    .line 617
    const-string v0, "tw"

    invoke-static {v0}, Lmiui/os/Build;->checkRegion(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 618
    const-string v0, ""

    return-object v0

    .line 621
    :cond_b
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 622
    .local v0, "locale":Ljava/util/Locale;
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 623
    invoke-virtual {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->isChineseNumber()Z

    move-result v1

    if-nez v1, :cond_2c

    goto :goto_46

    .line 626
    :cond_2c
    invoke-static {}, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->getInstance()Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;

    move-result-object v2

    iget-object v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    iget v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mPostDialStringStart:I

    sub-int v6, v1, v5

    .line 627
    invoke-virtual {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->isNormalMobileNumber()Z

    move-result v7

    .line 626
    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->getOperator(Landroid/content/Context;Ljava/lang/CharSequence;IIZ)Ljava/lang/String;

    move-result-object v1

    .local v1, "operator":Ljava/lang/String;
    goto :goto_48

    .line 624
    .end local v1    # "operator":Ljava/lang/String;
    :cond_46
    :goto_46
    const-string v1, ""

    .line 629
    .restart local v1    # "operator":Ljava/lang/String;
    :goto_48
    return-object v1
.end method

.method public whitelist getPostDialString()Ljava/lang/String;
    .registers 3

    .line 437
    iget-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mPostDialString:Ljava/lang/String;

    if-nez v0, :cond_1b

    .line 438
    iget-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    iget v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mPostDialStringStart:I

    if-le v0, v1, :cond_17

    .line 439
    iget-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mPostDialString:Ljava/lang/String;

    goto :goto_1b

    .line 441
    :cond_17
    const-string v0, ""

    iput-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mPostDialString:Ljava/lang/String;

    .line 444
    :cond_1b
    :goto_1b
    iget-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mPostDialString:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPrefix()Ljava/lang/String;
    .registers 4

    .line 312
    iget-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mPrefix:Ljava/lang/String;

    if-nez v0, :cond_1e

    .line 313
    iget-boolean v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mIsChinaEnvironment:Z

    if-eqz v0, :cond_1e

    .line 314
    iget-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    iget v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mPostDialStringStart:I

    sub-int/2addr v2, v1

    .line 315
    invoke-static {v0, v1, v2}, Lmiui/telephony/phonenumber/Prefix;->parse(Ljava/lang/StringBuffer;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mPrefix:Ljava/lang/String;

    .line 316
    iget v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    .line 319
    :cond_1e
    iget-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist isChineseNumber()Z
    .registers 4

    .line 358
    invoke-virtual {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    .line 359
    .local v0, "countryCode":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "countryCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mIsChinaEnvironment = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mIsChinaEnvironment:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mDefaultCountryCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mDefaultCountryCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PhoneNumberUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "86"

    if-nez v1, :cond_41

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_51

    .line 363
    :cond_41
    iget-boolean v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mIsChinaEnvironment:Z

    if-nez v1, :cond_50

    iget-object v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mDefaultCountryCode:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    goto :goto_50

    :cond_4e
    const/4 v1, 0x0

    goto :goto_51

    :cond_50
    :goto_50
    const/4 v1, 0x1

    .line 361
    :goto_51
    return v1
.end method

.method public whitelist isNormalMobileNumber()Z
    .registers 10

    .line 448
    invoke-virtual {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getAreaCode()Ljava/lang/String;

    .line 449
    invoke-virtual {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->isChineseNumber()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f8

    .line 450
    iget v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mPostDialStringStart:I

    iget v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    sub-int/2addr v0, v2

    .line 451
    .local v0, "length":I
    const/16 v3, 0xb

    const/16 v4, 0x31

    const/4 v5, 0x1

    if-ne v0, v3, :cond_b1

    .line 452
    iget-object v3, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    .line 453
    .local v2, "c":C
    if-ne v2, v4, :cond_b0

    .line 454
    iget-object v3, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v6, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    add-int/2addr v6, v5

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    .line 455
    packed-switch v2, :pswitch_data_fa

    .line 478
    return v1

    .line 469
    :pswitch_2b
    iget-object v3, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v4, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    const/16 v4, 0x39

    if-eq v3, v4, :cond_3a

    move v1, v5

    :cond_3a
    return v1

    .line 475
    :pswitch_3b
    return v5

    .line 458
    :pswitch_3c
    iget-object v3, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v6, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    add-int/lit8 v6, v6, 0x2

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    const/16 v6, 0x38

    if-ne v3, v6, :cond_ae

    iget-object v3, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v7, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    add-int/lit8 v7, v7, 0x3

    .line 459
    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    const/16 v7, 0x30

    if-ne v3, v7, :cond_ae

    iget-object v3, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v8, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    add-int/lit8 v8, v8, 0x4

    .line 460
    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    if-ne v3, v7, :cond_ae

    iget-object v3, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v8, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    add-int/lit8 v8, v8, 0x5

    .line 461
    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_ae

    iget-object v3, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v4, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    add-int/lit8 v4, v4, 0x6

    .line 462
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    const/16 v4, 0x33

    if-ne v3, v4, :cond_ae

    iget-object v3, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v4, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    add-int/lit8 v4, v4, 0x7

    .line 463
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    if-ne v3, v6, :cond_ae

    iget-object v3, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v4, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    add-int/lit8 v4, v4, 0x8

    .line 464
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    if-ne v3, v7, :cond_ae

    iget-object v3, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v4, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    add-int/lit8 v4, v4, 0x9

    .line 465
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    if-ne v3, v7, :cond_ae

    iget-object v3, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v4, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    add-int/lit8 v4, v4, 0xa

    .line 466
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    if-eq v3, v7, :cond_af

    :cond_ae
    move v1, v5

    .line 458
    :cond_af
    return v1

    .line 453
    .end local v2    # "c":C
    :cond_b0
    goto :goto_f8

    .line 481
    :cond_b1
    const/16 v3, 0xd

    if-ne v0, v3, :cond_f8

    .line 483
    iget-object v3, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    .line 484
    .restart local v2    # "c":C
    if-ne v2, v4, :cond_f8

    .line 485
    iget-object v3, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v6, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    add-int/2addr v6, v5

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    .line 486
    sparse-switch v2, :sswitch_data_10c

    goto :goto_f8

    .line 491
    :sswitch_ca
    iget-object v3, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v6, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    add-int/lit8 v6, v6, 0x2

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_d7

    move v1, v5

    :cond_d7
    return v1

    .line 488
    :sswitch_d8
    iget-object v3, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v4, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    const/16 v4, 0x36

    if-ne v3, v4, :cond_f6

    iget-object v3, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v4, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    add-int/lit8 v4, v4, 0x3

    .line 489
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    const/16 v4, 0x34

    if-ne v3, v4, :cond_f6

    move v1, v5

    goto :goto_f7

    :cond_f6
    nop

    .line 488
    :goto_f7
    return v1

    .line 496
    .end local v0    # "length":I
    .end local v2    # "c":C
    :cond_f8
    :goto_f8
    return v1

    nop

    :pswitch_data_fa
    .packed-switch 0x33
        :pswitch_3c
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
        :pswitch_2b
        :pswitch_3b
        :pswitch_3b
    .end packed-switch

    :sswitch_data_10c
    .sparse-switch
        0x30 -> :sswitch_d8
        0x34 -> :sswitch_ca
    .end sparse-switch
.end method

.method public whitelist isServiceNumber()Z
    .registers 11

    .line 500
    invoke-virtual {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getAreaCode()Ljava/lang/String;

    .line 501
    invoke-virtual {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->isChineseNumber()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 502
    return v1

    .line 505
    :cond_b
    iget v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mPostDialStringStart:I

    iget v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    sub-int/2addr v0, v2

    .line 506
    .local v0, "length":I
    const/4 v3, 0x2

    if-le v0, v3, :cond_8c

    .line 507
    iget-object v4, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    .line 508
    .local v2, "firstNum":C
    iget-object v4, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v5, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    .line 509
    .local v4, "secondNum":C
    iget-object v5, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v7, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    add-int/2addr v7, v3

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    .line 511
    .local v3, "thirdNum":C
    const/16 v5, 0x32

    const/16 v7, 0x31

    const/16 v8, 0x30

    if-ne v2, v7, :cond_3b

    if-eq v4, v8, :cond_3a

    if-eq v4, v7, :cond_3a

    if-ne v4, v5, :cond_3b

    .line 512
    :cond_3a
    return v6

    .line 515
    :cond_3b
    if-eq v2, v5, :cond_83

    const/16 v5, 0x33

    if-eq v2, v5, :cond_83

    const/16 v5, 0x35

    if-eq v2, v5, :cond_83

    const/16 v7, 0x36

    if-eq v2, v7, :cond_83

    const/16 v9, 0x37

    if-ne v2, v9, :cond_4e

    goto :goto_83

    .line 518
    :cond_4e
    sparse-switch v0, :sswitch_data_8e

    goto :goto_8c

    .line 533
    :sswitch_52
    invoke-virtual {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getEffectiveNumber()Ljava/lang/String;

    move-result-object v5

    const-string v7, " "

    const-string v8, ""

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 534
    .local v5, "effectiveNumber":Ljava/lang/String;
    const-string v7, "13800138000"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8c

    .line 535
    return v6

    .line 527
    .end local v5    # "effectiveNumber":Ljava/lang/String;
    :sswitch_67
    const/16 v5, 0x34

    if-eq v2, v5, :cond_6f

    const/16 v5, 0x38

    if-ne v2, v5, :cond_8c

    .line 528
    :cond_6f
    iget v5, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    if-nez v5, :cond_78

    if-ne v4, v8, :cond_78

    if-ne v3, v8, :cond_78

    move v1, v6

    :cond_78
    return v1

    .line 520
    :sswitch_79
    const/16 v8, 0x39

    if-ne v2, v8, :cond_8c

    .line 522
    if-eq v4, v5, :cond_81

    if-ne v4, v7, :cond_82

    :cond_81
    move v1, v6

    :cond_82
    return v1

    .line 516
    :cond_83
    :goto_83
    if-ne v4, v8, :cond_8b

    if-ne v3, v8, :cond_8b

    const/4 v5, 0x7

    if-le v0, v5, :cond_8b

    move v1, v6

    :cond_8b
    return v1

    .line 542
    .end local v2    # "firstNum":C
    .end local v3    # "thirdNum":C
    .end local v4    # "secondNum":C
    :cond_8c
    :goto_8c
    return v1

    nop

    :sswitch_data_8e
    .sparse-switch
        0x5 -> :sswitch_79
        0xa -> :sswitch_67
        0xb -> :sswitch_52
    .end sparse-switch
.end method

.method public whitelist isSmsPrefix()Z
    .registers 2

    .line 646
    invoke-virtual {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/telephony/phonenumber/Prefix;->isSmsPrefix(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist recycle()V
    .registers 4

    .line 295
    invoke-direct {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->clear()V

    .line 296
    sget-object v0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->sPool:[Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    monitor-enter v0

    .line 297
    :try_start_6
    sget v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->sPoolIndex:I

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_13

    .line 298
    add-int/lit8 v1, v1, 0x1

    sput v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->sPoolIndex:I

    aput-object p0, v0, v1

    .line 300
    :cond_13
    monitor-exit v0

    .line 301
    return-void

    .line 300
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public whitelist setDefaultCountryCode(Ljava/lang/String;)V
    .registers 2
    .param p1, "defaultCountryCode"    # Ljava/lang/String;

    .line 308
    iput-object p1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mDefaultCountryCode:Ljava/lang/String;

    .line 309
    return-void
.end method
