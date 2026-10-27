.class public Lcom/miui/autoui/ViewExtras;
.super Ljava/lang/Object;
.source "ViewExtras.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/autoui/ViewExtras$Alignment;
    }
.end annotation


# static fields
.field public static final blacklist INVALID_VALUE:I = -0x1

.field public static final blacklist MODIFY_COMPRESS_RECYCLER_ITEM:I = 0x2

.field public static final blacklist MODIFY_SPAN_RECYCLER_DONE:I = 0x1

.field public static final blacklist MODIFY_SPAN_RECYCLER_FAIL:I = 0x0

.field public static final blacklist MODIFY_TRANSLATE_RECYCLER_ITEM:I = 0x3

.field public static final blacklist TYPE_REACT_ROOT_VIEW:I = 0x1


# instance fields
.field private blacklist containsHorizontalList:Z

.field private blacklist mAlignment:Lcom/miui/autoui/ViewExtras$Alignment;

.field private blacklist mCenterCropRate:F

.field private blacklist mColumnCount:I

.field private blacklist mCompressWidth:I

.field private blacklist mDrawOffsetX:F

.field private blacklist mHasBottomTab:Z

.field private blacklist mHasRuleBottomTab:Z

.field private blacklist mHasRuleTopTab:Z

.field private blacklist mHasTopTab:Z

.field private blacklist mInMid:Z

.field private blacklist mIsAtomic:Z

.field private blacklist mIsAutoUIGroup:Z

.field private blacklist mIsBackgroundImage:Z

.field private blacklist mIsBackgroundImageGroup:Z

.field private blacklist mIsBottomTab:Z

.field private blacklist mIsFloat:Z

.field private blacklist mIsFloatIcon:Z

.field private blacklist mIsIcon:Z

.field private blacklist mIsIgnore:Z

.field private blacklist mIsIgnoreWithoutBlur:Z

.field private blacklist mIsLargeBitmap:Z

.field private blacklist mIsMidGroup:Z

.field private blacklist mIsNeedBlur:Z

.field private blacklist mIsNeedCompress:Z

.field private blacklist mIsNeedOriginalLayout:Z

.field private blacklist mIsNeedStretch:Z

.field private blacklist mIsOriginalSize:Z

.field private blacklist mIsRelayout:Z

.field private blacklist mIsTopTab:Z

.field private blacklist mIsWebView:Z

.field private blacklist mModifySpanCount:I

.field private blacklist mReactRootView:I

.field private blacklist mRecyclerViewModifyState:I

.field private blacklist mSaveCount:I

.field private blacklist mViewPolicy:I

.field private blacklist mWidth:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 4

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/autoui/ViewExtras;->mIsNeedStretch:Z

    .line 27
    sget-object v1, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_LEFT:Lcom/miui/autoui/ViewExtras$Alignment;

    iput-object v1, p0, Lcom/miui/autoui/ViewExtras;->mAlignment:Lcom/miui/autoui/ViewExtras$Alignment;

    .line 28
    const/4 v1, -0x1

    iput v1, p0, Lcom/miui/autoui/ViewExtras;->mSaveCount:I

    .line 29
    iput-boolean v0, p0, Lcom/miui/autoui/ViewExtras;->mIsNeedBlur:Z

    .line 30
    iput-boolean v0, p0, Lcom/miui/autoui/ViewExtras;->mIsBackgroundImage:Z

    .line 31
    iput-boolean v0, p0, Lcom/miui/autoui/ViewExtras;->mIsBackgroundImageGroup:Z

    .line 32
    const/4 v2, 0x0

    iput v2, p0, Lcom/miui/autoui/ViewExtras;->mDrawOffsetX:F

    .line 33
    iput-boolean v0, p0, Lcom/miui/autoui/ViewExtras;->mIsFloat:Z

    .line 34
    iput v1, p0, Lcom/miui/autoui/ViewExtras;->mRecyclerViewModifyState:I

    .line 35
    iput v1, p0, Lcom/miui/autoui/ViewExtras;->mModifySpanCount:I

    .line 36
    iput v1, p0, Lcom/miui/autoui/ViewExtras;->mViewPolicy:I

    .line 37
    iput v2, p0, Lcom/miui/autoui/ViewExtras;->mCenterCropRate:F

    .line 38
    iput-boolean v0, p0, Lcom/miui/autoui/ViewExtras;->mIsWebView:Z

    .line 39
    iput-boolean v0, p0, Lcom/miui/autoui/ViewExtras;->mIsIcon:Z

    .line 40
    iput v1, p0, Lcom/miui/autoui/ViewExtras;->mReactRootView:I

    .line 42
    iput-boolean v0, p0, Lcom/miui/autoui/ViewExtras;->mIsRelayout:Z

    return-void
