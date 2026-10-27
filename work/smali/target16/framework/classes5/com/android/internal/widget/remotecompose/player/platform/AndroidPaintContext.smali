.class public Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;
.super Lcom/android/internal/widget/remotecompose/core/PaintContext;
.source "AndroidPaintContext.java"


# static fields
.field private static final blacklist SYSTEM_FONTS_PATH:Ljava/lang/String; = "/system/fonts/"


# instance fields
.field blacklist mCCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/graphics/Bitmap;",
            "Landroid/graphics/Canvas;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCachedFontMetrics:Landroid/graphics/Paint$FontMetrics;

.field blacklist mCachedPaintChanges:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;

.field blacklist mCanvas:Landroid/graphics/Canvas;

.field blacklist mMainCanvas:Landroid/graphics/Canvas;

.field blacklist mNode:Landroid/graphics/RenderNode;

.field blacklist mPaint:Landroid/graphics/Paint;

.field blacklist mPaintList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Paint;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mPreviousCanvas:Landroid/graphics/Canvas;

.field blacklist mTmpRect:Landroid/graphics/Rect;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mgetShaderData(Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;I)Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->getShaderData(I)Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smremoteToAndroidBlendMode(I)Landroid/graphics/BlendMode;
    .registers 1

    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->remoteToAndroidBlendMode(I)Landroid/graphics/BlendMode;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smremoteToAndroidPorterDuffMode(I)Landroid/graphics/PorterDuff$Mode;
    .registers 1

    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->remoteToAndroidPorterDuffMode(I)Landroid/graphics/PorterDuff$Mode;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Landroid/graphics/Canvas;)V
    .registers 4

    .line 89
    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;-><init>(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 80
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    .line 81
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaintList:Ljava/util/List;

    .line 83
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mMainCanvas:Landroid/graphics/Canvas;

    .line 84
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mTmpRect:Landroid/graphics/Rect;

    .line 85
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    .line 86
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPreviousCanvas:Landroid/graphics/Canvas;

    .line 630
    new-instance p1, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;

    invoke-direct {p1, p0}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;-><init>(Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;)V

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCachedPaintChanges:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;

    .line 1194
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCCache:Ljava/util/HashMap;

    .line 90
    iput-object p2, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    .line 91
    return-void
.end method

.method static synthetic blacklist access$000(Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;)Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .registers 1

    .line 78
    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    return-object p0
.end method

.method static synthetic blacklist access$100(Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;)Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .registers 1

    .line 78
    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    return-object p0
.end method

.method static synthetic blacklist access$200(Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;)Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .registers 1

    .line 78
    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    return-object p0
.end method

.method static synthetic blacklist access$300(Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;)Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .registers 1

    .line 78
    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    return-object p0
.end method

.method static synthetic blacklist access$400(Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;)Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .registers 1

    .line 78
    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    return-object p0
.end method

.method private blacklist getPath(IFF)Landroid/graphics/Path;
    .registers 8

    .line 1148
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    check-cast v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    .line 1149
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getPath(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Path;

    .line 1150
    iget-object v2, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getPathWinding(I)I

    move-result v2

    .line 1151
    if-eqz v1, :cond_15

    .line 1152
    return-object v1

    .line 1154
    :cond_15
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 1155
    iget-object v3, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v3, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getPathData(I)[F

    move-result-object v3

    .line 1156
    if-eqz v3, :cond_40

    .line 1157
    invoke-static {v1, v3, p2, p3}, Lcom/android/internal/widget/remotecompose/player/platform/FloatsToPath;->genPath(Landroid/graphics/Path;[FFF)V

    .line 1158
    packed-switch v2, :pswitch_data_42

    goto :goto_3b

    .line 1166
    :pswitch_29
    sget-object p2, Landroid/graphics/Path$FillType;->INVERSE_WINDING:Landroid/graphics/Path$FillType;

    invoke-virtual {v1, p2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    goto :goto_3b

    .line 1163
    :pswitch_2f
    sget-object p2, Landroid/graphics/Path$FillType;->INVERSE_EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v1, p2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 1164
    goto :goto_3b

    .line 1160
    :pswitch_35
    sget-object p2, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v1, p2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 1161
    nop

    .line 1169
    :goto_3b
    iget-object p2, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {p2, p1, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->putPath(ILjava/lang/Object;)V

    .line 1172
    :cond_40
    return-object v1

    nop

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_35
        :pswitch_2f
        :pswitch_29
    .end packed-switch
.end method

.method private blacklist getPath(IIFFF)Landroid/graphics/Path;
    .registers 6

    .line 1116
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->getPathArray(IIF)[F

    move-result-object p1

    invoke-direct {p0, p1, p4, p5}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->getPath([FFF)Landroid/graphics/Path;

    move-result-object p1

    return-object p1
.end method

.method private blacklist getPath([FFF)Landroid/graphics/Path;
    .registers 5

    .line 1142
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 1143
    invoke-static {v0, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/player/platform/FloatsToPath;->genPath(Landroid/graphics/Path;[FFF)V

    .line 1144
    return-object v0
.end method

.method private blacklist getPathArray(IIF)[F
    .registers 9

    .line 1120
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    check-cast v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    .line 1121
    const/4 v1, 0x0

    cmpl-float v1, p3, v1

    if-nez v1, :cond_10

    .line 1122
    iget-object p2, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {p2, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getPathData(I)[F

    move-result-object p1

    return-object p1

    .line 1124
    :cond_10
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p3, v1

    if-nez v1, :cond_1d

    .line 1125
    iget-object p1, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {p1, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getPathData(I)[F

    move-result-object p1

    return-object p1

    .line 1128
    :cond_1d
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getPathData(I)[F

    move-result-object p1

    .line 1129
    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getPathData(I)[F

    move-result-object p2

    .line 1130
    array-length v0, p2

    new-array v1, v0, [F

    .line 1131
    const/4 v2, 0x0

    :goto_2d
    if-ge v2, v0, :cond_53

    .line 1132
    aget v3, p1, v2

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_4c

    aget v3, p2, v2

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_40

    goto :goto_4c

    .line 1135
    :cond_40
    aget v3, p2, v2

    aget v4, p1, v2

    sub-float/2addr v3, v4

    mul-float/2addr v3, p3

    aget v4, p1, v2

    add-float/2addr v3, v4

    aput v3, v1, v2

    goto :goto_50

    .line 1133
    :cond_4c
    :goto_4c
    aget v3, p1, v2

    aput v3, v1, v2

    .line 1131
    :goto_50
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    .line 1138
    :cond_53
    return-object v1
.end method

.method private blacklist getShaderData(I)Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;
    .registers 3

    .line 1181
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getFromId(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;

    return-object p1
.end method

.method private static blacklist remoteToAndroidBlendMode(I)Landroid/graphics/BlendMode;
    .registers 2

    .line 565
    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_5e

    .line 627
    return-object v0

    .line 625
    :pswitch_5
    return-object v0

    .line 623
    :pswitch_6
    sget-object p0, Landroid/graphics/BlendMode;->LUMINOSITY:Landroid/graphics/BlendMode;

    return-object p0

    .line 621
    :pswitch_9
    sget-object p0, Landroid/graphics/BlendMode;->COLOR:Landroid/graphics/BlendMode;

    return-object p0

    .line 619
    :pswitch_c
    sget-object p0, Landroid/graphics/BlendMode;->SATURATION:Landroid/graphics/BlendMode;

    return-object p0

    .line 617
    :pswitch_f
    sget-object p0, Landroid/graphics/BlendMode;->HUE:Landroid/graphics/BlendMode;

    return-object p0

    .line 615
    :pswitch_12
    sget-object p0, Landroid/graphics/BlendMode;->MULTIPLY:Landroid/graphics/BlendMode;

    return-object p0

    .line 613
    :pswitch_15
    sget-object p0, Landroid/graphics/BlendMode;->EXCLUSION:Landroid/graphics/BlendMode;

    return-object p0

    .line 611
    :pswitch_18
    sget-object p0, Landroid/graphics/BlendMode;->DIFFERENCE:Landroid/graphics/BlendMode;

    return-object p0

    .line 609
    :pswitch_1b
    sget-object p0, Landroid/graphics/BlendMode;->SOFT_LIGHT:Landroid/graphics/BlendMode;

    return-object p0

    .line 607
    :pswitch_1e
    sget-object p0, Landroid/graphics/BlendMode;->HARD_LIGHT:Landroid/graphics/BlendMode;

    return-object p0

    .line 605
    :pswitch_21
    sget-object p0, Landroid/graphics/BlendMode;->COLOR_BURN:Landroid/graphics/BlendMode;

    return-object p0

    .line 603
    :pswitch_24
    sget-object p0, Landroid/graphics/BlendMode;->COLOR_DODGE:Landroid/graphics/BlendMode;

    return-object p0

    .line 601
    :pswitch_27
    sget-object p0, Landroid/graphics/BlendMode;->LIGHTEN:Landroid/graphics/BlendMode;

    return-object p0

    .line 599
    :pswitch_2a
    sget-object p0, Landroid/graphics/BlendMode;->DARKEN:Landroid/graphics/BlendMode;

    return-object p0

    .line 597
    :pswitch_2d
    sget-object p0, Landroid/graphics/BlendMode;->OVERLAY:Landroid/graphics/BlendMode;

    return-object p0

    .line 595
    :pswitch_30
    sget-object p0, Landroid/graphics/BlendMode;->SCREEN:Landroid/graphics/BlendMode;

    return-object p0

    .line 593
    :pswitch_33
    sget-object p0, Landroid/graphics/BlendMode;->MODULATE:Landroid/graphics/BlendMode;

    return-object p0

    .line 591
    :pswitch_36
    sget-object p0, Landroid/graphics/BlendMode;->PLUS:Landroid/graphics/BlendMode;

    return-object p0

    .line 589
    :pswitch_39
    sget-object p0, Landroid/graphics/BlendMode;->XOR:Landroid/graphics/BlendMode;

    return-object p0

    .line 587
    :pswitch_3c
    sget-object p0, Landroid/graphics/BlendMode;->DST_ATOP:Landroid/graphics/BlendMode;

    return-object p0

    .line 585
    :pswitch_3f
    sget-object p0, Landroid/graphics/BlendMode;->SRC_ATOP:Landroid/graphics/BlendMode;

    return-object p0

    .line 583
    :pswitch_42
    sget-object p0, Landroid/graphics/BlendMode;->DST_OUT:Landroid/graphics/BlendMode;

    return-object p0

    .line 581
    :pswitch_45
    sget-object p0, Landroid/graphics/BlendMode;->SRC_OUT:Landroid/graphics/BlendMode;

    return-object p0

    .line 579
    :pswitch_48
    sget-object p0, Landroid/graphics/BlendMode;->DST_IN:Landroid/graphics/BlendMode;

    return-object p0

    .line 577
    :pswitch_4b
    sget-object p0, Landroid/graphics/BlendMode;->SRC_IN:Landroid/graphics/BlendMode;

    return-object p0

    .line 575
    :pswitch_4e
    sget-object p0, Landroid/graphics/BlendMode;->DST_OVER:Landroid/graphics/BlendMode;

    return-object p0

    .line 573
    :pswitch_51
    sget-object p0, Landroid/graphics/BlendMode;->SRC_OVER:Landroid/graphics/BlendMode;

    return-object p0

    .line 571
    :pswitch_54
    sget-object p0, Landroid/graphics/BlendMode;->DST:Landroid/graphics/BlendMode;

    return-object p0

    .line 569
    :pswitch_57
    sget-object p0, Landroid/graphics/BlendMode;->SRC:Landroid/graphics/BlendMode;

    return-object p0

    .line 567
    :pswitch_5a
    sget-object p0, Landroid/graphics/BlendMode;->CLEAR:Landroid/graphics/BlendMode;

    return-object p0

    nop

    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_5a
        :pswitch_57
        :pswitch_54
        :pswitch_51
        :pswitch_4e
        :pswitch_4b
        :pswitch_48
        :pswitch_45
        :pswitch_42
        :pswitch_3f
        :pswitch_3c
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method private static blacklist remoteToAndroidPorterDuffMode(I)Landroid/graphics/PorterDuff$Mode;
    .registers 1

    .line 523
    packed-switch p0, :pswitch_data_3c

    .line 561
    :pswitch_3
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    .line 559
    :pswitch_6
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    .line 557
    :pswitch_9
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    .line 555
    :pswitch_c
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->LIGHTEN:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    .line 553
    :pswitch_f
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    .line 551
    :pswitch_12
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->OVERLAY:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    .line 549
    :pswitch_15
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    .line 547
    :pswitch_18
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->XOR:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    .line 545
    :pswitch_1b
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->DST_ATOP:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    .line 543
    :pswitch_1e
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    .line 541
    :pswitch_21
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    .line 539
    :pswitch_24
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_OUT:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    .line 537
    :pswitch_27
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    .line 535
    :pswitch_2a
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    .line 533
    :pswitch_2d
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    .line 531
    :pswitch_30
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    .line 529
    :pswitch_33
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->DST:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    .line 527
    :pswitch_36
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    .line 525
    :pswitch_39
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_3
        :pswitch_3
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_9
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public blacklist applyPaint(Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;)V
    .registers 3

    .line 1000
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCachedPaintChanges:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;

    invoke-virtual {p1, p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->applyPaintChange(Lcom/android/internal/widget/remotecompose/core/PaintContext;Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;)V

    .line 1001
    return-void
.end method

.method public blacklist clipPath(II)V
    .registers 5

    .line 1073
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->getPath(IFF)Landroid/graphics/Path;

    move-result-object p1

    .line 1074
    const/4 v0, 0x1

    if-ne p2, v0, :cond_10

    .line 1075
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p2, p1}, Landroid/graphics/Canvas;->clipOutPath(Landroid/graphics/Path;)Z

    goto :goto_15

    .line 1077
    :cond_10
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p2, p1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 1079
    :goto_15
    return-void
.end method

.method public blacklist clipRect(FFFF)V
    .registers 6

    .line 1043
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 1044
    return-void
.end method

.method public blacklist combinePath(IIIB)V
    .registers 8

    .line 1090
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, p2, v0, v1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->getPath(IFF)Landroid/graphics/Path;

    move-result-object p2

    .line 1091
    invoke-direct {p0, p3, v0, v1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->getPath(IFF)Landroid/graphics/Path;

    move-result-object p3

    .line 1092
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/graphics/Path$Op;

    const/4 v1, 0x0

    sget-object v2, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Landroid/graphics/Path$Op;->REVERSE_DIFFERENCE:Landroid/graphics/Path$Op;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Landroid/graphics/Path$Op;->UNION:Landroid/graphics/Path$Op;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Landroid/graphics/Path$Op;->XOR:Landroid/graphics/Path$Op;

    aput-object v2, v0, v1

    .line 1099
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1, p2}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    .line 1100
    aget-object p2, v0, p4

    invoke-virtual {v1, p3, p2}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 1102
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    check-cast p2, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    .line 1103
    iget-object p2, p2, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {p2, p1, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->putPath(ILjava/lang/Object;)V

    .line 1104
    return-void
.end method

.method public blacklist drawArc(FFFFFF)V
    .registers 16

    .line 313
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v8}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 314
    return-void
.end method

.method public blacklist drawBitmap(IFFFF)V
    .registers 10

    .line 324
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    check-cast v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    .line 325
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->containsId(I)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 326
    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getFromId(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    .line 327
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 328
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, p2, p3, p4, p5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 329
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    iget-object p3, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1, v0, v1, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 331
    :cond_2e
    return-void
.end method

.method public blacklist drawBitmap(IIIIIIIIII)V
    .registers 12

    .line 142
    iget-object p10, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    check-cast p10, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    .line 143
    iget-object v0, p10, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->containsId(I)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 144
    iget-object p10, p10, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {p10, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getFromId(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    .line 145
    iget-object p10, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2, p3, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2, p6, p7, p8, p9}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object p3, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p10, p1, v0, p2, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 151
    :cond_25
    return-void
.end method

.method public blacklist drawCircle(FFF)V
    .registers 6

    .line 335
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 336
    return-void
.end method

.method public blacklist drawComplexText(Lcom/android/internal/widget/remotecompose/core/Platform$ComputedTextLayout;)V
    .registers 3

    .line 510
    if-nez p1, :cond_3

    .line 511
    return-void

    .line 513
    :cond_3
    check-cast p1, Lcom/android/internal/widget/remotecompose/player/platform/AndroidComputedTextLayout;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidComputedTextLayout;->get()Landroid/text/StaticLayout;

    move-result-object p1

    .line 514
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p1, v0}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 515
    return-void
.end method

.method public blacklist drawLine(FFFF)V
    .registers 11

    .line 340
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 341
    return-void
.end method

.method public blacklist drawOval(FFFF)V
    .registers 11

    .line 345
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    .line 346
    return-void
.end method

.method public blacklist drawPath(IFF)V
    .registers 5

    .line 350
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->getPath(IFF)Landroid/graphics/Path;

    move-result-object p1

    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 351
    return-void
.end method

.method public blacklist drawRect(FFFF)V
    .registers 11

    .line 355
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 356
    return-void
.end method

.method public blacklist drawRoundRect(FFFFFF)V
    .registers 15

    .line 377
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    iget-object v7, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 378
    return-void
.end method

.method public blacklist drawSector(FFFFFF)V
    .registers 16

    .line 319
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v8}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 320
    return-void
.end method

.method public blacklist drawTextOnPath(IIFF)V
    .registers 11

    .line 382
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->getText(I)Ljava/lang/String;

    move-result-object v1

    const/4 p1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, p2, p1, v2}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->getPath(IFF)Landroid/graphics/Path;

    move-result-object v2

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    .line 383
    return-void
.end method

.method public blacklist drawTextRun(IIIIIFFZ)V
    .registers 9

    .line 491
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->getText(I)Ljava/lang/String;

    move-result-object p1

    .line 492
    if-nez p1, :cond_7

    .line 493
    return-void

    .line 495
    :cond_7
    const/4 p4, -0x1

    if-ne p3, p4, :cond_11

    .line 496
    if-eqz p2, :cond_20

    .line 497
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_20

    .line 499
    :cond_11
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p4

    if-le p3, p4, :cond_1c

    .line 500
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_20

    .line 502
    :cond_1c
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 505
    :cond_20
    :goto_20
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    iget-object p3, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1, p6, p7, p3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 506
    return-void
.end method

.method public blacklist drawToBitmap(III)V
    .registers 5

    .line 1198
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mMainCanvas:Landroid/graphics/Canvas;

    if-nez v0, :cond_8

    .line 1199
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mMainCanvas:Landroid/graphics/Canvas;

    .line 1201
    :cond_8
    if-nez p1, :cond_f

    .line 1202
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mMainCanvas:Landroid/graphics/Canvas;

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    .line 1203
    return-void

    .line 1205
    :cond_f
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getFromId(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    .line 1206
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1207
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 1208
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Canvas;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Canvas;

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    .line 1210
    and-int/lit8 p2, p2, 0x1

    if-nez p2, :cond_3b

    .line 1211
    invoke-virtual {p1, p3}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 1213
    :cond_3b
    return-void

    .line 1215
    :cond_3c
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    .line 1216
    and-int/lit8 p2, p2, 0x1

    if-nez p2, :cond_4a

    .line 1217
    invoke-virtual {p1, p3}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 1219
    :cond_4a
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCCache:Ljava/util/HashMap;

    iget-object p3, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p2, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1220
    return-void
.end method

.method public blacklist drawTweenPath(IIFFF)V
    .registers 7

    .line 519
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    invoke-direct/range {p0 .. p5}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->getPath(IIFFF)Landroid/graphics/Path;

    move-result-object p1

    move-object p2, p0

    iget-object p2, p2, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 520
    return-void
.end method

.method public blacklist endGraphicsLayer()V
    .registers 3

    .line 294
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    invoke-virtual {v0}, Landroid/graphics/RenderNode;->endRecording()V

    .line 295
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPreviousCanvas:Landroid/graphics/Canvas;

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    .line 296
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 297
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->enableZ()V

    .line 298
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawRenderNode(Landroid/graphics/RenderNode;)V

    .line 299
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->disableZ()V

    .line 302
    :cond_22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    .line 303
    return-void
.end method

.method public blacklist getCanvas()Landroid/graphics/Canvas;
    .registers 2

    .line 94
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    return-object v0
.end method

.method public blacklist getText(I)Ljava/lang/String;
    .registers 3

    .line 1177
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getFromId(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public blacklist getTextBounds(IIII[F)V
    .registers 13

    .line 389
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->getText(I)Ljava/lang/String;

    move-result-object p1

    .line 390
    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-nez p1, :cond_14

    .line 391
    aput v4, p5, v1

    .line 392
    aput v4, p5, v2

    .line 393
    aput v4, p5, v3

    .line 394
    aput v4, p5, v0

    .line 395
    return-void

    .line 397
    :cond_14
    const/4 v5, -0x1

    if-eq p3, v5, :cond_1d

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-le p3, v5, :cond_21

    .line 398
    :cond_1d
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    .line 401
    :cond_21
    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCachedFontMetrics:Landroid/graphics/Paint$FontMetrics;

    if-nez v5, :cond_2d

    .line 402
    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCachedFontMetrics:Landroid/graphics/Paint$FontMetrics;

    .line 404
    :cond_2d
    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCachedFontMetrics:Landroid/graphics/Paint$FontMetrics;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    .line 405
    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v5, p1, p2, p3, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 406
    and-int/lit8 v5, p4, 0x4

    if-eqz v5, :cond_4a

    .line 407
    aput v4, p5, v1

    .line 408
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1, p2, p3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result p1

    aput p1, p5, v3

    goto :goto_6b

    .line 410
    :cond_4a
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    aput v4, p5, v1

    .line 411
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_64

    .line 412
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1, p2, p3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result p1

    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mTmpRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->left:I

    int-to-float p2, p2

    sub-float/2addr p1, p2

    aput p1, p5, v3

    goto :goto_6b

    .line 414
    :cond_64
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mTmpRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    int-to-float p1, p1

    aput p1, p5, v3

    .line 418
    :goto_6b
    and-int/lit8 p1, p4, 0x2

    if-eqz p1, :cond_86

    .line 419
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCachedFontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget p1, p1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    aput p1, p5, v2

    .line 420
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCachedFontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget p1, p1, Landroid/graphics/Paint$FontMetrics;->descent:F

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    aput p1, p5, v0

    goto :goto_94

    .line 422
    :cond_86
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mTmpRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    aput p1, p5, v2

    .line 423
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mTmpRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    aput p1, p5, v0

    .line 425
    :goto_94
    return-void
.end method

.method public blacklist layoutComplexText(IIIIIIFI)Lcom/android/internal/widget/remotecompose/core/Platform$ComputedTextLayout;
    .registers 10

    .line 437
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->getText(I)Ljava/lang/String;

    move-result-object p1

    .line 438
    if-nez p1, :cond_8

    .line 439
    const/4 p1, 0x0

    return-object p1

    .line 441
    :cond_8
    const/4 p8, -0x1

    if-eq p3, p8, :cond_11

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p8

    if-le p3, p8, :cond_15

    .line 442
    :cond_11
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    .line 445
    :cond_15
    new-instance p8, Landroid/text/TextPaint;

    invoke-direct {p8}, Landroid/text/TextPaint;-><init>()V

    .line 446
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p8, v0}, Landroid/text/TextPaint;->set(Landroid/graphics/Paint;)V

    .line 447
    float-to-int p7, p7

    .line 448
    invoke-static {p1, p2, p3, p8, p7}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    .line 449
    packed-switch p4, :pswitch_data_6a

    .line 458
    :pswitch_27
    sget-object p2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-virtual {p1, p2}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    goto :goto_39

    .line 455
    :pswitch_2d
    sget-object p2, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {p1, p2}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    .line 456
    goto :goto_39

    .line 452
    :pswitch_33
    sget-object p2, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    invoke-virtual {p1, p2}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    .line 453
    nop

    .line 460
    :goto_39
    packed-switch p5, :pswitch_data_78

    goto :goto_4f

    .line 465
    :pswitch_3d
    sget-object p2, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, p2}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    .line 466
    goto :goto_4f

    .line 468
    :pswitch_43
    sget-object p2, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, p2}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    .line 469
    goto :goto_4f

    .line 462
    :pswitch_49
    sget-object p2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, p2}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    .line 463
    nop

    .line 472
    :goto_4f
    invoke-virtual {p1, p6}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    .line 473
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    .line 475
    invoke-virtual {p1}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object p1

    .line 476
    new-instance p2, Lcom/android/internal/widget/remotecompose/player/platform/AndroidComputedTextLayout;

    .line 477
    invoke-virtual {p1}, Landroid/text/StaticLayout;->getWidth()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p1}, Landroid/text/StaticLayout;->getHeight()I

    move-result p4

    int-to-float p4, p4

    invoke-direct {p2, p1, p3, p4}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidComputedTextLayout;-><init>(Landroid/text/StaticLayout;FF)V

    .line 476
    return-object p2

    :pswitch_data_6a
    .packed-switch 0x2
        :pswitch_33
        :pswitch_2d
        :pswitch_27
        :pswitch_27
        :pswitch_33
    .end packed-switch

    :pswitch_data_78
    .packed-switch 0x3
        :pswitch_49
        :pswitch_43
        :pswitch_3d
    .end packed-switch
.end method

.method public blacklist matrixFromPath(IFFI)V
    .registers 6

    .line 1186
    const/4 p3, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, p3, v0}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->getPath(IFF)Landroid/graphics/Path;

    move-result-object p1

    .line 1187
    new-instance p3, Landroid/graphics/PathMeasure;

    const/4 v0, 0x0

    invoke-direct {p3, p1, v0}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    .line 1188
    invoke-virtual {p3}, Landroid/graphics/PathMeasure;->getLength()F

    move-result p1

    .line 1189
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 1190
    mul-float/2addr p2, p1

    rem-float/2addr p2, p1

    invoke-virtual {p3, p2, v0, p4}, Landroid/graphics/PathMeasure;->getMatrix(FLandroid/graphics/Matrix;I)Z

    .line 1191
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1192
    return-void
.end method

.method public blacklist matrixRestore()V
    .registers 2

    .line 1038
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 1039
    return-void
.end method

.method public blacklist matrixRotate(FFF)V
    .registers 5

    .line 1024
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1025
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p2, p1}, Landroid/graphics/Canvas;->rotate(F)V

    goto :goto_11

    .line 1027
    :cond_c
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 1029
    :goto_11
    return-void
.end method

.method public blacklist matrixSave()V
    .registers 2

    .line 1033
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 1034
    return-void
.end method

.method public blacklist matrixScale(FFFF)V
    .registers 6

    .line 1005
    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1006
    iget-object p3, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p3, p1, p2}, Landroid/graphics/Canvas;->scale(FF)V

    goto :goto_11

    .line 1008
    :cond_c
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 1010
    :goto_11
    return-void
.end method

.method public blacklist matrixSkew(FF)V
    .registers 4

    .line 1019
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Canvas;->skew(FF)V

    .line 1020
    return-void
.end method

.method public blacklist matrixTranslate(FF)V
    .registers 4

    .line 1014
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1015
    return-void
.end method

.method public blacklist replacePaint(Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;)V
    .registers 3

    .line 370
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    .line 371
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->applyPaint(Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;)V

    .line 372
    return-void
.end method

.method public blacklist reset()V
    .registers 3

    .line 1111
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1112
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    .line 1113
    return-void
.end method

.method public blacklist restore()V
    .registers 2

    .line 113
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 114
    return-void
.end method

.method public blacklist restorePaint()V
    .registers 3

    .line 365
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaintList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaintList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    .line 366
    return-void
.end method

.method public blacklist roundedClipRect(FFFFFF)V
    .registers 14

    .line 1054
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 1055
    const/16 v1, 0x8

    new-array v5, v1, [F

    const/4 v1, 0x0

    aput p3, v5, v1

    const/4 v1, 0x1

    aput p3, v5, v1

    const/4 p3, 0x2

    aput p4, v5, p3

    const/4 p3, 0x3

    aput p4, v5, p3

    const/4 p3, 0x4

    aput p6, v5, p3

    const/4 p3, 0x5

    aput p6, v5, p3

    const/4 p3, 0x6

    aput p5, v5, p3

    const/4 p3, 0x7

    aput p5, v5, p3

    .line 1067
    const/4 v2, 0x0

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    const/4 v1, 0x0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->addRoundRect(FFFF[FLandroid/graphics/Path$Direction;)V

    .line 1068
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 1069
    return-void
.end method

.method public blacklist save()V
    .registers 2

    .line 103
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 104
    return-void
.end method

.method public blacklist saveLayer(FFFF)V
    .registers 11

    .line 108
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    add-float v3, p1, p3

    add-float v4, p2, p4

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    .line 109
    return-void
.end method

.method public blacklist savePaint()V
    .registers 4

    .line 360
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaintList:Ljava/util/List;

    new-instance v1, Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 361
    return-void
.end method

.method public blacklist scale(FF)V
    .registers 4

    .line 155
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 156
    return-void
.end method

.method public blacklist setCanvas(Landroid/graphics/Canvas;)V
    .registers 2

    .line 98
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mMainCanvas:Landroid/graphics/Canvas;

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    .line 99
    return-void
.end method

.method public blacklist setGraphicsLayer(Ljava/util/HashMap;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    if-nez v0, :cond_5

    .line 169
    return-void

    .line 171
    :cond_5
    nop

    .line 172
    nop

    .line 173
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_10b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 174
    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 175
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    packed-switch v4, :pswitch_data_1fe

    :pswitch_2a
    goto/16 :goto_109

    .line 207
    :pswitch_2c
    nop

    .line 208
    move v2, v5

    goto/16 :goto_109

    .line 225
    :pswitch_30
    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_3b

    move v3, v5

    goto/16 :goto_109

    :cond_3b
    move v3, v1

    goto/16 :goto_109

    .line 222
    :pswitch_3e
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/RenderNode;->setAmbientShadowColor(I)Z

    .line 223
    goto/16 :goto_109

    .line 219
    :pswitch_4b
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/RenderNode;->setSpotShadowColor(I)Z

    .line 220
    goto/16 :goto_109

    .line 216
    :pswitch_58
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/RenderNode;->setCameraDistance(F)Z

    .line 217
    goto/16 :goto_109

    .line 213
    :pswitch_65
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/RenderNode;->setAlpha(F)Z

    .line 214
    goto/16 :goto_109

    .line 210
    :pswitch_72
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/RenderNode;->setElevation(F)Z

    .line 211
    goto/16 :goto_109

    .line 204
    :pswitch_7f
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/RenderNode;->setTranslationZ(F)Z

    .line 205
    goto/16 :goto_109

    .line 201
    :pswitch_8c
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/RenderNode;->setTranslationY(F)Z

    .line 202
    goto/16 :goto_109

    .line 198
    :pswitch_99
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/RenderNode;->setTranslationX(F)Z

    .line 199
    goto :goto_109

    .line 195
    :pswitch_a5
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v5

    iget-object v6, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    invoke-virtual {v6}, Landroid/graphics/RenderNode;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/graphics/RenderNode;->setPivotY(F)Z

    .line 196
    goto :goto_109

    .line 192
    :pswitch_b9
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v5

    iget-object v6, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    invoke-virtual {v6}, Landroid/graphics/RenderNode;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/graphics/RenderNode;->setPivotX(F)Z

    .line 193
    goto :goto_109

    .line 189
    :pswitch_cd
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/RenderNode;->setRotationZ(F)Z

    .line 190
    goto :goto_109

    .line 186
    :pswitch_d9
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/RenderNode;->setRotationY(F)Z

    .line 187
    goto :goto_109

    .line 183
    :pswitch_e5
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/RenderNode;->setRotationX(F)Z

    .line 184
    goto :goto_109

    .line 180
    :pswitch_f1
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/RenderNode;->setScaleY(F)Z

    .line 181
    goto :goto_109

    .line 177
    :pswitch_fd
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/RenderNode;->setScaleX(F)Z

    .line 178
    nop

    .line 228
    :goto_109
    goto/16 :goto_12

    .line 229
    :cond_10b
    if-eqz v2, :cond_1a4

    .line 230
    new-instance v0, Landroid/graphics/Outline;

    invoke-direct {v0}, Landroid/graphics/Outline;-><init>()V

    .line 231
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Outline;->setAlpha(F)V

    .line 232
    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 233
    if-eqz v2, :cond_19f

    .line 234
    const/16 v4, 0x15

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 235
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 236
    if-nez v2, :cond_145

    .line 237
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    invoke-virtual {v2}, Landroid/graphics/RenderNode;->getWidth()I

    move-result v2

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    invoke-virtual {v4}, Landroid/graphics/RenderNode;->getHeight()I

    move-result v4

    invoke-virtual {v0, v1, v1, v2, v4}, Landroid/graphics/Outline;->setRect(IIII)V

    goto :goto_19f

    .line 238
    :cond_145
    if-ne v2, v5, :cond_174

    .line 239
    if-eqz v4, :cond_164

    .line 240
    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 241
    new-instance v4, Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    .line 242
    invoke-virtual {v5}, Landroid/graphics/RenderNode;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    invoke-virtual {v6}, Landroid/graphics/RenderNode;->getHeight()I

    move-result v6

    invoke-direct {v4, v1, v1, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 241
    invoke-virtual {v0, v4, v2}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    .line 243
    goto :goto_19f

    .line 244
    :cond_164
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    invoke-virtual {v2}, Landroid/graphics/RenderNode;->getWidth()I

    move-result v2

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    invoke-virtual {v4}, Landroid/graphics/RenderNode;->getHeight()I

    move-result v4

    invoke-virtual {v0, v1, v1, v2, v4}, Landroid/graphics/Outline;->setRect(IIII)V

    goto :goto_19f

    .line 246
    :cond_174
    const/4 v4, 0x2

    if-ne v2, v4, :cond_19f

    .line 247
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    invoke-virtual {v2}, Landroid/graphics/RenderNode;->getWidth()I

    move-result v2

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    invoke-virtual {v4}, Landroid/graphics/RenderNode;->getHeight()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    .line 248
    new-instance v4, Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    .line 249
    invoke-virtual {v5}, Landroid/graphics/RenderNode;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    invoke-virtual {v6}, Landroid/graphics/RenderNode;->getHeight()I

    move-result v6

    invoke-direct {v4, v1, v1, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 248
    invoke-virtual {v0, v4, v2}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    .line 252
    :cond_19f
    :goto_19f
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    invoke-virtual {v2, v0}, Landroid/graphics/RenderNode;->setOutline(Landroid/graphics/Outline;)Z

    .line 254
    :cond_1a4
    if-eqz v3, :cond_1fd

    .line 255
    const/16 v0, 0x11

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 256
    nop

    .line 257
    const/4 v2, 0x0

    if-eqz v0, :cond_1bb

    .line 258
    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_1bc

    .line 257
    :cond_1bb
    move v0, v2

    .line 260
    :goto_1bc
    const/16 v3, 0x12

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 261
    nop

    .line 262
    if-eqz v3, :cond_1cf

    .line 263
    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 265
    :cond_1cf
    nop

    .line 266
    const/16 v3, 0x13

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 267
    if-eqz p1, :cond_1e2

    .line 268
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 270
    :cond_1e2
    sget-object p1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 271
    packed-switch v1, :pswitch_data_22c

    goto :goto_1f4

    .line 276
    :pswitch_1e8
    sget-object p1, Landroid/graphics/Shader$TileMode;->DECAL:Landroid/graphics/Shader$TileMode;

    .line 278
    goto :goto_1f4

    .line 280
    :pswitch_1eb
    sget-object p1, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    .line 281
    goto :goto_1f4

    .line 283
    :pswitch_1ee
    sget-object p1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    goto :goto_1f4

    .line 273
    :pswitch_1f1
    sget-object p1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 274
    nop

    .line 287
    :goto_1f4
    invoke-static {v0, v2, p1}, Landroid/graphics/RenderEffect;->createBlurEffect(FFLandroid/graphics/Shader$TileMode;)Landroid/graphics/RenderEffect;

    move-result-object p1

    .line 288
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    invoke-virtual {v0, p1}, Landroid/graphics/RenderNode;->setRenderEffect(Landroid/graphics/RenderEffect;)Z

    .line 290
    :cond_1fd
    return-void

    :pswitch_data_1fe
    .packed-switch 0x0
        :pswitch_fd
        :pswitch_f1
        :pswitch_e5
        :pswitch_d9
        :pswitch_cd
        :pswitch_b9
        :pswitch_a5
        :pswitch_99
        :pswitch_8c
        :pswitch_7f
        :pswitch_72
        :pswitch_65
        :pswitch_58
        :pswitch_2a
        :pswitch_4b
        :pswitch_3e
        :pswitch_30
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_2c
    .end packed-switch

    :pswitch_data_22c
    .packed-switch 0x0
        :pswitch_1f1
        :pswitch_1ee
        :pswitch_1eb
        :pswitch_1e8
    .end packed-switch
.end method

.method public blacklist startGraphicsLayer(II)V
    .registers 5

    .line 160
    new-instance v0, Landroid/graphics/RenderNode;

    const-string v1, "layer"

    invoke-direct {v0, v1}, Landroid/graphics/RenderNode;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    .line 161
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/RenderNode;->setPosition(IIII)Z

    .line 162
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPreviousCanvas:Landroid/graphics/Canvas;

    .line 163
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    invoke-virtual {p1}, Landroid/graphics/RenderNode;->beginRecording()Landroid/graphics/RecordingCanvas;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    .line 164
    return-void
.end method

.method public blacklist translate(FF)V
    .registers 4

    .line 307
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 308
    return-void
.end method

.method public blacklist tweenPath(IIIF)V
    .registers 5

    .line 1083
    invoke-direct {p0, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->getPathArray(IIF)[F

    move-result-object p2

    .line 1084
    iget-object p3, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    check-cast p3, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    .line 1085
    iget-object p3, p3, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {p3, p1, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->putPathData(I[F)V

    .line 1086
    return-void
.end method
