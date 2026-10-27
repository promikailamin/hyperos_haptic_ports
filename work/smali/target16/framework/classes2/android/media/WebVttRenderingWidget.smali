.class Landroid/media/WebVttRenderingWidget;
.super Landroid/view/ViewGroup;
.source "WebVttRenderer.java"

# interfaces
.implements Landroid/media/SubtitleTrack$RenderingWidget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/WebVttRenderingWidget$RegionLayout;,
        Landroid/media/WebVttRenderingWidget$CueLayout;,
        Landroid/media/WebVttRenderingWidget$SpanLayout;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEBUG:Z = false

.field private static final greylist-max-o DEBUG_CUE_BACKGROUND:I = -0x7f010000

.field private static final greylist-max-o DEBUG_REGION_BACKGROUND:I = -0x7fffff01

.field private static final greylist-max-o DEFAULT_CAPTION_STYLE:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

.field private static final greylist-max-o LINE_HEIGHT_RATIO:F = 0.0533f


# instance fields
.field private greylist-max-o mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

.field private final greylist-max-o mCaptioningListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

.field private final greylist-max-o mCueBoxes:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/media/TextTrackCue;",
            "Landroid/media/WebVttRenderingWidget$CueLayout;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mFontSize:F

.field private greylist-max-o mHasChangeListener:Z

.field private greylist-max-o mListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

.field private final greylist-max-o mManager:Landroid/view/accessibility/CaptioningManager;

.field private final greylist-max-o mRegionBoxes:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/media/TextTrackRegion;",
            "Landroid/media/WebVttRenderingWidget$RegionLayout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCaptionStyle(Landroid/media/WebVttRenderingWidget;)Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .registers 1

    iget-object p0, p0, Landroid/media/WebVttRenderingWidget;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFontSize(Landroid/media/WebVttRenderingWidget;)F
    .registers 1

    iget p0, p0, Landroid/media/WebVttRenderingWidget;->mFontSize:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$msetCaptionStyle(Landroid/media/WebVttRenderingWidget;Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/media/WebVttRenderingWidget;->setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smresolveCueAlignment(II)I
    .registers 2

    invoke-static {p0, p1}, Landroid/media/WebVttRenderingWidget;->resolveCueAlignment(II)I

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1119
    sget-object v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->DEFAULT:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    sput-object v0, Landroid/media/WebVttRenderingWidget;->DEFAULT_CAPTION_STYLE:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;)V
    .registers 3

    .line 1151
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/WebVttRenderingWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1152
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 1155
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/media/WebVttRenderingWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1156
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 1159
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/media/WebVttRenderingWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 1160
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 1164
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 1128
    new-instance p2, Landroid/util/ArrayMap;

    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    iput-object p2, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    .line 1132
    new-instance p2, Landroid/util/ArrayMap;

    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    iput-object p2, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    .line 1509
    new-instance p2, Landroid/media/WebVttRenderingWidget$1;

    invoke-direct {p2, p0}, Landroid/media/WebVttRenderingWidget$1;-><init>(Landroid/media/WebVttRenderingWidget;)V

    iput-object p2, p0, Landroid/media/WebVttRenderingWidget;->mCaptioningListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    .line 1167
    const/4 p2, 0x1

    const/4 p3, 0x0

    invoke-virtual {p0, p2, p3}, Landroid/media/WebVttRenderingWidget;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1169
    const-string p2, "captioning"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/CaptioningManager;

    iput-object p1, p0, Landroid/media/WebVttRenderingWidget;->mManager:Landroid/view/accessibility/CaptioningManager;

    .line 1170
    iget-object p1, p0, Landroid/media/WebVttRenderingWidget;->mManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager;->getUserStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object p1

    iput-object p1, p0, Landroid/media/WebVttRenderingWidget;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 1171
    iget-object p1, p0, Landroid/media/WebVttRenderingWidget;->mManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result p1

    invoke-virtual {p0}, Landroid/media/WebVttRenderingWidget;->getHeight()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p1, p2

    const p2, 0x3d5a511a    # 0.0533f

    mul-float/2addr p1, p2

    iput p1, p0, Landroid/media/WebVttRenderingWidget;->mFontSize:F

    .line 1172
    return-void
.end method

