.class public Landroid/view/WindowManagerGlobalStub;
.super Ljava/lang/Object;
.source "WindowManagerGlobalStub.java"


# static fields
.field private static final blacklist sInstance:Landroid/view/WindowManagerGlobalStub;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 20
    const-class v0, Landroid/view/WindowManagerGlobalStub;

    .line 21
    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManagerGlobalStub;

    sput-object v0, Landroid/view/WindowManagerGlobalStub;->sInstance:Landroid/view/WindowManagerGlobalStub;

    .line 20
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getInstance()Landroid/view/WindowManagerGlobalStub;
    .registers 1

    .line 25
    sget-object v0, Landroid/view/WindowManagerGlobalStub;->sInstance:Landroid/view/WindowManagerGlobalStub;

    return-object v0
.end method


# virtual methods
.method public blacklist adaptWindowCutout(Landroid/view/WindowManager$LayoutParams;Landroid/view/View;)V
    .registers 3
    .param p1, "wparams"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "rootView"    # Landroid/view/View;

    .line 35
    return-void
.end method

.method public blacklist adaptWindowCutoutForStartingWindow(Landroid/view/WindowManager$LayoutParams;II)V
    .registers 4
    .param p1, "wparams"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "orientation"    # I
    .param p3, "isAdaptCutout"    # I

    .line 42
    return-void
.end method

.method public blacklist addMiuiFlags(Landroid/view/WindowManager$LayoutParams;Ljava/lang/String;)V
    .registers 3
    .param p1, "wparams"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 29
    return-void
.end method

.method public blacklist checkWindowLeak(Ljava/util/ArrayList;I)V
    .registers 3
    .param p2, "viewlistSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/ViewRootImpl;",
            ">;I)V"
        }
    .end annotation

    .line 32
    .local p1, "mRoots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/ViewRootImpl;>;"
    return-void
.end method

.method public blacklist getCutoutAdaptedAppBounds(Landroid/app/WindowConfiguration;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 3
    .param p1, "configuration"    # Landroid/app/WindowConfiguration;
    .param p2, "appBounds"    # Landroid/graphics/Rect;

    .line 45
    return-object p2
.end method

.method public blacklist getCutoutAdaptedMetrics(Landroid/content/res/Resources;Landroid/util/DisplayMetrics;)V
    .registers 3
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "outMetrics"    # Landroid/util/DisplayMetrics;

    .line 49
    return-void
.end method

.method public blacklist getCutoutAdaptedPaddingLeft(Landroid/view/ViewRootImpl;I)I
    .registers 3
    .param p1, "vri"    # Landroid/view/ViewRootImpl;
    .param p2, "left"    # I

    .line 56
    return p2
.end method

.method public blacklist getCutoutAdaptedPaddingRight(Landroid/view/ViewRootImpl;I)I
    .registers 3
    .param p1, "vri"    # Landroid/view/ViewRootImpl;
    .param p2, "right"    # I

    .line 60
    return p2
.end method

.method public blacklist getCutoutAdaptedWidth(Landroid/content/res/Resources;I)I
    .registers 3
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "width"    # I

    .line 52
    return p2
.end method

.method public blacklist shouldRemoveCutout(Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowInsets;)Z
    .registers 4
    .param p1, "wparams"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "windowInsets"    # Landroid/view/WindowInsets;

    .line 38
    const/4 v0, 0x0

    return v0
.end method
