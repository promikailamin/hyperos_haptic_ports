.class public Landroid/view/ViewForceDarkStateImpl;
.super Landroid/view/ViewForceDarkStateStub;
.source "ViewForceDarkStateImpl.java"


# static fields
.field static final blacklist FORCE_DARK_APPLY_CONFIG:I = 0x1

.field static final blacklist FORCE_DARK_FLAG_DEFAULT:I = 0x6

.field static final blacklist FORCE_DARK_VIEW_DIRTY_ROOT:I = 0x4

.field static final blacklist FORCE_DARK_VIEW_TREE_DIRTY:I = 0x2

.field private static final blacklist TAG:Ljava/lang/String; = "ViewForceDarkState"


# instance fields
.field private blacklist mForceDarkAllowed:Z

.field private blacklist mForceDarkFlags:I

.field private blacklist mForceDarkKeyedTags:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mHostView:Landroid/view/View;

.field private blacklist mXmlIndex:I

.field private blacklist mXmlName:Ljava/lang/String;

.field private blacklist useSoftwareForceDark:Z


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 16
    invoke-direct {p0}, Landroid/view/ViewForceDarkStateStub;-><init>()V

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewForceDarkStateImpl;->mForceDarkAllowed:Z

    .line 37
    const/4 v0, 0x6

    iput v0, p0, Landroid/view/ViewForceDarkStateImpl;->mForceDarkFlags:I

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/ViewForceDarkStateImpl;->mXmlIndex:I

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewForceDarkStateImpl;->useSoftwareForceDark:Z

    return-void
.end method


# virtual methods
.method public blacklist cleanForceDarkViewTreeDirty()V
    .registers 2

    .line 93
    iget v0, p0, Landroid/view/ViewForceDarkStateImpl;->mForceDarkFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Landroid/view/ViewForceDarkStateImpl;->mForceDarkFlags:I

    .line 94
    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Landroid/view/ViewForceDarkStateImpl;->mForceDarkFlags:I

    .line 95
    return-void
.end method

.method public blacklist getBackgroundBitmapPalette()Ljava/lang/String;
    .registers 3

    .line 177
    iget-object v0, p0, Landroid/view/ViewForceDarkStateImpl;->mHostView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 178
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_b

    const-string v1, ""

    goto :goto_f

    :cond_b
    invoke-virtual {p0, v0}, Landroid/view/ViewForceDarkStateImpl;->getBitmapPalette(Landroid/graphics/drawable/Drawable;)Ljava/lang/String;

    move-result-object v1

    :goto_f
    return-object v1
.end method

.method public blacklist getBackgroundDrawableName()Ljava/lang/String;
    .registers 3

    .line 172
    iget-object v0, p0, Landroid/view/ViewForceDarkStateImpl;->mHostView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 173
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_b

    const-string v1, ""

    goto :goto_13

    :cond_b
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_13
    return-object v1
.end method

.method public blacklist getBitmapPalette(Landroid/graphics/drawable/Drawable;)Ljava/lang/String;
    .registers 5
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 182
    const/4 v0, -0x1

    .line 183
    .local v0, "palette":I
    instance-of v1, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_1a

    .line 184
    move-object v1, p1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_3f

    .line 185
    move-object v1, p1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->palette()I

    move-result v0

    goto :goto_3f

    .line 187
    :cond_1a
    instance-of v1, p1, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v1, :cond_3f

    .line 188
    move-object v1, p1

    check-cast v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/StateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 189
    .local v1, "currentStateDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_3f

    instance-of v2, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_3f

    move-object v2, v1

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 190
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_3f

    .line 191
    move-object v2, v1

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->palette()I

    move-result v0

    .line 194
    .end local v1    # "currentStateDrawable":Landroid/graphics/drawable/Drawable;
    :cond_3f
    :goto_3f
    packed-switch v0, :pswitch_data_50

    .line 202
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 200
    :pswitch_47
    const-string v1, "Dark"

    return-object v1

    .line 198
    :pswitch_4a
    const-string v1, "Light"

    return-object v1

    .line 196
    :pswitch_4d
    const-string v1, "Unknown"

    return-object v1

    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_4d
        :pswitch_4a
        :pswitch_47
    .end packed-switch
.end method

