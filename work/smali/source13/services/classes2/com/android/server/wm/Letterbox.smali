.class public Lcom/android/server/wm/Letterbox;
.super Ljava/lang/Object;
.source "Letterbox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/Letterbox$LetterboxSurface;,
        Lcom/android/server/wm/Letterbox$InputInterceptor;,
        Lcom/android/server/wm/Letterbox$DoubleTapListener;,
        Lcom/android/server/wm/Letterbox$TapEventReceiver;
    }
.end annotation


# static fields
.field private static final EMPTY_RECT:Landroid/graphics/Rect;

.field private static final ZERO_POINT:Landroid/graphics/Point;


# instance fields
.field private final mAreCornersRounded:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mBlurRadiusSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mBottom:Lcom/android/server/wm/Letterbox$LetterboxSurface;

.field private final mColorSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/graphics/Color;",
            ">;"
        }
    .end annotation
.end field

.field private final mDarkScrimAlphaSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final mDoubleTapCallback:Ljava/util/function/IntConsumer;

.field private final mFullWindowSurface:Lcom/android/server/wm/Letterbox$LetterboxSurface;

.field private final mHasWallpaperBackgroundSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mInner:Landroid/graphics/Rect;

.field private final mLeft:Lcom/android/server/wm/Letterbox$LetterboxSurface;

.field private final mLetterboxStub:Lcom/android/server/wm/LetterboxStub;

.field private final mOuter:Landroid/graphics/Rect;

.field private final mRight:Lcom/android/server/wm/Letterbox$LetterboxSurface;

