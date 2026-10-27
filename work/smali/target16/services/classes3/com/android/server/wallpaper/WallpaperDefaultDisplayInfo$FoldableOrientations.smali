.class final Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo$FoldableOrientations;
.super Ljava/lang/Object;
.source "WallpaperDefaultDisplayInfo.java"


# instance fields
.field public final foldedOrientation:I

.field public final unfoldedOrientation:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput p1, p0, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo$FoldableOrientations;->foldedOrientation:I

    .line 57
    iput p2, p0, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo$FoldableOrientations;->unfoldedOrientation:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 63
    :cond_4
    instance-of v1, p1, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo$FoldableOrientations;

    const/4 v2, 0x0

    if-eqz v1, :cond_18

    check-cast p1, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo$FoldableOrientations;

    .line 64
    iget v1, p0, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo$FoldableOrientations;->foldedOrientation:I

    iget v3, p1, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo$FoldableOrientations;->foldedOrientation:I

    if-ne v1, v3, :cond_18

    iget p0, p0, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo$FoldableOrientations;->unfoldedOrientation:I

    iget p1, p1, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo$FoldableOrientations;->unfoldedOrientation:I

    if-ne p0, p1, :cond_18

    return v0

    :cond_18
    return v2
.end method

.method public hashCode()I
    .registers 2

    .line 70
    iget v0, p0, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo$FoldableOrientations;->foldedOrientation:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget p0, p0, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo$FoldableOrientations;->unfoldedOrientation:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