.method public blacklist getForceDarkTag(I)Ljava/lang/Object;
    .registers 3
    .param p1, "key"    # I

    .line 112
    iget-object v0, p0, Landroid/view/ViewForceDarkStateImpl;->mForceDarkKeyedTags:Landroid/util/SparseArray;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 113
    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getForceDarkUsageHint()I
    .registers 2

    .line 154
    iget-object v0, p0, Landroid/view/ViewForceDarkStateImpl;->mHostView:Landroid/view/View;

    iget-object v0, v0, Landroid/view/View;->mRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v0}, Landroid/graphics/RenderNode;->getForceDarkUsageHint()I

    move-result v0

    return v0
.end method

.method public blacklist getLayoutXmlName()Ljava/lang/String;
    .registers 2

    .line 125
    iget-object v0, p0, Landroid/view/ViewForceDarkStateImpl;->mXmlName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getUsageHint()I
    .registers 2

    .line 150
    iget-object v0, p0, Landroid/view/ViewForceDarkStateImpl;->mHostView:Landroid/view/View;

    iget-object v0, v0, Landroid/view/View;->mRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v0}, Landroid/graphics/RenderNode;->getUsageHint()I

    move-result v0

    return v0
.end method

.method public blacklist getViewClass()Ljava/lang/String;
    .registers 5

    .line 162
    iget-object v0, p0, Landroid/view/ViewForceDarkStateImpl;->mHostView:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, "className":Ljava/lang/String;
    iget-object v1, p0, Landroid/view/ViewForceDarkStateImpl;->mHostView:Landroid/view/View;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 164
    .local v1, "superClass":Ljava/lang/Class;
    :goto_14
    const-class v2, Ljava/lang/Object;

    if-eq v1, v2, :cond_38

    .line 165
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 166
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_14

    .line 168
    :cond_38
    return-object v0
.end method

.method public blacklist getXmlIndex()I
    .registers 2

    .line 137
    iget v0, p0, Landroid/view/ViewForceDarkStateImpl;->mXmlIndex:I

    return v0
.end method

.method public blacklist hasText()Z
    .registers 2

    .line 158
    iget-object v0, p0, Landroid/view/ViewForceDarkStateImpl;->mHostView:Landroid/view/View;

    iget-object v0, v0, Landroid/view/View;->mRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v0}, Landroid/graphics/RenderNode;->hasText()Z

    move-result v0

    return v0
.end method

.method public blacklist isApplyForceDarkConfig()Z
    .registers 3

    .line 69
    iget v0, p0, Landroid/view/ViewForceDarkStateImpl;->mForceDarkFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public blacklist isBackgroundLoadedFromResources()Z
    .registers 3

    .line 207
    iget-object v0, p0, Landroid/view/ViewForceDarkStateImpl;->mHostView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 208
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isLoadedFromResources()Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return v1
.end method

.method public blacklist isForceDarkAllowed()Z
    .registers 2

    .line 56
    iget-boolean v0, p0, Landroid/view/ViewForceDarkStateImpl;->mForceDarkAllowed:Z

    return v0
.end method

.method public blacklist isForceDarkViewDirtyRoot()Z
    .registers 2

    .line 79
    iget v0, p0, Landroid/view/ViewForceDarkStateImpl;->mForceDarkFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist isForceDarkViewTreeDirty()Z
    .registers 2

    .line 99
    iget v0, p0, Landroid/view/ViewForceDarkStateImpl;->mForceDarkFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist isUseSoftwareForceDark()Z
    .registers 2

    .line 212
    iget-boolean v0, p0, Landroid/view/ViewForceDarkStateImpl;->useSoftwareForceDark:Z

    return v0
.end method

.method public blacklist markApplyForceDarkConfig()V
    .registers 2

    .line 64
    iget v0, p0, Landroid/view/ViewForceDarkStateImpl;->mForceDarkFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/view/ViewForceDarkStateImpl;->mForceDarkFlags:I

    .line 65
    return-void
.end method

.method public blacklist markForceDarkDirtyRoot()V
    .registers 2

    .line 73
    iget v0, p0, Landroid/view/ViewForceDarkStateImpl;->mForceDarkFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/view/ViewForceDarkStateImpl;->mForceDarkFlags:I

    .line 74
    invoke-virtual {p0}, Landroid/view/ViewForceDarkStateImpl;->markForceDarkViewTreeDirty()V

    .line 75
    return-void
.end method

