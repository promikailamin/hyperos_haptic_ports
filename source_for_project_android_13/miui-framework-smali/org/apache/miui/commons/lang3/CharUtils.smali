.class public Lorg/apache/miui/commons/lang3/CharUtils;
.super Ljava/lang/Object;
.source "CharUtils.java"


# static fields
.field private static final blacklist CHAR_STRING_ARRAY:[Ljava/lang/String;

.field public static final blacklist CR:C = '\r'

.field public static final blacklist LF:C = '\n'


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 33
    const/16 v0, 0x80

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lorg/apache/miui/commons/lang3/CharUtils;->CHAR_STRING_ARRAY:[Ljava/lang/String;

    .line 55
    const/4 v0, 0x0

    .local v0, "c":C
    :goto_7
    sget-object v1, Lorg/apache/miui/commons/lang3/CharUtils;->CHAR_STRING_ARRAY:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_16

    .line 56
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 55
    add-int/lit8 v1, v0, 0x1

    int-to-char v0, v1

    goto :goto_7

    .line 58
    .end local v0    # "c":C
    :cond_16
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    return-void
.end method

.method public static blacklist isAscii(C)Z
    .registers 2
    .param p0, "ch"    # C

    .line 404
    const/16 v0, 0x80

    if-ge p0, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static blacklist isAsciiAlpha(C)Z
    .registers 2
    .param p0, "ch"    # C

    .line 461
    const/16 v0, 0x41

    if-lt p0, v0, :cond_8

    const/16 v0, 0x5a

    if-le p0, v0, :cond_10

    :cond_8
    const/16 v0, 0x61

    if-lt p0, v0, :cond_12

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public static blacklist isAsciiAlphaLower(C)Z
    .registers 2
    .param p0, "ch"    # C

    .line 499
    const/16 v0, 0x61

    if-lt p0, v0, :cond_a

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static blacklist isAsciiAlphaUpper(C)Z
    .registers 2
    .param p0, "ch"    # C

    .line 480
    const/16 v0, 0x41

    if-lt p0, v0, :cond_a

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static blacklist isAsciiAlphanumeric(C)Z
    .registers 2
    .param p0, "ch"    # C

    .line 537
    const/16 v0, 0x41

    if-lt p0, v0, :cond_8

    const/16 v0, 0x5a

    if-le p0, v0, :cond_18

    :cond_8
    const/16 v0, 0x61

    if-lt p0, v0, :cond_10

    const/16 v0, 0x7a

    if-le p0, v0, :cond_18

    :cond_10
    const/16 v0, 0x30

    if-lt p0, v0, :cond_1a

    const/16 v0, 0x39

    if-gt p0, v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method public static blacklist isAsciiControl(C)Z
    .registers 2
    .param p0, "ch"    # C

    .line 442
    const/16 v0, 0x20

    if-lt p0, v0, :cond_b

    const/16 v0, 0x7f

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public static blacklist isAsciiNumeric(C)Z
    .registers 2
    .param p0, "ch"    # C

    .line 518
    const/16 v0, 0x30

    if-lt p0, v0, :cond_a

    const/16 v0, 0x39

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static blacklist isAsciiPrintable(C)Z
    .registers 2
    .param p0, "ch"    # C

    .line 423
    const/16 v0, 0x20

    if-lt p0, v0, :cond_a

    const/16 v0, 0x7f

    if-ge p0, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static blacklist toChar(Ljava/lang/Character;)C
    .registers 3
    .param p0, "ch"    # Ljava/lang/Character;

    .line 131
    if-eqz p0, :cond_7

    .line 134
    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result v0

    return v0

    .line 132
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Character must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist toChar(Ljava/lang/Character;C)C
    .registers 3
    .param p0, "ch"    # Ljava/lang/Character;
    .param p1, "defaultValue"    # C

    .line 151
    if-nez p0, :cond_3

    .line 152
    return p1

    .line 154
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result v0

    return v0
.end method

.method public static blacklist toChar(Ljava/lang/String;)C
    .registers 3
    .param p0, "str"    # Ljava/lang/String;

    .line 174
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 177
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0

    .line 175
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The String must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist toChar(Ljava/lang/String;C)C
    .registers 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultValue"    # C

    .line 196
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 197
    return p1

    .line 199
    :cond_7
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public static blacklist toCharacterObject(C)Ljava/lang/Character;
    .registers 2
    .param p0, "ch"    # C
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 89
    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist toCharacterObject(Ljava/lang/String;)Ljava/lang/Character;
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .line 110
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 111
    const/4 v0, 0x0

    return-object v0

    .line 113
    :cond_8
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist toIntValue(C)I
    .registers 4
    .param p0, "ch"    # C

    .line 219
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/CharUtils;->isAsciiNumeric(C)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 222
    add-int/lit8 v0, p0, -0x30

    return v0

    .line 220
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The character "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not in the range \'0\' - \'9\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist toIntValue(CI)I
    .registers 3
    .param p0, "ch"    # C
    .param p1, "defaultValue"    # I

    .line 241
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/CharUtils;->isAsciiNumeric(C)Z

    move-result v0

    if-nez v0, :cond_7

    .line 242
    return p1

    .line 244
    :cond_7
    add-int/lit8 v0, p0, -0x30

    return v0
.end method

.method public static blacklist toIntValue(Ljava/lang/Character;)I
    .registers 3
    .param p0, "ch"    # Ljava/lang/Character;

    .line 264
    if-eqz p0, :cond_b

    .line 267
    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-static {v0}, Lorg/apache/miui/commons/lang3/CharUtils;->toIntValue(C)I

    move-result v0

    return v0

    .line 265
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The character must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist toIntValue(Ljava/lang/Character;I)I
    .registers 3
    .param p0, "ch"    # Ljava/lang/Character;
    .param p1, "defaultValue"    # I

    .line 287
    if-nez p0, :cond_3

    .line 288
    return p1

    .line 290
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-static {v0, p1}, Lorg/apache/miui/commons/lang3/CharUtils;->toIntValue(CI)I

    move-result v0

    return v0
.end method

.method public static blacklist toString(C)Ljava/lang/String;
    .registers 4
    .param p0, "ch"    # C

    .line 309
    const/16 v0, 0x80

    if-ge p0, v0, :cond_9

    .line 310
    sget-object v0, Lorg/apache/miui/commons/lang3/CharUtils;->CHAR_STRING_ARRAY:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0

    .line 312
    :cond_9
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [C

    const/4 v2, 0x0

    aput-char p0, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static blacklist toString(Ljava/lang/Character;)Ljava/lang/String;
    .registers 2
    .param p0, "ch"    # Ljava/lang/Character;

    .line 333
    if-nez p0, :cond_4

    .line 334
    const/4 v0, 0x0

    return-object v0

    .line 336
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-static {v0}, Lorg/apache/miui/commons/lang3/CharUtils;->toString(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist unicodeEscaped(C)Ljava/lang/String;
    .registers 3
    .param p0, "ch"    # C

    .line 354
    const/16 v0, 0x10

    if-ge p0, v0, :cond_1c

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\\u000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 356
    :cond_1c
    const/16 v0, 0x100

    if-ge p0, v0, :cond_38

    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\\u00"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 358
    :cond_38
    const/16 v0, 0x1000

    if-ge p0, v0, :cond_54

    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\\u0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 361
    :cond_54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\\u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist unicodeEscaped(Ljava/lang/Character;)Ljava/lang/String;
    .registers 2
    .param p0, "ch"    # Ljava/lang/Character;

    .line 381
    if-nez p0, :cond_4

    .line 382
    const/4 v0, 0x0

    return-object v0

    .line 384
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-static {v0}, Lorg/apache/miui/commons/lang3/CharUtils;->unicodeEscaped(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