.field private final mSurfaceControlFactory:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private final mSurfaces:[Lcom/android/server/wm/Letterbox$LetterboxSurface;

.field private final mTop:Lcom/android/server/wm/Letterbox$LetterboxSurface;

.field private final mTransactionFactory:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmBlurRadiusSupplier(Lcom/android/server/wm/Letterbox;)Ljava/util/function/Supplier;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/Letterbox;->mBlurRadiusSupplier:Ljava/util/function/Supplier;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmColorSupplier(Lcom/android/server/wm/Letterbox;)Ljava/util/function/Supplier;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/Letterbox;->mColorSupplier:Ljava/util/function/Supplier;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDarkScrimAlphaSupplier(Lcom/android/server/wm/Letterbox;)Ljava/util/function/Supplier;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/Letterbox;->mDarkScrimAlphaSupplier:Ljava/util/function/Supplier;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDoubleTapCallback(Lcom/android/server/wm/Letterbox;)Ljava/util/function/IntConsumer;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/Letterbox;->mDoubleTapCallback:Ljava/util/function/IntConsumer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHasWallpaperBackgroundSupplier(Lcom/android/server/wm/Letterbox;)Ljava/util/function/Supplier;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/Letterbox;->mHasWallpaperBackgroundSupplier:Ljava/util/function/Supplier;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLetterboxStub(Lcom/android/server/wm/Letterbox;)Lcom/android/server/wm/LetterboxStub;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/Letterbox;->mLetterboxStub:Lcom/android/server/wm/LetterboxStub;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSurfaceControlFactory(Lcom/android/server/wm/Letterbox;)Ljava/util/function/Supplier;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/Letterbox;->mSurfaceControlFactory:Ljava/util/function/Supplier;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTransactionFactory(Lcom/android/server/wm/Letterbox;)Ljava/util/function/Supplier;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/Letterbox;->mTransactionFactory:Ljava/util/function/Supplier;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 53
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/wm/Letterbox;->EMPTY_RECT:Landroid/graphics/Rect;

    .line 54
    new-instance v0, Landroid/graphics/Point;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    sput-object v0, Lcom/android/server/wm/Letterbox;->ZERO_POINT:Landroid/graphics/Point;

    return-void
.end method

.method public constructor <init>(Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/IntConsumer;)V
    .registers 15
    .param p8, "doubleTapCallback"    # Ljava/util/function/IntConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Builder;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Landroid/graphics/Color;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/util/function/IntConsumer;",
            ")V"
        }
    .end annotation

    .line 97
    .local p1, "surfaceControlFactory":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/view/SurfaceControl$Builder;>;"
    .local p2, "transactionFactory":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/view/SurfaceControl$Transaction;>;"
    .local p3, "areCornersRounded":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/Boolean;>;"
    .local p4, "colorSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/graphics/Color;>;"
    .local p5, "hasWallpaperBackgroundSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/Boolean;>;"
    .local p6, "blurRadiusSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/Integer;>;"
    .local p7, "darkScrimAlphaSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/Float;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/Letterbox;->mOuter:Landroid/graphics/Rect;

    .line 66
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/Letterbox;->mInner:Landroid/graphics/Rect;

    .line 67
    new-instance v0, Lcom/android/server/wm/Letterbox$LetterboxSurface;

    const-string/jumbo v1, "top"

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/Letterbox$LetterboxSurface;-><init>(Lcom/android/server/wm/Letterbox;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/Letterbox;->mTop:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    .line 68
    new-instance v1, Lcom/android/server/wm/Letterbox$LetterboxSurface;

    const-string v2, "left"

    invoke-direct {v1, p0, v2}, Lcom/android/server/wm/Letterbox$LetterboxSurface;-><init>(Lcom/android/server/wm/Letterbox;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/wm/Letterbox;->mLeft:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    .line 69
    new-instance v2, Lcom/android/server/wm/Letterbox$LetterboxSurface;

    const-string v3, "bottom"

    invoke-direct {v2, p0, v3}, Lcom/android/server/wm/Letterbox$LetterboxSurface;-><init>(Lcom/android/server/wm/Letterbox;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/wm/Letterbox;->mBottom:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    .line 70
    new-instance v3, Lcom/android/server/wm/Letterbox$LetterboxSurface;

    const-string/jumbo v4, "right"

    invoke-direct {v3, p0, v4}, Lcom/android/server/wm/Letterbox$LetterboxSurface;-><init>(Lcom/android/server/wm/Letterbox;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/wm/Letterbox;->mRight:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    .line 76
    new-instance v4, Lcom/android/server/wm/Letterbox$LetterboxSurface;

    const-string v5, "fullWindow"

    invoke-direct {v4, p0, v5}, Lcom/android/server/wm/Letterbox$LetterboxSurface;-><init>(Lcom/android/server/wm/Letterbox;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/wm/Letterbox;->mFullWindowSurface:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    .line 77
    const/4 v4, 0x4

    new-array v4, v4, [Lcom/android/server/wm/Letterbox$LetterboxSurface;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v0, v4, v1

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v2, v4, v0

    iput-object v4, p0, Lcom/android/server/wm/Letterbox;->mSurfaces:[Lcom/android/server/wm/Letterbox$LetterboxSurface;

    .line 98
    iput-object p1, p0, Lcom/android/server/wm/Letterbox;->mSurfaceControlFactory:Ljava/util/function/Supplier;

    .line 99
    iput-object p2, p0, Lcom/android/server/wm/Letterbox;->mTransactionFactory:Ljava/util/function/Supplier;

    .line 100
    iput-object p3, p0, Lcom/android/server/wm/Letterbox;->mAreCornersRounded:Ljava/util/function/Supplier;

    .line 101
    iput-object p4, p0, Lcom/android/server/wm/Letterbox;->mColorSupplier:Ljava/util/function/Supplier;

    .line 102
    iput-object p5, p0, Lcom/android/server/wm/Letterbox;->mHasWallpaperBackgroundSupplier:Ljava/util/function/Supplier;

    .line 103
    iput-object p6, p0, Lcom/android/server/wm/Letterbox;->mBlurRadiusSupplier:Ljava/util/function/Supplier;

    .line 104
    iput-object p7, p0, Lcom/android/server/wm/Letterbox;->mDarkScrimAlphaSupplier:Ljava/util/function/Supplier;

    .line 105
    iput-object p8, p0, Lcom/android/server/wm/Letterbox;->mDoubleTapCallback:Ljava/util/function/IntConsumer;

    .line 108
    invoke-static {}, Lcom/android/server/wm/LetterboxStub;->newInstance()Lcom/android/server/wm/LetterboxStub;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/Letterbox;->mLetterboxStub:Lcom/android/server/wm/LetterboxStub;

    .line 109
    invoke-virtual {v0, p0}, Lcom/android/server/wm/LetterboxStub;->setLetterbox(Lcom/android/server/wm/Letterbox;)V

    .line 111
    return-void
.end method

.method private useFullWindowSurface()Z
    .registers 2

    .line 302
    iget-object v0, p0, Lcom/android/server/wm/Letterbox;->mAreCornersRounded:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/android/server/wm/Letterbox;->mHasWallpaperBackgroundSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 v0, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 v0, 0x1

    :goto_20
    return v0
.end method


# virtual methods
.method public applySurfaceChanges(Landroid/view/SurfaceControl$Transaction;)V
    .registers 6
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 236
    iget-object v0, p0, Lcom/android/server/wm/Letterbox;->mLetterboxStub:Lcom/android/server/wm/LetterboxStub;

    invoke-virtual {v0}, Lcom/android/server/wm/LetterboxStub;->useMiuiBackgroundWindowSurface()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 237
    iget-object v0, p0, Lcom/android/server/wm/Letterbox;->mLetterboxStub:Lcom/android/server/wm/LetterboxStub;

    iget-object v1, p0, Lcom/android/server/wm/Letterbox;->mSurfaces:[Lcom/android/server/wm/Letterbox$LetterboxSurface;

    iget-object v2, p0, Lcom/android/server/wm/Letterbox;->mFullWindowSurface:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/wm/LetterboxStub;->applySurfaceChanges(Landroid/view/SurfaceControl$Transaction;[Lcom/android/server/wm/Letterbox$LetterboxSurface;Lcom/android/server/wm/Letterbox$LetterboxSurface;)V

    goto :goto_42

    .line 238
    :cond_12
    invoke-direct {p0}, Lcom/android/server/wm/Letterbox;->useFullWindowSurface()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2b

    .line 240
    iget-object v0, p0, Lcom/android/server/wm/Letterbox;->mFullWindowSurface:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->applySurfaceChanges(Landroid/view/SurfaceControl$Transaction;)V

    .line 242
    iget-object v0, p0, Lcom/android/server/wm/Letterbox;->mSurfaces:[Lcom/android/server/wm/Letterbox$LetterboxSurface;

    array-length v2, v0

    :goto_21
    if-ge v1, v2, :cond_42

    aget-object v3, v0, v1

    .line 243
    .local v3, "surface":Lcom/android/server/wm/Letterbox$LetterboxSurface;
    invoke-virtual {v3}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->remove()V

    .line 242
    .end local v3    # "surface":Lcom/android/server/wm/Letterbox$LetterboxSurface;
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 246
    :cond_2b
    iget-object v0, p0, Lcom/android/server/wm/Letterbox;->mSurfaces:[Lcom/android/server/wm/Letterbox$LetterboxSurface;

    array-length v2, v0

    :goto_2e
    if-ge v1, v2, :cond_38

    aget-object v3, v0, v1

    .line 247
    .restart local v3    # "surface":Lcom/android/server/wm/Letterbox$LetterboxSurface;
    invoke-virtual {v3, p1}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->applySurfaceChanges(Landroid/view/SurfaceControl$Transaction;)V

    .line 246
    .end local v3    # "surface":Lcom/android/server/wm/Letterbox$LetterboxSurface;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 250
    :cond_38
    iget-object v0, p0, Lcom/android/server/wm/Letterbox;->mFullWindowSurface:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    invoke-virtual {v0}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->remove()V

    .line 253
    iget-object v0, p0, Lcom/android/server/wm/Letterbox;->mLetterboxStub:Lcom/android/server/wm/LetterboxStub;

    invoke-virtual {v0}, Lcom/android/server/wm/LetterboxStub;->remove()V

    .line 255
    :cond_42
    :goto_42
    return-void
.end method

.method attachInput(Lcom/android/server/wm/WindowState;)V
    .registers 6
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .line 260
    iget-object v0, p0, Lcom/android/server/wm/Letterbox;->mLetterboxStub:Lcom/android/server/wm/LetterboxStub;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/LetterboxStub;->attachInput(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 261
    return-void

    .line 265
    :cond_9
    invoke-direct {p0}, Lcom/android/server/wm/Letterbox;->useFullWindowSurface()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 266
    iget-object v0, p0, Lcom/android/server/wm/Letterbox;->mFullWindowSurface:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->attachInput(Lcom/android/server/wm/WindowState;)V

    goto :goto_23

    .line 268
    :cond_15
    iget-object v0, p0, Lcom/android/server/wm/Letterbox;->mSurfaces:[Lcom/android/server/wm/Letterbox$LetterboxSurface;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_19
    if-ge v2, v1, :cond_23

    aget-object v3, v0, v2

    .line 269
    .local v3, "surface":Lcom/android/server/wm/Letterbox$LetterboxSurface;
    invoke-virtual {v3, p1}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->attachInput(Lcom/android/server/wm/WindowState;)V

    .line 268
    .end local v3    # "surface":Lcom/android/server/wm/Letterbox$LetterboxSurface;
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 272
    :cond_23
    :goto_23
    return-void
.end method

.method darkModeChanged()Z
    .registers 2

    .line 290
    iget-object v0, p0, Lcom/android/server/wm/Letterbox;->mLetterboxStub:Lcom/android/server/wm/LetterboxStub;

    invoke-virtual {v0}, Lcom/android/server/wm/LetterboxStub;->darkModeChanged()Z

    move-result v0

    return v0
.end method

.method public destroy()V
    .registers 5

    .line 202
    iget-object v0, p0, Lcom/android/server/wm/Letterbox;->mOuter:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 203
    iget-object v0, p0, Lcom/android/server/wm/Letterbox;->mInner:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 205
    iget-object v0, p0, Lcom/android/server/wm/Letterbox;->mSurfaces:[Lcom/android/server/wm/Letterbox$LetterboxSurface;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_18

    aget-object v3, v0, v2

    .line 206
    .local v3, "surface":Lcom/android/server/wm/Letterbox$LetterboxSurface;
    invoke-virtual {v3}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->remove()V

    .line 205
    .end local v3    # "surface":Lcom/android/server/wm/Letterbox$LetterboxSurface;
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 208
    :cond_18
    iget-object v0, p0, Lcom/android/server/wm/Letterbox;->mFullWindowSurface:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    invoke-virtual {v0}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->remove()V

    .line 211
    iget-object v0, p0, Lcom/android/server/wm/Letterbox;->mLetterboxStub:Lcom/android/server/wm/LetterboxStub;

    invoke-virtual {v0}, Lcom/android/server/wm/LetterboxStub;->remove()V

    .line 212
    return-void
.end method

.method getInnerFrame()Landroid/graphics/Rect;
    .registers 2

    .line 161
    iget-object v0, p0, Lcom/android/server/wm/Letterbox;->mInner:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getInsets()Landroid/graphics/Rect;
    .registers 6

    .line 143
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/Letterbox;->mLeft:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    .line 144
    invoke-virtual {v1}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/Letterbox;->mTop:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    .line 145
    invoke-virtual {v2}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wm/Letterbox;->mRight:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    .line 146
    invoke-virtual {v3}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/wm/Letterbox;->mBottom:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    .line 147
    invoke-virtual {v4}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->getHeight()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 143
    return-object v0
.end method

.method public getOuter()Landroid/graphics/Rect;
    .registers 2

    .line 155
    iget-object v0, p0, Lcom/android/server/wm/Letterbox;->mOuter:Landroid/graphics/Rect;

    return-object v0
.end method

.method public hide()V
    .registers 3

    .line 195
    sget-object v0, Lcom/android/server/wm/Letterbox;->EMPTY_RECT:Landroid/graphics/Rect;

    sget-object v1, Lcom/android/server/wm/Letterbox;->ZERO_POINT:Landroid/graphics/Point;

    invoke-virtual {p0, v0, v0, v1}, Lcom/android/server/wm/Letterbox;->layout(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Point;)V

    .line 196
    return-void
.end method

.method public layout(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Point;)V
    .registers 23
    .param p1, "outer"    # Landroid/graphics/Rect;
    .param p2, "inner"    # Landroid/graphics/Rect;
    .param p3, "surfaceOrigin"    # Landroid/graphics/Point;

    .line 125
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lcom/android/server/wm/Letterbox;->mOuter:Landroid/graphics/Rect;

    invoke-virtual {v3, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 126
    iget-object v3, v0, Lcom/android/server/wm/Letterbox;->mInner:Landroid/graphics/Rect;

    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 128
    iget-object v4, v0, Lcom/android/server/wm/Letterbox;->mTop:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    iget v5, v1, Landroid/graphics/Rect;->left:I

    iget v6, v1, Landroid/graphics/Rect;->top:I

    iget v7, v1, Landroid/graphics/Rect;->right:I

    iget v8, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v9, p3

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->layout(IIIILandroid/graphics/Point;)V

    .line 129
    iget-object v9, v0, Lcom/android/server/wm/Letterbox;->mLeft:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    iget v10, v1, Landroid/graphics/Rect;->left:I

    iget v11, v1, Landroid/graphics/Rect;->top:I

    iget v12, v2, Landroid/graphics/Rect;->left:I

    iget v13, v1, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v14, p3

    invoke-virtual/range {v9 .. v14}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->layout(IIIILandroid/graphics/Point;)V

    .line 130
    iget-object v3, v0, Lcom/android/server/wm/Letterbox;->mBottom:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    iget v6, v1, Landroid/graphics/Rect;->right:I

    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v8, p3

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->layout(IIIILandroid/graphics/Point;)V

    .line 131
    iget-object v8, v0, Lcom/android/server/wm/Letterbox;->mRight:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    iget v9, v2, Landroid/graphics/Rect;->right:I

    iget v10, v1, Landroid/graphics/Rect;->top:I

    iget v11, v1, Landroid/graphics/Rect;->right:I

    iget v12, v1, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v13, p3

    invoke-virtual/range {v8 .. v13}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->layout(IIIILandroid/graphics/Point;)V

    .line 132
    iget-object v13, v0, Lcom/android/server/wm/Letterbox;->mFullWindowSurface:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    iget v14, v1, Landroid/graphics/Rect;->left:I

    iget v15, v1, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v3

    move/from16 v17, v4

    move-object/from16 v18, p3

    invoke-virtual/range {v13 .. v18}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->layout(IIIILandroid/graphics/Point;)V

    .line 135
    iget-object v3, v0, Lcom/android/server/wm/Letterbox;->mLetterboxStub:Lcom/android/server/wm/LetterboxStub;

    move-object/from16 v4, p3

    invoke-virtual {v3, v1, v2, v4}, Lcom/android/server/wm/LetterboxStub;->layout(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Point;)V

    .line 136
    return-void
.end method

.method public needsApplySurfaceChanges()Z
    .registers 7

    .line 217
    iget-object v0, p0, Lcom/android/server/wm/Letterbox;->mLetterboxStub:Lcom/android/server/wm/LetterboxStub;

    invoke-virtual {v0}, Lcom/android/server/wm/LetterboxStub;->useMiuiBackgroundWindowSurface()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 218
    iget-object v0, p0, Lcom/android/server/wm/Letterbox;->mLetterboxStub:Lcom/android/server/wm/LetterboxStub;

    invoke-virtual {v0}, Lcom/android/server/wm/LetterboxStub;->needsApplySurfaceChanges()Z

    move-result v0

    return v0

    .line 222
    :cond_f
    invoke-direct {p0}, Lcom/android/server/wm/Letterbox;->useFullWindowSurface()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 223
    iget-object v0, p0, Lcom/android/server/wm/Letterbox;->mFullWindowSurface:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    invoke-virtual {v0}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->needsApplySurfaceChanges()Z

    move-result v0

    return v0

    .line 225
    :cond_1c
    iget-object v0, p0, Lcom/android/server/wm/Letterbox;->mSurfaces:[Lcom/android/server/wm/Letterbox$LetterboxSurface;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_21
    if-ge v3, v1, :cond_30

    aget-object v4, v0, v3

    .line 226
    .local v4, "surface":Lcom/android/server/wm/Letterbox$LetterboxSurface;
    invoke-virtual {v4}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->needsApplySurfaceChanges()Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 227
    const/4 v0, 0x1

    return v0

    .line 225
    .end local v4    # "surface":Lcom/android/server/wm/Letterbox$LetterboxSurface;
    :cond_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 230
    :cond_30
    return v2
.end method

.method notIntersectsOrFullyContains(Landroid/graphics/Rect;)Z
    .registers 12
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 171
    const/4 v0, 0x0

    .line 172
    .local v0, "emptyCount":I
    const/4 v1, 0x0

    .line 173
    .local v1, "noOverlappingCount":I
    iget-object v2, p0, Lcom/android/server/wm/Letterbox;->mSurfaces:[Lcom/android/server/wm/Letterbox$LetterboxSurface;

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_7
    const/4 v6, 0x1

    if-ge v5, v3, :cond_2c

    aget-object v7, v2, v5

    .line 174
    .local v7, "surface":Lcom/android/server/wm/Letterbox$LetterboxSurface;
    invoke-static {v7}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->-$$Nest$fgetmLayoutFrameGlobal(Lcom/android/server/wm/Letterbox$LetterboxSurface;)Landroid/graphics/Rect;

    move-result-object v8

    .line 175
    .local v8, "surfaceRect":Landroid/graphics/Rect;
    invoke-virtual {v8}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_19

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 178
    :cond_19
    invoke-static {v8, p1}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v9

    if-nez v9, :cond_22

    .line 180
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .line 181
    :cond_22
    invoke-virtual {v8, p1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v9

    if-eqz v9, :cond_29

    .line 183
    return v6

    .line 173
    .end local v7    # "surface":Lcom/android/server/wm/Letterbox$LetterboxSurface;
    .end local v8    # "surfaceRect":Landroid/graphics/Rect;
    :cond_29
    :goto_29
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 186
    :cond_2c
    add-int v2, v0, v1

    iget-object v3, p0, Lcom/android/server/wm/Letterbox;->mSurfaces:[Lcom/android/server/wm/Letterbox$LetterboxSurface;

    array-length v3, v3

    if-ne v2, v3, :cond_34

    move v4, v6

    :cond_34
    return v4
.end method

.method onMovedToDisplay(I)V
    .registers 7
    .param p1, "displayId"    # I

    .line 275
    iget-object v0, p0, Lcom/android/server/wm/Letterbox;->mSurfaces:[Lcom/android/server/wm/Letterbox$LetterboxSurface;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_19

    aget-object v3, v0, v2

    .line 276
    .local v3, "surface":Lcom/android/server/wm/Letterbox$LetterboxSurface;
    invoke-static {v3}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->-$$Nest$fgetmInputInterceptor(Lcom/android/server/wm/Letterbox$LetterboxSurface;)Lcom/android/server/wm/Letterbox$InputInterceptor;

    move-result-object v4

    if-eqz v4, :cond_16

    .line 277
    invoke-static {v3}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->-$$Nest$fgetmInputInterceptor(Lcom/android/server/wm/Letterbox$LetterboxSurface;)Lcom/android/server/wm/Letterbox$InputInterceptor;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/Letterbox$InputInterceptor;->mWindowHandle:Landroid/view/InputWindowHandle;

    iput p1, v4, Landroid/view/InputWindowHandle;->displayId:I

    .line 275
    .end local v3    # "surface":Lcom/android/server/wm/Letterbox$LetterboxSurface;
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 280
    :cond_19
    iget-object v0, p0, Lcom/android/server/wm/Letterbox;->mFullWindowSurface:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    invoke-static {v0}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->-$$Nest$fgetmInputInterceptor(Lcom/android/server/wm/Letterbox$LetterboxSurface;)Lcom/android/server/wm/Letterbox$InputInterceptor;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 281
    iget-object v0, p0, Lcom/android/server/wm/Letterbox;->mFullWindowSurface:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    invoke-static {v0}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->-$$Nest$fgetmInputInterceptor(Lcom/android/server/wm/Letterbox$LetterboxSurface;)Lcom/android/server/wm/Letterbox$InputInterceptor;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mWindowHandle:Landroid/view/InputWindowHandle;

    iput p1, v0, Landroid/view/InputWindowHandle;->displayId:I

    .line 285
    :cond_2b
    iget-object v0, p0, Lcom/android/server/wm/Letterbox;->mLetterboxStub:Lcom/android/server/wm/LetterboxStub;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/LetterboxStub;->onMovedToDisplay(I)V

    .line 286
    return-void
.end method

.method redraw(Z)V
    .registers 3
    .param p1, "forceRedraw"    # Z

    .line 294
    iget-object v0, p0, Lcom/android/server/wm/Letterbox;->mLetterboxStub:Lcom/android/server/wm/LetterboxStub;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/LetterboxStub;->redraw(Z)V

    .line 295
    return-void
.end method