.end method


# virtual methods
.method public blacklist getAlignment()Lcom/miui/autoui/ViewExtras$Alignment;
    .registers 2

    .line 168
    iget-object v0, p0, Lcom/miui/autoui/ViewExtras;->mAlignment:Lcom/miui/autoui/ViewExtras$Alignment;

    return-object v0
.end method

.method public blacklist getCenterCropRate()F
    .registers 2

    .line 254
    iget v0, p0, Lcom/miui/autoui/ViewExtras;->mCenterCropRate:F

    return v0
.end method

.method public blacklist getColumnCount()I
    .registers 2

    .line 63
    iget v0, p0, Lcom/miui/autoui/ViewExtras;->mColumnCount:I

    return v0
.end method

.method public blacklist getCompressWidth()I
    .registers 2

    .line 71
    iget v0, p0, Lcom/miui/autoui/ViewExtras;->mCompressWidth:I

    return v0
.end method

.method public blacklist getDrawOffsetX()F
    .registers 2

    .line 208
    iget v0, p0, Lcom/miui/autoui/ViewExtras;->mDrawOffsetX:F

    return v0
.end method

.method public blacklist getModifySpanCount()I
    .registers 2

    .line 238
    iget v0, p0, Lcom/miui/autoui/ViewExtras;->mModifySpanCount:I

    return v0
.end method

.method public blacklist getReactRootView()I
    .registers 2

    .line 266
    iget v0, p0, Lcom/miui/autoui/ViewExtras;->mReactRootView:I

    return v0
.end method

.method public blacklist getRecyclerViewModifyState()I
    .registers 2

    .line 224
    iget v0, p0, Lcom/miui/autoui/ViewExtras;->mRecyclerViewModifyState:I

    return v0
.end method

.method public blacklist getSaveCount()I
    .registers 2

    .line 176
    iget v0, p0, Lcom/miui/autoui/ViewExtras;->mSaveCount:I

    return v0
.end method

.method public blacklist getViewPolicy()I
    .registers 2

    .line 246
    iget v0, p0, Lcom/miui/autoui/ViewExtras;->mViewPolicy:I

    return v0
.end method

.method public blacklist getWidth()I
    .registers 2

    .line 152
    iget v0, p0, Lcom/miui/autoui/ViewExtras;->mWidth:I

    return v0
.end method

.method public blacklist hasBottomTab()Z
    .registers 2

    .line 330
    iget-boolean v0, p0, Lcom/miui/autoui/ViewExtras;->mHasBottomTab:Z

    return v0
.end method

.method public blacklist hasRuleBottomTab()Z
    .registers 2

    .line 314
    iget-boolean v0, p0, Lcom/miui/autoui/ViewExtras;->mHasRuleBottomTab:Z

    return v0
.end method

.method public blacklist hasRuleTopTab()Z
    .registers 2

    .line 306
    iget-boolean v0, p0, Lcom/miui/autoui/ViewExtras;->mHasRuleTopTab:Z

    return v0
.end method

.method public blacklist hasTopTab()Z
    .registers 2

    .line 322
    iget-boolean v0, p0, Lcom/miui/autoui/ViewExtras;->mHasTopTab:Z

    return v0
.end method

.method public blacklist isAtomic()Z
    .registers 2

    .line 79
    iget-boolean v0, p0, Lcom/miui/autoui/ViewExtras;->mIsAtomic:Z

    return v0
