.class Lcom/android/server/audio/SpatializerHelper$1;
.super Landroid/util/SparseIntArray;
.source "SpatializerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/SpatializerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(I)V
    .registers 5
    .param p1, "initialCapacity"    # I

    .line 80
    invoke-direct {p0, p1}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 82
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/audio/SpatializerHelper$1;->append(II)V

    .line 83
    const/4 v0, 0x3

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/android/server/audio/SpatializerHelper$1;->append(II)V

    .line 84
    const/4 v0, 0x4

    invoke-virtual {p0, v0, v2}, Lcom/android/server/audio/SpatializerHelper$1;->append(II)V

    .line 86
    const/16 v0, 0x8

    invoke-virtual {p0, v0, v2}, Lcom/android/server/audio/SpatializerHelper$1;->append(II)V

    .line 87
    const/16 v0, 0xd

    invoke-virtual {p0, v0, v1}, Lcom/android/server/audio/SpatializerHelper$1;->append(II)V

    .line 88
    const/16 v0, 0xc

    invoke-virtual {p0, v0, v1}, Lcom/android/server/audio/SpatializerHelper$1;->append(II)V

    .line 89
    const/16 v0, 0xb

    invoke-virtual {p0, v0, v1}, Lcom/android/server/audio/SpatializerHelper$1;->append(II)V

    .line 90
    const/16 v0, 0x16

    invoke-virtual {p0, v0, v2}, Lcom/android/server/audio/SpatializerHelper$1;->append(II)V

    .line 91
    const/4 v0, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/android/server/audio/SpatializerHelper$1;->append(II)V

    .line 92
    const/4 v0, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/android/server/audio/SpatializerHelper$1;->append(II)V

    .line 93
    const/16 v0, 0x13

    invoke-virtual {p0, v0, v1}, Lcom/android/server/audio/SpatializerHelper$1;->append(II)V

    .line 94
    const/16 v0, 0x17

    invoke-virtual {p0, v0, v2}, Lcom/android/server/audio/SpatializerHelper$1;->append(II)V

    .line 95
    const/16 v0, 0x1a

    invoke-virtual {p0, v0, v2}, Lcom/android/server/audio/SpatializerHelper$1;->append(II)V

    .line 96
    const/16 v0, 0x1b

    invoke-virtual {p0, v0, v1}, Lcom/android/server/audio/SpatializerHelper$1;->append(II)V

    .line 98
    const/16 v0, 0x1e

    invoke-virtual {p0, v0, v2}, Lcom/android/server/audio/SpatializerHelper$1;->append(II)V

    .line 99
    return-void
.end method
