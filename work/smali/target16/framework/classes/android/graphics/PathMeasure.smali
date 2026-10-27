.class public Landroid/graphics/PathMeasure;
.super Ljava/lang/Object;
.source "PathMeasure.java"


# static fields
.field public static final whitelist POSITION_MATRIX_FLAG:I = 0x1

.field public static final whitelist TANGENT_MATRIX_FLAG:I = 0x2


# instance fields
.field private greylist-max-o mPath:Landroid/graphics/Path;

.field private greylist-max-o native_instance:J


# direct methods
.method public constructor whitelist <init>()V
    .registers 4

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/PathMeasure;->mPath:Landroid/graphics/Path;

    .line 34
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/graphics/PathMeasure;->native_create(JZ)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/PathMeasure;->native_instance:J

    .line 35
    return-void
.end method

.method public constructor whitelist <init>(Landroid/graphics/Path;Z)V
    .registers 5

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Landroid/graphics/PathMeasure;->mPath:Landroid/graphics/Path;

    .line 54
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroid/graphics/Path;->readOnlyNI()J

    move-result-wide v0

    goto :goto_e

    :cond_c
    const-wide/16 v0, 0x0

    :goto_e
    invoke-static {v0, v1, p2}, Landroid/graphics/PathMeasure;->native_create(JZ)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/graphics/PathMeasure;->native_instance:J

    .line 56
    return-void
.end method

.method private static native greylist-max-o native_create(JZ)J
.end method

.method private static native greylist-max-o native_destroy(J)V
.end method

.method private static native greylist-max-o native_getLength(J)F
.end method

.method private static native greylist-max-o native_getMatrix(JFJI)Z
.end method

.method private static native greylist-max-o native_getPosTan(JF[F[F)Z
.end method

.method private static native greylist-max-o native_getSegment(JFFJZ)Z
.end method

.method private static native greylist-max-o native_isClosed(J)Z
.end method

.method private static native greylist-max-o native_nextContour(J)Z
.end method

.method private static native greylist-max-o native_setPath(JJZ)V
.end method


# virtual methods
.method protected whitelist test-api finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 157
    iget-wide v0, p0, Landroid/graphics/PathMeasure;->native_instance:J

    invoke-static {v0, v1}, Landroid/graphics/PathMeasure;->native_destroy(J)V

    .line 158
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/graphics/PathMeasure;->native_instance:J

    .line 159
    return-void
.end method

.method public whitelist getLength()F
    .registers 3

    .line 73
    iget-wide v0, p0, Landroid/graphics/PathMeasure;->native_instance:J

    invoke-static {v0, v1}, Landroid/graphics/PathMeasure;->native_getLength(J)F

    move-result v0

    return v0
.end method

.method public whitelist getMatrix(FLandroid/graphics/Matrix;I)Z
    .registers 10

    .line 109
    iget-wide v0, p0, Landroid/graphics/PathMeasure;->native_instance:J

    invoke-virtual {p2}, Landroid/graphics/Matrix;->ni()J

    move-result-wide v3

    move v2, p1

    move v5, p3

    invoke-static/range {v0 .. v5}, Landroid/graphics/PathMeasure;->native_getMatrix(JFJI)Z

    move-result p1

    return p1
.end method

.method public whitelist getPosTan(F[F[F)Z
    .registers 6

    .line 88
    const/4 v0, 0x2

    if-eqz p2, :cond_6

    array-length v1, p2

    if-lt v1, v0, :cond_c

    :cond_6
    if-eqz p3, :cond_12

    array-length v1, p3

    if-lt v1, v0, :cond_c

    goto :goto_12

    .line 90
    :cond_c
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p1

    .line 92
    :cond_12
    :goto_12
    iget-wide v0, p0, Landroid/graphics/PathMeasure;->native_instance:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/graphics/PathMeasure;->native_getPosTan(JF[F[F)Z

    move-result p1

    return p1
.end method

.method public whitelist getSegment(FFLandroid/graphics/Path;Z)Z
    .registers 15

    .line 127
    invoke-virtual {p0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v0

    .line 128
    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    if-gez v2, :cond_b

    .line 129
    move v5, v1

    goto :goto_c

    .line 128
    :cond_b
    move v5, p1

    .line 131
    :goto_c
    cmpl-float p1, p2, v0

    if-lez p1, :cond_12

    .line 132
    move v6, v0

    goto :goto_13

    .line 131
    :cond_12
    move v6, p2

    .line 134
    :goto_13
    cmpl-float p1, v5, v6

    if-ltz p1, :cond_19

    .line 135
    const/4 p1, 0x0

    return p1

    .line 138
    :cond_19
    iget-wide v3, p0, Landroid/graphics/PathMeasure;->native_instance:J

    invoke-virtual {p3}, Landroid/graphics/Path;->mutateNI()J

    move-result-wide v7

    move v9, p4

    invoke-static/range {v3 .. v9}, Landroid/graphics/PathMeasure;->native_getSegment(JFFJZ)Z

    move-result p1

    return p1
.end method

.method public whitelist isClosed()Z
    .registers 3

    .line 145
    iget-wide v0, p0, Landroid/graphics/PathMeasure;->native_instance:J

    invoke-static {v0, v1}, Landroid/graphics/PathMeasure;->native_isClosed(J)Z

    move-result v0

    return v0
.end method

.method public whitelist nextContour()Z
    .registers 3

    .line 153
    iget-wide v0, p0, Landroid/graphics/PathMeasure;->native_instance:J

    invoke-static {v0, v1}, Landroid/graphics/PathMeasure;->native_nextContour(J)Z

    move-result v0

    return v0
.end method

.method public whitelist setPath(Landroid/graphics/Path;Z)V
    .registers 7

    .line 62
    iput-object p1, p0, Landroid/graphics/PathMeasure;->mPath:Landroid/graphics/Path;

    .line 63
    iget-wide v0, p0, Landroid/graphics/PathMeasure;->native_instance:J

    .line 64
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/graphics/Path;->readOnlyNI()J

    move-result-wide v2

    goto :goto_d

    :cond_b
    const-wide/16 v2, 0x0

    .line 63
    :goto_d
    invoke-static {v0, v1, v2, v3, p2}, Landroid/graphics/PathMeasure;->native_setPath(JJZ)V

    .line 66
    return-void
.end method