.end method

.method public blacklist isAutoUIGroup()Z
    .registers 2

    .line 144
    iget-boolean v0, p0, Lcom/miui/autoui/ViewExtras;->mIsAutoUIGroup:Z

    return v0
.end method

.method public blacklist isBackgroundImage()Z
    .registers 2

    .line 192
    iget-boolean v0, p0, Lcom/miui/autoui/ViewExtras;->mIsBackgroundImage:Z

    return v0
.end method

.method public blacklist isBackgroundImageGroup()Z
    .registers 2

    .line 200
    iget-boolean v0, p0, Lcom/miui/autoui/ViewExtras;->mIsBackgroundImageGroup:Z

    return v0
.end method

.method public blacklist isBottomTab()Z
    .registers 2

    .line 282
    iget-boolean v0, p0, Lcom/miui/autoui/ViewExtras;->mIsBottomTab:Z

    return v0
.end method

.method public blacklist isContainsHorizontalList()Z
    .registers 2

    .line 354
    iget-boolean v0, p0, Lcom/miui/autoui/ViewExtras;->containsHorizontalList:Z

    return v0
.end method

.method public blacklist isFloat()Z
    .registers 2

    .line 216
    iget-boolean v0, p0, Lcom/miui/autoui/ViewExtras;->mIsFloat:Z

    return v0
.end method

.method public blacklist isFloatIcon()Z
    .registers 2

    .line 87
    iget-boolean v0, p0, Lcom/miui/autoui/ViewExtras;->mIsFloatIcon:Z

    return v0
.end method

.method public blacklist isIcon()Z
    .registers 2

    .line 346
    iget-boolean v0, p0, Lcom/miui/autoui/ViewExtras;->mIsIcon:Z

    return v0
.end method

.method public blacklist isIgnore()Z
    .registers 2

    .line 95
    iget-boolean v0, p0, Lcom/miui/autoui/ViewExtras;->mIsIgnore:Z

    return v0
.end method

.method public blacklist isIgnoreWithoutBlur()Z
    .registers 2

    .line 103
    iget-boolean v0, p0, Lcom/miui/autoui/ViewExtras;->mIsIgnoreWithoutBlur:Z

    return v0
.end method

.method public blacklist isInMid()Z
    .registers 2

    .line 298
    iget-boolean v0, p0, Lcom/miui/autoui/ViewExtras;->mInMid:Z

    return v0
.end method

.method public blacklist isLargeBitmap()Z
    .registers 2

    .line 112
    iget-boolean v0, p0, Lcom/miui/autoui/ViewExtras;->mIsLargeBitmap:Z

    return v0
.end method

.method public blacklist isMidGroup()Z
    .registers 2

    .line 290
    iget-boolean v0, p0, Lcom/miui/autoui/ViewExtras;->mIsMidGroup:Z

    return v0
.end method

.method public blacklist isNeedBlur()Z
    .registers 2

    .line 184
    iget-boolean v0, p0, Lcom/miui/autoui/ViewExtras;->mIsNeedBlur:Z

    return v0
.end method

.method public blacklist isNeedCompress()Z
    .registers 2

    .line 120
    iget-boolean v0, p0, Lcom/miui/autoui/ViewExtras;->mIsNeedCompress:Z

    return v0
.end method

.method public blacklist isNeedOriginalLayout()Z
    .registers 2

    .line 128
    iget-boolean v0, p0, Lcom/miui/autoui/ViewExtras;->mIsNeedOriginalLayout:Z

    return v0
.end method

.method public blacklist isNeedStretch()Z
    .registers 2

    .line 160
    iget-boolean v0, p0, Lcom/miui/autoui/ViewExtras;->mIsNeedStretch:Z

    return v0
.end method

.method public blacklist isOriginalSize()Z
    .registers 2

    .line 136
    iget-boolean v0, p0, Lcom/miui/autoui/ViewExtras;->mIsOriginalSize:Z

    return v0
.end method

