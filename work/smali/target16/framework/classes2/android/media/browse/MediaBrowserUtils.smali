.class public Landroid/media/browse/MediaBrowserUtils;
.super Ljava/lang/Object;
.source "MediaBrowserUtils.java"


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist applyPagingOptions(Ljava/util/List;Landroid/os/Bundle;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;"
        }
    .end annotation

    .line 88
    if-nez p0, :cond_4

    .line 89
    const/4 p0, 0x0

    return-object p0

    .line 91
    :cond_4
    const-string v0, "android.media.browse.extra.PAGE"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 92
    const-string v2, "android.media.browse.extra.PAGE_SIZE"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 93
    if-ne v0, v1, :cond_16

    if-ne p1, v1, :cond_16

    .line 94
    return-object p0

    .line 96
    :cond_16
    mul-int v1, p1, v0

    .line 97
    add-int v2, v1, p1

    .line 98
    if-ltz v0, :cond_35

    const/4 v0, 0x1

    if-lt p1, v0, :cond_35

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-lt v1, p1, :cond_26

    goto :goto_35

    .line 101
    :cond_26
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-le v2, p1, :cond_30

    .line 102
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 104
    :cond_30
    invoke-interface {p0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 99
    :cond_35
    :goto_35
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method public static greylist-max-o areSameOptions(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .registers 8

    .line 32
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 33
    return v0

    .line 34
    :cond_4
    const/4 v1, 0x0

    const-string v2, "android.media.browse.extra.PAGE_SIZE"

    const-string v3, "android.media.browse.extra.PAGE"

    const/4 v4, -0x1

    if-nez p0, :cond_1b

    .line 35
    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v4, :cond_19

    .line 36
    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v4, :cond_19

    goto :goto_1a

    :cond_19
    move v0, v1

    .line 35
    :goto_1a
    return v0

    .line 37
    :cond_1b
    if-nez p1, :cond_2c

    .line 38
    invoke-virtual {p0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v4, :cond_2a

    .line 39
    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v4, :cond_2a

    goto :goto_2b

    :cond_2a
    move v0, v1

    .line 38
    :goto_2b
    return v0

    .line 41
    :cond_2c
    invoke-virtual {p0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 42
    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v5, v3, :cond_41

    .line 43
    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    .line 44
    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-ne p0, p1, :cond_41

    goto :goto_42

    :cond_41
    move v0, v1

    .line 41
    :goto_42
    return v0
.end method

.method public static greylist-max-o hasDuplicatedItems(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .registers 8

    .line 52
    const-string v0, "android.media.browse.extra.PAGE"

    const/4 v1, -0x1

    if-nez p0, :cond_7

    move v2, v1

    goto :goto_b

    :cond_7
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 53
    :goto_b
    if-nez p1, :cond_f

    move v0, v1

    goto :goto_13

    :cond_f
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 54
    :goto_13
    const-string v3, "android.media.browse.extra.PAGE_SIZE"

    if-nez p0, :cond_19

    move p0, v1

    goto :goto_1d

    :cond_19
    invoke-virtual {p0, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    .line 55
    :goto_1d
    if-nez p1, :cond_21

    move p1, v1

    goto :goto_25

    :cond_21
    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 58
    :goto_25
    const v3, 0x7fffffff

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v1, :cond_33

    if-ne p0, v1, :cond_2f

    goto :goto_33

    .line 62
    :cond_2f
    mul-int/2addr v2, p0

    .line 63
    add-int/2addr p0, v2

    sub-int/2addr p0, v5

    goto :goto_36

    .line 59
    :cond_33
    :goto_33
    nop

    .line 60
    move p0, v3

    move v2, v4

    .line 66
    :goto_36
    if-eq v0, v1, :cond_40

    if-ne p1, v1, :cond_3b

    goto :goto_40

    .line 70
    :cond_3b
    mul-int/2addr v0, p1

    .line 71
    add-int/2addr p1, v0

    add-int/lit8 v3, p1, -0x1

    goto :goto_42

    .line 67
    :cond_40
    :goto_40
    nop

    .line 68
    move v0, v4

    .line 74
    :goto_42
    if-gt v2, v0, :cond_47

    if-gt v0, p0, :cond_47

    .line 75
    return v5

    .line 76
    :cond_47
    if-gt v2, v3, :cond_4c

    if-gt v3, p0, :cond_4c

    .line 77
    return v5

    .line 79
    :cond_4c
    return v4
.end method