.method private greylist-max-o calculateLinePosition(Landroid/media/WebVttRenderingWidget$CueLayout;)I
    .registers 8

    .line 1474
    invoke-virtual {p1}, Landroid/media/WebVttRenderingWidget$CueLayout;->getCue()Landroid/media/TextTrackCue;

    move-result-object v0

    .line 1475
    iget-object v1, v0, Landroid/media/TextTrackCue;->mLinePosition:Ljava/lang/Integer;

    .line 1476
    iget-boolean v0, v0, Landroid/media/TextTrackCue;->mSnapToLines:Z

    .line 1477
    const/4 v2, 0x1

    if-nez v1, :cond_d

    move v3, v2

    goto :goto_e

    :cond_d
    const/4 v3, 0x0

    .line 1479
    :goto_e
    const/16 v4, 0x64

    if-nez v0, :cond_21

    if-nez v3, :cond_21

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ltz v5, :cond_20

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-le v5, v4, :cond_21

    .line 1481
    :cond_20
    return v4

    .line 1482
    :cond_21
    if-nez v3, :cond_28

    .line 1484
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 1485
    :cond_28
    if-nez v0, :cond_2b

    .line 1487
    return v4

    .line 1490
    :cond_2b
    invoke-static {p1}, Landroid/media/WebVttRenderingWidget$CueLayout;->-$$Nest$fgetmOrder(Landroid/media/WebVttRenderingWidget$CueLayout;)I

    move-result p1

    add-int/2addr p1, v2

    neg-int p1, p1

    return p1
.end method

.method private greylist-max-o layoutCue(IILandroid/media/WebVttRenderingWidget$CueLayout;)V
    .registers 9

    .line 1402
    invoke-virtual {p3}, Landroid/media/WebVttRenderingWidget$CueLayout;->getCue()Landroid/media/TextTrackCue;

    move-result-object v0

    .line 1403
    invoke-virtual {p0}, Landroid/media/WebVttRenderingWidget;->getLayoutDirection()I

    move-result v1

    .line 1404
    iget v2, v0, Landroid/media/TextTrackCue;->mAlignment:I

    invoke-static {v1, v2}, Landroid/media/WebVttRenderingWidget;->resolveCueAlignment(II)I

    move-result v2

    .line 1405
    iget-boolean v3, v0, Landroid/media/TextTrackCue;->mSnapToLines:Z

    .line 1407
    invoke-virtual {p3}, Landroid/media/WebVttRenderingWidget$CueLayout;->getMeasuredWidth()I

    move-result v4

    mul-int/lit8 v4, v4, 0x64

    div-int/2addr v4, p1

    .line 1411
    packed-switch v2, :pswitch_data_72

    .line 1420
    iget v0, v0, Landroid/media/TextTrackCue;->mTextPosition:I

    div-int/lit8 v2, v4, 0x2

    sub-int/2addr v0, v2

    goto :goto_27

    .line 1416
    :pswitch_20
    iget v0, v0, Landroid/media/TextTrackCue;->mTextPosition:I

    sub-int/2addr v0, v4

    .line 1417
    goto :goto_27

    .line 1413
    :pswitch_24
    iget v0, v0, Landroid/media/TextTrackCue;->mTextPosition:I

    .line 1414
    nop

    .line 1425
    :goto_27
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2c

    .line 1426
    rsub-int/lit8 v0, v0, 0x64

    .line 1432
    :cond_2c
    if-eqz v3, :cond_54

    .line 1433
    invoke-virtual {p0}, Landroid/media/WebVttRenderingWidget;->getPaddingLeft()I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    div-int/2addr v1, p1

    .line 1434
    invoke-virtual {p0}, Landroid/media/WebVttRenderingWidget;->getPaddingRight()I

    move-result v2

    mul-int/lit8 v2, v2, 0x64

    div-int/2addr v2, p1

    .line 1435
    if-ge v0, v1, :cond_44

    add-int v3, v0, v4

    if-le v3, v1, :cond_44

    .line 1436
    add-int/2addr v0, v1

    .line 1437
    sub-int/2addr v4, v1

    .line 1439
    :cond_44
    rsub-int/lit8 v1, v2, 0x64

    int-to-float v1, v1

    .line 1440
    int-to-float v3, v0

    cmpg-float v3, v3, v1

    if-gez v3, :cond_54

    add-int v3, v0, v4

    int-to-float v3, v3

    cmpl-float v1, v3, v1

    if-lez v1, :cond_54

    .line 1441
    sub-int/2addr v4, v2

    .line 1446
    :cond_54
    mul-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x64

    .line 1447
    mul-int/2addr v4, p1

    div-int/lit8 v4, v4, 0x64

    .line 1450
    invoke-direct {p0, p3}, Landroid/media/WebVttRenderingWidget;->calculateLinePosition(Landroid/media/WebVttRenderingWidget$CueLayout;)I

    move-result p1

    .line 1453
    invoke-virtual {p3}, Landroid/media/WebVttRenderingWidget$CueLayout;->getMeasuredHeight()I

    move-result v1

    .line 1455
    if-gez p1, :cond_67

    .line 1457
    mul-int/2addr p1, v1

    add-int/2addr p2, p1

    goto :goto_6b

    .line 1459
    :cond_67
    sub-int/2addr p2, v1

    mul-int/2addr p1, p2

    div-int/lit8 p2, p1, 0x64

    .line 1463
    :goto_6b
    add-int/2addr v4, v0

    add-int/2addr v1, p2

    invoke-virtual {p3, v0, p2, v4, v1}, Landroid/media/WebVttRenderingWidget$CueLayout;->layout(IIII)V

    .line 1464
    return-void

    nop

    :pswitch_data_72
    .packed-switch 0xcb
        :pswitch_24
        :pswitch_20
    .end packed-switch