.method public blacklist isReactRootView()Z
    .registers 3

    .line 262
    iget v0, p0, Lcom/miui/autoui/ViewExtras;->mReactRootView:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public blacklist isRecyclerInOtherModify(I)Z
    .registers 4
    .param p1, "targetState"    # I

    .line 228
    iget v0, p0, Lcom/miui/autoui/ViewExtras;->mRecyclerViewModifyState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    if-eqz v0, :cond_b

    if-eq v0, p1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public blacklist isRelayout()Z
    .registers 2

    .line 362
    iget-boolean v0, p0, Lcom/miui/autoui/ViewExtras;->mIsRelayout:Z

    return v0
.end method

.method public blacklist isTopTab()Z
    .registers 2

    .line 274
    iget-boolean v0, p0, Lcom/miui/autoui/ViewExtras;->mIsTopTab:Z

    return v0
.end method

.method public blacklist isWebView()Z
    .registers 2

    .line 338
    iget-boolean v0, p0, Lcom/miui/autoui/ViewExtras;->mIsWebView:Z

    return v0
.end method

.method public blacklist reset()V
    .registers 3

    .line 370
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/autoui/ViewExtras;->mIsAtomic:Z

    .line 371
    iput-boolean v0, p0, Lcom/miui/autoui/ViewExtras;->mIsOriginalSize:Z

    .line 372
    sget-object v1, Lcom/miui/autoui/ViewExtras$Alignment;->ALIGN_LEFT:Lcom/miui/autoui/ViewExtras$Alignment;

    iput-object v1, p0, Lcom/miui/autoui/ViewExtras;->mAlignment:Lcom/miui/autoui/ViewExtras$Alignment;

    .line 373
    iput-boolean v0, p0, Lcom/miui/autoui/ViewExtras;->mIsIgnore:Z

    .line 374
    iput-boolean v0, p0, Lcom/miui/autoui/ViewExtras;->mIsIgnoreWithoutBlur:Z

    .line 375
    const/4 v1, -0x1

    iput v1, p0, Lcom/miui/autoui/ViewExtras;->mSaveCount:I

    .line 376
    iput v1, p0, Lcom/miui/autoui/ViewExtras;->mReactRootView:I

    .line 377
    iput-boolean v0, p0, Lcom/miui/autoui/ViewExtras;->mIsTopTab:Z

    .line 378
    iput-boolean v0, p0, Lcom/miui/autoui/ViewExtras;->mIsBottomTab:Z

    .line 379
    iput-boolean v0, p0, Lcom/miui/autoui/ViewExtras;->mIsMidGroup:Z

    .line 380
    iput-boolean v0, p0, Lcom/miui/autoui/ViewExtras;->mHasRuleTopTab:Z

    .line 381
    iput-boolean v0, p0, Lcom/miui/autoui/ViewExtras;->mHasRuleBottomTab:Z

    .line 382
    return-void
.end method

.method public blacklist setAlignment(Lcom/miui/autoui/ViewExtras$Alignment;)V
    .registers 2
    .param p1, "alignment"    # Lcom/miui/autoui/ViewExtras$Alignment;

    .line 172
    iput-object p1, p0, Lcom/miui/autoui/ViewExtras;->mAlignment:Lcom/miui/autoui/ViewExtras$Alignment;

    .line 173
    return-void
.end method

.method public blacklist setAtomic(Z)V
    .registers 2
    .param p1, "atomic"    # Z

    .line 83
    iput-boolean p1, p0, Lcom/miui/autoui/ViewExtras;->mIsAtomic:Z

    .line 84
    return-void
.end method

.method public blacklist setAutoUIGroup(Z)V
    .registers 2
    .param p1, "autoUIGroup"    # Z

    .line 148
    iput-boolean p1, p0, Lcom/miui/autoui/ViewExtras;->mIsAutoUIGroup:Z

    .line 149
    return-void
.end method

.method public blacklist setBackgroundImage(Z)V
    .registers 2
    .param p1, "backgroundImage"    # Z

    .line 196
    iput-boolean p1, p0, Lcom/miui/autoui/ViewExtras;->mIsBackgroundImage:Z

    .line 197
    return-void
