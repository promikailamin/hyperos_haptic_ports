.class public final Landroid/content/res/Configuration;
.super Ljava/lang/Object;
.source "Configuration.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/Configuration$NativeConfig;,
        Landroid/content/res/Configuration$Orientation;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable<",
        "Landroid/content/res/Configuration;",
        ">;"
    }
.end annotation


# static fields
.field public static final greylist-max-o ASSETS_SEQ_UNDEFINED:I = 0x0

.field public static final whitelist COLOR_MODE_HDR_MASK:I = 0xc

.field public static final whitelist COLOR_MODE_HDR_NO:I = 0x4

.field public static final whitelist COLOR_MODE_HDR_SHIFT:I = 0x2

.field public static final whitelist COLOR_MODE_HDR_UNDEFINED:I = 0x0

.field public static final whitelist COLOR_MODE_HDR_YES:I = 0x8

.field public static final whitelist COLOR_MODE_UNDEFINED:I = 0x0

.field public static final whitelist COLOR_MODE_WIDE_COLOR_GAMUT_MASK:I = 0x3

.field public static final whitelist COLOR_MODE_WIDE_COLOR_GAMUT_NO:I = 0x1

.field public static final whitelist COLOR_MODE_WIDE_COLOR_GAMUT_UNDEFINED:I = 0x0

.field public static final whitelist COLOR_MODE_WIDE_COLOR_GAMUT_YES:I = 0x2

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/res/Configuration;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-o DENSITY_DPI_ANY:I = 0xfffe

.field public static final greylist-max-o DENSITY_DPI_NONE:I = 0xffff

.field public static final whitelist DENSITY_DPI_UNDEFINED:I = 0x0

.field public static final greylist-max-o EMPTY:Landroid/content/res/Configuration;

.field public static final whitelist FONT_WEIGHT_ADJUSTMENT_UNDEFINED:I = 0x7fffffff

.field public static final whitelist HARDKEYBOARDHIDDEN_NO:I = 0x1

.field public static final whitelist HARDKEYBOARDHIDDEN_UNDEFINED:I = 0x0

.field public static final whitelist HARDKEYBOARDHIDDEN_YES:I = 0x2

.field public static final whitelist IME_BOUNDS_CHANGED:I = 0x20000

.field public static final whitelist KEYBOARDHIDDEN_NO:I = 0x1

.field public static final greylist-max-o KEYBOARDHIDDEN_SOFT:I = 0x3

.field public static final whitelist KEYBOARDHIDDEN_UNDEFINED:I = 0x0

.field public static final whitelist KEYBOARDHIDDEN_YES:I = 0x2

.field public static final whitelist KEYBOARD_12KEY:I = 0x3

.field public static final whitelist KEYBOARD_NOKEYS:I = 0x1

.field public static final whitelist KEYBOARD_QWERTY:I = 0x2

.field public static final whitelist KEYBOARD_UNDEFINED:I = 0x0

.field public static final whitelist MNC_ZERO:I = 0xffff

.field public static final greylist-max-o NATIVE_CONFIG_COLOR_MODE:I = 0x10000

.field public static final greylist-max-o NATIVE_CONFIG_DENSITY:I = 0x100

.field public static final greylist-max-o NATIVE_CONFIG_KEYBOARD:I = 0x10

.field public static final greylist-max-o NATIVE_CONFIG_KEYBOARD_HIDDEN:I = 0x20

.field public static final greylist-max-o NATIVE_CONFIG_LAYOUTDIR:I = 0x4000

.field public static final greylist-max-o NATIVE_CONFIG_LOCALE:I = 0x4

.field public static final greylist-max-o NATIVE_CONFIG_MCC:I = 0x1

.field public static final greylist-max-o NATIVE_CONFIG_MNC:I = 0x2

.field public static final greylist-max-o NATIVE_CONFIG_NAVIGATION:I = 0x40

.field public static final greylist-max-o NATIVE_CONFIG_ORIENTATION:I = 0x80

.field public static final greylist-max-o NATIVE_CONFIG_SCREEN_LAYOUT:I = 0x800

.field public static final greylist-max-o NATIVE_CONFIG_SCREEN_SIZE:I = 0x200

.field public static final greylist-max-o NATIVE_CONFIG_SMALLEST_SCREEN_SIZE:I = 0x2000

.field public static final greylist-max-o NATIVE_CONFIG_TOUCHSCREEN:I = 0x8

.field public static final greylist-max-o NATIVE_CONFIG_UI_MODE:I = 0x1000

.field public static final greylist-max-o NATIVE_CONFIG_VERSION:I = 0x400

.field public static final whitelist NAVIGATIONHIDDEN_NO:I = 0x1

.field public static final whitelist NAVIGATIONHIDDEN_UNDEFINED:I = 0x0

.field public static final whitelist NAVIGATIONHIDDEN_YES:I = 0x2

.field public static final whitelist NAVIGATION_DPAD:I = 0x2

.field public static final whitelist NAVIGATION_NONAV:I = 0x1

.field public static final whitelist NAVIGATION_TRACKBALL:I = 0x3

.field public static final whitelist NAVIGATION_UNDEFINED:I = 0x0

.field public static final whitelist NAVIGATION_WHEEL:I = 0x4

.field public static final whitelist ORIENTATION_LANDSCAPE:I = 0x2

.field public static final whitelist ORIENTATION_PORTRAIT:I = 0x1

.field public static final whitelist ORIENTATION_SQUARE:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ORIENTATION_UNDEFINED:I = 0x0

.field public static final greylist-max-o SCREENLAYOUT_COMPAT_NEEDED:I = 0x10000000

.field public static final whitelist SCREENLAYOUT_LAYOUTDIR_LTR:I = 0x40

.field public static final whitelist SCREENLAYOUT_LAYOUTDIR_MASK:I = 0xc0

.field public static final whitelist SCREENLAYOUT_LAYOUTDIR_RTL:I = 0x80

.field public static final whitelist SCREENLAYOUT_LAYOUTDIR_SHIFT:I = 0x6

.field public static final whitelist SCREENLAYOUT_LAYOUTDIR_UNDEFINED:I = 0x0

.field public static final whitelist SCREENLAYOUT_LONG_MASK:I = 0x30

.field public static final whitelist SCREENLAYOUT_LONG_NO:I = 0x10

.field public static final whitelist SCREENLAYOUT_LONG_UNDEFINED:I = 0x0

.field public static final whitelist SCREENLAYOUT_LONG_YES:I = 0x20

.field public static final whitelist SCREENLAYOUT_ROUND_MASK:I = 0x300

.field public static final whitelist SCREENLAYOUT_ROUND_NO:I = 0x100

.field public static final greylist-max-o SCREENLAYOUT_ROUND_SHIFT:I = 0x8

.field public static final whitelist SCREENLAYOUT_ROUND_UNDEFINED:I = 0x0

.field public static final whitelist SCREENLAYOUT_ROUND_YES:I = 0x200

.field public static final whitelist SCREENLAYOUT_SIZE_LARGE:I = 0x3

.field public static final whitelist SCREENLAYOUT_SIZE_MASK:I = 0xf

.field public static final whitelist SCREENLAYOUT_SIZE_NORMAL:I = 0x2

.field public static final whitelist SCREENLAYOUT_SIZE_SMALL:I = 0x1

.field public static final whitelist SCREENLAYOUT_SIZE_UNDEFINED:I = 0x0

.field public static final whitelist SCREENLAYOUT_SIZE_XLARGE:I = 0x4

.field public static final whitelist SCREENLAYOUT_UNDEFINED:I = 0x0

.field public static final whitelist SCREEN_HEIGHT_DP_UNDEFINED:I = 0x0

.field public static final whitelist SCREEN_WIDTH_DP_UNDEFINED:I = 0x0

.field public static final whitelist SMALLEST_SCREEN_WIDTH_DP_UNDEFINED:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "Configuration"

.field public static final whitelist TOUCHSCREEN_FINGER:I = 0x3

.field public static final whitelist TOUCHSCREEN_NOTOUCH:I = 0x1

.field public static final whitelist TOUCHSCREEN_STYLUS:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist TOUCHSCREEN_UNDEFINED:I = 0x0

.field public static final whitelist UI_MODE_NIGHT_MASK:I = 0x30

.field public static final whitelist UI_MODE_NIGHT_NO:I = 0x10

.field public static final whitelist UI_MODE_NIGHT_UNDEFINED:I = 0x0

.field public static final whitelist UI_MODE_NIGHT_YES:I = 0x20

.field public static final whitelist UI_MODE_TYPE_APPLIANCE:I = 0x5

.field public static final whitelist UI_MODE_TYPE_CAR:I = 0x3

.field public static final whitelist UI_MODE_TYPE_DESK:I = 0x2

.field public static final whitelist UI_MODE_TYPE_MASK:I = 0xf

.field public static final whitelist UI_MODE_TYPE_NORMAL:I = 0x1

.field public static final whitelist UI_MODE_TYPE_TELEVISION:I = 0x4

.field public static final whitelist UI_MODE_TYPE_UNDEFINED:I = 0x0

.field public static final whitelist UI_MODE_TYPE_VR_HEADSET:I = 0x7

.field public static final whitelist UI_MODE_TYPE_WATCH:I = 0x6

.field public static final whitelist XIAOMI_KEYBOARD_ATTACHED:I = 0x2

.field public static final whitelist XIAOMI_KEYBOARD_DETACHED:I = 0x1

.field public static final whitelist XIAOMI_KEYBOARD_UNDEFINED:I = 0x0

.field private static final greylist-max-o XML_ATTR_APP_BOUNDS:Ljava/lang/String; = "app_bounds"

.field private static final greylist-max-o XML_ATTR_COLOR_MODE:Ljava/lang/String; = "clrMod"

.field private static final greylist-max-o XML_ATTR_DENSITY:Ljava/lang/String; = "density"

.field private static final greylist-max-o XML_ATTR_FONT_SCALE:Ljava/lang/String; = "fs"

.field private static final blacklist XML_ATTR_FONT_WEIGHT_ADJUSTMENT:Ljava/lang/String; = "fontWeightAdjustment"

.field private static final greylist-max-o XML_ATTR_HARD_KEYBOARD_HIDDEN:Ljava/lang/String; = "hardKeyHid"

.field private static final greylist-max-o XML_ATTR_KEYBOARD:Ljava/lang/String; = "key"

.field private static final greylist-max-o XML_ATTR_KEYBOARD_HIDDEN:Ljava/lang/String; = "keyHid"

.field private static final greylist-max-o XML_ATTR_LOCALES:Ljava/lang/String; = "locales"

.field private static final greylist-max-o XML_ATTR_MCC:Ljava/lang/String; = "mcc"

.field private static final greylist-max-o XML_ATTR_MNC:Ljava/lang/String; = "mnc"

.field private static final greylist-max-o XML_ATTR_NAVIGATION:Ljava/lang/String; = "nav"

.field private static final greylist-max-o XML_ATTR_NAVIGATION_HIDDEN:Ljava/lang/String; = "navHid"

.field private static final greylist-max-o XML_ATTR_ORIENTATION:Ljava/lang/String; = "ori"

.field private static final greylist-max-o XML_ATTR_ROTATION:Ljava/lang/String; = "rot"

.field private static final greylist-max-o XML_ATTR_SCREEN_HEIGHT:Ljava/lang/String; = "height"

.field private static final greylist-max-o XML_ATTR_SCREEN_LAYOUT:Ljava/lang/String; = "scrLay"

.field private static final greylist-max-o XML_ATTR_SCREEN_WIDTH:Ljava/lang/String; = "width"

.field private static final greylist-max-o XML_ATTR_SMALLEST_WIDTH:Ljava/lang/String; = "sw"

.field private static final greylist-max-o XML_ATTR_TOUCHSCREEN:Ljava/lang/String; = "touch"

.field private static final greylist-max-o XML_ATTR_UI_MODE:Ljava/lang/String; = "ui"


# instance fields
.field public greylist-max-r assetsSeq:I

.field public whitelist colorMode:I

.field public greylist-max-o compatScreenHeightDp:I

.field public greylist-max-o compatScreenWidthDp:I

.field public greylist-max-o compatSmallestScreenWidthDp:I

.field public whitelist densityDpi:I

.field public final blacklist extraConfig:Landroid/content/res/IMiuiConfiguration;

.field public whitelist fontScale:F

.field public whitelist fontWeightAdjustment:I

.field public whitelist hardKeyboardHidden:I

.field public whitelist keyboard:I

.field public whitelist keyboardHidden:I

.field public whitelist locale:Ljava/util/Locale;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private blacklist mImeAppBounds:Landroid/graphics/Rect;

.field private greylist-max-o mLocaleList:Landroid/os/LocaleList;

.field public whitelist mcc:I

.field public whitelist mnc:I

.field public whitelist navigation:I

.field public whitelist navigationHidden:I

.field public whitelist orientation:I

.field public whitelist screenHeightDp:I

.field public whitelist screenLayout:I

.field public whitelist screenWidthDp:I

.field public greylist seq:I

.field public whitelist smallestScreenWidthDp:I

.field public whitelist touchscreen:I

.field public whitelist uiMode:I

.field public greylist userSetLocale:Z

.field public final blacklist windowConfiguration:Landroid/app/WindowConfiguration;

.field public blacklist xiaomiKeyboard:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 102
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    sput-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    .line 2233
    new-instance v0, Landroid/content/res/Configuration$1;

    invoke-direct {v0}, Landroid/content/res/Configuration$1;-><init>()V

    sput-object v0, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 1039
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 387
    new-instance v0, Landroid/app/WindowConfiguration;

    invoke-direct {v0}, Landroid/app/WindowConfiguration;-><init>()V

    iput-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 396
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/Configuration;->mImeAppBounds:Landroid/graphics/Rect;

    .line 1041
    invoke-static {}, Landroid/content/res/ThemeManagerStub;->createMiuiConfiguration()Landroid/content/res/IMiuiConfiguration;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/IMiuiConfiguration;

    .line 1042
    invoke-virtual {p0}, Landroid/content/res/Configuration;->unset()V

    .line 1043
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "o"    # Landroid/content/res/Configuration;

    .line 1048
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 387
    new-instance v0, Landroid/app/WindowConfiguration;

    invoke-direct {v0}, Landroid/app/WindowConfiguration;-><init>()V

    iput-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 396
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/Configuration;->mImeAppBounds:Landroid/graphics/Rect;

    .line 1050
    invoke-static {}, Landroid/content/res/ThemeManagerStub;->createMiuiConfiguration()Landroid/content/res/IMiuiConfiguration;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/IMiuiConfiguration;

    .line 1051
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 1052
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 2247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 387
    new-instance v0, Landroid/app/WindowConfiguration;

    invoke-direct {v0}, Landroid/app/WindowConfiguration;-><init>()V

    iput-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 396
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/Configuration;->mImeAppBounds:Landroid/graphics/Rect;

    .line 2249
    invoke-static {}, Landroid/content/res/ThemeManagerStub;->createMiuiConfiguration()Landroid/content/res/IMiuiConfiguration;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/IMiuiConfiguration;

    .line 2250
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->readFromParcel(Landroid/os/Parcel;)V

    .line 2251
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/content/res/Configuration-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static greylist-max-o configurationDiffToString(I)Ljava/lang/String;
    .registers 6
    .param p0, "diff"    # I

    .line 471
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 472
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_e

    .line 473
    const-string v1, "CONFIG_MCC"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 475
    :cond_e
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_17

    .line 476
    const-string v1, "CONFIG_MNC"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 478
    :cond_17
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_20

    .line 479
    const-string v1, "CONFIG_LOCALE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 481
    :cond_20
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_29

    .line 482
    const-string v1, "CONFIG_TOUCHSCREEN"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 484
    :cond_29
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_32

    .line 485
    const-string v1, "CONFIG_KEYBOARD"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 487
    :cond_32
    and-int/lit8 v1, p0, 0x20

    if-eqz v1, :cond_3b

    .line 488
    const-string v1, "CONFIG_KEYBOARD_HIDDEN"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 490
    :cond_3b
    and-int/lit8 v1, p0, 0x40

    if-eqz v1, :cond_44

    .line 491
    const-string v1, "CONFIG_NAVIGATION"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 493
    :cond_44
    and-int/lit16 v1, p0, 0x80

    if-eqz v1, :cond_4d

    .line 494
    const-string v1, "CONFIG_ORIENTATION"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 496
    :cond_4d
    and-int/lit16 v1, p0, 0x100

    if-eqz v1, :cond_56

    .line 497
    const-string v1, "CONFIG_SCREEN_LAYOUT"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 499
    :cond_56
    and-int/lit16 v1, p0, 0x4000

    if-eqz v1, :cond_5f

    .line 500
    const-string v1, "CONFIG_COLOR_MODE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 502
    :cond_5f
    and-int/lit16 v1, p0, 0x200

    if-eqz v1, :cond_68

    .line 503
    const-string v1, "CONFIG_UI_MODE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 505
    :cond_68
    and-int/lit16 v1, p0, 0x400

    if-eqz v1, :cond_71

    .line 506
    const-string v1, "CONFIG_SCREEN_SIZE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 508
    :cond_71
    and-int/lit16 v1, p0, 0x800

    if-eqz v1, :cond_7a

    .line 509
    const-string v1, "CONFIG_SMALLEST_SCREEN_SIZE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 511
    :cond_7a
    and-int/lit16 v1, p0, 0x1000

    if-eqz v1, :cond_83

    .line 512
    const-string v1, "CONFIG_DENSITY"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 514
    :cond_83
    and-int/lit16 v1, p0, 0x2000

    if-eqz v1, :cond_8c

    .line 515
    const-string v1, "CONFIG_LAYOUT_DIRECTION"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 517
    :cond_8c
    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v1, p0

    if-eqz v1, :cond_96

    .line 518
    const-string v1, "CONFIG_FONT_SCALE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 520
    :cond_96
    const/high16 v1, -0x80000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_a0

    .line 521
    const-string v1, "CONFIG_ASSETS_PATHS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 523
    :cond_a0
    const/high16 v1, 0x20000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_aa

    .line 524
    const-string v1, "CONFIG_WINDOW_CONFIGURATION"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 526
    :cond_aa
    const/high16 v1, 0x10000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_b4

    .line 527
    const-string v1, "CONFIG_AUTO_BOLD_TEXT"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 529
    :cond_b4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "{"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 530
    .local v1, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, "n":I
    :goto_c1
    if-ge v2, v3, :cond_d8

    .line 531
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    add-int/lit8 v4, v3, -0x1

    if-eq v2, v4, :cond_d5

    .line 533
    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    :cond_d5
    add-int/lit8 v2, v2, 0x1

    goto :goto_c1

    .line 536
    .end local v2    # "i":I
    .end local v3    # "n":I
    :cond_d8
    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private greylist-max-o fixUpLocaleList()V
    .registers 5

    .line 1057
    iget-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    const/4 v1, 0x0

    if-nez v0, :cond_d

    iget-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v0}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d

    :cond_d
    iget-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v0, :cond_34

    iget-object v2, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    .line 1058
    invoke-virtual {v2, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 1059
    :cond_1d
    iget-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-nez v0, :cond_26

    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object v0

    goto :goto_32

    :cond_26
    new-instance v0, Landroid/os/LocaleList;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/util/Locale;

    iget-object v3, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    aput-object v3, v2, v1

    invoke-direct {v0, v2}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    :goto_32
    iput-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    .line 1061
    :cond_34
    return-void
.end method

.method public static whitelist generateDelta(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;
    .registers 6
    .param p0, "base"    # Landroid/content/res/Configuration;
    .param p1, "change"    # Landroid/content/res/Configuration;

    .line 2884
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 2885
    .local v0, "delta":Landroid/content/res/Configuration;
    iget v1, p0, Landroid/content/res/Configuration;->fontScale:F

    iget v2, p1, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_f

    .line 2886
    iput v2, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 2889
    :cond_f
    iget v1, p0, Landroid/content/res/Configuration;->mcc:I

    iget v2, p1, Landroid/content/res/Configuration;->mcc:I

    if-eq v1, v2, :cond_17

    .line 2890
    iput v2, v0, Landroid/content/res/Configuration;->mcc:I

    .line 2893
    :cond_17
    iget v1, p0, Landroid/content/res/Configuration;->mnc:I

    iget v2, p1, Landroid/content/res/Configuration;->mnc:I

    if-eq v1, v2, :cond_1f

    .line 2894
    iput v2, v0, Landroid/content/res/Configuration;->mnc:I

    .line 2897
    :cond_1f
    invoke-direct {p0}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    .line 2898
    invoke-direct {p1}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    .line 2899
    iget-object v1, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    iget-object v2, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_37

    .line 2900
    iget-object v1, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    iput-object v1, v0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    .line 2901
    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 2904
    :cond_37
    iget v1, p0, Landroid/content/res/Configuration;->touchscreen:I

    iget v2, p1, Landroid/content/res/Configuration;->touchscreen:I

    if-eq v1, v2, :cond_3f

    .line 2905
    iput v2, v0, Landroid/content/res/Configuration;->touchscreen:I

    .line 2908
    :cond_3f
    iget v1, p0, Landroid/content/res/Configuration;->keyboard:I

    iget v2, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v1, v2, :cond_47

    .line 2909
    iput v2, v0, Landroid/content/res/Configuration;->keyboard:I

    .line 2912
    :cond_47
    iget v1, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v2, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eq v1, v2, :cond_4f

    .line 2913
    iput v2, v0, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 2916
    :cond_4f
    iget v1, p0, Landroid/content/res/Configuration;->navigation:I

    iget v2, p1, Landroid/content/res/Configuration;->navigation:I

    if-eq v1, v2, :cond_57

    .line 2917
    iput v2, v0, Landroid/content/res/Configuration;->navigation:I

    .line 2920
    :cond_57
    iget v1, p0, Landroid/content/res/Configuration;->navigationHidden:I

    iget v2, p1, Landroid/content/res/Configuration;->navigationHidden:I

    if-eq v1, v2, :cond_5f

    .line 2921
    iput v2, v0, Landroid/content/res/Configuration;->navigationHidden:I

    .line 2924
    :cond_5f
    iget v1, p0, Landroid/content/res/Configuration;->orientation:I

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v2, :cond_67

    .line 2925
    iput v2, v0, Landroid/content/res/Configuration;->orientation:I

    .line 2928
    :cond_67
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v3, v2, 0xf

    if-eq v1, v3, :cond_78

    .line 2930
    iget v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    .line 2933
    :cond_78
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v1, v1, 0xc0

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v3, v2, 0xc0

    if-eq v1, v3, :cond_89

    .line 2935
    iget v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v2, v2, 0xc0

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    .line 2938
    :cond_89
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0x30

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v3, v2, 0x30

    if-eq v1, v3, :cond_9a

    .line 2940
    iget v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0x30

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    .line 2943
    :cond_9a
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v1, v1, 0x300

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v3, v2, 0x300

    if-eq v1, v3, :cond_ab

    .line 2945
    iget v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v2, v2, 0x300

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    .line 2948
    :cond_ab
    iget v1, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v1, v1, 0x3

    iget v2, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v3, v2, 0x3

    if-eq v1, v3, :cond_bc

    .line 2950
    iget v1, v0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v2, v2, 0x3

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/res/Configuration;->colorMode:I

    .line 2953
    :cond_bc
    iget v1, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v1, v1, 0xc

    iget v2, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v3, v2, 0xc

    if-eq v1, v3, :cond_cd

    .line 2955
    iget v1, v0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v2, v2, 0xc

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/res/Configuration;->colorMode:I

    .line 2958
    :cond_cd
    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0xf

    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v3, v2, 0xf

    if-eq v1, v3, :cond_de

    .line 2959
    iget v1, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0xf

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/res/Configuration;->uiMode:I

    .line 2962
    :cond_de
    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x30

    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v3, v2, 0x30

    if-eq v1, v3, :cond_ef

    .line 2963
    iget v1, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/res/Configuration;->uiMode:I

    .line 2966
    :cond_ef
    iget v1, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eq v1, v2, :cond_f7

    .line 2967
    iput v2, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 2970
    :cond_f7
    iget v1, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v1, v2, :cond_ff

    .line 2971
    iput v2, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 2974
    :cond_ff
    iget v1, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v2, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eq v1, v2, :cond_107

    .line 2975
    iput v2, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 2978
    :cond_107
    iget v1, p0, Landroid/content/res/Configuration;->densityDpi:I

    iget v2, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v1, v2, :cond_10f

    .line 2979
    iput v2, v0, Landroid/content/res/Configuration;->densityDpi:I

    .line 2982
    :cond_10f
    iget v1, p0, Landroid/content/res/Configuration;->assetsSeq:I

    iget v2, p1, Landroid/content/res/Configuration;->assetsSeq:I

    if-eq v1, v2, :cond_117

    .line 2983
    iput v2, v0, Landroid/content/res/Configuration;->assetsSeq:I

    .line 2986
    :cond_117
    iget-object v1, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v2, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1, v2}, Landroid/app/WindowConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_128

    .line 2987
    iget-object v1, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v2, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1, v2}, Landroid/app/WindowConfiguration;->setTo(Landroid/app/WindowConfiguration;)V

    .line 2990
    :cond_128
    iget v1, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    iget v2, p1, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    if-eq v1, v2, :cond_130

    .line 2991
    iput v2, v0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    .line 2995
    :cond_130
    iget-object v1, p0, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/IMiuiConfiguration;

    if-eqz v1, :cond_145

    iget-object v2, p1, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/IMiuiConfiguration;

    if-eqz v2, :cond_145

    .line 2996
    invoke-interface {v1, v2}, Landroid/content/res/IMiuiConfiguration;->compareTo(Ljava/lang/Object;)I

    move-result v1

    if-eqz v1, :cond_145

    .line 2997
    iget-object v1, v0, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/IMiuiConfiguration;

    iget-object v2, p1, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/IMiuiConfiguration;

    invoke-interface {v1, v2}, Landroid/content/res/IMiuiConfiguration;->setTo(Landroid/content/res/IMiuiConfiguration;)V

    .line 3002
    :cond_145
    iget v1, p0, Landroid/content/res/Configuration;->xiaomiKeyboard:I

    iget v2, p1, Landroid/content/res/Configuration;->xiaomiKeyboard:I

    if-eq v1, v2, :cond_14d

    .line 3003
    iput v2, v0, Landroid/content/res/Configuration;->xiaomiKeyboard:I

    .line 3006
    :cond_14d
    return-object v0
