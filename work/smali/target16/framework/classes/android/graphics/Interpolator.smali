.class public Landroid/graphics/Interpolator;
.super Ljava/lang/Object;
.source "Interpolator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Interpolator$Result;
    }
.end annotation


# instance fields
.field private greylist-max-o mFrameCount:I

.field private greylist-max-o mValueCount:I

.field private greylist-max-o native_instance:J


# direct methods
.method public constructor whitelist <init>(I)V
    .registers 4

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Landroid/graphics/Interpolator;->mValueCount:I

    .line 26
    const/4 v0, 0x2

    iput v0, p0, Landroid/graphics/Interpolator;->mFrameCount:I

    .line 27
    invoke-static {p1, v0}, Landroid/graphics/Interpolator;->nativeConstructor(II)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/Interpolator;->native_instance:J

    .line 28
    return-void
.end method

.method public constructor whitelist <init>(II)V
    .registers 3

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Landroid/graphics/Interpolator;->mValueCount:I

    .line 32
    iput p2, p0, Landroid/graphics/Interpolator;->mFrameCount:I

    .line 33
    invoke-static {p1, p2}, Landroid/graphics/Interpolator;->nativeConstructor(II)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/graphics/Interpolator;->native_instance:J

    .line 34
    return-void
.end method

.method private static native greylist-max-o nativeConstructor(II)J
.end method

.method private static native greylist-max-o nativeDestructor(J)V
.end method

.method private static native greylist-max-o nativeReset(JII)V
.end method

.method private static native greylist-max-o nativeSetKeyFrame(JII[F[F)V
.end method

.method private static native greylist-max-o nativeSetRepeatMirror(JFZ)V
.end method

.method private static native greylist-max-o nativeTimeToValues(JI[F)I
.end method


# virtual methods
.method protected whitelist test-api finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 150
    iget-wide v0, p0, Landroid/graphics/Interpolator;->native_instance:J

    invoke-static {v0, v1}, Landroid/graphics/Interpolator;->nativeDestructor(J)V

    .line 151
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/graphics/Interpolator;->native_instance:J

    .line 152
    return-void
.end method

.method public final whitelist getKeyFrameCount()I
    .registers 2

    .line 57
    iget v0, p0, Landroid/graphics/Interpolator;->mFrameCount:I

    return v0
.end method

.method public final whitelist getValueCount()I
    .registers 2

    .line 61
    iget v0, p0, Landroid/graphics/Interpolator;->mValueCount:I

    return v0
.end method

.method public whitelist reset(I)V
    .registers 3

    .line 42
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Landroid/graphics/Interpolator;->reset(II)V

    .line 43
    return-void
.end method

.method public whitelist reset(II)V
    .registers 5

    .line 51
    iput p1, p0, Landroid/graphics/Interpolator;->mValueCount:I

    .line 52
    iput p2, p0, Landroid/graphics/Interpolator;->mFrameCount:I

    .line 53
    iget-wide v0, p0, Landroid/graphics/Interpolator;->native_instance:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Interpolator;->nativeReset(JII)V

    .line 54
    return-void
.end method

.method public whitelist setKeyFrame(II[F)V
    .registers 5

    .line 75
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/graphics/Interpolator;->setKeyFrame(II[F[F)V

    .line 76
    return-void
.end method

.method public whitelist setKeyFrame(II[F[F)V
    .registers 11

    .line 89
    if-ltz p1, :cond_28

    iget v0, p0, Landroid/graphics/Interpolator;->mFrameCount:I

    if-ge p1, v0, :cond_28

    .line 92
    array-length v0, p3

    iget v1, p0, Landroid/graphics/Interpolator;->mValueCount:I

    if-lt v0, v1, :cond_22

    .line 95
    if-eqz p4, :cond_18

    array-length v0, p4

    const/4 v1, 0x4

    if-lt v0, v1, :cond_12

    goto :goto_18

    .line 96
    :cond_12
    new-instance p1, Ljava/lang/ArrayStoreException;

    invoke-direct {p1}, Ljava/lang/ArrayStoreException;-><init>()V

    throw p1

    .line 98
    :cond_18
    :goto_18
    iget-wide v0, p0, Landroid/graphics/Interpolator;->native_instance:J

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/Interpolator;->nativeSetKeyFrame(JII[F[F)V

    .line 99
    return-void

    .line 93
    :cond_22
    new-instance p1, Ljava/lang/ArrayStoreException;

    invoke-direct {p1}, Ljava/lang/ArrayStoreException;-><init>()V

    throw p1

    .line 90
    :cond_28
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public whitelist setRepeatMirror(FZ)V
    .registers 5

    .line 107
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_a

    .line 108
    iget-wide v0, p0, Landroid/graphics/Interpolator;->native_instance:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Interpolator;->nativeSetRepeatMirror(JFZ)V

    .line 110
    :cond_a
    return-void
.end method

.method public whitelist timeToValues(I[F)Landroid/graphics/Interpolator$Result;
    .registers 5

    .line 138
    if-eqz p2, :cond_e

    array-length v0, p2

    iget v1, p0, Landroid/graphics/Interpolator;->mValueCount:I

    if-lt v0, v1, :cond_8

    goto :goto_e

    .line 139
    :cond_8
    new-instance p1, Ljava/lang/ArrayStoreException;

    invoke-direct {p1}, Ljava/lang/ArrayStoreException;-><init>()V

    throw p1

    .line 141
    :cond_e
    :goto_e
    iget-wide v0, p0, Landroid/graphics/Interpolator;->native_instance:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Interpolator;->nativeTimeToValues(JI[F)I

    move-result p1

    packed-switch p1, :pswitch_data_20

    .line 144
    sget-object p1, Landroid/graphics/Interpolator$Result;->FREEZE_END:Landroid/graphics/Interpolator$Result;

    return-object p1

    .line 143
    :pswitch_1a
    sget-object p1, Landroid/graphics/Interpolator$Result;->FREEZE_START:Landroid/graphics/Interpolator$Result;

    return-object p1

    .line 142
    :pswitch_1d
    sget-object p1, Landroid/graphics/Interpolator$Result;->NORMAL:Landroid/graphics/Interpolator$Result;

    return-object p1

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1a
    .end packed-switch
.end method

.method public whitelist timeToValues([F)Landroid/graphics/Interpolator$Result;
    .registers 4

    .line 123
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p0, v0, p1}, Landroid/graphics/Interpolator;->timeToValues(I[F)Landroid/graphics/Interpolator$Result;

    move-result-object p1

    return-object p1
.end method
