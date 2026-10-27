.class public Landroid/app/servertransaction/BoundsCompatStub;
.super Ljava/lang/Object;
.source "BoundsCompatStub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/servertransaction/BoundsCompatStub$State;
    }
.end annotation


# static fields
.field protected static final blacklist BOUNDS_COMPAT_ENABLED:I = 0xf

.field private static final blacklist sInstance:Landroid/app/servertransaction/BoundsCompatStub;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 23
    const-class v0, Landroid/app/servertransaction/BoundsCompatStub;

    .line 24
    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/servertransaction/BoundsCompatStub;

    sput-object v0, Landroid/app/servertransaction/BoundsCompatStub;->sInstance:Landroid/app/servertransaction/BoundsCompatStub;

    .line 23
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist get()Landroid/app/servertransaction/BoundsCompatStub;
    .registers 1

    .line 27
    sget-object v0, Landroid/app/servertransaction/BoundsCompatStub;->sInstance:Landroid/app/servertransaction/BoundsCompatStub;

    return-object v0
.end method


# virtual methods
.method public blacklist adaptCompatBounds(Landroid/content/res/Configuration;)V
    .registers 2
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 61
    return-void
.end method

.method public blacklist adaptDisplayInfo(Landroid/view/DisplayInfo;Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "info"    # Landroid/view/DisplayInfo;
    .param p2, "config"    # Landroid/content/res/Configuration;

    .line 52
    return-void
.end method

.method public blacklist adaptDisplayInfo(Landroid/view/DisplayInfo;Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "info"    # Landroid/view/DisplayInfo;
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .line 55
    return-void
.end method

.method public blacklist adaptDisplayInfo(Landroid/view/DisplayInfo;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 4
    .param p1, "info"    # Landroid/view/DisplayInfo;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "appBounds"    # Landroid/graphics/Rect;

    .line 58
    return-void
.end method

.method public blacklist computeCompatBounds(FLandroid/content/res/Configuration;II)Landroid/graphics/Rect;
    .registers 6
    .param p1, "aspectRatio"    # F
    .param p2, "parentConfiguration"    # Landroid/content/res/Configuration;
    .param p3, "requestOrientation"    # I
    .param p4, "gravity"    # I

    .line 65
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    return-object v0
.end method

.method public blacklist getCompatConfiguration(Landroid/content/res/Configuration;F)Landroid/content/res/Configuration;
    .registers 4
    .param p1, "globalConfig"    # Landroid/content/res/Configuration;
    .param p2, "aspectRatio"    # F

    .line 69
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    return-object v0
.end method

.method public blacklist isBoundsCompatEnabled(I)Z
    .registers 3
    .param p1, "state"    # I

    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isFixedAspectRatioModeEnabled(I)Z
    .registers 3
    .param p1, "state"    # I

    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist needsCompatBounds(I)Z
    .registers 3
    .param p1, "state"    # I

    .line 39
    const/4 v0, 0x0

    return v0
.end method
