.class public abstract Landroid/view/WindowSharedElementCallback;
.super Ljava/lang/Object;
.source "WindowSharedElementCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/WindowSharedElementCallback$OnSharedElementsReadyListener;
    }
.end annotation


# static fields
.field private static final blacklist BUNDLE_SNAPSHOT_BITMAP:Ljava/lang/String; = "sharedElement:snapshot:bitmap"

.field private static final blacklist BUNDLE_SNAPSHOT_COLOR_SPACE:Ljava/lang/String; = "sharedElement:snapshot:colorSpace"

.field private static final blacklist BUNDLE_SNAPSHOT_HARDWARE_BUFFER:Ljava/lang/String; = "sharedElement:snapshot:hardwareBuffer"

.field private static final blacklist BUNDLE_SNAPSHOT_IMAGE_MATRIX:Ljava/lang/String; = "sharedElement:snapshot:imageMatrix"

.field private static final blacklist BUNDLE_SNAPSHOT_IMAGE_SCALETYPE:Ljava/lang/String; = "sharedElement:snapshot:imageScaleType"

.field static final blacklist NULL_CALLBACK:Landroid/view/WindowSharedElementCallback;


# instance fields
.field private blacklist mTempMatrix:Landroid/graphics/Matrix;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 32
    new-instance v0, Landroid/view/WindowSharedElementCallback$1;

    invoke-direct {v0}, Landroid/view/WindowSharedElementCallback$1;-><init>()V

    sput-object v0, Landroid/view/WindowSharedElementCallback;->NULL_CALLBACK:Landroid/view/WindowSharedElementCallback;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onCaptureSharedElementSnapshot(Landroid/view/View;Landroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/os/Parcelable;
    .registers 13
    .param p1, "sharedElement"    # Landroid/view/View;
    .param p2, "viewToGlobalMatrix"    # Landroid/graphics/Matrix;
    .param p3, "screenBounds"    # Landroid/graphics/RectF;

    .line 116
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_76

    .line 117
    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    .line 118
    .local v0, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 119
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 120
    .local v2, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_76

    if-eqz v2, :cond_19

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v3

    if-nez v3, :cond_76

    .line 121
    :cond_19
    invoke-static {v1, v0}, Landroid/transition/TransitionUtils;->createDrawableBitmap(Landroid/graphics/drawable/Drawable;Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 122
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_76

    .line 123
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 124
    .local v4, "bundle":Landroid/os/Bundle;
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-eq v5, v6, :cond_33

    .line 125
    const-string/jumbo v5, "sharedElement:snapshot:bitmap"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_4d

    .line 127
    :cond_33
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v5

    .line 128
    .local v5, "hardwareBuffer":Landroid/hardware/HardwareBuffer;
    const-string/jumbo v6, "sharedElement:snapshot:hardwareBuffer"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 129
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v6

    .line 130
    .local v6, "cs":Landroid/graphics/ColorSpace;
    if-eqz v6, :cond_4d

    .line 131
    invoke-virtual {v6}, Landroid/graphics/ColorSpace;->getId()I

    move-result v7

    const-string/jumbo v8, "sharedElement:snapshot:colorSpace"

    invoke-virtual {v4, v8, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 134
    .end local v5    # "hardwareBuffer":Landroid/hardware/HardwareBuffer;
    .end local v6    # "cs":Landroid/graphics/ColorSpace;
    :cond_4d
    :goto_4d
    nop

    .line 135
    invoke-virtual {v0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ImageView$ScaleType;->toString()Ljava/lang/String;

    move-result-object v5

    .line 134
    const-string/jumbo v6, "sharedElement:snapshot:imageScaleType"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-virtual {v0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v5

    sget-object v6, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-ne v5, v6, :cond_75

    .line 137
    invoke-virtual {v0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    .line 138
    .local v5, "matrix":Landroid/graphics/Matrix;
    const/16 v6, 0x9

    new-array v6, v6, [F

    .line 139
    .local v6, "values":[F
    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->getValues([F)V

    .line 140
    const-string/jumbo v7, "sharedElement:snapshot:imageMatrix"

    invoke-virtual {v4, v7, v6}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    .line 142
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    .end local v6    # "values":[F
    :cond_75
    return-object v4

    .line 146
    .end local v0    # "imageView":Landroid/widget/ImageView;
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    .end local v2    # "bg":Landroid/graphics/drawable/Drawable;
    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "bundle":Landroid/os/Bundle;
    :cond_76
    iget-object v0, p0, Landroid/view/WindowSharedElementCallback;->mTempMatrix:Landroid/graphics/Matrix;

    if-nez v0, :cond_82

    .line 147
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0, p2}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object v0, p0, Landroid/view/WindowSharedElementCallback;->mTempMatrix:Landroid/graphics/Matrix;

    goto :goto_85

    .line 149
    :cond_82
    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 151
    :goto_85
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 152
    .local v0, "parent":Landroid/view/ViewGroup;
    iget-object v1, p0, Landroid/view/WindowSharedElementCallback;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-static {p1, v1, p3, v0}, Landroid/transition/TransitionUtils;->createViewBitmap(Landroid/view/View;Landroid/graphics/Matrix;Landroid/graphics/RectF;Landroid/view/ViewGroup;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public blacklist onCreateSnapshotView(Landroid/content/Context;Landroid/os/Parcelable;)Landroid/view/View;
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "snapshot"    # Landroid/os/Parcelable;

    .line 173
    const/4 v0, 0x0

    .line 174
    .local v0, "view":Landroid/view/View;
    instance-of v1, p2, Landroid/os/Bundle;

    if-eqz v1, :cond_75

    .line 175
    move-object v1, p2

    check-cast v1, Landroid/os/Bundle;

    .line 176
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "sharedElement:snapshot:hardwareBuffer"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/hardware/HardwareBuffer;

    .line 177
    .local v2, "buffer":Landroid/hardware/HardwareBuffer;
    const-string/jumbo v3, "sharedElement:snapshot:bitmap"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    .line 178
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    if-nez v2, :cond_20

    if-nez v3, :cond_20

    .line 179
    const/4 v4, 0x0

    return-object v4

    .line 181
    :cond_20
    if-nez v3, :cond_42

    .line 182
    const/4 v4, 0x0

    .line 183
    .local v4, "colorSpace":Landroid/graphics/ColorSpace;
    const/4 v5, 0x0

    const-string/jumbo v6, "sharedElement:snapshot:colorSpace"

    invoke-virtual {v1, v6, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 184
    .local v5, "colorSpaceId":I
    if-ltz v5, :cond_3e

    invoke-static {}, Landroid/graphics/ColorSpace$Named;->values()[Landroid/graphics/ColorSpace$Named;

    move-result-object v6

    array-length v6, v6

    if-ge v5, v6, :cond_3e

    .line 185
    invoke-static {}, Landroid/graphics/ColorSpace$Named;->values()[Landroid/graphics/ColorSpace$Named;

    move-result-object v6

    aget-object v6, v6, v5

    invoke-static {v6}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v4

    .line 187
    :cond_3e
    invoke-static {v2, v4}, Landroid/graphics/Bitmap;->wrapHardwareBuffer(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 189
    .end local v4    # "colorSpace":Landroid/graphics/ColorSpace;
    .end local v5    # "colorSpaceId":I
    :cond_42
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 190
    .local v4, "imageView":Landroid/widget/ImageView;
    move-object v0, v4

    .line 191
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 192
    nop

    .line 193
    const-string/jumbo v5, "sharedElement:snapshot:imageScaleType"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/widget/ImageView$ScaleType;->valueOf(Ljava/lang/String;)Landroid/widget/ImageView$ScaleType;

    move-result-object v5

    .line 192
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 194
    invoke-virtual {v4}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v5

    sget-object v6, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-ne v5, v6, :cond_8f

    .line 195
    const-string/jumbo v5, "sharedElement:snapshot:imageMatrix"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v5

    .line 196
    .local v5, "values":[F
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 197
    .local v6, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v6, v5}, Landroid/graphics/Matrix;->setValues([F)V

    .line 198
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_8f

    .line 200
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "buffer":Landroid/hardware/HardwareBuffer;
    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "imageView":Landroid/widget/ImageView;
    .end local v5    # "values":[F
    .end local v6    # "matrix":Landroid/graphics/Matrix;
    :cond_75
    instance-of v1, p2, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_8f

    .line 201
    move-object v1, p2

    check-cast v1, Landroid/graphics/Bitmap;

    .line 202
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    move-object v0, v2

    .line 203
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 204
    .local v2, "resources":Landroid/content/res/Resources;
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_90

    .line 200
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "resources":Landroid/content/res/Resources;
    :cond_8f
    :goto_8f
    nop

    .line 206
    :goto_90
    return-object v0
.end method

.method public blacklist onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 93
    .local p1, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "sharedElements":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/view/View;>;"
    return-void
.end method

.method public blacklist onRejectSharedElements(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 82
    .local p1, "rejectedSharedElements":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    return-void
.end method

.method public blacklist onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 58
    .local p1, "sharedElementNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "sharedElements":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .local p3, "sharedElementSnapshots":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    return-void
.end method

.method public blacklist onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 45
    .local p1, "sharedElementNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "sharedElements":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .local p3, "sharedElementSnapshots":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    return-void
.end method

.method public blacklist onSharedElementsArrived(Ljava/util/List;Ljava/util/List;Landroid/view/WindowSharedElementCallback$OnSharedElementsReadyListener;)V
    .registers 4
    .param p3, "listener"    # Landroid/view/WindowSharedElementCallback$OnSharedElementsReadyListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/WindowSharedElementCallback$OnSharedElementsReadyListener;",
            ")V"
        }
    .end annotation

    .line 224
    .local p1, "sharedElementNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "sharedElements":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {p3}, Landroid/view/WindowSharedElementCallback$OnSharedElementsReadyListener;->onSharedElementsReady()V

    .line 225
    return-void
.end method