.end method

.method private static greylist-max-o getScreenLayoutNoDirection(I)I
    .registers 2
    .param p0, "screenLayout"    # I

    .line 2500
    and-int/lit16 v0, p0, -0xc1

    return v0
.end method

.method public static blacklist getUiModeTypeString(I)Ljava/lang/String;
    .registers 2
    .param p0, "uiModeType"    # I

    .line 2854
    packed-switch p0, :pswitch_data_1a

    .line 2868
    const/4 v0, 0x0

    return-object v0

    .line 2866
    :pswitch_5
    const-string/jumbo v0, "vrheadset"

    return-object v0

    .line 2864
    :pswitch_9
    const-string/jumbo v0, "watch"

    return-object v0

    .line 2856
    :pswitch_d
    const-string v0, "appliance"

    return-object v0

    .line 2860
    :pswitch_10
    const-string/jumbo v0, "television"

    return-object v0

    .line 2862
    :pswitch_14
    const-string v0, "car"

    return-object v0

    .line 2858
    :pswitch_17
    const-string v0, "desk"

    return-object v0

    :pswitch_data_1a
    .packed-switch 0x2
        :pswitch_17
        :pswitch_14
        :pswitch_10
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method

.method public static greylist-max-o localesToResourceQualifier(Landroid/os/LocaleList;)Ljava/lang/String;
    .registers 10
    .param p0, "locs"    # Landroid/os/LocaleList;

    .line 2542
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2543
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-virtual {p0}, Landroid/os/LocaleList;->size()I

    move-result v2

    if-ge v1, v2, :cond_97

    .line 2544
    invoke-virtual {p0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v2

    .line 2545
    .local v2, "loc":Ljava/util/Locale;
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    .line 2546
    .local v3, "l":I
    if-nez v3, :cond_1c

    .line 2547
    goto/16 :goto_93

    .line 2549
    :cond_1c
    invoke-virtual {v2}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    .line 2550
    .local v4, "s":I
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    .line 2551
    .local v5, "c":I
    invoke-virtual {v2}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    .line 2554
    .local v6, "v":I
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-eqz v7, :cond_3f

    .line 2555
    const-string v7, ","

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2557
    :cond_3f
    const/4 v7, 0x2

    if-ne v3, v7, :cond_61

    if-nez v4, :cond_61

    if-eqz v5, :cond_48

    if-ne v5, v7, :cond_61

    :cond_48
    if-nez v6, :cond_61

    .line 2559
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2560
    if-ne v5, v7, :cond_93

    .line 2561
    const-string v7, "-r"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_93

    .line 2564
    :cond_61
    const-string v7, "b+"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2565
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2566
    const-string v7, "+"

    if-eqz v4, :cond_7b

    .line 2567
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2568
    invoke-virtual {v2}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2570
    :cond_7b
    if-eqz v5, :cond_87

    .line 2571
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2572
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2574
    :cond_87
    if-eqz v6, :cond_93

    .line 2575
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2576
    invoke-virtual {v2}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2543
    .end local v2    # "loc":Ljava/util/Locale;
    .end local v3    # "l":I
    .end local v4    # "s":I
    .end local v5    # "c":I
    .end local v6    # "v":I
    :cond_93
    :goto_93
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_6

    .line 2580
    .end local v1    # "i":I
    :cond_97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist needNewResources(II)Z
    .registers 4
    .param p0, "configChanges"    # I
    .param p1, "interestingChanges"    # I

    .line 2095
    const/high16 v0, -0x80000000

    or-int/2addr v0, p1

    const/high16 v1, 0x40000000    # 2.0f

    or-int p1, v0, v1

    .line 2099
    and-int v0, p0, p1

    if-nez v0, :cond_14

    .line 2100
    invoke-static {p0}, Landroid/content/res/ThemeManagerStub;->needNewResources(I)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_14

    :cond_12
    const/4 v0, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 v0, 0x1

    .line 2099
    :goto_15
    return v0
.end method

.method public static greylist-max-o readXmlAttrs(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Configuration;)V
    .registers 5
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "configOut"    # Landroid/content/res/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 3041
    nop

    .line 3042
    const-string v0, "fs"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    .line 3041
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    iput v0, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 3043
    const-string/jumbo v0, "mcc"

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Landroid/content/res/Configuration;->mcc:I

    .line 3044
    const-string/jumbo v0, "mnc"

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Landroid/content/res/Configuration;->mnc:I

    .line 3046
    const-string v0, "locales"

    invoke-static {p0, v0}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3047
    .local v0, "localesStr":Ljava/lang/String;
    invoke-static {v0}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v2

    iput-object v2, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    .line 3048
    invoke-virtual {v2, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v2

    iput-object v2, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 3050
    const-string/jumbo v2, "touch"

    invoke-static {p0, v2, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Landroid/content/res/Configuration;->touchscreen:I

    .line 3052
    const-string v2, "key"

    invoke-static {p0, v2, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Landroid/content/res/Configuration;->keyboard:I

    .line 3054
    const-string v2, "keyHid"

    invoke-static {p0, v2, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 3056
    nop

    .line 3057
    const-string v2, "hardKeyHid"

    invoke-static {p0, v2, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 3059
    const-string/jumbo v2, "nav"

    invoke-static {p0, v2, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Landroid/content/res/Configuration;->navigation:I

    .line 3061
    const-string/jumbo v2, "navHid"

    invoke-static {p0, v2, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Landroid/content/res/Configuration;->navigationHidden:I

    .line 3063
    const-string/jumbo v2, "ori"

    invoke-static {p0, v2, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Landroid/content/res/Configuration;->orientation:I

    .line 3065
    const-string/jumbo v2, "scrLay"

    invoke-static {p0, v2, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    .line 3067
    const-string v2, "clrMod"

    invoke-static {p0, v2, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Landroid/content/res/Configuration;->colorMode:I

    .line 3069
    const-string/jumbo v2, "ui"

    invoke-static {p0, v2, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Landroid/content/res/Configuration;->uiMode:I

    .line 3070
    const-string/jumbo v2, "width"

    invoke-static {p0, v2, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 3072
    const-string v2, "height"

    invoke-static {p0, v2, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 3074
    nop

    .line 3075
    const-string/jumbo v2, "sw"

    invoke-static {p0, v2, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 3077
    const-string v2, "density"

    invoke-static {p0, v2, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    iput v1, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 3079
    const-string v1, "fontWeightAdjustment"

    const v2, 0x7fffffff

    invoke-static {p0, v1, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    iput v1, p1, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    .line 3084
    return-void
.end method

.method public static greylist-max-o reduceScreenLayout(III)I
    .registers 8
    .param p0, "curLayout"    # I
    .param p1, "longSizeDp"    # I
    .param p2, "shortSizeDp"    # I

    .line 416
    const/16 v0, 0x1d6

    if-ge p1, v0, :cond_8

    .line 419
    const/4 v0, 0x1

    .line 420
    .local v0, "screenLayoutSize":I
    const/4 v1, 0x0

    .line 421
    .local v1, "screenLayoutLong":Z
    const/4 v2, 0x0

    .local v2, "screenLayoutCompatNeeded":Z
    goto :goto_36

    .line 424
    .end local v0    # "screenLayoutSize":I
    .end local v1    # "screenLayoutLong":Z
    .end local v2    # "screenLayoutCompatNeeded":Z
    :cond_8
    const/16 v0, 0x3c0

    if-lt p1, v0, :cond_12

    const/16 v0, 0x2d0

    if-lt p2, v0, :cond_12

    .line 427
    const/4 v0, 0x4

    .restart local v0    # "screenLayoutSize":I
    goto :goto_1d

    .line 428
    .end local v0    # "screenLayoutSize":I
    :cond_12
    const/16 v0, 0x280

    if-lt p1, v0, :cond_1c

    const/16 v0, 0x1e0

    if-lt p2, v0, :cond_1c

    .line 431
    const/4 v0, 0x3

    .restart local v0    # "screenLayoutSize":I
    goto :goto_1d

    .line 433
    .end local v0    # "screenLayoutSize":I
    :cond_1c
    const/4 v0, 0x2

    .line 439
    .restart local v0    # "screenLayoutSize":I
    :goto_1d
    const/16 v1, 0x141

    if-gt p2, v1, :cond_29

    const/16 v1, 0x23a

    if-le p1, v1, :cond_26

    goto :goto_29

    .line 442
    :cond_26
    const/4 v1, 0x0

    move v2, v1

    .local v1, "screenLayoutCompatNeeded":Z
    goto :goto_2b

    .line 440
    .end local v1    # "screenLayoutCompatNeeded":Z
    :cond_29
    :goto_29
    const/4 v1, 0x1

    move v2, v1

    .line 446
    .restart local v2    # "screenLayoutCompatNeeded":Z
    :goto_2b
    mul-int/lit8 v1, p1, 0x3

    div-int/lit8 v1, v1, 0x5

    add-int/lit8 v3, p2, -0x1

    if-lt v1, v3, :cond_35

    .line 448
    const/4 v1, 0x1

    .local v1, "screenLayoutLong":Z
    goto :goto_36

    .line 450
    .end local v1    # "screenLayoutLong":Z
    :cond_35
    const/4 v1, 0x0

    .line 456
    .restart local v1    # "screenLayoutLong":Z
    :goto_36
    if-nez v1, :cond_3c

    .line 457
    and-int/lit8 v3, p0, -0x31

    or-int/lit8 p0, v3, 0x10

    .line 459
    :cond_3c
    if-eqz v2, :cond_41

    .line 460
    const/high16 v3, 0x10000000

    or-int/2addr p0, v3

    .line 462
    :cond_41
    and-int/lit8 v3, p0, 0xf

    .line 463
    .local v3, "curSize":I
    if-ge v0, v3, :cond_49

    .line 464
    and-int/lit8 v4, p0, -0x10

    or-int p0, v4, v0

    .line 466
    :cond_49
    return p0
.end method

.method public static greylist-max-o resetScreenLayout(I)I
    .registers 2
    .param p0, "curLayout"    # I

    .line 401
    const v0, -0x10000040

    and-int/2addr v0, p0

    or-int/lit8 v0, v0, 0x24

    return v0
.end method

.method public static greylist-max-r resourceQualifierString(Landroid/content/res/Configuration;)Ljava/lang/String;
    .registers 2
    .param p0, "config"    # Landroid/content/res/Configuration;

    .line 2592
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/content/res/Configuration;->resourceQualifierString(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o resourceQualifierString(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)Ljava/lang/String;
    .registers 8
    .param p0, "config"    # Landroid/content/res/Configuration;
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;

    .line 2602
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2604
    .local v0, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget v1, p0, Landroid/content/res/Configuration;->mcc:I

    if-eqz v1, :cond_3f

    .line 2605
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mcc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2606
    iget v1, p0, Landroid/content/res/Configuration;->mnc:I

    if-eqz v1, :cond_3f

    .line 2607
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mnc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/content/res/Configuration;->mnc:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2611
    :cond_3f
    iget-object v1, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v1}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_56

    .line 2612
    iget-object v1, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-static {v1}, Landroid/content/res/Configuration;->localesToResourceQualifier(Landroid/os/LocaleList;)Ljava/lang/String;

    move-result-object v1

    .line 2613
    .local v1, "resourceQualifier":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_56

    .line 2614
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2618
    .end local v1    # "resourceQualifier":Ljava/lang/String;
    :cond_56
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v1, v1, 0xc0

    sparse-switch v1, :sswitch_data_29e

    goto :goto_6a

    .line 2623
    :sswitch_5e
    const-string v1, "ldrtl"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2624
    goto :goto_6a

    .line 2620
    :sswitch_64
    const-string v1, "ldltr"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2621
    nop

    .line 2629
    :goto_6a
    iget v1, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const-string v2, "dp"

    if-eqz v1, :cond_8d

    .line 2630
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sw"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2633
    :cond_8d
    iget v1, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v1, :cond_ae

    .line 2634
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "w"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2637
    :cond_ae
    iget v1, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eqz v1, :cond_ce

    .line 2638
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "h"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2641
    :cond_ce
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    packed-switch v1, :pswitch_data_2a8

    goto :goto_f1

    .line 2652
    :pswitch_d6
    const-string/jumbo v1, "xlarge"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2653
    goto :goto_f1

    .line 2649
    :pswitch_dd
    const-string v1, "large"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2650
    goto :goto_f1

    .line 2646
    :pswitch_e3
    const-string/jumbo v1, "normal"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2647
    goto :goto_f1

    .line 2643
    :pswitch_ea
    const-string/jumbo v1, "small"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2644
    nop

    .line 2658
    :goto_f1
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0x30

    sparse-switch v1, :sswitch_data_2b4

    goto :goto_106

    .line 2660
    :sswitch_f9
    const-string v1, "long"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2661
    goto :goto_106

    .line 2663
    :sswitch_ff
    const-string/jumbo v1, "notlong"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2664
    nop

    .line 2669
    :goto_106
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v1, v1, 0x300

    sparse-switch v1, :sswitch_data_2be

    goto :goto_11c

    .line 2671
    :sswitch_10e
    const-string/jumbo v1, "round"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2672
    goto :goto_11c

    .line 2674
    :sswitch_115
    const-string/jumbo v1, "notround"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2675
    nop

    .line 2680
    :goto_11c
    iget v1, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v1, v1, 0x3

    packed-switch v1, :pswitch_data_2c8

    goto :goto_132

    .line 2682
    :pswitch_124
    const-string/jumbo v1, "widecg"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2683
    goto :goto_132

    .line 2685
    :pswitch_12b
    const-string/jumbo v1, "nowidecg"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2686
    nop

    .line 2691
    :goto_132
    iget v1, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v1, v1, 0xc

    sparse-switch v1, :sswitch_data_2d0

    goto :goto_146

    .line 2693
    :sswitch_13a
    const-string v1, "highdr"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2694
    goto :goto_146

    .line 2696
    :sswitch_140
    const-string v1, "lowdr"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2697
    nop

    .line 2702
    :goto_146
    iget v1, p0, Landroid/content/res/Configuration;->orientation:I

    packed-switch v1, :pswitch_data_2da

    goto :goto_159

    .line 2704
    :pswitch_14c
    const-string v1, "land"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2705
    goto :goto_159

    .line 2707
    :pswitch_152
    const-string/jumbo v1, "port"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2708
    nop

    .line 2713
    :goto_159
    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0xf

    .line 2714
    invoke-static {v1}, Landroid/content/res/Configuration;->getUiModeTypeString(I)Ljava/lang/String;

    move-result-object v1

    .line 2715
    .local v1, "uiModeTypeString":Ljava/lang/String;
    if-eqz v1, :cond_166

    .line 2716
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2719
    :cond_166
    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    sparse-switch v2, :sswitch_data_2e2

    goto :goto_17c

    .line 2721
    :sswitch_16e
    const-string/jumbo v2, "night"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2722
    goto :goto_17c

    .line 2724
    :sswitch_175
    const-string/jumbo v2, "notnight"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2725
    nop

    .line 2730
    :goto_17c
    iget v2, p0, Landroid/content/res/Configuration;->densityDpi:I

    sparse-switch v2, :sswitch_data_2ec

    .line 2761
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "dpi"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d7

    .line 2758
    :sswitch_19a
    const-string/jumbo v2, "nodpi"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2759
    goto :goto_1d7

    .line 2755
    :sswitch_1a1
    const-string v2, "anydpi"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2756
    goto :goto_1d7

    .line 2752
    :sswitch_1a7
    const-string/jumbo v2, "xxxhdpi"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2753
    goto :goto_1d7

    .line 2749
    :sswitch_1ae
    const-string/jumbo v2, "xxhdpi"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2750
    goto :goto_1d7

    .line 2746
    :sswitch_1b5
    const-string/jumbo v2, "xhdpi"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2747
    goto :goto_1d7

    .line 2743
    :sswitch_1bc
    const-string v2, "hdpi"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2744
    goto :goto_1d7

    .line 2740
    :sswitch_1c2
    const-string/jumbo v2, "tvdpi"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2741
    goto :goto_1d7

    .line 2737
    :sswitch_1c9
    const-string/jumbo v2, "mdpi"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2738
    goto :goto_1d7

    .line 2734
    :sswitch_1d0
    const-string v2, "ldpi"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2735
    goto :goto_1d7

    .line 2732
    :sswitch_1d6
    nop

    .line 2765
    :goto_1d7
    iget v2, p0, Landroid/content/res/Configuration;->touchscreen:I

    packed-switch v2, :pswitch_data_316

    :pswitch_1dc
    goto :goto_1ea

    .line 2770
    :pswitch_1dd
    const-string v2, "finger"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2771
    goto :goto_1ea

    .line 2767
    :pswitch_1e3
    const-string/jumbo v2, "notouch"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2768
    nop

    .line 2776
    :goto_1ea
    iget v2, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    packed-switch v2, :pswitch_data_320

    goto :goto_202

    .line 2784
    :pswitch_1f0
    const-string v2, "keyssoft"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2785
    goto :goto_202

    .line 2781
    :pswitch_1f6
    const-string v2, "keyshidden"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2782
    goto :goto_202

    .line 2778
    :pswitch_1fc
    const-string v2, "keysexposed"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2779
    nop

    .line 2790
    :goto_202
    iget v2, p0, Landroid/content/res/Configuration;->keyboard:I

    packed-switch v2, :pswitch_data_32a

    goto :goto_21c

    .line 2798
    :pswitch_208
    const-string v2, "12key"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2799
    goto :goto_21c

    .line 2795
    :pswitch_20e
    const-string/jumbo v2, "qwerty"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2796
    goto :goto_21c

    .line 2792
    :pswitch_215
    const-string/jumbo v2, "nokeys"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2793
    nop

    .line 2804
    :goto_21c
    iget v2, p0, Landroid/content/res/Configuration;->navigationHidden:I

    packed-switch v2, :pswitch_data_334

    goto :goto_230

    .line 2809
    :pswitch_222
    const-string/jumbo v2, "navhidden"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2810
    goto :goto_230

    .line 2806
    :pswitch_229
    const-string/jumbo v2, "navexposed"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2807
    nop

    .line 2815
    :goto_230
    iget v2, p0, Landroid/content/res/Configuration;->navigation:I

    packed-switch v2, :pswitch_data_33c

    goto :goto_251

    .line 2826
    :pswitch_236
    const-string/jumbo v2, "wheel"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2827
    goto :goto_251

    .line 2823
    :pswitch_23d
    const-string/jumbo v2, "trackball"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2824
    goto :goto_251

    .line 2820
    :pswitch_244
    const-string v2, "dpad"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2821
    goto :goto_251

    .line 2817
    :pswitch_24a
    const-string/jumbo v2, "nonav"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2818
    nop

    .line 2832
    :goto_251
    if-eqz p1, :cond_27d

    .line 2834
    iget v2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-lt v2, v3, :cond_25e

    .line 2835
    iget v2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 2836
    .local v2, "width":I
    iget v3, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .local v3, "height":I
    goto :goto_262

    .line 2839
    .end local v2    # "width":I
    .end local v3    # "height":I
    :cond_25e
    iget v2, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 2841
    .restart local v2    # "width":I
    iget v3, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 2843
    .restart local v3    # "height":I
    :goto_262
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2846
    .end local v2    # "width":I
    .end local v3    # "height":I
    :cond_27d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "v"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2847
    const-string v2, "-"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    nop

    :sswitch_data_29e
    .sparse-switch
        0x40 -> :sswitch_64
        0x80 -> :sswitch_5e
    .end sparse-switch

    :pswitch_data_2a8
    .packed-switch 0x1
        :pswitch_ea
        :pswitch_e3
        :pswitch_dd
        :pswitch_d6
    .end packed-switch

    :sswitch_data_2b4
    .sparse-switch
        0x10 -> :sswitch_ff
        0x20 -> :sswitch_f9
    .end sparse-switch

    :sswitch_data_2be
    .sparse-switch
        0x100 -> :sswitch_115
        0x200 -> :sswitch_10e
    .end sparse-switch

    :pswitch_data_2c8
    .packed-switch 0x1
        :pswitch_12b
        :pswitch_124
    .end packed-switch

    :sswitch_data_2d0
    .sparse-switch
        0x4 -> :sswitch_140
        0x8 -> :sswitch_13a
    .end sparse-switch

    :pswitch_data_2da
    .packed-switch 0x1
        :pswitch_152
        :pswitch_14c
    .end packed-switch

    :sswitch_data_2e2
    .sparse-switch
        0x10 -> :sswitch_175
        0x20 -> :sswitch_16e
    .end sparse-switch

    :sswitch_data_2ec
    .sparse-switch
        0x0 -> :sswitch_1d6
        0x78 -> :sswitch_1d0
        0xa0 -> :sswitch_1c9
        0xd5 -> :sswitch_1c2
        0xf0 -> :sswitch_1bc
        0x140 -> :sswitch_1b5
        0x1e0 -> :sswitch_1ae
        0x280 -> :sswitch_1a7
        0xfffe -> :sswitch_1a1
        0xffff -> :sswitch_19a
    .end sparse-switch

    :pswitch_data_316
    .packed-switch 0x1
        :pswitch_1e3
        :pswitch_1dc
        :pswitch_1dd
    .end packed-switch

    :pswitch_data_320
    .packed-switch 0x1
        :pswitch_1fc
        :pswitch_1f6
        :pswitch_1f0
    .end packed-switch

    :pswitch_data_32a
    .packed-switch 0x1
        :pswitch_215
        :pswitch_20e
        :pswitch_208
    .end packed-switch

    :pswitch_data_334
    .packed-switch 0x1
        :pswitch_229
        :pswitch_222
    .end packed-switch

    :pswitch_data_33c
    .packed-switch 0x1
        :pswitch_24a
        :pswitch_244
        :pswitch_23d
        :pswitch_236
    .end packed-switch
.end method

.method public static greylist-max-o uiModeToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "uiMode"    # I

    .line 1557
    packed-switch p0, :pswitch_data_20

    .line 1575
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1573
    :pswitch_8
    const-string v0, "UI_MODE_TYPE_VR_HEADSET"

    return-object v0

    .line 1571
    :pswitch_b
    const-string v0, "UI_MODE_TYPE_WATCH"

    return-object v0

    .line 1569
    :pswitch_e
    const-string v0, "UI_MODE_TYPE_APPLIANCE"

    return-object v0

    .line 1567
    :pswitch_11
    const-string v0, "UI_MODE_TYPE_TELEVISION"

    return-object v0

    .line 1565
    :pswitch_14
    const-string v0, "UI_MODE_TYPE_CAR"

    return-object v0

    .line 1563
    :pswitch_17
    const-string v0, "UI_MODE_TYPE_DESK"

    return-object v0

    .line 1561
    :pswitch_1a
    const-string v0, "UI_MODE_TYPE_NORMAL"

    return-object v0

    .line 1559
    :pswitch_1d
    const-string v0, "UI_MODE_TYPE_UNDEFINED"

    return-object v0

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public greylist-max-o clearLocales()V
    .registers 2

    .line 2465
    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    .line 2466
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 2467
    return-void
.end method

.method public whitelist compareTo(Landroid/content/res/Configuration;)I
    .registers 13
    .param p1, "that"    # Landroid/content/res/Configuration;

    .line 2264
    iget v0, p0, Landroid/content/res/Configuration;->fontScale:F

    .line 2265
    .local v0, "a":F
    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 2266
    .local v1, "b":F
    cmpg-float v2, v0, v1

    const/4 v3, -0x1

    if-gez v2, :cond_a

    return v3

    .line 2267
    :cond_a
    cmpl-float v2, v0, v1

    const/4 v4, 0x1

    if-lez v2, :cond_10

    return v4

    .line 2268
    :cond_10
    iget v2, p0, Landroid/content/res/Configuration;->mcc:I

    iget v5, p1, Landroid/content/res/Configuration;->mcc:I

    sub-int/2addr v2, v5

    .line 2269
    .local v2, "n":I
    if-eqz v2, :cond_18

    return v2

    .line 2270
    :cond_18
    iget v5, p0, Landroid/content/res/Configuration;->mnc:I

    iget v6, p1, Landroid/content/res/Configuration;->mnc:I

    sub-int/2addr v5, v6

    .line 2271
    .end local v2    # "n":I
    .local v5, "n":I
    if-eqz v5, :cond_20

    return v5

    .line 2273
    :cond_20
    invoke-direct {p0}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    .line 2274
    invoke-direct {p1}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    .line 2277
    iget-object v2, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v2}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_37

    .line 2278
    iget-object v2, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v2}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_bd

    return v4

    .line 2279
    :cond_37
    iget-object v2, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v2}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_40

    .line 2280
    return v3

    .line 2282
    :cond_40
    iget-object v2, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v2}, Landroid/os/LocaleList;->size()I

    move-result v2

    iget-object v6, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v6}, Landroid/os/LocaleList;->size()I

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2283
    .local v2, "minSize":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_51
    if-ge v6, v2, :cond_ac

    .line 2284
    iget-object v7, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v7, v6}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v7

    .line 2285
    .local v7, "thisLocale":Ljava/util/Locale;
    iget-object v8, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v8, v6}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v8

    .line 2287
    .local v8, "thatLocale":Ljava/util/Locale;
    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_ab

    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_6c

    goto :goto_ab

    .line 2288
    :cond_6c
    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    .line 2289
    if-eqz v5, :cond_7b

    return v5

    .line 2290
    :cond_7b
    invoke-virtual {v7}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    .line 2291
    if-eqz v5, :cond_8a

    return v5

    .line 2292
    :cond_8a
    invoke-virtual {v7}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    .line 2293
    if-eqz v5, :cond_99

    return v5

    .line 2294
    :cond_99
    invoke-virtual {v7}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    .line 2295
    if-eqz v5, :cond_a8

    return v5

    .line 2283
    .end local v7    # "thisLocale":Ljava/util/Locale;
    .end local v8    # "thatLocale":Ljava/util/Locale;
    :cond_a8
    add-int/lit8 v6, v6, 0x1

    goto :goto_51

    .line 2287
    .restart local v7    # "thisLocale":Ljava/util/Locale;
    .restart local v8    # "thatLocale":Ljava/util/Locale;
    :cond_ab
    :goto_ab
    return v4

    .line 2297
    .end local v6    # "i":I
    .end local v7    # "thisLocale":Ljava/util/Locale;
    .end local v8    # "thatLocale":Ljava/util/Locale;
    :cond_ac
    iget-object v6, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v6}, Landroid/os/LocaleList;->size()I

    move-result v6

    iget-object v7, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v7}, Landroid/os/LocaleList;->size()I

    move-result v7

    sub-int v5, v6, v7

    .line 2298
    if-eqz v5, :cond_bd

    return v5

    .line 2301
    .end local v2    # "minSize":I
    :cond_bd
    iget v2, p0, Landroid/content/res/Configuration;->touchscreen:I

    iget v6, p1, Landroid/content/res/Configuration;->touchscreen:I

    sub-int/2addr v2, v6

    .line 2302
    .end local v5    # "n":I
    .local v2, "n":I
    if-eqz v2, :cond_c5

    return v2

    .line 2303
    :cond_c5
    iget v5, p0, Landroid/content/res/Configuration;->keyboard:I

    iget v6, p1, Landroid/content/res/Configuration;->keyboard:I

    sub-int/2addr v5, v6

    .line 2304
    .end local v2    # "n":I
    .restart local v5    # "n":I
    if-eqz v5, :cond_cd

    return v5

    .line 2305
    :cond_cd
    iget v2, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v6, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    sub-int/2addr v2, v6

    .line 2306
    .end local v5    # "n":I
    .restart local v2    # "n":I
    if-eqz v2, :cond_d5

    return v2

    .line 2307
    :cond_d5
    iget v5, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v6, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    sub-int/2addr v5, v6

    .line 2308
    .end local v2    # "n":I
    .restart local v5    # "n":I
    if-eqz v5, :cond_dd

    return v5

    .line 2309
    :cond_dd
    iget v2, p0, Landroid/content/res/Configuration;->navigation:I

    iget v6, p1, Landroid/content/res/Configuration;->navigation:I

    sub-int/2addr v2, v6

    .line 2310
    .end local v5    # "n":I
    .restart local v2    # "n":I
    if-eqz v2, :cond_e5

    return v2

    .line 2311
    :cond_e5
    iget v5, p0, Landroid/content/res/Configuration;->navigationHidden:I

    iget v6, p1, Landroid/content/res/Configuration;->navigationHidden:I

    sub-int/2addr v5, v6

    .line 2312
    .end local v2    # "n":I
    .restart local v5    # "n":I
    if-eqz v5, :cond_ed

    return v5

    .line 2313
    :cond_ed
    iget v2, p0, Landroid/content/res/Configuration;->orientation:I

    iget v6, p1, Landroid/content/res/Configuration;->orientation:I

    sub-int/2addr v2, v6

    .line 2314
    .end local v5    # "n":I
    .restart local v2    # "n":I
    if-eqz v2, :cond_f5

    return v2

    .line 2315
    :cond_f5
    iget v5, p0, Landroid/content/res/Configuration;->colorMode:I

    iget v6, p1, Landroid/content/res/Configuration;->colorMode:I

    sub-int/2addr v5, v6

    .line 2316
    .end local v2    # "n":I
    .restart local v5    # "n":I
    if-eqz v5, :cond_fd

    return v5

    .line 2317
    :cond_fd
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    iget v6, p1, Landroid/content/res/Configuration;->screenLayout:I

    sub-int/2addr v2, v6

    .line 2318
    .end local v5    # "n":I
    .restart local v2    # "n":I
    if-eqz v2, :cond_105

    return v2

    .line 2319
    :cond_105
    iget v5, p0, Landroid/content/res/Configuration;->uiMode:I

    iget v6, p1, Landroid/content/res/Configuration;->uiMode:I

    sub-int/2addr v5, v6

    .line 2320
    .end local v2    # "n":I
    .restart local v5    # "n":I
    if-eqz v5, :cond_10d

    return v5

    .line 2321
    :cond_10d
    iget v2, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v6, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    sub-int/2addr v2, v6

    .line 2322
    .end local v5    # "n":I
    .restart local v2    # "n":I
    if-eqz v2, :cond_115

    return v2

    .line 2323
    :cond_115
    iget v5, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v6, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    sub-int/2addr v5, v6

    .line 2324
    .end local v2    # "n":I
    .restart local v5    # "n":I
    if-eqz v5, :cond_11d

    return v5

    .line 2325
    :cond_11d
    iget v2, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v6, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    sub-int/2addr v2, v6

    .line 2326
    .end local v5    # "n":I
    .restart local v2    # "n":I
    if-eqz v2, :cond_125

    return v2

    .line 2327
    :cond_125
    iget v5, p0, Landroid/content/res/Configuration;->densityDpi:I

    iget v6, p1, Landroid/content/res/Configuration;->densityDpi:I

    sub-int/2addr v5, v6

    .line 2328
    .end local v2    # "n":I
    .restart local v5    # "n":I
    if-eqz v5, :cond_12d

    return v5

    .line 2329
    :cond_12d
    iget v2, p0, Landroid/content/res/Configuration;->assetsSeq:I

    iget v6, p1, Landroid/content/res/Configuration;->assetsSeq:I

    sub-int/2addr v2, v6

    .line 2330
    .end local v5    # "n":I
    .restart local v2    # "n":I
    if-eqz v2, :cond_135

    return v2

    .line 2331
    :cond_135
    iget-object v5, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v6, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v5, v6}, Landroid/app/WindowConfiguration;->compareTo(Landroid/app/WindowConfiguration;)I

    move-result v2

    .line 2332
    if-eqz v2, :cond_140

    return v2

    .line 2333
    :cond_140
    iget v5, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    iget v6, p1, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    sub-int/2addr v5, v6

    .line 2334
    .end local v2    # "n":I
    .restart local v5    # "n":I
    if-eqz v5, :cond_148

    return v5

    .line 2336
    :cond_148
    iget v2, p0, Landroid/content/res/Configuration;->xiaomiKeyboard:I

    iget v6, p1, Landroid/content/res/Configuration;->xiaomiKeyboard:I

    sub-int/2addr v2, v6

    .line 2337
    .end local v5    # "n":I
    .restart local v2    # "n":I
    if-eqz v2, :cond_150

    return v2

    .line 2341
    :cond_150
    iget-object v5, p0, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/IMiuiConfiguration;

    if-eqz v5, :cond_15c

    iget-object v6, p1, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/IMiuiConfiguration;

    if-eqz v6, :cond_15c

    .line 2342
    invoke-interface {v5, v6}, Landroid/content/res/IMiuiConfiguration;->compareTo(Ljava/lang/Object;)I

    move-result v2

    .line 2350
    :cond_15c
    iget-object v5, p0, Landroid/content/res/Configuration;->mImeAppBounds:Landroid/graphics/Rect;

    if-nez v5, :cond_165

    iget-object v6, p1, Landroid/content/res/Configuration;->mImeAppBounds:Landroid/graphics/Rect;

    if-eqz v6, :cond_165

    .line 2351
    return v4

    .line 2352
    :cond_165
    if-eqz v5, :cond_16c

    iget-object v4, p1, Landroid/content/res/Configuration;->mImeAppBounds:Landroid/graphics/Rect;

    if-nez v4, :cond_16c

    .line 2353
    return v3

    .line 2354
    :cond_16c
    if-eqz v5, :cond_1a0

    iget-object v3, p1, Landroid/content/res/Configuration;->mImeAppBounds:Landroid/graphics/Rect;

    if-eqz v3, :cond_1a0

    .line 2355
    iget v3, v5, Landroid/graphics/Rect;->left:I

    iget-object v4, p1, Landroid/content/res/Configuration;->mImeAppBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    .line 2356
    .end local v2    # "n":I
    .local v3, "n":I
    if-eqz v3, :cond_17c

    return v3

    .line 2357
    :cond_17c
    iget-object v2, p0, Landroid/content/res/Configuration;->mImeAppBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v4, p1, Landroid/content/res/Configuration;->mImeAppBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v4

    .line 2358
    .end local v3    # "n":I
    .restart local v2    # "n":I
    if-eqz v2, :cond_188

    return v2

    .line 2359
    :cond_188
    iget-object v3, p0, Landroid/content/res/Configuration;->mImeAppBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p1, Landroid/content/res/Configuration;->mImeAppBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    .line 2360
    .end local v2    # "n":I
    .restart local v3    # "n":I
    if-eqz v3, :cond_194

    return v3

    .line 2361
    :cond_194
    iget-object v2, p0, Landroid/content/res/Configuration;->mImeAppBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p1, Landroid/content/res/Configuration;->mImeAppBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v4

    .line 2362
    .end local v3    # "n":I
    .restart local v2    # "n":I
    if-eqz v2, :cond_1a0

    return v2

    .line 2366
    :cond_1a0
    return v2
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 100
    check-cast p1, Landroid/content/res/Configuration;

    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->compareTo(Landroid/content/res/Configuration;)I

    move-result p1

    return p1
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 2138
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist diff(Landroid/content/res/Configuration;)I
    .registers 3
    .param p1, "delta"    # Landroid/content/res/Configuration;

    .line 1933
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;ZZ)I

    move-result v0

    return v0
.end method

.method public greylist-max-o diff(Landroid/content/res/Configuration;ZZ)I
    .registers 11
    .param p1, "delta"    # Landroid/content/res/Configuration;
    .param p2, "compareUndefined"    # Z
    .param p3, "publicOnly"    # Z

    .line 1954
    const/4 v0, 0x0

    .line 1955
    .local v0, "changed":I
    if-nez p2, :cond_a

    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_15

    :cond_a
    iget v1, p0, Landroid/content/res/Configuration;->fontScale:F

    iget v2, p1, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_15

    .line 1956
    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v0, v1

    .line 1958
    :cond_15
    if-nez p2, :cond_1b

    iget v1, p1, Landroid/content/res/Configuration;->mcc:I

    if-eqz v1, :cond_23

    :cond_1b
    iget v1, p0, Landroid/content/res/Configuration;->mcc:I

    iget v2, p1, Landroid/content/res/Configuration;->mcc:I

    if-eq v1, v2, :cond_23

    .line 1959
    or-int/lit8 v0, v0, 0x1

    .line 1961
    :cond_23
    if-nez p2, :cond_29

    iget v1, p1, Landroid/content/res/Configuration;->mnc:I

    if-eqz v1, :cond_31

    :cond_29
    iget v1, p0, Landroid/content/res/Configuration;->mnc:I

    iget v2, p1, Landroid/content/res/Configuration;->mnc:I

    if-eq v1, v2, :cond_31

    .line 1962
    or-int/lit8 v0, v0, 0x2

    .line 1964
    :cond_31
    invoke-direct {p0}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    .line 1965
    invoke-direct {p1}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    .line 1966
    if-nez p2, :cond_41

    iget-object v1, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v1}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4f

    :cond_41
    iget-object v1, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    iget-object v2, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    .line 1967
    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4f

    .line 1968
    or-int/lit8 v0, v0, 0x4

    .line 1969
    or-int/lit16 v0, v0, 0x2000

    .line 1971
    :cond_4f
    iget v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v2, v1, 0xc0

    .line 1972
    .local v2, "deltaScreenLayoutDir":I
    if-nez p2, :cond_57

    if-eqz v2, :cond_5f

    :cond_57
    iget v3, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v3, v3, 0xc0

    if-eq v2, v3, :cond_5f

    .line 1974
    or-int/lit16 v0, v0, 0x2000

    .line 1976
    :cond_5f
    if-nez p2, :cond_65

    iget v3, p1, Landroid/content/res/Configuration;->touchscreen:I

    if-eqz v3, :cond_6d

    :cond_65
    iget v3, p0, Landroid/content/res/Configuration;->touchscreen:I

    iget v4, p1, Landroid/content/res/Configuration;->touchscreen:I

    if-eq v3, v4, :cond_6d

    .line 1978
    or-int/lit8 v0, v0, 0x8

    .line 1980
    :cond_6d
    if-nez p2, :cond_73

    iget v3, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eqz v3, :cond_7b

    :cond_73
    iget v3, p0, Landroid/content/res/Configuration;->keyboard:I

    iget v4, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v3, v4, :cond_7b

    .line 1982
    or-int/lit8 v0, v0, 0x10

    .line 1984
    :cond_7b
    if-nez p2, :cond_81

    iget v3, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eqz v3, :cond_89

    :cond_81
    iget v3, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v4, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eq v3, v4, :cond_89

    .line 1986
    or-int/lit8 v0, v0, 0x20

    .line 1988
    :cond_89
    if-nez p2, :cond_8f

    iget v3, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eqz v3, :cond_97

    :cond_8f
    iget v3, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v4, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eq v3, v4, :cond_97

    .line 1990
    or-int/lit8 v0, v0, 0x20

    .line 1992
    :cond_97
    if-nez p2, :cond_9d

    iget v3, p1, Landroid/content/res/Configuration;->navigation:I

    if-eqz v3, :cond_a5

    :cond_9d
    iget v3, p0, Landroid/content/res/Configuration;->navigation:I

    iget v4, p1, Landroid/content/res/Configuration;->navigation:I

    if-eq v3, v4, :cond_a5

    .line 1994
    or-int/lit8 v0, v0, 0x40

    .line 1996
    :cond_a5
    if-nez p2, :cond_ab

    iget v3, p1, Landroid/content/res/Configuration;->navigationHidden:I

    if-eqz v3, :cond_b3

    :cond_ab
    iget v3, p0, Landroid/content/res/Configuration;->navigationHidden:I

    iget v4, p1, Landroid/content/res/Configuration;->navigationHidden:I

    if-eq v3, v4, :cond_b3

    .line 1998
    or-int/lit8 v0, v0, 0x20

    .line 2000
    :cond_b3
    if-nez p2, :cond_b9

    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    if-eqz v3, :cond_c1

    :cond_b9
    iget v3, p0, Landroid/content/res/Configuration;->orientation:I

    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v3, v4, :cond_c1

    .line 2002
    or-int/lit16 v0, v0, 0x80

    .line 2004
    :cond_c1
    if-nez p2, :cond_c9

    invoke-static {v1}, Landroid/content/res/Configuration;->getScreenLayoutNoDirection(I)I

    move-result v1

    if-eqz v1, :cond_d9

    :cond_c9
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 2006
    invoke-static {v1}, Landroid/content/res/Configuration;->getScreenLayoutNoDirection(I)I

    move-result v1

    iget v3, p1, Landroid/content/res/Configuration;->screenLayout:I

    .line 2007
    invoke-static {v3}, Landroid/content/res/Configuration;->getScreenLayoutNoDirection(I)I

    move-result v3

    if-eq v1, v3, :cond_d9

    .line 2008
    or-int/lit16 v0, v0, 0x100

    .line 2010
    :cond_d9
    if-nez p2, :cond_e1

    iget v1, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v1, v1, 0xc

    if-eqz v1, :cond_ed

    :cond_e1
    iget v1, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v1, v1, 0xc

    iget v3, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v3, v3, 0xc

    if-eq v1, v3, :cond_ed

    .line 2014
    or-int/lit16 v0, v0, 0x4000

    .line 2016
    :cond_ed
    if-nez p2, :cond_f5

    iget v1, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v1, v1, 0x3

    if-eqz v1, :cond_101

    :cond_f5
    iget v1, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v1, v1, 0x3

    iget v3, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v3, v3, 0x3

    if-eq v1, v3, :cond_101

    .line 2021
    or-int/lit16 v0, v0, 0x4000

    .line 2023
    :cond_101
    if-nez p2, :cond_107

    iget v1, p1, Landroid/content/res/Configuration;->uiMode:I

    if-eqz v1, :cond_10f

    :cond_107
    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    iget v3, p1, Landroid/content/res/Configuration;->uiMode:I

    if-eq v1, v3, :cond_10f

    .line 2025
    or-int/lit16 v0, v0, 0x200

    .line 2027
    :cond_10f
    if-nez p2, :cond_115

    iget v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v1, :cond_11d

    :cond_115
    iget v1, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v3, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eq v1, v3, :cond_11d

    .line 2029
    or-int/lit16 v0, v0, 0x400

    .line 2031
    :cond_11d
    if-nez p2, :cond_123

    iget v1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eqz v1, :cond_12b

    :cond_123
    iget v1, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v3, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v1, v3, :cond_12b

    .line 2033
    or-int/lit16 v0, v0, 0x400

    .line 2035
    :cond_12b
    if-nez p2, :cond_131

    iget v1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eqz v1, :cond_139

    :cond_131
    iget v1, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v3, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eq v1, v3, :cond_139

    .line 2037
    or-int/lit16 v0, v0, 0x800

    .line 2039
    :cond_139
    if-nez p2, :cond_13f

    iget v1, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-eqz v1, :cond_147

    :cond_13f
    iget v1, p0, Landroid/content/res/Configuration;->densityDpi:I

    iget v3, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v1, v3, :cond_147

    .line 2041
    or-int/lit16 v0, v0, 0x1000

    .line 2043
    :cond_147
    if-nez p2, :cond_14d

    iget v1, p1, Landroid/content/res/Configuration;->assetsSeq:I

    if-eqz v1, :cond_156

    :cond_14d
    iget v1, p0, Landroid/content/res/Configuration;->assetsSeq:I

    iget v3, p1, Landroid/content/res/Configuration;->assetsSeq:I

    if-eq v1, v3, :cond_156

    .line 2045
    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    .line 2049
    :cond_156
    if-nez p3, :cond_169

    iget-object v1, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v3, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 2050
    invoke-virtual {v1, v3, p2}, Landroid/app/WindowConfiguration;->diff(Landroid/app/WindowConfiguration;Z)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_169

    .line 2051
    const/high16 v1, 0x20000000

    or-int/2addr v0, v1

    .line 2054
    :cond_169
    if-nez p2, :cond_172

    iget v1, p1, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    const v3, 0x7fffffff

    if-eq v1, v3, :cond_17b

    :cond_172
    iget v1, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    iget v3, p1, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    if-eq v1, v3, :cond_17b

    .line 2056
    const/high16 v1, 0x10000000

    or-int/2addr v0, v1

    .line 2060
    :cond_17b
    iget-object v1, p0, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/IMiuiConfiguration;

    if-eqz v1, :cond_188

    iget-object v3, p1, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/IMiuiConfiguration;

    if-eqz v3, :cond_188

    .line 2061
    invoke-interface {v1, v3}, Landroid/content/res/IMiuiConfiguration;->diff(Landroid/content/res/IMiuiConfiguration;)I

    move-result v1

    or-int/2addr v0, v1

    .line 2063
    :cond_188
    if-nez p2, :cond_198

    iget-object v1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v1

    iget-object v3, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v3

    if-eq v1, v3, :cond_19a

    .line 2064
    :cond_198
    or-int/lit16 v0, v0, 0x400

    .line 2070
    :cond_19a
    if-nez p2, :cond_1a0

    iget-object v1, p1, Landroid/content/res/Configuration;->mImeAppBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_1b1

    :cond_1a0
    iget-object v1, p0, Landroid/content/res/Configuration;->mImeAppBounds:Landroid/graphics/Rect;

    iget-object v3, p1, Landroid/content/res/Configuration;->mImeAppBounds:Landroid/graphics/Rect;

    if-eq v1, v3, :cond_1b1

    if-eqz v1, :cond_1ae

    .line 2072
    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b1

    .line 2073
    :cond_1ae
    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    .line 2076
    :cond_1b1
    return v0
.end method

.method public greylist-max-o diffPublicOnly(Landroid/content/res/Configuration;)I
    .registers 4
    .param p1, "delta"    # Landroid/content/res/Configuration;

    .line 1945
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;ZZ)I

    move-result v0

    return v0
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 10
    .param p1, "protoOutputStream"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 1360
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/res/Configuration;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JZZ)V

    .line 1361
    return-void
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;JZ)V
    .registers 11
    .param p1, "protoOutputStream"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "critical"    # Z

    .line 1373
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/res/Configuration;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JZZ)V

    .line 1374
    return-void
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;JZZ)V
    .registers 11
    .param p1, "protoOutputStream"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "persisted"    # Z
    .param p5, "critical"    # Z

    .line 1320
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 1321
    .local v0, "token":J
    if-nez p5, :cond_ba

    .line 1322
    const-wide v2, 0x10200000001L

    iget v4, p0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 1323
    const-wide v2, 0x10d00000002L

    iget v4, p0, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1324
    const-wide v2, 0x10d00000003L

    iget v4, p0, Landroid/content/res/Configuration;->mnc:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1325
    iget-object v2, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    if-eqz v2, :cond_34

    .line 1326
    const-wide v3, 0x10900000014L

    invoke-virtual {v2}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1328
    :cond_34
    const-wide v2, 0x10d00000005L

    iget v4, p0, Landroid/content/res/Configuration;->screenLayout:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1329
    const-wide v2, 0x10d00000006L

    iget v4, p0, Landroid/content/res/Configuration;->colorMode:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1330
    const-wide v2, 0x10d00000007L

    iget v4, p0, Landroid/content/res/Configuration;->touchscreen:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1331
    const-wide v2, 0x10d00000008L

    iget v4, p0, Landroid/content/res/Configuration;->keyboard:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1332
    const-wide v2, 0x10d00000009L

    iget v4, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1333
    const-wide v2, 0x10d0000000aL

    iget v4, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1334
    const-wide v2, 0x10d0000000bL

    iget v4, p0, Landroid/content/res/Configuration;->navigation:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1335
    const-wide v2, 0x10d0000000cL

    iget v4, p0, Landroid/content/res/Configuration;->navigationHidden:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1336
    const-wide v2, 0x10d0000000eL

    iget v4, p0, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1337
    const-wide v2, 0x10d00000011L

    iget v4, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1338
    const-wide v2, 0x10d00000012L

    iget v4, p0, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1340
    if-nez p4, :cond_b0

    iget-object v2, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    if-eqz v2, :cond_b0

    .line 1341
    const-wide v3, 0x10b00000013L

    invoke-virtual {v2, p1, v3, v4}, Landroid/app/WindowConfiguration;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1343
    :cond_b0
    const-wide v2, 0x10d00000015L

    iget v4, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1345
    :cond_ba
    const-wide v2, 0x10d0000000dL

    iget v4, p0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1346
    const-wide v2, 0x10d0000000fL

    iget v4, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1347
    const-wide v2, 0x10d00000010L

    iget v4, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1348
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1349
    return-void