.end method

.method private greylist-max-o layoutRegion(IILandroid/media/WebVttRenderingWidget$RegionLayout;)V
    .registers 8

    .line 1384
    invoke-virtual {p3}, Landroid/media/WebVttRenderingWidget$RegionLayout;->getRegion()Landroid/media/TextTrackRegion;

    move-result-object v0

    .line 1385
    invoke-virtual {p3}, Landroid/media/WebVttRenderingWidget$RegionLayout;->getMeasuredHeight()I

    move-result v1

    .line 1386
    invoke-virtual {p3}, Landroid/media/WebVttRenderingWidget$RegionLayout;->getMeasuredWidth()I

    move-result v2

    .line 1389
    iget v3, v0, Landroid/media/TextTrackRegion;->mViewportAnchorPointX:F

    .line 1390
    iget v0, v0, Landroid/media/TextTrackRegion;->mViewportAnchorPointY:F

    .line 1391
    sub-int/2addr p1, v2

    int-to-float p1, p1

    mul-float/2addr v3, p1

    const/high16 p1, 0x42c80000    # 100.0f

    div-float/2addr v3, p1

    float-to-int v3, v3

    .line 1392
    sub-int/2addr p2, v1

    int-to-float p2, p2

    mul-float/2addr v0, p2

    div-float/2addr v0, p1

    float-to-int p1, v0

    .line 1394
    add-int/2addr v2, v3

    add-int/2addr v1, p1

    invoke-virtual {p3, v3, p1, v2, v1}, Landroid/media/WebVttRenderingWidget$RegionLayout;->layout(IIII)V

    .line 1395
    return-void
.end method

.method private greylist-max-o manageChangeListener()V
    .registers 4

    .line 1217
    invoke-virtual {p0}, Landroid/media/WebVttRenderingWidget;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Landroid/media/WebVttRenderingWidget;->getVisibility()I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 1218
    :goto_f
    iget-boolean v1, p0, Landroid/media/WebVttRenderingWidget;->mHasChangeListener:Z

    if-eq v1, v0, :cond_3f

    .line 1219
    iput-boolean v0, p0, Landroid/media/WebVttRenderingWidget;->mHasChangeListener:Z

    .line 1221
    if-eqz v0, :cond_38

    .line 1222
    iget-object v0, p0, Landroid/media/WebVttRenderingWidget;->mManager:Landroid/view/accessibility/CaptioningManager;

    iget-object v1, p0, Landroid/media/WebVttRenderingWidget;->mCaptioningListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/CaptioningManager;->addCaptioningChangeListener(Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;)V

    .line 1224
    iget-object v0, p0, Landroid/media/WebVttRenderingWidget;->mManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->getUserStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v0

    .line 1225
    iget-object v1, p0, Landroid/media/WebVttRenderingWidget;->mManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v1}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result v1

    invoke-virtual {p0}, Landroid/media/WebVttRenderingWidget;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const v2, 0x3d5a511a    # 0.0533f

    mul-float/2addr v1, v2

    .line 1226
    invoke-direct {p0, v0, v1}, Landroid/media/WebVttRenderingWidget;->setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V

    .line 1227
    goto :goto_3f

    .line 1228
    :cond_38
    iget-object v0, p0, Landroid/media/WebVttRenderingWidget;->mManager:Landroid/view/accessibility/CaptioningManager;

    iget-object v1, p0, Landroid/media/WebVttRenderingWidget;->mCaptioningListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/CaptioningManager;->removeCaptioningChangeListener(Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;)V

    .line 1231
    :cond_3f
    :goto_3f
    return-void
