.class public Landroid/content/integrity/IntegrityUtils;
.super Ljava/lang/Object;
.source "IntegrityUtils.java"


# static fields
.field private static final blacklist HEX_CHARS:[C


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 28
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Landroid/content/integrity/IntegrityUtils;->HEX_CHARS:[C

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist decToHex(I)C
    .registers 4

    .line 77
    if-ltz p0, :cond_c

    sget-object v0, Landroid/content/integrity/IntegrityUtils;->HEX_CHARS:[C

    array-length v0, v0

    if-ge p0, v0, :cond_c

    .line 78
    sget-object v0, Landroid/content/integrity/IntegrityUtils;->HEX_CHARS:[C

    aget-char p0, v0, p0

    return p0

    .line 81
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid dec value to be converted to hex digit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getBytesFromHexDigest(Ljava/lang/String;)[B
    .registers 7

    .line 37
    nop

    .line 38
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_d

    move v0, v2

    goto :goto_e

    :cond_d
    move v0, v1

    :goto_e
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v3

    .line 37
    const-string v4, "Invalid hex encoding %s: must have even length"

    invoke-static {v0, v4, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 41
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v3, v0, [B

    .line 42
    nop

    :goto_20
    if-ge v1, v0, :cond_3e

    .line 43
    mul-int/lit8 v4, v1, 0x2

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 44
    add-int/2addr v4, v2

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 45
    invoke-static {v5}, Landroid/content/integrity/IntegrityUtils;->hexToDec(I)I

    move-result v5

    shl-int/lit8 v5, v5, 0x4

    invoke-static {v4}, Landroid/content/integrity/IntegrityUtils;->hexToDec(I)I

    move-result v4

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 42
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 47
    :cond_3e
    return-object v3
.end method

.method public static blacklist getHexDigest([B)Ljava/lang/String;
    .registers 6

    .line 52
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    .line 54
    const/4 v1, 0x0

    :goto_6
    array-length v2, p0

    if-ge v1, v2, :cond_26

    .line 55
    aget-byte v2, p0, v1

    ushr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    .line 56
    aget-byte v3, p0, v1

    and-int/lit8 v3, v3, 0xf

    .line 57
    mul-int/lit8 v4, v1, 0x2

    invoke-static {v2}, Landroid/content/integrity/IntegrityUtils;->decToHex(I)C

    move-result v2

    aput-char v2, v0, v4

    .line 58
    add-int/lit8 v4, v4, 0x1

    invoke-static {v3}, Landroid/content/integrity/IntegrityUtils;->decToHex(I)C

    move-result v2

    aput-char v2, v0, v4

    .line 54
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 60
    :cond_26
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method private static blacklist hexToDec(I)I
    .registers 4

    .line 64
    const/16 v0, 0x30

    if-lt p0, v0, :cond_a

    const/16 v1, 0x39

    if-gt p0, v1, :cond_a

    .line 65
    sub-int/2addr p0, v0

    return p0

    .line 67
    :cond_a
    const/16 v0, 0x61

    if-lt p0, v0, :cond_16

    const/16 v1, 0x66

    if-gt p0, v1, :cond_16

    .line 68
    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0xa

    return p0

    .line 70
    :cond_16
    const/16 v0, 0x41

    if-lt p0, v0, :cond_22

    const/16 v1, 0x46

    if-gt p0, v1, :cond_22

    .line 71
    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0xa

    return p0

    .line 73
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid hex char "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
