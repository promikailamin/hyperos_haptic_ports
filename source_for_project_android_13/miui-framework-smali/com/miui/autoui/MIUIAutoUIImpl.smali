.class public Lcom/miui/autoui/MIUIAutoUIImpl;
.super Ljava/lang/Object;
.source "MIUIAutoUIImpl.java"

# interfaces
.implements Lcom/miui/autoui/MIUIAutoUIStub;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "AutoUI_MIUIAutoUIImpl"


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mEnableCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist updateApplicationConfiguration(Ljava/lang/String;)V
    .registers 3
    .param p1, "className"    # Ljava/lang/String;

    .line 216
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/autoui/AutoPolicyUtils;->skippedAppConfigChange()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 217
    return-void

    .line 219
    :cond_b
    iget-object v0, p0, Lcom/miui/autoui/MIUIAutoUIImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/miui/autoui/MIUIAutoUIImpl;->updateConfiguration(Landroid/content/Context;Ljava/lang/String;)V

    .line 220
    return-void
.end method

.method private blacklist updateConfiguration(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityName"    # Ljava/lang/String;

    .line 175
    if-eqz p1, :cond_1f

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 176
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 177
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 178
    .local v1, "config":Landroid/content/res/Configuration;
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v2

    invoke-virtual {v2, v1, p2}, Lcom/miui/autoui/AutoPolicyUtils;->applyConfiguration(Landroid/content/res/Configuration;Ljava/lang/String;)V

    .line 179
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .line 181
    .end local v0    # "res":Landroid/content/res/Resources;
    .end local v1    # "config":Landroid/content/res/Configuration;
    :cond_1f
    return-void
.end method


# virtual methods
.method public blacklist addAutoUIProperty(Landroid/view/View;Landroid/view/ViewHierarchyEncoder;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "stream"    # Landroid/view/ViewHierarchyEncoder;

    .line 223
    invoke-static {p1}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v0

    .line 224
    .local v0, "viewExtras":Lcom/miui/autoui/ViewExtras;
    if-nez v0, :cond_7

    .line 225
    return-void

    .line 227
    :cond_7
    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->getColumnCount()I

    move-result v1

    const-string v2, "miuiAutoUI:mColumnCount"

    invoke-virtual {p2, v2, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 228
    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->getCompressWidth()I

    move-result v1

    const-string v2, "miuiAutoUI:mCompressWidth"

    invoke-virtual {p2, v2, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 229
    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->isAtomic()Z

    move-result v1

    const-string v2, "miuiAutoUI:mIsAtomic"

    invoke-virtual {p2, v2, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 230
    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->isFloatIcon()Z

    move-result v1

    const-string v2, "miuiAutoUI:mIsFloatIcon"

    invoke-virtual {p2, v2, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 231
    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->isIgnore()Z

    move-result v1

    const-string v2, "miuiAutoUI:mIsIgnore"

    invoke-virtual {p2, v2, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 232
    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->isIgnoreWithoutBlur()Z

    move-result v1

    const-string v2, "miuiAutoUI:mIsIgnoreWithoutBlur"

    invoke-virtual {p2, v2, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 233
    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->isLargeBitmap()Z

    move-result v1

    const-string v2, "miuiAutoUI:mIsLargeBitmap"

    invoke-virtual {p2, v2, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 234
    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->isNeedCompress()Z

    move-result v1

    const-string v2, "miuiAutoUI:mIsNeedCompress"

    invoke-virtual {p2, v2, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 235
    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->isNeedOriginalLayout()Z

    move-result v1

    const-string v2, "miuiAutoUI:mIsNeedOriginalLayout"

    invoke-virtual {p2, v2, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 236
    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->isOriginalSize()Z

    move-result v1

    const-string v2, "miuiAutoUI:mIsOriginalSize"

    invoke-virtual {p2, v2, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 237
    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->isAutoUIGroup()Z

    move-result v1

    const-string v2, "miuiAutoUI:mIsAutoUIGroup"

    invoke-virtual {p2, v2, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 238
    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->getWidth()I

    move-result v1

    const-string v2, "miuiAutoUI:mWidth"

    invoke-virtual {p2, v2, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 239
    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->isNeedStretch()Z

    move-result v1

    const-string v2, "miuiAutoUI:mIsNeedStretch"

    invoke-virtual {p2, v2, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 240
    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->getAlignment()Lcom/miui/autoui/ViewExtras$Alignment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/autoui/ViewExtras$Alignment;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "miuiAutoUI:mAlignment"

    invoke-virtual {p2, v2, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->getSaveCount()I

    move-result v1

    const-string v2, "miuiAutoUI:mSaveCount"

    invoke-virtual {p2, v2, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 242
    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->isNeedBlur()Z

    move-result v1

    const-string v2, "miuiAutoUI:mIsNeedBlur"

    invoke-virtual {p2, v2, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 243
    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->isBackgroundImage()Z

    move-result v1

    const-string v2, "miuiAutoUI:mIsBackgroundImage"

    invoke-virtual {p2, v2, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 246
    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->getDrawOffsetX()F

    move-result v1

    const-string v2, "miuiAutoUI:mDrawOffsetX"

    invoke-virtual {p2, v2, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;F)V

    .line 247
    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->isFloat()Z

    move-result v1

    const-string v2, "miuiAutoUI:mIsFloat"

    invoke-virtual {p2, v2, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 248
    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->getRecyclerViewModifyState()I

    move-result v1

    const-string v2, "miuiAutoUI:mRecyclerViewModifyState"

    invoke-virtual {p2, v2, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 249
    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->getModifySpanCount()I

    move-result v1

    const-string v2, "miuiAutoUI:mModifySpanCount"

    invoke-virtual {p2, v2, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 250
    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->getViewPolicy()I

    move-result v1

    const-string v2, "miuiAutoUI:mViewPolicy"

    invoke-virtual {p2, v2, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 251
    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->getCenterCropRate()F

    move-result v1

    const-string v2, "miuiAutoUI:mCenterCropRate"

    invoke-virtual {p2, v2, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;F)V

    .line 252
    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->isWebView()Z

    move-result v1

    const-string v2, "miuiAutoUI:mIsWebView"

    invoke-virtual {p2, v2, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 253
    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->isIcon()Z

    move-result v1

    const-string v2, "miuiAutoUI:mIsIcon"

    invoke-virtual {p2, v2, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 254
    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->getReactRootView()I

    move-result v1

    const-string v2, "miuiAutoUI:mReactRootView"

    invoke-virtual {p2, v2, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 255
    invoke-virtual {v0}, Lcom/miui/autoui/ViewExtras;->isContainsHorizontalList()Z

    move-result v1

    const-string v2, "miuiAutoUI:containsHorizontalList"

    invoke-virtual {p2, v2, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 256
    return-void
.end method

.method public blacklist adjustSizeIfNeeded(Landroid/graphics/Point;Ljava/lang/String;)V
    .registers 4
    .param p1, "outSize"    # Landroid/graphics/Point;
    .param p2, "activityName"    # Ljava/lang/String;

    .line 121
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->isAppAutoUIEnable()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 122
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/miui/autoui/AutoPolicyUtils;->adjustSizeIfNeeded(Landroid/graphics/Point;Ljava/lang/String;)V

    .line 124
    :cond_11
    return-void
.end method

.method public blacklist applyConfiguration(Landroid/content/res/Configuration;Ljava/lang/String;)V
    .registers 4
    .param p1, "configuration"    # Landroid/content/res/Configuration;
    .param p2, "activityName"    # Ljava/lang/String;

    .line 149
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->isAppAutoUIEnable()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 150
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/miui/autoui/AutoPolicyUtils;->applyConfiguration(Landroid/content/res/Configuration;Ljava/lang/String;)V

    .line 152
    :cond_11
    return-void
.end method

.method public blacklist getCanvasSize(Landroid/view/View;II)[I
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 107
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->isAppAutoUIEnable()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 108
    invoke-static {p1}, Lcom/miui/autoui/policy/AutoUIPolicyFactory;->getPolicy(Landroid/view/View;)Lcom/miui/autoui/policy/api/IAutoUIPolicy;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/autoui/policy/api/IAutoUIPolicy;->getDrawPolicy()Lcom/miui/autoui/policy/api/IAutoUIDraw;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/miui/autoui/policy/api/IAutoUIDraw;->getCanvasSize(Landroid/view/View;II)[I

    move-result-object v0

    return-object v0

    .line 110
    :cond_17
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 v1, 0x1

    aput p3, v0, v1

    return-object v0
.end method

.method public blacklist getClipRight(I)I
    .registers 5
    .param p1, "right"    # I

    .line 141
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->isAppAutoUIEnable()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 142
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v0

    .line 143
    .local v0, "rate":F
    int-to-float v1, p1

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-nez v2, :cond_17

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_18

    :cond_17
    move v2, v0

    :goto_18
    div-float/2addr v1, v2

    float-to-int v1, v1

    return v1

    .line 145
    .end local v0    # "rate":F
    :cond_1b
    return p1
.end method

.method public blacklist getDisplayInfoWidth(ILjava/lang/String;)I
    .registers 4
    .param p1, "width"    # I
    .param p2, "activityName"    # Ljava/lang/String;

    .line 127
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->isAppAutoUIEnable()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 128
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/miui/autoui/AutoPolicyUtils;->getDisplayInfoWidth(ILjava/lang/String;)I

    move-result v0

    return v0

    .line 130
    :cond_13
    return p1
.end method

.method public blacklist getDisplayMetrics(Landroid/util/DisplayMetrics;Ljava/lang/String;)Landroid/util/DisplayMetrics;
    .registers 4
    .param p1, "displayMetrics"    # Landroid/util/DisplayMetrics;
    .param p2, "activityName"    # Ljava/lang/String;

    .line 114
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->isAppAutoUIEnable()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 115
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/miui/autoui/AutoPolicyUtils;->getDisplayMetrics(Landroid/util/DisplayMetrics;Ljava/lang/String;)Landroid/util/DisplayMetrics;

    move-result-object v0

    return-object v0

    .line 117
    :cond_13
    return-object p1
.end method

.method public blacklist getDrawLocation(Landroid/view/View;[I)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "screenLocation"    # [I

    .line 210
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->isAppAutoUIEnable()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 211
    invoke-static {p1}, Lcom/miui/autoui/policy/AutoUIPolicyFactory;->getPolicy(Landroid/view/View;)Lcom/miui/autoui/policy/api/IAutoUIPolicy;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/autoui/policy/api/IAutoUIPolicy;->getDrawPolicy()Lcom/miui/autoui/policy/api/IAutoUIDraw;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/miui/autoui/policy/api/IAutoUIDraw;->getDrawLocation(Landroid/view/View;[I)V

    .line 213
    :cond_15
    return-void
.end method

.method public blacklist getRate()F
    .registers 2

    .line 134
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->isAppAutoUIEnable()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 135
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v0

    return v0

    .line 137
    :cond_f
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public blacklist init(Landroid/content/Context;Ljava/util/function/Consumer;)V
    .registers 4
    .param p1, "appContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 32
    .local p2, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    iput-object p1, p0, Lcom/miui/autoui/MIUIAutoUIImpl;->mContext:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/miui/autoui/MIUIAutoUIImpl;->mEnableCallback:Ljava/util/function/Consumer;

    .line 34
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/autoui/AutoPolicyUtils;->initValues(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method public blacklist initAutoUIConfig(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "className"    # Ljava/lang/String;

    .line 197
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/miui/autoui/AutoPolicyUtils;->isActivityEnable(Ljava/lang/String;)Z

    move-result v0

    .line 198
    .local v0, "isActivityEnable":Z
    iget-object v1, p0, Lcom/miui/autoui/MIUIAutoUIImpl;->mEnableCallback:Ljava/util/function/Consumer;

    if-eqz v1, :cond_13

    .line 199
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 201
    :cond_13
    invoke-direct {p0, p1, p2}, Lcom/miui/autoui/MIUIAutoUIImpl;->updateConfiguration(Landroid/content/Context;Ljava/lang/String;)V

    .line 202
    invoke-direct {p0, p2}, Lcom/miui/autoui/MIUIAutoUIImpl;->updateApplicationConfiguration(Ljava/lang/String;)V

    .line 203
    return-void
.end method

.method public blacklist interceptDisplayMetrics(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 206
    .local p1, "callerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/autoui/AutoPolicyUtils;->interceptDisplayMetrics(Ljava/lang/Class;)V

    .line 207
    return-void
.end method

.method public blacklist onConfigurationChanged(Landroid/content/Context;II)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 156
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityName()Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "activityName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 158
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/autoui/AutoPolicyUtils;->isActivityEnable(Ljava/lang/String;)Z

    move-result v1

    .line 159
    .local v1, "isActivityEnable":Z
    iget-object v2, p0, Lcom/miui/autoui/MIUIAutoUIImpl;->mEnableCallback:Ljava/util/function/Consumer;

    if-eqz v2, :cond_1d

    .line 160
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 165
    .end local v1    # "isActivityEnable":Z
    :cond_1d
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->isAppAutoUIEnable()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 166
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/autoui/AutoPolicyUtils;->getScreenRealWidth()I

    move-result v1

    if-eq p2, v1, :cond_38

    .line 167
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lcom/miui/autoui/AutoPolicyUtils;->refreshValues(II)V

    .line 169
    :cond_38
    invoke-direct {p0, v0}, Lcom/miui/autoui/MIUIAutoUIImpl;->updateApplicationConfiguration(Ljava/lang/String;)V

    .line 170
    invoke-direct {p0, p1, v0}, Lcom/miui/autoui/MIUIAutoUIImpl;->updateConfiguration(Landroid/content/Context;Ljava/lang/String;)V

    .line 172
    :cond_3e
    return-void
.end method

.method public blacklist onUpdateDirtyDisplayList(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 95
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->isAppAutoUIEnable()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 96
    invoke-static {p1}, Lcom/miui/autoui/policy/AutoUIPolicyFactory;->getPolicy(Landroid/view/View;)Lcom/miui/autoui/policy/api/IAutoUIPolicy;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/autoui/policy/api/IAutoUIPolicy;->onUpdateDirtyDisplayList(Landroid/view/View;)V

    .line 98
    :cond_11
    return-void
.end method

.method public blacklist onViewDetached(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 89
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->isAppAutoUIEnable()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 90
    invoke-static {p1}, Lcom/miui/autoui/policy/AutoUIPolicyFactory;->getPolicy(Landroid/view/View;)Lcom/miui/autoui/policy/api/IAutoUIPolicy;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/autoui/policy/api/IAutoUIPolicy;->getDrawPolicy()Lcom/miui/autoui/policy/api/IAutoUIDraw;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/autoui/policy/api/IAutoUIDraw;->onViewDetached(Landroid/view/View;)V

    .line 92
    :cond_15
    return-void
.end method

.method public blacklist pointInView(Landroid/view/View;FF)Z
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "localX"    # F
    .param p3, "localY"    # F

    .line 82
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->isAppAutoUIEnable()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 83
    invoke-static {p1}, Lcom/miui/autoui/policy/AutoUIPolicyFactory;->getPolicy(Landroid/view/View;)Lcom/miui/autoui/policy/api/IAutoUIPolicy;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/autoui/policy/api/IAutoUIPolicy;->getEventHandler()Lcom/miui/autoui/policy/api/IAutoUIEvent;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/miui/autoui/policy/api/IAutoUIEvent;->pointInView(Landroid/view/View;FF)Z

    move-result v0

    return v0

    .line 85
    :cond_17
    if-eqz p1, :cond_22

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroid/view/View;->pointInView(FFF)Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    :goto_23
    return v0
.end method

.method public blacklist postDispatchTouch(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/MotionEvent;)V
    .registers 5
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "motionEvent"    # Landroid/view/MotionEvent;

    .line 190
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->isAppAutoUIEnable()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 191
    invoke-static {p2}, Lcom/miui/autoui/policy/AutoUIPolicyFactory;->getPolicy(Landroid/view/View;)Lcom/miui/autoui/policy/api/IAutoUIPolicy;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/autoui/policy/api/IAutoUIPolicy;->getEventHandler()Lcom/miui/autoui/policy/api/IAutoUIEvent;

    move-result-object v0

    .line 192
    invoke-interface {v0, p1, p2, p3}, Lcom/miui/autoui/policy/api/IAutoUIEvent;->postDispatchTouch(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 194
    :cond_15
    return-void
.end method

.method public blacklist postViewDraw(Landroid/view/View;Landroid/graphics/Canvas;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .line 76
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->isAppAutoUIEnable()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 77
    invoke-static {p1}, Lcom/miui/autoui/policy/AutoUIPolicyFactory;->getPolicy(Landroid/view/View;)Lcom/miui/autoui/policy/api/IAutoUIPolicy;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/autoui/policy/api/IAutoUIPolicy;->getDrawPolicy()Lcom/miui/autoui/policy/api/IAutoUIDraw;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/miui/autoui/policy/api/IAutoUIDraw;->postViewDraw(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 79
    :cond_15
    return-void
.end method

.method public blacklist postViewLayout(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 58
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->isAppAutoUIEnable()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 59
    invoke-static {p1}, Lcom/miui/autoui/policy/AutoUIPolicyFactory;->getPolicy(Landroid/view/View;)Lcom/miui/autoui/policy/api/IAutoUIPolicy;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/autoui/policy/api/IAutoUIPolicy;->getLayoutPolicy()Lcom/miui/autoui/policy/api/IAutoUILayout;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/autoui/policy/api/IAutoUILayout;->postViewLayout(Landroid/view/View;)V

    .line 61
    :cond_15
    return-void
.end method

.method public blacklist postViewMeasure(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 46
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->isAppAutoUIEnable()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 47
    invoke-static {p1}, Lcom/miui/autoui/policy/AutoUIPolicyFactory;->getPolicy(Landroid/view/View;)Lcom/miui/autoui/policy/api/IAutoUIPolicy;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/autoui/policy/api/IAutoUIPolicy;->getMeasurePolicy()Lcom/miui/autoui/policy/api/IAutoUIMeasure;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/autoui/policy/api/IAutoUIMeasure;->postViewMeasure(Landroid/view/View;)V

    .line 49
    :cond_15
    return-void
.end method

.method public blacklist preDispatchTouch(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/MotionEvent;)V
    .registers 5
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "motionEvent"    # Landroid/view/MotionEvent;

    .line 101
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->isAppAutoUIEnable()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 102
    invoke-static {p2}, Lcom/miui/autoui/policy/AutoUIPolicyFactory;->getPolicy(Landroid/view/View;)Lcom/miui/autoui/policy/api/IAutoUIPolicy;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/autoui/policy/api/IAutoUIPolicy;->getEventHandler()Lcom/miui/autoui/policy/api/IAutoUIEvent;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/miui/autoui/policy/api/IAutoUIEvent;->preDispatchTouch(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 104
    :cond_15
    return-void
.end method

.method public blacklist preViewDraw(Landroid/view/View;Landroid/graphics/Canvas;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .line 64
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->isAppAutoUIEnable()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 65
    invoke-static {p1}, Lcom/miui/autoui/policy/AutoUIPolicyFactory;->getPolicy(Landroid/view/View;)Lcom/miui/autoui/policy/api/IAutoUIPolicy;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/autoui/policy/api/IAutoUIPolicy;->getDrawPolicy()Lcom/miui/autoui/policy/api/IAutoUIDraw;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/miui/autoui/policy/api/IAutoUIDraw;->preViewDraw(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 67
    :cond_15
    return-void
.end method

.method public blacklist preViewDraw(Landroid/view/View;Landroid/graphics/Canvas;Landroid/view/ViewGroup;J)V
    .registers 13
    .param p1, "view"    # Landroid/view/View;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "drawingTime"    # J

    .line 70
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->isAppAutoUIEnable()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 71
    invoke-static {p1}, Lcom/miui/autoui/policy/AutoUIPolicyFactory;->getPolicy(Landroid/view/View;)Lcom/miui/autoui/policy/api/IAutoUIPolicy;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/autoui/policy/api/IAutoUIPolicy;->getDrawPolicy()Lcom/miui/autoui/policy/api/IAutoUIDraw;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Lcom/miui/autoui/policy/api/IAutoUIDraw;->preViewDraw(Landroid/view/View;Landroid/graphics/Canvas;Landroid/view/ViewGroup;J)V

    .line 73
    :cond_19
    return-void
.end method

.method public blacklist preViewLayout(Landroid/view/View;IIII)V
    .registers 13
    .param p1, "view"    # Landroid/view/View;
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 52
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->isAppAutoUIEnable()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 53
    invoke-static {p1}, Lcom/miui/autoui/policy/AutoUIPolicyFactory;->getPolicy(Landroid/view/View;)Lcom/miui/autoui/policy/api/IAutoUIPolicy;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/autoui/policy/api/IAutoUIPolicy;->getLayoutPolicy()Lcom/miui/autoui/policy/api/IAutoUILayout;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/miui/autoui/policy/api/IAutoUILayout;->preViewLayout(Landroid/view/View;IIII)V

    .line 55
    :cond_1a
    return-void
.end method

.method public blacklist preViewMeasure(Landroid/view/View;II)[I
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "widthMeasureSpec"    # I
    .param p3, "heightMeasureSpec"    # I

    .line 38
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->isAppAutoUIEnable()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 39
    invoke-static {p1}, Lcom/miui/autoui/policy/AutoUIPolicyFactory;->getPolicy(Landroid/view/View;)Lcom/miui/autoui/policy/api/IAutoUIPolicy;

    move-result-object v0

    .line 40
    .local v0, "policy":Lcom/miui/autoui/policy/api/IAutoUIPolicy;
    invoke-interface {v0}, Lcom/miui/autoui/policy/api/IAutoUIPolicy;->getMeasurePolicy()Lcom/miui/autoui/policy/api/IAutoUIMeasure;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/miui/autoui/policy/api/IAutoUIMeasure;->preViewMeasure(Landroid/view/View;II)[I

    move-result-object v1

    return-object v1

    .line 42
    .end local v0    # "policy":Lcom/miui/autoui/policy/api/IAutoUIPolicy;
    :cond_17
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 v1, 0x1

    aput p3, v0, v1

    return-object v0
.end method

.method public blacklist processPointerEvent(Landroid/view/View;Landroid/view/MotionEvent;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .line 184
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->isAppAutoUIEnable()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 185
    invoke-static {p1}, Lcom/miui/autoui/policy/AutoUIPolicyFactory;->getPolicy(Landroid/view/View;)Lcom/miui/autoui/policy/api/IAutoUIPolicy;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/autoui/policy/api/IAutoUIPolicy;->getEventHandler()Lcom/miui/autoui/policy/api/IAutoUIEvent;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/miui/autoui/policy/api/IAutoUIEvent;->processPointerEvent(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 187
    :cond_15
    return-void
.end method
