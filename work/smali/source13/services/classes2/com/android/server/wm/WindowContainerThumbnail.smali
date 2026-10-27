.class Lcom/android/server/wm/WindowContainerThumbnail;
.super Ljava/lang/Object;
.source "WindowContainerThumbnail.java"

# interfaces
.implements Lcom/android/server/wm/SurfaceAnimator$Animatable;


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field private mAppRect:Landroid/graphics/Rect;

.field private mAppToken:Lcom/android/server/wm/ActivityRecord;

.field private mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

.field private final mHeight:I

.field private mSurface:Landroid/view/Surface;

.field private final mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

.field private mSurfaceControl:Landroid/view/SurfaceControl;

.field mThumbnailHelper:Lcom/android/server/wm/AppWindowAnimatorHelper;

.field private mThumbnailLeash:Landroid/view/SurfaceControl;

.field private final mWidth:I

.field private final mWindowContainer:Lcom/android/server/wm/WindowContainer;


# direct methods
.method public static synthetic $r8$lambda$cfodjp8l-6gFU64S2MK8vZcEs8g(Lcom/android/server/wm/WindowContainerThumbnail;ILcom/android/server/wm/AnimationAdapter;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowContainerThumbnail;->onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    return-void
.end method

.method constructor <init>(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;Landroid/hardware/HardwareBuffer;)V
    .registers 5
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "container"    # Lcom/android/server/wm/WindowContainer;
    .param p3, "thumbnailHeader"    # Landroid/hardware/HardwareBuffer;

    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/wm/WindowContainerThumbnail;-><init>(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;Landroid/hardware/HardwareBuffer;Lcom/android/server/wm/SurfaceAnimator;)V

    .line 89
    return-void
.end method

.method constructor <init>(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;Landroid/hardware/HardwareBuffer;Lcom/android/server/wm/SurfaceAnimator;)V
    .registers 15
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "container"    # Lcom/android/server/wm/WindowContainer;
    .param p3, "thumbnailHeader"    # Landroid/hardware/HardwareBuffer;
    .param p4, "animator"    # Lcom/android/server/wm/SurfaceAnimator;

    .line 94
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v9}, Lcom/android/server/wm/WindowContainerThumbnail;-><init>(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;Landroid/hardware/HardwareBuffer;ZLandroid/view/Surface;Lcom/android/server/wm/SurfaceAnimator;Lcom/android/server/wm/AppWindowAnimatorHelper;Lcom/android/server/wm/ActivityRecord;I)V

    .line 95
    return-void
.end method

