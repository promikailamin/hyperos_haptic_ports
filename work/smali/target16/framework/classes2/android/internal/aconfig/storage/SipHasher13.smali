.class public Landroid/internal/aconfig/storage/SipHasher13;
.super Ljava/lang/Object;
.source "SipHasher13.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/internal/aconfig/storage/SipHasher13$State;
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist hash([B)J
    .registers 12

    .line 84
    new-instance v0, Landroid/internal/aconfig/storage/SipHasher13$State;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Landroid/internal/aconfig/storage/SipHasher13$State;-><init>(JJ)V

    .line 85
    array-length v3, p0

    .line 86
    and-int/lit8 v4, v3, 0x7

    .line 87
    const/4 v5, 0x0

    .line 89
    :goto_b
    sub-int v6, v3, v4

    if-ge v5, v6, :cond_1b

    .line 90
    const/16 v6, 0x8

    invoke-static {p0, v5, v6}, Landroid/internal/aconfig/storage/SipHasher13;->loadLe([BII)J

    move-result-wide v6

    .line 91
    add-int/lit8 v5, v5, 0x8

    .line 92
    invoke-virtual {v0, v6, v7}, Landroid/internal/aconfig/storage/SipHasher13$State;->compress(J)V

    .line 93
    goto :goto_b

    .line 96
    :cond_1b
    mul-int/lit8 v6, v4, 0x8

    const-wide/16 v7, 0xff

    shl-long v9, v7, v6

    invoke-static {p0, v5, v4}, Landroid/internal/aconfig/storage/SipHasher13;->loadLe([BII)J

    move-result-wide v5

    or-long/2addr v5, v9

    .line 97
    const/4 p0, 0x7

    if-ne v4, p0, :cond_2d

    .line 99
    invoke-virtual {v0, v5, v6}, Landroid/internal/aconfig/storage/SipHasher13$State;->compress(J)V

    .line 100
    goto :goto_2e

    .line 97
    :cond_2d
    move-wide v1, v5

    .line 103
    :goto_2e
    add-int/lit8 v3, v3, 0x1

    int-to-long v3, v3

    and-long/2addr v3, v7

    const/16 p0, 0x38

    shl-long/2addr v3, p0

    or-long/2addr v1, v3

    .line 104
    invoke-virtual {v0, v1, v2}, Landroid/internal/aconfig/storage/SipHasher13$State;->compress(J)V

    .line 106
    invoke-virtual {v0}, Landroid/internal/aconfig/storage/SipHasher13$State;->finish()J

    move-result-wide v0

    return-wide v0
.end method

.method private static blacklist loadLe([BII)J
    .registers 10

    .line 110
    nop

    .line 111
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, p2, :cond_15

    .line 112
    add-int v3, v2, p1

    aget-byte v3, p0, v3

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    mul-int/lit8 v5, v2, 0x8

    shl-long/2addr v3, v5

    or-long/2addr v0, v3

    .line 111
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 114
    :cond_15
    return-wide v0
.end method