.end method

.method public blacklist setBackgroundImageGroup(Z)V
    .registers 2
    .param p1, "backgroundImageGroup"    # Z

    .line 204
    iput-boolean p1, p0, Lcom/miui/autoui/ViewExtras;->mIsBackgroundImageGroup:Z

    .line 205
    return-void
.end method

.method public blacklist setBottomTab(Z)V
    .registers 2
    .param p1, "bottomTab"    # Z

    .line 286
    iput-boolean p1, p0, Lcom/miui/autoui/ViewExtras;->mIsBottomTab:Z

    .line 287
    return-void
.end method

.method public blacklist setCenterCropRate(F)V
    .registers 2
    .param p1, "centerCropRate"    # F

    .line 258
    iput p1, p0, Lcom/miui/autoui/ViewExtras;->mCenterCropRate:F

    .line 259
    return-void
.end method

.method public blacklist setColumnCount(I)V
    .registers 2
    .param p1, "columnCount"    # I

    .line 67
    iput p1, p0, Lcom/miui/autoui/ViewExtras;->mColumnCount:I

    .line 68
    return-void
.end method

.method public blacklist setCompressWidth(I)V
    .registers 2
    .param p1, "compressWidth"    # I

    .line 75
    iput p1, p0, Lcom/miui/autoui/ViewExtras;->mCompressWidth:I

    .line 76
    return-void
.end method

.method public blacklist setContainsHorizontalList(Z)V
    .registers 2
    .param p1, "containsHorizontalList"    # Z

    .line 358
    iput-boolean p1, p0, Lcom/miui/autoui/ViewExtras;->containsHorizontalList:Z

    .line 359
    return-void
.end method

.method public blacklist setDrawOffsetX(F)V
    .registers 2
    .param p1, "drawOffsetX"    # F

    .line 212
    iput p1, p0, Lcom/miui/autoui/ViewExtras;->mDrawOffsetX:F

    .line 213
    return-void
.end method

.method public blacklist setFloat(Z)V
    .registers 2
    .param p1, "isFloat"    # Z

    .line 220
    iput-boolean p1, p0, Lcom/miui/autoui/ViewExtras;->mIsFloat:Z

    .line 221
    return-void
.end method

.method public blacklist setFloatIcon(Z)V
    .registers 2
    .param p1, "floatIcon"    # Z

    .line 91
    iput-boolean p1, p0, Lcom/miui/autoui/ViewExtras;->mIsFloatIcon:Z

    .line 92
    return-void
.end method

.method public blacklist setHasBottomTab(Z)V
    .registers 2
    .param p1, "hasBottomTab"    # Z

    .line 334
    iput-boolean p1, p0, Lcom/miui/autoui/ViewExtras;->mHasBottomTab:Z

    .line 335
    return-void
.end method

.method public blacklist setHasRuleBottomTab(Z)V
    .registers 2
    .param p1, "hasRuleBottomTab"    # Z

    .line 318
    iput-boolean p1, p0, Lcom/miui/autoui/ViewExtras;->mHasRuleBottomTab:Z

    .line 319
    return-void
.end method

.method public blacklist setHasRuleTopTab(Z)V
    .registers 2
    .param p1, "hasRuleTopTab"    # Z

    .line 310
    iput-boolean p1, p0, Lcom/miui/autoui/ViewExtras;->mHasRuleTopTab:Z

    .line 311
    return-void
.end method

.method public blacklist setHasTopTab(Z)V
    .registers 2
    .param p1, "hasTopTab"    # Z

    .line 326
    iput-boolean p1, p0, Lcom/miui/autoui/ViewExtras;->mHasTopTab:Z

    .line 327
    return-void
.end method

.method public blacklist setIcon(Z)V
    .registers 2
    .param p1, "icon"    # Z

    .line 350
    iput-boolean p1, p0, Lcom/miui/autoui/ViewExtras;->mIsIcon:Z

    .line 351
    return-void
.end method