.method constructor <init>(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;Landroid/hardware/HardwareBuffer;ZLandroid/view/Surface;Lcom/android/server/wm/SurfaceAnimator;Lcom/android/server/wm/AppWindowAnimatorHelper;Lcom/android/server/wm/ActivityRecord;I)V
    .registers 28
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "container"    # Lcom/android/server/wm/WindowContainer;
    .param p3, "thumbnailHeader"    # Landroid/hardware/HardwareBuffer;
    .param p4, "relative"    # Z
    .param p5, "drawSurface"    # Landroid/view/Surface;
    .param p6, "animator"    # Lcom/android/server/wm/SurfaceAnimator;
    .param p7, "helper"    # Lcom/android/server/wm/AppWindowAnimatorHelper;
    .param p8, "appToken"    # Lcom/android/server/wm/ActivityRecord;
    .param p9, "foreGroundColor"    # I

    .line 104
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object v2, v0, Lcom/android/server/wm/WindowContainerThumbnail;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 107
    if-eqz v3, :cond_16

    .line 108
    iput-object v3, v0, Lcom/android/server/wm/WindowContainerThumbnail;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    goto :goto_24

    .line 112
    :cond_16
    new-instance v6, Lcom/android/server/wm/SurfaceAnimator;

    new-instance v7, Lcom/android/server/wm/WindowContainerThumbnail$$ExternalSyntheticLambda0;

    invoke-direct {v7, v0}, Lcom/android/server/wm/WindowContainerThumbnail$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/WindowContainerThumbnail;)V

    iget-object v8, v2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v6, v0, v7, v8}, Lcom/android/server/wm/SurfaceAnimator;-><init>(Lcom/android/server/wm/SurfaceAnimator$Animatable;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;Lcom/android/server/wm/WindowManagerService;)V

    iput-object v6, v0, Lcom/android/server/wm/WindowContainerThumbnail;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    .line 116
    :goto_24
    invoke-virtual/range {p3 .. p3}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v6

    iput v6, v0, Lcom/android/server/wm/WindowContainerThumbnail;->mWidth:I

    .line 117
    invoke-virtual/range {p3 .. p3}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result v7

    iput v7, v0, Lcom/android/server/wm/WindowContainerThumbnail;->mHeight:I

    .line 119
    iput-object v5, v0, Lcom/android/server/wm/WindowContainerThumbnail;->mAppToken:Lcom/android/server/wm/ActivityRecord;

    .line 134
    const-string v8, "WindowContainerThumbnail"

    const/4 v9, 0x2

    const/4 v10, -0x3

    const/4 v11, 0x1

    if-eqz v5, :cond_c2

    iget-boolean v12, v5, Lcom/android/server/wm/ActivityRecord;->mIsMiuiActivityThumbnail:Z

    if-nez v12, :cond_43

    iget-object v12, v0, Lcom/android/server/wm/WindowContainerThumbnail;->mAppToken:Lcom/android/server/wm/ActivityRecord;

    iget-boolean v12, v12, Lcom/android/server/wm/ActivityRecord;->mIsMiuiActivityScaledThumbnail:Z

    if-eqz v12, :cond_c2

    :cond_43
    if-eqz v4, :cond_c2

    .line 135
    invoke-virtual/range {p7 .. p7}, Lcom/android/server/wm/AppWindowAnimatorHelper;->getAppRect()Landroid/graphics/Rect;

    move-result-object v12

    iput-object v12, v0, Lcom/android/server/wm/WindowContainerThumbnail;->mAppRect:Landroid/graphics/Rect;

    .line 136
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowContainer;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v12

    invoke-virtual {v2, v12}, Lcom/android/server/wm/WindowContainer;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "miui activity thumbnail anim: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 137
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v12

    .line 138
    invoke-virtual {v12}, Landroid/view/SurfaceControl$Builder;->setBLASTLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v12

    iget-object v13, v0, Lcom/android/server/wm/WindowContainerThumbnail;->mAppRect:Landroid/graphics/Rect;

    .line 139
    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v13

    iget-object v14, v0, Lcom/android/server/wm/WindowContainerThumbnail;->mAppRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v14

    invoke-virtual {v12, v13, v14}, Landroid/view/SurfaceControl$Builder;->setBufferSize(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v12

    .line 140
    invoke-virtual {v12, v10}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v10

    .line 141
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowContainer;->getWindowingMode()I

    move-result v12

    invoke-virtual {v10, v9, v12}, Landroid/view/SurfaceControl$Builder;->setMetadata(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v9

    .line 142
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v10

    invoke-virtual {v9, v11, v10}, Landroid/view/SurfaceControl$Builder;->setMetadata(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v9

    .line 143
    invoke-virtual {v9, v8}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v8

    .line 144
    invoke-virtual {v8}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v8

    iput-object v8, v0, Lcom/android/server/wm/WindowContainerThumbnail;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 145
    new-instance v8, Landroid/graphics/BLASTBufferQueue;

    iget-object v14, v0, Lcom/android/server/wm/WindowContainerThumbnail;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v9, v0, Lcom/android/server/wm/WindowContainerThumbnail;->mAppRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v15

    iget-object v9, v0, Lcom/android/server/wm/WindowContainerThumbnail;->mAppRect:Landroid/graphics/Rect;

    .line 146
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v16

    const/16 v17, 0x1

    const-string v13, "MIUIWindowContainerThumbnail"

    move-object v12, v8

    invoke-direct/range {v12 .. v17}, Landroid/graphics/BLASTBufferQueue;-><init>(Ljava/lang/String;Landroid/view/SurfaceControl;III)V

    iput-object v8, v0, Lcom/android/server/wm/WindowContainerThumbnail;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    .line 147
    invoke-virtual {v8}, Landroid/graphics/BLASTBufferQueue;->createSurface()Landroid/view/Surface;

    move-result-object v8

    iput-object v8, v0, Lcom/android/server/wm/WindowContainerThumbnail;->mSurface:Landroid/view/Surface;

    goto :goto_10c

    .line 150
    :cond_c2
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowContainer;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v12

    invoke-virtual {v2, v12}, Lcom/android/server/wm/WindowContainer;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "thumbnail anim: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 151
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v12

    .line 152
    invoke-virtual {v12}, Landroid/view/SurfaceControl$Builder;->setBLASTLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v12

    .line 153
    invoke-virtual {v12, v6, v7}, Landroid/view/SurfaceControl$Builder;->setBufferSize(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v12

    .line 154
    invoke-virtual {v12, v10}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v10

    .line 155
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowContainer;->getWindowingMode()I

    move-result v12

    invoke-virtual {v10, v9, v12}, Landroid/view/SurfaceControl$Builder;->setMetadata(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v9

    .line 156
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v10

    invoke-virtual {v9, v11, v10}, Landroid/view/SurfaceControl$Builder;->setMetadata(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v9

    .line 157
    invoke-virtual {v9, v8}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v8

    .line 158
    invoke-virtual {v8}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v8

    iput-object v8, v0, Lcom/android/server/wm/WindowContainerThumbnail;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 162
    :goto_10c
    sget-boolean v8, Lcom/android/server/wm/ProtoLogCache;->WM_SHOW_TRANSACTIONS_enabled:Z

    const/4 v9, 0x0

    const/4 v10, 0x0

    if-eqz v8, :cond_124

    iget-object v8, v0, Lcom/android/server/wm/WindowContainerThumbnail;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .local v8, "protoLogParam0":Ljava/lang/String;
    sget-object v12, Lcom/android/internal/protolog/ProtoLogGroup;->WM_SHOW_TRANSACTIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v13, 0x1faa1efa

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v8, v11, v10

    invoke-static {v12, v13, v10, v9, v11}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 164
    .end local v8    # "protoLogParam0":Ljava/lang/String;
    :cond_124
    invoke-static/range {p3 .. p3}, Landroid/graphics/GraphicBuffer;->createFromHardwareBuffer(Landroid/hardware/HardwareBuffer;)Landroid/graphics/GraphicBuffer;

    move-result-object v8

    .line 166
    .local v8, "graphicBuffer":Landroid/graphics/GraphicBuffer;
    iget-object v11, v0, Lcom/android/server/wm/WindowContainerThumbnail;->mAppToken:Lcom/android/server/wm/ActivityRecord;

    if-eqz v11, :cond_1c1

    iget-boolean v11, v11, Lcom/android/server/wm/ActivityRecord;->mIsMiuiActivityThumbnail:Z

    if-nez v11, :cond_13d

    iget-object v11, v0, Lcom/android/server/wm/WindowContainerThumbnail;->mAppToken:Lcom/android/server/wm/ActivityRecord;

    iget-boolean v11, v11, Lcom/android/server/wm/ActivityRecord;->mIsMiuiActivityScaledThumbnail:Z

    if-eqz v11, :cond_137

    goto :goto_13d

    :cond_137
    move-object/from16 v14, p3

    move/from16 v13, p9

    goto/16 :goto_1c5

    .line 167
    :cond_13d
    :goto_13d
    invoke-static/range {p9 .. p9}, Landroid/graphics/Color;->alpha(I)I

    move-result v11

    .line 168
    .local v11, "alpha":I
    if-nez v11, :cond_14e

    .line 169
    iget-object v9, v0, Lcom/android/server/wm/WindowContainerThumbnail;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v9, v8}, Landroid/view/SurfaceControl$Transaction;->setBuffer(Landroid/view/SurfaceControl;Landroid/graphics/GraphicBuffer;)Landroid/view/SurfaceControl$Transaction;

    move-object/from16 v14, p3

    move/from16 v13, p9

    goto/16 :goto_1c0

    .line 171
    :cond_14e
    iget-object v12, v0, Lcom/android/server/wm/WindowContainerThumbnail;->mSurface:Landroid/view/Surface;

    invoke-virtual {v12}, Landroid/view/Surface;->lockHardwareCanvas()Landroid/graphics/Canvas;

    move-result-object v12

    .line 172
    .local v12, "canvas":Landroid/graphics/Canvas;
    move/from16 v13, p9

    invoke-virtual {v12, v13}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 173
    move-object/from16 v14, p3

    invoke-static {v14, v9}, Landroid/graphics/Bitmap;->wrapHardwareBuffer(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 174
    .local v15, "bitmap":Landroid/graphics/Bitmap;
    new-instance v16, Landroid/graphics/Paint;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v17, v16

    .line 176
    .local v17, "paint":Landroid/graphics/Paint;
    iget-object v10, v0, Lcom/android/server/wm/WindowContainerThumbnail;->mAppToken:Lcom/android/server/wm/ActivityRecord;

    iget-boolean v10, v10, Lcom/android/server/wm/ActivityRecord;->mIsMiuiActivityScaledThumbnail:Z

    if-eqz v10, :cond_1ad

    .line 177
    iget-object v10, v0, Lcom/android/server/wm/WindowContainerThumbnail;->mAppRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    div-int v10, v6, v10

    iget-object v9, v0, Lcom/android/server/wm/WindowContainerThumbnail;->mAppRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    div-int v9, v7, v9

    if-lt v10, v9, :cond_196

    .line 178
    new-instance v9, Landroid/graphics/RectF;

    iget-object v10, v0, Lcom/android/server/wm/WindowContainerThumbnail;->mAppRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    iget-object v2, v0, Lcom/android/server/wm/WindowContainerThumbnail;->mAppRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    mul-int/2addr v2, v7

    div-int/2addr v2, v6

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v9, v3, v3, v10, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object v2, v9

    .local v2, "rectF":Landroid/graphics/RectF;
    goto :goto_1b5

    .line 180
    .end local v2    # "rectF":Landroid/graphics/RectF;
    :cond_196
    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, v0, Lcom/android/server/wm/WindowContainerThumbnail;->mAppRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    mul-int/2addr v3, v6

    div-int/2addr v3, v7

    int-to-float v3, v3

    iget-object v9, v0, Lcom/android/server/wm/WindowContainerThumbnail;->mAppRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    const/4 v10, 0x0

    invoke-direct {v2, v10, v10, v3, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .restart local v2    # "rectF":Landroid/graphics/RectF;
    goto :goto_1b5

    .line 183
    .end local v2    # "rectF":Landroid/graphics/RectF;
    :cond_1ad
    const/4 v10, 0x0

    new-instance v2, Landroid/graphics/RectF;

    int-to-float v3, v6

    int-to-float v9, v7

    invoke-direct {v2, v10, v10, v3, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 185
    .restart local v2    # "rectF":Landroid/graphics/RectF;
    :goto_1b5
    move-object/from16 v3, v17

    const/4 v9, 0x0

    .end local v17    # "paint":Landroid/graphics/Paint;
    .local v3, "paint":Landroid/graphics/Paint;
    invoke-virtual {v12, v15, v9, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 186
    iget-object v9, v0, Lcom/android/server/wm/WindowContainerThumbnail;->mSurface:Landroid/view/Surface;

    invoke-virtual {v9, v12}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 189
    .end local v2    # "rectF":Landroid/graphics/RectF;
    .end local v3    # "paint":Landroid/graphics/Paint;
    .end local v11    # "alpha":I
    .end local v12    # "canvas":Landroid/graphics/Canvas;
    .end local v15    # "bitmap":Landroid/graphics/Bitmap;
    :goto_1c0
    goto :goto_1ca

    .line 166
    :cond_1c1
    move-object/from16 v14, p3

    move/from16 v13, p9

    .line 190
    :goto_1c5
    iget-object v2, v0, Lcom/android/server/wm/WindowContainerThumbnail;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2, v8}, Landroid/view/SurfaceControl$Transaction;->setBuffer(Landroid/view/SurfaceControl;Landroid/graphics/GraphicBuffer;)Landroid/view/SurfaceControl$Transaction;

    .line 193
    :goto_1ca
    iget-object v2, v0, Lcom/android/server/wm/WindowContainerThumbnail;->mSurfaceControl:Landroid/view/SurfaceControl;

    sget-object v3, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v3}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setColorSpace(Landroid/view/SurfaceControl;Landroid/graphics/ColorSpace;)Landroid/view/SurfaceControl$Transaction;

    .line 194
    iget-object v2, v0, Lcom/android/server/wm/WindowContainerThumbnail;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 198
    iget-object v2, v0, Lcom/android/server/wm/WindowContainerThumbnail;->mSurfaceControl:Landroid/view/SurfaceControl;

    const v3, 0x7fffffff

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 200
    iget-object v2, v0, Lcom/android/server/wm/WindowContainerThumbnail;->mAppToken:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_20c

    iget-boolean v2, v2, Lcom/android/server/wm/ActivityRecord;->mIsMiuiThumbnail:Z

    if-nez v2, :cond_1f6

    iget-object v2, v0, Lcom/android/server/wm/WindowContainerThumbnail;->mAppToken:Lcom/android/server/wm/ActivityRecord;

    iget-boolean v2, v2, Lcom/android/server/wm/ActivityRecord;->mIsMiuiActivityThumbnail:Z

    if-nez v2, :cond_1f6

    iget-object v2, v0, Lcom/android/server/wm/WindowContainerThumbnail;->mAppToken:Lcom/android/server/wm/ActivityRecord;

    iget-boolean v2, v2, Lcom/android/server/wm/ActivityRecord;->mIsMiuiActivityScaledThumbnail:Z

    if-eqz v2, :cond_20c

    :cond_1f6
    if-eqz v4, :cond_20c

    .line 202
    iput-object v4, v0, Lcom/android/server/wm/WindowContainerThumbnail;->mThumbnailHelper:Lcom/android/server/wm/AppWindowAnimatorHelper;

    .line 203
    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v2}, Lcom/android/server/wm/AppWindowAnimatorHelper;->setMiuiThumbnailRect(Landroid/graphics/Rect;)V

    .line 204
    iget-object v2, v0, Lcom/android/server/wm/WindowContainerThumbnail;->mThumbnailHelper:Lcom/android/server/wm/AppWindowAnimatorHelper;

    iget-object v3, v0, Lcom/android/server/wm/WindowContainerThumbnail;->mAppToken:Lcom/android/server/wm/ActivityRecord;

    iget-boolean v3, v3, Lcom/android/server/wm/ActivityRecord;->mIsMiuiActivityScaledThumbnail:Z

    invoke-virtual {v2, v3}, Lcom/android/server/wm/AppWindowAnimatorHelper;->setIsMiuiActivityScaledThumbnail(Z)V

    .line 207
    :cond_20c
    return-void
.end method

.method private onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "anim"    # Lcom/android/server/wm/AnimationAdapter;

    .line 256
    return-void
.end method


# virtual methods
.method public commitPendingTransaction()V
    .registers 2

    .line 312
    iget-object v0, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->commitPendingTransaction()V

    .line 313
    return-void
.end method

.method destroy()V
    .registers 4

    .line 268
    iget-object v0, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->cancelAnimation()V

    .line 269
    iget-object v0, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 270
    invoke-virtual {v0}, Landroid/graphics/BLASTBufferQueue;->destroy()V

    .line 271
    iput-object v1, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    .line 273
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_18

    .line 274
    invoke-virtual {v0}, Landroid/view/Surface;->destroy()V

    .line 275
    iput-object v1, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mSurface:Landroid/view/Surface;

    .line 277
    :cond_18
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainerThumbnail;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 278
    iput-object v1, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 279
    return-void
.end method

.method dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 291
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 292
    .local v0, "token":J
    iget v2, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mWidth:I

    const-wide v3, 0x10500000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 293
    iget v2, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mHeight:I

    const-wide v3, 0x10500000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 294
    iget-object v2, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v2}, Lcom/android/server/wm/SurfaceAnimator;->isAnimating()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 295
    iget-object v2, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    const-wide v3, 0x10b00000003L

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/wm/SurfaceAnimator;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 297
    :cond_2a
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 298
    return-void
.end method

.method public getAnimationLeashParent()Landroid/view/SurfaceControl;
    .registers 2

    .line 340
    iget-object v0, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getAnimationLeashParent()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method public getParentSurfaceControl()Landroid/view/SurfaceControl;
    .registers 2

    .line 345
    iget-object v0, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParentSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method public getPendingTransaction()Landroid/view/SurfaceControl$Transaction;
    .registers 2

    .line 307
    iget-object v0, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    return-object v0
.end method

.method public getSurfaceControl()Landroid/view/SurfaceControl;
    .registers 2

    .line 335
    iget-object v0, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method public getSurfaceHeight()I
    .registers 2

    .line 355
    iget v0, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mHeight:I

    return v0
.end method

.method public getSurfaceWidth()I
    .registers 2

    .line 350
    iget v0, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mWidth:I

    return v0
.end method

.method public getSyncTransaction()Landroid/view/SurfaceControl$Transaction;
    .registers 2

    .line 302
    iget-object v0, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    return-object v0
.end method

.method public makeAnimationLeash()Landroid/view/SurfaceControl$Builder;
    .registers 3

    .line 330
    iget-object v0, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowContainer;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method public onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .registers 4
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "leash"    # Landroid/view/SurfaceControl;

    .line 317
    const v0, 0x7fffffff

    invoke-virtual {p1, p2, v0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 318
    return-void
.end method

.method public onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 325
    iget-object v0, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 326
    return-void
.end method

.method setShowing(Landroid/view/SurfaceControl$Transaction;Z)V
    .registers 4
    .param p1, "pendingTransaction"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "show"    # Z

    .line 260
    if-eqz p2, :cond_8

    .line 261
    iget-object v0, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_d

    .line 263
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 265
    :goto_d
    return-void
.end method

.method startAnimation(Landroid/view/SurfaceControl$Transaction;Landroid/view/animation/Animation;)V
    .registers 4
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "anim"    # Landroid/view/animation/Animation;

    .line 210
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/WindowContainerThumbnail;->startAnimation(Landroid/view/SurfaceControl$Transaction;Landroid/view/animation/Animation;Landroid/graphics/Point;)V

    .line 211
    return-void
.end method

.method startAnimation(Landroid/view/SurfaceControl$Transaction;Landroid/view/animation/Animation;Landroid/graphics/Point;)V
    .registers 15
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "anim"    # Landroid/view/animation/Animation;
    .param p3, "position"    # Landroid/graphics/Point;

    .line 215
    iget-object v0, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mAppToken:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_6d

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityRecord;->mIsMiuiActivityThumbnail:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mAppToken:Lcom/android/server/wm/ActivityRecord;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityRecord;->mIsMiuiActivityScaledThumbnail:Z

    if-eqz v0, :cond_6d

    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mAppRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_6d

    .line 219
    iget-object v0, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_17

    .line 220
    return-void

    .line 222
    :cond_17
    nop

    .line 223
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainerThumbnail;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    const/16 v4, 0x8

    iget-object v0, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mAppRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget-object v0, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mAppRect:Landroid/graphics/Rect;

    .line 224
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    .line 222
    move-object v1, p0

    move-object v3, p1

    invoke-static/range {v1 .. v10}, Lcom/android/server/wm/SurfaceAnimator;->createAnimationLeash(Lcom/android/server/wm/SurfaceAnimator$Animatable;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;IIIIIZLjava/util/function/Supplier;)Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mThumbnailLeash:Landroid/view/SurfaceControl;

    .line 227
    if-eqz v0, :cond_57

    iget-object v0, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mAppToken:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getAnimationLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    if-eqz v0, :cond_57

    .line 228
    iget-object v0, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mThumbnailLeash:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mAppToken:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getAnimationLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 229
    iget-object v0, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mThumbnailLeash:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 231
    :cond_57
    iget-object v0, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mThumbnailHelper:Lcom/android/server/wm/AppWindowAnimatorHelper;

    iget-object v1, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mThumbnailLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppWindowAnimatorHelper;->setLeash(Landroid/view/SurfaceControl;)V

    .line 232
    iget-object v0, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mAppToken:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mWindowAnimationSpec:Lcom/android/server/wm/WindowAnimationSpec;

    if-eqz v0, :cond_6c

    .line 233
    iget-object v0, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mAppToken:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mWindowAnimationSpec:Lcom/android/server/wm/WindowAnimationSpec;

    iget-object v1, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mThumbnailHelper:Lcom/android/server/wm/AppWindowAnimatorHelper;

    iput-object v1, v0, Lcom/android/server/wm/WindowAnimationSpec;->mActivityThumbnailHelper:Lcom/android/server/wm/AppWindowAnimatorHelper;

    .line 235
    :cond_6c
    return-void

    .line 238
    :cond_6d
    const-wide/16 v0, 0x2710

    invoke-virtual {p2, v0, v1}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 239
    iget-object v0, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 240
    iget-object v0, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    new-instance v1, Lcom/android/server/wm/LocalAnimationAdapter;

    new-instance v2, Lcom/android/server/wm/WindowAnimationSpec;

    iget-object v3, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 242
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v3}, Lcom/android/server/wm/AppTransition;->canSkipFirstFrame()Z

    move-result v3

    iget-object v4, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 243
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getWindowCornerRadius()F

    move-result v4

    invoke-direct {v2, p2, p3, v3, v4}, Lcom/android/server/wm/WindowAnimationSpec;-><init>(Landroid/view/animation/Animation;Landroid/graphics/Point;ZF)V

    iget-object v3, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    iget-object v3, v3, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-direct {v1, v2, v3}, Lcom/android/server/wm/LocalAnimationAdapter;-><init>(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimationRunner;)V

    const/4 v2, 0x0

    const/16 v3, 0x8

    .line 240
    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/android/server/wm/SurfaceAnimator;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZI)V

    .line 246
    return-void
.end method

.method startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;Z)V
    .registers 6
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "anim"    # Lcom/android/server/wm/AnimationAdapter;
    .param p3, "hidden"    # Z

    .line 252
    iget-object v0, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    const/16 v1, 0x8

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/server/wm/SurfaceAnimator;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZI)V

    .line 253
    return-void
.end method
