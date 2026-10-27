.class public Lmiui/content/res/IconCustomizer;
.super Ljava/lang/Object;
.source "IconCustomizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/content/res/IconCustomizer$CustomizedIconsListener;,
        Lmiui/content/res/IconCustomizer$IconConfig;
    }
.end annotation


# static fields
.field private static final blacklist ANIMATING_ICONS_INNER_PATH:Ljava/lang/String; = "animating_icons/"

.field public static final whitelist CUSTOMIZED_ICON_PATH:Ljava/lang/String; = "/data/system/theme_magic/customized_icons/"

.field private static final blacklist FANCY_ICONS_INNER_PATH:Ljava/lang/String; = "fancy_icons/"

.field private static final blacklist FINAL_MOD_ICONS:Ljava/lang/String; = "/data/system/theme_magic/customized_icons/"

.field private static final blacklist FINAL_MOD_ICONS_MIUI_VERSION:Ljava/lang/String; = "/data/system/theme_magic/customized_icons/miui_version"

.field private static final blacklist ICON_NAME_SUFFIX:Ljava/lang/String; = ".png"

.field private static final blacklist ICON_TRANSFORM_CONFIG:Ljava/lang/String; = "transform_config.xml"

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "IconCustomizer"

.field private static final blacklist MIUI_MOD_BUILT_IN_DYNAMIC_ICONS:Ljava/lang/String; = "/product/media/theme/miui_mod_icons/dynamic/"

.field private static final blacklist MIUI_MOD_BUILT_IN_ICONS:Ljava/lang/String; = "/product/media/theme/miui_mod_icons/"

.field private static final blacklist MULTI_ANIM_ICONS_INNER_PATH:Ljava/lang/String; = "layer_animating_icons/"

.field private static final blacklist adaptiveIconCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;>;"
        }
    .end annotation
.end field

.field private static volatile blacklist isIconConfigInit:Z = false

.field private static final blacklist sBgPaint:Landroid/graphics/Paint;

.field private static final blacklist sCanvas:Landroid/graphics/Canvas;

.field private static final blacklist sColorByteSize:I = 0x4

.field private static blacklist sCustomizedIconContentSize:I = 0x0

.field private static blacklist sCustomizedIconSize:I = 0x0

.field private static blacklist sCustomizedIrregularContentHeight:I = 0x0

.field private static blacklist sCustomizedIrregularContentWidth:I = 0x0

.field private static volatile blacklist sCutPaint:Landroid/graphics/Paint; = null

.field private static final blacklist sIconCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private static volatile blacklist sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig; = null

.field private static final blacklist sIconMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sIconTransformMatrix:Landroid/graphics/Matrix; = null

.field private static blacklist sIconTransformNeeded:Z = false

.field private static blacklist sLiteMiddle:Ljava/lang/Boolean; = null

.field private static final blacklist sPaintForTransformBitmap:Landroid/graphics/Paint;

.field private static final blacklist sPaintSrcIn:Landroid/graphics/Paint;

.field private static final blacklist sRGBMask:I = 0xffffff