.method public blacklist markForceDarkViewTreeDirty()V
    .registers 2

    .line 83
    iget v0, p0, Landroid/view/ViewForceDarkStateImpl;->mForceDarkFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/view/ViewForceDarkStateImpl;->mForceDarkFlags:I

    .line 84
    iget-object v0, p0, Landroid/view/ViewForceDarkStateImpl;->mHostView:Landroid/view/View;

    iget-object v0, v0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2b

    .line 85
    iget-object v0, p0, Landroid/view/ViewForceDarkStateImpl;->mHostView:Landroid/view/View;

    iget-object v0, v0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getForceDarkState()Landroid/view/ViewForceDarkStateStub;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewForceDarkStateStub;->isForceDarkViewTreeDirty()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 86
    iget-object v0, p0, Landroid/view/ViewForceDarkStateImpl;->mHostView:Landroid/view/View;

    iget-object v0, v0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getForceDarkState()Landroid/view/ViewForceDarkStateStub;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewForceDarkStateStub;->markForceDarkViewTreeDirty()V

    .line 89
    :cond_2b
    return-void
.end method

.method public blacklist resetForceDarkState()V
    .registers 3

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewForceDarkStateImpl;->mForceDarkKeyedTags:Landroid/util/SparseArray;

    .line 143
    const/4 v0, 0x6

    iput v0, p0, Landroid/view/ViewForceDarkStateImpl;->mForceDarkFlags:I

    .line 144
    iget-object v0, p0, Landroid/view/ViewForceDarkStateImpl;->mHostView:Landroid/view/View;

    iget-object v0, v0, Landroid/view/View;->mRenderNode:Landroid/graphics/RenderNode;

    if-eqz v0, :cond_14

    .line 145
    iget-object v0, p0, Landroid/view/ViewForceDarkStateImpl;->mHostView:Landroid/view/View;

    iget-object v0, v0, Landroid/view/View;->mRenderNode:Landroid/graphics/RenderNode;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/RenderNode;->setUsageHint(I)V

    .line 147
    :cond_14
    return-void
.end method

.method public blacklist setForceDarkAllowed(Z)V
    .registers 2
    .param p1, "mForceDarkAllowed"    # Z

    .line 60
    iput-boolean p1, p0, Landroid/view/ViewForceDarkStateImpl;->mForceDarkAllowed:Z

    .line 61
    return-void
.end method

.method public blacklist setForceDarkKeyedTag(ILjava/lang/Object;)V
    .registers 5
    .param p1, "key"    # I
    .param p2, "tag"    # Ljava/lang/Object;

    .line 104
    iget-object v0, p0, Landroid/view/ViewForceDarkStateImpl;->mForceDarkKeyedTags:Landroid/util/SparseArray;

    if-nez v0, :cond_c

    .line 105
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Landroid/view/ViewForceDarkStateImpl;->mForceDarkKeyedTags:Landroid/util/SparseArray;

    .line 107
    :cond_c
    iget-object v0, p0, Landroid/view/ViewForceDarkStateImpl;->mForceDarkKeyedTags:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 108
    return-void
.end method

.method public blacklist setHostView(Landroid/view/View;)V
    .registers 2
    .param p1, "hostView"    # Landroid/view/View;

    .line 52
    iput-object p1, p0, Landroid/view/ViewForceDarkStateImpl;->mHostView:Landroid/view/View;

    .line 53
    return-void
.end method

.method public blacklist setLayoutXmlName(Ljava/lang/String;)V
    .registers 3
    .param p1, "xmlName"    # Ljava/lang/String;

    .line 118
    iget-object v0, p0, Landroid/view/ViewForceDarkStateImpl;->mXmlName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 119
    return-void

    .line 121
    :cond_9
    iput-object p1, p0, Landroid/view/ViewForceDarkStateImpl;->mXmlName:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public blacklist setUseSoftwareForceDark(Z)V
    .registers 2
    .param p1, "useSoftwareForceDark"    # Z

    .line 216
    iput-boolean p1, p0, Landroid/view/ViewForceDarkStateImpl;->useSoftwareForceDark:Z

    .line 217
    return-void
.end method

.method public blacklist setXmlIndex(I)V
    .registers 4
    .param p1, "index"    # I

    .line 130
    iget v0, p0, Landroid/view/ViewForceDarkStateImpl;->mXmlIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 131
    return-void

    .line 133
    :cond_6
    iput p1, p0, Landroid/view/ViewForceDarkStateImpl;->mXmlIndex:I

    .line 134
    return-void
.end method
