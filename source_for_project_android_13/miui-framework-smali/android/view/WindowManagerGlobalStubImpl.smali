.class public Landroid/view/WindowManagerGlobalStubImpl;
.super Landroid/view/WindowManagerGlobalStub;
.source "WindowManagerGlobalStubImpl.java"


# static fields
.field private static final blacklist ADAPT_CUTOUT_DISABLE:I = 0x0

.field private static final blacklist ADAPT_CUTOUT_ENABLE:I = 0x1

.field private static final blacklist ADAPT_CUTOUT_UNAVAILABLE:I = -0x1

.field private static final blacklist APP_PKG_LIST_FOR_ADAPT_PADDING:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist APP_PKG_LIST_FOR_DISABLE_ADAPT_PORTRAIT:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist CUTOUT_SYSTEM_UI_FLAGS:I = 0x400

.field private static final blacklist ENABLE_ADAPT_CUTOUT:Z

.field private static final blacklist TAG:Ljava/lang/String; = "WindowManagerGlobalStub"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 28
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "babylon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/view/WindowManagerGlobalStubImpl;->ENABLE_ADAPT_CUTOUT:Z

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/view/WindowManagerGlobalStubImpl;->APP_PKG_LIST_FOR_ADAPT_PADDING:Ljava/util/ArrayList;

    .line 41
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Landroid/view/WindowManagerGlobalStubImpl;->APP_PKG_LIST_FOR_DISABLE_ADAPT_PORTRAIT:Ljava/util/ArrayList;

    .line 44
    const-string v2, "com.tencent.mtt"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    const-string v0, "com.xunmeng.pinduoduo"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Landroid/view/WindowManagerGlobalStub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist adaptWindowCutout(Landroid/view/WindowManager$LayoutParams;Landroid/view/View;)V
    .registers 9
    .param p1, "wparams"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "rootView"    # Landroid/view/View;

    .line 107
    sget-boolean v0, Landroid/view/WindowManagerGlobalStubImpl;->ENABLE_ADAPT_CUTOUT:Z

    if-eqz v0, :cond_51

    if-nez p2, :cond_7

    goto :goto_51

    .line 111
    :cond_7
    invoke-virtual {p0, p1}, Landroid/view/WindowManagerGlobalStubImpl;->isEnableAdaptCutout(Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    .line 113
    .local v0, "isAdaptCutout":I
    invoke-virtual {p2}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    .line 117
    .local v1, "viewRoot":Landroid/view/ViewRootImpl;
    const/4 v2, 0x0

    if-nez v0, :cond_15

    .line 118
    iput-boolean v2, p1, Landroid/view/WindowManager$LayoutParams;->miuiAlwaysDisplayInCutout:Z

    .line 119
    return-void

    .line 120
    :cond_15
    const/4 v3, 0x1

    if-ne v0, v3, :cond_50

    .line 122
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0, p1, v4}, Landroid/view/WindowManagerGlobalStubImpl;->shouldIgnoreCutout(Landroid/view/WindowManager$LayoutParams;Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 123
    iget-boolean v2, p1, Landroid/view/WindowManager$LayoutParams;->miuiAlwaysDisplayInCutout:Z

    if-nez v2, :cond_50

    .line 124
    iput-boolean v3, p1, Landroid/view/WindowManager$LayoutParams;->miuiAlwaysDisplayInCutout:Z

    .line 125
    if-eqz v1, :cond_50

    .line 126
    iput-boolean v3, v1, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    .line 127
    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    goto :goto_50

    .line 131
    :cond_30
    invoke-static {}, Landroid/app/ActivityThread;->isEmbedded()Z

    move-result v4

    if-eqz v4, :cond_42

    sget-object v4, Landroid/view/WindowManagerGlobalStubImpl;->APP_PKG_LIST_FOR_DISABLE_ADAPT_PORTRAIT:Ljava/util/ArrayList;

    iget-object v5, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 132
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_42

    move v2, v3

    goto :goto_43

    :cond_42
    nop

    .line 133
    .local v2, "displayInCutout":Z
    :goto_43
    iget-boolean v4, p1, Landroid/view/WindowManager$LayoutParams;->miuiAlwaysDisplayInCutout:Z

    if-eq v2, v4, :cond_50

    .line 134
    iput-boolean v2, p1, Landroid/view/WindowManager$LayoutParams;->miuiAlwaysDisplayInCutout:Z

    .line 135
    if-eqz v1, :cond_50

    .line 136
    iput-boolean v3, v1, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    .line 137
    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 142
    .end local v2    # "displayInCutout":Z
    :cond_50
    :goto_50
    return-void

    .line 108
    .end local v0    # "isAdaptCutout":I
    .end local v1    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_51
    :goto_51
    return-void
.end method

.method public blacklist adaptWindowCutoutForStartingWindow(Landroid/view/WindowManager$LayoutParams;II)V
    .registers 5
    .param p1, "wparams"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "orientation"    # I
    .param p3, "isAdaptCutout"    # I

    .line 160
    sget-boolean v0, Landroid/view/WindowManagerGlobalStubImpl;->ENABLE_ADAPT_CUTOUT:Z

    if-nez v0, :cond_5

    .line 161
    return-void

    .line 163
    :cond_5
    if-nez p3, :cond_b

    .line 164
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/view/WindowManager$LayoutParams;->miuiAlwaysDisplayInCutout:Z

    .line 165
    return-void

    .line 166
    :cond_b
    const/4 v0, 0x1

    if-ne p3, v0, :cond_1f

    .line 168
    iput-boolean v0, p1, Landroid/view/WindowManager$LayoutParams;->miuiAlwaysDisplayInCutout:Z

    .line 169
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1f

    .line 170
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    and-int/lit16 v0, v0, 0x400

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->oldSystemUiFlags:I

    .line 171
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 174
    :cond_1f
    return-void
.end method

.method public blacklist addMiuiFlags(Landroid/view/WindowManager$LayoutParams;Ljava/lang/String;)V
    .registers 4
    .param p1, "wparams"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 49
    if-nez p1, :cond_3

    .line 50
    return-void

    .line 52
    :cond_3
    invoke-static {p2}, Lmiui/os/MiuiInit;->getCutoutMode(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_c

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/view/WindowManager$LayoutParams;->miuiAlwaysDisplayInCutout:Z

    .line 55
    :cond_c
    return-void
.end method

.method public blacklist getCutoutAdaptedAppBounds(Landroid/app/WindowConfiguration;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 11
    .param p1, "configuration"    # Landroid/app/WindowConfiguration;
    .param p2, "appBounds"    # Landroid/graphics/Rect;

    .line 209
    sget-boolean v0, Landroid/view/WindowManagerGlobalStubImpl;->ENABLE_ADAPT_CUTOUT:Z

    if-nez v0, :cond_5

    .line 210
    return-object p2

    .line 212
    :cond_5
    if-eqz p2, :cond_3e

    if-nez p1, :cond_a

    goto :goto_3e

    .line 215
    :cond_a
    invoke-static {}, Landroid/app/ActivityThread;->isAdaptCutout()I

    move-result v0

    .line 216
    .local v0, "isAdaptCutout":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_3d

    .line 217
    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 218
    .local v1, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 219
    .local v2, "maxBounds":Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-le v3, v4, :cond_3d

    iget v3, p2, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->left:I

    if-ne v3, v4, :cond_2f

    iget v3, p2, Landroid/graphics/Rect;->right:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    if-eq v3, v4, :cond_3d

    .line 221
    :cond_2f
    new-instance v3, Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, p2, Landroid/graphics/Rect;->top:I

    iget v6, v1, Landroid/graphics/Rect;->right:I

    iget v7, p2, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v3

    .line 224
    .end local v1    # "bounds":Landroid/graphics/Rect;
    .end local v2    # "maxBounds":Landroid/graphics/Rect;
    :cond_3d
    return-object p2

    .line 213
    .end local v0    # "isAdaptCutout":I
    :cond_3e
    :goto_3e
    return-object p2
.end method

.method public blacklist getCutoutAdaptedMetrics(Landroid/content/res/Resources;Landroid/util/DisplayMetrics;)V
    .registers 9
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "outMetrics"    # Landroid/util/DisplayMetrics;

    .line 177
    sget-boolean v0, Landroid/view/WindowManagerGlobalStubImpl;->ENABLE_ADAPT_CUTOUT:Z

    if-eqz v0, :cond_37

    if-nez p1, :cond_7

    goto :goto_37

    .line 180
    :cond_7
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 182
    .local v0, "configuration":Landroid/content/res/Configuration;
    invoke-static {}, Landroid/app/ActivityThread;->isAdaptCutout()I

    move-result v1

    .line 183
    .local v1, "isAdaptCutout":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_36

    .line 184
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 185
    .local v2, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 186
    .local v3, "maxBounds":Landroid/graphics/Rect;
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-le v4, v5, :cond_36

    .line 187
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 190
    .end local v2    # "bounds":Landroid/graphics/Rect;
    .end local v3    # "maxBounds":Landroid/graphics/Rect;
    :cond_36
    return-void

    .line 178
    .end local v0    # "configuration":Landroid/content/res/Configuration;
    .end local v1    # "isAdaptCutout":I
    :cond_37
    :goto_37
    return-void
.end method

.method public blacklist getCutoutAdaptedPaddingLeft(Landroid/view/ViewRootImpl;I)I
    .registers 9
    .param p1, "vri"    # Landroid/view/ViewRootImpl;
    .param p2, "left"    # I

    .line 228
    invoke-static {}, Landroid/app/ActivityThread;->isAdaptCutout()I

    move-result v0

    .line 229
    .local v0, "isAdaptCutout":I
    sget-boolean v1, Landroid/view/WindowManagerGlobalStubImpl;->ENABLE_ADAPT_CUTOUT:Z

    if-eqz v1, :cond_5a

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5a

    if-nez p1, :cond_e

    goto :goto_5a

    .line 233
    :cond_e
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 234
    .local v1, "pkg":Ljava/lang/String;
    sget-object v2, Landroid/view/WindowManagerGlobalStubImpl;->APP_PKG_LIST_FOR_ADAPT_PADDING:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 235
    return p2

    .line 238
    :cond_1b
    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->getOrigWindowInsets()Landroid/view/WindowInsets;

    move-result-object v2

    .line 239
    .local v2, "winsets":Landroid/view/WindowInsets;
    if-eqz v2, :cond_26

    invoke-virtual {v2}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v3

    goto :goto_27

    :cond_26
    const/4 v3, 0x0

    .line 240
    .local v3, "cutout":Landroid/view/DisplayCutout;
    :goto_27
    if-nez v3, :cond_2a

    .line 241
    return p2

    .line 244
    :cond_2a
    invoke-virtual {v3}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v4

    if-eqz v4, :cond_59

    invoke-virtual {v3}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v4

    if-ne p2, v4, :cond_59

    .line 245
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCutoutAdaptedPaddingLeft: reset left to 0 from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "WindowManagerGlobalStub"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    const/4 p2, 0x0

    .line 249
    :cond_59
    return p2

    .line 230
    .end local v1    # "pkg":Ljava/lang/String;
    .end local v2    # "winsets":Landroid/view/WindowInsets;
    .end local v3    # "cutout":Landroid/view/DisplayCutout;
    :cond_5a
    :goto_5a
    return p2
.end method

.method public blacklist getCutoutAdaptedPaddingRight(Landroid/view/ViewRootImpl;I)I
    .registers 9
    .param p1, "vri"    # Landroid/view/ViewRootImpl;
    .param p2, "right"    # I

    .line 253
    invoke-static {}, Landroid/app/ActivityThread;->isAdaptCutout()I

    move-result v0

    .line 254
    .local v0, "isAdaptCutout":I
    sget-boolean v1, Landroid/view/WindowManagerGlobalStubImpl;->ENABLE_ADAPT_CUTOUT:Z

    if-eqz v1, :cond_5a

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5a

    if-nez p1, :cond_e

    goto :goto_5a

    .line 258
    :cond_e
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 259
    .local v1, "pkg":Ljava/lang/String;
    sget-object v2, Landroid/view/WindowManagerGlobalStubImpl;->APP_PKG_LIST_FOR_ADAPT_PADDING:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 260
    return p2

    .line 263
    :cond_1b
    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->getOrigWindowInsets()Landroid/view/WindowInsets;

    move-result-object v2

    .line 264
    .local v2, "winsets":Landroid/view/WindowInsets;
    if-eqz v2, :cond_26

    invoke-virtual {v2}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v3

    goto :goto_27

    :cond_26
    const/4 v3, 0x0

    .line 265
    .local v3, "cutout":Landroid/view/DisplayCutout;
    :goto_27
    if-nez v3, :cond_2a

    .line 266
    return p2

    .line 269
    :cond_2a
    invoke-virtual {v3}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v4

    if-eqz v4, :cond_59

    invoke-virtual {v3}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v4

    if-ne p2, v4, :cond_59

    .line 270
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCutoutAdaptedPaddingRight: reset right to 0 from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "WindowManagerGlobalStub"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    const/4 p2, 0x0

    .line 274
    :cond_59
    return p2

    .line 255
    .end local v1    # "pkg":Ljava/lang/String;
    .end local v2    # "winsets":Landroid/view/WindowInsets;
    .end local v3    # "cutout":Landroid/view/DisplayCutout;
    :cond_5a
    :goto_5a
    return p2
.end method

.method public blacklist getCutoutAdaptedWidth(Landroid/content/res/Resources;I)I
    .registers 8
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "width"    # I

    .line 193
    sget-boolean v0, Landroid/view/WindowManagerGlobalStubImpl;->ENABLE_ADAPT_CUTOUT:Z

    if-eqz v0, :cond_32

    if-nez p1, :cond_7

    goto :goto_32

    .line 197
    :cond_7
    invoke-static {}, Landroid/app/ActivityThread;->isAdaptCutout()I

    move-result v0

    .line 198
    .local v0, "isAdaptCutout":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_31

    .line 199
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 200
    .local v1, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 201
    .local v2, "maxBounds":Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-le v3, v4, :cond_31

    .line 202
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    return v3

    .line 205
    .end local v1    # "bounds":Landroid/graphics/Rect;
    .end local v2    # "maxBounds":Landroid/graphics/Rect;
    :cond_31
    return p2

    .line 194
    .end local v0    # "isAdaptCutout":I
    :cond_32
    :goto_32
    return p2
.end method

.method public blacklist isEnableAdaptCutout(Landroid/view/WindowManager$LayoutParams;)I
    .registers 4
    .param p1, "wparams"    # Landroid/view/WindowManager$LayoutParams;

    .line 94
    invoke-static {}, Landroid/app/ActivityThread;->isAdaptCutout()I

    move-result v0

    .line 96
    .local v0, "isAdapt":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    move v1, v0

    goto :goto_d

    :cond_9
    invoke-virtual {p0, p1}, Landroid/view/WindowManagerGlobalStubImpl;->isEnableAdaptCutoutForStartingWindow(Landroid/view/WindowManager$LayoutParams;)I

    move-result v1

    :goto_d
    return v1
.end method

.method public blacklist isEnableAdaptCutoutForStartingWindow(Landroid/view/WindowManager$LayoutParams;)I
    .registers 4
    .param p1, "wparams"    # Landroid/view/WindowManager$LayoutParams;

    .line 100
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_10

    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 101
    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/app/ActivityManager;->isPackageNeedAdaptCutout(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 103
    :cond_10
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist shouldIgnoreCutout(Landroid/view/WindowManager$LayoutParams;Landroid/content/Context;)Z
    .registers 14
    .param p1, "wparams"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "context"    # Landroid/content/Context;

    .line 62
    const/4 v0, 0x0

    if-eqz p1, :cond_3c

    if-nez p2, :cond_6

    goto :goto_3c

    .line 66
    :cond_6
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 68
    .local v1, "configuration":Landroid/content/res/Configuration;
    iget v2, v1, Landroid/content/res/Configuration;->orientation:I

    .line 69
    .local v2, "orientation":I
    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v2, v3, :cond_15

    .line 70
    return v4

    .line 73
    :cond_15
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 74
    .local v3, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p2}, Landroid/content/Context;->getDisplayNoVerify()Landroid/view/Display;

    move-result-object v5

    .line 75
    .local v5, "display":Landroid/view/Display;
    if-eqz v5, :cond_23

    .line 76
    invoke-virtual {v5, v3}, Landroid/view/Display;->getDisplayRealMetricsSize(Landroid/util/DisplayMetrics;)V

    .line 77
    :cond_23
    iget v6, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 78
    .local v6, "heightPixels":I
    iget v7, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 81
    .local v7, "widthPixels":I
    if-le v7, v6, :cond_2a

    .line 82
    return v4

    .line 85
    :cond_2a
    iget-object v8, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v8}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v8

    .line 86
    .local v8, "maxBounds":Landroid/graphics/Rect;
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v10

    if-le v9, v10, :cond_3b

    .line 87
    return v4

    .line 90
    :cond_3b
    return v0

    .line 63
    .end local v1    # "configuration":Landroid/content/res/Configuration;
    .end local v2    # "orientation":I
    .end local v3    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v5    # "display":Landroid/view/Display;
    .end local v6    # "heightPixels":I
    .end local v7    # "widthPixels":I
    .end local v8    # "maxBounds":Landroid/graphics/Rect;
    :cond_3c
    :goto_3c
    return v0
.end method

.method public blacklist shouldRemoveCutout(Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowInsets;)Z
    .registers 8
    .param p1, "wparams"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "windowInsets"    # Landroid/view/WindowInsets;

    .line 145
    sget-boolean v0, Landroid/view/WindowManagerGlobalStubImpl;->ENABLE_ADAPT_CUTOUT:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    if-eqz p1, :cond_23

    if-nez p2, :cond_a

    goto :goto_23

    .line 149
    :cond_a
    invoke-virtual {p0, p1}, Landroid/view/WindowManagerGlobalStubImpl;->isEnableAdaptCutout(Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    .line 150
    .local v0, "isAdaptCutout":I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_22

    .line 151
    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v3

    .line 152
    .local v3, "cutout":Landroid/graphics/Insets;
    iget v4, v3, Landroid/graphics/Insets;->left:I

    if-nez v4, :cond_21

    iget v4, v3, Landroid/graphics/Insets;->right:I

    if-eqz v4, :cond_22

    .line 153
    :cond_21
    return v2

    .line 156
    .end local v3    # "cutout":Landroid/graphics/Insets;
    :cond_22
    return v1

    .line 146
    .end local v0    # "isAdaptCutout":I
    :cond_23
    :goto_23
    return v1
.end method
