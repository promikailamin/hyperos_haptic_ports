.class public Landroid/util/MiuiDeclineWhiteColorUtil;
.super Ljava/lang/Object;
.source "MiuiDeclineWhiteColorUtil.java"


# static fields
.field private static final blacklist DECLINE_COLOR:Ljava/lang/String; = "fcfcfc"


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist getDeclineColor(I)I
    .registers 7
    .param p0, "color"    # I

    .line 22
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 23
    .local v0, "colorStr":Ljava/lang/String;
    const/16 v1, 0x10

    const-string v2, "fcfcfc"

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_2e

    .line 24
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 25
    .local v2, "declineColor":Ljava/lang/String;
    invoke-static {v2, v1}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;I)I

    move-result v1

    return v1

    .line 27
    .end local v2    # "declineColor":Ljava/lang/String;
    :cond_2e
    invoke-static {v2, v1}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static whitelist isShouldDeclineColor(I)Z
    .registers 8
    .param p0, "color"    # I

    .line 9
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 10
    .local v0, "colorStr":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    const/16 v3, 0x8

    if-ne v1, v3, :cond_11

    .line 11
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 13
    :cond_11
    const-string v1, "fcfcfc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1b

    .line 14
    return v3

    .line 16
    :cond_1b
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 17
    .local v1, "colorArr":[C
    const/4 v4, 0x0

    aget-char v5, v1, v4

    const/16 v6, 0x66

    if-ne v5, v6, :cond_40

    aget-char v2, v1, v2

    if-ne v2, v6, :cond_40

    const/4 v2, 0x4

    aget-char v2, v1, v2

    if-ne v2, v6, :cond_40

    aget-char v2, v1, v3

    const/16 v5, 0x63

    if-lt v2, v5, :cond_40

    const/4 v2, 0x3

    aget-char v2, v1, v2

    if-lt v2, v5, :cond_40

    const/4 v2, 0x5

    aget-char v2, v1, v2

    if-lt v2, v5, :cond_40

    goto :goto_41

    :cond_40
    move v3, v4

    :goto_41
    return v3
.end method
