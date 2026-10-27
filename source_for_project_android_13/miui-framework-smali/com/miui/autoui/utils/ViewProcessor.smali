.class public Lcom/miui/autoui/utils/ViewProcessor;
.super Ljava/lang/Object;
.source "ViewProcessor.java"


# static fields
.field private static final blacklist CLASS_DISPLAY_METRICS_HOLDER:Ljava/lang/String; = "com.facebook.react.uimanager.DisplayMetricsHolder"

.field private static final blacklist CLASS_HORIZONTAL_LIST_VIEW_NAME:Ljava/lang/String; = "HorizontalListView"

.field private static final blacklist CLASS_NAME_VIEW:Ljava/lang/String;

.field private static final blacklist CLASS_NAME_WEB_VIEW:Ljava/lang/String; = "WebView"

.field private static final blacklist FIELD_TEXTVIEW_LAYOUT:Ljava/lang/String; = "mLayout"

.field private static final blacklist FIELD_VIEW_CONTEXT:Ljava/lang/String; = "mContext"

.field private static final blacklist FLOAT_IMAGE_HEIGHT_RATIO:F = 0.15f

.field private static final blacklist FLOAT_IMAGE_WIDTH_RATIO:F = 0.25f

.field private static final blacklist ICON_HEIGHT_RATIO:F = 0.075f

.field private static final blacklist METHOD_ADAPTER_GET_ITEM_CNT:Ljava/lang/String; = "getItemCount"

.field private static final blacklist METHOD_DX_TEXTVIEW_GET_LAYOUT:Ljava/lang/String; = "getStaticLayout"

.field private static final blacklist METHOD_DX_TEXTVIEW_SET_LAYOUT:Ljava/lang/String; = "setStaticLayout"

.field private static final blacklist METHOD_INIT_DISPLAY_METRICS:Ljava/lang/String; = "initDisplayMetrics"

.field private static final blacklist METHOD_LAYOUT_MGR_GET_ORIENTATION:Ljava/lang/String; = "getOrientation"

.field private static final blacklist METHOD_LAYOUT_MGR_GET_SPAN_CNT:Ljava/lang/String; = "getSpanCount"

.field private static final blacklist METHOD_LAYOUT_MGR_SET_SPAN_CNT:Ljava/lang/String; = "setSpanCount"

.field private static final blacklist METHOD_LAYOUT_PARAMS_SET_FULL_SPAN:Ljava/lang/String; = "setFullSpan"

.field private static final blacklist METHOD_TEXTVIEW_GET_LAYOUT:Ljava/lang/String; = "getTextLayout"

.field private static final blacklist METHOD_TEXTVIEW_SET_LAYOUT:Ljava/lang/String; = "setTextLayout"

.field private static final blacklist METHOD_VIEW_GET_ADAPTER:Ljava/lang/String; = "getAdapter"

.field private static final blacklist METHOD_VIEW_GET_LAYOUT_MGR:Ljava/lang/String; = "getLayoutManager"

.field private static final blacklist METHOD_VIEW_GET_POPUP:Ljava/lang/String; = "this$0"

.field private static final blacklist NAME_SET_CONSTRAINT_LAYOUT:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist NAME_SET_DX_TEXT_VIEW:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist NAME_SET_GRID_LAYOUT_MGR:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist NAME_SET_REACT_IMAGE_VIEW:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist NAME_SET_REACT_NATIVE_VIEW:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist NAME_SET_RECYCLER_VIEW:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist NAME_SET_STAGGERED_GRID_LAYOUT_MGR:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist NAME_SET_VIEW_PAGER:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist NAME_SET_VIEW_POPUP_DECOR:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist NAME_SET_WEBVIEW:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist NAME_SET_WX_TEXT_VIEW:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist RED_DOT_HEIGHT_RATIO:F = 0.02f

.field private static final blacklist TAG:Ljava/lang/String; = "ViewProcessor"

.field private static final blacklist VERY_WIDE:I = 0x100000


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 49
    const-class v0, Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/autoui/utils/ViewProcessor;->CLASS_NAME_VIEW:Ljava/lang/String;

    .line 78
    new-instance v0, Lcom/miui/autoui/utils/ViewProcessor$1;

    invoke-direct {v0}, Lcom/miui/autoui/utils/ViewProcessor$1;-><init>()V

    sput-object v0, Lcom/miui/autoui/utils/ViewProcessor;->NAME_SET_RECYCLER_VIEW:Ljava/util/HashSet;

    .line 84
    new-instance v0, Lcom/miui/autoui/utils/ViewProcessor$2;

    invoke-direct {v0}, Lcom/miui/autoui/utils/ViewProcessor$2;-><init>()V

    sput-object v0, Lcom/miui/autoui/utils/ViewProcessor;->NAME_SET_GRID_LAYOUT_MGR:Ljava/util/HashSet;

    .line 91
    new-instance v0, Lcom/miui/autoui/utils/ViewProcessor$3;

    invoke-direct {v0}, Lcom/miui/autoui/utils/ViewProcessor$3;-><init>()V

    sput-object v0, Lcom/miui/autoui/utils/ViewProcessor;->NAME_SET_STAGGERED_GRID_LAYOUT_MGR:Ljava/util/HashSet;

    .line 96
    new-instance v0, Lcom/miui/autoui/utils/ViewProcessor$4;

    invoke-direct {v0}, Lcom/miui/autoui/utils/ViewProcessor$4;-><init>()V

    sput-object v0, Lcom/miui/autoui/utils/ViewProcessor;->NAME_SET_WX_TEXT_VIEW:Ljava/util/HashSet;

    .line 103
    new-instance v0, Lcom/miui/autoui/utils/ViewProcessor$5;

    invoke-direct {v0}, Lcom/miui/autoui/utils/ViewProcessor$5;-><init>()V

    sput-object v0, Lcom/miui/autoui/utils/ViewProcessor;->NAME_SET_DX_TEXT_VIEW:Ljava/util/HashSet;

    .line 109
    new-instance v0, Lcom/miui/autoui/utils/ViewProcessor$6;

    invoke-direct {v0}, Lcom/miui/autoui/utils/ViewProcessor$6;-><init>()V

    sput-object v0, Lcom/miui/autoui/utils/ViewProcessor;->NAME_SET_CONSTRAINT_LAYOUT:Ljava/util/HashSet;

    .line 115
    new-instance v0, Lcom/miui/autoui/utils/ViewProcessor$7;

    invoke-direct {v0}, Lcom/miui/autoui/utils/ViewProcessor$7;-><init>()V

    sput-object v0, Lcom/miui/autoui/utils/ViewProcessor;->NAME_SET_VIEW_PAGER:Ljava/util/HashSet;

    .line 121
    new-instance v0, Lcom/miui/autoui/utils/ViewProcessor$8;

    invoke-direct {v0}, Lcom/miui/autoui/utils/ViewProcessor$8;-><init>()V

    sput-object v0, Lcom/miui/autoui/utils/ViewProcessor;->NAME_SET_VIEW_POPUP_DECOR:Ljava/util/HashSet;

    .line 126
    new-instance v0, Lcom/miui/autoui/utils/ViewProcessor$9;

    invoke-direct {v0}, Lcom/miui/autoui/utils/ViewProcessor$9;-><init>()V

    sput-object v0, Lcom/miui/autoui/utils/ViewProcessor;->NAME_SET_REACT_NATIVE_VIEW:Ljava/util/HashSet;

    .line 131
    new-instance v0, Lcom/miui/autoui/utils/ViewProcessor$10;

    invoke-direct {v0}, Lcom/miui/autoui/utils/ViewProcessor$10;-><init>()V

    sput-object v0, Lcom/miui/autoui/utils/ViewProcessor;->NAME_SET_REACT_IMAGE_VIEW:Ljava/util/HashSet;

    .line 137
    new-instance v0, Lcom/miui/autoui/utils/ViewProcessor$11;

    invoke-direct {v0}, Lcom/miui/autoui/utils/ViewProcessor$11;-><init>()V

    sput-object v0, Lcom/miui/autoui/utils/ViewProcessor;->NAME_SET_WEBVIEW:Ljava/util/HashSet;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist createStretchedTextLayout(Landroid/view/View;Landroid/text/Layout;)Landroid/text/Layout;
    .registers 21
    .param p0, "view"    # Landroid/view/View;
    .param p1, "layout"    # Landroid/text/Layout;

    .line 491
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 492
    .local v1, "layoutWidth2":I
    const/4 v2, 0x0

    .line 493
    .local v2, "ellipsize":Landroid/text/TextUtils$TruncateAt;
    instance-of v3, v0, Landroid/widget/TextView;

    if-eqz v3, :cond_25

    .line 494
    move-object v3, v0

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v2

    .line 495
    move-object v3, v0

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    move-object v13, v3

    .local v3, "text":Ljava/lang/CharSequence;
    goto :goto_2b

    .line 497
    .end local v3    # "text":Ljava/lang/CharSequence;
    :cond_25
    invoke-virtual/range {p1 .. p1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 498
    .local v3, "text2":Ljava/lang/CharSequence;
    move-object v4, v3

    move-object v13, v4

    .line 500
    .end local v3    # "text2":Ljava/lang/CharSequence;
    .local v13, "text":Ljava/lang/CharSequence;
    :goto_2b
    move-object/from16 v14, p1

    instance-of v3, v14, Landroid/text/BoringLayout;

    if-eqz v3, :cond_a9

    instance-of v3, v0, Landroid/widget/TextView;

    if-eqz v3, :cond_a9

    move-object v3, v0

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->isHorizontallyScrollable()Z

    move-result v3

    if-eqz v3, :cond_a9

    .line 501
    invoke-virtual/range {p1 .. p1}, Landroid/text/Layout;->getWidth()I

    move-result v3

    const/high16 v4, 0x100000

    if-ne v3, v4, :cond_53

    .line 502
    int-to-float v3, v1

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getRateDividend()F

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v5, v6

    mul-float/2addr v3, v5

    float-to-int v3, v3

    add-int/2addr v3, v4

    move v15, v3

    .local v3, "layoutWidth":I
    goto :goto_5b

    .line 504
    .end local v3    # "layoutWidth":I
    :cond_53
    int-to-float v3, v1

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getRateDividend()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    move v15, v3

    .line 506
    .local v15, "layoutWidth":I
    :goto_5b
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v3

    move-object v4, v0

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    move-object v4, v0

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v4

    sub-int v12, v3, v4

    .line 507
    .local v12, "textWidth":I
    int-to-float v3, v12

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getRateDividend()F

    move-result v4

    mul-float v11, v3, v4

    .line 508
    .local v11, "stretchedWidth":F
    invoke-virtual/range {p1 .. p1}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/text/Layout;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/text/Layout;->getSpacingMultiplier()F

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/text/Layout;->getSpacingAdd()F

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;)Landroid/text/BoringLayout$Metrics;

    move-result-object v9

    const/4 v10, 0x0

    move-object v3, v0

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v16

    float-to-int v5, v11

    move-object v3, v13

    move/from16 v17, v5

    move v5, v15

    move/from16 v18, v11

    .end local v11    # "stretchedWidth":F
    .local v18, "stretchedWidth":F
    move-object/from16 v11, v16

    move/from16 v16, v12

    .end local v12    # "textWidth":I
    .local v16, "textWidth":I
    move/from16 v12, v17

    invoke-static/range {v3 .. v12}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    move-result-object v3

    .line 509
    .local v3, "newLayout":Landroid/text/Layout;
    return-object v3

    .line 511
    .end local v3    # "newLayout":Landroid/text/Layout;
    .end local v15    # "layoutWidth":I
    .end local v16    # "textWidth":I
    .end local v18    # "stretchedWidth":F
    :cond_a9
    const/4 v3, 0x0

    .line 512
    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    int-to-float v6, v1

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getRateDividend()F

    move-result v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-static {v13, v3, v4, v5, v6}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    .line 513
    invoke-virtual/range {p1 .. p1}, Landroid/text/Layout;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    .line 514
    invoke-virtual {v3, v2}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    .line 515
    invoke-virtual/range {p1 .. p1}, Landroid/text/Layout;->getSpacingAdd()F

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/text/Layout;->getSpacingMultiplier()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    .line 516
    invoke-virtual {v3}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v3

    .line 517
    .restart local v3    # "newLayout":Landroid/text/Layout;
    return-object v3