.end method

.method public whitelist equals(Landroid/content/res/Configuration;)Z
    .registers 5
    .param p1, "that"    # Landroid/content/res/Configuration;

    .line 2370
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 2371
    :cond_4
    const/4 v1, 0x1

    if-ne p1, p0, :cond_8

    return v1

    .line 2372
    :cond_8
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->compareTo(Landroid/content/res/Configuration;)I

    move-result v2

    if-nez v2, :cond_f

    move v0, v1

    :cond_f
    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "that"    # Ljava/lang/Object;

    .line 2377
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/content/res/Configuration;

    invoke-virtual {p0, v0}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v0
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_7} :catch_8

    return v0

    .line 2378
    :catch_8
    move-exception v0

    .line 2380
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getExtraConfig()Landroid/content/res/IMiuiConfiguration;
    .registers 2

    .line 114
    iget-object v0, p0, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/IMiuiConfiguration;

    return-object v0
.end method

.method public whitelist getLayoutDirection()I
    .registers 3

    .line 2477
    iget v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v0, v0, 0xc0

    const/16 v1, 0x80

    if-ne v0, v1, :cond_a

    .line 2478
    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    .line 2477
    :goto_b
    return v0
.end method

.method public whitelist getLocales()Landroid/os/LocaleList;
    .registers 2

    .line 2422
    invoke-direct {p0}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    .line 2423
    iget-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    return-object v0