.field private static final blacklist sRawIconCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final blacklist sStrokePaint:Landroid/graphics/Paint;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 6

    .line 100
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Lmiui/content/res/IconCustomizer;->sCanvas:Landroid/graphics/Canvas;

    .line 103
    const/4 v1, 0x0

    sput-object v1, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    .line 104
    sput-object v1, Lmiui/content/res/IconCustomizer;->sIconTransformMatrix:Landroid/graphics/Matrix;

    .line 105
    const/4 v2, 0x0

    sput-boolean v2, Lmiui/content/res/IconCustomizer;->sIconTransformNeeded:Z

    .line 106
    sput-boolean v2, Lmiui/content/res/IconCustomizer;->isIconConfigInit:Z

    .line 108
    sput-object v1, Lmiui/content/res/IconCustomizer;->sLiteMiddle:Ljava/lang/Boolean;

    .line 138
    new-instance v2, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v3, 0x4

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 141
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/content/res/IconCustomizer;->sRawIconCache:Ljava/util/Map;

    .line 142
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/content/res/IconCustomizer;->sIconCache:Ljava/util/Map;

    .line 211
    const/4 v0, -0x1

    sput v0, Lmiui/content/res/IconCustomizer;->sCustomizedIrregularContentWidth:I

    .line 227
    sput v0, Lmiui/content/res/IconCustomizer;->sCustomizedIrregularContentHeight:I

    .line 242
    sput v0, Lmiui/content/res/IconCustomizer;->sCustomizedIconContentSize:I

    .line 254
    sput v0, Lmiui/content/res/IconCustomizer;->sCustomizedIconSize:I

    .line 497
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    .line 499
    const-string v3, "com.android.contacts.activities.TwelveKeyDialer.png"

    const-string v4, "com.android.contacts.TwelveKeyDialer.png"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    const-string v3, "com.miui.weather2.png"

    const-string v4, "com.miui.weather.png"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    const-string v3, "com.miui.gallery.png"

    const-string v4, "com.android.gallery.png"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    const-string v3, "com.android.gallery3d.png"

    const-string v4, "com.cooliris.media.png"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    const-string v3, "com.xiaomi.market.png"

    const-string v4, "com.miui.supermarket.png"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    const-string v3, "com.wali.miui.networkassistant.png"

    const-string v4, "com.android.monitor.png"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    const-string v3, "com.xiaomi.scanner.png"

    const-string v4, "com.miui.barcodescanner.png"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    const-string v3, "com.miui.calculator.png"

    const-string v4, "com.android.calculator2.png"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    const-string v3, "com.xiaomi.misettings.png"

    const-string v4, "com.android.settings.png"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    const-string v3, "com.miui.themestore.png"

    const-string v4, "com.android.thememanager.png"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    const-string v3, "com.miui.themestore#com.miui.thememanagerstore.ThemeResourceTabActivity.png"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    const-string v3, "com.miui.securitymanager.png"

    const-string v4, "com.miui.securitycenter.png"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    const-string v3, "com.miui.securitymanager#com.miui.securitymain.SCMainEntryActivity.png"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    sput-object v2, Lmiui/content/res/IconCustomizer;->adaptiveIconCache:Ljava/util/Map;

    .line 1131
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v2, Lmiui/content/res/IconCustomizer;->sPaintForTransformBitmap:Landroid/graphics/Paint;

    .line 1161
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v2, Lmiui/content/res/IconCustomizer;->sStrokePaint:Landroid/graphics/Paint;

    .line 1162
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4, v3}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v4, Lmiui/content/res/IconCustomizer;->sPaintSrcIn:Landroid/graphics/Paint;

    .line 1163
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5, v3}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v5, Lmiui/content/res/IconCustomizer;->sBgPaint:Landroid/graphics/Paint;

    .line 1166
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1167
    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1168
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1169
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1170
    const/high16 v0, 0x19000000

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1171
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1279
    sput-object v1, Lmiui/content/res/IconCustomizer;->sCutPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist RGBToColor([I)I
    .registers 3
    .param p0, "RGB"    # [I

    .line 1708
    const/4 v0, 0x0

    aget v0, p0, v0

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x1

    aget v1, p0, v1

    add-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x2

    aget v1, p0, v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static blacklist adaptiveIconToDrawable(Landroid/content/Context;Landroid/graphics/drawable/AdaptiveIconDrawable;ZLjava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "d"    # Landroid/graphics/drawable/AdaptiveIconDrawable;
    .param p2, "fromAppOrigin"    # Z
    .param p3, "name"    # Ljava/lang/String;

    .line 835
    invoke-virtual {p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getIntrinsicWidth()I

    move-result v0

    .line 837
    .local v0, "size":I
    if-eqz p2, :cond_5b

    .line 838
    invoke-virtual {p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 839
    .local v1, "bg":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 840
    .local v2, "fg":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getMonochrome()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_15

    .line 842
    return-object p1

    .line 843
    :cond_15
    instance-of v3, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v3, :cond_1e

    instance-of v3, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v3, :cond_1e

    .line 845
    return-object p1

    .line 847
    :cond_1e
    if-eqz v1, :cond_58

    if-eqz v2, :cond_58

    .line 848
    const/high16 v3, 0x42d80000    # 108.0f

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v3

    .line 849
    .local v4, "normalSize":F
    int-to-double v5, v0

    float-to-double v7, v4

    const-wide v9, 0x3ff3333333333333L    # 1.2

    mul-double/2addr v7, v9

    cmpl-double v3, v5, v7

    if-ltz v3, :cond_3c

    .line 850
    float-to-int v0, v4

    .line 852
    :cond_3c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " adaptiveIcon2Drawable size "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "IconCustomizer"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    .end local v4    # "normalSize":F
    :cond_58
    if-gtz v0, :cond_5b

    return-object p1

    .line 856
    .end local v1    # "bg":Landroid/graphics/drawable/Drawable;
    .end local v2    # "fg":Landroid/graphics/drawable/Drawable;
    :cond_5b
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 857
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 858
    .local v2, "canvas":Landroid/graphics/Canvas;
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, v0, v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->setBounds(IIII)V

    .line 859
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/AdaptiveIconDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 860
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v3
.end method

.method private static blacklist bitmapToDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;
    .registers 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .line 954
    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_d

    :cond_4
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :goto_d
    return-object v0
.end method

.method private static blacklist calcBackgroundColor(III[ILandroid/graphics/Bitmap;)[F
    .registers 22
    .param p0, "pixelSize"    # I
    .param p1, "width"    # I
    .param p2, "strideSize"    # I
    .param p3, "basePixels"    # [I
    .param p4, "bg"    # Landroid/graphics/Bitmap;

    .line 1628
    const/4 v0, 0x0

    .line 1629
    .local v0, "sum":I
    const/4 v1, 0x4

    new-array v2, v1, [I

    fill-array-data v2, :array_108

    .line 1632
    .local v2, "sumRGBA":[I
    const/4 v3, 0x3

    new-array v4, v3, [I

    fill-array-data v4, :array_114

    .line 1636
    .local v4, "RGB":[I
    const/4 v5, 0x0

    .line 1637
    .local v5, "i":I
    invoke-static/range {p4 .. p4}, Lmiui/graphics/BitmapFactoryCompat;->getBuffer(Landroid/graphics/Bitmap;)[B

    move-result-object v6

    .line 1638
    .local v6, "bgPixels":[B
    :goto_12
    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    move/from16 v10, p0

    if-ge v5, v10, :cond_63

    .line 1639
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_1a
    move/from16 v12, p1

    if-ge v11, v12, :cond_60

    .line 1640
    add-int v13, v5, v11

    aget v13, p3, v13

    .line 1642
    .local v13, "color":I
    const v14, 0xffffff

    and-int/2addr v14, v13

    if-lez v14, :cond_46

    .line 1644
    aget v14, v2, v8

    const/high16 v15, 0xff0000

    and-int/2addr v15, v13

    shr-int/lit8 v15, v15, 0x10

    add-int/2addr v14, v15

    aput v14, v2, v8

    .line 1645
    aget v14, v2, v9

    const v15, 0xff00

    and-int/2addr v15, v13

    shr-int/lit8 v15, v15, 0x8

    add-int/2addr v14, v15

    aput v14, v2, v9

    .line 1646
    aget v14, v2, v7

    and-int/lit16 v15, v13, 0xff

    add-int/2addr v14, v15

    aput v14, v2, v7

    .line 1647
    add-int/lit8 v0, v0, 0x1

    .line 1649
    :cond_46
    aget v14, v2, v3

    if-nez v14, :cond_5d

    if-eqz v6, :cond_5d

    .line 1650
    aget v14, v2, v3

    shr-int/lit8 v15, v13, 0x18

    add-int v16, v5, v11

    shl-int/lit8 v16, v16, 0x2

    add-int/lit8 v16, v16, 0x3

    aget-byte v16, v6, v16

    sub-int v15, v15, v16

    add-int/2addr v14, v15

    aput v14, v2, v3

    .line 1639
    :cond_5d
    add-int/lit8 v11, v11, 0x1

    goto :goto_1a

    .line 1653
    .end local v11    # "j":I
    .end local v13    # "color":I
    :cond_60
    add-int v5, v5, p2

    goto :goto_12

    .line 1656
    :cond_63
    move/from16 v12, p1

    if-lez v0, :cond_76

    .line 1657
    aget v11, v2, v8

    div-int/2addr v11, v0

    aput v11, v2, v8

    .line 1658
    aget v11, v2, v9

    div-int/2addr v11, v0

    aput v11, v2, v9

    .line 1659
    aget v11, v2, v7

    div-int/2addr v11, v0

    aput v11, v2, v7

    .line 1663
    :cond_76
    invoke-static {v2}, Lmiui/content/res/IconCustomizer;->RGBToColor([I)I

    move-result v11

    .line 1664
    .local v11, "color":I
    invoke-static {v11, v4}, Lmiui/content/res/IconCustomizer;->getSaturation(I[I)F

    move-result v13

    float-to-double v13, v13

    const-wide v15, 0x3f947ae147ae147bL    # 0.02

    cmpg-double v13, v13, v15

    if-gez v13, :cond_8a

    .line 1665
    const/4 v11, 0x0

    goto :goto_e7

    .line 1668
    :cond_8a
    new-array v13, v7, [[I

    new-array v14, v7, [I

    fill-array-data v14, :array_11e

    aput-object v14, v13, v8

    new-array v14, v7, [I

    fill-array-data v14, :array_126

    aput-object v14, v13, v9

    .line 1675
    .local v13, "mappingSections":[[I
    const/4 v0, 0x0

    .line 1676
    const/4 v5, 0x0

    :goto_9c
    array-length v14, v13

    if-ge v5, v14, :cond_ac

    .line 1677
    aget-object v14, v13, v5

    aget v14, v14, v9

    aget-object v15, v13, v5

    aget v15, v15, v8

    sub-int/2addr v14, v15

    add-int/2addr v0, v14

    .line 1676
    add-int/lit8 v5, v5, 0x1

    goto :goto_9c

    .line 1680
    :cond_ac
    invoke-static {v11, v4}, Lmiui/content/res/IconCustomizer;->getHue(I[I)F

    move-result v14

    .line 1681
    .local v14, "hue":F
    int-to-float v15, v0

    mul-float/2addr v15, v14

    const/high16 v16, 0x43b40000    # 360.0f

    div-float v15, v15, v16

    .line 1682
    .end local v14    # "hue":F
    .local v15, "hue":F
    const/4 v5, 0x0

    :goto_b7
    array-length v14, v13

    if-ge v5, v14, :cond_d5

    .line 1683
    aget-object v14, v13, v5

    aget v14, v14, v9

    aget-object v16, v13, v5

    aget v16, v16, v8

    sub-int v14, v14, v16

    .line 1684
    .local v14, "length":I
    int-to-float v3, v14

    cmpl-float v3, v15, v3

    if-lez v3, :cond_cf

    .line 1685
    int-to-float v3, v14

    sub-float/2addr v15, v3

    .line 1682
    .end local v14    # "length":I
    add-int/lit8 v5, v5, 0x1

    const/4 v3, 0x3

    goto :goto_b7

    .line 1687
    .restart local v14    # "length":I
    :cond_cf
    aget-object v3, v13, v5

    aget v3, v3, v8

    int-to-float v3, v3

    add-float/2addr v15, v3

    .line 1691
    .end local v14    # "length":I
    :cond_d5
    invoke-static {v11, v15, v4}, Lmiui/content/res/IconCustomizer;->setHue(IF[I)I

    move-result v3

    .line 1694
    .end local v11    # "color":I
    .local v3, "color":I
    const v11, 0x3f19999a    # 0.6f

    invoke-static {v3, v11, v4}, Lmiui/content/res/IconCustomizer;->setValue(IF[I)I

    move-result v3

    .line 1695
    const v11, 0x3ecccccd    # 0.4f

    invoke-static {v3, v11, v4}, Lmiui/content/res/IconCustomizer;->setSaturation(IF[I)I

    move-result v11

    .line 1697
    .end local v3    # "color":I
    .end local v13    # "mappingSections":[[I
    .end local v15    # "hue":F
    .restart local v11    # "color":I
    :goto_e7
    invoke-static {v11, v2}, Lmiui/content/res/IconCustomizer;->colorToRGB(I[I)V

    .line 1698
    new-array v1, v1, [F

    aget v3, v2, v8

    int-to-float v3, v3

    const/high16 v13, 0x437f0000    # 255.0f

    div-float/2addr v3, v13

    aput v3, v1, v8

    aget v3, v2, v9

    int-to-float v3, v3

    div-float/2addr v3, v13

    aput v3, v1, v9

    aget v3, v2, v7

    int-to-float v3, v3

    div-float/2addr v3, v13

    aput v3, v1, v7

    const/4 v3, 0x3

    aget v7, v2, v3

    int-to-float v7, v7

    div-float/2addr v7, v13

    aput v7, v1, v3

    return-object v1

    :array_108
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_114
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_11e
    .array-data 4
        0x64
        0x6e
    .end array-data

    :array_126
    .array-data 4
        0xbe
        0x113
    .end array-data
.end method

.method private static blacklist checkDensity(Landroid/content/Context;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 827
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 828
    .local v0, "contextDensity":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 829
    .local v1, "systemDensity":I
    if-eq v0, v1, :cond_38

    .line 830
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Density abnormal: context density="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " systemDensity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "IconCustomizer"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    :cond_38
    return-void
.end method

.method public static whitelist checkModIconsTimestamp()V
    .registers 10

    .line 348
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/theme_magic/customized_icons/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 349
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_81

    .line 350
    const/4 v2, 0x0

    .line 352
    .local v2, "clearReason":Ljava/lang/String;
    :try_start_e
    invoke-static {v1}, Lmiui/io/FileStatCompat;->getCreatedTime(Ljava/lang/String;)J

    move-result-wide v3

    .line 353
    .local v3, "createdTime":J
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lmiui/content/res/IconCustomizer;->getMiuiModDownloadIconDir()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    .line 354
    .local v5, "modifiedTime":J
    cmp-long v1, v5, v3

    if-gtz v1, :cond_53

    .line 355
    new-instance v1, Ljava/io/File;

    const-string v7, "/data/system/theme_magic/customized_icons/miui_version"

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 356
    .local v1, "lastVersionFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_4f

    .line 357
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 358
    .local v7, "reader":Ljava/io/BufferedReader;
    invoke-static {}, Lmiui/content/res/IconCustomizer;->getCustomizedIconVersionContent()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4b

    .line 359
    const-string v8, "miui version update"

    move-object v2, v8

    .line 361
    :cond_4b
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    .line 362
    .end local v7    # "reader":Ljava/io/BufferedReader;
    goto :goto_52

    .line 363
    :cond_4f
    const-string v7, "miui version flag miss"

    move-object v2, v7

    .line 365
    .end local v1    # "lastVersionFile":Ljava/io/File;
    :goto_52
    goto :goto_56

    .line 366
    :cond_53
    const-string v1, "mod download icon update"
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_55} :catch_57

    move-object v2, v1

    .line 371
    .end local v3    # "createdTime":J
    .end local v5    # "modifiedTime":J
    :goto_56
    goto :goto_5d

    .line 368
    :catch_57
    move-exception v1

    .line 369
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "miui version read exception"

    .line 370
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 372
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_5d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "check time stamp: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "IconCustomizer"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    if-eqz v2, :cond_81

    .line 374
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/content/res/ThemeNativeUtils;->deleteContents(Ljava/lang/String;)V

    .line 375
    invoke-static {}, Lmiui/content/res/IconCustomizer;->clearCache()V

    .line 379
    .end local v2    # "clearReason":Ljava/lang/String;
    :cond_81
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_8f

    .line 380
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lmiui/theme/ThemeFileUtils;->mkdirs(Ljava/lang/String;Z)Z

    .line 382
    :cond_8f
    return-void
.end method

.method public static whitelist clearCache()V
    .registers 1

    .line 302
    const/4 v0, 0x0

    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->clearCache(Ljava/lang/String;)V

    .line 303
    return-void
.end method

.method public static whitelist clearCache(Ljava/lang/String;)V
    .registers 5
    .param p0, "packageName"    # Ljava/lang/String;

    .line 306
    if-nez p0, :cond_3a

    .line 307
    sget-object v0, Lmiui/content/res/IconCustomizer;->sRawIconCache:Ljava/util/Map;

    monitor-enter v0

    .line 308
    :try_start_5
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 309
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_37

    .line 310
    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconCache:Ljava/util/Map;

    monitor-enter v1

    .line 311
    :try_start_c
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 312
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_c .. :try_end_10} :catchall_34

    .line 313
    sget-object v0, Lmiui/content/res/IconCustomizer;->adaptiveIconCache:Ljava/util/Map;

    monitor-enter v0

    .line 314
    :try_start_13
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 315
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_31

    .line 316
    const-class v1, Lmiui/content/res/IconCustomizer;

    monitor-enter v1

    .line 317
    const/4 v0, 0x0

    :try_start_1b
    sput-object v0, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    .line 318
    const/4 v0, 0x1

    sput-boolean v0, Lmiui/content/res/IconCustomizer;->isIconConfigInit:Z

    .line 319
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_1b .. :try_end_21} :catchall_2e

    .line 320
    const/4 v0, 0x0

    sput-boolean v0, Lmiui/content/res/IconCustomizer;->sIconTransformNeeded:Z

    .line 321
    const/4 v0, -0x1

    sput v0, Lmiui/content/res/IconCustomizer;->sCustomizedIrregularContentWidth:I

    .line 322
    sput v0, Lmiui/content/res/IconCustomizer;->sCustomizedIrregularContentHeight:I

    .line 323
    sput v0, Lmiui/content/res/IconCustomizer;->sCustomizedIconContentSize:I

    .line 324
    sput v0, Lmiui/content/res/IconCustomizer;->sCustomizedIconSize:I

    goto :goto_8a

    .line 319
    :catchall_2e
    move-exception v0

    :try_start_2f
    monitor-exit v1
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v0

    .line 315
    :catchall_31
    move-exception v1

    :try_start_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v1

    .line 312
    :catchall_34
    move-exception v0

    :try_start_35
    monitor-exit v1
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v0

    .line 309
    :catchall_37
    move-exception v1

    :try_start_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw v1

    .line 326
    :cond_3a
    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconCache:Ljava/util/Map;

    monitor-enter v0

    .line 327
    :try_start_3d
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 328
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/ref/WeakReference<Landroid/graphics/Bitmap;>;>;>;"
    :goto_45
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_61

    .line 329
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 330
    .local v2, "p":Ljava/lang/String;
    invoke-virtual {v2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_60

    .line 331
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 333
    .end local v2    # "p":Ljava/lang/String;
    :cond_60
    goto :goto_45

    .line 334
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/ref/WeakReference<Landroid/graphics/Bitmap;>;>;>;"
    :cond_61
    monitor-exit v0
    :try_end_62
    .catchall {:try_start_3d .. :try_end_62} :catchall_8e

    .line 335
    sget-object v1, Lmiui/content/res/IconCustomizer;->adaptiveIconCache:Ljava/util/Map;

    monitor-enter v1

    .line 336
    :try_start_65
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 337
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;>;>;"
    :goto_6d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_89

    .line 338
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 339
    .restart local v2    # "p":Ljava/lang/String;
    invoke-virtual {v2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_88

    .line 340
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 342
    .end local v2    # "p":Ljava/lang/String;
    :cond_88
    goto :goto_6d

    .line 343
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;>;>;"
    :cond_89
    monitor-exit v1

    .line 345
    :goto_8a
    return-void

    .line 343
    :catchall_8b
    move-exception v0

    monitor-exit v1
    :try_end_8d
    .catchall {:try_start_65 .. :try_end_8d} :catchall_8b

    throw v0

    .line 334
    :catchall_8e
    move-exception v1

    :try_start_8f
    monitor-exit v0
    :try_end_90
    .catchall {:try_start_8f .. :try_end_90} :catchall_8e

    throw v1
.end method

.method public static whitelist clearCustomizedIcons(Ljava/lang/String;)V
    .registers 8
    .param p0, "packageName"    # Ljava/lang/String;

    .line 407
    sget-boolean v0, Lmiui/os/Build;->IS_MIUI:Z

    if-nez v0, :cond_5

    .line 408
    return-void

    .line 410
    :cond_5
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "/data/system/theme_magic/customized_icons/"

    if-eqz v0, :cond_14

    .line 411
    invoke-static {v1}, Lmiui/content/res/ThemeNativeUtils;->deleteContents(Ljava/lang/String;)V

    .line 412
    invoke-static {}, Lmiui/content/res/IconCustomizer;->clearCache()V

    goto :goto_45

    .line 414
    :cond_14
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 415
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 416
    .local v2, "fileNames":[Ljava/lang/String;
    if-eqz v2, :cond_42

    .line 417
    array-length v3, v2

    const/4 v4, 0x0

    :goto_21
    if-ge v4, v3, :cond_42

    aget-object v5, v2, v4

    .line 418
    .local v5, "fileName":Ljava/lang/String;
    invoke-virtual {v5, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3f

    .line 419
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lmiui/content/res/ThemeNativeUtils;->remove(Ljava/lang/String;)Z

    .line 417
    .end local v5    # "fileName":Ljava/lang/String;
    :cond_3f
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    .line 423
    :cond_42
    invoke-static {p0}, Lmiui/content/res/IconCustomizer;->clearCache(Ljava/lang/String;)V

    .line 425
    .end local v0    # "dir":Ljava/io/File;
    .end local v2    # "fileNames":[Ljava/lang/String;
    :goto_45
    return-void
.end method

.method private static blacklist colorToRGB(I[I)V
    .registers 4
    .param p0, "color"    # I
    .param p1, "rgb"    # [I

    .line 1702
    const/high16 v0, 0xff0000

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x10

    const/4 v1, 0x0

    aput v0, p1, v1

    .line 1703
    const v0, 0xff00

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x8

    const/4 v1, 0x1

    aput v0, p1, v1

    .line 1704
    and-int/lit16 v0, p0, 0xff

    const/4 v1, 0x2

    aput v0, p1, v1

    .line 1705
    return-void
.end method

.method private static blacklist composeIcon(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 36
    .param p0, "base"    # Landroid/graphics/Bitmap;
    .param p1, "modMask"    # Landroid/graphics/Bitmap;
    .param p2, "modBackground"    # Landroid/graphics/Bitmap;
    .param p3, "modPattern"    # Landroid/graphics/Bitmap;
    .param p4, "modCover"    # Landroid/graphics/Bitmap;

    .line 1293
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    .line 1294
    .local v15, "baseWidth":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    .line 1295
    .local v14, "baseHeight":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    const/16 v16, 0x4

    div-int/lit8 v13, v0, 0x4

    .line 1296
    .local v13, "pixelSize":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    div-int/lit8 v12, v0, 0x4

    .line 1298
    .local v12, "strideSize":I
    new-array v11, v13, [I

    .line 1299
    .local v11, "basePixels":[I
    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p0

    move-object v6, v11

    move v8, v12

    move-object/from16 v17, v11

    .end local v11    # "basePixels":[I
    .local v17, "basePixels":[I
    move v11, v15

    move/from16 v18, v12

    .end local v12    # "strideSize":I
    .local v18, "strideSize":I
    move v12, v14

    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 1300
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1303
    invoke-static {}, Lmiui/content/res/IconCustomizer;->getCustomizedIconWidth()I

    move-result v0

    .line 1304
    .local v0, "width":I
    invoke-static {}, Lmiui/content/res/IconCustomizer;->getCustomizedIconHeight()I

    move-result v5

    .line 1305
    .local v5, "height":I
    if-gt v15, v0, :cond_43

    if-le v14, v5, :cond_40

    goto :goto_43

    :cond_40
    move v12, v0

    move v11, v5

    goto :goto_7d

    .line 1306
    :cond_43
    :goto_43
    const-string v6, "IconCustomizer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "composeIcon baseWidth > CustomizedIconWidth baseWidth =  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " baseHeight = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " CustomizedIconWidth = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " CustomizedIconHeight = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    move v0, v15

    .line 1310
    move v5, v14

    move v12, v0

    move v11, v5

    .line 1312
    .end local v0    # "width":I
    .end local v5    # "height":I
    .local v11, "height":I
    .local v12, "width":I
    :goto_7d
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v12, v11, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 1313
    .local v10, "result":Landroid/graphics/Bitmap;
    const/4 v0, 0x5

    new-array v5, v0, [Landroid/graphics/Bitmap;

    const/4 v9, 0x0

    aput-object v1, v5, v9

    const/16 v19, 0x1

    aput-object v2, v5, v19

    const/16 v20, 0x2

    aput-object v3, v5, v20

    const/16 v21, 0x3

    aput-object v4, v5, v21

    aput-object v10, v5, v16

    move-object/from16 v8, p0

    invoke-static {v8, v5}, Lmiui/content/res/IconCustomizer;->unifyDensity(Landroid/graphics/Bitmap;[Landroid/graphics/Bitmap;)V

    .line 1314
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object v7, v5

    .line 1317
    .local v7, "canvas":Landroid/graphics/Canvas;
    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x1

    const/16 v26, 0x0

    move-object/from16 v6, v17

    move-object/from16 v27, v7

    .end local v7    # "canvas":Landroid/graphics/Canvas;
    .local v27, "canvas":Landroid/graphics/Canvas;
    move/from16 v7, v22

    move/from16 v8, v18

    move v0, v9

    move/from16 v9, v23

    move-object/from16 v23, v10

    .end local v10    # "result":Landroid/graphics/Bitmap;
    .local v23, "result":Landroid/graphics/Bitmap;
    move/from16 v10, v24

    move/from16 v24, v11

    .end local v11    # "height":I
    .local v24, "height":I
    move v11, v15

    move/from16 v28, v12

    .end local v12    # "width":I
    .local v28, "width":I
    move v12, v14

    move/from16 v29, v13

    .end local v13    # "pixelSize":I
    .local v29, "pixelSize":I
    move/from16 v13, v25

    move/from16 v25, v14

    .end local v14    # "baseHeight":I
    .local v25, "baseHeight":I
    move-object/from16 v14, v26

    invoke-virtual/range {v5 .. v14}, Landroid/graphics/Canvas;->drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V

    .line 1320
    const/4 v14, 0x0

    if-eqz v1, :cond_10c

    .line 1321
    sget-object v5, Lmiui/content/res/IconCustomizer;->sCutPaint:Landroid/graphics/Paint;

    if-nez v5, :cond_f0

    .line 1322
    const-class v5, Lmiui/content/res/IconCustomizer;

    monitor-enter v5

    .line 1323
    :try_start_d6
    sget-object v6, Lmiui/content/res/IconCustomizer;->sCutPaint:Landroid/graphics/Paint;

    if-nez v6, :cond_eb

    .line 1324
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 1325
    .local v6, "paint":Landroid/graphics/Paint;
    new-instance v7, Landroid/graphics/PorterDuffXfermode;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1326
    sput-object v6, Lmiui/content/res/IconCustomizer;->sCutPaint:Landroid/graphics/Paint;

    .line 1328
    .end local v6    # "paint":Landroid/graphics/Paint;
    :cond_eb
    monitor-exit v5

    goto :goto_f0

    :catchall_ed
    move-exception v0

    monitor-exit v5
    :try_end_ef
    .catchall {:try_start_d6 .. :try_end_ef} :catchall_ed

    throw v0

    .line 1330
    :cond_f0
    :goto_f0
    sget-object v5, Lmiui/content/res/IconCustomizer;->sCutPaint:Landroid/graphics/Paint;

    move-object/from16 v13, v27

    .end local v27    # "canvas":Landroid/graphics/Canvas;
    .local v13, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v13, v1, v14, v14, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1331
    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, v23

    move-object/from16 v6, v17

    move/from16 v8, v18

    move v11, v15

    move/from16 v12, v25

    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 1332
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v13, v0, v5}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_10e

    .line 1320
    .end local v13    # "canvas":Landroid/graphics/Canvas;
    .restart local v27    # "canvas":Landroid/graphics/Canvas;
    :cond_10c
    move-object/from16 v13, v27

    .line 1335
    .end local v27    # "canvas":Landroid/graphics/Canvas;
    .restart local v13    # "canvas":Landroid/graphics/Canvas;
    :goto_10e
    const/4 v5, 0x0

    .line 1336
    .local v5, "bgColor":[F
    if-eqz v2, :cond_12b

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v6

    div-int/lit8 v6, v6, 0x4

    move/from16 v12, v29

    .end local v29    # "pixelSize":I
    .local v12, "pixelSize":I
    if-ne v6, v12, :cond_126

    .line 1337
    move-object/from16 v10, v17

    move/from16 v11, v18

    .end local v17    # "basePixels":[I
    .end local v18    # "strideSize":I
    .local v10, "basePixels":[I
    .local v11, "strideSize":I
    invoke-static {v12, v15, v11, v10, v2}, Lmiui/content/res/IconCustomizer;->calcBackgroundColor(III[ILandroid/graphics/Bitmap;)[F

    move-result-object v5

    move-object/from16 v17, v5

    goto :goto_133

    .line 1336
    .end local v10    # "basePixels":[I
    .end local v11    # "strideSize":I
    .restart local v17    # "basePixels":[I
    .restart local v18    # "strideSize":I
    :cond_126
    move-object/from16 v10, v17

    move/from16 v11, v18

    .end local v17    # "basePixels":[I
    .end local v18    # "strideSize":I
    .restart local v10    # "basePixels":[I
    .restart local v11    # "strideSize":I
    goto :goto_131

    .end local v10    # "basePixels":[I
    .end local v11    # "strideSize":I
    .end local v12    # "pixelSize":I
    .restart local v17    # "basePixels":[I
    .restart local v18    # "strideSize":I
    .restart local v29    # "pixelSize":I
    :cond_12b
    move-object/from16 v10, v17

    move/from16 v11, v18

    move/from16 v12, v29

    .line 1341
    .end local v17    # "basePixels":[I
    .end local v18    # "strideSize":I
    .end local v29    # "pixelSize":I
    .restart local v10    # "basePixels":[I
    .restart local v11    # "strideSize":I
    .restart local v12    # "pixelSize":I
    :goto_131
    move-object/from16 v17, v5

    .end local v5    # "bgColor":[F
    .local v17, "bgColor":[F
    :goto_133
    if-eqz v17, :cond_1a2

    aget v5, v17, v21

    cmpl-float v5, v5, v14

    if-eqz v5, :cond_1a2

    .line 1342
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 1343
    .local v5, "bgPaint":Landroid/graphics/Paint;
    new-instance v6, Landroid/graphics/ColorMatrix;

    invoke-direct {v6}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 1344
    .local v6, "cm":Landroid/graphics/ColorMatrix;
    const/16 v7, 0x14

    new-array v7, v7, [F

    aget v8, v17, v0

    aput v8, v7, v0

    aput v14, v7, v19

    aput v14, v7, v20

    aput v14, v7, v21

    aput v14, v7, v16

    const/4 v0, 0x5

    aput v14, v7, v0

    const/4 v0, 0x6

    aget v8, v17, v19

    aput v8, v7, v0

    const/4 v0, 0x7

    aput v14, v7, v0

    const/16 v0, 0x8

    aput v14, v7, v0

    const/16 v0, 0x9

    aput v14, v7, v0

    const/16 v0, 0xa

    aput v14, v7, v0

    const/16 v0, 0xb

    aput v14, v7, v0

    const/16 v0, 0xc

    aget v8, v17, v20

    aput v8, v7, v0

    const/16 v0, 0xd

    aput v14, v7, v0

    const/16 v0, 0xe

    aput v14, v7, v0

    const/16 v0, 0xf

    aput v14, v7, v0

    const/16 v0, 0x10

    aput v14, v7, v0

    const/16 v0, 0x11

    aput v14, v7, v0

    const/16 v0, 0x12

    const/high16 v8, 0x3f800000    # 1.0f

    aput v8, v7, v0

    const/16 v0, 0x13

    aput v14, v7, v0

    invoke-virtual {v6, v7}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 1348
    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v0, v6}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 1349
    invoke-virtual {v13, v2, v14, v14, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1354
    .end local v5    # "bgPaint":Landroid/graphics/Paint;
    .end local v6    # "cm":Landroid/graphics/ColorMatrix;
    :cond_1a2
    const/4 v0, 0x0

    if-eqz v17, :cond_1ab

    aget v5, v17, v21

    cmpl-float v5, v5, v14

    if-nez v5, :cond_1ad

    :cond_1ab
    if-nez v17, :cond_1b2

    .line 1355
    :cond_1ad
    if-eqz v3, :cond_1b2

    .line 1356
    invoke-virtual {v13, v3, v14, v14, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1361
    :cond_1b2
    const/4 v7, 0x0

    const/4 v9, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    move-object v5, v13

    move-object v6, v10

    move v8, v11

    move-object/from16 v20, v10

    .end local v10    # "basePixels":[I
    .local v20, "basePixels":[I
    move/from16 v10, v16

    move/from16 v16, v11

    .end local v11    # "strideSize":I
    .local v16, "strideSize":I
    move v11, v15

    move/from16 v21, v12

    .end local v12    # "pixelSize":I
    .local v21, "pixelSize":I
    move/from16 v12, v25

    move-object/from16 v30, v13

    .end local v13    # "canvas":Landroid/graphics/Canvas;
    .local v30, "canvas":Landroid/graphics/Canvas;
    move/from16 v13, v18

    move v1, v14

    move-object/from16 v14, v19

    invoke-virtual/range {v5 .. v14}, Landroid/graphics/Canvas;->drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V

    .line 1364
    if-eqz v4, :cond_1da

    .line 1365
    move-object/from16 v5, v30

    .end local v30    # "canvas":Landroid/graphics/Canvas;
    .local v5, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v5, v4, v1, v1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1dc

    .line 1364
    .end local v5    # "canvas":Landroid/graphics/Canvas;
    .restart local v30    # "canvas":Landroid/graphics/Canvas;
    :cond_1da
    move-object/from16 v5, v30

    .line 1368
    .end local v30    # "canvas":Landroid/graphics/Canvas;
    .restart local v5    # "canvas":Landroid/graphics/Canvas;
    :goto_1dc
    return-object v23
.end method

.method private static blacklist composeIconForDefaultIcon(Lmiui/content/res/IconCustomizer$IconConfig;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 22
    .param p0, "config"    # Lmiui/content/res/IconCustomizer$IconConfig;
    .param p1, "icon"    # Landroid/graphics/Bitmap;

    .line 1175
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v0

    .line 1176
    .local v0, "density":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 1177
    .local v1, "maxSize":I
    const/4 v2, 0x0

    .line 1178
    .local v2, "dx":I
    const/4 v3, 0x0

    .line 1179
    .local v3, "dy":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-le v4, v5, :cond_21

    .line 1180
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 1181
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int v4, v1, v4

    div-int/lit8 v3, v4, 0x2

    goto :goto_37

    .line 1182
    :cond_21
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-le v4, v5, :cond_37

    .line 1183
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 1184
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int v4, v1, v4

    div-int/lit8 v2, v4, 0x2

    .line 1186
    :cond_37
    :goto_37
    move v4, v1

    .line 1187
    .local v4, "size":I
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1188
    .local v5, "iconContent":Landroid/graphics/Bitmap;
    invoke-virtual {v5, v0}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 1189
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1191
    .local v6, "canvas":Landroid/graphics/Canvas;
    move-object/from16 v7, p0

    iget-object v8, v7, Lmiui/content/res/IconCustomizer$IconConfig;->mConfigIconMask:Ljava/lang/String;

    invoke-static {v8}, Lmiui/content/res/IconCustomizer;->getValidMask(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v8

    .line 1193
    .local v8, "readOnlyPath":Landroid/graphics/Path;
    new-instance v9, Landroid/graphics/Path;

    invoke-direct {v9}, Landroid/graphics/Path;-><init>()V

    .line 1194
    .local v9, "scalePath":Landroid/graphics/Path;
    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    .line 1195
    .local v10, "matrix":Landroid/graphics/Matrix;
    int-to-float v11, v4

    const/high16 v12, 0x42c80000    # 100.0f

    div-float/2addr v11, v12

    int-to-float v13, v4

    div-float/2addr v13, v12

    invoke-virtual {v10, v11, v13}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 1196
    invoke-virtual {v8, v10, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 1197
    sget-object v11, Lmiui/content/res/IconCustomizer;->sBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v9, v11}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1198
    int-to-float v13, v2

    int-to-float v14, v3

    sget-object v15, Lmiui/content/res/IconCustomizer;->sPaintSrcIn:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    invoke-virtual {v6, v12, v13, v14, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1199
    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1201
    sget-object v14, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v4, v14}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 1202
    .local v14, "result":Landroid/graphics/Bitmap;
    invoke-virtual {v14, v0}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 1203
    invoke-virtual {v6, v14}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1205
    const/4 v15, 0x1

    .line 1206
    .local v15, "borderWidth":I
    const/high16 v17, 0x3f000000    # 0.5f

    .line 1207
    .local v17, "delta":F
    add-int/lit8 v13, v4, -0x1

    int-to-float v13, v13

    .line 1208
    .local v13, "scaleSize":F
    move/from16 v18, v0

    const/high16 v16, 0x42c80000    # 100.0f

    .end local v0    # "density":I
    .local v18, "density":I
    div-float v0, v13, v16

    move/from16 v19, v1

    .end local v1    # "maxSize":I
    .local v19, "maxSize":I
    div-float v1, v13, v16

    invoke-virtual {v10, v0, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 1209
    invoke-virtual {v8, v10, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 1210
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {v6, v0, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1211
    invoke-virtual {v6, v9, v11}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1212
    const/high16 v1, -0x41000000    # -0.5f

    invoke-virtual {v6, v1, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1214
    const/4 v11, 0x0

    const/4 v1, 0x0

    invoke-virtual {v6, v5, v11, v11, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1216
    invoke-virtual {v6, v0, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1217
    sget-object v0, Lmiui/content/res/IconCustomizer;->sStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v9, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1218
    const/high16 v0, -0x41000000    # -0.5f

    invoke-virtual {v6, v0, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1220
    invoke-virtual {v6, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1221
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 1222
    return-object v14
.end method

.method private static varargs blacklist composeIconWithTransform(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 12
    .param p0, "base"    # Landroid/graphics/Bitmap;
    .param p1, "modMask"    # Ljava/lang/String;
    .param p2, "modBackground"    # Ljava/lang/String;
    .param p3, "modPattern"    # Ljava/lang/String;
    .param p4, "modCover"    # Ljava/lang/String;
    .param p5, "names"    # [Ljava/lang/String;

    .line 1141
    invoke-static {}, Lmiui/content/res/IconCustomizer;->ensureIconConfigLoaded()Lmiui/content/res/IconCustomizer$IconConfig;

    move-result-object v0

    .line 1142
    .local v0, "config":Lmiui/content/res/IconCustomizer$IconConfig;
    iget-boolean v1, v0, Lmiui/content/res/IconCustomizer$IconConfig;->mIsFullMask:Z

    if-eqz v1, :cond_2e

    .line 1143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "composeIconWithTrans FullMask: for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p5

    if-lez v2, :cond_1a

    const/4 v2, 0x0

    aget-object v2, p5, v2

    goto :goto_1c

    :cond_1a
    const-string v2, "null"

    :goto_1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IconCustomizer"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    invoke-static {v0, p0}, Lmiui/content/res/IconCustomizer;->composeIconForDefaultIcon(Lmiui/content/res/IconCustomizer$IconConfig;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    .line 1146
    :cond_2e
    iget-object v1, v0, Lmiui/content/res/IconCustomizer$IconConfig;->mIconFilters:Lmiui/imagefilters/IImageFilter$ImageFilterGroup;

    if-eqz v1, :cond_3c

    .line 1147
    iget-object v1, v0, Lmiui/content/res/IconCustomizer$IconConfig;->mIconFilters:Lmiui/imagefilters/IImageFilter$ImageFilterGroup;

    invoke-virtual {v1, p0}, Lmiui/imagefilters/IImageFilter$ImageFilterGroup;->processAll(Landroid/graphics/Bitmap;)Lmiui/imagefilters/ImageData;

    move-result-object v1

    .line 1148
    .local v1, "imgData":Lmiui/imagefilters/ImageData;
    invoke-static {v1}, Lmiui/imagefilters/ImageData;->imageDataToBitmap(Lmiui/imagefilters/ImageData;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 1150
    .end local v1    # "imgData":Lmiui/imagefilters/ImageData;
    :cond_3c
    sget-boolean v1, Lmiui/content/res/IconCustomizer;->sIconTransformNeeded:Z

    if-eqz v1, :cond_46

    .line 1151
    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconTransformMatrix:Landroid/graphics/Matrix;

    invoke-static {p0, v1}, Lmiui/content/res/IconCustomizer;->transformBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 1153
    :cond_46
    invoke-static {p1}, Lmiui/content/res/IconCustomizer;->getRawIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1154
    .local v1, "mask":Landroid/graphics/Bitmap;
    invoke-static {p2}, Lmiui/content/res/IconCustomizer;->getRawIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1155
    .local v2, "background":Landroid/graphics/Bitmap;
    invoke-static {p3}, Lmiui/content/res/IconCustomizer;->getRawIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1156
    .local v3, "pattern":Landroid/graphics/Bitmap;
    invoke-static {p4}, Lmiui/content/res/IconCustomizer;->getRawIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1158
    .local v4, "cover":Landroid/graphics/Bitmap;
    invoke-static {p0, v1, v2, v3, v4}, Lmiui/content/res/IconCustomizer;->composeIcon(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    return-object v5
.end method

.method private static blacklist drawableToBitmap(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;
    .registers 3
    .param p0, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p1, "ratio"    # F

    .line 1081
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lmiui/content/res/IconCustomizer;->drawableToBitmap(Landroid/graphics/drawable/Drawable;FZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist drawableToBitmap(Landroid/graphics/drawable/Drawable;FZ)Landroid/graphics/Bitmap;
    .registers 15
    .param p0, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p1, "ratio"    # F
    .param p2, "isAdaptiveIconDrawable"    # Z

    .line 1085
    sget-object v0, Lmiui/content/res/IconCustomizer;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v0

    .line 1086
    :try_start_3
    invoke-static {}, Lmiui/content/res/IconCustomizer;->getCustomizedIconWidth()I

    move-result v1

    .line 1087
    .local v1, "targetWidth":I
    invoke-static {}, Lmiui/content/res/IconCustomizer;->getCustomizedIconHeight()I

    move-result v2

    .line 1088
    .local v2, "targetHeight":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 1089
    .local v3, "displayMetrics":Landroid/util/DisplayMetrics;
    instance-of v4, p0, Landroid/graphics/drawable/PaintDrawable;

    const/4 v5, 0x0

    if-eqz v4, :cond_22

    .line 1090
    move-object v4, p0

    check-cast v4, Landroid/graphics/drawable/PaintDrawable;

    .line 1091
    .local v4, "painter":Landroid/graphics/drawable/PaintDrawable;
    invoke-virtual {v4, v1}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 1092
    invoke-virtual {v4, v2}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    .end local v4    # "painter":Landroid/graphics/drawable/PaintDrawable;
    goto :goto_62

    .line 1093
    :cond_22
    instance-of v4, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_62

    .line 1095
    move-object v4, p0

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    .line 1096
    .local v4, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 1097
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v7

    .line 1098
    .local v7, "bitmapDensity":I
    iget v8, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    if-eq v7, v8, :cond_63

    .line 1099
    invoke-virtual {v4, v7}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(I)V

    .line 1100
    invoke-static {p0, v5}, Lmiui/content/res/IconCustomizer;->getScaleRatio(Landroid/graphics/drawable/Drawable;Z)F

    move-result v8

    move p1, v8

    .line 1101
    const-string v8, "IconCustomizer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "BitmapDensity="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",dm.densityDpi="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_63

    .line 1093
    .end local v4    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    .end local v7    # "bitmapDensity":I
    :cond_62
    :goto_62
    nop

    .line 1104
    :cond_63
    :goto_63
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 1105
    .local v4, "sourceWidth":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    .line 1107
    .local v6, "sourceHeight":I
    if-eqz p2, :cond_71

    .line 1108
    move v4, v1

    .line 1109
    move v6, v2

    .line 1110
    const/high16 p1, 0x3f800000    # 1.0f

    .line 1112
    :cond_71
    invoke-virtual {p0, v5, v5, v4, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1114
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v1, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1116
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    move-object v7, v0

    .line 1117
    .local v7, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v7, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1118
    invoke-virtual {v7}, Landroid/graphics/Canvas;->save()I

    .line 1119
    int-to-float v8, v1

    int-to-float v9, v4

    mul-float/2addr v9, p1

    sub-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    int-to-float v10, v2

    int-to-float v11, v6

    mul-float/2addr v11, p1

    sub-float/2addr v10, v11

    div-float/2addr v10, v9

    invoke-virtual {v7, v8, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1120
    invoke-virtual {v7, p1, p1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1121
    invoke-virtual {p0, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1122
    invoke-virtual {v7}, Landroid/graphics/Canvas;->restore()V

    .line 1125
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1127
    monitor-exit v0

    return-object v5

    .line 1128
    .end local v1    # "targetWidth":I
    .end local v2    # "targetHeight":I
    .end local v3    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v4    # "sourceWidth":I
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    .end local v6    # "sourceHeight":I
    .end local v7    # "canvas":Landroid/graphics/Canvas;
    :catchall_9f
    move-exception v1

    monitor-exit v0
    :try_end_a1
    .catchall {:try_start_3 .. :try_end_a1} :catchall_9f

    throw v1
.end method

.method private static blacklist ensureIconConfigLoaded()Lmiui/content/res/IconCustomizer$IconConfig;
    .registers 8

    .line 1233
    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    .line 1234
    .local v0, "iconConfig":Lmiui/content/res/IconCustomizer$IconConfig;
    if-nez v0, :cond_b2

    .line 1235
    const/4 v1, 0x1

    sput-boolean v1, Lmiui/content/res/IconCustomizer;->isIconConfigInit:Z

    .line 1236
    const-class v2, Lmiui/content/res/IconCustomizer;

    monitor-enter v2

    .line 1237
    :try_start_a
    sget-object v3, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    move-object v0, v3

    .line 1238
    if-nez v0, :cond_ad

    .line 1239
    invoke-static {}, Lmiui/content/res/IconCustomizer;->loadIconConfig()Lmiui/content/res/IconCustomizer$IconConfig;

    move-result-object v3

    move-object v0, v3

    .line 1241
    iget-object v3, v0, Lmiui/content/res/IconCustomizer$IconConfig;->mConfigIconMask:Ljava/lang/String;

    invoke-static {v3}, Lmiui/content/res/IconCustomizer;->getValidMask(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1242
    .local v3, "path":Ljava/lang/String;
    invoke-static {v3}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v4

    .line 1243
    .local v4, "maskPath":Landroid/graphics/Path;
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    .line 1244
    .local v5, "rect":Landroid/graphics/RectF;
    invoke-virtual {v4, v5, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 1245
    const/high16 v1, 0x42480000    # 50.0f

    const/4 v6, 0x0

    invoke-virtual {v5, v1, v6}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    iput-boolean v1, v0, Lmiui/content/res/IconCustomizer$IconConfig;->mIsFullMask:Z

    .line 1246
    const-string v1, "IconCustomizer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "load icon config path "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lmiui/content/res/IconCustomizer$IconConfig;->mConfigIconMask:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", valid rect "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", isFullMask "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, v0, Lmiui/content/res/IconCustomizer$IconConfig;->mIsFullMask:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->makeIconMatrix(Lmiui/content/res/IconCustomizer$IconConfig;)Landroid/graphics/Matrix;

    move-result-object v1

    sput-object v1, Lmiui/content/res/IconCustomizer;->sIconTransformMatrix:Landroid/graphics/Matrix;

    .line 1250
    sput-object v0, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    .line 1251
    const/4 v1, 0x0

    sput-boolean v1, Lmiui/content/res/IconCustomizer;->isIconConfigInit:Z

    .line 1252
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x11070052

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lmiui/content/res/IconCustomizer;->sCustomizedIconSize:I

    .line 1253
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x11070051

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lmiui/content/res/IconCustomizer;->sCustomizedIconContentSize:I

    .line 1254
    iget v1, v0, Lmiui/content/res/IconCustomizer$IconConfig;->mOverridedIrregularContentWidth:I

    const v6, 0x11070053

    if-lez v1, :cond_90

    .line 1255
    iget v1, v0, Lmiui/content/res/IconCustomizer$IconConfig;->mOverridedIrregularContentWidth:I

    sput v1, Lmiui/content/res/IconCustomizer;->sCustomizedIrregularContentWidth:I

    goto :goto_9a

    .line 1257
    :cond_90
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lmiui/content/res/IconCustomizer;->sCustomizedIrregularContentWidth:I

    .line 1259
    :goto_9a
    iget v1, v0, Lmiui/content/res/IconCustomizer$IconConfig;->mOverridedIrregularContentHeight:I

    if-lez v1, :cond_a3

    .line 1260
    iget v1, v0, Lmiui/content/res/IconCustomizer$IconConfig;->mOverridedIrregularContentHeight:I

    sput v1, Lmiui/content/res/IconCustomizer;->sCustomizedIrregularContentHeight:I

    goto :goto_ad

    .line 1262
    :cond_a3
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lmiui/content/res/IconCustomizer;->sCustomizedIrregularContentHeight:I

    .line 1265
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "maskPath":Landroid/graphics/Path;
    .end local v5    # "rect":Landroid/graphics/RectF;
    :cond_ad
    :goto_ad
    monitor-exit v2

    goto :goto_b2

    :catchall_af
    move-exception v1

    monitor-exit v2
    :try_end_b1
    .catchall {:try_start_a .. :try_end_b1} :catchall_af

    throw v1

    .line 1267
    :cond_b2
    :goto_b2
    return-object v0
.end method

.method public static whitelist ensureMiuiVersionFlagExist(Landroid/content/Context;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 386
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/theme_magic/customized_icons/miui_version"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 387
    return-void

    .line 389
    :cond_e
    const-string v0, "/data/system/theme_magic/customized_icons/miui_version"

    .line 390
    .local v0, "tmpPath":Ljava/lang/String;
    if-eqz p0, :cond_28

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    .line 391
    const-string v2, "customized_icons_version"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 394
    :cond_28
    :try_start_28
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, v0}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 395
    .local v2, "out":Ljava/io/BufferedWriter;
    invoke-static {}, Lmiui/content/res/IconCustomizer;->getCustomizedIconVersionContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 396
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_3c} :catch_3d

    .line 398
    .end local v2    # "out":Ljava/io/BufferedWriter;
    goto :goto_3e

    .line 397
    :catch_3d
    move-exception v2

    .line 399
    :goto_3e
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4d

    .line 400
    invoke-static {v0, v1}, Lmiui/content/res/ThemeNativeUtils;->copy(Ljava/lang/String;Ljava/lang/String;)Z

    .line 401
    invoke-static {v0}, Lmiui/content/res/ThemeNativeUtils;->remove(Ljava/lang/String;)Z

    .line 402
    invoke-static {v1}, Lmiui/content/res/ThemeNativeUtils;->updateFilePermissionWithThemeContext(Ljava/lang/String;)Z

    .line 404
    :cond_4d
    return-void
.end method

.method private static blacklist findBetterDrawable(Landroid/content/Context;ILandroid/content/pm/ApplicationInfo;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 20
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "resId"    # I
    .param p2, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p3, "current"    # Landroid/graphics/drawable/Drawable;

    .line 706
    move-object/from16 v1, p2

    move-object/from16 v2, p3

    instance-of v0, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_82

    .line 707
    const/4 v3, 0x0

    .line 708
    .local v3, "changed":Z
    move-object v0, v2

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 709
    .local v4, "def":Landroid/graphics/Bitmap;
    invoke-static {}, Lmiui/content/res/IconCustomizer;->getCustomizedIconWidth()I

    move-result v5

    .line 710
    .local v5, "iconSize":I
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 711
    .local v6, "w":I
    const/4 v7, 0x0

    .line 713
    .local v7, "largerD":Landroid/graphics/drawable/Drawable;
    :try_start_19
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 714
    .local v0, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v8

    .line 715
    .local v8, "res":Landroid/content/res/Resources;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->densityDpi:I
    :try_end_2b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_19 .. :try_end_2b} :catch_7e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_19 .. :try_end_2b} :catch_7e

    .line 716
    .local v9, "density":I
    const/16 v10, 0x280

    .line 717
    .local v10, "maxDensity":I
    :goto_2d
    if-le v5, v6, :cond_75

    const/16 v11, 0x280

    if-ge v9, v11, :cond_75

    .line 718
    move/from16 v11, p1

    :try_start_35
    invoke-virtual {v8, v11, v9}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 719
    .local v12, "d":Landroid/graphics/drawable/Drawable;
    instance-of v13, v12, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v13, :cond_6f

    .line 720
    move-object v13, v12

    check-cast v13, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v13}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v13

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    move v6, v13

    .line 721
    move-object v7, v12

    .line 722
    const/4 v3, 0x1

    .line 723
    const-string v13, "IconCustomizer"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "find better bitmap : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", for "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_35 .. :try_end_6f} :catch_73
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_35 .. :try_end_6f} :catch_73

    .line 725
    :cond_6f
    nop

    .end local v12    # "d":Landroid/graphics/drawable/Drawable;
    add-int/lit8 v9, v9, 0x50

    .line 726
    goto :goto_2d

    .line 727
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    .end local v8    # "res":Landroid/content/res/Resources;
    .end local v9    # "density":I
    .end local v10    # "maxDensity":I
    :catch_73
    move-exception v0

    goto :goto_81

    .line 717
    .restart local v0    # "pm":Landroid/content/pm/PackageManager;
    .restart local v8    # "res":Landroid/content/res/Resources;
    .restart local v9    # "density":I
    .restart local v10    # "maxDensity":I
    :cond_75
    move/from16 v11, p1

    .line 729
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    .end local v8    # "res":Landroid/content/res/Resources;
    .end local v9    # "density":I
    .end local v10    # "maxDensity":I
    nop

    .line 730
    if-eqz v3, :cond_7c

    move-object v0, v7

    goto :goto_7d

    :cond_7c
    move-object v0, v2

    :goto_7d
    return-object v0

    .line 727
    :catch_7e
    move-exception v0

    move/from16 v11, p1

    .line 728
    .local v0, "e":Ljava/lang/Exception;
    :goto_81
    return-object v2

    .line 732
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "changed":Z
    .end local v4    # "def":Landroid/graphics/Bitmap;
    .end local v5    # "iconSize":I
    .end local v6    # "w":I
    .end local v7    # "largerD":Landroid/graphics/drawable/Drawable;
    :cond_82
    move/from16 v11, p1

    return-object v2
.end method

.method public static whitelist generateIconStyleDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;
    .registers 2
    .param p0, "base"    # Landroid/graphics/drawable/Drawable;

    .line 587
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lmiui/content/res/IconCustomizer;->generateIconStyleDrawable(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist generateIconStyleDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/drawable/BitmapDrawable;
    .registers 8
    .param p0, "base"    # Landroid/graphics/drawable/Drawable;
    .param p1, "mask"    # Landroid/graphics/Bitmap;
    .param p2, "background"    # Landroid/graphics/Bitmap;
    .param p3, "pattern"    # Landroid/graphics/Bitmap;
    .param p4, "cover"    # Landroid/graphics/Bitmap;
    .param p5, "cropOutside"    # Z

    .line 602
    invoke-static {p0, p5}, Lmiui/content/res/IconCustomizer;->getScaleRatio(Landroid/graphics/drawable/Drawable;Z)F

    move-result v0

    invoke-static {p0, v0}, Lmiui/content/res/IconCustomizer;->drawableToBitmap(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 604
    .local v0, "icon":Landroid/graphics/Bitmap;
    instance-of v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-nez v1, :cond_10

    .line 605
    invoke-static {v0, p1, p2, p3, p4}, Lmiui/content/res/IconCustomizer;->composeIcon(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 607
    :cond_10
    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->bitmapToDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist generateIconStyleDrawable(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/BitmapDrawable;
    .registers 9
    .param p0, "base"    # Landroid/graphics/drawable/Drawable;
    .param p1, "cropOutside"    # Z

    .line 591
    invoke-static {p0, p1}, Lmiui/content/res/IconCustomizer;->getScaleRatio(Landroid/graphics/drawable/Drawable;Z)F

    move-result v0

    invoke-static {p0, v0}, Lmiui/content/res/IconCustomizer;->drawableToBitmap(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 593
    .local v0, "icon":Landroid/graphics/Bitmap;
    instance-of v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-nez v1, :cond_1c

    .line 594
    const/4 v1, 0x0

    new-array v6, v1, [Ljava/lang/String;

    const-string v2, "icon_mask.png"

    const-string v3, "icon_background.png"

    const-string v4, "icon_pattern.png"

    const-string v5, "icon_border.png"

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Lmiui/content/res/IconCustomizer;->composeIconWithTransform(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 596
    :cond_1c
    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->bitmapToDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist generateShortcutIconDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;
    .registers 9
    .param p0, "base"    # Landroid/graphics/drawable/Drawable;

    .line 579
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lmiui/content/res/IconCustomizer;->getScaleRatio(Landroid/graphics/drawable/Drawable;Z)F

    move-result v1

    invoke-static {p0, v1}, Lmiui/content/res/IconCustomizer;->drawableToBitmap(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 580
    .local v1, "icon":Landroid/graphics/Bitmap;
    instance-of v2, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-nez v2, :cond_1b

    .line 581
    const/4 v4, 0x0

    new-array v7, v0, [Ljava/lang/String;

    const-string v3, "icon_mask.png"

    const-string v5, "icon_shortcut.png"

    const-string v6, "icon_shortcut_arrow.png"

    move-object v2, v1

    invoke-static/range {v2 .. v7}, Lmiui/content/res/IconCustomizer;->composeIconWithTransform(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 583
    :cond_1b
    invoke-static {v1}, Lmiui/content/res/IconCustomizer;->bitmapToDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getAdaptiveIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Z)Landroid/graphics/drawable/Drawable;
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "resid"    # I
    .param p4, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p5, "isPackageIcon"    # Z

    .line 738
    invoke-static {}, Lmiui/content/res/IconCustomizer;->ensureIconConfigLoaded()Lmiui/content/res/IconCustomizer$IconConfig;

    move-result-object v0

    .line 739
    .local v0, "config":Lmiui/content/res/IconCustomizer$IconConfig;
    invoke-static {p1, p2}, Lmiui/content/res/IconCustomizer;->getIconNames(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 740
    .local v1, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 741
    .local v3, "fileName":Ljava/lang/String;
    invoke-static {v3}, Lmiui/content/res/IconCustomizer;->getAdaptiveIconFromCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 742
    .local v4, "adaptiveIcon":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_16

    .line 743
    return-object v4

    .line 745
    :cond_16
    invoke-static {v1}, Lmiui/content/res/IconCustomizer;->getIconBitmapsFromTheme(Ljava/util/List;)[Landroid/graphics/Bitmap;

    move-result-object v5

    .line 746
    .local v5, "iconBitmaps":[Landroid/graphics/Bitmap;
    invoke-static {v5}, Lmiui/theme/IconCustomizerUtils;->transformToAdaptiveIcon([Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 748
    .end local v5    # "iconBitmaps":[Landroid/graphics/Bitmap;
    if-nez v4, :cond_40

    if-eqz p3, :cond_40

    if-eqz p4, :cond_40

    iget v5, p4, Landroid/content/pm/ApplicationInfo;->icon:I

    if-ne p3, v5, :cond_2a

    if-eqz p5, :cond_40

    .line 749
    :cond_2a
    invoke-static {p0, p1, p3, p4}, Lmiui/theme/IconCustomizerUtils;->getAdaptiveIconFromPackage(Landroid/content/Context;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 750
    instance-of v5, v4, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v5, :cond_40

    invoke-static {}, Lmiui/content/res/IconCustomizer;->isLiteOrMiddle()Z

    move-result v5

    if-eqz v5, :cond_40

    .line 751
    move-object v5, v4

    check-cast v5, Landroid/graphics/drawable/AdaptiveIconDrawable;

    .line 752
    .local v5, "aid":Landroid/graphics/drawable/AdaptiveIconDrawable;
    const/4 v6, 0x1

    invoke-static {p0, v5, v6, v3}, Lmiui/content/res/IconCustomizer;->adaptiveIconToDrawable(Landroid/content/Context;Landroid/graphics/drawable/AdaptiveIconDrawable;ZLjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 755
    .end local v5    # "aid":Landroid/graphics/drawable/AdaptiveIconDrawable;
    :cond_40
    if-nez v4, :cond_5f

    iget-boolean v5, v0, Lmiui/content/res/IconCustomizer$IconConfig;->mUseModIcon:Z

    if-eqz v5, :cond_5f

    .line 756
    invoke-static {v1}, Lmiui/content/res/IconCustomizer;->getMiuiModIconBitamps(Ljava/util/List;)[Landroid/graphics/Bitmap;

    move-result-object v5

    .line 757
    .local v5, "iconBitmaps":[Landroid/graphics/Bitmap;
    invoke-static {v5}, Lmiui/theme/IconCustomizerUtils;->transformToAdaptiveIcon([Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 758
    instance-of v6, v4, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v6, :cond_5f

    invoke-static {}, Lmiui/content/res/IconCustomizer;->isLiteOrMiddle()Z

    move-result v6

    if-eqz v6, :cond_5f

    .line 759
    move-object v6, v4

    check-cast v6, Landroid/graphics/drawable/AdaptiveIconDrawable;

    .line 760
    .local v6, "aid":Landroid/graphics/drawable/AdaptiveIconDrawable;
    invoke-static {p0, v6, v2, v3}, Lmiui/content/res/IconCustomizer;->adaptiveIconToDrawable(Landroid/content/Context;Landroid/graphics/drawable/AdaptiveIconDrawable;ZLjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 763
    .end local v5    # "iconBitmaps":[Landroid/graphics/Bitmap;
    .end local v6    # "aid":Landroid/graphics/drawable/AdaptiveIconDrawable;
    :cond_5f
    if-eqz v4, :cond_75

    .line 764
    sget-object v2, Lmiui/content/res/IconCustomizer;->adaptiveIconCache:Ljava/util/Map;

    monitor-enter v2

    .line 765
    :try_start_64
    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 766
    monitor-exit v2

    goto :goto_75

    :catchall_72
    move-exception v5

    monitor-exit v2
    :try_end_74
    .catchall {:try_start_64 .. :try_end_74} :catchall_72

    throw v5

    .line 768
    :cond_75
    :goto_75
    return-object v4
.end method

.method private static blacklist getAdaptiveIconFromCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 5
    .param p0, "fileName"    # Ljava/lang/String;

    .line 645
    const/4 v0, 0x0

    .line 646
    .local v0, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    sget-object v1, Lmiui/content/res/IconCustomizer;->adaptiveIconCache:Ljava/util/Map;

    monitor-enter v1

    .line 647
    :try_start_4
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    move-object v0, v2

    .line 648
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_26

    .line 649
    if-eqz v0, :cond_24

    .line 650
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 651
    .local v2, "drawable":Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v2, :cond_1b

    .line 652
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 654
    :cond_1b
    monitor-enter v1

    .line 655
    :try_start_1c
    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    monitor-exit v1

    goto :goto_24

    :catchall_21
    move-exception v3

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_21

    throw v3

    .line 658
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_24
    :goto_24
    const/4 v1, 0x0

    return-object v1

    .line 648
    :catchall_26
    move-exception v2

    :try_start_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v2
.end method

.method public static whitelist getAnimatingIconRelativePath(Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "info"    # Landroid/content/pm/PackageItemInfo;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .line 527
    const-string v0, "animating_icons/"

    const-string v1, "fancy/manifest.xml"

    invoke-static {p0, p1, p2, v0, v1}, Lmiui/content/res/IconCustomizer;->getIconRelativePath(Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getConfigIconMaskValue()Ljava/lang/String;
    .registers 1

    .line 162
    invoke-static {}, Lmiui/content/res/IconCustomizer;->ensureIconConfigLoaded()Lmiui/content/res/IconCustomizer$IconConfig;

    move-result-object v0

    iget-object v0, v0, Lmiui/content/res/IconCustomizer$IconConfig;->mConfigIconMask:Ljava/lang/String;

    return-object v0
.end method

.method private static blacklist getContentRatio(Landroid/graphics/drawable/Drawable;Lmiui/content/res/IconCustomizer$IconConfig;)F
    .registers 22
    .param p0, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p1, "config"    # Lmiui/content/res/IconCustomizer$IconConfig;

    .line 985
    move-object/from16 v0, p0

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    const/high16 v2, -0x40800000    # -1.0f

    if-nez v1, :cond_9

    return v2

    .line 987
    :cond_9
    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 988
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v3, v4, :cond_19

    return v2

    .line 991
    :cond_19
    const/4 v3, 0x1

    .line 992
    .local v3, "isRegularShape":Z
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    .line 993
    .local v10, "width":I
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    .line 994
    .local v11, "height":I
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v12

    .line 995
    .local v12, "rowBytes":I
    invoke-static {v1}, Lmiui/graphics/BitmapFactoryCompat;->getBuffer(Landroid/graphics/Bitmap;)[B

    move-result-object v13

    .line 996
    .local v13, "pixels":[B
    const-string v14, "IconCustomizer"

    if-eqz v13, :cond_12e

    array-length v4, v13

    const/4 v15, 0x1

    if-ge v4, v15, :cond_39

    move-object/from16 v18, v1

    move v1, v2

    move/from16 v19, v3

    goto/16 :goto_133

    .line 1000
    :cond_39
    const/4 v8, 0x1

    const/4 v9, 0x0

    move v4, v10

    move v5, v11

    move v6, v12

    move-object v7, v13

    invoke-static/range {v4 .. v9}, Lmiui/content/res/IconCustomizer;->getEdgePosition(III[BZZ)I

    move-result v9

    .line 1001
    .local v9, "top":I
    const/16 v16, 0x1

    move v2, v9

    .end local v9    # "top":I
    .local v2, "top":I
    move/from16 v9, v16

    invoke-static/range {v4 .. v9}, Lmiui/content/res/IconCustomizer;->getEdgePosition(III[BZZ)I

    move-result v9

    .line 1002
    .local v9, "bottom":I
    const/4 v8, 0x0

    const/16 v16, 0x0

    move v15, v9

    .end local v9    # "bottom":I
    .local v15, "bottom":I
    move/from16 v9, v16

    invoke-static/range {v4 .. v9}, Lmiui/content/res/IconCustomizer;->getEdgePosition(III[BZZ)I

    move-result v9

    .line 1003
    .local v9, "left":I
    const/16 v16, 0x1

    move v0, v9

    .end local v9    # "left":I
    .local v0, "left":I
    move/from16 v9, v16

    invoke-static/range {v4 .. v9}, Lmiui/content/res/IconCustomizer;->getEdgePosition(III[BZZ)I

    move-result v9

    .line 1004
    .local v9, "right":I
    if-ltz v2, :cond_f6

    if-ltz v15, :cond_f6

    if-ltz v0, :cond_f6

    if-gez v9, :cond_6e

    move-object/from16 v18, v1

    move/from16 v19, v3

    move v3, v9

    goto/16 :goto_fb

    .line 1009
    :cond_6e
    move-object/from16 v14, p1

    iget-boolean v4, v14, Lmiui/content/res/IconCustomizer$IconConfig;->mIsFullMask:Z

    if-eqz v4, :cond_79

    invoke-static {}, Lmiui/content/res/IconCustomizer;->getCustomizedIconHeight()I

    move-result v4

    goto :goto_7d

    :cond_79
    invoke-static {}, Lmiui/content/res/IconCustomizer;->getCustomizedIconContentSize()I

    move-result v4

    :goto_7d
    move v8, v4

    .line 1010
    .local v8, "contentSize":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    sub-int v5, v9, v0

    const/4 v6, 0x1

    add-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v7, v4

    .line 1011
    .local v7, "iconContentWidth":F
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sub-int v5, v15, v2

    add-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v6, v4

    .line 1014
    .local v6, "iconContentHeight":F
    const v4, 0x3f4ccccd    # 0.8f

    mul-float v5, v6, v4

    cmpg-float v5, v7, v5

    if-ltz v5, :cond_cb

    mul-float/2addr v4, v7

    cmpg-float v4, v6, v4

    if-gez v4, :cond_b0

    move-object/from16 v18, v1

    move/from16 v19, v3

    move/from16 v16, v6

    move/from16 v17, v7

    move v1, v8

    move v3, v9

    goto :goto_d5

    .line 1018
    :cond_b0
    move v4, v12

    move-object v5, v13

    move/from16 v16, v6

    .end local v6    # "iconContentHeight":F
    .local v16, "iconContentHeight":F
    move v6, v0

    move/from16 v17, v7

    .end local v7    # "iconContentWidth":F
    .local v17, "iconContentWidth":F
    move v7, v2

    move-object/from16 v18, v1

    move v1, v8

    .end local v8    # "contentSize":I
    .local v1, "contentSize":I
    .local v18, "bitmap":Landroid/graphics/Bitmap;
    move v8, v9

    move/from16 v19, v3

    move v3, v9

    .end local v9    # "right":I
    .local v3, "right":I
    .local v19, "isRegularShape":Z
    move v9, v15

    invoke-static/range {v4 .. v9}, Lmiui/content/res/IconCustomizer;->isRegularShape(I[BIIII)Z

    move-result v4

    if-nez v4, :cond_c8

    .line 1019
    const/4 v4, 0x0

    .end local v19    # "isRegularShape":Z
    .local v4, "isRegularShape":Z
    goto :goto_d6

    .line 1018
    .end local v4    # "isRegularShape":Z
    .restart local v19    # "isRegularShape":Z
    :cond_c8
    move/from16 v4, v19

    goto :goto_d6

    .line 1014
    .end local v16    # "iconContentHeight":F
    .end local v17    # "iconContentWidth":F
    .end local v18    # "bitmap":Landroid/graphics/Bitmap;
    .end local v19    # "isRegularShape":Z
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    .local v3, "isRegularShape":Z
    .restart local v6    # "iconContentHeight":F
    .restart local v7    # "iconContentWidth":F
    .restart local v8    # "contentSize":I
    .restart local v9    # "right":I
    :cond_cb
    move-object/from16 v18, v1

    move/from16 v19, v3

    move/from16 v16, v6

    move/from16 v17, v7

    move v1, v8

    move v3, v9

    .line 1015
    .end local v6    # "iconContentHeight":F
    .end local v7    # "iconContentWidth":F
    .end local v8    # "contentSize":I
    .end local v9    # "right":I
    .local v1, "contentSize":I
    .local v3, "right":I
    .restart local v16    # "iconContentHeight":F
    .restart local v17    # "iconContentWidth":F
    .restart local v18    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v19    # "isRegularShape":Z
    :goto_d5
    const/4 v4, 0x0

    .line 1022
    .end local v19    # "isRegularShape":Z
    .restart local v4    # "isRegularShape":Z
    :goto_d6
    if-eqz v4, :cond_e3

    .line 1023
    int-to-float v5, v1

    div-float v5, v5, v17

    int-to-float v6, v1

    div-float v6, v6, v16

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    return v5

    .line 1026
    :cond_e3
    invoke-static {}, Lmiui/content/res/IconCustomizer;->getCustomizedIrregularContentWidth()I

    move-result v5

    .line 1027
    .local v5, "customizedIrregularContentWidth":I
    invoke-static {}, Lmiui/content/res/IconCustomizer;->getCustomizedIrregularContentHeight()I

    move-result v6

    .line 1028
    .local v6, "customizedIrregularContentHeight":I
    int-to-float v7, v5

    div-float v7, v7, v17

    .line 1029
    .local v7, "ratioW":F
    int-to-float v8, v6

    div-float v8, v8, v16

    .line 1030
    .local v8, "ratioH":F
    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v9

    return v9

    .line 1004
    .end local v4    # "isRegularShape":Z
    .end local v5    # "customizedIrregularContentWidth":I
    .end local v6    # "customizedIrregularContentHeight":I
    .end local v7    # "ratioW":F
    .end local v8    # "ratioH":F
    .end local v16    # "iconContentHeight":F
    .end local v17    # "iconContentWidth":F
    .end local v18    # "bitmap":Landroid/graphics/Bitmap;
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    .local v3, "isRegularShape":Z
    .restart local v9    # "right":I
    :cond_f6
    move-object/from16 v18, v1

    move/from16 v19, v3

    move v3, v9

    .line 1005
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v9    # "right":I
    .local v3, "right":I
    .restart local v18    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v19    # "isRegularShape":Z
    :goto_fb
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getContentRatio fail, edge invalid:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    const/high16 v1, -0x40800000    # -1.0f

    return v1

    .line 996
    .end local v0    # "left":I
    .end local v2    # "top":I
    .end local v15    # "bottom":I
    .end local v18    # "bitmap":Landroid/graphics/Bitmap;
    .end local v19    # "isRegularShape":Z
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    .local v3, "isRegularShape":Z
    :cond_12e
    move-object/from16 v18, v1

    move v1, v2

    move/from16 v19, v3

    .line 997
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "isRegularShape":Z
    .restart local v18    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v19    # "isRegularShape":Z
    :goto_133
    const-string v0, "getContentRatio fail pixels invalid."

    invoke-static {v14, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    return v1
.end method

.method public static whitelist getCustomizedIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filename"    # Ljava/lang/String;

    .line 620
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 621
    .local v0, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 622
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2, v1}, Lmiui/content/res/IconCustomizer;->getCustomizedIconInner(Landroid/content/Context;Ljava/util/List;Landroid/graphics/drawable/Drawable;ZLmiui/content/res/IconCustomizer$IconConfig;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist getCustomizedIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Z)Landroid/graphics/drawable/BitmapDrawable;
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "resid"    # I
    .param p4, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p5, "isPackageIcon"    # Z

    .line 634
    invoke-static/range {p0 .. p5}, Lmiui/content/res/IconCustomizer;->getCustomizedNormalIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Z)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 636
    .local v0, "dr":Landroid/graphics/drawable/BitmapDrawable;
    if-nez v0, :cond_16

    if-eqz p3, :cond_16

    if-eqz p4, :cond_16

    if-eqz p2, :cond_16

    .line 637
    const/4 v3, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move-object v5, p4

    invoke-static/range {v1 .. v6}, Lmiui/content/res/IconCustomizer;->getCustomizedIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Z)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 639
    :cond_16
    return-object v0
.end method

.method public static whitelist getCustomizedIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "original"    # Landroid/graphics/drawable/Drawable;

    .line 615
    invoke-static {}, Lmiui/content/res/IconCustomizer;->ensureIconConfigLoaded()Lmiui/content/res/IconCustomizer$IconConfig;

    move-result-object v0

    .line 616
    .local v0, "config":Lmiui/content/res/IconCustomizer$IconConfig;
    invoke-static {p1, p2}, Lmiui/content/res/IconCustomizer;->getIconNames(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iget-boolean v2, v0, Lmiui/content/res/IconCustomizer$IconConfig;->mUseModIcon:Z

    invoke-static {p0, v1, p3, v2, v0}, Lmiui/content/res/IconCustomizer;->getCustomizedIconInner(Landroid/content/Context;Ljava/util/List;Landroid/graphics/drawable/Drawable;ZLmiui/content/res/IconCustomizer$IconConfig;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist getCustomizedIconContentSize()I
    .registers 3

    .line 245
    sget v0, Lmiui/content/res/IconCustomizer;->sCustomizedIconContentSize:I

    .line 246
    .local v0, "ret":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2a

    .line 247
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11070051

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 248
    sput v0, Lmiui/content/res/IconCustomizer;->sCustomizedIconContentSize:I

    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCustomizedIconContentSize "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IconCustomizer"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_2a
    return v0
.end method

.method public static whitelist getCustomizedIconFromCache(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .registers 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "className"    # Ljava/lang/String;

    .line 611
    invoke-static {p0, p1}, Lmiui/content/res/IconCustomizer;->getFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->getDrawableFromMemoryCache(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getCustomizedIconHeight()I
    .registers 3

    .line 266
    sget v0, Lmiui/content/res/IconCustomizer;->sCustomizedIconSize:I

    .line 267
    .local v0, "ret":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2a

    .line 268
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11070052

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 269
    sput v0, Lmiui/content/res/IconCustomizer;->sCustomizedIconSize:I

    .line 270
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCustomizedIconH "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IconCustomizer"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_2a
    return v0
.end method

.method private static blacklist getCustomizedIconInner(Landroid/content/Context;Ljava/util/List;Landroid/graphics/drawable/Drawable;ZLmiui/content/res/IconCustomizer$IconConfig;)Landroid/graphics/drawable/BitmapDrawable;
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "original"    # Landroid/graphics/drawable/Drawable;
    .param p3, "tryModIcon"    # Z
    .param p4, "config"    # Lmiui/content/res/IconCustomizer$IconConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/graphics/drawable/Drawable;",
            "Z",
            "Lmiui/content/res/IconCustomizer$IconConfig;",
            ")",
            "Landroid/graphics/drawable/BitmapDrawable;"
        }
    .end annotation

    .line 883
    .local p1, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 884
    .local v1, "filename":Ljava/lang/String;
    invoke-static {v1}, Lmiui/content/res/IconCustomizer;->getDrawableFromMemoryCache(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    .line 885
    .local v2, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v2, :cond_e

    return-object v2

    .line 887
    :cond_e
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    if-nez v2, :cond_3a

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3a

    .line 888
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lmiui/content/res/IconCustomizer;->getIconFromTheme(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 889
    .local v4, "icon":Landroid/graphics/Bitmap;
    if-nez v4, :cond_25

    const/4 v5, 0x0

    goto :goto_36

    :cond_25
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v7

    invoke-virtual {v4, v7, v0}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :goto_36
    move-object v2, v5

    .line 887
    .end local v4    # "icon":Landroid/graphics/Bitmap;
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 892
    .end local v3    # "i":I
    :cond_3a
    if-nez v2, :cond_59

    .line 893
    const/4 v0, 0x0

    .line 894
    .local v0, "icon":Landroid/graphics/Bitmap;
    if-eqz p3, :cond_55

    .line 895
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_40
    if-nez v0, :cond_55

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_55

    .line 896
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lmiui/content/res/IconCustomizer;->getMiuiModIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 895
    add-int/lit8 v3, v3, 0x1

    goto :goto_40

    .line 899
    .end local v3    # "i":I
    :cond_55
    invoke-static {p0, v0, p2, v1, p4}, Lmiui/content/res/IconCustomizer;->transToMiuiModIcon(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Lmiui/content/res/IconCustomizer$IconConfig;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    .line 902
    .end local v0    # "icon":Landroid/graphics/Bitmap;
    :cond_59
    if-eqz v2, :cond_6f

    .line 903
    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconCache:Ljava/util/Map;

    monitor-enter v0

    .line 904
    :try_start_5e
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 905
    monitor-exit v0

    goto :goto_6f

    :catchall_6c
    move-exception v3

    monitor-exit v0
    :try_end_6e
    .catchall {:try_start_5e .. :try_end_6e} :catchall_6c

    throw v3

    .line 907
    :cond_6f
    :goto_6f
    return-object v2
.end method

.method private static blacklist getCustomizedIconVersionContent()Ljava/lang/String;
    .registers 2

    .line 487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/util/MiuiDisplayMetrics;->DENSITY_DEVICE:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getCustomizedIconWidth()I
    .registers 3

    .line 256
    sget v0, Lmiui/content/res/IconCustomizer;->sCustomizedIconSize:I

    .line 257
    .local v0, "ret":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2a

    .line 258
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11070052

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 259
    sput v0, Lmiui/content/res/IconCustomizer;->sCustomizedIconSize:I

    .line 260
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCustomizedIconW "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IconCustomizer"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_2a
    return v0
.end method

.method private static blacklist getCustomizedIrregularContentHeight()I
    .registers 3

    .line 229
    sget v0, Lmiui/content/res/IconCustomizer;->sCustomizedIrregularContentHeight:I

    .line 230
    .local v0, "ret":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_39

    .line 231
    invoke-static {}, Lmiui/content/res/IconCustomizer;->getIconConfig()Lmiui/content/res/IconCustomizer$IconConfig;

    move-result-object v1

    iget v1, v1, Lmiui/content/res/IconCustomizer$IconConfig;->mOverridedIrregularContentHeight:I

    if-lez v1, :cond_14

    .line 232
    invoke-static {}, Lmiui/content/res/IconCustomizer;->getIconConfig()Lmiui/content/res/IconCustomizer$IconConfig;

    move-result-object v1

    iget v0, v1, Lmiui/content/res/IconCustomizer$IconConfig;->mOverridedIrregularContentHeight:I

    goto :goto_1f

    .line 234
    :cond_14
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11070053

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 236
    :goto_1f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCustomizedIrregularContentH "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IconCustomizer"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    sput v0, Lmiui/content/res/IconCustomizer;->sCustomizedIrregularContentHeight:I

    .line 239
    :cond_39
    return v0
.end method

.method private static blacklist getCustomizedIrregularContentWidth()I
    .registers 3

    .line 214
    sget v0, Lmiui/content/res/IconCustomizer;->sCustomizedIrregularContentWidth:I

    .line 215
    .local v0, "ret":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_39

    .line 216
    invoke-static {}, Lmiui/content/res/IconCustomizer;->getIconConfig()Lmiui/content/res/IconCustomizer$IconConfig;

    move-result-object v1

    iget v1, v1, Lmiui/content/res/IconCustomizer$IconConfig;->mOverridedIrregularContentWidth:I

    if-lez v1, :cond_14

    .line 217
    invoke-static {}, Lmiui/content/res/IconCustomizer;->getIconConfig()Lmiui/content/res/IconCustomizer$IconConfig;

    move-result-object v1

    iget v0, v1, Lmiui/content/res/IconCustomizer$IconConfig;->mOverridedIrregularContentWidth:I

    goto :goto_1f

    .line 219
    :cond_14
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11070053

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 221
    :goto_1f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCustomizedIrregularContentW "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IconCustomizer"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    sput v0, Lmiui/content/res/IconCustomizer;->sCustomizedIrregularContentWidth:I

    .line 224
    :cond_39
    return v0
.end method

.method private static blacklist getCustomizedNormalIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Z)Landroid/graphics/drawable/BitmapDrawable;
    .registers 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "resid"    # I
    .param p4, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p5, "isPackageIcon"    # Z

    .line 682
    invoke-static {}, Lmiui/content/res/IconCustomizer;->ensureIconConfigLoaded()Lmiui/content/res/IconCustomizer$IconConfig;

    move-result-object v0

    .line 683
    .local v0, "config":Lmiui/content/res/IconCustomizer$IconConfig;
    invoke-static {p1, p2}, Lmiui/content/res/IconCustomizer;->getIconNames(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 684
    .local v1, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 685
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 686
    .local v3, "filename":Ljava/lang/String;
    iget-boolean v4, v0, Lmiui/content/res/IconCustomizer$IconConfig;->mUseModIcon:Z

    const/4 v5, 0x0

    invoke-static {p0, v1, v5, v4, v0}, Lmiui/content/res/IconCustomizer;->getCustomizedIconInner(Landroid/content/Context;Ljava/util/List;Landroid/graphics/drawable/Drawable;ZLmiui/content/res/IconCustomizer$IconConfig;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v4

    .line 687
    .local v4, "dr":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v4, :cond_1d

    .line 688
    return-object v4

    .line 691
    :cond_1d
    const/4 v6, 0x0

    .line 692
    .local v6, "original":Landroid/graphics/drawable/Drawable;
    if-eqz p3, :cond_30

    if-eqz p4, :cond_30

    iget v7, p4, Landroid/content/pm/ApplicationInfo;->icon:I

    if-ne p3, v7, :cond_28

    if-eqz p5, :cond_30

    .line 693
    :cond_28
    invoke-virtual {v2, p1, p3, p4}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 694
    invoke-static {p0, p3, p4, v6}, Lmiui/content/res/IconCustomizer;->findBetterDrawable(Landroid/content/Context;ILandroid/content/pm/ApplicationInfo;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 696
    :cond_30
    invoke-static {p0, v5, v6, v3, v0}, Lmiui/content/res/IconCustomizer;->transToMiuiModIcon(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Lmiui/content/res/IconCustomizer$IconConfig;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v4

    .line 697
    if-eqz v4, :cond_4a

    .line 698
    sget-object v5, Lmiui/content/res/IconCustomizer;->sIconCache:Ljava/util/Map;

    monitor-enter v5

    .line 699
    :try_start_39
    new-instance v7, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v5, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 700
    monitor-exit v5

    goto :goto_4a

    :catchall_47
    move-exception v7

    monitor-exit v5
    :try_end_49
    .catchall {:try_start_39 .. :try_end_49} :catchall_47

    throw v7

    .line 702
    :cond_4a
    :goto_4a
    return-object v4
.end method

.method private static blacklist getDimension(Ljava/lang/String;)I
    .registers 3
    .param p0, "value"    # Ljava/lang/String;

    .line 1622
    nop

    .line 1623
    invoke-static {p0}, Landroid/app/MiuiThemeHelper;->parseDimension(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1624
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 1623
    invoke-static {v0, v1}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v0

    .line 1622
    return v0
.end method

.method private static blacklist getDrawableFromMemoryCache(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .registers 4
    .param p0, "name"    # Ljava/lang/String;

    .line 563
    const/4 v0, 0x0

    .line 564
    .local v0, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/Bitmap;>;"
    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconCache:Ljava/util/Map;

    monitor-enter v1

    .line 565
    :try_start_4
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    move-object v0, v2

    .line 566
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_1b

    .line 567
    if-eqz v0, :cond_19

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-static {v1}, Lmiui/content/res/IconCustomizer;->bitmapToDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    return-object v1

    .line 566
    :catchall_1b
    move-exception v2

    :try_start_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v2
.end method

.method private static blacklist getEdgePosition(III[BZZ)I
    .registers 15
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "rowBytes"    # I
    .param p3, "pixels"    # [B
    .param p4, "isHorizontal"    # Z
    .param p5, "isInvert"    # Z

    .line 1048
    const/4 v0, -0x1

    if-nez p5, :cond_5

    move v1, v0

    goto :goto_6

    :cond_5
    move v1, p0

    .line 1049
    .local v1, "x":I
    :goto_6
    if-nez p5, :cond_a

    move v2, v0

    goto :goto_b

    :cond_a
    move v2, p1

    .line 1050
    .local v2, "y":I
    :goto_b
    const/4 v3, 0x1

    if-eqz p5, :cond_10

    move v4, v0

    goto :goto_11

    :cond_10
    move v4, v3

    .line 1051
    .local v4, "dx":I
    :goto_11
    if-eqz p5, :cond_14

    goto :goto_15

    :cond_14
    move v0, v3

    .line 1053
    .local v0, "dy":I
    :goto_15
    const/16 v3, 0x90

    .line 1054
    .local v3, "alphaThreshold":I
    if-eqz p3, :cond_56

    .line 1055
    const/4 v5, 0x0

    .line 1056
    .local v5, "length":I
    :cond_1a
    if-nez v5, :cond_56

    .line 1057
    const/16 v6, 0x90

    if-eqz p4, :cond_3b

    .line 1058
    add-int/2addr v2, v0

    .line 1059
    if-ltz v2, :cond_56

    if-lt v2, p1, :cond_26

    goto :goto_56

    .line 1061
    :cond_26
    const/4 v1, 0x0

    :goto_27
    if-ge v1, p0, :cond_1a

    .line 1062
    mul-int v7, v2, p2

    shl-int/lit8 v8, v1, 0x2

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x3

    aget-byte v7, p3, v7

    and-int/lit16 v7, v7, 0xff

    if-le v7, v6, :cond_38

    .line 1063
    add-int/lit8 v5, v5, 0x1

    .line 1061
    :cond_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 1066
    :cond_3b
    add-int/2addr v1, v4

    .line 1067
    if-ltz v1, :cond_56

    if-lt v1, p0, :cond_41

    goto :goto_56

    .line 1069
    :cond_41
    const/4 v2, 0x0

    :goto_42
    if-ge v2, p1, :cond_1a

    .line 1070
    mul-int v7, v2, p2

    shl-int/lit8 v8, v1, 0x2

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x3

    aget-byte v7, p3, v7

    and-int/lit16 v7, v7, 0xff

    if-le v7, v6, :cond_53

    .line 1071
    add-int/lit8 v5, v5, 0x1

    .line 1069
    :cond_53
    add-int/lit8 v2, v2, 0x1

    goto :goto_42

    .line 1077
    .end local v5    # "length":I
    :cond_56
    :goto_56
    if-eqz p4, :cond_5a

    move v5, v2

    goto :goto_5b

    :cond_5a
    move v5, v1

    :goto_5b
    return v5
.end method

.method public static whitelist getFancyIconRelativePath(Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "info"    # Landroid/content/pm/PackageItemInfo;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .line 532
    const-string v0, "fancy_icons/"

    const-string v1, "manifest.xml"

    invoke-static {p0, p1, p2, v0, v1}, Lmiui/content/res/IconCustomizer;->getIconRelativePath(Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "className"    # Ljava/lang/String;

    .line 290
    const-string v0, ".png"

    if-nez p1, :cond_16

    .line 291
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 294
    :cond_16
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 298
    :cond_2e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x23

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getHue(I[I)F
    .registers 10
    .param p0, "color"    # I
    .param p1, "RGB"    # [I

    .line 1754
    invoke-static {p0, p1}, Lmiui/content/res/IconCustomizer;->colorToRGB(I[I)V

    .line 1756
    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v2, 0x1

    aget v3, p1, v2

    const/4 v4, 0x2

    aget v5, p1, v4

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1757
    .local v1, "min":I
    aget v0, p1, v0

    aget v2, p1, v2

    aget v3, p1, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1759
    .local v0, "max":I
    sub-int v2, v0, v1

    .line 1760
    .local v2, "range":I
    if-nez v2, :cond_28

    .line 1761
    const/4 v3, 0x0

    return v3

    .line 1763
    :cond_28
    const/4 v3, 0x0

    .line 1764
    .local v3, "index":I
    :goto_29
    if-ge v3, v4, :cond_32

    aget v5, p1, v3

    if-eq v1, v5, :cond_32

    .line 1765
    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    .line 1767
    :cond_32
    add-int/lit8 v4, v3, 0x1

    rem-int/lit8 v4, v4, 0x3

    mul-int/lit8 v4, v4, 0x78

    int-to-float v4, v4

    .line 1768
    .local v4, "hue":F
    add-int/lit8 v5, v3, 0x2

    rem-int/lit8 v5, v5, 0x3

    aget v5, p1, v5

    sub-int/2addr v5, v1

    int-to-float v5, v5

    const/high16 v6, 0x42700000    # 60.0f

    mul-float/2addr v5, v6

    int-to-float v7, v2

    div-float/2addr v5, v7

    add-float/2addr v4, v5

    .line 1769
    add-int/lit8 v5, v3, 0x1

    rem-int/lit8 v5, v5, 0x3

    aget v5, p1, v5

    sub-int v5, v0, v5

    int-to-float v5, v5

    mul-float/2addr v5, v6

    int-to-float v6, v2

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    .line 1771
    return v4
.end method

.method public static whitelist getIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Z)Landroid/graphics/drawable/Drawable;
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "resid"    # I
    .param p4, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p5, "isPackageIcon"    # Z

    .line 663
    invoke-static {}, Lmiui/content/res/IconCustomizer;->ensureIconConfigLoaded()Lmiui/content/res/IconCustomizer$IconConfig;

    move-result-object v0

    .line 664
    .local v0, "config":Lmiui/content/res/IconCustomizer$IconConfig;
    const/4 v1, 0x0

    .line 665
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-le v2, v3, :cond_13

    iget-boolean v2, v0, Lmiui/content/res/IconCustomizer$IconConfig;->mSupportLayerIcon:Z

    if-eqz v2, :cond_13

    .line 666
    invoke-static/range {p0 .. p5}, Lmiui/content/res/IconCustomizer;->getAdaptiveIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 668
    :cond_13
    if-nez v1, :cond_19

    .line 669
    invoke-static/range {p0 .. p5}, Lmiui/content/res/IconCustomizer;->getCustomizedNormalIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Z)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    .line 671
    :cond_19
    if-nez v1, :cond_2b

    if-eqz p3, :cond_2b

    if-eqz p4, :cond_2b

    if-eqz p2, :cond_2b

    .line 672
    const/4 v4, 0x0

    const/4 v7, 0x1

    move-object v2, p0

    move-object v3, p1

    move v5, p3

    move-object v6, p4

    invoke-static/range {v2 .. v7}, Lmiui/content/res/IconCustomizer;->getIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 674
    :cond_2b
    return-object v1
.end method

.method private static blacklist getIconBitmapsFromTheme(Ljava/util/List;)[Landroid/graphics/Bitmap;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)[",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .line 772
    .local p0, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 773
    .local v0, "iconBitmaps":[Landroid/graphics/Bitmap;
    invoke-static {}, Lmiui/content/res/ThemeResources;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v1

    if-eqz v1, :cond_22

    .line 774
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 775
    .local v1, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    if-ge v2, v1, :cond_22

    .line 776
    invoke-static {}, Lmiui/content/res/ThemeResources;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v3

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lmiui/content/res/ThemeResourcesSystem;->getIconBitmaps(Ljava/lang/String;)[Landroid/graphics/Bitmap;

    move-result-object v0

    .line 777
    if-eqz v0, :cond_1f

    .line 778
    goto :goto_22

    .line 775
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 782
    .end local v1    # "n":I
    .end local v2    # "i":I
    :cond_22
    :goto_22
    return-object v0
.end method

.method public static whitelist getIconClipCornerRadius()F
    .registers 1

    .line 166
    invoke-static {}, Lmiui/content/res/IconCustomizer;->ensureIconConfigLoaded()Lmiui/content/res/IconCustomizer$IconConfig;

    move-result-object v0

    iget v0, v0, Lmiui/content/res/IconCustomizer$IconConfig;->mIconClipCornerRadius:F

    return v0
.end method

.method public static whitelist getIconClipHeight()F
    .registers 1

    .line 174
    invoke-static {}, Lmiui/content/res/IconCustomizer;->ensureIconConfigLoaded()Lmiui/content/res/IconCustomizer$IconConfig;

    move-result-object v0

    iget v0, v0, Lmiui/content/res/IconCustomizer$IconConfig;->mIconClipHeight:F

    return v0
.end method

.method public static whitelist getIconClipWidth()F
    .registers 1

    .line 170
    invoke-static {}, Lmiui/content/res/IconCustomizer;->ensureIconConfigLoaded()Lmiui/content/res/IconCustomizer$IconConfig;

    move-result-object v0

    iget v0, v0, Lmiui/content/res/IconCustomizer$IconConfig;->mIconClipWidth:F

    return v0
.end method

.method private static blacklist getIconConfig()Lmiui/content/res/IconCustomizer$IconConfig;
    .registers 2

    .line 1225
    sget-boolean v0, Lmiui/content/res/IconCustomizer;->isIconConfigInit:Z

    if-eqz v0, :cond_16

    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    if-nez v0, :cond_16

    .line 1226
    const-string v0, "IconCustomizer"

    const-string v1, " the sConConfig initialization is not complete"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    new-instance v0, Lmiui/content/res/IconCustomizer$IconConfig;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmiui/content/res/IconCustomizer$IconConfig;-><init>(Lmiui/content/res/IconCustomizer$IconConfig-IA;)V

    return-object v0

    .line 1229
    :cond_16
    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    return-object v0
.end method

.method private static blacklist getIconFromMemoryCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 4
    .param p0, "name"    # Ljava/lang/String;

    .line 571
    const/4 v0, 0x0

    .line 572
    .local v0, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/Bitmap;>;"
    sget-object v1, Lmiui/content/res/IconCustomizer;->sRawIconCache:Ljava/util/Map;

    monitor-enter v1

    .line 573
    :try_start_4
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    move-object v0, v2

    .line 574
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_17

    .line 575
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    return-object v1

    .line 574
    :catchall_17
    move-exception v2

    :try_start_18
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v2
.end method

.method private static blacklist getIconFromTheme(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 2
    .param p0, "filename"    # Ljava/lang/String;

    .line 197
    invoke-static {}, Lmiui/content/res/ThemeResources;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v0

    if-nez v0, :cond_8

    .line 198
    const/4 v0, 0x0

    return-object v0

    .line 201
    :cond_8
    invoke-static {}, Lmiui/content/res/ThemeResources;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmiui/content/res/ThemeResourcesSystem;->getIconBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->scaleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getIconNames(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 935
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 936
    .local v0, "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p0, p1}, Lmiui/content/res/IconCustomizer;->getFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 938
    .local v1, "fileName":Ljava/lang/String;
    sget-object v2, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 939
    .local v2, "mappingName":Ljava/lang/String;
    if-eqz v2, :cond_16

    .line 940
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 943
    :cond_16
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 946
    if-eqz p1, :cond_30

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_30

    .line 947
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const-string v4, "%s.png"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 950
    :cond_30
    return-object v0
.end method

.method private static blacklist getIconRelativePath(Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p0, "info"    # Landroid/content/pm/PackageItemInfo;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "innerPath"    # Ljava/lang/String;
    .param p4, "checkFilePath"    # Ljava/lang/String;

    .line 545
    invoke-static {p1, p2}, Lmiui/content/res/IconCustomizer;->getIconNames(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 546
    .local v0, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p2, :cond_f

    if-eqz p0, :cond_f

    iget v1, p0, Landroid/content/pm/PackageItemInfo;->icon:I

    if-nez v1, :cond_f

    .line 547
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 549
    :cond_f
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_6e

    .line 550
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 551
    .local v2, "name":Ljava/lang/String;
    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 552
    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v5, v3

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 554
    :cond_32
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 555
    .local v3, "relativePath":Ljava/lang/String;
    invoke-static {}, Lmiui/content/res/ThemeResources;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v4

    if-eqz v4, :cond_6b

    invoke-static {}, Lmiui/content/res/ThemeResources;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmiui/content/res/ThemeResourcesSystem;->hasIcon(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6b

    .line 556
    return-object v3

    .line 549
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "relativePath":Ljava/lang/String;
    :cond_6b
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 559
    .end local v1    # "i":I
    :cond_6e
    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist getMamlAdaptiveIconRelativePath(Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "info"    # Landroid/content/pm/PackageItemInfo;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .line 540
    const-string v0, "layer_animating_icons/"

    const-string v1, "config.xml"

    invoke-static {p0, p1, p2, v0, v1}, Lmiui/content/res/IconCustomizer;->getIconRelativePath(Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getMiuiModBitmaps(Ljava/lang/String;)[Landroid/graphics/Bitmap;
    .registers 11
    .param p0, "name"    # Ljava/lang/String;

    .line 803
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 805
    .local v0, "iconBitmaps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 806
    .local v1, "suffixIndex":I
    if-lez v1, :cond_5c

    .line 807
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 808
    .local v3, "iconFileDirName":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/product/media/theme/miui_mod_icons/dynamic/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 810
    .local v4, "iconFileDir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_5c

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_5c

    .line 811
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 812
    .local v5, "iconFileDirPathString":Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3b
    const/4 v7, 0x5

    if-ge v6, v7, :cond_5c

    .line 813
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v5, v7, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    const-string v8, "%s/%d.png"

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 814
    .local v7, "drawablePath":Ljava/lang/String;
    invoke-static {v7}, Lmiui/graphics/BitmapFactoryCompat;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 815
    .local v8, "icon":Landroid/graphics/Bitmap;
    if-eqz v8, :cond_5c

    .line 816
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 812
    .end local v7    # "drawablePath":Ljava/lang/String;
    .end local v8    # "icon":Landroid/graphics/Bitmap;
    add-int/lit8 v6, v6, 0x1

    goto :goto_3b

    .line 823
    .end local v3    # "iconFileDirName":Ljava/lang/String;
    .end local v4    # "iconFileDir":Ljava/io/File;
    .end local v5    # "iconFileDirPathString":Ljava/lang/String;
    .end local v6    # "i":I
    :cond_5c
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_6f

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/graphics/Bitmap;

    goto :goto_70

    :cond_6f
    const/4 v2, 0x0

    :goto_70
    return-object v2
.end method

.method private static blacklist getMiuiModDownloadIconDir()Ljava/lang/String;
    .registers 2

    .line 911
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/user/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/com.xiaomi.market/files/miui_mod_icons/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getMiuiModIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 4
    .param p0, "fileName"    # Ljava/lang/String;

    .line 915
    sget-boolean v0, Lmiui/os/Build;->IS_CU_CUSTOMIZATION_TEST:Z

    if-eqz v0, :cond_19

    .line 916
    const-string v0, "com.android.stk.png"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 917
    const-string p0, "com.android.stk.cu.png"

    goto :goto_19

    .line 918
    :cond_f
    const-string v0, "com.android.stk.StkLauncherActivity2.png"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 919
    const-string p0, "com.android.stk.cu.2.png"

    .line 923
    :cond_19
    :goto_19
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/product/media/theme/miui_mod_icons/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 925
    .local v0, "iconFile":Ljava/io/File;
    const/4 v1, 0x0

    .line 926
    .local v1, "icon":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_44

    .line 927
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmiui/graphics/BitmapFactoryCompat;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 928
    invoke-static {v1}, Lmiui/content/res/IconCustomizer;->scaleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 931
    :cond_44
    return-object v1
.end method

.method private static blacklist getMiuiModIconBitamps(Ljava/util/List;)[Landroid/graphics/Bitmap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)[",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .line 786
    .local p0, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 787
    .local v0, "iconBitmaps":[Landroid/graphics/Bitmap;
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 788
    .local v1, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    if-ge v2, v1, :cond_18

    .line 789
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lmiui/content/res/IconCustomizer;->getMiuiModBitmaps(Ljava/lang/String;)[Landroid/graphics/Bitmap;

    move-result-object v0

    .line 790
    if-eqz v0, :cond_15

    .line 791
    goto :goto_18

    .line 788
    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 794
    .end local v2    # "i":I
    :cond_18
    :goto_18
    return-object v0
.end method

.method public static whitelist getRawIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 4
    .param p0, "filename"    # Ljava/lang/String;

    .line 178
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 180
    :cond_8
    invoke-static {p0}, Lmiui/content/res/IconCustomizer;->getIconFromMemoryCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 181
    .local v0, "icon":Landroid/graphics/Bitmap;
    if-nez v0, :cond_2a

    .line 182
    invoke-static {p0}, Lmiui/content/res/IconCustomizer;->getIconFromTheme(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 183
    if-nez v0, :cond_18

    .line 184
    invoke-static {p0}, Lmiui/content/res/IconCustomizer;->getMiuiModIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 186
    :cond_18
    if-eqz v0, :cond_2a

    .line 187
    sget-object v1, Lmiui/content/res/IconCustomizer;->sRawIconCache:Ljava/util/Map;

    monitor-enter v1

    .line 188
    :try_start_1d
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    monitor-exit v1

    goto :goto_2a

    :catchall_27
    move-exception v2

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_1d .. :try_end_29} :catchall_27

    throw v2

    .line 193
    :cond_2a
    :goto_2a
    return-object v0
.end method

.method public static whitelist getRawIconDrawable(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .registers 5
    .param p0, "filename"    # Ljava/lang/String;

    .line 145
    invoke-static {p0}, Lmiui/content/res/IconCustomizer;->getDrawableFromMemoryCache(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 146
    .local v0, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    if-nez v0, :cond_24

    .line 147
    invoke-static {p0}, Lmiui/content/res/IconCustomizer;->getRawIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Lmiui/content/res/IconCustomizer;->bitmapToDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 148
    if-eqz v0, :cond_24

    .line 149
    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconCache:Ljava/util/Map;

    monitor-enter v1

    .line 150
    :try_start_13
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    monitor-exit v1

    goto :goto_24

    :catchall_21
    move-exception v2

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_13 .. :try_end_23} :catchall_21

    throw v2

    .line 154
    :cond_24
    :goto_24
    return-object v0
.end method

.method private static blacklist getSaturation(I[I)F
    .registers 8
    .param p0, "color"    # I
    .param p1, "RGB"    # [I

    .line 1727
    invoke-static {p0, p1}, Lmiui/content/res/IconCustomizer;->colorToRGB(I[I)V

    .line 1729
    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v2, 0x1

    aget v3, p1, v2

    const/4 v4, 0x2

    aget v5, p1, v4

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1730
    .local v1, "min":I
    aget v0, p1, v0

    aget v2, p1, v2

    aget v3, p1, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1731
    .local v0, "max":I
    if-eqz v0, :cond_30

    if-ne v0, v1, :cond_27

    goto :goto_30

    .line 1734
    :cond_27
    const/high16 v2, 0x3f800000    # 1.0f

    sub-int v3, v0, v1

    int-to-float v3, v3

    mul-float/2addr v3, v2

    int-to-float v2, v0

    div-float/2addr v3, v2

    return v3

    .line 1732
    :cond_30
    :goto_30
    int-to-float v2, p0

    return v2
.end method

.method private static blacklist getScaleRatio(Landroid/graphics/drawable/Drawable;Z)F
    .registers 12
    .param p0, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p1, "cropOutside"    # Z

    .line 958
    instance-of v0, p0, Landroid/graphics/drawable/PaintDrawable;

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_7

    return v1

    .line 960
    :cond_7
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 961
    .local v0, "sourceWidth":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 962
    .local v2, "sourceHeight":I
    if-lez v0, :cond_6b

    if-gtz v2, :cond_14

    goto :goto_6b

    .line 964
    :cond_14
    invoke-static {}, Lmiui/content/res/IconCustomizer;->ensureIconConfigLoaded()Lmiui/content/res/IconCustomizer$IconConfig;

    move-result-object v3

    .line 965
    .local v3, "config":Lmiui/content/res/IconCustomizer$IconConfig;
    iget-boolean v4, v3, Lmiui/content/res/IconCustomizer$IconConfig;->mIsFullMask:Z

    if-eqz v4, :cond_21

    invoke-static {}, Lmiui/content/res/IconCustomizer;->getCustomizedIconWidth()I

    move-result v4

    goto :goto_25

    :cond_21
    invoke-static {}, Lmiui/content/res/IconCustomizer;->getCustomizedIconContentSize()I

    move-result v4

    .line 966
    .local v4, "contentSize":I
    :goto_25
    int-to-float v5, v4

    int-to-float v6, v0

    div-float/2addr v5, v6

    .line 967
    .local v5, "ratioW":F
    int-to-float v6, v4

    int-to-float v7, v2

    div-float/2addr v6, v7

    .line 969
    .local v6, "ratioH":F
    if-eqz p1, :cond_40

    .line 970
    invoke-static {}, Lmiui/content/res/IconCustomizer;->getCustomizedIconWidth()I

    move-result v1

    int-to-float v1, v1

    int-to-float v7, v0

    div-float/2addr v1, v7

    .line 971
    .end local v5    # "ratioW":F
    .local v1, "ratioW":F
    invoke-static {}, Lmiui/content/res/IconCustomizer;->getCustomizedIconHeight()I

    move-result v5

    int-to-float v5, v5

    int-to-float v7, v2

    div-float/2addr v5, v7

    .line 972
    .end local v6    # "ratioH":F
    .local v5, "ratioH":F
    invoke-static {v1, v5}, Ljava/lang/Math;->max(FF)F

    move-result v6

    return v6

    .line 975
    .end local v1    # "ratioW":F
    .local v5, "ratioW":F
    .restart local v6    # "ratioH":F
    :cond_40
    invoke-static {p0, v3}, Lmiui/content/res/IconCustomizer;->getContentRatio(Landroid/graphics/drawable/Drawable;Lmiui/content/res/IconCustomizer$IconConfig;)F

    move-result v7

    .line 976
    .local v7, "contentRatio":F
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Content Ratio = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "IconCustomizer"

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    const/4 v8, 0x0

    cmpl-float v8, v7, v8

    if-lez v8, :cond_62

    .line 978
    return v7

    .line 980
    :cond_62
    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v8

    invoke-static {v1, v8}, Ljava/lang/Math;->min(FF)F

    move-result v1

    return v1

    .line 962
    .end local v3    # "config":Lmiui/content/res/IconCustomizer$IconConfig;
    .end local v4    # "contentSize":I
    .end local v5    # "ratioW":F
    .end local v6    # "ratioH":F
    .end local v7    # "contentRatio":F
    :cond_6b
    :goto_6b
    return v1
.end method

.method private static blacklist getValidMask(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "path"    # Ljava/lang/String;

    .line 1271
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1273
    const-string v0, "M96.4286 62.2772C96.4286 72.1118 96.4286 77.029 94.7547 82.3225C92.6512 88.1016 88.0988 92.654 82.3196 94.7576C77.6553 96.2326 73.278 96.4076 65.575 96.4284H50H34.425C26.722 96.4076 22.3446 96.2326 17.6803 94.7576C11.9012 92.654 7.34879 88.1016 5.24522 82.3225C3.57141 77.029 3.57141 72.1118 3.57141 62.2772V49.9999V37.7225C3.57141 27.888 3.57141 22.9707 5.24522 17.6772C7.34879 11.8981 11.9012 7.34569 17.6803 5.24212C22.3446 3.76712 26.722 3.59212 34.425 3.57129H50H65.575C73.278 3.59212 77.6553 3.76712 82.3196 5.24212C88.0988 7.34569 92.6512 11.8981 94.7547 17.6772C96.4286 22.9707 96.4286 27.888 96.4286 37.7225V49.9999V62.2772Z"

    return-object v0

    .line 1275
    :cond_9
    return-object p0
.end method

.method public static whitelist hdpiIconSizeToCurrent(D)D
    .registers 6
    .param p0, "pixelSize"    # D

    .line 1475
    invoke-static {}, Lmiui/content/res/IconCustomizer;->getCustomizedIconWidth()I

    move-result v0

    int-to-double v0, v0

    mul-double/2addr v0, p0

    const-wide v2, 0x4056800000000000L    # 90.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static whitelist hdpiIconSizeToCurrent(F)F
    .registers 3
    .param p0, "pixelSize"    # F

    .line 1467
    invoke-static {}, Lmiui/content/res/IconCustomizer;->getCustomizedIconWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p0

    const/high16 v1, 0x42b40000    # 90.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public static whitelist hdpiIconSizeToCurrent(I)I
    .registers 3
    .param p0, "pixelSize"    # I

    .line 1471
    invoke-static {}, Lmiui/content/res/IconCustomizer;->getCustomizedIconWidth()I

    move-result v0

    mul-int/2addr v0, p0

    int-to-float v0, v0

    const/high16 v1, 0x42b40000    # 90.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private static blacklist isLiteOrMiddle()Z
    .registers 1

    .line 205
    sget-object v0, Lmiui/content/res/IconCustomizer;->sLiteMiddle:Ljava/lang/Boolean;

    if-nez v0, :cond_16

    .line 206
    sget-boolean v0, Lmiui/util/DeviceLevel;->IS_MIUI_LITE_VERSION:Z

    if-nez v0, :cond_f

    sget-boolean v0, Lmiui/util/DeviceLevel;->IS_MIUI_MIDDLE_VERSION:Z

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lmiui/content/res/IconCustomizer;->sLiteMiddle:Ljava/lang/Boolean;

    .line 208
    :cond_16
    sget-object v0, Lmiui/content/res/IconCustomizer;->sLiteMiddle:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static whitelist isModIconEnabledForPackageName(Ljava/lang/String;)Z
    .registers 2
    .param p0, "packageName"    # Ljava/lang/String;

    .line 494
    const/4 v0, 0x1

    return v0
.end method

.method private static blacklist isRegularShape(I[BIIII)Z
    .registers 12
    .param p0, "rowBytes"    # I
    .param p1, "pixels"    # [B
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 1035
    const/16 v0, 0x32

    .line 1036
    .local v0, "alphaThreshold":I
    sub-int v1, p4, p2

    div-int/lit8 v1, v1, 0x4

    add-int/2addr v1, p2

    .local v1, "x":I
    :goto_7
    sub-int v2, p4, p2

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x4

    add-int/2addr v2, p2

    const/4 v3, 0x0

    const/16 v4, 0x32

    if-ge v1, v2, :cond_32

    .line 1037
    mul-int v2, p3, p0

    shl-int/lit8 v5, v1, 0x2

    add-int/2addr v2, v5

    add-int/lit8 v2, v2, 0x3

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    if-ge v2, v4, :cond_21

    return v3

    .line 1038
    :cond_21
    mul-int v2, p5, p0

    shl-int/lit8 v5, v1, 0x2

    add-int/2addr v2, v5

    add-int/lit8 v2, v2, 0x3

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    if-ge v2, v4, :cond_2f

    return v3

    .line 1036
    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1040
    .end local v1    # "x":I
    :cond_32
    sub-int v1, p5, p3

    div-int/lit8 v1, v1, 0x4

    add-int/2addr v1, p3

    .local v1, "y":I
    :goto_37
    sub-int v2, p5, p3

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x4

    add-int/2addr v2, p3

    if-ge v1, v2, :cond_5f

    .line 1041
    mul-int v2, v1, p0

    shl-int/lit8 v5, p2, 0x2

    add-int/2addr v2, v5

    add-int/lit8 v2, v2, 0x3

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    if-ge v2, v4, :cond_4e

    return v3

    .line 1042
    :cond_4e
    mul-int v2, v1, p0

    shl-int/lit8 v5, p4, 0x2

    add-int/2addr v2, v5

    add-int/lit8 v2, v2, 0x3

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    if-ge v2, v4, :cond_5c

    return v3

    .line 1040
    :cond_5c
    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    .line 1044
    .end local v1    # "y":I
    :cond_5f
    const/4 v1, 0x1

    return v1
.end method

.method public static whitelist isUseDynamicIcon()Z
    .registers 1

    .line 158
    invoke-static {}, Lmiui/content/res/IconCustomizer;->ensureIconConfigLoaded()Lmiui/content/res/IconCustomizer$IconConfig;

    move-result-object v0

    iget-boolean v0, v0, Lmiui/content/res/IconCustomizer$IconConfig;->mUseDynamicIcon:Z

    return v0
.end method

.method static synthetic blacklist lambda$prepareCustomizedIcons$0(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)V
    .registers 3
    .param p0, "info"    # Landroid/content/pm/ResolveInfo;
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 451
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    .line 452
    return-void
.end method

.method private static blacklist loadIconConfig()Lmiui/content/res/IconCustomizer$IconConfig;
    .registers 16

    .line 1479
    new-instance v0, Lmiui/content/res/IconCustomizer$IconConfig;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmiui/content/res/IconCustomizer$IconConfig;-><init>(Lmiui/content/res/IconCustomizer$IconConfig-IA;)V

    move-object v2, v0

    .line 1496
    .local v2, "iconConfig":Lmiui/content/res/IconCustomizer$IconConfig;
    sget-boolean v0, Lmiui/os/Build;->IS_MIUI:Z

    const-string v3, "IconCustomizer"

    if-eqz v0, :cond_2e3

    invoke-static {}, Lmiui/content/res/ThemeResources;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v0

    if-nez v0, :cond_15

    goto/16 :goto_2e3

    .line 1501
    :cond_15
    invoke-static {}, Lmiui/content/res/ThemeResources;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v0

    const/4 v4, 0x0

    const-string v5, "transform_config.xml"

    invoke-virtual {v0, v5, v1, v4}, Lmiui/content/res/ThemeResourcesSystem;->getIconStream(Ljava/lang/String;[JZ)Ljava/io/InputStream;

    move-result-object v1

    .line 1502
    .local v1, "input":Ljava/io/InputStream;
    if-nez v1, :cond_28

    .line 1503
    const-string v0, "can\'t load transform_config.xml"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1504
    return-object v2

    .line 1507
    :cond_28
    const/4 v4, 0x0

    .line 1508
    .local v4, "root":Lorg/w3c/dom/Element;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v5

    .line 1510
    .local v5, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_2d
    invoke-virtual {v5}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 1511
    .local v0, "builder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v6
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_39} :catch_2dc

    move-object v4, v6

    .line 1515
    .end local v0    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    nop

    .line 1518
    :try_start_3b
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_2d5

    .line 1522
    nop

    .line 1524
    if-eqz v4, :cond_2d4

    .line 1525
    invoke-interface {v4}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 1527
    .local v6, "configs":Lorg/w3c/dom/NodeList;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_46
    :try_start_46
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    const/4 v8, 0x1

    if-ge v0, v7, :cond_2ca

    .line 1528
    invoke-interface {v6, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v7

    if-eq v7, v8, :cond_59

    .line 1529
    goto/16 :goto_2c6

    .line 1531
    :cond_59
    invoke-interface {v6, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/Element;

    .line 1532
    .local v7, "config":Lorg/w3c/dom/Element;
    invoke-interface {v7}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v9

    .line 1533
    .local v9, "name":Ljava/lang/String;
    const-string v10, "IconFilters"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_77

    .line 1534
    invoke-interface {v7}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v8

    invoke-static {v8}, Lmiui/content/res/IconCustomizer;->loadIconFilters(Lorg/w3c/dom/NodeList;)Lmiui/imagefilters/IImageFilter$ImageFilterGroup;

    move-result-object v8

    iput-object v8, v2, Lmiui/content/res/IconCustomizer$IconConfig;->mIconFilters:Lmiui/imagefilters/IImageFilter$ImageFilterGroup;

    goto/16 :goto_2c6

    .line 1535
    :cond_77
    const-string v10, "PointsMapping"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_13f

    .line 1536
    invoke-interface {v7}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v10

    .line 1537
    .local v10, "points":Lorg/w3c/dom/NodeList;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1538
    .local v11, "pointsMappingFrom":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1539
    .local v12, "pointsMappingTo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_8e
    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v14

    if-ge v13, v14, :cond_109

    .line 1540
    invoke-interface {v10, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    invoke-interface {v14}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v14

    if-eq v14, v8, :cond_9f

    .line 1541
    goto :goto_105

    .line 1543
    :cond_9f
    invoke-interface {v10, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    check-cast v14, Lorg/w3c/dom/Element;

    .line 1544
    .local v14, "point":Lorg/w3c/dom/Element;
    const-string v15, "Point"

    invoke-interface {v14}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_105

    .line 1545
    const-string v8, "fromX"

    invoke-interface {v14, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    invoke-static {v8}, Lmiui/content/res/IconCustomizer;->hdpiIconSizeToCurrent(F)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1546
    const-string v8, "fromY"

    invoke-interface {v14, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    invoke-static {v8}, Lmiui/content/res/IconCustomizer;->hdpiIconSizeToCurrent(F)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1547
    const-string v8, "toX"

    invoke-interface {v14, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    invoke-static {v8}, Lmiui/content/res/IconCustomizer;->hdpiIconSizeToCurrent(F)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1548
    const-string v8, "toY"

    invoke-interface {v14, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    invoke-static {v8}, Lmiui/content/res/IconCustomizer;->hdpiIconSizeToCurrent(F)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1539
    .end local v14    # "point":Lorg/w3c/dom/Element;
    :cond_105
    :goto_105
    add-int/lit8 v13, v13, 0x1

    const/4 v8, 0x1

    goto :goto_8e

    .line 1552
    .end local v13    # "j":I
    :cond_109
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v8

    .line 1553
    .local v8, "size":I
    if-lez v8, :cond_13d

    const/16 v13, 0x8

    if-gt v8, v13, :cond_13d

    .line 1554
    new-array v13, v8, [F

    iput-object v13, v2, Lmiui/content/res/IconCustomizer$IconConfig;->mPointsMappingFrom:[F

    .line 1555
    new-array v13, v8, [F

    iput-object v13, v2, Lmiui/content/res/IconCustomizer$IconConfig;->mPointsMappingTo:[F

    .line 1556
    const/4 v13, 0x0

    .restart local v13    # "j":I
    :goto_11c
    if-ge v13, v8, :cond_13d

    .line 1557
    iget-object v14, v2, Lmiui/content/res/IconCustomizer$IconConfig;->mPointsMappingFrom:[F

    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Float;

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v15

    aput v15, v14, v13

    .line 1558
    iget-object v14, v2, Lmiui/content/res/IconCustomizer$IconConfig;->mPointsMappingTo:[F

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Float;

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v15

    aput v15, v14, v13

    .line 1556
    add-int/lit8 v13, v13, 0x1

    goto :goto_11c

    .line 1561
    .end local v8    # "size":I
    .end local v10    # "points":Lorg/w3c/dom/NodeList;
    .end local v11    # "pointsMappingFrom":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v12    # "pointsMappingTo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v13    # "j":I
    :cond_13d
    goto/16 :goto_2c6

    :cond_13f
    const-string v8, "Config"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_145
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_145} :catch_2ce

    const-string v10, "value"

    if-eqz v8, :cond_1b9

    .line 1562
    :try_start_149
    const-string v8, "name"

    invoke-interface {v7, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1563
    .local v8, "configName":Ljava/lang/String;
    invoke-interface {v7, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1564
    .local v10, "configValue":Ljava/lang/String;
    const-string v11, "UseModIcon"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_162

    .line 1565
    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    iput-boolean v11, v2, Lmiui/content/res/IconCustomizer$IconConfig;->mUseModIcon:Z

    goto :goto_1b7

    .line 1566
    :cond_162
    const-string v11, "SupportLayerIcon"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_171

    .line 1567
    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    iput-boolean v11, v2, Lmiui/content/res/IconCustomizer$IconConfig;->mSupportLayerIcon:Z

    goto :goto_1b7

    .line 1568
    :cond_171
    const-string v11, "UseDynamicIcon"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_180

    .line 1569
    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    iput-boolean v11, v2, Lmiui/content/res/IconCustomizer$IconConfig;->mUseDynamicIcon:Z

    goto :goto_1b7

    .line 1570
    :cond_180
    const-string v11, "ConfigIconMask"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_18b

    .line 1571
    iput-object v10, v2, Lmiui/content/res/IconCustomizer$IconConfig;->mConfigIconMask:Ljava/lang/String;

    goto :goto_1b7

    .line 1572
    :cond_18b
    const-string v11, "IconClipCornerRadius"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_19a

    .line 1573
    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    iput v11, v2, Lmiui/content/res/IconCustomizer$IconConfig;->mIconClipCornerRadius:F

    goto :goto_1b7

    .line 1574
    :cond_19a
    const-string v11, "IconClipWidth"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1a9

    .line 1575
    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    iput v11, v2, Lmiui/content/res/IconCustomizer$IconConfig;->mIconClipWidth:F

    goto :goto_1b7

    .line 1576
    :cond_1a9
    const-string v11, "IconClipHeight"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1b7

    .line 1577
    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    iput v11, v2, Lmiui/content/res/IconCustomizer$IconConfig;->mIconClipHeight:F

    .line 1579
    .end local v8    # "configName":Ljava/lang/String;
    .end local v10    # "configValue":Ljava/lang/String;
    :cond_1b7
    :goto_1b7
    goto/16 :goto_2c6

    .line 1582
    :cond_1b9
    const-string v8, "ScaleX"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1cd

    .line 1583
    invoke-interface {v7, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    iput v8, v2, Lmiui/content/res/IconCustomizer$IconConfig;->mScaleX:F

    goto/16 :goto_2c6

    .line 1584
    :cond_1cd
    const-string v8, "ScaleY"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1e1

    .line 1585
    invoke-interface {v7, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    iput v8, v2, Lmiui/content/res/IconCustomizer$IconConfig;->mScaleY:F

    goto/16 :goto_2c6

    .line 1586
    :cond_1e1
    const-string v8, "SkewX"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1f5

    .line 1587
    invoke-interface {v7, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    iput v8, v2, Lmiui/content/res/IconCustomizer$IconConfig;->mSkewX:F

    goto/16 :goto_2c6

    .line 1588
    :cond_1f5
    const-string v8, "SkewY"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_209

    .line 1589
    invoke-interface {v7, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    iput v8, v2, Lmiui/content/res/IconCustomizer$IconConfig;->mSkewY:F

    goto/16 :goto_2c6

    .line 1590
    :cond_209
    const-string v8, "TransX"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_221

    .line 1591
    invoke-interface {v7, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    invoke-static {v8}, Lmiui/content/res/IconCustomizer;->hdpiIconSizeToCurrent(F)F

    move-result v8

    iput v8, v2, Lmiui/content/res/IconCustomizer$IconConfig;->mTransX:F

    goto/16 :goto_2c6

    .line 1592
    :cond_221
    const-string v8, "TransY"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_239

    .line 1593
    invoke-interface {v7, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    invoke-static {v8}, Lmiui/content/res/IconCustomizer;->hdpiIconSizeToCurrent(F)F

    move-result v8

    iput v8, v2, Lmiui/content/res/IconCustomizer$IconConfig;->mTransY:F

    goto/16 :goto_2c6

    .line 1594
    :cond_239
    const-string v8, "RotateX"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_24d

    .line 1595
    invoke-interface {v7, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    iput v8, v2, Lmiui/content/res/IconCustomizer$IconConfig;->mRotateX:F

    goto/16 :goto_2c6

    .line 1596
    :cond_24d
    const-string v8, "RotateY"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_260

    .line 1597
    invoke-interface {v7, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    iput v8, v2, Lmiui/content/res/IconCustomizer$IconConfig;->mRotateY:F

    goto :goto_2c6

    .line 1598
    :cond_260
    const-string v8, "RotateZ"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_273

    .line 1599
    invoke-interface {v7, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    iput v8, v2, Lmiui/content/res/IconCustomizer$IconConfig;->mRotateZ:F

    goto :goto_2c6

    .line 1600
    :cond_273
    const-string v8, "CameraX"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_28a

    .line 1601
    invoke-interface {v7, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    invoke-static {v8}, Lmiui/content/res/IconCustomizer;->hdpiIconSizeToCurrent(F)F

    move-result v8

    iput v8, v2, Lmiui/content/res/IconCustomizer$IconConfig;->mCameraX:F

    goto :goto_2c6

    .line 1602
    :cond_28a
    const-string v8, "CameraY"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2a1

    .line 1603
    invoke-interface {v7, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    invoke-static {v8}, Lmiui/content/res/IconCustomizer;->hdpiIconSizeToCurrent(F)F

    move-result v8

    iput v8, v2, Lmiui/content/res/IconCustomizer$IconConfig;->mCameraY:F

    goto :goto_2c6

    .line 1604
    :cond_2a1
    const-string v8, "OverridedIrregularContentWidth"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2b4

    .line 1605
    invoke-interface {v7, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lmiui/content/res/IconCustomizer;->getDimension(Ljava/lang/String;)I

    move-result v8

    iput v8, v2, Lmiui/content/res/IconCustomizer$IconConfig;->mOverridedIrregularContentWidth:I

    goto :goto_2c6

    .line 1606
    :cond_2b4
    const-string v8, "OverridedIrregularContentHeight"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2c6

    .line 1607
    invoke-interface {v7, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lmiui/content/res/IconCustomizer;->getDimension(Ljava/lang/String;)I

    move-result v8

    iput v8, v2, Lmiui/content/res/IconCustomizer$IconConfig;->mOverridedIrregularContentHeight:I

    .line 1527
    .end local v7    # "config":Lorg/w3c/dom/Element;
    .end local v9    # "name":Ljava/lang/String;
    :cond_2c6
    :goto_2c6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_46

    .line 1612
    .end local v0    # "i":I
    :cond_2ca
    const/4 v0, 0x1

    sput-boolean v0, Lmiui/content/res/IconCustomizer;->sIconTransformNeeded:Z
    :try_end_2cd
    .catch Ljava/lang/Exception; {:try_start_149 .. :try_end_2cd} :catch_2ce

    .line 1615
    goto :goto_2d4

    .line 1613
    :catch_2ce
    move-exception v0

    .line 1614
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "transform_config.xml parse failed."

    invoke-static {v3, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1618
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v6    # "configs":Lorg/w3c/dom/NodeList;
    :cond_2d4
    :goto_2d4
    return-object v2

    .line 1519
    :catch_2d5
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 1520
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1521
    return-object v2

    .line 1512
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2dc
    move-exception v0

    .line 1513
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "load icon config failed."

    invoke-static {v3, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1514
    return-object v2

    .line 1497
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "input":Ljava/io/InputStream;
    .end local v4    # "root":Lorg/w3c/dom/Element;
    .end local v5    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :cond_2e3
    :goto_2e3
    const-string v0, "can\'t load ThemeResources"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    return-object v2
.end method

.method private static blacklist loadIconFilters(Lorg/w3c/dom/NodeList;)Lmiui/imagefilters/IImageFilter$ImageFilterGroup;
    .registers 20
    .param p0, "configs"    # Lorg/w3c/dom/NodeList;

    .line 1400
    move-object/from16 v1, p0

    const-string v2, "ignoreWhenNotSupported"

    .line 1401
    .local v2, "IGNORE_WHEN_NOT_SUPPORT":Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    .line 1403
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lmiui/imagefilters/IImageFilter;>;"
    const/4 v0, 0x0

    move v4, v0

    .local v4, "i":I
    :goto_c
    invoke-interface/range {p0 .. p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v4, v0, :cond_148

    .line 1404
    invoke-interface {v1, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v6, 0x1

    if-eq v0, v6, :cond_21

    move-object/from16 v17, v2

    goto/16 :goto_140

    .line 1406
    :cond_21
    new-instance v0, Lmiui/imagefilters/ImageFilterBuilder;

    invoke-direct {v0}, Lmiui/imagefilters/ImageFilterBuilder;-><init>()V

    move-object v7, v0

    .line 1407
    .local v7, "builder":Lmiui/imagefilters/ImageFilterBuilder;
    invoke-interface {v1, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lorg/w3c/dom/Element;

    .line 1408
    .local v8, "ele":Lorg/w3c/dom/Element;
    invoke-interface {v8}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v9

    .line 1410
    .local v9, "name":Ljava/lang/String;
    const-string v0, "Filter"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13e

    .line 1411
    invoke-interface {v8}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v10

    .line 1412
    .local v10, "filterChildren":Lorg/w3c/dom/NodeList;
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_3f
    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    const-string v12, "ignoreWhenNotSupported"

    const-string v13, "name"

    if-ge v0, v11, :cond_109

    .line 1413
    invoke-interface {v10, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v11

    if-eq v11, v6, :cond_57

    move-object/from16 v17, v2

    goto/16 :goto_100

    .line 1415
    :cond_57
    invoke-interface {v10, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    check-cast v11, Lorg/w3c/dom/Element;

    .line 1416
    .local v11, "paramEle":Lorg/w3c/dom/Element;
    invoke-interface {v11}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "Param"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_fe

    .line 1417
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1418
    .local v14, "paramValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-interface {v11, v12}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1420
    .local v12, "strParamIgnoreWhenNotSupported":Ljava/lang/String;
    invoke-interface {v11}, Lorg/w3c/dom/Element;->hasChildNodes()Z

    move-result v15

    if-eqz v15, :cond_be

    .line 1421
    invoke-interface {v11}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v15

    .line 1422
    .local v15, "paramChildNodes":Lorg/w3c/dom/NodeList;
    const/16 v16, 0x0

    move/from16 v5, v16

    .local v5, "k":I
    :goto_80
    invoke-interface {v15}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v5, v6, :cond_bb

    .line 1423
    invoke-interface {v15, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    const/4 v1, 0x1

    if-eq v6, v1, :cond_94

    .line 1424
    move-object/from16 v17, v2

    goto :goto_b3

    .line 1426
    :cond_94
    invoke-interface {v15, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Element;

    .line 1427
    .local v6, "paramChildEle":Lorg/w3c/dom/Element;
    invoke-interface {v6}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v17, v2

    .end local v2    # "IGNORE_WHEN_NOT_SUPPORT":Ljava/lang/String;
    .local v17, "IGNORE_WHEN_NOT_SUPPORT":Ljava/lang/String;
    const-string v2, "IconFilters"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b3

    .line 1428
    invoke-interface {v6}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-static {v1}, Lmiui/content/res/IconCustomizer;->loadIconFilters(Lorg/w3c/dom/NodeList;)Lmiui/imagefilters/IImageFilter$ImageFilterGroup;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1422
    .end local v6    # "paramChildEle":Lorg/w3c/dom/Element;
    :cond_b3
    :goto_b3
    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    goto :goto_80

    .end local v17    # "IGNORE_WHEN_NOT_SUPPORT":Ljava/lang/String;
    .restart local v2    # "IGNORE_WHEN_NOT_SUPPORT":Ljava/lang/String;
    :cond_bb
    move-object/from16 v17, v2

    .end local v2    # "IGNORE_WHEN_NOT_SUPPORT":Ljava/lang/String;
    .restart local v17    # "IGNORE_WHEN_NOT_SUPPORT":Ljava/lang/String;
    goto :goto_c0

    .line 1420
    .end local v5    # "k":I
    .end local v15    # "paramChildNodes":Lorg/w3c/dom/NodeList;
    .end local v17    # "IGNORE_WHEN_NOT_SUPPORT":Ljava/lang/String;
    .restart local v2    # "IGNORE_WHEN_NOT_SUPPORT":Ljava/lang/String;
    :cond_be
    move-object/from16 v17, v2

    .line 1433
    .end local v2    # "IGNORE_WHEN_NOT_SUPPORT":Ljava/lang/String;
    .restart local v17    # "IGNORE_WHEN_NOT_SUPPORT":Ljava/lang/String;
    :goto_c0
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_e4

    .line 1434
    const-string v1, "value"

    invoke-interface {v11, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1435
    .local v1, "strParamValue":Ljava/lang/String;
    const-string v2, "\\|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1436
    .local v2, "arrParamValue":[Ljava/lang/String;
    array-length v5, v2

    const/4 v6, 0x0

    :goto_d4
    if-ge v6, v5, :cond_e4

    aget-object v15, v2, v6

    .line 1437
    .local v15, "str":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_e1

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1436
    .end local v15    # "str":Ljava/lang/String;
    :cond_e1
    add-int/lit8 v6, v6, 0x1

    goto :goto_d4

    .line 1441
    .end local v1    # "strParamValue":Ljava/lang/String;
    .end local v2    # "arrParamValue":[Ljava/lang/String;
    :cond_e4
    invoke-interface {v11, v13}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1442
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f0

    const/4 v2, 0x0

    goto :goto_fa

    :cond_f0
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 1441
    :goto_fa
    invoke-virtual {v7, v1, v14, v2}, Lmiui/imagefilters/ImageFilterBuilder;->addParam(Ljava/lang/String;Ljava/util/List;Z)V

    goto :goto_100

    .line 1416
    .end local v12    # "strParamIgnoreWhenNotSupported":Ljava/lang/String;
    .end local v14    # "paramValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v17    # "IGNORE_WHEN_NOT_SUPPORT":Ljava/lang/String;
    .local v2, "IGNORE_WHEN_NOT_SUPPORT":Ljava/lang/String;
    :cond_fe
    move-object/from16 v17, v2

    .line 1412
    .end local v2    # "IGNORE_WHEN_NOT_SUPPORT":Ljava/lang/String;
    .end local v11    # "paramEle":Lorg/w3c/dom/Element;
    .restart local v17    # "IGNORE_WHEN_NOT_SUPPORT":Ljava/lang/String;
    :goto_100
    add-int/lit8 v0, v0, 0x1

    const/4 v6, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    goto/16 :goto_3f

    .end local v17    # "IGNORE_WHEN_NOT_SUPPORT":Ljava/lang/String;
    .restart local v2    # "IGNORE_WHEN_NOT_SUPPORT":Ljava/lang/String;
    :cond_109
    move-object/from16 v17, v2

    .line 1445
    .end local v0    # "j":I
    .end local v2    # "IGNORE_WHEN_NOT_SUPPORT":Ljava/lang/String;
    .restart local v17    # "IGNORE_WHEN_NOT_SUPPORT":Ljava/lang/String;
    invoke-interface {v8, v13}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lmiui/imagefilters/ImageFilterBuilder;->setFilterName(Ljava/lang/String;)V

    .line 1446
    invoke-interface {v8, v12}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1447
    .local v1, "strFilterIgnoreWhenNotSupported":Ljava/lang/String;
    nop

    .line 1448
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11f

    const/4 v0, 0x0

    goto :goto_129

    :cond_11f
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 1447
    :goto_129
    invoke-virtual {v7, v0}, Lmiui/imagefilters/ImageFilterBuilder;->setIgnoreWhenNotSupported(Z)V

    .line 1451
    :try_start_12c
    invoke-virtual {v7}, Lmiui/imagefilters/ImageFilterBuilder;->createImageFilter()Lmiui/imagefilters/IImageFilter;

    move-result-object v0

    .line 1452
    .local v0, "filter":Lmiui/imagefilters/IImageFilter;
    if-eqz v0, :cond_135

    .line 1453
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_135
    .catch Lmiui/imagefilters/ImageFilterBuilder$NoSupportException; {:try_start_12c .. :try_end_135} :catch_136

    .line 1459
    .end local v0    # "filter":Lmiui/imagefilters/IImageFilter;
    :cond_135
    goto :goto_140

    .line 1455
    :catch_136
    move-exception v0

    .line 1456
    .local v0, "e":Lmiui/imagefilters/ImageFilterBuilder$NoSupportException;
    invoke-virtual {v0}, Lmiui/imagefilters/ImageFilterBuilder$NoSupportException;->printStackTrace()V

    .line 1457
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1458
    goto :goto_14a

    .line 1410
    .end local v0    # "e":Lmiui/imagefilters/ImageFilterBuilder$NoSupportException;
    .end local v1    # "strFilterIgnoreWhenNotSupported":Ljava/lang/String;
    .end local v10    # "filterChildren":Lorg/w3c/dom/NodeList;
    .end local v17    # "IGNORE_WHEN_NOT_SUPPORT":Ljava/lang/String;
    .restart local v2    # "IGNORE_WHEN_NOT_SUPPORT":Ljava/lang/String;
    :cond_13e
    move-object/from16 v17, v2

    .line 1403
    .end local v2    # "IGNORE_WHEN_NOT_SUPPORT":Ljava/lang/String;
    .end local v7    # "builder":Lmiui/imagefilters/ImageFilterBuilder;
    .end local v8    # "ele":Lorg/w3c/dom/Element;
    .end local v9    # "name":Ljava/lang/String;
    .restart local v17    # "IGNORE_WHEN_NOT_SUPPORT":Ljava/lang/String;
    :goto_140
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    goto/16 :goto_c

    .end local v17    # "IGNORE_WHEN_NOT_SUPPORT":Ljava/lang/String;
    .restart local v2    # "IGNORE_WHEN_NOT_SUPPORT":Ljava/lang/String;
    :cond_148
    move-object/from16 v17, v2

    .line 1463
    .end local v2    # "IGNORE_WHEN_NOT_SUPPORT":Ljava/lang/String;
    .end local v4    # "i":I
    .restart local v17    # "IGNORE_WHEN_NOT_SUPPORT":Ljava/lang/String;
    :goto_14a
    new-instance v0, Lmiui/imagefilters/IImageFilter$ImageFilterGroup;

    const/4 v1, 0x0

    new-array v1, v1, [Lmiui/imagefilters/IImageFilter;

    invoke-interface {v3, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lmiui/imagefilters/IImageFilter;

    invoke-direct {v0, v1}, Lmiui/imagefilters/IImageFilter$ImageFilterGroup;-><init>([Lmiui/imagefilters/IImageFilter;)V

    return-object v0
.end method

.method private static blacklist makeIconMatrix(Lmiui/content/res/IconCustomizer$IconConfig;)Landroid/graphics/Matrix;
    .registers 8
    .param p0, "iconConfig"    # Lmiui/content/res/IconCustomizer$IconConfig;

    .line 1372
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 1374
    .local v0, "matrix":Landroid/graphics/Matrix;
    iget-object v1, p0, Lmiui/content/res/IconCustomizer$IconConfig;->mPointsMappingFrom:[F

    if-eqz v1, :cond_19

    .line 1375
    iget-object v2, p0, Lmiui/content/res/IconCustomizer$IconConfig;->mPointsMappingFrom:[F

    const/4 v3, 0x0

    iget-object v4, p0, Lmiui/content/res/IconCustomizer$IconConfig;->mPointsMappingTo:[F

    const/4 v5, 0x0

    iget-object v1, p0, Lmiui/content/res/IconCustomizer$IconConfig;->mPointsMappingFrom:[F

    array-length v1, v1

    div-int/lit8 v6, v1, 0x2

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Matrix;->setPolyToPoly([FI[FII)Z

    goto :goto_6c

    .line 1379
    :cond_19
    new-instance v1, Landroid/graphics/Camera;

    invoke-direct {v1}, Landroid/graphics/Camera;-><init>()V

    .line 1380
    .local v1, "camera":Landroid/graphics/Camera;
    iget v2, p0, Lmiui/content/res/IconCustomizer$IconConfig;->mRotateX:F

    invoke-virtual {v1, v2}, Landroid/graphics/Camera;->rotateX(F)V

    .line 1381
    iget v2, p0, Lmiui/content/res/IconCustomizer$IconConfig;->mRotateY:F

    invoke-virtual {v1, v2}, Landroid/graphics/Camera;->rotateY(F)V

    .line 1382
    iget v2, p0, Lmiui/content/res/IconCustomizer$IconConfig;->mRotateZ:F

    invoke-virtual {v1, v2}, Landroid/graphics/Camera;->rotateZ(F)V

    .line 1383
    invoke-virtual {v1, v0}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 1386
    invoke-static {}, Lmiui/content/res/IconCustomizer;->getCustomizedIconWidth()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v4, p0, Lmiui/content/res/IconCustomizer$IconConfig;->mCameraX:F

    sub-float/2addr v2, v4

    .line 1387
    invoke-static {}, Lmiui/content/res/IconCustomizer;->getCustomizedIconHeight()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    iget v5, p0, Lmiui/content/res/IconCustomizer$IconConfig;->mCameraY:F

    sub-float/2addr v4, v5

    .line 1386
    invoke-virtual {v0, v2, v4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 1388
    invoke-static {}, Lmiui/content/res/IconCustomizer;->getCustomizedIconWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    iget v4, p0, Lmiui/content/res/IconCustomizer$IconConfig;->mCameraX:F

    add-float/2addr v2, v4

    .line 1389
    invoke-static {}, Lmiui/content/res/IconCustomizer;->getCustomizedIconHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    iget v3, p0, Lmiui/content/res/IconCustomizer$IconConfig;->mCameraY:F

    add-float/2addr v4, v3

    .line 1388
    invoke-virtual {v0, v2, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1392
    iget v2, p0, Lmiui/content/res/IconCustomizer$IconConfig;->mScaleX:F

    iget v3, p0, Lmiui/content/res/IconCustomizer$IconConfig;->mScaleY:F

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1393
    iget v2, p0, Lmiui/content/res/IconCustomizer$IconConfig;->mSkewX:F

    iget v3, p0, Lmiui/content/res/IconCustomizer$IconConfig;->mSkewY:F

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postSkew(FF)Z

    .line 1396
    .end local v1    # "camera":Landroid/graphics/Camera;
    :goto_6c
    return-object v0
.end method

.method public static whitelist prepareCustomizedIcons(Landroid/content/Context;Lmiui/content/res/IconCustomizer$CustomizedIconsListener;)V
    .registers 22
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "l"    # Lmiui/content/res/IconCustomizer$CustomizedIconsListener;

    .line 428
    move-object/from16 v1, p1

    const-string v0, "icon_mask.png"

    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->getRawIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 429
    .local v2, "mask":Landroid/graphics/Bitmap;
    const-string v0, "icon_background.png"

    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->getRawIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 430
    .local v3, "background":Landroid/graphics/Bitmap;
    const-string v0, "icon_pattern.png"

    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->getRawIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 431
    .local v4, "pattern":Landroid/graphics/Bitmap;
    const-string v0, "icon_border.png"

    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->getRawIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 433
    .local v5, "cover":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    const/4 v7, 0x0

    invoke-direct {v0, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v6, v0

    .line 434
    .local v6, "launcherIntent":Landroid/content/Intent;
    const-string v0, "android.intent.category.LAUNCHER"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 436
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 437
    .local v7, "pm":Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    invoke-virtual {v7, v6, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    .line 439
    .local v8, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_3c

    .line 440
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-interface {v1, v0}, Lmiui/content/res/IconCustomizer$CustomizedIconsListener;->beforePrepareIcon(I)V

    .line 443
    :cond_3c
    const/4 v0, 0x1

    .line 444
    .local v0, "taskCnt":I
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v9

    invoke-static {v9}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v9

    .line 446
    .local v9, "execService":Ljava/util/concurrent/ExecutorService;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 447
    .local v10, "time":J
    const-string v12, "IconCustomizer"

    const-string v13, "prepareCustomizedIcons start"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 449
    .local v13, "futures":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/Future<*>;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_5d
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_7a

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/ResolveInfo;

    .line 450
    .local v15, "info":Landroid/content/pm/ResolveInfo;
    move/from16 v16, v0

    .end local v0    # "taskCnt":I
    .local v16, "taskCnt":I
    new-instance v0, Lmiui/content/res/IconCustomizer$$ExternalSyntheticLambda0;

    invoke-direct {v0, v15, v7}, Lmiui/content/res/IconCustomizer$$ExternalSyntheticLambda0;-><init>(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)V

    invoke-interface {v9, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 453
    .local v0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 454
    .end local v0    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    .end local v15    # "info":Landroid/content/pm/ResolveInfo;
    move/from16 v0, v16

    goto :goto_5d

    .line 455
    .end local v16    # "taskCnt":I
    .local v0, "taskCnt":I
    :cond_7a
    move/from16 v16, v0

    .end local v0    # "taskCnt":I
    .restart local v16    # "taskCnt":I
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move/from16 v15, v16

    .end local v16    # "taskCnt":I
    .local v15, "taskCnt":I
    :goto_82
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a9

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Ljava/util/concurrent/Future;

    .line 457
    .local v16, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :try_start_90
    invoke-interface/range {v16 .. v16}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_93
    .catch Ljava/lang/InterruptedException; {:try_start_90 .. :try_end_93} :catch_96
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_90 .. :try_end_93} :catch_96

    .line 460
    move-object/from16 v17, v2

    goto :goto_9e

    .line 458
    :catch_96
    move-exception v0

    .line 459
    .local v0, "e":Ljava/lang/Exception;
    move-object/from16 v17, v2

    .end local v2    # "mask":Landroid/graphics/Bitmap;
    .local v17, "mask":Landroid/graphics/Bitmap;
    const-string v2, "loadIcon fail"

    invoke-static {v12, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 461
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_9e
    if-eqz v1, :cond_a6

    .line 462
    add-int/lit8 v0, v15, 0x1

    .end local v15    # "taskCnt":I
    .local v0, "taskCnt":I
    invoke-interface {v1, v15}, Lmiui/content/res/IconCustomizer$CustomizedIconsListener;->finishPrepareIcon(I)V

    move v15, v0

    .line 464
    .end local v0    # "taskCnt":I
    .end local v16    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    .restart local v15    # "taskCnt":I
    :cond_a6
    move-object/from16 v2, v17

    goto :goto_82

    .line 465
    .end local v17    # "mask":Landroid/graphics/Bitmap;
    .restart local v2    # "mask":Landroid/graphics/Bitmap;
    :cond_a9
    move-object/from16 v17, v2

    .end local v2    # "mask":Landroid/graphics/Bitmap;
    .restart local v17    # "mask":Landroid/graphics/Bitmap;
    invoke-interface {v9}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepareCustomizedIcons end "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-object v14, v3

    .end local v3    # "background":Landroid/graphics/Bitmap;
    .local v14, "background":Landroid/graphics/Bitmap;
    sub-long v2, v18, v10

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    if-eqz v1, :cond_d0

    .line 469
    invoke-interface/range {p1 .. p1}, Lmiui/content/res/IconCustomizer$CustomizedIconsListener;->finishAllIcons()V

    .line 471
    :cond_d0
    return-void
.end method

.method public static whitelist saveCustomizedIconBitmap(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/content/Context;)V
    .registers 4
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "dr"    # Landroid/graphics/drawable/Drawable;
    .param p3, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 484
    return-void
.end method

.method private static blacklist scaleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 4
    .param p0, "icon"    # Landroid/graphics/Bitmap;

    .line 276
    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 278
    :cond_4
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    .line 279
    .local v0, "density":I
    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 280
    invoke-static {}, Lmiui/content/res/IconCustomizer;->getCustomizedIconWidth()I

    move-result v1

    .line 281
    .local v1, "iconSize":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ne v2, v1, :cond_22

    .line 282
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-ne v2, v1, :cond_22

    return-object p0

    .line 284
    :cond_22
    const/4 v2, 0x1

    invoke-static {p0, v1, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 285
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v2, v0}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 286
    return-object v2
.end method

.method private static blacklist setHue(IF[I)I
    .registers 13
    .param p0, "color"    # I
    .param p1, "hue"    # F
    .param p2, "RGB"    # [I

    .line 1775
    invoke-static {p0, p2}, Lmiui/content/res/IconCustomizer;->colorToRGB(I[I)V

    .line 1777
    const/4 v0, 0x0

    aget v1, p2, v0

    const/4 v2, 0x1

    aget v3, p2, v2

    const/4 v4, 0x2

    aget v5, p2, v4

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1778
    .local v1, "min":I
    aget v0, p2, v0

    aget v2, p2, v2

    aget v3, p2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1780
    .local v0, "max":I
    sub-int v2, v0, v1

    .line 1781
    .local v2, "range":I
    if-nez v2, :cond_27

    .line 1782
    return p0

    .line 1784
    :cond_27
    :goto_27
    const/4 v3, 0x0

    cmpg-float v4, p1, v3

    const/high16 v5, 0x43b40000    # 360.0f

    if-gez v4, :cond_30

    .line 1785
    add-float/2addr p1, v5

    goto :goto_27

    .line 1786
    :cond_30
    :goto_30
    cmpl-float v4, p1, v5

    if-lez v4, :cond_36

    .line 1787
    sub-float/2addr p1, v5

    goto :goto_30

    .line 1789
    :cond_36
    const/high16 v4, 0x42f00000    # 120.0f

    div-float v4, p1, v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 1790
    .local v4, "index":I
    mul-int/lit8 v5, v4, 0x78

    int-to-float v5, v5

    sub-float/2addr p1, v5

    .line 1791
    add-int/lit8 v5, v4, 0x2

    rem-int/lit8 v5, v5, 0x3

    .line 1793
    .end local v4    # "index":I
    .local v5, "index":I
    aput v1, p2, v5

    .line 1794
    add-int/lit8 v4, v5, 0x2

    rem-int/lit8 v4, v4, 0x3

    int-to-float v6, v1

    int-to-float v7, v2

    const/high16 v8, 0x42700000    # 60.0f

    invoke-static {p1, v8}, Ljava/lang/Math;->min(FF)F

    move-result v9

    mul-float/2addr v7, v9

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-int v6, v6

    aput v6, p2, v4

    .line 1795
    add-int/lit8 v4, v5, 0x1

    rem-int/lit8 v4, v4, 0x3

    int-to-float v6, v0

    int-to-float v7, v2

    sub-float v9, p1, v8

    invoke-static {v3, v9}, Ljava/lang/Math;->max(FF)F

    move-result v3

    mul-float/2addr v7, v3

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    float-to-int v3, v6

    aput v3, p2, v4

    .line 1797
    invoke-static {p2}, Lmiui/content/res/IconCustomizer;->RGBToColor([I)I

    move-result v3

    return v3
.end method

.method private static blacklist setSaturation(IF[I)I
    .registers 11
    .param p0, "color"    # I
    .param p1, "saturation"    # F
    .param p2, "RGB"    # [I

    .line 1738
    invoke-static {p0, p2}, Lmiui/content/res/IconCustomizer;->colorToRGB(I[I)V

    .line 1740
    const/4 v0, 0x0

    aget v1, p2, v0

    const/4 v2, 0x1

    aget v3, p2, v2

    const/4 v4, 0x2

    aget v5, p2, v4

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1741
    .local v1, "min":I
    aget v3, p2, v0

    aget v5, p2, v2

    aget v6, p2, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1742
    .local v3, "max":I
    if-eqz v3, :cond_58

    if-ne v3, v1, :cond_27

    goto :goto_58

    .line 1745
    :cond_27
    const/high16 v5, 0x3f800000    # 1.0f

    sub-int v6, v3, v1

    int-to-float v6, v6

    mul-float/2addr v6, v5

    int-to-float v5, v3

    div-float/2addr v6, v5

    .line 1746
    .local v6, "currentSaturation":F
    int-to-float v5, v3

    aget v7, p2, v0

    sub-int v7, v3, v7

    int-to-float v7, v7

    mul-float/2addr v7, p1

    div-float/2addr v7, v6

    sub-float/2addr v5, v7

    float-to-int v5, v5

    aput v5, p2, v0

    .line 1747
    int-to-float v0, v3

    aget v5, p2, v2

    sub-int v5, v3, v5

    int-to-float v5, v5

    mul-float/2addr v5, p1

    div-float/2addr v5, v6

    sub-float/2addr v0, v5

    float-to-int v0, v0

    aput v0, p2, v2

    .line 1748
    int-to-float v0, v3

    aget v2, p2, v4

    sub-int v2, v3, v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    div-float/2addr v2, v6

    sub-float/2addr v0, v2

    float-to-int v0, v0

    aput v0, p2, v4

    .line 1750
    invoke-static {p2}, Lmiui/content/res/IconCustomizer;->RGBToColor([I)I

    move-result v0

    return v0

    .line 1743
    .end local v6    # "currentSaturation":F
    :cond_58
    :goto_58
    return p0
.end method

.method private static blacklist setValue(IF[I)I
    .registers 9
    .param p0, "color"    # I
    .param p1, "value"    # F
    .param p2, "RGB"    # [I

    .line 1712
    invoke-static {p0, p2}, Lmiui/content/res/IconCustomizer;->colorToRGB(I[I)V

    .line 1714
    const/4 v0, 0x0

    aget v1, p2, v0

    const/4 v2, 0x1

    aget v3, p2, v2

    const/4 v4, 0x2

    aget v5, p2, v4

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1715
    .local v1, "max":I
    if-nez v1, :cond_17

    .line 1716
    return p0

    .line 1718
    :cond_17
    const/high16 v3, 0x3f800000    # 1.0f

    int-to-float v5, v1

    mul-float/2addr v5, v3

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v5, v3

    .line 1719
    .local v5, "currentValue":F
    aget v3, p2, v0

    int-to-float v3, v3

    mul-float/2addr v3, p1

    div-float/2addr v3, v5

    float-to-int v3, v3

    aput v3, p2, v0

    .line 1720
    aget v0, p2, v2

    int-to-float v0, v0

    mul-float/2addr v0, p1

    div-float/2addr v0, v5

    float-to-int v0, v0

    aput v0, p2, v2

    .line 1721
    aget v0, p2, v4

    int-to-float v0, v0

    mul-float/2addr v0, p1

    div-float/2addr v0, v5

    float-to-int v0, v0

    aput v0, p2, v4

    .line 1723
    invoke-static {p2}, Lmiui/content/res/IconCustomizer;->RGBToColor([I)I

    move-result v0

    return v0
.end method

.method private static blacklist transToMiuiModIcon(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Lmiui/content/res/IconCustomizer$IconConfig;)Landroid/graphics/drawable/BitmapDrawable;
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "icon"    # Landroid/graphics/Bitmap;
    .param p2, "original"    # Landroid/graphics/drawable/Drawable;
    .param p3, "filename"    # Ljava/lang/String;
    .param p4, "config"    # Lmiui/content/res/IconCustomizer$IconConfig;

    .line 865
    const/4 v0, 0x0

    .line 866
    .local v0, "dr":Landroid/graphics/drawable/BitmapDrawable;
    instance-of v1, p2, Landroid/graphics/drawable/AdaptiveIconDrawable;

    .line 867
    .local v1, "isAdaptiveIconDrawale":Z
    const/4 v2, 0x0

    if-nez p1, :cond_10

    if-eqz p2, :cond_10

    .line 868
    invoke-static {p2, v2}, Lmiui/content/res/IconCustomizer;->getScaleRatio(Landroid/graphics/drawable/Drawable;Z)F

    move-result v3

    invoke-static {p2, v3, v1}, Lmiui/content/res/IconCustomizer;->drawableToBitmap(Landroid/graphics/drawable/Drawable;FZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 871
    :cond_10
    if-eqz p1, :cond_5e

    .line 872
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Generate customized icon for %s, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p4, :cond_35

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v5, p4, Lmiui/content/res/IconCustomizer$IconConfig;->mIsFullMask:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_37

    :cond_35
    const-string v4, "null"

    :goto_37
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    aput-object p3, v5, v2

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "IconCustomizer"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    new-array v8, v4, [Ljava/lang/String;

    aput-object p3, v8, v2

    const-string v4, "icon_mask.png"

    const-string v5, "icon_background.png"

    const-string v6, "icon_pattern.png"

    const-string v7, "icon_border.png"

    move-object v3, p1

    invoke-static/range {v3 .. v8}, Lmiui/content/res/IconCustomizer;->composeIconWithTransform(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 876
    :cond_5e
    if-nez p1, :cond_62

    const/4 v2, 0x0

    goto :goto_74

    :cond_62
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    invoke-virtual {p1, v5, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object v2, v3

    :goto_74
    move-object v0, v2

    .line 877
    invoke-static {p0}, Lmiui/content/res/IconCustomizer;->checkDensity(Landroid/content/Context;)V

    .line 878
    return-object v0
.end method

.method private static blacklist transformBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)Landroid/graphics/Bitmap;
    .registers 5
    .param p0, "base"    # Landroid/graphics/Bitmap;
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .line 1133
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1134
    .local v0, "outBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 1135
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1136
    .local v1, "canvas":Landroid/graphics/Canvas;
    sget-object v2, Lmiui/content/res/IconCustomizer;->sPaintForTransformBitmap:Landroid/graphics/Paint;

    invoke-virtual {v1, p0, p1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 1137
    return-object v0
.end method

.method private static varargs blacklist unifyDensity(Landroid/graphics/Bitmap;[Landroid/graphics/Bitmap;)V
    .registers 8
    .param p0, "base"    # Landroid/graphics/Bitmap;
    .param p1, "masks"    # [Landroid/graphics/Bitmap;

    .line 1282
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v0

    .line 1283
    .local v0, "density":I
    array-length v1, p1

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_38

    aget-object v3, p1, v2

    .line 1284
    .local v3, "mask":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_35

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v4

    if-eq v4, v0, :cond_35

    .line 1285
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " :mask density != base: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "IconCustomizer"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    invoke-virtual {v3, v0}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 1283
    .end local v3    # "mask":Landroid/graphics/Bitmap;
    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1289
    :cond_38
    return-void
.end method
