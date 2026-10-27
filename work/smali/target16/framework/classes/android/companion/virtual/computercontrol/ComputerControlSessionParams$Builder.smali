.class public final Landroid/companion/virtual/computercontrol/ComputerControlSessionParams$Builder;
.super Ljava/lang/Object;
.source "ComputerControlSessionParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/virtual/computercontrol/ComputerControlSessionParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mDisplayDpi:I

.field private blacklist mDisplayHeightPx:I

.field private blacklist mDisplaySurface:Landroid/view/Surface;

.field private blacklist mDisplayWidthPx:I

.field private blacklist mIsDisplayAlwaysUnlocked:Z

.field private blacklist mName:Ljava/lang/String;

.field private blacklist mTargetPackageNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/companion/virtual/computercontrol/ComputerControlSessionParams;
    .registers 12

    .line 252
    iget-object v0, p0, Landroid/companion/virtual/computercontrol/ComputerControlSessionParams$Builder;->mName:Ljava/lang/String;

    if-eqz v0, :cond_4a

    iget-object v0, p0, Landroid/companion/virtual/computercontrol/ComputerControlSessionParams$Builder;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4a

    .line 256
    iget-object v0, p0, Landroid/companion/virtual/computercontrol/ComputerControlSessionParams$Builder;->mDisplaySurface:Landroid/view/Surface;

    if-eqz v0, :cond_35

    .line 257
    iget v0, p0, Landroid/companion/virtual/computercontrol/ComputerControlSessionParams$Builder;->mDisplayWidthPx:I

    if-lez v0, :cond_2d

    .line 261
    iget v0, p0, Landroid/companion/virtual/computercontrol/ComputerControlSessionParams$Builder;->mDisplayHeightPx:I

    if-lez v0, :cond_25

    .line 265
    iget v0, p0, Landroid/companion/virtual/computercontrol/ComputerControlSessionParams$Builder;->mDisplayDpi:I

    if-lez v0, :cond_1d

    goto :goto_35

    .line 266
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Display DPI must be positive if surface is set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Display height must be positive if surface is set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :cond_2d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Display width must be positive if surface is set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 270
    :cond_35
    :goto_35
    new-instance v2, Landroid/companion/virtual/computercontrol/ComputerControlSessionParams;

    iget-object v3, p0, Landroid/companion/virtual/computercontrol/ComputerControlSessionParams$Builder;->mName:Ljava/lang/String;

    iget-object v4, p0, Landroid/companion/virtual/computercontrol/ComputerControlSessionParams$Builder;->mTargetPackageNames:Ljava/util/List;

    iget v5, p0, Landroid/companion/virtual/computercontrol/ComputerControlSessionParams$Builder;->mDisplayWidthPx:I

    iget v6, p0, Landroid/companion/virtual/computercontrol/ComputerControlSessionParams$Builder;->mDisplayHeightPx:I

    iget v7, p0, Landroid/companion/virtual/computercontrol/ComputerControlSessionParams$Builder;->mDisplayDpi:I

    iget-object v8, p0, Landroid/companion/virtual/computercontrol/ComputerControlSessionParams$Builder;->mDisplaySurface:Landroid/view/Surface;

    iget-boolean v9, p0, Landroid/companion/virtual/computercontrol/ComputerControlSessionParams$Builder;->mIsDisplayAlwaysUnlocked:Z

    const/4 v10, 0x0

    invoke-direct/range {v2 .. v10}, Landroid/companion/virtual/computercontrol/ComputerControlSessionParams;-><init>(Ljava/lang/String;Ljava/util/List;IIILandroid/view/Surface;ZLandroid/companion/virtual/computercontrol/ComputerControlSessionParams-IA;)V

    return-object v2

    .line 253
    :cond_4a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Name must be set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setDisplayAlwaysUnlocked(Z)Landroid/companion/virtual/computercontrol/ComputerControlSessionParams$Builder;
    .registers 2

    .line 239
    iput-boolean p1, p0, Landroid/companion/virtual/computercontrol/ComputerControlSessionParams$Builder;->mIsDisplayAlwaysUnlocked:Z

    .line 240
    return-object p0
.end method

.method public blacklist setDisplayDpi(I)Landroid/companion/virtual/computercontrol/ComputerControlSessionParams$Builder;
    .registers 2

    .line 215
    iput p1, p0, Landroid/companion/virtual/computercontrol/ComputerControlSessionParams$Builder;->mDisplayDpi:I

    .line 216
    return-object p0
.end method

.method public blacklist setDisplayHeightPx(I)Landroid/companion/virtual/computercontrol/ComputerControlSessionParams$Builder;
    .registers 2

    .line 203
    iput p1, p0, Landroid/companion/virtual/computercontrol/ComputerControlSessionParams$Builder;->mDisplayHeightPx:I

    .line 204
    return-object p0
.end method

.method public blacklist setDisplaySurface(Landroid/view/Surface;)Landroid/companion/virtual/computercontrol/ComputerControlSessionParams$Builder;
    .registers 2

    .line 227
    iput-object p1, p0, Landroid/companion/virtual/computercontrol/ComputerControlSessionParams$Builder;->mDisplaySurface:Landroid/view/Surface;

    .line 228
    return-object p0
.end method

.method public blacklist setDisplayWidthPx(I)Landroid/companion/virtual/computercontrol/ComputerControlSessionParams$Builder;
    .registers 2

    .line 191
    iput p1, p0, Landroid/companion/virtual/computercontrol/ComputerControlSessionParams$Builder;->mDisplayWidthPx:I

    .line 192
    return-object p0
.end method

.method public blacklist setName(Ljava/lang/String;)Landroid/companion/virtual/computercontrol/ComputerControlSessionParams$Builder;
    .registers 3

    .line 159
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 162
    iput-object p1, p0, Landroid/companion/virtual/computercontrol/ComputerControlSessionParams$Builder;->mName:Ljava/lang/String;

    .line 163
    return-object p0

    .line 160
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Name must not be empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist setTargetPackageNames(Ljava/util/List;)Landroid/companion/virtual/computercontrol/ComputerControlSessionParams$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/companion/virtual/computercontrol/ComputerControlSessionParams$Builder;"
        }
    .end annotation

    .line 179
    iput-object p1, p0, Landroid/companion/virtual/computercontrol/ComputerControlSessionParams$Builder;->mTargetPackageNames:Ljava/util/List;

    .line 180
    return-object p0
.end method