.method public blacklist setIgnore(Z)V
    .registers 2
    .param p1, "ignore"    # Z

    .line 99
    iput-boolean p1, p0, Lcom/miui/autoui/ViewExtras;->mIsIgnore:Z

    .line 100
    return-void
.end method

.method public blacklist setIgnoreWithoutBlur(ZZ)V
    .registers 3
    .param p1, "ignore"    # Z
    .param p2, "withoutBlur"    # Z

    .line 107
    iput-boolean p1, p0, Lcom/miui/autoui/ViewExtras;->mIsIgnore:Z

    .line 108
    iput-boolean p2, p0, Lcom/miui/autoui/ViewExtras;->mIsIgnoreWithoutBlur:Z

    .line 109
    return-void
.end method

.method public blacklist setInMid(Z)V
    .registers 2
    .param p1, "inMid"    # Z

    .line 302
    iput-boolean p1, p0, Lcom/miui/autoui/ViewExtras;->mInMid:Z

    .line 303
    return-void
.end method

.method public blacklist setLargeBitmap(Z)V
    .registers 2
    .param p1, "largeBitmap"    # Z

    .line 116
    iput-boolean p1, p0, Lcom/miui/autoui/ViewExtras;->mIsLargeBitmap:Z

    .line 117
    return-void
.end method

.method public blacklist setMidGroup(Z)V
    .registers 2
    .param p1, "midGroup"    # Z

    .line 294
    iput-boolean p1, p0, Lcom/miui/autoui/ViewExtras;->mIsMidGroup:Z

    .line 295
    return-void
.end method

.method public blacklist setModifySpanCount(I)V
    .registers 2
    .param p1, "modifySpanCount"    # I

    .line 242
    iput p1, p0, Lcom/miui/autoui/ViewExtras;->mModifySpanCount:I

    .line 243
    return-void
.end method

.method public blacklist setNeedBlur(Z)V
    .registers 2
    .param p1, "needBlur"    # Z

    .line 188
    iput-boolean p1, p0, Lcom/miui/autoui/ViewExtras;->mIsNeedBlur:Z

    .line 189
    return-void
.end method

.method public blacklist setNeedCompress(Z)V
    .registers 2
    .param p1, "needCompress"    # Z

    .line 124
    iput-boolean p1, p0, Lcom/miui/autoui/ViewExtras;->mIsNeedCompress:Z

    .line 125
    return-void
.end method

.method public blacklist setNeedOriginalLayout(Z)V
    .registers 2
    .param p1, "needOriginalLayout"    # Z

    .line 132
    iput-boolean p1, p0, Lcom/miui/autoui/ViewExtras;->mIsNeedOriginalLayout:Z

    .line 133
    return-void
.end method

.method public blacklist setNeedStretch(Z)V
    .registers 2
    .param p1, "needStretch"    # Z

    .line 164
    iput-boolean p1, p0, Lcom/miui/autoui/ViewExtras;->mIsNeedStretch:Z

    .line 165
    return-void
.end method

.method public blacklist setOriginalSize(Z)V
    .registers 2
    .param p1, "originalSize"    # Z

    .line 140
    iput-boolean p1, p0, Lcom/miui/autoui/ViewExtras;->mIsOriginalSize:Z

    .line 141
    return-void
.end method

.method public blacklist setReactRootView(I)V
    .registers 2
    .param p1, "reactRootView"    # I

    .line 270
    iput p1, p0, Lcom/miui/autoui/ViewExtras;->mReactRootView:I

    .line 271
    return-void
.end method

.method public blacklist setRecyclerViewModifyState(I)V
    .registers 2
    .param p1, "modifyState"    # I

    .line 234
    iput p1, p0, Lcom/miui/autoui/ViewExtras;->mRecyclerViewModifyState:I

    .line 235
    return-void
.end method

.method public blacklist setRelayout(Z)V
    .registers 2
    .param p1, "relayout"    # Z

    .line 366
    iput-boolean p1, p0, Lcom/miui/autoui/ViewExtras;->mIsRelayout:Z

    .line 367
    return-void
.end method