.end method

.method public whitelist getmImeAppBounds()Landroid/graphics/Rect;
    .registers 2

    .line 3111
    iget-object v0, p0, Landroid/content/res/Configuration;->mImeAppBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 2384
    const/16 v0, 0x11

    .line 2385
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v1, v2

    .line 2386
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->mcc:I

    add-int/2addr v0, v2

    .line 2387
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->mnc:I

    add-int/2addr v1, v2

    .line 2388
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v2}, Landroid/os/LocaleList;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 2389
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->touchscreen:I

    add-int/2addr v1, v2

    .line 2390
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->keyboard:I

    add-int/2addr v0, v2

    .line 2391
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    add-int/2addr v1, v2

    .line 2392
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    add-int/2addr v0, v2

    .line 2393
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->navigation:I

    add-int/2addr v1, v2

    .line 2394
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->navigationHidden:I

    add-int/2addr v0, v2

    .line 2395
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->orientation:I

    add-int/2addr v1, v2

    .line 2396
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    add-int/2addr v0, v2

    .line 2397
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->colorMode:I

    add-int/2addr v1, v2

    .line 2398
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    add-int/2addr v0, v2

    .line 2399
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    add-int/2addr v1, v2

    .line 2400
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    add-int/2addr v0, v2

    .line 2401
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    add-int/2addr v1, v2

    .line 2402
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->densityDpi:I

    add-int/2addr v0, v2

    .line 2403
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->assetsSeq:I

    add-int/2addr v1, v2

    .line 2404
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    add-int/2addr v0, v2

    .line 2407
    .end local v1    # "result":I
    .restart local v0    # "result":I
    iget-object v1, p0, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/IMiuiConfiguration;

    if-eqz v1, :cond_7a

    .line 2408
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int v0, v2, v1

    .line 2411
    :cond_7a
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->xiaomiKeyboard:I

    add-int/2addr v1, v2

    .line 2412
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public whitelist isImeMultiWindowMode()Z
    .registers 3

    .line 3119
    iget-object v0, p0, Landroid/content/res/Configuration;->mImeAppBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_1a

    .line 3122
    :cond_b
    iget-object v0, p0, Landroid/content/res/Configuration;->mImeAppBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 3120
    :cond_1a
    :goto_1a
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isLayoutSizeAtLeast(I)Z
    .registers 4
    .param p1, "size"    # I

    .line 551
    iget v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    .line 552
    .local v0, "cur":I
    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 553
    :cond_8
    if-lt v0, p1, :cond_b

    const/4 v1, 0x1

    :cond_b
    return v1
.end method

.method public whitelist isNightModeActive()Z
    .registers 3

    .line 2259
    iget v0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x20

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public greylist-max-o isOtherSeqNewer(Landroid/content/res/Configuration;)Z
    .registers 6
    .param p1, "other"    # Landroid/content/res/Configuration;

    .line 2111
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 2113
    return v0

    .line 2115
    :cond_4
    iget v1, p1, Landroid/content/res/Configuration;->seq:I

    const/4 v2, 0x1

    if-nez v1, :cond_a

    .line 2118
    return v2

    .line 2120
    :cond_a
    iget v3, p0, Landroid/content/res/Configuration;->seq:I

    if-nez v3, :cond_f

    .line 2123
    return v2

    .line 2125
    :cond_f
    sub-int/2addr v1, v3

    .line 2126
    .local v1, "diff":I
    const/high16 v3, 0x10000

    if-le v1, v3, :cond_15

    .line 2129
    return v0

    .line 2131
    :cond_15
    if-lez v1, :cond_18

    move v0, v2

    :cond_18
    return v0
