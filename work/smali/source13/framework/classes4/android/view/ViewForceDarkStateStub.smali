.class public Landroid/view/ViewForceDarkStateStub;
.super Ljava/lang/Object;
.source "ViewForceDarkStateStub.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist newInstance()Landroid/view/ViewForceDarkStateStub;
    .registers 1

    .line 18
    const-class v0, Landroid/view/ViewForceDarkStateStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewForceDarkStateStub;

    return-object v0
.end method


# virtual methods
.method public blacklist cleanForceDarkViewTreeDirty()V
    .registers 1

    .line 46
    return-void
.end method

.method public blacklist getBackgroundBitmapPalette()Ljava/lang/String;
    .registers 2

    .line 90
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getBackgroundDrawableName()Ljava/lang/String;
    .registers 2

    .line 86
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getBitmapPalette(Landroid/graphics/drawable/Drawable;)Ljava/lang/String;
    .registers 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 94
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getForceDarkUsageHint()I
    .registers 2

    .line 74
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getLayoutXmlName()Ljava/lang/String;
    .registers 2

    .line 56
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getUsageHint()I
    .registers 2

    .line 70
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getViewClass()Ljava/lang/String;
    .registers 2

    .line 82
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getXmlIndex()I
    .registers 2

    .line 63
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist hasText()Z
    .registers 2

    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isApplyForceDarkConfig()Z
    .registers 2

    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isBackgroundLoadedFromResources()Z
    .registers 2

    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isForceDarkAllowed()Z
    .registers 2

    .line 25
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isForceDarkViewDirtyRoot()Z
    .registers 2

    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isForceDarkViewTreeDirty()Z
    .registers 2

    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist markForceDarkDirtyRoot()V
    .registers 1

    .line 36
    return-void
.end method

.method public blacklist markForceDarkViewTreeDirty()V
    .registers 1

    .line 43
    return-void
.end method

.method public blacklist resetForceDarkState()V
    .registers 1

    .line 67
    return-void
.end method

.method public blacklist setForceDarkAllowed(Z)V
    .registers 2
    .param p1, "mForceDarkAllowed"    # Z

    .line 29
    return-void
.end method

.method public blacklist setHostView(Landroid/view/View;)V
    .registers 2
    .param p1, "hostView"    # Landroid/view/View;

    .line 22
    return-void
.end method

.method public blacklist setLayoutXmlName(Ljava/lang/String;)V
    .registers 2
    .param p1, "xmlName"    # Ljava/lang/String;

    .line 53
    return-void
.end method

.method public blacklist setXmlIndex(I)V
    .registers 2
    .param p1, "index"    # I

    .line 60
    return-void
.end method