.method public blacklist setSaveCount(I)V
    .registers 2
    .param p1, "saveCount"    # I

    .line 180
    iput p1, p0, Lcom/miui/autoui/ViewExtras;->mSaveCount:I

    .line 181
    return-void
.end method

.method public blacklist setTopTab(Z)V
    .registers 2
    .param p1, "topTab"    # Z

    .line 278
    iput-boolean p1, p0, Lcom/miui/autoui/ViewExtras;->mIsTopTab:Z

    .line 279
    return-void
.end method

.method public blacklist setViewPolicy(I)V
    .registers 2
    .param p1, "viewPolicy"    # I

    .line 250
    iput p1, p0, Lcom/miui/autoui/ViewExtras;->mViewPolicy:I

    .line 251
    return-void
.end method

.method public blacklist setWebView(Z)V
    .registers 2
    .param p1, "webView"    # Z

    .line 342
    iput-boolean p1, p0, Lcom/miui/autoui/ViewExtras;->mIsWebView:Z

    .line 343
    return-void
.end method

.method public blacklist setWidth(I)V
    .registers 2
    .param p1, "width"    # I

    .line 156
    iput p1, p0, Lcom/miui/autoui/ViewExtras;->mWidth:I

    .line 157
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ViewExtras{mColumnCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/autoui/ViewExtras;->mColumnCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCompressWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/autoui/ViewExtras;->mCompressWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsAtomic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/autoui/ViewExtras;->mIsAtomic:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsFloatIcon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/autoui/ViewExtras;->mIsFloatIcon:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsIgnore="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/autoui/ViewExtras;->mIsIgnore:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsIgnoreWithoutBlur="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/autoui/ViewExtras;->mIsIgnoreWithoutBlur:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsLargeBitmap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/autoui/ViewExtras;->mIsLargeBitmap:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsNeedCompress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/autoui/ViewExtras;->mIsNeedCompress:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsNeedOriginalLayout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/autoui/ViewExtras;->mIsNeedOriginalLayout:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsOriginalSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/autoui/ViewExtras;->mIsOriginalSize:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsAutoUIGroup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/autoui/ViewExtras;->mIsAutoUIGroup:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/autoui/ViewExtras;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsNeedStretch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/autoui/ViewExtras;->mIsNeedStretch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAlignment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/autoui/ViewExtras;->mAlignment:Lcom/miui/autoui/ViewExtras$Alignment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSaveCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/autoui/ViewExtras;->mSaveCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsNeedBlur="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/autoui/ViewExtras;->mIsNeedBlur:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsBackgroundImage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/autoui/ViewExtras;->mIsBackgroundImage:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsBackgroundImageGroup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/autoui/ViewExtras;->mIsBackgroundImageGroup:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDrawOffsetX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/autoui/ViewExtras;->mDrawOffsetX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsFloat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/autoui/ViewExtras;->mIsFloat:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRecyclerViewModifyState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/autoui/ViewExtras;->mRecyclerViewModifyState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mModifySpanCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/autoui/ViewExtras;->mModifySpanCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mViewPolicy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/autoui/ViewExtras;->mViewPolicy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCenterCropRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/autoui/ViewExtras;->mCenterCropRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsWebView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/autoui/ViewExtras;->mIsWebView:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsIcon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/autoui/ViewExtras;->mIsIcon:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mReactRootView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/autoui/ViewExtras;->mReactRootView:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", containsHorizontalList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/autoui/ViewExtras;->containsHorizontalList:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsTopTab="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/autoui/ViewExtras;->mIsTopTab:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsBottomTab="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/autoui/ViewExtras;->mIsBottomTab:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsMidGroup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/autoui/ViewExtras;->mIsMidGroup:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHasRuleTopTab="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/autoui/ViewExtras;->mHasRuleTopTab:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHasRuleBottomTab="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/autoui/ViewExtras;->mHasRuleBottomTab:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHasTopTab="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/autoui/ViewExtras;->mHasTopTab:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHasBottomTab="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/autoui/ViewExtras;->mHasBottomTab:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