.end method

.method public whitelist isScreenHdr()Z
    .registers 3

    .line 2534
    iget v0, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v0, v0, 0xc

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public whitelist isScreenRound()Z
    .registers 3

    .line 2510
    iget v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v0, v0, 0x300

    const/16 v1, 0x200

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public whitelist isScreenWideColorGamut()Z
    .registers 3

    .line 2525
    iget v0, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public greylist makeDefault()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1627
    invoke-virtual {p0}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 1628
    return-void
.end method

.method public whitelist readFromParcel(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "source"    # Landroid/os/Parcel;

    .line 2190
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->fontScale:F

    .line 2191
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->mcc:I

    .line 2192
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->mnc:I

    .line 2194
    sget-object v0, Landroid/os/LocaleList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/LocaleList;

    iput-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    .line 2195
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 2197
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2b

    move v1, v2

    :cond_2b
    iput-boolean v1, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 2198
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->touchscreen:I

    .line 2199
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->keyboard:I

    .line 2200
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 2201
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 2202
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->navigation:I

    .line 2203
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->navigationHidden:I

    .line 2204
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->orientation:I

    .line 2205
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 2206
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->colorMode:I

    .line 2207
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 2208
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 2209
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 2210
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 2211
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    .line 2212
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    .line 2213
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    .line 2214
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    .line 2215
    iget-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, p1}, Landroid/app/WindowConfiguration;->readFromParcel(Landroid/os/Parcel;)V

    .line 2216
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->assetsSeq:I

    .line 2217
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->seq:I

    .line 2218
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    .line 2221
    iget-object v0, p0, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/IMiuiConfiguration;

    if-eqz v0, :cond_b1

    .line 2222
    invoke-interface {v0, p1}, Landroid/content/res/IMiuiConfiguration;->readFromParcel(Landroid/os/Parcel;)V

    .line 2225
    :cond_b1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->xiaomiKeyboard:I

    .line 2229
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/content/res/Configuration;->mImeAppBounds:Landroid/graphics/Rect;

    .line 2231
    return-void
.end method