.end method

.method private greylist-max-o prepForPrune()V
    .registers 5

    .line 1326
    iget-object v0, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 1327
    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_18

    .line 1328
    iget-object v3, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/WebVttRenderingWidget$RegionLayout;

    .line 1329
    invoke-virtual {v3}, Landroid/media/WebVttRenderingWidget$RegionLayout;->prepForPrune()V

    .line 1327
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1332
    :cond_18
    iget-object v0, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 1333
    nop

    :goto_1f
    if-ge v1, v0, :cond_2f

    .line 1334
    iget-object v2, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/WebVttRenderingWidget$CueLayout;

    .line 1335
    invoke-virtual {v2}, Landroid/media/WebVttRenderingWidget$CueLayout;->prepForPrune()V

    .line 1333
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 1337
    :cond_2f
    return-void
.end method

.method private greylist-max-o prune()V
    .registers 6

    .line 1299
    iget-object v0, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 1300
    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_27

    .line 1301
    iget-object v3, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/WebVttRenderingWidget$RegionLayout;

    .line 1302
    invoke-virtual {v3}, Landroid/media/WebVttRenderingWidget$RegionLayout;->prune()Z

    move-result v4

    if-eqz v4, :cond_24

    .line 1303
    invoke-virtual {p0, v3}, Landroid/media/WebVttRenderingWidget;->removeView(Landroid/view/View;)V

    .line 1304
    iget-object v3, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 1305
    add-int/lit8 v0, v0, -0x1

    .line 1306
    add-int/lit8 v2, v2, -0x1

    .line 1300
    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1310
    :cond_27
    iget-object v0, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 1311
    nop

    :goto_2e
    if-ge v1, v0, :cond_4d

    .line 1312
    iget-object v2, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/WebVttRenderingWidget$CueLayout;

    .line 1313
    invoke-virtual {v2}, Landroid/media/WebVttRenderingWidget$CueLayout;->isActive()Z

    move-result v3

    if-nez v3, :cond_4a

    .line 1314
    invoke-virtual {p0, v2}, Landroid/media/WebVttRenderingWidget;->removeView(Landroid/view/View;)V

    .line 1315
    iget-object v2, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 1316
    add-int/lit8 v0, v0, -0x1

    .line 1317
    add-int/lit8 v1, v1, -0x1

    .line 1311
    :cond_4a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 1320
    :cond_4d
    return-void
.end method

.method private static greylist-max-o resolveCueAlignment(II)I
    .registers 4

    .line 1498
    const/16 v0, 0xcb

    const/16 v1, 0xcc

    packed-switch p1, :pswitch_data_14

    .line 1506
    return p1

    .line 1503
    :pswitch_8
    if-nez p0, :cond_c

    .line 1504
    move v0, v1

    goto :goto_d

    :cond_c
    nop

    .line 1503
    :goto_d
    return v0

    .line 1500
    :pswitch_e
    if-nez p0, :cond_11

    .line 1501
    goto :goto_12

    :cond_11
    move v0, v1

    .line 1500
    :goto_12
    return v0

    nop

    :pswitch_data_14
    .packed-switch 0xc9
        :pswitch_e
        :pswitch_8
    .end packed-switch
.end method

.method private greylist-max-o setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V
    .registers 7

    .line 1278
    sget-object v0, Landroid/media/WebVttRenderingWidget;->DEFAULT_CAPTION_STYLE:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->applyStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object p1

    .line 1279
    iput-object p1, p0, Landroid/media/WebVttRenderingWidget;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 1280
    iput p2, p0, Landroid/media/WebVttRenderingWidget;->mFontSize:F

    .line 1282
    iget-object v0, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 1283
    const/4 v1, 0x0

    move v2, v1

    :goto_12
    if-ge v2, v0, :cond_22

    .line 1284
    iget-object v3, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/WebVttRenderingWidget$CueLayout;

    .line 1285
    invoke-virtual {v3, p1, p2}, Landroid/media/WebVttRenderingWidget$CueLayout;->setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V

    .line 1283
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 1288
    :cond_22
    iget-object v0, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 1289
    nop

    :goto_29
    if-ge v1, v0, :cond_39

    .line 1290
    iget-object v2, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/WebVttRenderingWidget$RegionLayout;

    .line 1291
    invoke-virtual {v2, p1, p2}, Landroid/media/WebVttRenderingWidget$RegionLayout;->setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V

    .line 1289
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .line 1293
    :cond_39
    return-void
