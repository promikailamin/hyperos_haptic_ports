.class public Landroid/util/PathParser;
.super Ljava/lang/Object;
.source "PathParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/PathParser$PathData;
    }
.end annotation


# static fields
.field static final greylist-max-o LOGTAG:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smnCreateEmptyPathData()J
    .registers 2

    invoke-static {}, Landroid/util/PathParser;->nCreateEmptyPathData()J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$smnCreatePathData(J)J
    .registers 2

    invoke-static {p0, p1}, Landroid/util/PathParser;->nCreatePathData(J)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnCreatePathDataFromString(Ljava/lang/String;I)J
    .registers 2

    invoke-static {p0, p1}, Landroid/util/PathParser;->nCreatePathDataFromString(Ljava/lang/String;I)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnFinalize(J)V
    .registers 2

    invoke-static {p0, p1}, Landroid/util/PathParser;->nFinalize(J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnSetPathData(JJ)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/util/PathParser;->nSetPathData(JJ)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 28
    const-class v0, Landroid/util/PathParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/util/PathParser;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist-max-o canMorph(Landroid/util/PathParser$PathData;Landroid/util/PathParser$PathData;)Z
    .registers 4

    .line 60
    iget-wide v0, p0, Landroid/util/PathParser$PathData;->mNativePathData:J

    iget-wide p0, p1, Landroid/util/PathParser$PathData;->mNativePathData:J

    invoke-static {v0, v1, p0, p1}, Landroid/util/PathParser;->nCanMorph(JJ)Z

    move-result p0

    return p0
.end method

.method public static greylist-max-r createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;
    .registers 5

    .line 36
    if-eqz p0, :cond_11

    .line 39
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 40
    iget-wide v1, v0, Landroid/graphics/Path;->mNativePath:J

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v1, v2, p0, v3}, Landroid/util/PathParser;->nParseStringForPath(JLjava/lang/String;I)V

    .line 41
    return-object v0

    .line 37
    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Path string can not be null."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static greylist-max-o createPathFromPathData(Landroid/graphics/Path;Landroid/util/PathParser$PathData;)V
    .registers 4

    .line 51
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    iget-wide p0, p1, Landroid/util/PathParser$PathData;->mNativePathData:J

    invoke-static {v0, v1, p0, p1}, Landroid/util/PathParser;->nCreatePathFromPathData(JJ)V

    .line 52
    return-void
.end method

.method public static greylist-max-o interpolatePathData(Landroid/util/PathParser$PathData;Landroid/util/PathParser$PathData;Landroid/util/PathParser$PathData;F)Z
    .registers 11

    .line 121
    iget-wide v0, p0, Landroid/util/PathParser$PathData;->mNativePathData:J

    iget-wide v2, p1, Landroid/util/PathParser$PathData;->mNativePathData:J

    iget-wide v4, p2, Landroid/util/PathParser$PathData;->mNativePathData:J

    move v6, p3

    invoke-static/range {v0 .. v6}, Landroid/util/PathParser;->nInterpolatePathData(JJJF)Z

    move-result p0

    return p0
.end method

.method private static native greylist-max-o nCanMorph(JJ)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nCreateEmptyPathData()J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nCreatePathData(J)J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nCreatePathDataFromString(Ljava/lang/String;I)J
.end method

.method private static native greylist-max-o nCreatePathFromPathData(JJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nFinalize(J)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nInterpolatePathData(JJJF)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nParseStringForPath(JLjava/lang/String;I)V
.end method

.method private static native greylist-max-o nSetPathData(JJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method