.method public blacklist readFromProto(Landroid/util/proto/ProtoInputStream;J)V
    .registers 30
    .param p1, "protoInputStream"    # Landroid/util/proto/ProtoInputStream;
    .param p2, "fieldId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1385
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, ") found when trying to add: "

    const-string v4, ";script-"

    const-string v5, "Repeated locale ("

    const-string v6, ";variant-"

    const-string v7, ";country-"

    const-string/jumbo v8, "readFromProto error building locale with: language-"

    const-string v9, ""

    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v10

    .line 1386
    .local v10, "token":J
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v0

    .line 1388
    .local v12, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    :goto_1d
    :try_start_1d
    invoke-virtual/range {p1 .. p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v0
    :try_end_21
    .catchall {:try_start_1d .. :try_end_21} :catchall_42f

    const/4 v13, -0x1

    if-eq v0, v13, :cond_40c

    .line 1389
    :try_start_24
    invoke-virtual/range {p1 .. p1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v0
    :try_end_28
    .catchall {:try_start_24 .. :try_end_28} :catchall_409

    const-string v14, "Configuration"

    packed-switch v0, :pswitch_data_450

    move-object/from16 v19, v9

    move-wide/from16 v20, v10

    .end local v10    # "token":J
    .local v20, "token":J
    goto/16 :goto_403

    .line 1508
    .end local v20    # "token":J
    .restart local v10    # "token":J
    :pswitch_33
    const-wide v13, 0x10d00000015L

    :try_start_38
    invoke-virtual {v2, v13, v14}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->fontWeightAdjustment:I
    :try_end_3e
    .catchall {:try_start_38 .. :try_end_3e} :catchall_44

    move-object/from16 v19, v9

    move-wide/from16 v20, v10

    goto/16 :goto_403

    .line 1514
    :catchall_44
    move-exception v0

    move-wide v3, v10

    goto/16 :goto_431

    .line 1501
    :pswitch_48
    move-wide v15, v10

    .end local v10    # "token":J
    .local v15, "token":J
    const-wide v10, 0x10900000014L

    :try_start_4e
    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_59} :catch_5f
    .catchall {:try_start_4e .. :try_end_59} :catchall_178

    .line 1505
    move-object/from16 v19, v9

    move-wide/from16 v20, v15

    goto/16 :goto_403

    .line 1503
    :catch_5f
    move-exception v0

    .line 1504
    .local v0, "e":Ljava/lang/Exception;
    :try_start_60
    const-string v10, "error parsing locale list in configuration."

    invoke-static {v14, v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1506
    move-object/from16 v19, v9

    move-wide/from16 v20, v15

    .end local v0    # "e":Ljava/lang/Exception;
    goto/16 :goto_403

    .line 1497
    .end local v15    # "token":J
    .restart local v10    # "token":J
    :pswitch_6b
    move-wide v15, v10

    .end local v10    # "token":J
    .restart local v15    # "token":J
    iget-object v0, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    const-wide v10, 0x10b00000013L

    invoke-virtual {v0, v2, v10, v11}, Landroid/app/WindowConfiguration;->readFromProto(Landroid/util/proto/ProtoInputStream;J)V

    .line 1498
    move-object/from16 v19, v9

    move-wide/from16 v20, v15

    goto/16 :goto_403

    .line 1494
    .end local v15    # "token":J
    .restart local v10    # "token":J
    :pswitch_7c
    move-wide v15, v10

    .end local v10    # "token":J
    .restart local v15    # "token":J
    const-wide v10, 0x10d00000012L

    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->densityDpi:I

    .line 1495
    move-object/from16 v19, v9

    move-wide/from16 v20, v15

    goto/16 :goto_403

    .line 1491
    .end local v15    # "token":J
    .restart local v10    # "token":J
    :pswitch_8e
    move-wide v15, v10

    .end local v10    # "token":J
    .restart local v15    # "token":J
    const-wide v10, 0x10d00000011L

    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 1492
    move-object/from16 v19, v9

    move-wide/from16 v20, v15

    goto/16 :goto_403

    .line 1488
    .end local v15    # "token":J
    .restart local v10    # "token":J
    :pswitch_a0
    move-wide v15, v10

    .end local v10    # "token":J
    .restart local v15    # "token":J
    const-wide v10, 0x10d00000010L

    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 1489
    move-object/from16 v19, v9

    move-wide/from16 v20, v15

    goto/16 :goto_403

    .line 1485
    .end local v15    # "token":J
    .restart local v10    # "token":J
    :pswitch_b2
    move-wide v15, v10

    .end local v10    # "token":J
    .restart local v15    # "token":J
    const-wide v10, 0x10d0000000fL

    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 1486
    move-object/from16 v19, v9

    move-wide/from16 v20, v15

    goto/16 :goto_403

    .line 1482
    .end local v15    # "token":J
    .restart local v10    # "token":J
    :pswitch_c4
    move-wide v15, v10

    .end local v10    # "token":J
    .restart local v15    # "token":J
    const-wide v10, 0x10d0000000eL

    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->uiMode:I

    .line 1483
    move-object/from16 v19, v9

    move-wide/from16 v20, v15

    goto/16 :goto_403

    .line 1479
    .end local v15    # "token":J
    .restart local v10    # "token":J
    :pswitch_d6
    move-wide v15, v10

    .end local v10    # "token":J
    .restart local v15    # "token":J
    const-wide v10, 0x10d0000000dL

    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 1480
    move-object/from16 v19, v9

    move-wide/from16 v20, v15

    goto/16 :goto_403

    .line 1476
    .end local v15    # "token":J
    .restart local v10    # "token":J
    :pswitch_e8
    move-wide v15, v10

    .end local v10    # "token":J
    .restart local v15    # "token":J
    const-wide v10, 0x10d0000000cL

    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->navigationHidden:I

    .line 1477
    move-object/from16 v19, v9

    move-wide/from16 v20, v15

    goto/16 :goto_403

    .line 1473
    .end local v15    # "token":J
    .restart local v10    # "token":J
    :pswitch_fa
    move-wide v15, v10

    .end local v10    # "token":J
    .restart local v15    # "token":J
    const-wide v10, 0x10d0000000bL

    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->navigation:I

    .line 1474
    move-object/from16 v19, v9

    move-wide/from16 v20, v15

    goto/16 :goto_403

    .line 1470
    .end local v15    # "token":J
    .restart local v10    # "token":J
    :pswitch_10c
    move-wide v15, v10

    .end local v10    # "token":J
    .restart local v15    # "token":J
    const-wide v10, 0x10d0000000aL

    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 1471
    move-object/from16 v19, v9

    move-wide/from16 v20, v15

    goto/16 :goto_403

    .line 1467
    .end local v15    # "token":J
    .restart local v10    # "token":J
    :pswitch_11e
    move-wide v15, v10

    .end local v10    # "token":J
    .restart local v15    # "token":J
    const-wide v10, 0x10d00000009L

    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 1468
    move-object/from16 v19, v9

    move-wide/from16 v20, v15

    goto/16 :goto_403

    .line 1464
    .end local v15    # "token":J
    .restart local v10    # "token":J
    :pswitch_130
    move-wide v15, v10

    .end local v10    # "token":J
    .restart local v15    # "token":J
    const-wide v10, 0x10d00000008L

    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->keyboard:I

    .line 1465
    move-object/from16 v19, v9

    move-wide/from16 v20, v15

    goto/16 :goto_403

    .line 1461
    .end local v15    # "token":J
    .restart local v10    # "token":J
    :pswitch_142
    move-wide v15, v10

    .end local v10    # "token":J
    .restart local v15    # "token":J
    const-wide v10, 0x10d00000007L

    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->touchscreen:I

    .line 1462
    move-object/from16 v19, v9

    move-wide/from16 v20, v15

    goto/16 :goto_403

    .line 1458
    .end local v15    # "token":J
    .restart local v10    # "token":J
    :pswitch_154
    move-wide v15, v10

    .end local v10    # "token":J
    .restart local v15    # "token":J
    const-wide v10, 0x10d00000006L

    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->colorMode:I

    .line 1459
    move-object/from16 v19, v9

    move-wide/from16 v20, v15

    goto/16 :goto_403

    .line 1455
    .end local v15    # "token":J
    .restart local v10    # "token":J
    :pswitch_166
    move-wide v15, v10

    .end local v10    # "token":J
    .restart local v15    # "token":J
    const-wide v10, 0x10d00000005L

    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->screenLayout:I
    :try_end_172
    .catchall {:try_start_60 .. :try_end_172} :catchall_178

    .line 1456
    move-object/from16 v19, v9

    move-wide/from16 v20, v15

    goto/16 :goto_403

    .line 1514
    :catchall_178
    move-exception v0

    move-wide v3, v15

    goto/16 :goto_431

    .line 1402
    .end local v15    # "token":J
    .restart local v10    # "token":J
    :pswitch_17c
    move-wide v15, v10

    .end local v10    # "token":J
    .restart local v15    # "token":J
    const-wide v10, 0x20b00000004L

    :try_start_182
    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v10
    :try_end_186
    .catchall {:try_start_182 .. :try_end_186} :catchall_3be

    .line 1403
    .local v10, "localeToken":J
    move-object v0, v9

    .line 1404
    .local v0, "language":Ljava/lang/String;
    move-object/from16 v17, v9

    .line 1405
    .local v17, "country":Ljava/lang/String;
    move-object/from16 v18, v9

    .line 1406
    .local v18, "variant":Ljava/lang/String;
    move-object/from16 v19, v9

    move-object/from16 v20, v0

    move-object/from16 v21, v17

    move-object/from16 v22, v18

    move-object/from16 v23, v19

    .line 1408
    .end local v0    # "language":Ljava/lang/String;
    .end local v17    # "country":Ljava/lang/String;
    .end local v18    # "variant":Ljava/lang/String;
    .local v20, "language":Ljava/lang/String;
    .local v21, "country":Ljava/lang/String;
    .local v22, "variant":Ljava/lang/String;
    .local v23, "script":Ljava/lang/String;
    :goto_195
    :try_start_195
    invoke-virtual/range {p1 .. p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v0
    :try_end_199
    .catch Landroid/util/proto/WireTypeMismatchException; {:try_start_195 .. :try_end_199} :catch_31b
    .catchall {:try_start_195 .. :try_end_199} :catchall_309

    if-eq v0, v13, :cond_22a

    .line 1410
    :try_start_19b
    invoke-virtual/range {p1 .. p1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v0
    :try_end_19f
    .catch Landroid/util/proto/WireTypeMismatchException; {:try_start_19b .. :try_end_19f} :catch_218
    .catchall {:try_start_19b .. :try_end_19f} :catchall_205

    packed-switch v0, :pswitch_data_47e

    move-object/from16 v18, v14

    goto/16 :goto_201

    .line 1422
    :pswitch_1a6
    move-object/from16 v18, v14

    const-wide v13, 0x10900000004L

    :try_start_1ad
    invoke-virtual {v2, v13, v14}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v23, v0

    .end local v23    # "script":Ljava/lang/String;
    .local v0, "script":Ljava/lang/String;
    goto :goto_201

    .line 1419
    .end local v0    # "script":Ljava/lang/String;
    .restart local v23    # "script":Ljava/lang/String;
    :pswitch_1b4
    move-object/from16 v18, v14

    const-wide v13, 0x10900000003L

    invoke-virtual {v2, v13, v14}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0

    .line 1420
    .end local v22    # "variant":Ljava/lang/String;
    .local v0, "variant":Ljava/lang/String;
    move-object/from16 v22, v0

    goto :goto_201

    .line 1416
    .end local v0    # "variant":Ljava/lang/String;
    .restart local v22    # "variant":Ljava/lang/String;
    :pswitch_1c2
    move-object/from16 v18, v14

    const-wide v13, 0x10900000002L

    invoke-virtual {v2, v13, v14}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0

    .line 1417
    .end local v21    # "country":Ljava/lang/String;
    .local v0, "country":Ljava/lang/String;
    move-object/from16 v21, v0

    goto :goto_201

    .line 1412
    .end local v0    # "country":Ljava/lang/String;
    .restart local v21    # "country":Ljava/lang/String;
    :pswitch_1d0
    move-object/from16 v18, v14

    const-wide v13, 0x10900000001L

    invoke-virtual {v2, v13, v14}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0
    :try_end_1db
    .catch Landroid/util/proto/WireTypeMismatchException; {:try_start_1ad .. :try_end_1db} :catch_1f0
    .catchall {:try_start_1ad .. :try_end_1db} :catchall_1de

    .line 1414
    .end local v20    # "language":Ljava/lang/String;
    .local v0, "language":Ljava/lang/String;
    move-object/from16 v20, v0

    goto :goto_201

    .line 1430
    .end local v0    # "language":Ljava/lang/String;
    .restart local v20    # "language":Ljava/lang/String;
    :catchall_1de
    move-exception v0

    move-object v1, v0

    move-object/from16 v13, v20

    move-object/from16 v14, v21

    move-object/from16 v9, v22

    move-wide/from16 v20, v15

    move-object/from16 v15, v23

    move-object/from16 v16, v5

    move-object/from16 v5, v18

    goto/16 :goto_32f

    .line 1426
    :catch_1f0
    move-exception v0

    move-object/from16 v13, v20

    move-object/from16 v14, v21

    move-object/from16 v9, v22

    move-wide/from16 v20, v15

    move-object/from16 v15, v23

    move-object/from16 v16, v5

    move-object/from16 v5, v18

    goto/16 :goto_32b

    .line 1423
    :goto_201
    move-object/from16 v14, v18

    const/4 v13, -0x1

    goto :goto_195

    .line 1430
    :catchall_205
    move-exception v0

    move-object v1, v0

    move-object/from16 v13, v20

    move-object/from16 v9, v22

    move-wide/from16 v24, v15

    move-object/from16 v16, v5

    move-object v5, v14

    move-object/from16 v14, v21

    move-object/from16 v15, v23

    move-wide/from16 v20, v24

    goto/16 :goto_32f

    .line 1426
    :catch_218
    move-exception v0

    move-object/from16 v13, v20

    move-object/from16 v9, v22

    move-wide/from16 v24, v15

    move-object/from16 v16, v5

    move-object v5, v14

    move-object/from16 v14, v21

    move-object/from16 v15, v23

    move-wide/from16 v20, v24

    goto/16 :goto_32b

    .line 1430
    :cond_22a
    move-object/from16 v18, v14

    :try_start_22c
    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoInputStream;->end(J)V
    :try_end_22f
    .catchall {:try_start_22c .. :try_end_22f} :catchall_3be

    .line 1432
    :try_start_22f
    new-instance v0, Ljava/util/Locale$Builder;

    invoke-direct {v0}, Ljava/util/Locale$Builder;-><init>()V
    :try_end_234
    .catch Ljava/util/IllformedLocaleException; {:try_start_22f .. :try_end_234} :catch_2c3
    .catchall {:try_start_22f .. :try_end_234} :catchall_3be

    .line 1433
    move-object/from16 v13, v20

    .end local v20    # "language":Ljava/lang/String;
    .local v13, "language":Ljava/lang/String;
    :try_start_236
    invoke-virtual {v0, v13}, Ljava/util/Locale$Builder;->setLanguage(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v0
    :try_end_23a
    .catch Ljava/util/IllformedLocaleException; {:try_start_236 .. :try_end_23a} :catch_2b3
    .catchall {:try_start_236 .. :try_end_23a} :catchall_3be

    .line 1434
    move-object/from16 v14, v21

    .end local v21    # "country":Ljava/lang/String;
    .local v14, "country":Ljava/lang/String;
    :try_start_23c
    invoke-virtual {v0, v14}, Ljava/util/Locale$Builder;->setRegion(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v0
    :try_end_240
    .catch Ljava/util/IllformedLocaleException; {:try_start_23c .. :try_end_240} :catch_2a5
    .catchall {:try_start_23c .. :try_end_240} :catchall_3be

    .line 1435
    move-object/from16 v19, v9

    move-object/from16 v9, v22

    .end local v22    # "variant":Ljava/lang/String;
    .local v9, "variant":Ljava/lang/String;
    :try_start_244
    invoke-virtual {v0, v9}, Ljava/util/Locale$Builder;->setVariant(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v0
    :try_end_248
    .catch Ljava/util/IllformedLocaleException; {:try_start_244 .. :try_end_248} :catch_29b
    .catchall {:try_start_244 .. :try_end_248} :catchall_3be

    .line 1436
    move-wide/from16 v20, v15

    move-object/from16 v15, v23

    .end local v23    # "script":Ljava/lang/String;
    .local v15, "script":Ljava/lang/String;
    .local v20, "token":J
    :try_start_24c
    invoke-virtual {v0, v15}, Ljava/util/Locale$Builder;->setScript(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v0

    .line 1437
    invoke-virtual {v0}, Ljava/util/Locale$Builder;->build()Ljava/util/Locale;

    move-result-object v0

    .line 1440
    .local v0, "locale":Ljava/util/Locale;
    invoke-interface {v12, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v16

    move/from16 v22, v16

    .line 1441
    .local v22, "inListIndex":I
    move/from16 v1, v22

    const/4 v2, -0x1

    .end local v22    # "inListIndex":I
    .local v1, "inListIndex":I
    if-eq v1, v2, :cond_28a

    .line 1442
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2
    :try_end_268
    .catch Ljava/util/IllformedLocaleException; {:try_start_24c .. :try_end_268} :catch_295
    .catchall {:try_start_24c .. :try_end_268} :catchall_3b8

    move-object/from16 v16, v5

    :try_start_26a
    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1443
    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_282
    .catch Ljava/util/IllformedLocaleException; {:try_start_26a .. :try_end_282} :catch_288
    .catchall {:try_start_26a .. :try_end_282} :catchall_3b8

    .line 1442
    move-object/from16 v5, v18

    :try_start_284
    invoke-static {v5, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_291

    .line 1447
    .end local v0    # "locale":Ljava/util/Locale;
    .end local v1    # "inListIndex":I
    :catch_288
    move-exception v0

    goto :goto_298

    .line 1445
    .restart local v0    # "locale":Ljava/util/Locale;
    .restart local v1    # "inListIndex":I
    :cond_28a
    move-object/from16 v16, v5

    move-object/from16 v5, v18

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_291
    .catch Ljava/util/IllformedLocaleException; {:try_start_284 .. :try_end_291} :catch_293
    .catchall {:try_start_284 .. :try_end_291} :catchall_3b8

    .line 1451
    .end local v0    # "locale":Ljava/util/Locale;
    .end local v1    # "inListIndex":I
    :goto_291
    goto/16 :goto_301

    .line 1447
    :catch_293
    move-exception v0

    goto :goto_2d4

    :catch_295
    move-exception v0

    move-object/from16 v16, v5

    :goto_298
    move-object/from16 v5, v18

    goto :goto_2d4

    .end local v20    # "token":J
    .local v15, "token":J
    .restart local v23    # "script":Ljava/lang/String;
    :catch_29b
    move-exception v0

    move-wide/from16 v20, v15

    move-object/from16 v15, v23

    move-object/from16 v16, v5

    move-object/from16 v5, v18

    .end local v23    # "script":Ljava/lang/String;
    .local v15, "script":Ljava/lang/String;
    .restart local v20    # "token":J
    goto :goto_2d4

    .end local v9    # "variant":Ljava/lang/String;
    .end local v20    # "token":J
    .local v15, "token":J
    .local v22, "variant":Ljava/lang/String;
    .restart local v23    # "script":Ljava/lang/String;
    :catch_2a5
    move-exception v0

    move-object/from16 v19, v9

    move-wide/from16 v20, v15

    move-object/from16 v9, v22

    move-object/from16 v15, v23

    move-object/from16 v16, v5

    move-object/from16 v5, v18

    .end local v22    # "variant":Ljava/lang/String;
    .end local v23    # "script":Ljava/lang/String;
    .restart local v9    # "variant":Ljava/lang/String;
    .local v15, "script":Ljava/lang/String;
    .restart local v20    # "token":J
    goto :goto_2d4

    .end local v9    # "variant":Ljava/lang/String;
    .end local v14    # "country":Ljava/lang/String;
    .end local v20    # "token":J
    .local v15, "token":J
    .restart local v21    # "country":Ljava/lang/String;
    .restart local v22    # "variant":Ljava/lang/String;
    .restart local v23    # "script":Ljava/lang/String;
    :catch_2b3
    move-exception v0

    move-object/from16 v19, v9

    move-object/from16 v14, v21

    move-object/from16 v9, v22

    move-wide/from16 v20, v15

    move-object/from16 v15, v23

    move-object/from16 v16, v5

    move-object/from16 v5, v18

    .end local v21    # "country":Ljava/lang/String;
    .end local v22    # "variant":Ljava/lang/String;
    .end local v23    # "script":Ljava/lang/String;
    .restart local v9    # "variant":Ljava/lang/String;
    .restart local v14    # "country":Ljava/lang/String;
    .local v15, "script":Ljava/lang/String;
    .restart local v20    # "token":J
    goto :goto_2d4

    .end local v9    # "variant":Ljava/lang/String;
    .end local v13    # "language":Ljava/lang/String;
    .end local v14    # "country":Ljava/lang/String;
    .local v15, "token":J
    .local v20, "language":Ljava/lang/String;
    .restart local v21    # "country":Ljava/lang/String;
    .restart local v22    # "variant":Ljava/lang/String;
    .restart local v23    # "script":Ljava/lang/String;
    :catch_2c3
    move-exception v0

    move-object/from16 v19, v9

    move-object/from16 v13, v20

    move-object/from16 v14, v21

    move-object/from16 v9, v22

    move-wide/from16 v20, v15

    move-object/from16 v15, v23

    move-object/from16 v16, v5

    move-object/from16 v5, v18

    .line 1448
    .end local v21    # "country":Ljava/lang/String;
    .end local v22    # "variant":Ljava/lang/String;
    .end local v23    # "script":Ljava/lang/String;
    .local v0, "e":Ljava/util/IllformedLocaleException;
    .restart local v9    # "variant":Ljava/lang/String;
    .restart local v13    # "language":Ljava/lang/String;
    .restart local v14    # "country":Ljava/lang/String;
    .local v15, "script":Ljava/lang/String;
    .local v20, "token":J
    :goto_2d4
    :try_start_2d4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_300
    .catchall {:try_start_2d4 .. :try_end_300} :catchall_3b8

    .line 1452
    nop

    .line 1453
    .end local v0    # "e":Ljava/util/IllformedLocaleException;
    :goto_301
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v5, v16

    goto/16 :goto_403

    .line 1430
    .end local v9    # "variant":Ljava/lang/String;
    .end local v13    # "language":Ljava/lang/String;
    .end local v14    # "country":Ljava/lang/String;
    .local v15, "token":J
    .local v20, "language":Ljava/lang/String;
    .restart local v21    # "country":Ljava/lang/String;
    .restart local v22    # "variant":Ljava/lang/String;
    .restart local v23    # "script":Ljava/lang/String;
    :catchall_309
    move-exception v0

    move-object/from16 v13, v20

    move-object/from16 v9, v22

    move-wide/from16 v24, v15

    move-object/from16 v16, v5

    move-object v5, v14

    move-object/from16 v14, v21

    move-object/from16 v15, v23

    move-wide/from16 v20, v24

    move-object v1, v0

    .end local v21    # "country":Ljava/lang/String;
    .end local v22    # "variant":Ljava/lang/String;
    .end local v23    # "script":Ljava/lang/String;
    .restart local v9    # "variant":Ljava/lang/String;
    .restart local v13    # "language":Ljava/lang/String;
    .restart local v14    # "country":Ljava/lang/String;
    .local v15, "script":Ljava/lang/String;
    .local v20, "token":J
    goto :goto_32f

    .line 1426
    .end local v9    # "variant":Ljava/lang/String;
    .end local v13    # "language":Ljava/lang/String;
    .end local v14    # "country":Ljava/lang/String;
    .local v15, "token":J
    .local v20, "language":Ljava/lang/String;
    .restart local v21    # "country":Ljava/lang/String;
    .restart local v22    # "variant":Ljava/lang/String;
    .restart local v23    # "script":Ljava/lang/String;
    :catch_31b
    move-exception v0

    move-object/from16 v13, v20

    move-object/from16 v9, v22

    move-wide/from16 v24, v15

    move-object/from16 v16, v5

    move-object v5, v14

    move-object/from16 v14, v21

    move-object/from16 v15, v23

    move-wide/from16 v20, v24

    .line 1428
    .end local v21    # "country":Ljava/lang/String;
    .end local v22    # "variant":Ljava/lang/String;
    .end local v23    # "script":Ljava/lang/String;
    .local v0, "wtme":Landroid/util/proto/WireTypeMismatchException;
    .restart local v9    # "variant":Ljava/lang/String;
    .restart local v13    # "language":Ljava/lang/String;
    .restart local v14    # "country":Ljava/lang/String;
    .local v15, "script":Ljava/lang/String;
    .local v20, "token":J
    :goto_32b
    nop

    .end local v9    # "variant":Ljava/lang/String;
    .end local v10    # "localeToken":J
    .end local v12    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    .end local v13    # "language":Ljava/lang/String;
    .end local v14    # "country":Ljava/lang/String;
    .end local v15    # "script":Ljava/lang/String;
    .end local v20    # "token":J
    .end local p0    # "this":Landroid/content/res/Configuration;
    .end local p1    # "protoInputStream":Landroid/util/proto/ProtoInputStream;
    .end local p2    # "fieldId":J
    :try_start_32c
    throw v0
    :try_end_32d
    .catchall {:try_start_32c .. :try_end_32d} :catchall_32d

    .line 1430
    .end local v0    # "wtme":Landroid/util/proto/WireTypeMismatchException;
    .restart local v9    # "variant":Ljava/lang/String;
    .restart local v10    # "localeToken":J
    .restart local v12    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    .restart local v13    # "language":Ljava/lang/String;
    .restart local v14    # "country":Ljava/lang/String;
    .restart local v15    # "script":Ljava/lang/String;
    .restart local v20    # "token":J
    .restart local p0    # "this":Landroid/content/res/Configuration;
    .restart local p1    # "protoInputStream":Landroid/util/proto/ProtoInputStream;
    .restart local p2    # "fieldId":J
    :catchall_32d
    move-exception v0

    move-object v1, v0

    :goto_32f
    move-object/from16 v2, p1

    :try_start_331
    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoInputStream;->end(J)V
    :try_end_334
    .catchall {:try_start_331 .. :try_end_334} :catchall_3b8

    .line 1432
    :try_start_334
    new-instance v0, Ljava/util/Locale$Builder;

    invoke-direct {v0}, Ljava/util/Locale$Builder;-><init>()V

    .line 1433
    invoke-virtual {v0, v13}, Ljava/util/Locale$Builder;->setLanguage(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v0

    .line 1434
    invoke-virtual {v0, v14}, Ljava/util/Locale$Builder;->setRegion(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v0

    .line 1435
    invoke-virtual {v0, v9}, Ljava/util/Locale$Builder;->setVariant(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v0

    .line 1436
    invoke-virtual {v0, v15}, Ljava/util/Locale$Builder;->setScript(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v0

    .line 1437
    invoke-virtual {v0}, Ljava/util/Locale$Builder;->build()Ljava/util/Locale;

    move-result-object v0

    .line 1440
    .local v0, "locale":Ljava/util/Locale;
    invoke-interface {v12, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v18
    :try_end_351
    .catch Ljava/util/IllformedLocaleException; {:try_start_334 .. :try_end_351} :catch_387
    .catchall {:try_start_334 .. :try_end_351} :catchall_3b8

    move/from16 v19, v18

    .line 1441
    .local v19, "inListIndex":I
    move-wide/from16 v22, v10

    move/from16 v10, v19

    const/4 v11, -0x1

    .end local v19    # "inListIndex":I
    .local v10, "inListIndex":I
    .local v22, "localeToken":J
    if-eq v10, v11, :cond_381

    .line 1442
    :try_start_35a
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v2, v16

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1443
    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1442
    invoke-static {v5, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_384

    .line 1445
    :cond_381
    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_384
    .catch Ljava/util/IllformedLocaleException; {:try_start_35a .. :try_end_384} :catch_385
    .catchall {:try_start_35a .. :try_end_384} :catchall_3b8

    .line 1451
    .end local v0    # "locale":Ljava/util/Locale;
    .end local v10    # "inListIndex":I
    :goto_384
    goto :goto_3b6

    .line 1447
    :catch_385
    move-exception v0

    goto :goto_38a

    .end local v22    # "localeToken":J
    .local v10, "localeToken":J
    :catch_387
    move-exception v0

    move-wide/from16 v22, v10

    .line 1448
    .end local v10    # "localeToken":J
    .local v0, "e":Ljava/util/IllformedLocaleException;
    .restart local v22    # "localeToken":J
    :goto_38a
    :try_start_38a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    .end local v0    # "e":Ljava/util/IllformedLocaleException;
    :goto_3b6
    nop

    .end local v12    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    .end local v20    # "token":J
    .end local p0    # "this":Landroid/content/res/Configuration;
    .end local p1    # "protoInputStream":Landroid/util/proto/ProtoInputStream;
    .end local p2    # "fieldId":J
    throw v1
    :try_end_3b8
    .catchall {:try_start_38a .. :try_end_3b8} :catchall_3b8

    .line 1514
    .end local v9    # "variant":Ljava/lang/String;
    .end local v13    # "language":Ljava/lang/String;
    .end local v14    # "country":Ljava/lang/String;
    .end local v15    # "script":Ljava/lang/String;
    .end local v22    # "localeToken":J
    .restart local v12    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    .restart local v20    # "token":J
    .restart local p0    # "this":Landroid/content/res/Configuration;
    .restart local p1    # "protoInputStream":Landroid/util/proto/ProtoInputStream;
    .restart local p2    # "fieldId":J
    :catchall_3b8
    move-exception v0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    goto :goto_400

    .end local v20    # "token":J
    .local v15, "token":J
    :catchall_3be
    move-exception v0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide v3, v15

    .end local v15    # "token":J
    .restart local v20    # "token":J
    goto/16 :goto_431

    .line 1397
    .end local v20    # "token":J
    .local v10, "token":J
    :pswitch_3c6
    move-object v2, v5

    move-object/from16 v19, v9

    move-wide/from16 v20, v10

    .end local v10    # "token":J
    .restart local v20    # "token":J
    const-wide v0, 0x10d00000003L

    move-object/from16 v2, p1

    :try_start_3d2
    invoke-virtual {v2, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0
    :try_end_3d6
    .catchall {:try_start_3d2 .. :try_end_3d6} :catchall_3db

    move-object/from16 v1, p0

    :try_start_3d8
    iput v0, v1, Landroid/content/res/Configuration;->mnc:I

    .line 1398
    goto :goto_403

    .line 1514
    :catchall_3db
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_400

    .line 1394
    .end local v20    # "token":J
    .restart local v10    # "token":J
    :pswitch_3df
    move-object/from16 v19, v9

    move-wide/from16 v20, v10

    .end local v10    # "token":J
    .restart local v20    # "token":J
    const-wide v9, 0x10d00000002L

    invoke-virtual {v2, v9, v10}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->mcc:I

    .line 1395
    goto :goto_403

    .line 1391
    .end local v20    # "token":J
    .restart local v10    # "token":J
    :pswitch_3ef
    move-object/from16 v19, v9

    move-wide/from16 v20, v10

    .end local v10    # "token":J
    .restart local v20    # "token":J
    const-wide v9, 0x10200000001L

    invoke-virtual {v2, v9, v10}, Landroid/util/proto/ProtoInputStream;->readFloat(J)F

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->fontScale:F
    :try_end_3fe
    .catchall {:try_start_3d8 .. :try_end_3fe} :catchall_3ff

    .line 1392
    goto :goto_403

    .line 1514
    :catchall_3ff
    move-exception v0

    :goto_400
    move-wide/from16 v3, v20

    goto :goto_431

    .line 1509
    :goto_403
    move-object/from16 v9, v19

    move-wide/from16 v10, v20

    goto/16 :goto_1d

    .line 1514
    .end local v20    # "token":J
    .restart local v10    # "token":J
    :catchall_409
    move-exception v0

    move-wide v3, v10

    .end local v10    # "token":J
    .restart local v20    # "token":J
    goto :goto_431

    .end local v20    # "token":J
    .restart local v10    # "token":J
    :cond_40c
    move-wide/from16 v20, v10

    .end local v10    # "token":J
    .restart local v20    # "token":J
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_428

    .line 1516
    new-instance v0, Landroid/os/LocaleList;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/util/Locale;

    invoke-interface {v12, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/util/Locale;

    invoke-direct {v0, v3}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    invoke-virtual {v1, v0}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    .line 1518
    :cond_428
    move-wide/from16 v3, v20

    .end local v20    # "token":J
    .local v3, "token":J
    invoke-virtual {v2, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 1519
    nop

    .line 1520
    return-void

    .line 1514
    .end local v3    # "token":J
    .restart local v10    # "token":J
    :catchall_42f
    move-exception v0

    move-wide v3, v10

    .end local v10    # "token":J
    .restart local v3    # "token":J
    :goto_431
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_44b

    .line 1516
    new-instance v5, Landroid/os/LocaleList;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/util/Locale;

    invoke-interface {v12, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/util/Locale;

    invoke-direct {v5, v6}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    invoke-virtual {v1, v5}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    .line 1518
    :cond_44b
    invoke-virtual {v2, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 1519
    throw v0

    nop

    :pswitch_data_450
    .packed-switch 0x1
        :pswitch_3ef
        :pswitch_3df
        :pswitch_3c6
        :pswitch_17c
        :pswitch_166
        :pswitch_154
        :pswitch_142
        :pswitch_130
        :pswitch_11e
        :pswitch_10c
        :pswitch_fa
        :pswitch_e8
        :pswitch_d6
        :pswitch_c4
        :pswitch_b2
        :pswitch_a0
        :pswitch_8e
        :pswitch_7c
        :pswitch_6b
        :pswitch_48
        :pswitch_33
    .end packed-switch

    :pswitch_data_47e
    .packed-switch 0x1
        :pswitch_1d0
        :pswitch_1c2
        :pswitch_1b4
        :pswitch_1a6
    .end packed-switch
.end method

.method public whitelist setLayoutDirection(Ljava/util/Locale;)V
    .registers 5
    .param p1, "loc"    # Ljava/util/Locale;

    .line 2494
    invoke-static {p1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 2495
    .local v0, "layoutDirection":I
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v1, v1, -0xc1

    shl-int/lit8 v2, v0, 0x6

    or-int/2addr v1, v2

    iput v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 2497
    return-void
.end method

.method public whitelist setLocale(Ljava/util/Locale;)V
    .registers 5
    .param p1, "loc"    # Ljava/util/Locale;

    .line 2456
    if-nez p1, :cond_7

    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object v0

    goto :goto_12

    :cond_7
    new-instance v0, Landroid/os/LocaleList;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/Locale;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {v0, v1}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    :goto_12
    invoke-virtual {p0, v0}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    .line 2457
    return-void
.end method

.method public whitelist setLocales(Landroid/os/LocaleList;)V
    .registers 4
    .param p1, "locales"    # Landroid/os/LocaleList;

    .line 2438
    if-nez p1, :cond_7

    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object v0

    goto :goto_8

    :cond_7
    move-object v0, p1

    :goto_8
    iput-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    .line 2439
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 2440
    invoke-virtual {p0, v0}, Landroid/content/res/Configuration;->setLayoutDirection(Ljava/util/Locale;)V

    .line 2441
    return-void
.end method

.method public whitelist setTo(Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "o"    # Landroid/content/res/Configuration;

    .line 1069
    iget v0, p1, Landroid/content/res/Configuration;->fontScale:F

    iput v0, p0, Landroid/content/res/Configuration;->fontScale:F

    .line 1070
    iget v0, p1, Landroid/content/res/Configuration;->mcc:I

    iput v0, p0, Landroid/content/res/Configuration;->mcc:I

    .line 1071
    iget v0, p1, Landroid/content/res/Configuration;->mnc:I

    iput v0, p0, Landroid/content/res/Configuration;->mnc:I

    .line 1072
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-nez v0, :cond_14

    .line 1073
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    goto :goto_26

    .line 1074
    :cond_14
    iget-object v1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 1077
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    iput-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1079
    :cond_26
    :goto_26
    invoke-direct {p1}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    .line 1080
    iget-object v0, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    iput-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    .line 1081
    iget-boolean v0, p1, Landroid/content/res/Configuration;->userSetLocale:Z

    iput-boolean v0, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 1082
    iget v0, p1, Landroid/content/res/Configuration;->touchscreen:I

    iput v0, p0, Landroid/content/res/Configuration;->touchscreen:I

    .line 1083
    iget v0, p1, Landroid/content/res/Configuration;->keyboard:I

    iput v0, p0, Landroid/content/res/Configuration;->keyboard:I

    .line 1084
    iget v0, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    iput v0, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 1085
    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v0, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 1086
    iget v0, p1, Landroid/content/res/Configuration;->navigation:I

    iput v0, p0, Landroid/content/res/Configuration;->navigation:I

    .line 1087
    iget v0, p1, Landroid/content/res/Configuration;->navigationHidden:I

    iput v0, p0, Landroid/content/res/Configuration;->navigationHidden:I

    .line 1088
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Landroid/content/res/Configuration;->orientation:I

    .line 1089
    iget v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    iput v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 1090
    iget v0, p1, Landroid/content/res/Configuration;->colorMode:I

    iput v0, p0, Landroid/content/res/Configuration;->colorMode:I

    .line 1091
    iget v0, p1, Landroid/content/res/Configuration;->uiMode:I

    iput v0, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 1092
    iget v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 1093
    iget v0, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v0, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 1094
    iget v0, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 1095
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    .line 1096
    iget v0, p1, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    .line 1097
    iget v0, p1, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    iput v0, p0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    .line 1098
    iget v0, p1, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    .line 1099
    iget v0, p1, Landroid/content/res/Configuration;->assetsSeq:I

    iput v0, p0, Landroid/content/res/Configuration;->assetsSeq:I

    .line 1100
    iget v0, p1, Landroid/content/res/Configuration;->seq:I

    iput v0, p0, Landroid/content/res/Configuration;->seq:I

    .line 1101
    iget-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, v1}, Landroid/app/WindowConfiguration;->setTo(Landroid/app/WindowConfiguration;)V

    .line 1102
    iget v0, p1, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    iput v0, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    .line 1105
    iget-object v0, p0, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/IMiuiConfiguration;

    if-eqz v0, :cond_93

    iget-object v1, p1, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/IMiuiConfiguration;

    if-eqz v1, :cond_93

    .line 1106
    invoke-interface {v0, v1}, Landroid/content/res/IMiuiConfiguration;->setTo(Landroid/content/res/IMiuiConfiguration;)V

    .line 1109
    :cond_93
    iget v0, p1, Landroid/content/res/Configuration;->xiaomiKeyboard:I

    iput v0, p0, Landroid/content/res/Configuration;->xiaomiKeyboard:I

    .line 1112
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->isAutoUIEnable()Z

    move-result v0

    if-eqz v0, :cond_b0

    .line 1113
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getMIUIAutoUI()Lcom/miui/autoui/MIUIAutoUIStub;

    move-result-object v0

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/miui/autoui/MIUIAutoUIStub;->applyConfiguration(Landroid/content/res/Configuration;Ljava/lang/String;)V

    .line 1119
    :cond_b0
    iget-object v0, p1, Landroid/content/res/Configuration;->mImeAppBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/content/res/Configuration;->updateImeAppBounds(Landroid/graphics/Rect;)V

    .line 1121
    return-void
.end method

.method public blacklist setTo(Landroid/content/res/Configuration;II)V
    .registers 6
    .param p1, "delta"    # Landroid/content/res/Configuration;
    .param p2, "mask"    # I
    .param p3, "windowMask"    # I

    .line 1850
    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr v0, p2

    if-eqz v0, :cond_9

    .line 1851
    iget v0, p1, Landroid/content/res/Configuration;->fontScale:F

    iput v0, p0, Landroid/content/res/Configuration;->fontScale:F

    .line 1853
    :cond_9
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_11

    .line 1854
    iget v0, p1, Landroid/content/res/Configuration;->mcc:I

    iput v0, p0, Landroid/content/res/Configuration;->mcc:I

    .line 1856
    :cond_11
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_19

    .line 1857
    iget v0, p1, Landroid/content/res/Configuration;->mnc:I

    iput v0, p0, Landroid/content/res/Configuration;->mnc:I

    .line 1859
    :cond_19
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_3b

    .line 1860
    iget-object v0, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    iput-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    .line 1861
    invoke-virtual {v0}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3b

    .line 1862
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 1864
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    iput-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1868
    :cond_3b
    and-int/lit16 v0, p2, 0x2000

    if-eqz v0, :cond_4a

    .line 1869
    iget v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v0, v0, 0xc0

    .line 1870
    .local v0, "deltaScreenLayoutDir":I
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v1, v1, -0xc1

    or-int/2addr v1, v0

    iput v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 1872
    .end local v0    # "deltaScreenLayoutDir":I
    :cond_4a
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_52

    .line 1873
    iget-boolean v0, p1, Landroid/content/res/Configuration;->userSetLocale:Z

    iput-boolean v0, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 1875
    :cond_52
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_5a

    .line 1876
    iget v0, p1, Landroid/content/res/Configuration;->touchscreen:I

    iput v0, p0, Landroid/content/res/Configuration;->touchscreen:I

    .line 1878
    :cond_5a
    and-int/lit8 v0, p2, 0x10

    if-eqz v0, :cond_66

    .line 1879
    iget v0, p1, Landroid/content/res/Configuration;->keyboard:I

    iput v0, p0, Landroid/content/res/Configuration;->keyboard:I

    .line 1881
    iget v0, p1, Landroid/content/res/Configuration;->xiaomiKeyboard:I

    iput v0, p0, Landroid/content/res/Configuration;->xiaomiKeyboard:I

    .line 1883
    :cond_66
    and-int/lit8 v0, p2, 0x20

    if-eqz v0, :cond_76

    .line 1884
    iget v0, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    iput v0, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 1885
    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v0, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 1886
    iget v0, p1, Landroid/content/res/Configuration;->navigationHidden:I

    iput v0, p0, Landroid/content/res/Configuration;->navigationHidden:I

    .line 1888
    :cond_76
    and-int/lit8 v0, p2, 0x40

    if-eqz v0, :cond_7e

    .line 1889
    iget v0, p1, Landroid/content/res/Configuration;->navigation:I

    iput v0, p0, Landroid/content/res/Configuration;->navigation:I

    .line 1891
    :cond_7e
    and-int/lit16 v0, p2, 0x80

    if-eqz v0, :cond_86

    .line 1892
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Landroid/content/res/Configuration;->orientation:I

    .line 1894
    :cond_86
    and-int/lit16 v0, p2, 0x100

    if-eqz v0, :cond_93

    .line 1896
    iget v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    iget v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v1, v1, -0xc1

    or-int/2addr v0, v1

    iput v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 1898
    :cond_93
    and-int/lit16 v0, p2, 0x4000

    if-eqz v0, :cond_9b

    .line 1899
    iget v0, p1, Landroid/content/res/Configuration;->colorMode:I

    iput v0, p0, Landroid/content/res/Configuration;->colorMode:I

    .line 1901
    :cond_9b
    and-int/lit16 v0, p2, 0x200

    if-eqz v0, :cond_a3

    .line 1902
    iget v0, p1, Landroid/content/res/Configuration;->uiMode:I

    iput v0, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 1904
    :cond_a3
    and-int/lit16 v0, p2, 0x400

    if-eqz v0, :cond_af

    .line 1905
    iget v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 1906
    iget v0, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v0, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 1908
    :cond_af
    and-int/lit16 v0, p2, 0x800

    if-eqz v0, :cond_b7

    .line 1909
    iget v0, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 1911
    :cond_b7
    and-int/lit16 v0, p2, 0x1000

    if-eqz v0, :cond_bf

    .line 1912
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    .line 1914
    :cond_bf
    const/high16 v0, -0x80000000

    and-int/2addr v0, p2

    if-eqz v0, :cond_c8

    .line 1915
    iget v0, p1, Landroid/content/res/Configuration;->assetsSeq:I

    iput v0, p0, Landroid/content/res/Configuration;->assetsSeq:I

    .line 1917
    :cond_c8
    const/high16 v0, 0x20000000

    and-int/2addr v0, p2

    if-eqz v0, :cond_d4

    .line 1918
    iget-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, v1, p3}, Landroid/app/WindowConfiguration;->setTo(Landroid/app/WindowConfiguration;I)V

    .line 1920
    :cond_d4
    const/high16 v0, 0x10000000

    and-int/2addr v0, p2

    if-eqz v0, :cond_dd

    .line 1921
    iget v0, p1, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    iput v0, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    .line 1923
    :cond_dd
    return-void
.end method

.method public whitelist setToDefaults()V
    .registers 3

    .line 1583
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/content/res/Configuration;->fontScale:F

    .line 1584
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/res/Configuration;->mnc:I

    iput v0, p0, Landroid/content/res/Configuration;->mcc:I

    .line 1585
    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object v1

    iput-object v1, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    .line 1586
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1587
    iput-boolean v0, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 1588
    iput v0, p0, Landroid/content/res/Configuration;->touchscreen:I

    .line 1589
    iput v0, p0, Landroid/content/res/Configuration;->keyboard:I

    .line 1590
    iput v0, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 1591
    iput v0, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 1592
    iput v0, p0, Landroid/content/res/Configuration;->navigation:I

    .line 1593
    iput v0, p0, Landroid/content/res/Configuration;->navigationHidden:I

    .line 1594
    iput v0, p0, Landroid/content/res/Configuration;->orientation:I

    .line 1595
    iput v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 1596
    iput v0, p0, Landroid/content/res/Configuration;->colorMode:I

    .line 1597
    iput v0, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 1598
    iput v0, p0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 1599
    iput v0, p0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    iput v0, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 1600
    iput v0, p0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 1601
    iput v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    .line 1602
    iput v0, p0, Landroid/content/res/Configuration;->assetsSeq:I

    .line 1603
    iput v0, p0, Landroid/content/res/Configuration;->seq:I

    .line 1604
    iget-object v1, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->setToDefaults()V

    .line 1605
    const v1, 0x7fffffff

    iput v1, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    .line 1608
    iget-object v1, p0, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/IMiuiConfiguration;

    if-eqz v1, :cond_4b

    .line 1609
    invoke-interface {v1}, Landroid/content/res/IMiuiConfiguration;->setToDefaults()V

    .line 1612
    :cond_4b
    iput v0, p0, Landroid/content/res/Configuration;->xiaomiKeyboard:I

    .line 1613
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 8

    .line 1124
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1125
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1126
    iget v1, p0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1127
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1128
    iget v2, p0, Landroid/content/res/Configuration;->mcc:I

    if-eqz v2, :cond_25

    .line 1129
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1130
    const-string/jumbo v2, "mcc"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2a

    .line 1132
    :cond_25
    const-string v2, "?mcc"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1134
    :goto_2a
    iget v2, p0, Landroid/content/res/Configuration;->mnc:I

    if-eqz v2, :cond_38

    .line 1135
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1136
    const-string/jumbo v2, "mnc"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3d

    .line 1138
    :cond_38
    const-string v2, "?mnc"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1140
    :goto_3d
    invoke-direct {p0}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    .line 1141
    iget-object v2, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v2}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_51

    .line 1142
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1143
    iget-object v2, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_56

    .line 1145
    :cond_51
    const-string v2, " ?localeList"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1147
    :goto_56
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v2, v2, 0xc0

    .line 1148
    .local v2, "layoutDir":I
    sparse-switch v2, :sswitch_data_33e

    .line 1152
    const-string v3, " layoutDir="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1153
    shr-int/lit8 v3, v2, 0x6

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_79

    .line 1151
    :sswitch_68
    const-string v3, " ldrtl"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_79

    .line 1150
    :sswitch_6e
    const-string v3, " ldltr"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_79

    .line 1149
    :sswitch_74
    const-string v3, " ?layoutDir"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1155
    :goto_79
    iget v3, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const-string v4, "dp"

    if-eqz v3, :cond_8d

    .line 1156
    const-string v3, " sw"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_92

    .line 1158
    :cond_8d
    const-string v3, " ?swdp"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1160
    :goto_92
    iget v3, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v3, :cond_a4

    .line 1161
    const-string v3, " w"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a9

    .line 1163
    :cond_a4
    const-string v3, " ?wdp"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1165
    :goto_a9
    iget v3, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eqz v3, :cond_bb

    .line 1166
    const-string v3, " h"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c0

    .line 1168
    :cond_bb
    const-string v3, " ?hdp"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1170
    :goto_c0
    iget v3, p0, Landroid/content/res/Configuration;->densityDpi:I

    if-eqz v3, :cond_d2

    .line 1171
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "dpi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d7

    .line 1173
    :cond_d2
    const-string v1, " ?density"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1175
    :goto_d7
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    packed-switch v1, :pswitch_data_34c

    .line 1181
    const-string v1, " layoutSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1182
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_108

    .line 1180
    :pswitch_eb
    const-string v1, " xlrg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_108

    .line 1179
    :pswitch_f1
    const-string v1, " lrg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_108

    .line 1178
    :pswitch_f7
    const-string v1, " nrml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_108

    .line 1177
    :pswitch_fd
    const-string v1, " smll"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_108

    .line 1176
    :pswitch_103
    const-string v1, " ?lsize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1184
    :goto_108
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0x30

    sparse-switch v1, :sswitch_data_35a

    .line 1188
    const-string v1, " layoutLong="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1189
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0x30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_128

    .line 1187
    :sswitch_11c
    const-string v1, " long"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_128

    .line 1186
    :sswitch_122
    goto :goto_128

    .line 1185
    :sswitch_123
    const-string v1, " ?long"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1191
    :goto_128
    iget v1, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v1, v1, 0xc

    sparse-switch v1, :sswitch_data_368

    .line 1195
    const-string v1, " dynamicRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1196
    iget v1, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v1, v1, 0xc

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_148

    .line 1194
    :sswitch_13c
    const-string v1, " hdr"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_148

    .line 1193
    :sswitch_142
    goto :goto_148

    .line 1192
    :sswitch_143
    const-string v1, " ?ldr"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1198
    :goto_148
    iget v1, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v1, v1, 0x3

    packed-switch v1, :pswitch_data_376

    .line 1202
    const-string v1, " wideColorGamut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1203
    iget v1, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_168

    .line 1201
    :pswitch_15c
    const-string v1, " widecg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_168

    .line 1200
    :pswitch_162
    goto :goto_168

    .line 1199
    :pswitch_163
    const-string v1, " ?wideColorGamut"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1205
    :goto_168
    iget v1, p0, Landroid/content/res/Configuration;->orientation:I

    packed-switch v1, :pswitch_data_380

    .line 1209
    const-string v1, " orien="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_189

    .line 1207
    :pswitch_178
    const-string v1, " land"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_189

    .line 1208
    :pswitch_17e
    const-string v1, " port"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_189

    .line 1206
    :pswitch_184
    const-string v1, " ?orien"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1211
    :goto_189
    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0xf

    packed-switch v1, :pswitch_data_38a

    .line 1220
    const-string v1, " uimode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0xf

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1c7

    .line 1219
    :pswitch_19d
    const-string v1, " vrheadset"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1c7

    .line 1218
    :pswitch_1a3
    const-string v1, " watch"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1c7

    .line 1217
    :pswitch_1a9
    const-string v1, " appliance"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1c7

    .line 1216
    :pswitch_1af
    const-string v1, " television"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1c7

    .line 1215
    :pswitch_1b5
    const-string v1, " car"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1c7

    .line 1214
    :pswitch_1bb
    const-string v1, " desk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1c7

    .line 1213
    :pswitch_1c1
    goto :goto_1c7

    .line 1212
    :pswitch_1c2
    const-string v1, " ?uimode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1222
    :goto_1c7
    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x30

    sparse-switch v1, :sswitch_data_39e

    .line 1226
    const-string v1, " night="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1e7

    .line 1225
    :sswitch_1db
    const-string v1, " night"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1e7

    .line 1224
    :sswitch_1e1
    goto :goto_1e7

    .line 1223
    :sswitch_1e2
    const-string v1, " ?night"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1228
    :goto_1e7
    iget v1, p0, Landroid/content/res/Configuration;->touchscreen:I

    packed-switch v1, :pswitch_data_3ac

    .line 1233
    const-string v1, " touch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->touchscreen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_20e

    .line 1232
    :pswitch_1f7
    const-string v1, " finger"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_20e

    .line 1231
    :pswitch_1fd
    const-string v1, " stylus"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_20e

    .line 1230
    :pswitch_203
    const-string v1, " -touch"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_20e

    .line 1229
    :pswitch_209
    const-string v1, " ?touch"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1235
    :goto_20e
    iget v1, p0, Landroid/content/res/Configuration;->keyboard:I

    packed-switch v1, :pswitch_data_3b8

    .line 1240
    const-string v1, " keys="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->keyboard:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_235

    .line 1239
    :pswitch_21e
    const-string v1, " 12key"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_235

    .line 1238
    :pswitch_224
    const-string v1, " qwerty"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_235

    .line 1237
    :pswitch_22a
    const-string v1, " -keyb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_235

    .line 1236
    :pswitch_230
    const-string v1, " ?keyb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1242
    :goto_235
    iget v1, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    const-string v3, "/h"

    const-string v4, "/v"

    const-string v5, "/?"

    const-string v6, "/"

    packed-switch v1, :pswitch_data_3c4

    .line 1247
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_25c

    .line 1246
    :pswitch_24b
    const-string v1, "/s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_25c

    .line 1245
    :pswitch_251
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_25c

    .line 1244
    :pswitch_255
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_25c

    .line 1243
    :pswitch_259
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1249
    :goto_25c
    iget v1, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    packed-switch v1, :pswitch_data_3d0

    .line 1253
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_275

    .line 1252
    :pswitch_26a
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_275

    .line 1251
    :pswitch_26e
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_275

    .line 1250
    :pswitch_272
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1255
    :goto_275
    iget v1, p0, Landroid/content/res/Configuration;->navigation:I

    packed-switch v1, :pswitch_data_3da

    .line 1261
    const-string v1, " nav="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->navigation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2a2

    .line 1260
    :pswitch_285
    const-string v1, " wheel"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2a2

    .line 1259
    :pswitch_28b
    const-string v1, " tball"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2a2

    .line 1258
    :pswitch_291
    const-string v1, " dpad"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2a2

    .line 1257
    :pswitch_297
    const-string v1, " -nav"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2a2

    .line 1256
    :pswitch_29d
    const-string v1, " ?nav"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1263
    :goto_2a2
    iget v1, p0, Landroid/content/res/Configuration;->navigationHidden:I

    packed-switch v1, :pswitch_data_3e8

    .line 1267
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->navigationHidden:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2bb

    .line 1266
    :pswitch_2b0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2bb

    .line 1265
    :pswitch_2b4
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2bb

    .line 1264
    :pswitch_2b8
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1269
    :goto_2bb
    const-string v1, " winConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1270
    iget v1, p0, Landroid/content/res/Configuration;->assetsSeq:I

    if-eqz v1, :cond_2d4

    .line 1271
    const-string v1, " as."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/content/res/Configuration;->assetsSeq:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1273
    :cond_2d4
    iget v1, p0, Landroid/content/res/Configuration;->seq:I

    if-eqz v1, :cond_2e3

    .line 1274
    const-string v1, " s."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/content/res/Configuration;->seq:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1276
    :cond_2e3
    iget v1, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    const v3, 0x7fffffff

    if-eq v1, v3, :cond_2f5

    .line 1277
    const-string v1, " fontWeightAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1278
    iget v1, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2fa

    .line 1280
    :cond_2f5
    const-string v1, " ?fontWeightAdjustment"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1284
    :goto_2fa
    iget-object v1, p0, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/IMiuiConfiguration;

    if-eqz v1, :cond_305

    .line 1285
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1288
    :cond_305
    iget v1, p0, Landroid/content/res/Configuration;->xiaomiKeyboard:I

    packed-switch v1, :pswitch_data_3f2

    .line 1291
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->xiaomiKeyboard:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_31e

    .line 1290
    :pswitch_313
    const-string v1, "/a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_31e

    .line 1289
    :pswitch_319
    const-string v1, "/d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1294
    :goto_31e
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1298
    const-string v1, " ImeAppBounds:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1299
    iget-object v1, p0, Landroid/content/res/Configuration;->mImeAppBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1300
    const-string v1, " ;isMultiWindowMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1301
    invoke-virtual {p0}, Landroid/content/res/Configuration;->isImeMultiWindowMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1304
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :sswitch_data_33e
    .sparse-switch
        0x0 -> :sswitch_74
        0x40 -> :sswitch_6e
        0x80 -> :sswitch_68
    .end sparse-switch

    :pswitch_data_34c
    .packed-switch 0x0
        :pswitch_103
        :pswitch_fd
        :pswitch_f7
        :pswitch_f1
        :pswitch_eb
    .end packed-switch

    :sswitch_data_35a
    .sparse-switch
        0x0 -> :sswitch_123
        0x10 -> :sswitch_122
        0x20 -> :sswitch_11c
    .end sparse-switch

    :sswitch_data_368
    .sparse-switch
        0x0 -> :sswitch_143
        0x4 -> :sswitch_142
        0x8 -> :sswitch_13c
    .end sparse-switch

    :pswitch_data_376
    .packed-switch 0x0
        :pswitch_163
        :pswitch_162
        :pswitch_15c
    .end packed-switch

    :pswitch_data_380
    .packed-switch 0x0
        :pswitch_184
        :pswitch_17e
        :pswitch_178
    .end packed-switch

    :pswitch_data_38a
    .packed-switch 0x0
        :pswitch_1c2
        :pswitch_1c1
        :pswitch_1bb
        :pswitch_1b5
        :pswitch_1af
        :pswitch_1a9
        :pswitch_1a3
        :pswitch_19d
    .end packed-switch

    :sswitch_data_39e
    .sparse-switch
        0x0 -> :sswitch_1e2
        0x10 -> :sswitch_1e1
        0x20 -> :sswitch_1db
    .end sparse-switch

    :pswitch_data_3ac
    .packed-switch 0x0
        :pswitch_209
        :pswitch_203
        :pswitch_1fd
        :pswitch_1f7
    .end packed-switch

    :pswitch_data_3b8
    .packed-switch 0x0
        :pswitch_230
        :pswitch_22a
        :pswitch_224
        :pswitch_21e
    .end packed-switch

    :pswitch_data_3c4
    .packed-switch 0x0
        :pswitch_259
        :pswitch_255
        :pswitch_251
        :pswitch_24b
    .end packed-switch

    :pswitch_data_3d0
    .packed-switch 0x0
        :pswitch_272
        :pswitch_26e
        :pswitch_26a
    .end packed-switch

    :pswitch_data_3da
    .packed-switch 0x0
        :pswitch_29d
        :pswitch_297
        :pswitch_291
        :pswitch_28b
        :pswitch_285
    .end packed-switch

    :pswitch_data_3e8
    .packed-switch 0x0
        :pswitch_2b8
        :pswitch_2b4
        :pswitch_2b0
    .end packed-switch

    :pswitch_data_3f2
    .packed-switch 0x1
        :pswitch_319
        :pswitch_313
    .end packed-switch
.end method

.method public greylist-max-o unset()V
    .registers 2

    .line 1620
    invoke-virtual {p0}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 1621
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/res/Configuration;->fontScale:F

    .line 1622
    return-void
.end method

.method public whitelist updateFrom(Landroid/content/res/Configuration;)I
    .registers 9
    .param p1, "delta"    # Landroid/content/res/Configuration;

    .line 1638
    const/4 v0, 0x0

    .line 1639
    .local v0, "changed":I
    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_13

    iget v2, p0, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_13

    .line 1640
    const/high16 v2, 0x40000000    # 2.0f

    or-int/2addr v0, v2

    .line 1641
    iput v1, p0, Landroid/content/res/Configuration;->fontScale:F

    .line 1643
    :cond_13
    iget v1, p1, Landroid/content/res/Configuration;->mcc:I

    if-eqz v1, :cond_1f

    iget v2, p0, Landroid/content/res/Configuration;->mcc:I

    if-eq v2, v1, :cond_1f

    .line 1644
    or-int/lit8 v0, v0, 0x1

    .line 1645
    iput v1, p0, Landroid/content/res/Configuration;->mcc:I

    .line 1647
    :cond_1f
    iget v1, p1, Landroid/content/res/Configuration;->mnc:I

    if-eqz v1, :cond_2b

    iget v2, p0, Landroid/content/res/Configuration;->mnc:I

    if-eq v2, v1, :cond_2b

    .line 1648
    or-int/lit8 v0, v0, 0x2

    .line 1649
    iput v1, p0, Landroid/content/res/Configuration;->mnc:I

    .line 1651
    :cond_2b
    invoke-direct {p0}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    .line 1652
    invoke-direct {p1}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    .line 1653
    iget-object v1, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v1}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_62

    iget-object v1, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    iget-object v2, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_62

    .line 1654
    or-int/lit8 v0, v0, 0x4

    .line 1655
    iget-object v1, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    iput-object v1, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    .line 1657
    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v2, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_62

    .line 1658
    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Locale;

    iput-object v1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1660
    or-int/lit16 v0, v0, 0x2000

    .line 1663
    invoke-virtual {p0, v1}, Landroid/content/res/Configuration;->setLayoutDirection(Ljava/util/Locale;)V

    .line 1666
    :cond_62
    iget v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v1, v1, 0xc0

    .line 1667
    .local v1, "deltaScreenLayoutDir":I
    if-eqz v1, :cond_75

    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v3, v2, 0xc0

    if-eq v1, v3, :cond_75

    .line 1669
    and-int/lit16 v2, v2, -0xc1

    or-int/2addr v2, v1

    iput v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 1670
    or-int/lit16 v0, v0, 0x2000

    .line 1672
    :cond_75
    iget-boolean v2, p1, Landroid/content/res/Configuration;->userSetLocale:Z

    if-eqz v2, :cond_86

    iget-boolean v2, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    if-eqz v2, :cond_81

    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_86

    .line 1674
    :cond_81
    or-int/lit8 v0, v0, 0x4

    .line 1675
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 1677
    :cond_86
    iget v2, p1, Landroid/content/res/Configuration;->touchscreen:I

    if-eqz v2, :cond_92

    iget v3, p0, Landroid/content/res/Configuration;->touchscreen:I

    if-eq v3, v2, :cond_92

    .line 1679
    or-int/lit8 v0, v0, 0x8

    .line 1680
    iput v2, p0, Landroid/content/res/Configuration;->touchscreen:I

    .line 1682
    :cond_92
    iget v2, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eqz v2, :cond_9e

    iget v3, p0, Landroid/content/res/Configuration;->keyboard:I

    if-eq v3, v2, :cond_9e

    .line 1684
    or-int/lit8 v0, v0, 0x10

    .line 1685
    iput v2, p0, Landroid/content/res/Configuration;->keyboard:I

    .line 1687
    :cond_9e
    iget v2, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eqz v2, :cond_aa

    iget v3, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eq v3, v2, :cond_aa

    .line 1689
    or-int/lit8 v0, v0, 0x20

    .line 1690
    iput v2, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 1692
    :cond_aa
    iget v2, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eqz v2, :cond_b6

    iget v3, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eq v3, v2, :cond_b6

    .line 1694
    or-int/lit8 v0, v0, 0x20

    .line 1695
    iput v2, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 1697
    :cond_b6
    iget v2, p1, Landroid/content/res/Configuration;->navigation:I

    if-eqz v2, :cond_c2

    iget v3, p0, Landroid/content/res/Configuration;->navigation:I

    if-eq v3, v2, :cond_c2

    .line 1699
    or-int/lit8 v0, v0, 0x40

    .line 1700
    iput v2, p0, Landroid/content/res/Configuration;->navigation:I

    .line 1702
    :cond_c2
    iget v2, p1, Landroid/content/res/Configuration;->navigationHidden:I

    if-eqz v2, :cond_ce

    iget v3, p0, Landroid/content/res/Configuration;->navigationHidden:I

    if-eq v3, v2, :cond_ce

    .line 1704
    or-int/lit8 v0, v0, 0x20

    .line 1705
    iput v2, p0, Landroid/content/res/Configuration;->navigationHidden:I

    .line 1707
    :cond_ce
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-eqz v2, :cond_da

    iget v3, p0, Landroid/content/res/Configuration;->orientation:I

    if-eq v3, v2, :cond_da

    .line 1709
    or-int/lit16 v0, v0, 0x80

    .line 1710
    iput v2, p0, Landroid/content/res/Configuration;->orientation:I

    .line 1712
    :cond_da
    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v3, v2, 0xf

    if-eqz v3, :cond_f1

    and-int/lit8 v3, v2, 0xf

    iget v4, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v5, v4, 0xf

    if-eq v3, v5, :cond_f1

    .line 1715
    or-int/lit16 v0, v0, 0x100

    .line 1716
    and-int/lit8 v3, v4, -0x10

    and-int/lit8 v2, v2, 0xf

    or-int/2addr v2, v3

    iput v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 1719
    :cond_f1
    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v3, v2, 0x30

    if-eqz v3, :cond_108

    and-int/lit8 v3, v2, 0x30

    iget v4, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v5, v4, 0x30

    if-eq v3, v5, :cond_108

    .line 1722
    or-int/lit16 v0, v0, 0x100

    .line 1723
    and-int/lit8 v3, v4, -0x31

    and-int/lit8 v2, v2, 0x30

    or-int/2addr v2, v3

    iput v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 1726
    :cond_108
    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v3, v2, 0x300

    if-eqz v3, :cond_11f

    and-int/lit16 v3, v2, 0x300

    iget v4, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v5, v4, 0x300

    if-eq v3, v5, :cond_11f

    .line 1729
    or-int/lit16 v0, v0, 0x100

    .line 1730
    and-int/lit16 v3, v4, -0x301

    and-int/lit16 v2, v2, 0x300

    or-int/2addr v2, v3

    iput v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 1733
    :cond_11f
    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    const/high16 v3, 0x10000000

    and-int v4, v2, v3

    iget v5, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int v6, v5, v3

    if-eq v4, v6, :cond_137

    if-eqz v2, :cond_137

    .line 1736
    or-int/lit16 v0, v0, 0x100

    .line 1737
    const v4, -0x10000001

    and-int/2addr v4, v5

    and-int/2addr v2, v3

    or-int/2addr v2, v4

    iput v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 1741
    :cond_137
    iget v2, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v4, v2, 0x3

    if-eqz v4, :cond_14e

    and-int/lit8 v4, v2, 0x3

    iget v5, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v6, v5, 0x3

    if-eq v4, v6, :cond_14e

    .line 1745
    or-int/lit16 v0, v0, 0x4000

    .line 1746
    and-int/lit8 v4, v5, -0x4

    and-int/lit8 v2, v2, 0x3

    or-int/2addr v2, v4

    iput v2, p0, Landroid/content/res/Configuration;->colorMode:I

    .line 1750
    :cond_14e
    iget v2, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v4, v2, 0xc

    if-eqz v4, :cond_165

    and-int/lit8 v4, v2, 0xc

    iget v5, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v6, v5, 0xc

    if-eq v4, v6, :cond_165

    .line 1753
    or-int/lit16 v0, v0, 0x4000

    .line 1754
    and-int/lit8 v4, v5, -0xd

    and-int/lit8 v2, v2, 0xc

    or-int/2addr v2, v4

    iput v2, p0, Landroid/content/res/Configuration;->colorMode:I

    .line 1758
    :cond_165
    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    if-eqz v2, :cond_189

    iget v4, p0, Landroid/content/res/Configuration;->uiMode:I

    if-eq v4, v2, :cond_189

    .line 1760
    or-int/lit16 v0, v0, 0x200

    .line 1761
    and-int/lit8 v5, v2, 0xf

    if-eqz v5, :cond_17a

    .line 1762
    and-int/lit8 v4, v4, -0x10

    and-int/lit8 v2, v2, 0xf

    or-int/2addr v2, v4

    iput v2, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 1765
    :cond_17a
    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v4, v2, 0x30

    if-eqz v4, :cond_189

    .line 1766
    iget v4, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v4, v4, -0x31

    and-int/lit8 v2, v2, 0x30

    or-int/2addr v2, v4

    iput v2, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 1770
    :cond_189
    iget v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v2, :cond_195

    iget v4, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eq v4, v2, :cond_195

    .line 1772
    or-int/lit16 v0, v0, 0x400

    .line 1773
    iput v2, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 1775
    :cond_195
    iget v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eqz v2, :cond_1a1

    iget v4, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v4, v2, :cond_1a1

    .line 1777
    or-int/lit16 v0, v0, 0x400

    .line 1778
    iput v2, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 1780
    :cond_1a1
    iget v2, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eqz v2, :cond_1ad

    iget v4, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eq v4, v2, :cond_1ad

    .line 1782
    or-int/lit16 v0, v0, 0x800

    .line 1783
    iput v2, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 1785
    :cond_1ad
    iget v2, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-eqz v2, :cond_1b9

    iget v4, p0, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v4, v2, :cond_1b9

    .line 1787
    or-int/lit16 v0, v0, 0x1000

    .line 1788
    iput v2, p0, Landroid/content/res/Configuration;->densityDpi:I

    .line 1790
    :cond_1b9
    iget v2, p1, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    if-eqz v2, :cond_1bf

    .line 1791
    iput v2, p0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    .line 1793
    :cond_1bf
    iget v2, p1, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    if-eqz v2, :cond_1c5

    .line 1794
    iput v2, p0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    .line 1796
    :cond_1c5
    iget v2, p1, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    if-eqz v2, :cond_1cb

    .line 1797
    iput v2, p0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    .line 1799
    :cond_1cb
    iget v2, p1, Landroid/content/res/Configuration;->assetsSeq:I

    if-eqz v2, :cond_1d8

    iget v4, p0, Landroid/content/res/Configuration;->assetsSeq:I

    if-eq v2, v4, :cond_1d8

    .line 1800
    const/high16 v4, -0x80000000

    or-int/2addr v0, v4

    .line 1801
    iput v2, p0, Landroid/content/res/Configuration;->assetsSeq:I

    .line 1803
    :cond_1d8
    iget v2, p1, Landroid/content/res/Configuration;->seq:I

    if-eqz v2, :cond_1de

    .line 1804
    iput v2, p0, Landroid/content/res/Configuration;->seq:I

    .line 1806
    :cond_1de
    iget-object v2, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v4, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2, v4}, Landroid/app/WindowConfiguration;->updateFrom(Landroid/app/WindowConfiguration;)I

    move-result v2

    if-eqz v2, :cond_1eb

    .line 1807
    const/high16 v2, 0x20000000

    or-int/2addr v0, v2

    .line 1810
    :cond_1eb
    iget-object v2, p0, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/IMiuiConfiguration;

    if-eqz v2, :cond_1f8

    iget-object v4, p1, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/IMiuiConfiguration;

    if-eqz v4, :cond_1f8

    .line 1811
    invoke-interface {v2, v4}, Landroid/content/res/IMiuiConfiguration;->updateFrom(Landroid/content/res/IMiuiConfiguration;)I

    move-result v2

    or-int/2addr v0, v2

    .line 1814
    :cond_1f8
    iget v2, p1, Landroid/content/res/Configuration;->xiaomiKeyboard:I

    if-eqz v2, :cond_202

    iget v4, p0, Landroid/content/res/Configuration;->xiaomiKeyboard:I

    if-eq v4, v2, :cond_202

    .line 1816
    iput v2, p0, Landroid/content/res/Configuration;->xiaomiKeyboard:I

    .line 1820
    :cond_202
    iget v2, p1, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    const v4, 0x7fffffff

    if-eq v2, v4, :cond_210

    iget v4, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    if-eq v2, v4, :cond_210

    .line 1822
    or-int/2addr v0, v3

    .line 1823
    iput v2, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    .line 1827
    :cond_210
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v2

    invoke-interface {v2}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->isAutoUIEnable()Z

    move-result v2

    if-eqz v2, :cond_229

    .line 1828
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v2

    invoke-interface {v2}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getMIUIAutoUI()Lcom/miui/autoui/MIUIAutoUIStub;

    move-result-object v2

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p0, v3}, Lcom/miui/autoui/MIUIAutoUIStub;->applyConfiguration(Landroid/content/res/Configuration;Ljava/lang/String;)V

    .line 1834
    :cond_229
    iget-object v2, p1, Landroid/content/res/Configuration;->mImeAppBounds:Landroid/graphics/Rect;

    if-eqz v2, :cond_23d

    iget-object v3, p0, Landroid/content/res/Configuration;->mImeAppBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23d

    .line 1835
    iget-object v2, p1, Landroid/content/res/Configuration;->mImeAppBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Landroid/content/res/Configuration;->updateImeAppBounds(Landroid/graphics/Rect;)V

    .line 1836
    const/high16 v2, 0x20000

    or-int/2addr v0, v2

    .line 1840
    :cond_23d
    return v0
.end method

.method public blacklist updateImeAppBounds(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "imeAppBounds"    # Landroid/graphics/Rect;

    .line 3095
    iget-object v0, p0, Landroid/content/res/Configuration;->mImeAppBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_a

    if-nez p1, :cond_a

    .line 3096
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 3097
    return-void

    .line 3098
    :cond_a
    if-nez v0, :cond_16

    .line 3100
    if-nez p1, :cond_f

    return-void

    .line 3101
    :cond_f
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/content/res/Configuration;->mImeAppBounds:Landroid/graphics/Rect;

    .line 3103
    :cond_16
    iget-object v0, p0, Landroid/content/res/Configuration;->mImeAppBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3104
    return-void
.end method

.method public greylist-max-o writeResConfigToProto(Landroid/util/proto/ProtoOutputStream;JLandroid/util/DisplayMetrics;)V
    .registers 12
    .param p1, "protoOutputStream"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "metrics"    # Landroid/util/DisplayMetrics;

    .line 1534
    iget v0, p4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, p4, Landroid/util/DisplayMetrics;->heightPixels:I

    if-lt v0, v1, :cond_b

    .line 1535
    iget v0, p4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1536
    .local v0, "width":I
    iget v1, p4, Landroid/util/DisplayMetrics;->heightPixels:I

    .local v1, "height":I
    goto :goto_f

    .line 1539
    .end local v0    # "width":I
    .end local v1    # "height":I
    :cond_b
    iget v0, p4, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1541
    .restart local v0    # "width":I
    iget v1, p4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1544
    .restart local v1    # "height":I
    :goto_f
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 1545
    .local v2, "token":J
    const-wide v4, 0x10b00000001L

    invoke-virtual {p0, p1, v4, v5}, Landroid/content/res/Configuration;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1546
    const-wide v4, 0x10d00000002L

    sget v6, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1547
    const-wide v4, 0x10d00000003L

    invoke-virtual {p1, v4, v5, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1548
    const-wide v4, 0x10d00000004L

    invoke-virtual {p1, v4, v5, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1549
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1550
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 2142
    iget v0, p0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2143
    iget v0, p0, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2144
    iget v0, p0, Landroid/content/res/Configuration;->mnc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2146
    invoke-direct {p0}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    .line 2147
    iget-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2149
    iget-boolean v0, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    if-eqz v0, :cond_20

    .line 2150
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_24

    .line 2152
    :cond_20
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2154
    :goto_24
    iget v0, p0, Landroid/content/res/Configuration;->touchscreen:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2155
    iget v0, p0, Landroid/content/res/Configuration;->keyboard:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2156
    iget v0, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2157
    iget v0, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2158
    iget v0, p0, Landroid/content/res/Configuration;->navigation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2159
    iget v0, p0, Landroid/content/res/Configuration;->navigationHidden:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2160
    iget v0, p0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2161
    iget v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2162
    iget v0, p0, Landroid/content/res/Configuration;->colorMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2163
    iget v0, p0, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2164
    iget v0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2165
    iget v0, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2166
    iget v0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2167
    iget v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2168
    iget v0, p0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2169
    iget v0, p0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2170
    iget v0, p0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2171
    iget-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, p1, p2}, Landroid/app/WindowConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2172
    iget v0, p0, Landroid/content/res/Configuration;->assetsSeq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2173
    iget v0, p0, Landroid/content/res/Configuration;->seq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2174
    iget v0, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2177
    iget-object v0, p0, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/IMiuiConfiguration;

    if-eqz v0, :cond_94

    .line 2178
    invoke-interface {v0, p1, p2}, Landroid/content/res/IMiuiConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2181
    :cond_94
    iget v0, p0, Landroid/content/res/Configuration;->xiaomiKeyboard:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2185
    iget-object v0, p0, Landroid/content/res/Configuration;->mImeAppBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2187
    return-void
.end method