.end method


# virtual methods
.method public whitelist onAttachedToWindow()V
    .registers 1

    .line 1185
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 1187
    invoke-direct {p0}, Landroid/media/WebVttRenderingWidget;->manageChangeListener()V

    .line 1188
    return-void
.end method

.method public whitelist onDetachedFromWindow()V
    .registers 1

    .line 1192
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 1194
    invoke-direct {p0}, Landroid/media/WebVttRenderingWidget;->manageChangeListener()V

    .line 1195
    return-void
.end method

.method protected whitelist onLayout(ZIIII)V
    .registers 7

    .line 1358
    sub-int/2addr p4, p2

    .line 1359
    sub-int/2addr p5, p3

    .line 1361
    iget-object p1, p0, Landroid/media/WebVttRenderingWidget;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    iget-object p2, p0, Landroid/media/WebVttRenderingWidget;->mManager:Landroid/view/accessibility/CaptioningManager;

    .line 1362
    invoke-virtual {p2}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result p2

    const p3, 0x3d5a511a    # 0.0533f

    mul-float/2addr p2, p3

    int-to-float p3, p5

    mul-float/2addr p2, p3

    .line 1361
    invoke-direct {p0, p1, p2}, Landroid/media/WebVttRenderingWidget;->setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V

    .line 1364
    iget-object p1, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    .line 1365
    const/4 p2, 0x0

    move p3, p2

    :goto_1b
    if-ge p3, p1, :cond_2b

    .line 1366
    iget-object v0, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/WebVttRenderingWidget$RegionLayout;

    .line 1367
    invoke-direct {p0, p4, p5, v0}, Landroid/media/WebVttRenderingWidget;->layoutRegion(IILandroid/media/WebVttRenderingWidget$RegionLayout;)V

    .line 1365
    add-int/lit8 p3, p3, 0x1

    goto :goto_1b

    .line 1370
    :cond_2b
    iget-object p1, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    .line 1371
    nop

    :goto_32
    if-ge p2, p1, :cond_42

    .line 1372
    iget-object p3, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    invoke-virtual {p3, p2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/media/WebVttRenderingWidget$CueLayout;

    .line 1373
    invoke-direct {p0, p4, p5, p3}, Landroid/media/WebVttRenderingWidget;->layoutCue(IILandroid/media/WebVttRenderingWidget$CueLayout;)V

    .line 1371
    add-int/lit8 p2, p2, 0x1

    goto :goto_32

    .line 1375
    :cond_42
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .registers 7

    .line 1341
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 1343
    iget-object v0, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 1344
    const/4 v1, 0x0

    move v2, v1

    :goto_b
    if-ge v2, v0, :cond_1b

    .line 1345
    iget-object v3, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/WebVttRenderingWidget$RegionLayout;

    .line 1346
    invoke-virtual {v3, p1, p2}, Landroid/media/WebVttRenderingWidget$RegionLayout;->measureForParent(II)V

    .line 1344
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 1349
    :cond_1b
    iget-object v0, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 1350
    nop

    :goto_22
    if-ge v1, v0, :cond_32

    .line 1351
    iget-object v2, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/WebVttRenderingWidget$CueLayout;

    .line 1352
    invoke-virtual {v2, p1, p2}, Landroid/media/WebVttRenderingWidget$CueLayout;->measureForParent(II)V

    .line 1350
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 1354
    :cond_32
    return-void
.end method

.method public greylist-max-o setActiveCues(Ljava/util/Vector;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Landroid/media/SubtitleTrack$Cue;",
            ">;)V"
        }
    .end annotation

    .line 1234
    invoke-virtual {p0}, Landroid/media/WebVttRenderingWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1235
    iget-object v1, p0, Landroid/media/WebVttRenderingWidget;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 1236
    iget v2, p0, Landroid/media/WebVttRenderingWidget;->mFontSize:F

    .line 1238
    invoke-direct {p0}, Landroid/media/WebVttRenderingWidget;->prepForPrune()V

    .line 1241
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v3

    .line 1242
    const/4 v4, 0x0

    :goto_10
    if-ge v4, v3, :cond_58

    .line 1243
    invoke-virtual {p1, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/TextTrackCue;

    .line 1244
    iget-object v6, v5, Landroid/media/TextTrackCue;->mRegion:Landroid/media/TextTrackRegion;

    .line 1245
    const/4 v7, -0x2

    if-eqz v6, :cond_38

    .line 1246
    iget-object v8, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v8, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/WebVttRenderingWidget$RegionLayout;

    .line 1247
    if-nez v8, :cond_34

    .line 1248
    new-instance v8, Landroid/media/WebVttRenderingWidget$RegionLayout;

    invoke-direct {v8, v0, v6, v1, v2}, Landroid/media/WebVttRenderingWidget$RegionLayout;-><init>(Landroid/content/Context;Landroid/media/TextTrackRegion;Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V

    .line 1249
    iget-object v9, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v9, v6, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1250
    invoke-virtual {p0, v8, v7, v7}, Landroid/media/WebVttRenderingWidget;->addView(Landroid/view/View;II)V

    .line 1252
    :cond_34
    invoke-virtual {v8, v5}, Landroid/media/WebVttRenderingWidget$RegionLayout;->put(Landroid/media/TextTrackCue;)V

    .line 1253
    goto :goto_55

    .line 1254
    :cond_38
    iget-object v6, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/WebVttRenderingWidget$CueLayout;

    .line 1255
    if-nez v6, :cond_4f

    .line 1256
    new-instance v6, Landroid/media/WebVttRenderingWidget$CueLayout;

    invoke-direct {v6, v0, v5, v1, v2}, Landroid/media/WebVttRenderingWidget$CueLayout;-><init>(Landroid/content/Context;Landroid/media/TextTrackCue;Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V

    .line 1257
    iget-object v8, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v8, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1258
    invoke-virtual {p0, v6, v7, v7}, Landroid/media/WebVttRenderingWidget;->addView(Landroid/view/View;II)V

    .line 1260
    :cond_4f
    invoke-virtual {v6}, Landroid/media/WebVttRenderingWidget$CueLayout;->update()V

    .line 1261
    invoke-virtual {v6, v4}, Landroid/media/WebVttRenderingWidget$CueLayout;->setOrder(I)V

    .line 1242
    :goto_55
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 1265
    :cond_58
    invoke-direct {p0}, Landroid/media/WebVttRenderingWidget;->prune()V

    .line 1268
    invoke-virtual {p0}, Landroid/media/WebVttRenderingWidget;->getWidth()I

    move-result p1

    .line 1269
    invoke-virtual {p0}, Landroid/media/WebVttRenderingWidget;->getHeight()I

    move-result v0

    .line 1270
    invoke-virtual {p0, p1, v0}, Landroid/media/WebVttRenderingWidget;->setSize(II)V

    .line 1272
    iget-object p1, p0, Landroid/media/WebVttRenderingWidget;->mListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

    if-eqz p1, :cond_6f

    .line 1273
    iget-object p1, p0, Landroid/media/WebVttRenderingWidget;->mListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

    invoke-interface {p1, p0}, Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;->onChanged(Landroid/media/SubtitleTrack$RenderingWidget;)V

    .line 1275
    :cond_6f
    return-void
.end method

.method public greylist-max-o setOnChangedListener(Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;)V
    .registers 2

    .line 1199
    iput-object p1, p0, Landroid/media/WebVttRenderingWidget;->mListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

    .line 1200
    return-void
.end method

.method public greylist-max-o setSize(II)V
    .registers 5

    .line 1176
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1177
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1179
    invoke-virtual {p0, v1, v0}, Landroid/media/WebVttRenderingWidget;->measure(II)V

    .line 1180
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, p1, p2}, Landroid/media/WebVttRenderingWidget;->layout(IIII)V

    .line 1181
    return-void
.end method

.method public greylist-max-o setVisible(Z)V
    .registers 2

    .line 1204
    if-eqz p1, :cond_7

    .line 1205
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/media/WebVttRenderingWidget;->setVisibility(I)V

    goto :goto_c

    .line 1207
    :cond_7
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/media/WebVttRenderingWidget;->setVisibility(I)V

    .line 1210
    :goto_c
    invoke-direct {p0}, Landroid/media/WebVttRenderingWidget;->manageChangeListener()V

    .line 1211
    return-void
.end method