.end method

.method public static blacklist forceReInitReactMetrics(Landroid/view/View;)V
    .registers 7
    .param p0, "view"    # Landroid/view/View;

    .line 827
    if-nez p0, :cond_3

    .line 828
    return-void

    .line 831
    :cond_3
    :try_start_3
    const-string v0, "com.facebook.react.uimanager.DisplayMetricsHolder"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/autoui/utils/ReflectUtils;->onClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/miui/autoui/utils/ReflectUtils;

    move-result-object v0

    const-string v1, "initDisplayMetrics"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 832
    invoke-virtual {v0, v1, v3}, Lcom/miui/autoui/utils/ReflectUtils;->method(Ljava/lang/String;[Ljava/lang/Class;)Lcom/miui/autoui/utils/ReflectUtils;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 833
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/miui/autoui/utils/ReflectUtils;->args([Ljava/lang/Object;)Lcom/miui/autoui/utils/ReflectUtils;

    move-result-object v0

    .line 834
    invoke-virtual {v0}, Lcom/miui/autoui/utils/ReflectUtils;->invoke()Ljava/lang/Object;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_2e} :catch_2f

    .line 837
    goto :goto_37

    .line 835
    :catch_2f
    move-exception v0

    .line 836
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ViewProcessor"

    const-string v2, "Reflect error on invoking react view."

    invoke-static {v1, v2}, Lcom/miui/autoui/AutoUILogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_37
    return-void
.end method

.method public static blacklist getBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;
    .registers 6
    .param p0, "view"    # Landroid/view/View;

    .line 674
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 675
    return-object v0

    .line 677
    :cond_4
    const/4 v1, 0x0

    .line 678
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v2, p0, Landroid/widget/ImageView;

    if-eqz v2, :cond_10

    .line 679
    move-object v2, p0

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 681
    :cond_10
    if-nez v1, :cond_16

    .line 682
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 684
    :cond_16
    instance-of v2, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_22

    .line 685
    move-object v0, v1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 687
    :cond_22
    instance-of v2, v1, Landroid/graphics/drawable/PaintDrawable;

    if-eqz v2, :cond_40

    .line 688
    move-object v2, v1

    check-cast v2, Landroid/graphics/drawable/PaintDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/PaintDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    .line 689
    .local v2, "paint":Landroid/graphics/Paint;
    if-nez v2, :cond_30

    .line 690
    return-object v0

    .line 692
    :cond_30
    invoke-virtual {v2}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v3

    .line 693
    .local v3, "shader":Landroid/graphics/Shader;
    instance-of v4, v3, Landroid/graphics/BitmapShader;

    if-eqz v4, :cond_40

    .line 694
    move-object v0, v3

    check-cast v0, Landroid/graphics/BitmapShader;

    invoke-virtual {v0}, Landroid/graphics/BitmapShader;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 698
    .end local v2    # "paint":Landroid/graphics/Paint;
    .end local v3    # "shader":Landroid/graphics/Shader;
    :cond_40
    instance-of v2, v1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v2, :cond_69

    move-object v2, v1

    check-cast v2, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v2

    if-lez v2, :cond_69

    .line 699
    move-object v2, v1

    check-cast v2, Landroid/graphics/drawable/LayerDrawable;

    move-object v3, v1

    check-cast v3, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 700
    .local v2, "topDrawable":Landroid/graphics/drawable/Drawable;
    instance-of v3, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_69

    .line 701
    move-object v0, v2

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 704
    .end local v2    # "topDrawable":Landroid/graphics/drawable/Drawable;
    :cond_69
    return-object v0
.end method

.method public static blacklist getColumnCount(Landroid/view/View;)I
    .registers 8
    .param p0, "view"    # Landroid/view/View;

    .line 253
    const-string v0, "ViewProcessor"

    if-nez p0, :cond_6

    .line 254
    const/4 v0, -0x1

    return v0

    .line 256
    :cond_6
    const/4 v1, -0x1

    .line 258
    .local v1, "itemCount":I
    const/4 v2, 0x0

    :try_start_8
    invoke-static {p0}, Lcom/miui/autoui/utils/ReflectUtils;->on(Ljava/lang/Object;)Lcom/miui/autoui/utils/ReflectUtils;

    move-result-object v3

    const-string v4, "getAdapter"

    new-array v5, v2, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Lcom/miui/autoui/utils/ReflectUtils;->method(Ljava/lang/String;[Ljava/lang/Class;)Lcom/miui/autoui/utils/ReflectUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/autoui/utils/ReflectUtils;->invoke()Ljava/lang/Object;

    move-result-object v3

    .line 259
    .local v3, "adapter":Ljava/lang/Object;
    invoke-static {v3}, Lcom/miui/autoui/utils/ReflectUtils;->on(Ljava/lang/Object;)Lcom/miui/autoui/utils/ReflectUtils;

    move-result-object v4

    const-string v5, "getItemCount"

    new-array v6, v2, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Lcom/miui/autoui/utils/ReflectUtils;->method(Ljava/lang/String;[Ljava/lang/Class;)Lcom/miui/autoui/utils/ReflectUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/autoui/utils/ReflectUtils;->invoke()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_2e} :catch_30

    move v1, v4

    .line 262
    .end local v3    # "adapter":Ljava/lang/Object;
    goto :goto_4b

    .line 260
    :catch_30
    move-exception v3

    .line 261
    .local v3, "ex":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getColumnCount ReflectUtils exception1 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/miui/autoui/AutoUILogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_4b
    :try_start_4b
    invoke-static {p0}, Lcom/miui/autoui/utils/ReflectUtils;->on(Ljava/lang/Object;)Lcom/miui/autoui/utils/ReflectUtils;

    move-result-object v3

    const-string v4, "getLayoutManager"

    new-array v5, v2, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Lcom/miui/autoui/utils/ReflectUtils;->method(Ljava/lang/String;[Ljava/lang/Class;)Lcom/miui/autoui/utils/ReflectUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/autoui/utils/ReflectUtils;->invoke()Ljava/lang/Object;

    move-result-object v3

    .line 265
    .local v3, "layoutMgr":Ljava/lang/Object;
    invoke-static {v3}, Lcom/miui/autoui/utils/ReflectUtils;->on(Ljava/lang/Object;)Lcom/miui/autoui/utils/ReflectUtils;

    move-result-object v4

    const-string v5, "getOrientation"

    new-array v6, v2, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Lcom/miui/autoui/utils/ReflectUtils;->method(Ljava/lang/String;[Ljava/lang/Class;)Lcom/miui/autoui/utils/ReflectUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/autoui/utils/ReflectUtils;->invoke()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 266
    .local v4, "layoutOrientation":I
    invoke-static {v3}, Lcom/miui/autoui/utils/ReflectUtils;->on(Ljava/lang/Object;)Lcom/miui/autoui/utils/ReflectUtils;

    move-result-object v5

    const-string v6, "getSpanCount"

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v2}, Lcom/miui/autoui/utils/ReflectUtils;->method(Ljava/lang/String;[Ljava/lang/Class;)Lcom/miui/autoui/utils/ReflectUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/autoui/utils/ReflectUtils;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 267
    .local v2, "spanCount":I
    if-nez v2, :cond_8a

    .line 268
    return v1

    .line 270
    :cond_8a
    if-nez v4, :cond_8f

    .line 272
    div-int v0, v1, v2
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_8e} :catch_90

    return v0

    .line 275
    :cond_8f
    return v2

    .line 277
    .end local v2    # "spanCount":I
    .end local v3    # "layoutMgr":Ljava/lang/Object;
    .end local v4    # "layoutOrientation":I
    :catch_90
    move-exception v2

    .line 278
    .local v2, "ex2":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getColumnCount ReflectUtils exception2 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/miui/autoui/AutoUILogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    return v1
.end method

.method public static blacklist getGravity(Landroid/view/View;)I
    .registers 2
    .param p0, "view"    # Landroid/view/View;

    .line 409
    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_c

    .line 410
    move-object v0, p0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getGravity()I

    move-result v0

    return v0

    .line 412
    :cond_c
    const v0, 0x800033

    return v0
.end method

.method public static blacklist getHorizontalGravity(Landroid/view/ViewGroup;Landroid/view/View;)I
    .registers 3
    .param p0, "group"    # Landroid/view/ViewGroup;
    .param p1, "child"    # Landroid/view/View;

    .line 364
    instance-of v0, p0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_c

    .line 365
    move-object v0, p0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-static {v0, p1}, Lcom/miui/autoui/utils/ViewProcessor;->getHorizontalGravityLinearLayout(Landroid/widget/LinearLayout;Landroid/view/View;)I

    move-result v0

    return v0

    .line 367
    :cond_c
    instance-of v0, p0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_18

    .line 368
    move-object v0, p0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-static {v0, p1}, Lcom/miui/autoui/utils/ViewProcessor;->getHorizontalGravityFrameLayout(Landroid/widget/FrameLayout;Landroid/view/View;)I

    move-result v0

    return v0

    .line 370
    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist getHorizontalGravityFrameLayout(Landroid/widget/FrameLayout;Landroid/view/View;)I
    .registers 6
    .param p0, "frameLayout"    # Landroid/widget/FrameLayout;
    .param p1, "child"    # Landroid/view/View;

    .line 394
    if-eqz p1, :cond_25

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/FrameLayout$LayoutParams;

    if-nez v0, :cond_b

    goto :goto_25

    .line 397
    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 399
    .local v0, "childLp":Landroid/widget/FrameLayout$LayoutParams;
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1a

    .line 400
    const v1, 0x800033

    .local v1, "gravity":I
    goto :goto_1c

    .line 402
    .end local v1    # "gravity":I
    :cond_1a
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 404
    .restart local v1    # "gravity":I
    :goto_1c
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result v2

    .line 405
    .local v2, "layoutDirection":I
    invoke-static {v1, v2}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v3

    return v3

    .line 395
    .end local v0    # "childLp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v1    # "gravity":I
    .end local v2    # "layoutDirection":I
    :cond_25
    :goto_25
    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist getHorizontalGravityLinearLayout(Landroid/widget/LinearLayout;Landroid/view/View;)I
    .registers 6
    .param p0, "linearLayout"    # Landroid/widget/LinearLayout;
    .param p1, "child"    # Landroid/view/View;

    .line 374
    if-eqz p1, :cond_3f

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/LinearLayout$LayoutParams;

    if-nez v0, :cond_b

    goto :goto_3f

    .line 378
    :cond_b
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    const v2, 0x800007

    if-ne v0, v1, :cond_31

    .line 381
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getGravity()I

    move-result v0

    and-int/2addr v0, v2

    .line 382
    .local v0, "horizontalGravity":I
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 383
    .local v1, "childLp":Landroid/widget/LinearLayout$LayoutParams;
    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-gez v2, :cond_26

    move v2, v0

    goto :goto_28

    :cond_26
    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 384
    .local v2, "gravity":I
    :goto_28
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutDirection()I

    move-result v3

    invoke-static {v2, v3}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v3

    return v3

    .line 388
    .end local v0    # "horizontalGravity":I
    .end local v1    # "childLp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v2    # "gravity":I
    :cond_31
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getGravity()I

    move-result v0

    and-int/2addr v0, v2

    .line 389
    .restart local v0    # "horizontalGravity":I
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutDirection()I

    move-result v1

    invoke-static {v0, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v1

    return v1

    .line 375
    .end local v0    # "horizontalGravity":I
    :cond_3f
    :goto_3f
    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist getSpanCountByOrientation(Landroid/view/View;Lcom/miui/autoui/ViewExtras;Ljava/lang/Object;I)I
    .registers 9
    .param p0, "view"    # Landroid/view/View;
    .param p1, "viewExtras"    # Lcom/miui/autoui/ViewExtras;
    .param p2, "layoutMgr"    # Ljava/lang/Object;
    .param p3, "orientation"    # I

    .line 311
    const/4 v0, -0x1

    if-eqz p2, :cond_54

    if-nez p0, :cond_6

    goto :goto_54

    .line 314
    :cond_6
    invoke-static {p2}, Lcom/miui/autoui/utils/ViewProcessor;->isGridLayoutManager(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    if-nez p3, :cond_1b

    invoke-static {p0}, Lcom/miui/autoui/utils/ViewProcessor;->isAllChildSameSize(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-static {p0}, Lcom/miui/autoui/utils/ViewProcessor;->isAllChildLoaded(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 316
    :cond_1a
    return v0

    .line 318
    :cond_1b
    invoke-static {p2}, Lcom/miui/autoui/utils/ReflectUtils;->on(Ljava/lang/Object;)Lcom/miui/autoui/utils/ReflectUtils;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    const-string v4, "getOrientation"

    invoke-virtual {v1, v4, v3}, Lcom/miui/autoui/utils/ReflectUtils;->method(Ljava/lang/String;[Ljava/lang/Class;)Lcom/miui/autoui/utils/ReflectUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/autoui/utils/ReflectUtils;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 319
    .local v1, "layoutOrientation":I
    if-ne v1, p3, :cond_53

    invoke-static {p2}, Lcom/miui/autoui/utils/ReflectUtils;->on(Ljava/lang/Object;)Lcom/miui/autoui/utils/ReflectUtils;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Class;

    const-string v4, "getSpanCount"

    invoke-virtual {v3, v4, v2}, Lcom/miui/autoui/utils/ReflectUtils;->method(Ljava/lang/String;[Ljava/lang/Class;)Lcom/miui/autoui/utils/ReflectUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/autoui/utils/ReflectUtils;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v3, v2

    .local v3, "spanCount":I
    invoke-virtual {p1}, Lcom/miui/autoui/ViewExtras;->getModifySpanCount()I

    move-result v4

    if-ne v2, v4, :cond_52

    goto :goto_53

    .line 322
    :cond_52
    return v3

    .line 320
    .end local v3    # "spanCount":I
    :cond_53
    :goto_53
    return v0

    .line 312
    .end local v1    # "layoutOrientation":I
    :cond_54
    :goto_54
    return v0
.end method

.method public static blacklist getTextLayout(Landroid/view/View;)Landroid/text/Layout;
    .registers 8
    .param p0, "view"    # Landroid/view/View;

    .line 416
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 417
    return-object v0

    .line 419
    :cond_4
    instance-of v1, p0, Landroid/widget/TextView;

    if-eqz v1, :cond_10

    .line 420
    move-object v0, p0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    return-object v0

    .line 422
    :cond_10
    sget-object v1, Lcom/miui/autoui/utils/ViewProcessor;->NAME_SET_WX_TEXT_VIEW:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "ReflectUtils error on invoking view.getTextLayout"

    const-string v4, "ViewProcessor"

    if-eqz v1, :cond_3c

    .line 424
    :try_start_25
    invoke-static {p0}, Lcom/miui/autoui/utils/ReflectUtils;->on(Ljava/lang/Object;)Lcom/miui/autoui/utils/ReflectUtils;

    move-result-object v1

    const-string v5, "getTextLayout"

    new-array v6, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v5, v6}, Lcom/miui/autoui/utils/ReflectUtils;->method(Ljava/lang/String;[Ljava/lang/Class;)Lcom/miui/autoui/utils/ReflectUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/autoui/utils/ReflectUtils;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/Layout;
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_37} :catch_38

    return-object v1

    .line 425
    :catch_38
    move-exception v1

    .line 426
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v4, v3}, Lcom/miui/autoui/AutoUILogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3c
    sget-object v1, Lcom/miui/autoui/utils/ViewProcessor;->NAME_SET_DX_TEXT_VIEW:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_63

    .line 432
    :try_start_4c
    invoke-static {p0}, Lcom/miui/autoui/utils/ReflectUtils;->on(Ljava/lang/Object;)Lcom/miui/autoui/utils/ReflectUtils;

    move-result-object v1

    const-string v5, "getStaticLayout"

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v5, v2}, Lcom/miui/autoui/utils/ReflectUtils;->method(Ljava/lang/String;[Ljava/lang/Class;)Lcom/miui/autoui/utils/ReflectUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/autoui/utils/ReflectUtils;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/Layout;
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_5e} :catch_5f

    return-object v1

    .line 433
    :catch_5f
    move-exception v1

    .line 434
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-static {v4, v3}, Lcom/miui/autoui/AutoUILogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_63
    return-object v0
.end method

.method public static blacklist getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .line 152
    if-nez p0, :cond_4

    .line 153
    const/4 v0, 0x0

    return-object v0

    .line 155
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getAutoUiInfoInfo()Ljava/lang/Object;

    move-result-object v0

    .line 156
    .local v0, "tag":Ljava/lang/Object;
    instance-of v1, v0, Lcom/miui/autoui/ViewExtras;

    if-eqz v1, :cond_10

    .line 157
    move-object v1, v0

    check-cast v1, Lcom/miui/autoui/ViewExtras;

    return-object v1

    .line 159
    :cond_10
    new-instance v1, Lcom/miui/autoui/ViewExtras;

    invoke-direct {v1}, Lcom/miui/autoui/ViewExtras;-><init>()V

    .line 160
    .local v1, "viewExtras":Lcom/miui/autoui/ViewExtras;
    invoke-virtual {p0, v1}, Landroid/view/View;->setAutoUiInfo(Ljava/lang/Object;)V

    .line 161
    return-object v1
.end method

.method public static blacklist getViewExtras(Ljava/lang/Object;)Lcom/miui/autoui/ViewExtras;
    .registers 2
    .param p0, "object"    # Ljava/lang/Object;

    .line 145
    instance-of v0, p0, Landroid/view/View;

    if-eqz v0, :cond_c

    .line 146
    move-object v0, p0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v0

    return-object v0

    .line 148
    :cond_c
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getViewIdHasCode(Landroid/view/View;)Ljava/lang/String;
    .registers 2
    .param p0, "view"    # Landroid/view/View;

    .line 667
    if-nez p0, :cond_8

    .line 668
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 670
    :cond_8
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getWindowTitle(Landroid/view/View;)Ljava/lang/CharSequence;
    .registers 5
    .param p0, "view"    # Landroid/view/View;

    .line 165
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 166
    return-object v0

    .line 168
    :cond_4
    invoke-static {p0}, Lcom/miui/autoui/utils/ViewProcessor;->isPopupDecorView(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 170
    :try_start_a
    invoke-static {p0}, Lcom/miui/autoui/utils/ReflectUtils;->on(Ljava/lang/Object;)Lcom/miui/autoui/utils/ReflectUtils;

    move-result-object v1

    const-string v2, "this$0"

    invoke-virtual {v1, v2}, Lcom/miui/autoui/utils/ReflectUtils;->field(Ljava/lang/String;)Lcom/miui/autoui/utils/ReflectUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/autoui/utils/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/PopupWindow;

    .line 171
    .local v1, "popupWindow":Landroid/widget/PopupWindow;
    if-nez v1, :cond_1d

    .line 172
    return-object v0

    .line 174
    :cond_1d
    invoke-static {v1}, Lcom/miui/autoui/utils/ReflectUtils;->on(Ljava/lang/Object;)Lcom/miui/autoui/utils/ReflectUtils;

    move-result-object v2

    const-string v3, "mContext"

    invoke-virtual {v2, v3}, Lcom/miui/autoui/utils/ReflectUtils;->field(Ljava/lang/String;)Lcom/miui/autoui/utils/ReflectUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/autoui/utils/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    .line 175
    .local v2, "context":Landroid/content/Context;
    instance-of v3, v2, Landroid/app/Activity;

    if-eqz v3, :cond_3d

    .line 176
    move-object v3, v2

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_3c} :catch_3e

    return-object v0

    .line 178
    :cond_3d
    return-object v0

    .line 179
    .end local v1    # "popupWindow":Landroid/widget/PopupWindow;
    .end local v2    # "context":Landroid/content/Context;
    :catch_3e
    move-exception v1

    .line 180
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWindowTitle ReflectUtils exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ViewProcessor"

    invoke-static {v3, v2}, Lcom/miui/autoui/AutoUILogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    return-object v0

    .line 184
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_5c
    invoke-virtual {p0}, Landroid/view/View;->getWindowTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist handleHorizontalList(Landroid/view/View;ILcom/miui/autoui/ViewExtras;)Z
    .registers 11
    .param p0, "view"    # Landroid/view/View;
    .param p1, "widthMeasureSpec"    # I
    .param p2, "info"    # Lcom/miui/autoui/ViewExtras;

    .line 605
    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_4c

    .line 606
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 607
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_4c

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4c

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_4c

    .line 608
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 609
    .local v2, "width":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 610
    .local v3, "widthMode":I
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/autoui/AutoPolicyUtils;->getCompScreenWidth()I

    move-result v4

    if-ne v2, v4, :cond_4b

    const/high16 v4, 0x40000000    # 2.0f

    if-eq v3, v4, :cond_2c

    goto :goto_4b

    .line 613
    :cond_2c
    move-object v4, p0

    check-cast v4, Landroid/view/ViewGroup;

    .line 614
    .local v4, "group":Landroid/view/ViewGroup;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_30
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-ge v5, v6, :cond_4c

    .line 615
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 616
    .local v6, "child":Landroid/view/View;
    invoke-static {v6}, Lcom/miui/autoui/utils/ViewProcessor;->isHorizontalListView(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_48

    .line 617
    const/4 v7, 0x1

    invoke-virtual {p2, v7}, Lcom/miui/autoui/ViewExtras;->setContainsHorizontalList(Z)V

    .line 618
    invoke-virtual {p2, v1}, Lcom/miui/autoui/ViewExtras;->setNeedStretch(Z)V

    .line 619
    return v7

    .line 614
    .end local v6    # "child":Landroid/view/View;
    :cond_48
    add-int/lit8 v5, v5, 0x1

    goto :goto_30

    .line 611
    .end local v4    # "group":Landroid/view/ViewGroup;
    .end local v5    # "i":I
    :cond_4b
    :goto_4b
    return v1

    .line 624
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "width":I
    .end local v3    # "widthMode":I
    :cond_4c
    return v1
.end method

.method public static blacklist handleWebView(Landroid/view/View;Lcom/miui/autoui/ViewExtras;)Z
    .registers 7
    .param p0, "view"    # Landroid/view/View;
    .param p1, "info"    # Lcom/miui/autoui/ViewExtras;

    .line 583
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 584
    return v0

    .line 586
    :cond_4
    instance-of v1, p0, Landroid/webkit/WebView;

    const/4 v2, 0x1

    if-eqz v1, :cond_13

    .line 587
    invoke-virtual {p1, v2}, Lcom/miui/autoui/ViewExtras;->setContainsHorizontalList(Z)V

    .line 588
    invoke-virtual {p1, v0}, Lcom/miui/autoui/ViewExtras;->setNeedStretch(Z)V

    .line 589
    invoke-virtual {p1, v2}, Lcom/miui/autoui/ViewExtras;->setWebView(Z)V

    .line 590
    return v2

    .line 593
    :cond_13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .local v1, "clz":Ljava/lang/Class;
    :goto_17
    if-eqz v1, :cond_34

    .line 594
    sget-object v3, Lcom/miui/autoui/utils/ViewProcessor;->NAME_SET_WEBVIEW:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 595
    invoke-virtual {p1, v2}, Lcom/miui/autoui/ViewExtras;->setContainsHorizontalList(Z)V

    .line 596
    invoke-virtual {p1, v0}, Lcom/miui/autoui/ViewExtras;->setNeedStretch(Z)V

    .line 597
    invoke-virtual {p1, v2}, Lcom/miui/autoui/ViewExtras;->setWebView(Z)V

    .line 598
    return v2

    .line 593
    :cond_2f
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_17

    .line 601
    .end local v1    # "clz":Ljava/lang/Class;
    :cond_34
    return v0
.end method

.method private static blacklist hasOverlayView(Landroid/view/View;)Z
    .registers 10
    .param p0, "view"    # Landroid/view/View;

    .line 754
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_62

    .line 755
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 756
    .local v0, "parent":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_62

    .line 757
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 758
    .local v2, "child":Landroid/view/View;
    if-eq v2, p0, :cond_5f

    .line 759
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    if-eqz v3, :cond_5f

    .line 760
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v3

    if-eqz v3, :cond_5f

    .line 761
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_5f

    .line 762
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 763
    .local v3, "childRect":Landroid/graphics/Rect;
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v7

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v8

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 764
    .local v4, "viewRect":Landroid/graphics/Rect;
    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_5f

    .line 765
    const/4 v5, 0x1

    return v5

    .line 756
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "childRect":Landroid/graphics/Rect;
    .end local v4    # "viewRect":Landroid/graphics/Rect;
    :cond_5f
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 770
    .end local v0    # "parent":Landroid/view/ViewGroup;
    .end local v1    # "i":I
    :cond_62
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isAllChildLoaded(Landroid/view/View;)Z
    .registers 6
    .param p0, "view"    # Landroid/view/View;

    .line 350
    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 351
    return v1

    .line 354
    :cond_6
    :try_start_6
    invoke-static {p0}, Lcom/miui/autoui/utils/ReflectUtils;->on(Ljava/lang/Object;)Lcom/miui/autoui/utils/ReflectUtils;

    move-result-object v0

    const-string v2, "getAdapter"

    new-array v3, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Lcom/miui/autoui/utils/ReflectUtils;->method(Ljava/lang/String;[Ljava/lang/Class;)Lcom/miui/autoui/utils/ReflectUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/autoui/utils/ReflectUtils;->invoke()Ljava/lang/Object;

    move-result-object v0

    .line 355
    .local v0, "adapter":Ljava/lang/Object;
    invoke-static {v0}, Lcom/miui/autoui/utils/ReflectUtils;->on(Ljava/lang/Object;)Lcom/miui/autoui/utils/ReflectUtils;

    move-result-object v2

    const-string v3, "getItemCount"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Lcom/miui/autoui/utils/ReflectUtils;->method(Ljava/lang/String;[Ljava/lang/Class;)Lcom/miui/autoui/utils/ReflectUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/autoui/utils/ReflectUtils;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 356
    .local v2, "itemCount":I
    move-object v3, p0

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_33} :catch_37

    if-ne v2, v3, :cond_36

    const/4 v1, 0x1

    :cond_36
    return v1

    .line 357
    .end local v0    # "adapter":Ljava/lang/Object;
    .end local v2    # "itemCount":I
    :catch_37
    move-exception v0

    .line 358
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAllChildLoaded ReflectUtils exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ViewProcessor"

    invoke-static {v3, v2}, Lcom/miui/autoui/AutoUILogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    return v1
.end method

.method private static blacklist isAllChildSameSize(Landroid/view/View;)Z
    .registers 12
    .param p0, "view"    # Landroid/view/View;

    .line 326
    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 327
    return v1

    .line 329
    :cond_6
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    .line 330
    .local v0, "group":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 331
    .local v2, "childCount":I
    const/4 v3, 0x1

    if-gt v2, v3, :cond_14

    .line 332
    if-ne v2, v3, :cond_13

    move v1, v3

    :cond_13
    return v1

    .line 334
    :cond_14
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 335
    .local v4, "childBase":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 336
    .local v5, "widthBase":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 337
    .local v6, "heightBase":I
    if-lez v5, :cond_49

    if-gtz v6, :cond_25

    goto :goto_49

    .line 340
    :cond_25
    const/4 v7, 0x1

    .local v7, "i":I
    :goto_26
    if-ge v7, v2, :cond_48

    .line 341
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 342
    .local v8, "child":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    sub-int/2addr v9, v5

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    const/4 v10, 0x5

    if-gt v9, v10, :cond_47

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    sub-int/2addr v9, v6

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-le v9, v10, :cond_44

    goto :goto_47

    .line 340
    .end local v8    # "child":Landroid/view/View;
    :cond_44
    add-int/lit8 v7, v7, 0x1

    goto :goto_26

    .line 343
    .restart local v8    # "child":Landroid/view/View;
    :cond_47
    :goto_47
    return v1

    .line 346
    .end local v7    # "i":I
    .end local v8    # "child":Landroid/view/View;
    :cond_48
    return v3

    .line 338
    :cond_49
    :goto_49
    return v3
.end method

.method public static blacklist isAtomic(Landroid/view/View;)Z
    .registers 2
    .param p0, "view"    # Landroid/view/View;

    .line 823
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_10

    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_e

    goto :goto_10

    :cond_e
    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 v0, 0x1

    :goto_11
    return v0
.end method

.method public static blacklist isBackgroundImage(Landroid/view/View;)Z
    .registers 8
    .param p0, "view"    # Landroid/view/View;

    .line 708
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 709
    return v0

    .line 711
    :cond_4
    invoke-static {p0}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v1

    .line 712
    .local v1, "viewExtras":Lcom/miui/autoui/ViewExtras;
    invoke-virtual {v1}, Lcom/miui/autoui/ViewExtras;->isFloatIcon()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 713
    return v0

    .line 716
    :cond_f
    invoke-static {p0}, Lcom/miui/autoui/utils/ViewProcessor;->getBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 718
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    const/4 v3, 0x1

    if-eqz v2, :cond_44

    .line 719
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v6

    mul-float/2addr v5, v6

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_44

    .line 720
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3f333333    # 0.7f

    mul-float/2addr v5, v6

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_44

    .line 721
    return v3

    .line 724
    :cond_44
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v4, v4, Landroid/view/ViewGroup;

    if-eqz v4, :cond_74

    .line 725
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 726
    .local v4, "parent":Landroid/view/ViewGroup;
    invoke-static {v4}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v5

    .line 727
    .local v5, "parentInfo":Lcom/miui/autoui/ViewExtras;
    invoke-virtual {v5}, Lcom/miui/autoui/ViewExtras;->isOriginalSize()Z

    move-result v6

    if-eqz v6, :cond_5d

    .line 728
    return v0

    .line 731
    :cond_5d
    invoke-static {p0, v4}, Lcom/miui/autoui/utils/ViewProcessor;->isFillParent(Landroid/view/View;Landroid/view/ViewGroup;)Z

    move-result v0

    if-eqz v0, :cond_6e

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ne v0, v3, :cond_6e

    .line 732
    invoke-static {v4}, Lcom/miui/autoui/utils/ViewProcessor;->isBackgroundImage(Landroid/view/View;)Z

    move-result v0

    return v0

    .line 734
    .end local v4    # "parent":Landroid/view/ViewGroup;
    .end local v5    # "parentInfo":Lcom/miui/autoui/ViewExtras;
    :cond_6e
    nop

    .line 737
    invoke-static {p0}, Lcom/miui/autoui/utils/ViewProcessor;->hasOverlayView(Landroid/view/View;)Z

    move-result v0

    return v0

    .line 735
    :cond_74
    return v0
.end method

.method private static blacklist isClassMatch(Ljava/lang/Object;Ljava/util/Set;Ljava/lang/String;)Z
    .registers 7
    .param p0, "object"    # Ljava/lang/Object;
    .param p2, "rootClass"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 646
    .local p1, "nameSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 647
    return v0

    .line 649
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .local v1, "clz":Ljava/lang/Class;
    :goto_8
    if-eqz v1, :cond_22

    .line 650
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 651
    .local v2, "className":Ljava/lang/String;
    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 652
    const/4 v0, 0x1

    return v0

    .line 654
    :cond_16
    invoke-static {v2, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 655
    return v0

    .line 649
    .end local v2    # "className":Ljava/lang/String;
    :cond_1d
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_8

    .line 658
    .end local v1    # "clz":Ljava/lang/Class;
    :cond_22
    return v0
.end method

.method public static blacklist isConstraintLayout(Landroid/view/View;)Z
    .registers 2
    .param p0, "view"    # Landroid/view/View;

    .line 525
    sget-object v0, Lcom/miui/autoui/utils/ViewProcessor;->NAME_SET_CONSTRAINT_LAYOUT:Ljava/util/HashSet;

    invoke-static {p0, v0}, Lcom/miui/autoui/utils/ViewProcessor;->isViewMatch(Landroid/view/View;Ljava/util/Set;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isDXTextView(Landroid/view/View;)Z
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .line 543
    if-nez p0, :cond_4

    .line 544
    const/4 v0, 0x0

    return v0

    .line 546
    :cond_4
    sget-object v0, Lcom/miui/autoui/utils/ViewProcessor;->NAME_SET_DX_TEXT_VIEW:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static blacklist isFillParent(Landroid/view/View;Landroid/view/ViewGroup;)Z
    .registers 7
    .param p0, "view"    # Landroid/view/View;
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .line 741
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 742
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_f

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v1, v3, :cond_f

    .line 743
    return v2

    .line 745
    :cond_f
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    sub-int/2addr v1, v3

    .line 746
    .local v1, "actualWidth":I
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 747
    .local v3, "actualHeight":I
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    if-lt v4, v1, :cond_38

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    if-lt v4, v3, :cond_38

    .line 748
    return v2

    .line 750
    :cond_38
    const/4 v2, 0x0

    return v2
.end method

.method public static blacklist isFloatImageView(Landroid/view/View;)Z
    .registers 8
    .param p0, "view"    # Landroid/view/View;

    .line 774
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 775
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v1, p0, Landroid/widget/ImageView;

    const/4 v2, 0x0

    if-eqz v1, :cond_38

    .line 776
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 777
    .local v1, "width":I
    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 778
    .local v3, "height":I
    if-lez v1, :cond_37

    if-gtz v3, :cond_12

    goto :goto_37

    .line 781
    :cond_12
    int-to-float v4, v1

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/autoui/AutoPolicyUtils;->getCompScreenWidth()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3e800000    # 0.25f

    mul-float/2addr v5, v6

    cmpg-float v4, v4, v5

    if-gez v4, :cond_38

    int-to-float v4, v3

    .line 782
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/autoui/AutoPolicyUtils;->getCompScreenHeight()I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3e19999a    # 0.15f

    mul-float/2addr v5, v6

    cmpg-float v4, v4, v5

    if-gez v4, :cond_38

    .line 783
    const/4 v2, 0x1

    return v2

    .line 779
    :cond_37
    :goto_37
    return v2

    .line 786
    .end local v1    # "width":I
    .end local v3    # "height":I
    :cond_38
    return v2
.end method

.method public static blacklist isFloatView(Landroid/view/View;)Z
    .registers 5
    .param p0, "rootView"    # Landroid/view/View;

    .line 551
    invoke-static {p0}, Lcom/miui/autoui/utils/ViewProcessor;->isPopupDecorView(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_29

    instance-of v0, p0, Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_29

    .line 552
    move-object v0, p0

    check-cast v0, Lcom/android/internal/policy/DecorView;

    .line 553
    .local v0, "decorView":Lcom/android/internal/policy/DecorView;
    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getPhoneWindow()Lcom/android/internal/policy/PhoneWindow;

    move-result-object v2

    .line 555
    .local v2, "phoneWindow":Lcom/android/internal/policy/PhoneWindow;
    if-eqz v2, :cond_27

    .line 556
    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->isFloating()Z

    move-result v3

    if-nez v3, :cond_27

    .line 557
    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v3, v3, 0x2

    if-lez v3, :cond_25

    goto :goto_27

    :cond_25
    const/4 v1, 0x0

    goto :goto_28

    :cond_27
    :goto_27
    nop

    .line 555
    :goto_28
    return v1

    .line 559
    .end local v0    # "decorView":Lcom/android/internal/policy/DecorView;
    .end local v2    # "phoneWindow":Lcom/android/internal/policy/PhoneWindow;
    :cond_29
    return v1
.end method

.method private static blacklist isGridLayoutManager(Ljava/lang/Object;)Z
    .registers 3
    .param p0, "layoutMgr"    # Ljava/lang/Object;

    .line 575
    sget-object v0, Lcom/miui/autoui/utils/ViewProcessor;->NAME_SET_GRID_LAYOUT_MGR:Ljava/util/HashSet;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/miui/autoui/utils/ViewProcessor;->isClassMatch(Ljava/lang/Object;Ljava/util/Set;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static blacklist isHorizontalListView(Landroid/view/View;)Z
    .registers 5
    .param p0, "view"    # Landroid/view/View;

    .line 628
    instance-of v0, p0, Landroid/widget/AdapterView;

    const/4 v1, 0x0

    if-eqz v0, :cond_2d

    .line 630
    :try_start_5
    invoke-static {p0}, Lcom/miui/autoui/utils/ReflectUtils;->on(Ljava/lang/Object;)Lcom/miui/autoui/utils/ReflectUtils;

    move-result-object v0

    const-string v2, "getAdapter"

    new-array v3, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Lcom/miui/autoui/utils/ReflectUtils;->method(Ljava/lang/String;[Ljava/lang/Class;)Lcom/miui/autoui/utils/ReflectUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/autoui/utils/ReflectUtils;->invoke()Ljava/lang/Object;

    move-result-object v0

    .line 631
    .local v0, "adapter":Ljava/lang/Object;
    instance-of v2, v0, Landroid/widget/ListAdapter;

    if-eqz v2, :cond_28

    .line 632
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "HorizontalListView"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_27} :catch_29

    return v1

    .line 636
    .end local v0    # "adapter":Ljava/lang/Object;
    :cond_28
    goto :goto_2d

    .line 634
    :catch_29
    move-exception v0

    .line 635
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 638
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2d
    :goto_2d
    return v1
.end method

.method public static blacklist isIcon(Landroid/view/View;)Z
    .registers 7
    .param p0, "view"    # Landroid/view/View;

    .line 790
    instance-of v0, p0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_36

    .line 791
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 792
    .local v0, "width":I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 793
    .local v2, "height":I
    if-lez v0, :cond_35

    if-gtz v2, :cond_12

    goto :goto_35

    .line 796
    :cond_12
    int-to-float v3, v2

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/autoui/AutoPolicyUtils;->getCompScreenHeight()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3d99999a    # 0.075f

    mul-float/2addr v4, v5

    cmpg-float v3, v3, v4

    if-gez v3, :cond_33

    sub-int v3, v0, v2

    .line 797
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x41200000    # 10.0f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_33

    const/4 v1, 0x1

    goto :goto_34

    :cond_33
    nop

    .line 796
    :goto_34
    return v1

    .line 794
    :cond_35
    :goto_35
    return v1

    .line 799
    .end local v0    # "width":I
    .end local v2    # "height":I
    :cond_36
    return v1
.end method

.method public static blacklist isPopupDecorView(Landroid/view/View;)Z
    .registers 2
    .param p0, "view"    # Landroid/view/View;

    .line 563
    sget-object v0, Lcom/miui/autoui/utils/ViewProcessor;->NAME_SET_VIEW_POPUP_DECOR:Ljava/util/HashSet;

    invoke-static {p0, v0}, Lcom/miui/autoui/utils/ViewProcessor;->isViewMatch(Landroid/view/View;Ljava/util/Set;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isReactImageView(Landroid/view/View;)Z
    .registers 2
    .param p0, "view"    # Landroid/view/View;

    .line 571
    sget-object v0, Lcom/miui/autoui/utils/ViewProcessor;->NAME_SET_REACT_IMAGE_VIEW:Ljava/util/HashSet;

    invoke-static {p0, v0}, Lcom/miui/autoui/utils/ViewProcessor;->isViewMatch(Landroid/view/View;Ljava/util/Set;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isReactRootView(Landroid/view/View;)Z
    .registers 2
    .param p0, "view"    # Landroid/view/View;

    .line 567
    sget-object v0, Lcom/miui/autoui/utils/ViewProcessor;->NAME_SET_REACT_NATIVE_VIEW:Ljava/util/HashSet;

    invoke-static {p0, v0}, Lcom/miui/autoui/utils/ViewProcessor;->isViewMatch(Landroid/view/View;Ljava/util/Set;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isRecyclerView(Landroid/view/View;)Z
    .registers 2
    .param p0, "view"    # Landroid/view/View;

    .line 189
    sget-object v0, Lcom/miui/autoui/utils/ViewProcessor;->NAME_SET_RECYCLER_VIEW:Ljava/util/HashSet;

    invoke-static {p0, v0}, Lcom/miui/autoui/utils/ViewProcessor;->isViewMatch(Landroid/view/View;Ljava/util/Set;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isRedDot(Landroid/view/View;)Z
    .registers 7
    .param p0, "view"    # Landroid/view/View;

    .line 803
    instance-of v0, p0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_36

    .line 804
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 805
    .local v0, "width":I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 806
    .local v2, "height":I
    if-lez v0, :cond_35

    if-gtz v2, :cond_12

    goto :goto_35

    .line 809
    :cond_12
    int-to-float v3, v2

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/autoui/AutoPolicyUtils;->getCompScreenHeight()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3ca3d70a    # 0.02f

    mul-float/2addr v4, v5

    cmpg-float v3, v3, v4

    if-gez v3, :cond_33

    sub-int v3, v0, v2

    .line 810
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_33

    const/4 v1, 0x1

    goto :goto_34

    :cond_33
    nop

    .line 809
    :goto_34
    return v1

    .line 807
    :cond_35
    :goto_35
    return v1

    .line 812
    .end local v0    # "width":I
    .end local v2    # "height":I
    :cond_36
    return v1
.end method

.method private static blacklist isStaggeredGridLayoutManager(Ljava/lang/Object;)Z
    .registers 3
    .param p0, "layoutMgr"    # Ljava/lang/Object;

    .line 579
    sget-object v0, Lcom/miui/autoui/utils/ViewProcessor;->NAME_SET_STAGGERED_GRID_LAYOUT_MGR:Ljava/util/HashSet;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/miui/autoui/utils/ViewProcessor;->isClassMatch(Ljava/lang/Object;Ljava/util/Set;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isTextView(Landroid/view/View;)Z
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .line 529
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 530
    return v0

    .line 532
    :cond_4
    instance-of v1, p0, Landroid/widget/TextView;

    if-nez v1, :cond_14

    invoke-static {p0}, Lcom/miui/autoui/utils/ViewProcessor;->isWXTextView(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_14

    invoke-static {p0}, Lcom/miui/autoui/utils/ViewProcessor;->isDXTextView(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_15

    :cond_14
    const/4 v0, 0x1

    :cond_15
    return v0
.end method

.method private static blacklist isViewMatch(Landroid/view/View;Ljava/util/Set;)Z
    .registers 3
    .param p0, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 642
    .local p1, "nameSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v0, Lcom/miui/autoui/utils/ViewProcessor;->CLASS_NAME_VIEW:Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/miui/autoui/utils/ViewProcessor;->isClassMatch(Ljava/lang/Object;Ljava/util/Set;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isViewPager(Landroid/view/View;)Z
    .registers 2
    .param p0, "view"    # Landroid/view/View;

    .line 521
    sget-object v0, Lcom/miui/autoui/utils/ViewProcessor;->NAME_SET_VIEW_PAGER:Ljava/util/HashSet;

    invoke-static {p0, v0}, Lcom/miui/autoui/utils/ViewProcessor;->isViewMatch(Landroid/view/View;Ljava/util/Set;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isVisible(Landroid/view/View;)Z
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .line 816
    if-eqz p0, :cond_18

    .line 817
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_18

    .line 818
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_18

    .line 819
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 816
    :goto_19
    return v0
.end method

.method public static blacklist isWXTextView(Landroid/view/View;)Z
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .line 536
    if-nez p0, :cond_4

    .line 537
    const/4 v0, 0x0

    return v0

    .line 539
    :cond_4
    sget-object v0, Lcom/miui/autoui/utils/ViewProcessor;->NAME_SET_WX_TEXT_VIEW:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$stretchSpanForVerticalRecycler$0(Ljava/lang/Object;ILandroid/view/View;I)V
    .registers 9
    .param p0, "layoutMgr"    # Ljava/lang/Object;
    .param p1, "finalModifySpanCount"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "spanCount"    # I

    .line 233
    invoke-static {p0}, Lcom/miui/autoui/utils/ReflectUtils;->on(Ljava/lang/Object;)Lcom/miui/autoui/utils/ReflectUtils;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "setSpanCount"

    invoke-virtual {v0, v3, v2}, Lcom/miui/autoui/utils/ReflectUtils;->method(Ljava/lang/String;[Ljava/lang/Class;)Lcom/miui/autoui/utils/ReflectUtils;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/miui/autoui/utils/ReflectUtils;->args([Ljava/lang/Object;)Lcom/miui/autoui/utils/ReflectUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/autoui/utils/ReflectUtils;->invoke()Ljava/lang/Object;

    .line 234
    invoke-static {p2, p0, p3}, Lcom/miui/autoui/utils/ViewProcessor;->solveUnequallyDividedItem(Landroid/view/View;Ljava/lang/Object;I)V

    .line 235
    return-void
.end method

.method public static blacklist makeMeasureSpec(II)I
    .registers 4
    .param p0, "measureLength"    # I
    .param p1, "measureSpec"    # I

    .line 662
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 663
    .local v0, "measureMode":I
    invoke-static {p0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    return v1
.end method

.method public static blacklist needStretchTextLayout(Landroid/view/View;Landroid/text/Layout;)Z
    .registers 10
    .param p0, "view"    # Landroid/view/View;
    .param p1, "layout"    # Landroid/text/Layout;

    .line 471
    const/4 v0, 0x0

    if-eqz p0, :cond_66

    if-nez p1, :cond_6

    goto :goto_66

    .line 474
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    .line 475
    .local v1, "viewTotalPadding":I
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    if-lez v2, :cond_1a

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    goto :goto_1e

    :cond_1a
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    :goto_1e
    sub-int/2addr v2, v1

    .line 476
    .local v2, "viewWidth":I
    invoke-virtual {p1}, Landroid/text/Layout;->getEllipsizedWidth()I

    move-result v3

    .line 477
    .local v3, "ellipsizedWidth":I
    const/high16 v4, 0x100000

    if-eq v3, v4, :cond_31

    sub-int v4, v3, v2

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const/4 v5, 0x5

    if-le v4, v5, :cond_31

    .line 478
    return v0

    .line 480
    :cond_31
    instance-of v4, p0, Landroid/widget/TextView;

    if-eqz v4, :cond_3d

    move-object v4, p0

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_41

    :cond_3d
    invoke-virtual {p1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    .line 481
    .local v4, "text":Ljava/lang/CharSequence;
    :goto_41
    if-eqz v4, :cond_52

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_52

    .line 482
    return v0

    .line 484
    :cond_52
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-virtual {p1, v5}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v5

    .line 485
    .local v5, "ellipsisCount":I
    if-gtz v5, :cond_64

    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v7

    if-le v7, v6, :cond_65

    :cond_64
    move v0, v6

    :cond_65
    return v0

    .line 472
    .end local v1    # "viewTotalPadding":I
    .end local v2    # "viewWidth":I
    .end local v3    # "ellipsizedWidth":I
    .end local v4    # "text":Ljava/lang/CharSequence;
    .end local v5    # "ellipsisCount":I
    :cond_66
    :goto_66
    return v0
.end method

.method public static blacklist setTextLayout(Landroid/view/View;Landroid/text/Layout;)V
    .registers 10
    .param p0, "view"    # Landroid/view/View;
    .param p1, "layout"    # Landroid/text/Layout;

    .line 441
    if-nez p0, :cond_3

    .line 442
    return-void

    .line 444
    :cond_3
    instance-of v0, p0, Landroid/widget/TextView;

    const-string v1, "ViewProcessor"

    if-eqz v0, :cond_1d

    .line 446
    :try_start_9
    invoke-static {p0}, Lcom/miui/autoui/utils/ReflectUtils;->on(Ljava/lang/Object;)Lcom/miui/autoui/utils/ReflectUtils;

    move-result-object v0

    const-string v2, "mLayout"

    invoke-virtual {v0, v2}, Lcom/miui/autoui/utils/ReflectUtils;->field(Ljava/lang/String;)Lcom/miui/autoui/utils/ReflectUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/autoui/utils/ReflectUtils;->set(Ljava/lang/Object;)Lcom/miui/autoui/utils/ReflectUtils;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_16} :catch_17

    .line 449
    goto :goto_1d

    .line 447
    :catch_17
    move-exception v0

    .line 448
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ReflectUtils error on setting view.mLayout"

    invoke-static {v1, v2}, Lcom/miui/autoui/AutoUILogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1d
    :goto_1d
    sget-object v0, Lcom/miui/autoui/utils/ViewProcessor;->NAME_SET_WX_TEXT_VIEW:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "ReflectUtils error on invoking view.setTextLayout"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_51

    .line 453
    :try_start_31
    invoke-static {p0}, Lcom/miui/autoui/utils/ReflectUtils;->on(Ljava/lang/Object;)Lcom/miui/autoui/utils/ReflectUtils;

    move-result-object v0

    const-string v5, "setTextLayout"

    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Landroid/text/Layout;

    aput-object v7, v6, v3

    invoke-virtual {v0, v5, v6}, Lcom/miui/autoui/utils/ReflectUtils;->method(Ljava/lang/String;[Ljava/lang/Class;)Lcom/miui/autoui/utils/ReflectUtils;

    move-result-object v0

    new-array v5, v4, [Ljava/lang/Object;

    aput-object p1, v5, v3

    invoke-virtual {v0, v5}, Lcom/miui/autoui/utils/ReflectUtils;->args([Ljava/lang/Object;)Lcom/miui/autoui/utils/ReflectUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/autoui/utils/ReflectUtils;->invoke()Ljava/lang/Object;
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_4c} :catch_4d

    .line 456
    goto :goto_51

    .line 454
    :catch_4d
    move-exception v0

    .line 455
    .local v0, "e2":Ljava/lang/Exception;
    invoke-static {v1, v2}, Lcom/miui/autoui/AutoUILogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    .end local v0    # "e2":Ljava/lang/Exception;
    :cond_51
    :goto_51
    instance-of v0, p1, Landroid/text/StaticLayout;

    if-eqz v0, :cond_85

    .line 460
    sget-object v0, Lcom/miui/autoui/utils/ViewProcessor;->NAME_SET_DX_TEXT_VIEW:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_85

    .line 462
    :try_start_65
    invoke-static {p0}, Lcom/miui/autoui/utils/ReflectUtils;->on(Ljava/lang/Object;)Lcom/miui/autoui/utils/ReflectUtils;

    move-result-object v0

    const-string v5, "setStaticLayout"

    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Landroid/text/Layout;

    aput-object v7, v6, v3

    invoke-virtual {v0, v5, v6}, Lcom/miui/autoui/utils/ReflectUtils;->method(Ljava/lang/String;[Ljava/lang/Class;)Lcom/miui/autoui/utils/ReflectUtils;

    move-result-object v0

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v3

    invoke-virtual {v0, v4}, Lcom/miui/autoui/utils/ReflectUtils;->args([Ljava/lang/Object;)Lcom/miui/autoui/utils/ReflectUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/autoui/utils/ReflectUtils;->invoke()Ljava/lang/Object;
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_80} :catch_81

    .line 465
    goto :goto_85

    .line 463
    :catch_81
    move-exception v0

    .line 464
    .restart local v0    # "e2":Ljava/lang/Exception;
    invoke-static {v1, v2}, Lcom/miui/autoui/AutoUILogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    .end local v0    # "e2":Ljava/lang/Exception;
    :cond_85
    :goto_85
    return-void
.end method

.method private static blacklist solveUnequallyDividedItem(Landroid/view/View;Ljava/lang/Object;I)V
    .registers 13
    .param p0, "view"    # Landroid/view/View;
    .param p1, "layoutMgr"    # Ljava/lang/Object;
    .param p2, "spanCount"    # I

    .line 284
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_64

    if-lez p2, :cond_64

    invoke-static {p1}, Lcom/miui/autoui/utils/ViewProcessor;->isStaggeredGridLayoutManager(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_64

    .line 287
    :cond_d
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    .line 288
    .local v0, "group":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 289
    .local v1, "childCount":I
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/2addr v2, p2

    .line 290
    .local v2, "spanWidth":I
    if-lez v1, :cond_63

    if-nez v2, :cond_1e

    goto :goto_63

    .line 293
    :cond_1e
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1f
    if-ge v3, v1, :cond_62

    .line 295
    :try_start_21
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 296
    .local v4, "child":Landroid/view/View;
    if-eqz v4, :cond_55

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_55

    .line 297
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 298
    .local v5, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v6

    div-int/2addr v6, v2

    if-ne v6, p2, :cond_55

    .line 299
    invoke-static {v5}, Lcom/miui/autoui/utils/ReflectUtils;->on(Ljava/lang/Object;)Lcom/miui/autoui/utils/ReflectUtils;

    move-result-object v6

    const-string v7, "setFullSpan"

    const/4 v8, 0x0

    new-array v9, v8, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v9}, Lcom/miui/autoui/utils/ReflectUtils;->method(Ljava/lang/String;[Ljava/lang/Class;)Lcom/miui/autoui/utils/ReflectUtils;

    move-result-object v6

    const/4 v7, 0x1

    new-array v9, v7, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v9, v8

    invoke-virtual {v6, v9}, Lcom/miui/autoui/utils/ReflectUtils;->args([Ljava/lang/Object;)Lcom/miui/autoui/utils/ReflectUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/miui/autoui/utils/ReflectUtils;->invoke()Ljava/lang/Object;
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_55} :catch_59

    .line 305
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_55
    nop

    .line 293
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 302
    :catch_59
    move-exception v4

    .line 303
    .local v4, "e":Ljava/lang/Exception;
    const-string v5, "ViewProcessor"

    const-string v6, "solveUnequallyDividedItem: Exception"

    invoke-static {v5, v6}, Lcom/miui/autoui/AutoUILogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    return-void

    .line 307
    .end local v3    # "i":I
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_62
    return-void

    .line 291
    :cond_63
    :goto_63
    return-void

    .line 285
    .end local v0    # "group":Landroid/view/ViewGroup;
    .end local v1    # "childCount":I
    .end local v2    # "spanWidth":I
    :cond_64
    :goto_64
    return-void
.end method

.method public static blacklist stretchSpanForHorizontalRecycler(Landroid/view/View;Lcom/miui/autoui/ViewExtras;)V
    .registers 12
    .param p0, "view"    # Landroid/view/View;
    .param p1, "viewExtras"    # Lcom/miui/autoui/ViewExtras;

    .line 193
    if-eqz p0, :cond_56

    if-nez p1, :cond_5

    goto :goto_56

    .line 197
    :cond_5
    const/4 v0, 0x0

    :try_start_6
    invoke-static {p0}, Lcom/miui/autoui/utils/ReflectUtils;->on(Ljava/lang/Object;)Lcom/miui/autoui/utils/ReflectUtils;

    move-result-object v1

    const-string v2, "getLayoutManager"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Lcom/miui/autoui/utils/ReflectUtils;->method(Ljava/lang/String;[Ljava/lang/Class;)Lcom/miui/autoui/utils/ReflectUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/autoui/utils/ReflectUtils;->invoke()Ljava/lang/Object;

    move-result-object v1

    .line 198
    .local v1, "layoutMgr":Ljava/lang/Object;
    invoke-static {p0, p1, v1, v0}, Lcom/miui/autoui/utils/ViewProcessor;->getSpanCountByOrientation(Landroid/view/View;Lcom/miui/autoui/ViewExtras;Ljava/lang/Object;I)I

    move-result v2

    .line 199
    .local v2, "spanCount":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1e

    .line 200
    return-void

    .line 202
    :cond_1e
    const/4 v4, -0x1

    .line 203
    .local v4, "modifySpanCount":I
    const/4 v5, 0x1

    if-le v2, v5, :cond_48

    .line 204
    int-to-float v6, v2

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v7

    mul-float/2addr v6, v7

    float-to-int v4, v6

    .line 205
    invoke-static {v1}, Lcom/miui/autoui/utils/ReflectUtils;->on(Ljava/lang/Object;)Lcom/miui/autoui/utils/ReflectUtils;

    move-result-object v6

    const-string v7, "setSpanCount"

    new-array v8, v5, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v0

    invoke-virtual {v6, v7, v8}, Lcom/miui/autoui/utils/ReflectUtils;->method(Ljava/lang/String;[Ljava/lang/Class;)Lcom/miui/autoui/utils/ReflectUtils;

    move-result-object v6

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v0

    invoke-virtual {v6, v7}, Lcom/miui/autoui/utils/ReflectUtils;->args([Ljava/lang/Object;)Lcom/miui/autoui/utils/ReflectUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/miui/autoui/utils/ReflectUtils;->invoke()Ljava/lang/Object;

    .line 207
    :cond_48
    if-eq v4, v3, :cond_4d

    .line 208
    invoke-virtual {p1, v4}, Lcom/miui/autoui/ViewExtras;->setModifySpanCount(I)V

    .line 210
    :cond_4d
    invoke-virtual {p1, v5}, Lcom/miui/autoui/ViewExtras;->setRecyclerViewModifyState(I)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_50} :catch_51

    .line 213
    .end local v1    # "layoutMgr":Ljava/lang/Object;
    .end local v2    # "spanCount":I
    .end local v4    # "modifySpanCount":I
    goto :goto_55

    .line 211
    :catch_51
    move-exception v1

    .line 212
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p1, v0}, Lcom/miui/autoui/ViewExtras;->setRecyclerViewModifyState(I)V

    .line 214
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_55
    return-void

    .line 194
    :cond_56
    :goto_56
    return-void
.end method

.method public static blacklist stretchSpanForVerticalRecycler(Landroid/view/View;Lcom/miui/autoui/ViewExtras;)V
    .registers 13
    .param p0, "view"    # Landroid/view/View;
    .param p1, "viewExtras"    # Lcom/miui/autoui/ViewExtras;

    .line 217
    if-eqz p0, :cond_70

    if-nez p1, :cond_5

    goto :goto_70

    .line 221
    :cond_5
    const/4 v0, 0x0

    :try_start_6
    invoke-static {p0}, Lcom/miui/autoui/utils/ReflectUtils;->on(Ljava/lang/Object;)Lcom/miui/autoui/utils/ReflectUtils;

    move-result-object v1

    const-string v2, "getLayoutManager"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Lcom/miui/autoui/utils/ReflectUtils;->method(Ljava/lang/String;[Ljava/lang/Class;)Lcom/miui/autoui/utils/ReflectUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/autoui/utils/ReflectUtils;->invoke()Ljava/lang/Object;

    move-result-object v1

    .line 222
    .local v1, "layoutMgr":Ljava/lang/Object;
    const/4 v2, 0x1

    invoke-static {p0, p1, v1, v2}, Lcom/miui/autoui/utils/ViewProcessor;->getSpanCountByOrientation(Landroid/view/View;Lcom/miui/autoui/ViewExtras;Ljava/lang/Object;I)I

    move-result v3

    .line 223
    .local v3, "spanCount":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_1f

    .line 224
    return-void

    .line 226
    :cond_1f
    const/4 v5, -0x1

    .line 227
    .local v5, "modifySpanCount":I
    invoke-static {p0}, Lcom/miui/autoui/utils/ReflectUtils;->on(Ljava/lang/Object;)Lcom/miui/autoui/utils/ReflectUtils;

    move-result-object v6

    const-string v7, "getAdapter"

    new-array v8, v0, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8}, Lcom/miui/autoui/utils/ReflectUtils;->method(Ljava/lang/String;[Ljava/lang/Class;)Lcom/miui/autoui/utils/ReflectUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/miui/autoui/utils/ReflectUtils;->invoke()Ljava/lang/Object;

    move-result-object v6

    .line 228
    .local v6, "adapter":Ljava/lang/Object;
    invoke-static {v6}, Lcom/miui/autoui/utils/ReflectUtils;->on(Ljava/lang/Object;)Lcom/miui/autoui/utils/ReflectUtils;

    move-result-object v7

    const-string v8, "getItemCount"

    new-array v9, v0, [Ljava/lang/Class;

    invoke-virtual {v7, v8, v9}, Lcom/miui/autoui/utils/ReflectUtils;->method(Ljava/lang/String;[Ljava/lang/Class;)Lcom/miui/autoui/utils/ReflectUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/miui/autoui/utils/ReflectUtils;->invoke()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 229
    .local v7, "itemCount":I
    if-le v7, v3, :cond_62

    .line 230
    int-to-float v8, v3

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getRateDividend()F

    move-result v9

    mul-float/2addr v8, v9

    float-to-int v5, v8

    .line 231
    move v8, v5

    .line 232
    .local v8, "finalModifySpanCount":I
    new-instance v9, Lcom/miui/autoui/utils/ViewProcessor$$ExternalSyntheticLambda0;

    invoke-direct {v9, v1, v8, p0, v3}, Lcom/miui/autoui/utils/ViewProcessor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;ILandroid/view/View;I)V

    .line 236
    .local v9, "modifySpanCountRunnable":Ljava/lang/Runnable;
    invoke-virtual {p1}, Lcom/miui/autoui/ViewExtras;->getRecyclerViewModifyState()I

    move-result v10

    if-ne v10, v4, :cond_5f

    .line 237
    invoke-interface {v9}, Ljava/lang/Runnable;->run()V

    goto :goto_62

    .line 239
    :cond_5f
    invoke-virtual {p0, v9}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 242
    .end local v8    # "finalModifySpanCount":I
    .end local v9    # "modifySpanCountRunnable":Ljava/lang/Runnable;
    :cond_62
    :goto_62
    if-eq v5, v4, :cond_67

    .line 243
    invoke-virtual {p1, v5}, Lcom/miui/autoui/ViewExtras;->setModifySpanCount(I)V

    .line 245
    :cond_67
    invoke-virtual {p1, v2}, Lcom/miui/autoui/ViewExtras;->setRecyclerViewModifyState(I)V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6a} :catch_6b

    .line 248
    .end local v1    # "layoutMgr":Ljava/lang/Object;
    .end local v3    # "spanCount":I
    .end local v5    # "modifySpanCount":I
    .end local v6    # "adapter":Ljava/lang/Object;
    .end local v7    # "itemCount":I
    goto :goto_6f

    .line 246
    :catch_6b
    move-exception v1

    .line 247
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p1, v0}, Lcom/miui/autoui/ViewExtras;->setRecyclerViewModifyState(I)V

    .line 249
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_6f
    return-void

    .line 218
    :cond_70
    :goto_70
    return-void
.end method
