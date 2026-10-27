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
        Landroid/content/res/Configuration$Orientation;,
        Landroid/content/res/Configuration$GrammaticalGender;
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

.field public static final whitelist GRAMMATICAL_GENDER_FEMININE:I = 0x2

.field public static final whitelist GRAMMATICAL_GENDER_MASCULINE:I = 0x3

.field public static final whitelist GRAMMATICAL_GENDER_NEUTRAL:I = 0x1

.field public static final whitelist GRAMMATICAL_GENDER_NOT_SPECIFIED:I = 0x0

.field public static final blacklist GRAMMATICAL_GENDER_UNDEFINED:I = -0x1

.field public static final whitelist HARDKEYBOARDHIDDEN_NO:I = 0x1

.field public static final whitelist HARDKEYBOARDHIDDEN_UNDEFINED:I = 0x0

.field public static final whitelist HARDKEYBOARDHIDDEN_YES:I = 0x2

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

.field public static final blacklist NATIVE_CONFIG_GRAMMATICAL_GENDER:I = 0x20000

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

.field private static final greylist-max-o XML_ATTR_APP_BOUNDS:Ljava/lang/String; = "app_bounds"

.field private static final greylist-max-o XML_ATTR_COLOR_MODE:Ljava/lang/String; = "clrMod"

.field private static final greylist-max-o XML_ATTR_DENSITY:Ljava/lang/String; = "density"

.field private static final greylist-max-o XML_ATTR_FONT_SCALE:Ljava/lang/String; = "fs"

.field private static final blacklist XML_ATTR_FONT_WEIGHT_ADJUSTMENT:Ljava/lang/String; = "fontWeightAdjustment"

.field private static final blacklist XML_ATTR_GRAMMATICAL_GENDER:Ljava/lang/String; = "grammaticalGender"

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

.field public whitelist fontScale:F

.field public whitelist fontWeightAdjustment:I

.field public whitelist hardKeyboardHidden:I

.field public whitelist keyboard:I

.field public whitelist keyboardHidden:I

.field public whitelist locale:Ljava/util/Locale;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private blacklist mGrammaticalGender:I

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


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 96
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    sput-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    .line 2176
    new-instance v0, Landroid/content/res/Configuration$1;

    invoke-direct {v0}, Landroid/content/res/Configuration$1;-><init>()V

    sput-object v0, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 1062
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 417
    new-instance v0, Landroid/app/WindowConfiguration;

    invoke-direct {v0}, Landroid/app/WindowConfiguration;-><init>()V

    iput-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 1063
    invoke-virtual {p0}, Landroid/content/res/Configuration;->unset()V

    .line 1064
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/res/Configuration;)V
    .registers 3

    .line 1069
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 417
    new-instance v0, Landroid/app/WindowConfiguration;

    invoke-direct {v0}, Landroid/app/WindowConfiguration;-><init>()V

    iput-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 1070
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 1071
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 2190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 417
    new-instance v0, Landroid/app/WindowConfiguration;

    invoke-direct {v0}, Landroid/app/WindowConfiguration;-><init>()V

    iput-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 2191
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->readFromParcel(Landroid/os/Parcel;)V

    .line 2192
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/content/res/Configuration-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static greylist-max-o configurationDiffToString(I)Ljava/lang/String;
    .registers 3

    .line 492
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 493
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_e

    .line 494
    const-string v1, "CONFIG_MCC"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 496
    :cond_e
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_17

    .line 497
    const-string v1, "CONFIG_MNC"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 499
    :cond_17
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_20

    .line 500
    const-string v1, "CONFIG_LOCALE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 502
    :cond_20
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_29

    .line 503
    const-string v1, "CONFIG_TOUCHSCREEN"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 505
    :cond_29
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_32

    .line 506
    const-string v1, "CONFIG_KEYBOARD"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 508
    :cond_32
    and-int/lit8 v1, p0, 0x20

    if-eqz v1, :cond_3b

    .line 509
    const-string v1, "CONFIG_KEYBOARD_HIDDEN"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 511
    :cond_3b
    and-int/lit8 v1, p0, 0x40

    if-eqz v1, :cond_44

    .line 512
    const-string v1, "CONFIG_NAVIGATION"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 514
    :cond_44
    and-int/lit16 v1, p0, 0x80

    if-eqz v1, :cond_4d

    .line 515
    const-string v1, "CONFIG_ORIENTATION"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 517
    :cond_4d
    and-int/lit16 v1, p0, 0x100

    if-eqz v1, :cond_56

    .line 518
    const-string v1, "CONFIG_SCREEN_LAYOUT"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 520
    :cond_56
    and-int/lit16 v1, p0, 0x4000

    if-eqz v1, :cond_5f

    .line 521
    const-string v1, "CONFIG_COLOR_MODE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 523
    :cond_5f
    and-int/lit16 v1, p0, 0x200

    if-eqz v1, :cond_68

    .line 524
    const-string v1, "CONFIG_UI_MODE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 526
    :cond_68
    and-int/lit16 v1, p0, 0x400

    if-eqz v1, :cond_71

    .line 527
    const-string v1, "CONFIG_SCREEN_SIZE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 529
    :cond_71
    and-int/lit16 v1, p0, 0x800

    if-eqz v1, :cond_7a

    .line 530
    const-string v1, "CONFIG_SMALLEST_SCREEN_SIZE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 532
    :cond_7a
    and-int/lit16 v1, p0, 0x1000

    if-eqz v1, :cond_83

    .line 533
    const-string v1, "CONFIG_DENSITY"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 535
    :cond_83
    and-int/lit16 v1, p0, 0x2000

    if-eqz v1, :cond_8c

    .line 536
    const-string v1, "CONFIG_LAYOUT_DIRECTION"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 538
    :cond_8c
    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v1, p0

    if-eqz v1, :cond_96

    .line 539
    const-string v1, "CONFIG_FONT_SCALE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 541
    :cond_96
    const/high16 v1, -0x80000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_a0

    .line 542
    const-string v1, "CONFIG_ASSETS_PATHS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 544
    :cond_a0
    const/high16 v1, 0x20000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_aa

    .line 545
    const-string v1, "CONFIG_WINDOW_CONFIGURATION"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 547
    :cond_aa
    const/high16 v1, 0x10000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_b4

    .line 548
    const-string v1, "CONFIG_AUTO_BOLD_TEXT"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 550
    :cond_b4
    const v1, 0x8000

    and-int/2addr p0, v1

    if-eqz p0, :cond_bf

    .line 551
    const-string p0, "CONFIG_GRAMMATICAL_GENDER"

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 553
    :cond_bf
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ", "

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string/jumbo v0, "}"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private greylist-max-o fixUpLocaleList()V
    .registers 5

    .line 1076
    iget-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    const/4 v1, 0x0

    if-nez v0, :cond_d

    iget-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v0}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1f

    :cond_d
    iget-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v0, :cond_36

    iget-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v2, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    .line 1077
    invoke-virtual {v2, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 1078
    :cond_1f
    iget-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-nez v0, :cond_28

    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object v0

    goto :goto_34

    :cond_28
    new-instance v0, Landroid/os/LocaleList;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/util/Locale;

    iget-object v3, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    aput-object v3, v2, v1

    invoke-direct {v0, v2}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    :goto_34
    iput-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    .line 1080
    :cond_36
    return-void
.end method

.method public static whitelist generateDelta(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;
    .registers 5

    .line 2843
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 2844
    iget v1, p0, Landroid/content/res/Configuration;->fontScale:F

    iget v2, p1, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_11

    .line 2845
    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    iput v1, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 2848
    :cond_11
    iget v1, p0, Landroid/content/res/Configuration;->mcc:I

    iget v2, p1, Landroid/content/res/Configuration;->mcc:I

    if-eq v1, v2, :cond_1b

    .line 2849
    iget v1, p1, Landroid/content/res/Configuration;->mcc:I

    iput v1, v0, Landroid/content/res/Configuration;->mcc:I

    .line 2852
    :cond_1b
    iget v1, p0, Landroid/content/res/Configuration;->mnc:I

    iget v2, p1, Landroid/content/res/Configuration;->mnc:I

    if-eq v1, v2, :cond_25

    .line 2853
    iget v1, p1, Landroid/content/res/Configuration;->mnc:I

    iput v1, v0, Landroid/content/res/Configuration;->mnc:I

    .line 2856
    :cond_25
    invoke-direct {p0}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    .line 2857
    invoke-direct {p1}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    .line 2858
    iget-object v1, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    iget-object v2, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3d

    .line 2859
    iget-object v1, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    iput-object v1, v0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    .line 2860
    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 2863
    :cond_3d
    iget v1, p0, Landroid/content/res/Configuration;->mGrammaticalGender:I

    iget v2, p1, Landroid/content/res/Configuration;->mGrammaticalGender:I

    if-eq v1, v2, :cond_47

    .line 2864
    iget v1, p1, Landroid/content/res/Configuration;->mGrammaticalGender:I

    iput v1, v0, Landroid/content/res/Configuration;->mGrammaticalGender:I

    .line 2867
    :cond_47
    iget v1, p0, Landroid/content/res/Configuration;->touchscreen:I

    iget v2, p1, Landroid/content/res/Configuration;->touchscreen:I

    if-eq v1, v2, :cond_51

    .line 2868
    iget v1, p1, Landroid/content/res/Configuration;->touchscreen:I

    iput v1, v0, Landroid/content/res/Configuration;->touchscreen:I

    .line 2871
    :cond_51
    iget v1, p0, Landroid/content/res/Configuration;->keyboard:I

    iget v2, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v1, v2, :cond_5b

    .line 2872
    iget v1, p1, Landroid/content/res/Configuration;->keyboard:I

    iput v1, v0, Landroid/content/res/Configuration;->keyboard:I

    .line 2875
    :cond_5b
    iget v1, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v2, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eq v1, v2, :cond_65

    .line 2876
    iget v1, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    iput v1, v0, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 2879
    :cond_65
    iget v1, p0, Landroid/content/res/Configuration;->navigation:I

    iget v2, p1, Landroid/content/res/Configuration;->navigation:I

    if-eq v1, v2, :cond_6f

    .line 2880
    iget v1, p1, Landroid/content/res/Configuration;->navigation:I

    iput v1, v0, Landroid/content/res/Configuration;->navigation:I

    .line 2883
    :cond_6f
    iget v1, p0, Landroid/content/res/Configuration;->navigationHidden:I

    iget v2, p1, Landroid/content/res/Configuration;->navigationHidden:I

    if-eq v1, v2, :cond_79

    .line 2884
    iget v1, p1, Landroid/content/res/Configuration;->navigationHidden:I

    iput v1, v0, Landroid/content/res/Configuration;->navigationHidden:I

    .line 2887
    :cond_79
    iget v1, p0, Landroid/content/res/Configuration;->orientation:I

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v2, :cond_83

    .line 2888
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iput v1, v0, Landroid/content/res/Configuration;->orientation:I

    .line 2891
    :cond_83
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    if-eq v1, v2, :cond_96

    .line 2893
    iget v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    .line 2896
    :cond_96
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v1, v1, 0xc0

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v2, v2, 0xc0

    if-eq v1, v2, :cond_a9

    .line 2898
    iget v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v2, v2, 0xc0

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    .line 2901
    :cond_a9
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0x30

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0x30

    if-eq v1, v2, :cond_bc

    .line 2903
    iget v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0x30

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    .line 2906
    :cond_bc
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v1, v1, 0x300

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v2, v2, 0x300

    if-eq v1, v2, :cond_cf

    .line 2908
    iget v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v2, v2, 0x300

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    .line 2911
    :cond_cf
    iget v1, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v1, v1, 0x3

    iget v2, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v2, v2, 0x3

    if-eq v1, v2, :cond_e2

    .line 2913
    iget v1, v0, Landroid/content/res/Configuration;->colorMode:I

    iget v2, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v2, v2, 0x3

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/res/Configuration;->colorMode:I

    .line 2916
    :cond_e2
    iget v1, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v1, v1, 0xc

    iget v2, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v2, v2, 0xc

    if-eq v1, v2, :cond_f5

    .line 2918
    iget v1, v0, Landroid/content/res/Configuration;->colorMode:I

    iget v2, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v2, v2, 0xc

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/res/Configuration;->colorMode:I

    .line 2921
    :cond_f5
    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0xf

    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0xf

    if-eq v1, v2, :cond_108

    .line 2922
    iget v1, v0, Landroid/content/res/Configuration;->uiMode:I

    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0xf

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/res/Configuration;->uiMode:I

    .line 2925
    :cond_108
    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x30

    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    if-eq v1, v2, :cond_11b

    .line 2926
    iget v1, v0, Landroid/content/res/Configuration;->uiMode:I

    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/res/Configuration;->uiMode:I

    .line 2929
    :cond_11b
    iget v1, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eq v1, v2, :cond_125

    .line 2930
    iget v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v1, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 2933
    :cond_125
    iget v1, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v1, v2, :cond_12f

    .line 2934
    iget v1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v1, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 2937
    :cond_12f
    iget v1, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v2, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eq v1, v2, :cond_139

    .line 2938
    iget v1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v1, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 2941
    :cond_139
    iget v1, p0, Landroid/content/res/Configuration;->densityDpi:I

    iget v2, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v1, v2, :cond_143

    .line 2942
    iget v1, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput v1, v0, Landroid/content/res/Configuration;->densityDpi:I

    .line 2945
    :cond_143
    iget v1, p0, Landroid/content/res/Configuration;->assetsSeq:I

    iget v2, p1, Landroid/content/res/Configuration;->assetsSeq:I

    if-eq v1, v2, :cond_14d

    .line 2946
    iget v1, p1, Landroid/content/res/Configuration;->assetsSeq:I

    iput v1, v0, Landroid/content/res/Configuration;->assetsSeq:I

    .line 2949
    :cond_14d
    iget-object v1, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v2, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1, v2}, Landroid/app/WindowConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15e

    .line 2950
    iget-object v1, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v2, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1, v2}, Landroid/app/WindowConfiguration;->setTo(Landroid/app/WindowConfiguration;)V

    .line 2953
    :cond_15e
    iget p0, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    iget v1, p1, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    if-eq p0, v1, :cond_168

    .line 2954
    iget p0, p1, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    iput p0, v0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    .line 2956
    :cond_168
    return-object v0
.end method

.method private static greylist-max-o getScreenLayoutNoDirection(I)I
    .registers 1

    .line 2445
    and-int/lit16 p0, p0, -0xc1

    return p0
.end method

.method public static blacklist getUiModeTypeString(I)Ljava/lang/String;
    .registers 1

    .line 2813
    packed-switch p0, :pswitch_data_1a

    .line 2827
    const/4 p0, 0x0

    return-object p0

    .line 2825
    :pswitch_5
    const-string/jumbo p0, "vrheadset"

    return-object p0

    .line 2823
    :pswitch_9
    const-string/jumbo p0, "watch"

    return-object p0

    .line 2815
    :pswitch_d
    const-string p0, "appliance"

    return-object p0

    .line 2819
    :pswitch_10
    const-string/jumbo p0, "television"

    return-object p0

    .line 2821
    :pswitch_14
    const-string p0, "car"

    return-object p0

    .line 2817
    :pswitch_17
    const-string p0, "desk"

    return-object p0

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
    .registers 9

    .line 2487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2488
    const/4 v1, 0x0

    :goto_6
    invoke-virtual {p0}, Landroid/os/LocaleList;->size()I

    move-result v2

    if-ge v1, v2, :cond_97

    .line 2489
    invoke-virtual {p0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v2

    .line 2490
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    .line 2491
    if-nez v3, :cond_1c

    .line 2492
    goto/16 :goto_93

    .line 2494
    :cond_1c
    invoke-virtual {v2}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    .line 2495
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    .line 2496
    invoke-virtual {v2}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    .line 2499
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-eqz v7, :cond_3f

    .line 2500
    const-string v7, ","

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2502
    :cond_3f
    const/4 v7, 0x2

    if-ne v3, v7, :cond_61

    if-nez v4, :cond_61

    if-eqz v5, :cond_48

    if-ne v5, v7, :cond_61

    :cond_48
    if-nez v6, :cond_61

    .line 2504
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2505
    if-ne v5, v7, :cond_93

    .line 2506
    const-string v3, "-r"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_93

    .line 2509
    :cond_61
    const-string v3, "b+"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2510
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2511
    const-string v3, "+"

    if-eqz v4, :cond_7b

    .line 2512
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2513
    invoke-virtual {v2}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2515
    :cond_7b
    if-eqz v5, :cond_87

    .line 2516
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2517
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2519
    :cond_87
    if-eqz v6, :cond_93

    .line 2520
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2521
    invoke-virtual {v2}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2488
    :cond_93
    :goto_93
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_6

    .line 2525
    :cond_97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist needNewResources(II)Z
    .registers 3

    .line 2065
    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    const/high16 v0, 0x40000000    # 2.0f

    or-int/2addr p1, v0

    .line 2067
    and-int/2addr p0, p1

    if-eqz p0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method public static greylist-max-o readXmlAttrs(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Configuration;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2992
    nop

    .line 2993
    const-string v0, "fs"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    .line 2992
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    iput v0, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 2994
    const-string/jumbo v0, "mcc"

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Landroid/content/res/Configuration;->mcc:I

    .line 2995
    const-string/jumbo v0, "mnc"

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Landroid/content/res/Configuration;->mnc:I

    .line 2997
    const-string/jumbo v0, "locales"

    invoke-static {p0, v0}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2998
    invoke-static {v0}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v0

    iput-object v0, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    .line 2999
    iget-object v0, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 3001
    const-string/jumbo v0, "touch"

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Landroid/content/res/Configuration;->touchscreen:I

    .line 3003
    const-string/jumbo v0, "key"

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Landroid/content/res/Configuration;->keyboard:I

    .line 3005
    const-string/jumbo v0, "keyHid"

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 3007
    nop

    .line 3008
    const-string v0, "hardKeyHid"

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 3010
    const-string/jumbo v0, "nav"

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Landroid/content/res/Configuration;->navigation:I

    .line 3012
    const-string/jumbo v0, "navHid"

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Landroid/content/res/Configuration;->navigationHidden:I

    .line 3014
    const-string/jumbo v0, "ori"

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Landroid/content/res/Configuration;->orientation:I

    .line 3016
    const-string/jumbo v0, "scrLay"

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    .line 3018
    const-string v0, "clrMod"

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Landroid/content/res/Configuration;->colorMode:I

    .line 3020
    const-string/jumbo v0, "ui"

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Landroid/content/res/Configuration;->uiMode:I

    .line 3021
    const-string/jumbo v0, "width"

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 3023
    const-string v0, "height"

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 3025
    nop

    .line 3026
    const-string/jumbo v0, "sw"

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 3028
    const-string v0, "density"

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 3030
    const-string v0, "fontWeightAdjustment"

    const v1, 0x7fffffff

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    .line 3032
    const-string v0, "grammaticalGender"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result p0

    iput p0, p1, Landroid/content/res/Configuration;->mGrammaticalGender:I

    .line 3037
    return-void
.end method

.method public static greylist-max-o reduceScreenLayout(III)I
    .registers 8

    .line 437
    const/16 v0, 0x1d6

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge p1, v0, :cond_a

    .line 440
    nop

    .line 441
    nop

    .line 442
    move v4, v1

    goto :goto_36

    .line 445
    :cond_a
    const/16 v0, 0x3c0

    const/4 v3, 0x3

    if-lt p1, v0, :cond_15

    const/16 v0, 0x2d0

    if-lt p2, v0, :cond_15

    .line 448
    const/4 v0, 0x4

    goto :goto_20

    .line 449
    :cond_15
    const/16 v0, 0x280

    if-lt p1, v0, :cond_1f

    const/16 v0, 0x1e0

    if-lt p2, v0, :cond_1f

    .line 452
    move v0, v3

    goto :goto_20

    .line 454
    :cond_1f
    const/4 v0, 0x2

    .line 460
    :goto_20
    const/16 v4, 0x141

    if-gt p2, v4, :cond_2b

    const/16 v4, 0x23a

    if-le p1, v4, :cond_29

    goto :goto_2b

    .line 463
    :cond_29
    move v4, v1

    goto :goto_2c

    .line 461
    :cond_2b
    :goto_2b
    move v4, v2

    .line 467
    :goto_2c
    mul-int/2addr p1, v3

    div-int/lit8 p1, p1, 0x5

    sub-int/2addr p2, v2

    if-lt p1, p2, :cond_35

    .line 469
    move v1, v2

    move v2, v0

    goto :goto_36

    .line 471
    :cond_35
    move v2, v0

    .line 477
    :goto_36
    if-nez v1, :cond_3c

    .line 478
    and-int/lit8 p0, p0, -0x31

    or-int/lit8 p0, p0, 0x10

    .line 480
    :cond_3c
    if-eqz v4, :cond_41

    .line 481
    const/high16 p1, 0x10000000

    or-int/2addr p0, p1

    .line 483
    :cond_41
    and-int/lit8 p1, p0, 0xf

    .line 484
    if-ge v2, p1, :cond_48

    .line 485
    and-int/lit8 p0, p0, -0x10

    or-int/2addr p0, v2

    .line 487
    :cond_48
    return p0
.end method

.method public static greylist-max-o resetScreenLayout(I)I
    .registers 2

    .line 422
    const v0, -0x10000040

    and-int/2addr p0, v0

    or-int/lit8 p0, p0, 0x24

    return p0
.end method

.method public static greylist-max-r resourceQualifierString(Landroid/content/res/Configuration;)Ljava/lang/String;
    .registers 2

    .line 2537
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/content/res/Configuration;->resourceQualifierString(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o resourceQualifierString(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)Ljava/lang/String;
    .registers 6

    .line 2547
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2549
    iget v1, p0, Landroid/content/res/Configuration;->mcc:I

    if-eqz v1, :cond_3f

    .line 2550
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

    .line 2551
    iget v1, p0, Landroid/content/res/Configuration;->mnc:I

    if-eqz v1, :cond_3f

    .line 2552
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

    .line 2556
    :cond_3f
    iget-object v1, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v1}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_56

    .line 2557
    iget-object v1, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-static {v1}, Landroid/content/res/Configuration;->localesToResourceQualifier(Landroid/os/LocaleList;)Ljava/lang/String;

    move-result-object v1

    .line 2558
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_56

    .line 2559
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2563
    :cond_56
    iget v1, p0, Landroid/content/res/Configuration;->mGrammaticalGender:I

    packed-switch v1, :pswitch_data_2c2

    goto :goto_70

    .line 2571
    :pswitch_5c
    const-string/jumbo v1, "masculine"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2572
    goto :goto_70

    .line 2568
    :pswitch_63
    const-string v1, "feminine"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2569
    goto :goto_70

    .line 2565
    :pswitch_69
    const-string/jumbo v1, "neuter"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2566
    nop

    .line 2577
    :goto_70
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v1, v1, 0xc0

    sparse-switch v1, :sswitch_data_2cc

    goto :goto_86

    .line 2582
    :sswitch_78
    const-string/jumbo v1, "ldrtl"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2583
    goto :goto_86

    .line 2579
    :sswitch_7f
    const-string/jumbo v1, "ldltr"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2580
    nop

    .line 2588
    :goto_86
    iget v1, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const-string v2, "dp"

    if-eqz v1, :cond_a9

    .line 2589
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

    .line 2592
    :cond_a9
    iget v1, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v1, :cond_ca

    .line 2593
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

    .line 2596
    :cond_ca
    iget v1, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eqz v1, :cond_ea

    .line 2597
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

    .line 2600
    :cond_ea
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    packed-switch v1, :pswitch_data_2d6

    goto :goto_10e

    .line 2611
    :pswitch_f2
    const-string/jumbo v1, "xlarge"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2612
    goto :goto_10e

    .line 2608
    :pswitch_f9
    const-string/jumbo v1, "large"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2609
    goto :goto_10e

    .line 2605
    :pswitch_100
    const-string/jumbo v1, "normal"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2606
    goto :goto_10e

    .line 2602
    :pswitch_107
    const-string/jumbo v1, "small"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2603
    nop

    .line 2617
    :goto_10e
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0x30

    sparse-switch v1, :sswitch_data_2e2

    goto :goto_124

    .line 2619
    :sswitch_116
    const-string/jumbo v1, "long"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2620
    goto :goto_124

    .line 2622
    :sswitch_11d
    const-string/jumbo v1, "notlong"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2623
    nop

    .line 2628
    :goto_124
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v1, v1, 0x300

    sparse-switch v1, :sswitch_data_2ec

    goto :goto_13a

    .line 2630
    :sswitch_12c
    const-string/jumbo v1, "round"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2631
    goto :goto_13a

    .line 2633
    :sswitch_133
    const-string/jumbo v1, "notround"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2634
    nop

    .line 2639
    :goto_13a
    iget v1, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v1, v1, 0x3

    packed-switch v1, :pswitch_data_2f6

    goto :goto_150

    .line 2641
    :pswitch_142
    const-string/jumbo v1, "widecg"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2642
    goto :goto_150

    .line 2644
    :pswitch_149
    const-string/jumbo v1, "nowidecg"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2645
    nop

    .line 2650
    :goto_150
    iget v1, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v1, v1, 0xc

    sparse-switch v1, :sswitch_data_2fe

    goto :goto_165

    .line 2652
    :sswitch_158
    const-string v1, "highdr"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2653
    goto :goto_165

    .line 2655
    :sswitch_15e
    const-string/jumbo v1, "lowdr"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2656
    nop

    .line 2661
    :goto_165
    iget v1, p0, Landroid/content/res/Configuration;->orientation:I

    packed-switch v1, :pswitch_data_308

    goto :goto_179

    .line 2663
    :pswitch_16b
    const-string/jumbo v1, "land"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2664
    goto :goto_179

    .line 2666
    :pswitch_172
    const-string/jumbo v1, "port"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2667
    nop

    .line 2672
    :goto_179
    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0xf

    .line 2673
    invoke-static {v1}, Landroid/content/res/Configuration;->getUiModeTypeString(I)Ljava/lang/String;

    move-result-object v1

    .line 2674
    if-eqz v1, :cond_186

    .line 2675
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2678
    :cond_186
    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x30

    sparse-switch v1, :sswitch_data_310

    goto :goto_19c

    .line 2680
    :sswitch_18e
    const-string/jumbo v1, "night"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2681
    goto :goto_19c

    .line 2683
    :sswitch_195
    const-string/jumbo v1, "notnight"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2684
    nop

    .line 2689
    :goto_19c
    iget v1, p0, Landroid/content/res/Configuration;->densityDpi:I

    sparse-switch v1, :sswitch_data_31a

    .line 2720
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "dpi"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1f8

    .line 2717
    :sswitch_1ba
    const-string/jumbo v1, "nodpi"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2718
    goto :goto_1f8

    .line 2714
    :sswitch_1c1
    const-string v1, "anydpi"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2715
    goto :goto_1f8

    .line 2711
    :sswitch_1c7
    const-string/jumbo v1, "xxxhdpi"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2712
    goto :goto_1f8

    .line 2708
    :sswitch_1ce
    const-string/jumbo v1, "xxhdpi"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2709
    goto :goto_1f8

    .line 2705
    :sswitch_1d5
    const-string/jumbo v1, "xhdpi"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2706
    goto :goto_1f8

    .line 2702
    :sswitch_1dc
    const-string v1, "hdpi"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2703
    goto :goto_1f8

    .line 2699
    :sswitch_1e2
    const-string/jumbo v1, "tvdpi"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2700
    goto :goto_1f8

    .line 2696
    :sswitch_1e9
    const-string/jumbo v1, "mdpi"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2697
    goto :goto_1f8

    .line 2693
    :sswitch_1f0
    const-string/jumbo v1, "ldpi"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2694
    goto :goto_1f8

    .line 2691
    :sswitch_1f7
    nop

    .line 2724
    :goto_1f8
    iget v1, p0, Landroid/content/res/Configuration;->touchscreen:I

    packed-switch v1, :pswitch_data_344

    :pswitch_1fd
    goto :goto_20b

    .line 2729
    :pswitch_1fe
    const-string v1, "finger"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2730
    goto :goto_20b

    .line 2726
    :pswitch_204
    const-string/jumbo v1, "notouch"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2727
    nop

    .line 2735
    :goto_20b
    iget v1, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    packed-switch v1, :pswitch_data_34e

    goto :goto_226

    .line 2743
    :pswitch_211
    const-string/jumbo v1, "keyssoft"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2744
    goto :goto_226

    .line 2740
    :pswitch_218
    const-string/jumbo v1, "keyshidden"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2741
    goto :goto_226

    .line 2737
    :pswitch_21f
    const-string/jumbo v1, "keysexposed"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2738
    nop

    .line 2749
    :goto_226
    iget v1, p0, Landroid/content/res/Configuration;->keyboard:I

    packed-switch v1, :pswitch_data_358

    goto :goto_240

    .line 2757
    :pswitch_22c
    const-string v1, "12key"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2758
    goto :goto_240

    .line 2754
    :pswitch_232
    const-string/jumbo v1, "qwerty"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2755
    goto :goto_240

    .line 2751
    :pswitch_239
    const-string/jumbo v1, "nokeys"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2752
    nop

    .line 2763
    :goto_240
    iget v1, p0, Landroid/content/res/Configuration;->navigationHidden:I

    packed-switch v1, :pswitch_data_362

    goto :goto_254

    .line 2768
    :pswitch_246
    const-string/jumbo v1, "navhidden"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2769
    goto :goto_254

    .line 2765
    :pswitch_24d
    const-string/jumbo v1, "navexposed"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2766
    nop

    .line 2774
    :goto_254
    iget p0, p0, Landroid/content/res/Configuration;->navigation:I

    packed-switch p0, :pswitch_data_36a

    goto :goto_275

    .line 2785
    :pswitch_25a
    const-string/jumbo p0, "wheel"

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2786
    goto :goto_275

    .line 2782
    :pswitch_261
    const-string/jumbo p0, "trackball"

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2783
    goto :goto_275

    .line 2779
    :pswitch_268
    const-string p0, "dpad"

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2780
    goto :goto_275

    .line 2776
    :pswitch_26e
    const-string/jumbo p0, "nonav"

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2777
    nop

    .line 2791
    :goto_275
    if-eqz p1, :cond_2a1

    .line 2793
    iget p0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-lt p0, v1, :cond_282

    .line 2794
    iget p0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 2795
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_286

    .line 2798
    :cond_282
    iget p0, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 2800
    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 2802
    :goto_286
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string/jumbo v1, "x"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2805
    :cond_2a1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "v"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget p1, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2806
    const-string p0, "-"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_2c2
    .packed-switch 0x1
        :pswitch_69
        :pswitch_63
        :pswitch_5c
    .end packed-switch

    :sswitch_data_2cc
    .sparse-switch
        0x40 -> :sswitch_7f
        0x80 -> :sswitch_78
    .end sparse-switch

    :pswitch_data_2d6
    .packed-switch 0x1
        :pswitch_107
        :pswitch_100
        :pswitch_f9
        :pswitch_f2
    .end packed-switch

    :sswitch_data_2e2
    .sparse-switch
        0x10 -> :sswitch_11d
        0x20 -> :sswitch_116
    .end sparse-switch

    :sswitch_data_2ec
    .sparse-switch
        0x100 -> :sswitch_133
        0x200 -> :sswitch_12c
    .end sparse-switch

    :pswitch_data_2f6
    .packed-switch 0x1
        :pswitch_149
        :pswitch_142
    .end packed-switch

    :sswitch_data_2fe
    .sparse-switch
        0x4 -> :sswitch_15e
        0x8 -> :sswitch_158
    .end sparse-switch

    :pswitch_data_308
    .packed-switch 0x1
        :pswitch_172
        :pswitch_16b
    .end packed-switch

    :sswitch_data_310
    .sparse-switch
        0x10 -> :sswitch_195
        0x20 -> :sswitch_18e
    .end sparse-switch

    :sswitch_data_31a
    .sparse-switch
        0x0 -> :sswitch_1f7
        0x78 -> :sswitch_1f0
        0xa0 -> :sswitch_1e9
        0xd5 -> :sswitch_1e2
        0xf0 -> :sswitch_1dc
        0x140 -> :sswitch_1d5
        0x1e0 -> :sswitch_1ce
        0x280 -> :sswitch_1c7
        0xfffe -> :sswitch_1c1
        0xffff -> :sswitch_1ba
    .end sparse-switch

    :pswitch_data_344
    .packed-switch 0x1
        :pswitch_204
        :pswitch_1fd
        :pswitch_1fe
    .end packed-switch

    :pswitch_data_34e
    .packed-switch 0x1
        :pswitch_21f
        :pswitch_218
        :pswitch_211
    .end packed-switch

    :pswitch_data_358
    .packed-switch 0x1
        :pswitch_239
        :pswitch_232
        :pswitch_22c
    .end packed-switch

    :pswitch_data_362
    .packed-switch 0x1
        :pswitch_24d
        :pswitch_246
    .end packed-switch

    :pswitch_data_36a
    .packed-switch 0x1
        :pswitch_26e
        :pswitch_268
        :pswitch_261
        :pswitch_25a
    .end packed-switch
.end method

.method public static greylist-max-o uiModeToString(I)Ljava/lang/String;
    .registers 1

    .line 1564
    packed-switch p0, :pswitch_data_20

    .line 1582
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1580
    :pswitch_8
    const-string p0, "UI_MODE_TYPE_VR_HEADSET"

    return-object p0

    .line 1578
    :pswitch_b
    const-string p0, "UI_MODE_TYPE_WATCH"

    return-object p0

    .line 1576
    :pswitch_e
    const-string p0, "UI_MODE_TYPE_APPLIANCE"

    return-object p0

    .line 1574
    :pswitch_11
    const-string p0, "UI_MODE_TYPE_TELEVISION"

    return-object p0

    .line 1572
    :pswitch_14
    const-string p0, "UI_MODE_TYPE_CAR"

    return-object p0

    .line 1570
    :pswitch_17
    const-string p0, "UI_MODE_TYPE_DESK"

    return-object p0

    .line 1568
    :pswitch_1a
    const-string p0, "UI_MODE_TYPE_NORMAL"

    return-object p0

    .line 1566
    :pswitch_1d
    const-string p0, "UI_MODE_TYPE_UNDEFINED"

    return-object p0

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

    .line 2410
    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    .line 2411
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 2412
    return-void
.end method

.method public whitelist compareTo(Landroid/content/res/Configuration;)I
    .registers 8

    .line 2205
    iget v0, p0, Landroid/content/res/Configuration;->fontScale:F

    .line 2206
    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 2207
    cmpg-float v2, v0, v1

    const/4 v3, -0x1

    if-gez v2, :cond_a

    return v3

    .line 2208
    :cond_a
    cmpl-float v0, v0, v1

    const/4 v1, 0x1

    if-lez v0, :cond_10

    return v1

    .line 2209
    :cond_10
    iget v0, p0, Landroid/content/res/Configuration;->mcc:I

    iget v2, p1, Landroid/content/res/Configuration;->mcc:I

    sub-int/2addr v0, v2

    .line 2210
    if-eqz v0, :cond_18

    return v0

    .line 2211
    :cond_18
    iget v0, p0, Landroid/content/res/Configuration;->mnc:I

    iget v2, p1, Landroid/content/res/Configuration;->mnc:I

    sub-int/2addr v0, v2

    .line 2212
    if-eqz v0, :cond_20

    return v0

    .line 2214
    :cond_20
    invoke-direct {p0}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    .line 2215
    invoke-direct {p1}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    .line 2218
    iget-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v0}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 2219
    iget-object v0, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v0}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_ae

    return v1

    .line 2220
    :cond_37
    iget-object v0, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v0}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 2221
    return v3

    .line 2223
    :cond_40
    iget-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v0}, Landroid/os/LocaleList;->size()I

    move-result v0

    iget-object v1, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v1}, Landroid/os/LocaleList;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2224
    const/4 v1, 0x0

    :goto_51
    if-ge v1, v0, :cond_9e

    .line 2225
    iget-object v2, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v2, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v2

    .line 2226
    iget-object v3, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v3, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v3

    .line 2227
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    .line 2228
    if-eqz v4, :cond_6e

    return v4

    .line 2229
    :cond_6e
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    .line 2230
    if-eqz v4, :cond_7d

    return v4

    .line 2231
    :cond_7d
    invoke-virtual {v2}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    .line 2232
    if-eqz v4, :cond_8c

    return v4

    .line 2233
    :cond_8c
    invoke-virtual {v2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    .line 2234
    if-eqz v2, :cond_9b

    return v2

    .line 2224
    :cond_9b
    add-int/lit8 v1, v1, 0x1

    goto :goto_51

    .line 2236
    :cond_9e
    iget-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v0}, Landroid/os/LocaleList;->size()I

    move-result v0

    iget-object v1, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v1}, Landroid/os/LocaleList;->size()I

    move-result v1

    sub-int/2addr v0, v1

    .line 2237
    if-eqz v0, :cond_ae

    return v0

    .line 2240
    :cond_ae
    iget v0, p0, Landroid/content/res/Configuration;->mGrammaticalGender:I

    iget v1, p1, Landroid/content/res/Configuration;->mGrammaticalGender:I

    sub-int/2addr v0, v1

    .line 2241
    if-eqz v0, :cond_b6

    return v0

    .line 2242
    :cond_b6
    iget v0, p0, Landroid/content/res/Configuration;->touchscreen:I

    iget v1, p1, Landroid/content/res/Configuration;->touchscreen:I

    sub-int/2addr v0, v1

    .line 2243
    if-eqz v0, :cond_be

    return v0

    .line 2244
    :cond_be
    iget v0, p0, Landroid/content/res/Configuration;->keyboard:I

    iget v1, p1, Landroid/content/res/Configuration;->keyboard:I

    sub-int/2addr v0, v1

    .line 2245
    if-eqz v0, :cond_c6

    return v0

    .line 2246
    :cond_c6
    iget v0, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v1, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    sub-int/2addr v0, v1

    .line 2247
    if-eqz v0, :cond_ce

    return v0

    .line 2248
    :cond_ce
    iget v0, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v1, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    sub-int/2addr v0, v1

    .line 2249
    if-eqz v0, :cond_d6

    return v0

    .line 2250
    :cond_d6
    iget v0, p0, Landroid/content/res/Configuration;->navigation:I

    iget v1, p1, Landroid/content/res/Configuration;->navigation:I

    sub-int/2addr v0, v1

    .line 2251
    if-eqz v0, :cond_de

    return v0

    .line 2252
    :cond_de
    iget v0, p0, Landroid/content/res/Configuration;->navigationHidden:I

    iget v1, p1, Landroid/content/res/Configuration;->navigationHidden:I

    sub-int/2addr v0, v1

    .line 2253
    if-eqz v0, :cond_e6

    return v0

    .line 2254
    :cond_e6
    iget v0, p0, Landroid/content/res/Configuration;->orientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    sub-int/2addr v0, v1

    .line 2255
    if-eqz v0, :cond_ee

    return v0

    .line 2256
    :cond_ee
    iget v0, p0, Landroid/content/res/Configuration;->colorMode:I

    iget v1, p1, Landroid/content/res/Configuration;->colorMode:I

    sub-int/2addr v0, v1

    .line 2257
    if-eqz v0, :cond_f6

    return v0

    .line 2258
    :cond_f6
    iget v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    iget v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    sub-int/2addr v0, v1

    .line 2259
    if-eqz v0, :cond_fe

    return v0

    .line 2260
    :cond_fe
    iget v0, p0, Landroid/content/res/Configuration;->uiMode:I

    iget v1, p1, Landroid/content/res/Configuration;->uiMode:I

    sub-int/2addr v0, v1

    .line 2261
    if-eqz v0, :cond_106

    return v0

    .line 2262
    :cond_106
    iget v0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    sub-int/2addr v0, v1

    .line 2263
    if-eqz v0, :cond_10e

    return v0

    .line 2264
    :cond_10e
    iget v0, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    sub-int/2addr v0, v1

    .line 2265
    if-eqz v0, :cond_116

    return v0

    .line 2266
    :cond_116
    iget v0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    sub-int/2addr v0, v1

    .line 2267
    if-eqz v0, :cond_11e

    return v0

    .line 2268
    :cond_11e
    iget v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    iget v1, p1, Landroid/content/res/Configuration;->densityDpi:I

    sub-int/2addr v0, v1

    .line 2269
    if-eqz v0, :cond_126

    return v0

    .line 2270
    :cond_126
    iget v0, p0, Landroid/content/res/Configuration;->assetsSeq:I

    iget v1, p1, Landroid/content/res/Configuration;->assetsSeq:I

    sub-int/2addr v0, v1

    .line 2271
    if-eqz v0, :cond_12e

    return v0

    .line 2272
    :cond_12e
    iget-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, v1}, Landroid/app/WindowConfiguration;->compareTo(Landroid/app/WindowConfiguration;)I

    move-result v0

    .line 2273
    if-eqz v0, :cond_139

    return v0

    .line 2274
    :cond_139
    iget v0, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    iget p1, p1, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    sub-int/2addr v0, p1

    .line 2275
    return v0
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 93
    check-cast p1, Landroid/content/res/Configuration;

    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->compareTo(Landroid/content/res/Configuration;)I

    move-result p1

    return p1
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 2103
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist diff(Landroid/content/res/Configuration;)I
    .registers 3

    .line 1916
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;ZZ)I

    move-result p1

    return p1
.end method

.method public greylist-max-o diff(Landroid/content/res/Configuration;ZZ)I
    .registers 9

    .line 1937
    nop

    .line 1938
    if-nez p2, :cond_a

    iget v0, p1, Landroid/content/res/Configuration;->fontScale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_15

    :cond_a
    iget v0, p0, Landroid/content/res/Configuration;->fontScale:F

    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_15

    .line 1939
    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_16

    .line 1941
    :cond_15
    const/4 v0, 0x0

    :goto_16
    if-nez p2, :cond_1c

    iget v1, p1, Landroid/content/res/Configuration;->mcc:I

    if-eqz v1, :cond_24

    :cond_1c
    iget v1, p0, Landroid/content/res/Configuration;->mcc:I

    iget v2, p1, Landroid/content/res/Configuration;->mcc:I

    if-eq v1, v2, :cond_24

    .line 1942
    or-int/lit8 v0, v0, 0x1

    .line 1944
    :cond_24
    if-nez p2, :cond_2a

    iget v1, p1, Landroid/content/res/Configuration;->mnc:I

    if-eqz v1, :cond_32

    :cond_2a
    iget v1, p0, Landroid/content/res/Configuration;->mnc:I

    iget v2, p1, Landroid/content/res/Configuration;->mnc:I

    if-eq v1, v2, :cond_32

    .line 1945
    or-int/lit8 v0, v0, 0x2

    .line 1947
    :cond_32
    invoke-direct {p0}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    .line 1948
    invoke-direct {p1}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    .line 1949
    if-nez p2, :cond_42

    iget-object v1, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v1}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_50

    :cond_42
    iget-object v1, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    iget-object v2, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    .line 1950
    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_50

    .line 1951
    or-int/lit8 v0, v0, 0x4

    .line 1952
    or-int/lit16 v0, v0, 0x2000

    .line 1954
    :cond_50
    iget v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v1, v1, 0xc0

    .line 1955
    if-nez p2, :cond_58

    if-eqz v1, :cond_60

    :cond_58
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v2, v2, 0xc0

    if-eq v1, v2, :cond_60

    .line 1957
    or-int/lit16 v0, v0, 0x2000

    .line 1959
    :cond_60
    if-nez p2, :cond_66

    iget v1, p1, Landroid/content/res/Configuration;->touchscreen:I

    if-eqz v1, :cond_6e

    :cond_66
    iget v1, p0, Landroid/content/res/Configuration;->touchscreen:I

    iget v2, p1, Landroid/content/res/Configuration;->touchscreen:I

    if-eq v1, v2, :cond_6e

    .line 1961
    or-int/lit8 v0, v0, 0x8

    .line 1963
    :cond_6e
    if-nez p2, :cond_74

    iget v1, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eqz v1, :cond_7c

    :cond_74
    iget v1, p0, Landroid/content/res/Configuration;->keyboard:I

    iget v2, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v1, v2, :cond_7c

    .line 1965
    or-int/lit8 v0, v0, 0x10

    .line 1967
    :cond_7c
    if-nez p2, :cond_82

    iget v1, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eqz v1, :cond_8a

    :cond_82
    iget v1, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v2, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eq v1, v2, :cond_8a

    .line 1969
    or-int/lit8 v0, v0, 0x20

    .line 1971
    :cond_8a
    if-nez p2, :cond_90

    iget v1, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eqz v1, :cond_98

    :cond_90
    iget v1, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v2, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eq v1, v2, :cond_98

    .line 1973
    or-int/lit8 v0, v0, 0x20

    .line 1975
    :cond_98
    if-nez p2, :cond_9e

    iget v1, p1, Landroid/content/res/Configuration;->navigation:I

    if-eqz v1, :cond_a6

    :cond_9e
    iget v1, p0, Landroid/content/res/Configuration;->navigation:I

    iget v2, p1, Landroid/content/res/Configuration;->navigation:I

    if-eq v1, v2, :cond_a6

    .line 1977
    or-int/lit8 v0, v0, 0x40

    .line 1979
    :cond_a6
    if-nez p2, :cond_ac

    iget v1, p1, Landroid/content/res/Configuration;->navigationHidden:I

    if-eqz v1, :cond_b4

    :cond_ac
    iget v1, p0, Landroid/content/res/Configuration;->navigationHidden:I

    iget v2, p1, Landroid/content/res/Configuration;->navigationHidden:I

    if-eq v1, v2, :cond_b4

    .line 1981
    or-int/lit8 v0, v0, 0x20

    .line 1983
    :cond_b4
    if-nez p2, :cond_ba

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eqz v1, :cond_c2

    :cond_ba
    iget v1, p0, Landroid/content/res/Configuration;->orientation:I

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v2, :cond_c2

    .line 1985
    or-int/lit16 v0, v0, 0x80

    .line 1987
    :cond_c2
    if-nez p2, :cond_cc

    iget v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v1}, Landroid/content/res/Configuration;->getScreenLayoutNoDirection(I)I

    move-result v1

    if-eqz v1, :cond_dc

    :cond_cc
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 1989
    invoke-static {v1}, Landroid/content/res/Configuration;->getScreenLayoutNoDirection(I)I

    move-result v1

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    .line 1990
    invoke-static {v2}, Landroid/content/res/Configuration;->getScreenLayoutNoDirection(I)I

    move-result v2

    if-eq v1, v2, :cond_dc

    .line 1991
    or-int/lit16 v0, v0, 0x100

    .line 1993
    :cond_dc
    if-nez p2, :cond_e4

    iget v1, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v1, v1, 0xc

    if-eqz v1, :cond_f0

    :cond_e4
    iget v1, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v1, v1, 0xc

    iget v2, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v2, v2, 0xc

    if-eq v1, v2, :cond_f0

    .line 1997
    or-int/lit16 v0, v0, 0x4000

    .line 1999
    :cond_f0
    if-nez p2, :cond_f8

    iget v1, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v1, v1, 0x3

    if-eqz v1, :cond_104

    :cond_f8
    iget v1, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v1, v1, 0x3

    iget v2, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v2, v2, 0x3

    if-eq v1, v2, :cond_104

    .line 2004
    or-int/lit16 v0, v0, 0x4000

    .line 2006
    :cond_104
    if-nez p2, :cond_10a

    iget v1, p1, Landroid/content/res/Configuration;->uiMode:I

    if-eqz v1, :cond_112

    :cond_10a
    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    if-eq v1, v2, :cond_112

    .line 2008
    or-int/lit16 v0, v0, 0x200

    .line 2010
    :cond_112
    if-nez p2, :cond_118

    iget v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v1, :cond_120

    :cond_118
    iget v1, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eq v1, v2, :cond_120

    .line 2012
    or-int/lit16 v0, v0, 0x400

    .line 2014
    :cond_120
    if-nez p2, :cond_126

    iget v1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eqz v1, :cond_12e

    :cond_126
    iget v1, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v1, v2, :cond_12e

    .line 2016
    or-int/lit16 v0, v0, 0x400

    .line 2018
    :cond_12e
    if-nez p2, :cond_134

    iget v1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eqz v1, :cond_13c

    :cond_134
    iget v1, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v2, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eq v1, v2, :cond_13c

    .line 2020
    or-int/lit16 v0, v0, 0x800

    .line 2022
    :cond_13c
    if-nez p2, :cond_142

    iget v1, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-eqz v1, :cond_14a

    :cond_142
    iget v1, p0, Landroid/content/res/Configuration;->densityDpi:I

    iget v2, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v1, v2, :cond_14a

    .line 2024
    or-int/lit16 v0, v0, 0x1000

    .line 2026
    :cond_14a
    if-nez p2, :cond_150

    iget v1, p1, Landroid/content/res/Configuration;->assetsSeq:I

    if-eqz v1, :cond_159

    :cond_150
    iget v1, p0, Landroid/content/res/Configuration;->assetsSeq:I

    iget v2, p1, Landroid/content/res/Configuration;->assetsSeq:I

    if-eq v1, v2, :cond_159

    .line 2028
    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    .line 2032
    :cond_159
    if-nez p3, :cond_16c

    iget-object p3, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 2033
    invoke-virtual {p3, v1, p2}, Landroid/app/WindowConfiguration;->diff(Landroid/app/WindowConfiguration;Z)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p3, v1, v3

    if-eqz p3, :cond_16c

    .line 2034
    const/high16 p3, 0x20000000

    or-int/2addr v0, p3

    .line 2037
    :cond_16c
    if-nez p2, :cond_175

    iget p3, p1, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    const v1, 0x7fffffff

    if-eq p3, v1, :cond_17e

    :cond_175
    iget p3, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    iget v1, p1, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    if-eq p3, v1, :cond_17e

    .line 2039
    const/high16 p3, 0x10000000

    or-int/2addr v0, p3

    .line 2042
    :cond_17e
    if-nez p2, :cond_185

    iget p2, p1, Landroid/content/res/Configuration;->mGrammaticalGender:I

    const/4 p3, -0x1

    if-eq p2, p3, :cond_18f

    :cond_185
    iget p2, p0, Landroid/content/res/Configuration;->mGrammaticalGender:I

    iget p1, p1, Landroid/content/res/Configuration;->mGrammaticalGender:I

    if-eq p2, p1, :cond_18f

    .line 2044
    const p1, 0x8000

    or-int/2addr v0, p1

    .line 2046
    :cond_18f
    return v0
.end method

.method public greylist-max-o diffPublicOnly(Landroid/content/res/Configuration;)I
    .registers 4

    .line 1928
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;ZZ)I

    move-result p1

    return p1
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 10

    .line 1362
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/res/Configuration;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JZZ)V

    .line 1363
    return-void
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;JZ)V
    .registers 11

    .line 1376
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/res/Configuration;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JZZ)V

    .line 1377
    return-void
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;JZZ)V
    .registers 8

    .line 1320
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 1321
    if-nez p5, :cond_be

    .line 1322
    const-wide v0, 0x10200000001L

    iget p5, p0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p1, v0, v1, p5}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 1323
    const-wide v0, 0x10d00000002L

    iget p5, p0, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {p1, v0, v1, p5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1324
    const-wide v0, 0x10d00000003L

    iget p5, p0, Landroid/content/res/Configuration;->mnc:I

    invoke-virtual {p1, v0, v1, p5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1325
    iget-object p5, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    if-eqz p5, :cond_36

    .line 1326
    iget-object p5, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {p5}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object p5

    const-wide v0, 0x10900000014L

    invoke-virtual {p1, v0, v1, p5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1328
    :cond_36
    const-wide v0, 0x10d00000005L

    iget p5, p0, Landroid/content/res/Configuration;->screenLayout:I

    invoke-virtual {p1, v0, v1, p5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1329
    const-wide v0, 0x10d00000006L

    iget p5, p0, Landroid/content/res/Configuration;->colorMode:I

    invoke-virtual {p1, v0, v1, p5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1330
    const-wide v0, 0x10d00000007L

    iget p5, p0, Landroid/content/res/Configuration;->touchscreen:I

    invoke-virtual {p1, v0, v1, p5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1331
    const-wide v0, 0x10d00000008L

    iget p5, p0, Landroid/content/res/Configuration;->keyboard:I

    invoke-virtual {p1, v0, v1, p5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1332
    const-wide v0, 0x10d00000009L

    iget p5, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    invoke-virtual {p1, v0, v1, p5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1333
    const-wide v0, 0x10d0000000aL

    iget p5, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    invoke-virtual {p1, v0, v1, p5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1334
    const-wide v0, 0x10d0000000bL

    iget p5, p0, Landroid/content/res/Configuration;->navigation:I

    invoke-virtual {p1, v0, v1, p5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1335
    const-wide v0, 0x10d0000000cL

    iget p5, p0, Landroid/content/res/Configuration;->navigationHidden:I

    invoke-virtual {p1, v0, v1, p5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1336
    const-wide v0, 0x10d0000000eL

    iget p5, p0, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual {p1, v0, v1, p5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1337
    const-wide v0, 0x10d00000011L

    iget p5, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-virtual {p1, v0, v1, p5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1338
    const-wide v0, 0x10d00000012L

    iget p5, p0, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {p1, v0, v1, p5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1340
    if-nez p4, :cond_b4

    iget-object p4, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    if-eqz p4, :cond_b4

    .line 1341
    iget-object p4, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    const-wide v0, 0x10b00000013L

    invoke-virtual {p4, p1, v0, v1}, Landroid/app/WindowConfiguration;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1343
    :cond_b4
    const-wide p4, 0x10d00000015L

    iget v0, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    invoke-virtual {p1, p4, p5, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1345
    :cond_be
    const-wide p4, 0x10d0000000dL

    iget v0, p0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p1, p4, p5, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1346
    const-wide p4, 0x10d0000000fL

    iget v0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {p1, p4, p5, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1347
    const-wide p4, 0x10d00000010L

    iget v0, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {p1, p4, p5, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1348
    const-wide p4, 0x10d00000016L

    iget v0, p0, Landroid/content/res/Configuration;->mGrammaticalGender:I

    invoke-virtual {p1, p4, p5, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1349
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1350
    return-void
.end method

.method public whitelist equals(Landroid/content/res/Configuration;)Z
    .registers 4

    .line 2279
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 2280
    :cond_4
    const/4 v1, 0x1

    if-ne p1, p0, :cond_8

    return v1

    .line 2281
    :cond_8
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->compareTo(Landroid/content/res/Configuration;)I

    move-result p1

    if-nez p1, :cond_f

    move v0, v1

    :cond_f
    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 2

    .line 2286
    :try_start_0
    check-cast p1, Landroid/content/res/Configuration;

    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result p1
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    .line 2287
    :catch_7
    move-exception p1

    .line 2289
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist getGrammaticalGender()I
    .registers 3

    .line 2329
    iget v0, p0, Landroid/content/res/Configuration;->mGrammaticalGender:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    .line 2330
    const/4 v0, 0x0

    goto :goto_9

    :cond_7
    iget v0, p0, Landroid/content/res/Configuration;->mGrammaticalGender:I

    .line 2329
    :goto_9
    return v0
.end method

.method public blacklist getGrammaticalGenderRaw()I
    .registers 2

    .line 2340
    iget v0, p0, Landroid/content/res/Configuration;->mGrammaticalGender:I

    return v0
.end method

.method public whitelist getLayoutDirection()I
    .registers 3

    .line 2422
    iget v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v0, v0, 0xc0

    const/16 v1, 0x80

    if-ne v0, v1, :cond_a

    .line 2423
    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    .line 2422
    :goto_b
    return v0
.end method

.method public whitelist getLocales()Landroid/os/LocaleList;
    .registers 2

    .line 2362
    invoke-direct {p0}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    .line 2363
    iget-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 2293
    nop

    .line 2294
    iget v0, p0, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    .line 2295
    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroid/content/res/Configuration;->mcc:I

    add-int/2addr v1, v0

    .line 2296
    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroid/content/res/Configuration;->mnc:I

    add-int/2addr v1, v0

    .line 2297
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v0}, Landroid/os/LocaleList;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 2298
    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroid/content/res/Configuration;->touchscreen:I

    add-int/2addr v1, v0

    .line 2299
    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroid/content/res/Configuration;->keyboard:I

    add-int/2addr v1, v0

    .line 2300
    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    add-int/2addr v1, v0

    .line 2301
    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    add-int/2addr v1, v0

    .line 2302
    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroid/content/res/Configuration;->navigation:I

    add-int/2addr v1, v0

    .line 2303
    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroid/content/res/Configuration;->navigationHidden:I

    add-int/2addr v1, v0

    .line 2304
    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroid/content/res/Configuration;->orientation:I

    add-int/2addr v1, v0

    .line 2305
    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    add-int/2addr v1, v0

    .line 2306
    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroid/content/res/Configuration;->colorMode:I

    add-int/2addr v1, v0

    .line 2307
    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroid/content/res/Configuration;->uiMode:I

    add-int/2addr v1, v0

    .line 2308
    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    add-int/2addr v1, v0

    .line 2309
    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    add-int/2addr v1, v0

    .line 2310
    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    add-int/2addr v1, v0

    .line 2311
    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    add-int/2addr v1, v0

    .line 2312
    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroid/content/res/Configuration;->assetsSeq:I

    add-int/2addr v1, v0

    .line 2313
    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    add-int/2addr v1, v0

    .line 2314
    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroid/content/res/Configuration;->mGrammaticalGender:I

    add-int/2addr v1, v0

    .line 2315
    return v1
.end method

.method public whitelist isLayoutSizeAtLeast(I)Z
    .registers 4

    .line 567
    iget v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    .line 568
    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 569
    :cond_8
    if-lt v0, p1, :cond_b

    const/4 v1, 0x1

    :cond_b
    return v1
.end method

.method public whitelist isNightModeActive()Z
    .registers 3

    .line 2200
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

    .line 2076
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 2078
    return v0

    .line 2080
    :cond_4
    iget v1, p1, Landroid/content/res/Configuration;->seq:I

    const/4 v2, 0x1

    if-nez v1, :cond_a

    .line 2083
    return v2

    .line 2085
    :cond_a
    iget v1, p0, Landroid/content/res/Configuration;->seq:I

    if-nez v1, :cond_f

    .line 2088
    return v2

    .line 2090
    :cond_f
    iget p1, p1, Landroid/content/res/Configuration;->seq:I

    iget v1, p0, Landroid/content/res/Configuration;->seq:I

    sub-int/2addr p1, v1

    .line 2091
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/high16 v3, 0x10000000

    if-le v1, v3, :cond_20

    .line 2094
    if-gez p1, :cond_1f

    move v0, v2

    :cond_1f
    return v0

    .line 2096
    :cond_20
    if-lez p1, :cond_23

    move v0, v2

    :cond_23
    return v0
.end method

.method public whitelist isScreenHdr()Z
    .registers 3

    .line 2479
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

    .line 2455
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

    .line 2470
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

    .line 1628
    invoke-virtual {p0}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 1629
    return-void
.end method

.method public whitelist readFromParcel(Landroid/os/Parcel;)V
    .registers 5

    .line 2144
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->fontScale:F

    .line 2145
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->mcc:I

    .line 2146
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->mnc:I

    .line 2148
    sget-object v0, Landroid/os/LocaleList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/LocaleList;

    iput-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    .line 2149
    iget-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 2151
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2d

    move v1, v2

    :cond_2d
    iput-boolean v1, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 2152
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->touchscreen:I

    .line 2153
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->keyboard:I

    .line 2154
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 2155
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 2156
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->navigation:I

    .line 2157
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->navigationHidden:I

    .line 2158
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->orientation:I

    .line 2159
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 2160
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->colorMode:I

    .line 2161
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 2162
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 2163
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 2164
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 2165
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    .line 2166
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    .line 2167
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    .line 2168
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    .line 2169
    iget-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, p1}, Landroid/app/WindowConfiguration;->readFromParcel(Landroid/os/Parcel;)V

    .line 2170
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->assetsSeq:I

    .line 2171
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->seq:I

    .line 2172
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    .line 2173
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/content/res/Configuration;->mGrammaticalGender:I

    .line 2174
    return-void
.end method

.method public blacklist readFromProto(Landroid/util/proto/ProtoInputStream;J)V
    .registers 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1389
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, ") found when trying to add: "

    const-string v4, ";script-"

    const-string v5, "Repeated locale ("

    const-string v6, ";variant-"

    const-string v7, ";country-"

    const-string/jumbo v8, "readFromProto error building locale with: language-"

    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v9

    .line 1390
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1392
    :goto_1a
    :try_start_1a
    invoke-virtual {v2}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v0
    :try_end_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_37d

    const/4 v12, -0x1

    if-eq v0, v12, :cond_35a

    .line 1393
    :try_start_21
    invoke-virtual {v2}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v0
    :try_end_25
    .catchall {:try_start_21 .. :try_end_25} :catchall_354

    const-string v13, "Configuration"

    packed-switch v0, :pswitch_data_39e

    move-wide/from16 v16, v9

    goto/16 :goto_350

    .line 1515
    :pswitch_2e
    const-wide v12, 0x10d00000016L

    :try_start_33
    invoke-virtual {v2, v12, v13}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->mGrammaticalGender:I

    move-wide/from16 v16, v9

    goto/16 :goto_350

    .line 1512
    :pswitch_3d
    const-wide v12, 0x10d00000015L

    invoke-virtual {v2, v12, v13}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->fontWeightAdjustment:I
    :try_end_48
    .catchall {:try_start_33 .. :try_end_48} :catchall_37d

    .line 1513
    move-wide/from16 v16, v9

    goto/16 :goto_350

    .line 1505
    :pswitch_4c
    const-wide v14, 0x10900000014L

    :try_start_51
    invoke-virtual {v2, v14, v15}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_5c} :catch_60
    .catchall {:try_start_51 .. :try_end_5c} :catchall_37d

    .line 1509
    move-wide/from16 v16, v9

    goto/16 :goto_350

    .line 1507
    :catch_60
    move-exception v0

    .line 1508
    :try_start_61
    const-string v12, "error parsing locale list in configuration."

    invoke-static {v13, v12, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1510
    move-wide/from16 v16, v9

    goto/16 :goto_350

    .line 1501
    :pswitch_6a
    iget-object v0, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    const-wide v12, 0x10b00000013L

    invoke-virtual {v0, v2, v12, v13}, Landroid/app/WindowConfiguration;->readFromProto(Landroid/util/proto/ProtoInputStream;J)V

    .line 1502
    move-wide/from16 v16, v9

    goto/16 :goto_350

    .line 1498
    :pswitch_78
    const-wide v12, 0x10d00000012L

    invoke-virtual {v2, v12, v13}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->densityDpi:I

    .line 1499
    move-wide/from16 v16, v9

    goto/16 :goto_350

    .line 1495
    :pswitch_87
    const-wide v12, 0x10d00000011L

    invoke-virtual {v2, v12, v13}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 1496
    move-wide/from16 v16, v9

    goto/16 :goto_350

    .line 1492
    :pswitch_96
    const-wide v12, 0x10d00000010L

    invoke-virtual {v2, v12, v13}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 1493
    move-wide/from16 v16, v9

    goto/16 :goto_350

    .line 1489
    :pswitch_a5
    const-wide v12, 0x10d0000000fL

    invoke-virtual {v2, v12, v13}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 1490
    move-wide/from16 v16, v9

    goto/16 :goto_350

    .line 1486
    :pswitch_b4
    const-wide v12, 0x10d0000000eL

    invoke-virtual {v2, v12, v13}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->uiMode:I

    .line 1487
    move-wide/from16 v16, v9

    goto/16 :goto_350

    .line 1483
    :pswitch_c3
    const-wide v12, 0x10d0000000dL

    invoke-virtual {v2, v12, v13}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 1484
    move-wide/from16 v16, v9

    goto/16 :goto_350

    .line 1480
    :pswitch_d2
    const-wide v12, 0x10d0000000cL

    invoke-virtual {v2, v12, v13}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->navigationHidden:I

    .line 1481
    move-wide/from16 v16, v9

    goto/16 :goto_350

    .line 1477
    :pswitch_e1
    const-wide v12, 0x10d0000000bL

    invoke-virtual {v2, v12, v13}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->navigation:I

    .line 1478
    move-wide/from16 v16, v9

    goto/16 :goto_350

    .line 1474
    :pswitch_f0
    const-wide v12, 0x10d0000000aL

    invoke-virtual {v2, v12, v13}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 1475
    move-wide/from16 v16, v9

    goto/16 :goto_350

    .line 1471
    :pswitch_ff
    const-wide v12, 0x10d00000009L

    invoke-virtual {v2, v12, v13}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 1472
    move-wide/from16 v16, v9

    goto/16 :goto_350

    .line 1468
    :pswitch_10e
    const-wide v12, 0x10d00000008L

    invoke-virtual {v2, v12, v13}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->keyboard:I

    .line 1469
    move-wide/from16 v16, v9

    goto/16 :goto_350

    .line 1465
    :pswitch_11d
    const-wide v12, 0x10d00000007L

    invoke-virtual {v2, v12, v13}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->touchscreen:I

    .line 1466
    move-wide/from16 v16, v9

    goto/16 :goto_350

    .line 1462
    :pswitch_12c
    const-wide v12, 0x10d00000006L

    invoke-virtual {v2, v12, v13}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->colorMode:I

    .line 1463
    move-wide/from16 v16, v9

    goto/16 :goto_350

    .line 1459
    :pswitch_13b
    const-wide v12, 0x10d00000005L

    invoke-virtual {v2, v12, v13}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->screenLayout:I
    :try_end_146
    .catchall {:try_start_61 .. :try_end_146} :catchall_37d

    .line 1460
    move-wide/from16 v16, v9

    goto/16 :goto_350

    .line 1406
    :pswitch_14a
    const-wide v14, 0x20b00000004L

    :try_start_14f
    invoke-virtual {v2, v14, v15}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v14
    :try_end_153
    .catchall {:try_start_14f .. :try_end_153} :catchall_31a

    .line 1407
    nop

    .line 1408
    nop

    .line 1409
    nop

    .line 1410
    const-string v0, ""

    move-object/from16 v16, v0

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    move-object/from16 v19, v18

    .line 1412
    :goto_160
    :try_start_160
    invoke-virtual {v2}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v0
    :try_end_164
    .catch Landroid/util/proto/WireTypeMismatchException; {:try_start_160 .. :try_end_164} :catch_28f
    .catchall {:try_start_160 .. :try_end_164} :catchall_27e

    if-eq v0, v12, :cond_1d2

    .line 1414
    :try_start_166
    invoke-virtual {v2}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v0
    :try_end_16a
    .catch Landroid/util/proto/WireTypeMismatchException; {:try_start_166 .. :try_end_16a} :catch_1c1
    .catchall {:try_start_166 .. :try_end_16a} :catchall_1b0

    packed-switch v0, :pswitch_data_3ce

    move-object/from16 p3, v13

    goto :goto_1ac

    .line 1426
    :pswitch_170
    move-object/from16 p3, v13

    const-wide v12, 0x10900000004L

    :try_start_177
    invoke-virtual {v2, v12, v13}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v19, v0

    goto :goto_1ac

    .line 1423
    :pswitch_17e
    move-object/from16 p3, v13

    const-wide v12, 0x10900000003L

    invoke-virtual {v2, v12, v13}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0

    .line 1424
    move-object/from16 v18, v0

    goto :goto_1ac

    .line 1420
    :pswitch_18c
    move-object/from16 p3, v13

    const-wide v12, 0x10900000002L

    invoke-virtual {v2, v12, v13}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0

    .line 1421
    move-object/from16 v17, v0

    goto :goto_1ac

    .line 1416
    :pswitch_19a
    move-object/from16 p3, v13

    const-wide v12, 0x10900000001L

    invoke-virtual {v2, v12, v13}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0
    :try_end_1a5
    .catch Landroid/util/proto/WireTypeMismatchException; {:try_start_177 .. :try_end_1a5} :catch_1aa
    .catchall {:try_start_177 .. :try_end_1a5} :catchall_1a8

    .line 1418
    move-object/from16 v16, v0

    goto :goto_1ac

    .line 1434
    :catchall_1a8
    move-exception v0

    goto :goto_1b3

    .line 1430
    :catch_1aa
    move-exception v0

    goto :goto_1c4

    .line 1427
    :goto_1ac
    move-object/from16 v13, p3

    const/4 v12, -0x1

    goto :goto_160

    .line 1434
    :catchall_1b0
    move-exception v0

    move-object/from16 p3, v13

    :goto_1b3
    move-object/from16 v12, v16

    move-object/from16 v13, v17

    move-object/from16 v1, v19

    move-wide/from16 v16, v9

    move-object/from16 v10, v18

    move-object/from16 v9, p3

    goto/16 :goto_28c

    .line 1430
    :catch_1c1
    move-exception v0

    move-object/from16 p3, v13

    :goto_1c4
    move-object/from16 v12, v16

    move-object/from16 v13, v17

    move-object/from16 v1, v19

    move-wide/from16 v16, v9

    move-object/from16 v10, v18

    move-object/from16 v9, p3

    goto/16 :goto_29d

    .line 1434
    :cond_1d2
    move-object/from16 p3, v13

    :try_start_1d4
    invoke-virtual {v2, v14, v15}, Landroid/util/proto/ProtoInputStream;->end(J)V
    :try_end_1d7
    .catchall {:try_start_1d4 .. :try_end_1d7} :catchall_354

    .line 1436
    :try_start_1d7
    new-instance v0, Ljava/util/Locale$Builder;

    invoke-direct {v0}, Ljava/util/Locale$Builder;-><init>()V
    :try_end_1dc
    .catch Ljava/util/IllformedLocaleException; {:try_start_1d7 .. :try_end_1dc} :catch_242
    .catchall {:try_start_1d7 .. :try_end_1dc} :catchall_354

    .line 1437
    move-object/from16 v12, v16

    :try_start_1de
    invoke-virtual {v0, v12}, Ljava/util/Locale$Builder;->setLanguage(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v0
    :try_end_1e2
    .catch Ljava/util/IllformedLocaleException; {:try_start_1de .. :try_end_1e2} :catch_240
    .catchall {:try_start_1de .. :try_end_1e2} :catchall_354

    .line 1438
    move-object/from16 v13, v17

    :try_start_1e4
    invoke-virtual {v0, v13}, Ljava/util/Locale$Builder;->setRegion(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v0
    :try_end_1e8
    .catch Ljava/util/IllformedLocaleException; {:try_start_1e4 .. :try_end_1e8} :catch_238
    .catchall {:try_start_1e4 .. :try_end_1e8} :catchall_354

    .line 1439
    move-object/from16 v14, v18

    :try_start_1ea
    invoke-virtual {v0, v14}, Ljava/util/Locale$Builder;->setVariant(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v0
    :try_end_1ee
    .catch Ljava/util/IllformedLocaleException; {:try_start_1ea .. :try_end_1ee} :catch_234
    .catchall {:try_start_1ea .. :try_end_1ee} :catchall_354

    .line 1440
    move-object/from16 v15, v19

    :try_start_1f0
    invoke-virtual {v0, v15}, Ljava/util/Locale$Builder;->setScript(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v0

    .line 1441
    invoke-virtual {v0}, Ljava/util/Locale$Builder;->build()Ljava/util/Locale;

    move-result-object v0
    :try_end_1f8
    .catch Ljava/util/IllformedLocaleException; {:try_start_1f0 .. :try_end_1f8} :catch_232
    .catchall {:try_start_1f0 .. :try_end_1f8} :catchall_354

    .line 1444
    move-wide/from16 v16, v9

    :try_start_1fa
    invoke-interface {v11, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v9

    .line 1445
    const/4 v10, -0x1

    if-eq v9, v10, :cond_228

    .line 1446
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1447
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_222
    .catch Ljava/util/IllformedLocaleException; {:try_start_1fa .. :try_end_222} :catch_230
    .catchall {:try_start_1fa .. :try_end_222} :catchall_34e

    .line 1446
    move-object/from16 v9, p3

    :try_start_224
    invoke-static {v9, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22d

    .line 1449
    :cond_228
    move-object/from16 v9, p3

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_22d
    .catch Ljava/util/IllformedLocaleException; {:try_start_224 .. :try_end_22d} :catch_22e
    .catchall {:try_start_224 .. :try_end_22d} :catchall_34e

    .line 1455
    :goto_22d
    goto :goto_27c

    .line 1451
    :catch_22e
    move-exception v0

    goto :goto_24f

    :catch_230
    move-exception v0

    goto :goto_24d

    :catch_232
    move-exception v0

    goto :goto_24b

    :catch_234
    move-exception v0

    move-wide/from16 v16, v9

    goto :goto_23d

    :catch_238
    move-exception v0

    move-wide/from16 v16, v9

    move-object/from16 v14, v18

    :goto_23d
    move-object/from16 v15, v19

    goto :goto_24d

    :catch_240
    move-exception v0

    goto :goto_245

    :catch_242
    move-exception v0

    move-object/from16 v12, v16

    :goto_245
    move-object/from16 v13, v17

    move-object/from16 v14, v18

    move-object/from16 v15, v19

    :goto_24b
    move-wide/from16 v16, v9

    :goto_24d
    move-object/from16 v9, p3

    .line 1452
    :goto_24f
    :try_start_24f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27b
    .catchall {:try_start_24f .. :try_end_27b} :catchall_34e

    .line 1456
    nop

    .line 1457
    :goto_27c
    goto/16 :goto_350

    .line 1434
    :catchall_27e
    move-exception v0

    move-object/from16 v12, v16

    move-object/from16 v1, v19

    move-wide/from16 v20, v9

    move-object v9, v13

    move-object/from16 v13, v17

    move-object/from16 v10, v18

    move-wide/from16 v16, v20

    :goto_28c
    move-object/from16 v18, v0

    goto :goto_2a0

    .line 1430
    :catch_28f
    move-exception v0

    move-object/from16 v12, v16

    move-object/from16 v1, v19

    move-wide/from16 v20, v9

    move-object v9, v13

    move-object/from16 v13, v17

    move-object/from16 v10, v18

    move-wide/from16 v16, v20

    .line 1432
    :goto_29d
    :try_start_29d
    throw v0
    :try_end_29e
    .catchall {:try_start_29d .. :try_end_29e} :catchall_29e

    .line 1434
    :catchall_29e
    move-exception v0

    goto :goto_28c

    :goto_2a0
    :try_start_2a0
    invoke-virtual {v2, v14, v15}, Landroid/util/proto/ProtoInputStream;->end(J)V
    :try_end_2a3
    .catchall {:try_start_2a0 .. :try_end_2a3} :catchall_32e

    .line 1436
    :try_start_2a3
    new-instance v0, Ljava/util/Locale$Builder;

    invoke-direct {v0}, Ljava/util/Locale$Builder;-><init>()V

    .line 1437
    invoke-virtual {v0, v12}, Ljava/util/Locale$Builder;->setLanguage(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v0

    .line 1438
    invoke-virtual {v0, v13}, Ljava/util/Locale$Builder;->setRegion(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v0

    .line 1439
    invoke-virtual {v0, v10}, Ljava/util/Locale$Builder;->setVariant(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v0

    .line 1440
    invoke-virtual {v0, v1}, Ljava/util/Locale$Builder;->setScript(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v0

    .line 1441
    invoke-virtual {v0}, Ljava/util/Locale$Builder;->build()Ljava/util/Locale;

    move-result-object v0

    .line 1444
    invoke-interface {v11, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v14

    .line 1445
    const/4 v15, -0x1

    if-eq v14, v15, :cond_2e8

    .line 1446
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1447
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1446
    invoke-static {v9, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2eb

    .line 1449
    :cond_2e8
    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2eb
    .catch Ljava/util/IllformedLocaleException; {:try_start_2a3 .. :try_end_2eb} :catch_2ec
    .catchall {:try_start_2a3 .. :try_end_2eb} :catchall_32e

    .line 1455
    :goto_2eb
    goto :goto_319

    .line 1451
    :catch_2ec
    move-exception v0

    .line 1452
    :try_start_2ed
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1456
    :goto_319
    throw v18

    .line 1521
    :catchall_31a
    move-exception v0

    move-wide/from16 v16, v9

    goto :goto_32f

    .line 1401
    :pswitch_31e
    move-wide/from16 v16, v9

    const-wide v0, 0x10d00000003L

    invoke-virtual {v2, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0
    :try_end_329
    .catchall {:try_start_2ed .. :try_end_329} :catchall_32e

    move-object/from16 v1, p0

    :try_start_32b
    iput v0, v1, Landroid/content/res/Configuration;->mnc:I

    .line 1402
    goto :goto_350

    .line 1521
    :catchall_32e
    move-exception v0

    :goto_32f
    move-object/from16 v1, p0

    goto :goto_357

    .line 1398
    :pswitch_332
    move-wide/from16 v16, v9

    const-wide v9, 0x10d00000002L

    invoke-virtual {v2, v9, v10}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->mcc:I

    .line 1399
    goto :goto_350

    .line 1395
    :pswitch_340
    move-wide/from16 v16, v9

    const-wide v9, 0x10200000001L

    invoke-virtual {v2, v9, v10}, Landroid/util/proto/ProtoInputStream;->readFloat(J)F

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->fontScale:F
    :try_end_34d
    .catchall {:try_start_32b .. :try_end_34d} :catchall_34e

    .line 1396
    goto :goto_350

    .line 1521
    :catchall_34e
    move-exception v0

    goto :goto_357

    .line 1516
    :goto_350
    move-wide/from16 v9, v16

    goto/16 :goto_1a

    .line 1521
    :catchall_354
    move-exception v0

    move-wide/from16 v16, v9

    :goto_357
    move-wide/from16 v3, v16

    goto :goto_37f

    :cond_35a
    move-wide/from16 v16, v9

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_376

    .line 1523
    new-instance v0, Landroid/os/LocaleList;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/util/Locale;

    invoke-interface {v11, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/util/Locale;

    invoke-direct {v0, v3}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    invoke-virtual {v1, v0}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    .line 1525
    :cond_376
    move-wide/from16 v3, v16

    invoke-virtual {v2, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 1526
    nop

    .line 1527
    return-void

    .line 1521
    :catchall_37d
    move-exception v0

    move-wide v3, v9

    :goto_37f
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_399

    .line 1523
    new-instance v5, Landroid/os/LocaleList;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/util/Locale;

    invoke-interface {v11, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/util/Locale;

    invoke-direct {v5, v6}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    invoke-virtual {v1, v5}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    .line 1525
    :cond_399
    invoke-virtual {v2, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 1526
    throw v0

    nop

    :pswitch_data_39e
    .packed-switch 0x1
        :pswitch_340
        :pswitch_332
        :pswitch_31e
        :pswitch_14a
        :pswitch_13b
        :pswitch_12c
        :pswitch_11d
        :pswitch_10e
        :pswitch_ff
        :pswitch_f0
        :pswitch_e1
        :pswitch_d2
        :pswitch_c3
        :pswitch_b4
        :pswitch_a5
        :pswitch_96
        :pswitch_87
        :pswitch_78
        :pswitch_6a
        :pswitch_4c
        :pswitch_3d
        :pswitch_2e
    .end packed-switch

    :pswitch_data_3ce
    .packed-switch 0x1
        :pswitch_19a
        :pswitch_18c
        :pswitch_17e
        :pswitch_170
    .end packed-switch
.end method

.method public blacklist setGrammaticalGender(I)V
    .registers 2

    .line 2352
    iput p1, p0, Landroid/content/res/Configuration;->mGrammaticalGender:I

    .line 2353
    return-void
.end method

.method public whitelist setLayoutDirection(Ljava/util/Locale;)V
    .registers 3

    .line 2439
    invoke-static {p1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    .line 2440
    iget v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v0, v0, -0xc1

    shl-int/lit8 p1, p1, 0x6

    or-int/2addr p1, v0

    iput p1, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 2442
    return-void
.end method

.method public whitelist setLocale(Ljava/util/Locale;)V
    .registers 5

    .line 2401
    if-nez p1, :cond_7

    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object p1

    goto :goto_13

    :cond_7
    new-instance v0, Landroid/os/LocaleList;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/Locale;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {v0, v1}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    move-object p1, v0

    :goto_13
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    .line 2402
    return-void
.end method

.method public whitelist setLocales(Landroid/os/LocaleList;)V
    .registers 4

    .line 2378
    iget-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    .line 2379
    if-nez p1, :cond_8

    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object p1

    :cond_8
    iput-object p1, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    .line 2380
    iget-object p1, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p1

    iput-object p1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 2381
    iget-object p1, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {p1, v0}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3f

    .line 2382
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Updating configuration, locales updated from "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Configuration"

    invoke-static {v0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2385
    :cond_3f
    iget-object p1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->setLayoutDirection(Ljava/util/Locale;)V

    .line 2386
    return-void
.end method

.method public whitelist setTo(Landroid/content/res/Configuration;)V
    .registers 4

    .line 1088
    iget v0, p1, Landroid/content/res/Configuration;->fontScale:F

    iput v0, p0, Landroid/content/res/Configuration;->fontScale:F

    .line 1089
    iget v0, p1, Landroid/content/res/Configuration;->mcc:I

    iput v0, p0, Landroid/content/res/Configuration;->mcc:I

    .line 1090
    iget v0, p1, Landroid/content/res/Configuration;->mnc:I

    iput v0, p0, Landroid/content/res/Configuration;->mnc:I

    .line 1091
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-nez v0, :cond_14

    .line 1092
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    goto :goto_28

    .line 1093
    :cond_14
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 1096
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    iput-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1098
    :cond_28
    :goto_28
    invoke-direct {p1}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    .line 1099
    iget-object v0, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    iput-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    .line 1100
    iget v0, p1, Landroid/content/res/Configuration;->mGrammaticalGender:I

    iput v0, p0, Landroid/content/res/Configuration;->mGrammaticalGender:I

    .line 1101
    iget-boolean v0, p1, Landroid/content/res/Configuration;->userSetLocale:Z

    iput-boolean v0, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 1102
    iget v0, p1, Landroid/content/res/Configuration;->touchscreen:I

    iput v0, p0, Landroid/content/res/Configuration;->touchscreen:I

    .line 1103
    iget v0, p1, Landroid/content/res/Configuration;->keyboard:I

    iput v0, p0, Landroid/content/res/Configuration;->keyboard:I

    .line 1104
    iget v0, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    iput v0, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 1105
    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v0, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 1106
    iget v0, p1, Landroid/content/res/Configuration;->navigation:I

    iput v0, p0, Landroid/content/res/Configuration;->navigation:I

    .line 1107
    iget v0, p1, Landroid/content/res/Configuration;->navigationHidden:I

    iput v0, p0, Landroid/content/res/Configuration;->navigationHidden:I

    .line 1108
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Landroid/content/res/Configuration;->orientation:I

    .line 1109
    iget v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    iput v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 1110
    iget v0, p1, Landroid/content/res/Configuration;->colorMode:I

    iput v0, p0, Landroid/content/res/Configuration;->colorMode:I

    .line 1111
    iget v0, p1, Landroid/content/res/Configuration;->uiMode:I

    iput v0, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 1112
    iget v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 1113
    iget v0, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v0, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 1114
    iget v0, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 1115
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    .line 1116
    iget v0, p1, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    .line 1117
    iget v0, p1, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    iput v0, p0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    .line 1118
    iget v0, p1, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    .line 1119
    iget v0, p1, Landroid/content/res/Configuration;->assetsSeq:I

    iput v0, p0, Landroid/content/res/Configuration;->assetsSeq:I

    .line 1120
    iget v0, p1, Landroid/content/res/Configuration;->seq:I

    iput v0, p0, Landroid/content/res/Configuration;->seq:I

    .line 1121
    iget-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, v1}, Landroid/app/WindowConfiguration;->setTo(Landroid/app/WindowConfiguration;)V

    .line 1122
    iget p1, p1, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    iput p1, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    .line 1123
    return-void
.end method

.method public blacklist setTo(Landroid/content/res/Configuration;II)V
    .registers 7

    .line 1832
    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr v0, p2

    if-eqz v0, :cond_9

    .line 1833
    iget v0, p1, Landroid/content/res/Configuration;->fontScale:F

    iput v0, p0, Landroid/content/res/Configuration;->fontScale:F

    .line 1835
    :cond_9
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_11

    .line 1836
    iget v0, p1, Landroid/content/res/Configuration;->mcc:I

    iput v0, p0, Landroid/content/res/Configuration;->mcc:I

    .line 1838
    :cond_11
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_19

    .line 1839
    iget v0, p1, Landroid/content/res/Configuration;->mnc:I

    iput v0, p0, Landroid/content/res/Configuration;->mnc:I

    .line 1841
    :cond_19
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_3d

    .line 1842
    iget-object v1, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    iput-object v1, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    .line 1843
    iget-object v1, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v1}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3d

    .line 1844
    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v2, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3d

    .line 1846
    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Locale;

    iput-object v1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1850
    :cond_3d
    and-int/lit16 v1, p2, 0x2000

    if-eqz v1, :cond_4c

    .line 1851
    iget v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v1, v1, 0xc0

    .line 1852
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v2, v2, -0xc1

    or-int/2addr v1, v2

    iput v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 1854
    :cond_4c
    if-eqz v0, :cond_52

    .line 1855
    iget-boolean v0, p1, Landroid/content/res/Configuration;->userSetLocale:Z

    iput-boolean v0, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 1857
    :cond_52
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_5a

    .line 1858
    iget v0, p1, Landroid/content/res/Configuration;->touchscreen:I

    iput v0, p0, Landroid/content/res/Configuration;->touchscreen:I

    .line 1860
    :cond_5a
    and-int/lit8 v0, p2, 0x10

    if-eqz v0, :cond_62

    .line 1861
    iget v0, p1, Landroid/content/res/Configuration;->keyboard:I

    iput v0, p0, Landroid/content/res/Configuration;->keyboard:I

    .line 1863
    :cond_62
    and-int/lit8 v0, p2, 0x20

    if-eqz v0, :cond_72

    .line 1864
    iget v0, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    iput v0, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 1865
    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v0, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 1866
    iget v0, p1, Landroid/content/res/Configuration;->navigationHidden:I

    iput v0, p0, Landroid/content/res/Configuration;->navigationHidden:I

    .line 1868
    :cond_72
    and-int/lit8 v0, p2, 0x40

    if-eqz v0, :cond_7a

    .line 1869
    iget v0, p1, Landroid/content/res/Configuration;->navigation:I

    iput v0, p0, Landroid/content/res/Configuration;->navigation:I

    .line 1871
    :cond_7a
    and-int/lit16 v0, p2, 0x80

    if-eqz v0, :cond_82

    .line 1872
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Landroid/content/res/Configuration;->orientation:I

    .line 1874
    :cond_82
    and-int/lit16 v0, p2, 0x100

    if-eqz v0, :cond_8f

    .line 1876
    iget v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    iget v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v1, v1, -0xc1

    or-int/2addr v0, v1

    iput v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 1878
    :cond_8f
    and-int/lit16 v0, p2, 0x4000

    if-eqz v0, :cond_97

    .line 1879
    iget v0, p1, Landroid/content/res/Configuration;->colorMode:I

    iput v0, p0, Landroid/content/res/Configuration;->colorMode:I

    .line 1881
    :cond_97
    and-int/lit16 v0, p2, 0x200

    if-eqz v0, :cond_9f

    .line 1882
    iget v0, p1, Landroid/content/res/Configuration;->uiMode:I

    iput v0, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 1884
    :cond_9f
    and-int/lit16 v0, p2, 0x400

    if-eqz v0, :cond_ab

    .line 1885
    iget v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 1886
    iget v0, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v0, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 1888
    :cond_ab
    and-int/lit16 v0, p2, 0x800

    if-eqz v0, :cond_b3

    .line 1889
    iget v0, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 1891
    :cond_b3
    and-int/lit16 v0, p2, 0x1000

    if-eqz v0, :cond_bb

    .line 1892
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    .line 1894
    :cond_bb
    const/high16 v0, -0x80000000

    and-int/2addr v0, p2

    if-eqz v0, :cond_c4

    .line 1895
    iget v0, p1, Landroid/content/res/Configuration;->assetsSeq:I

    iput v0, p0, Landroid/content/res/Configuration;->assetsSeq:I

    .line 1897
    :cond_c4
    const/high16 v0, 0x20000000

    and-int/2addr v0, p2

    if-eqz v0, :cond_d0

    .line 1898
    iget-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, v1, p3}, Landroid/app/WindowConfiguration;->setTo(Landroid/app/WindowConfiguration;I)V

    .line 1900
    :cond_d0
    const/high16 p3, 0x10000000

    and-int/2addr p3, p2

    if-eqz p3, :cond_d9

    .line 1901
    iget p3, p1, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    iput p3, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    .line 1903
    :cond_d9
    const p3, 0x8000

    and-int/2addr p2, p3

    if-eqz p2, :cond_e3

    .line 1904
    iget p1, p1, Landroid/content/res/Configuration;->mGrammaticalGender:I

    iput p1, p0, Landroid/content/res/Configuration;->mGrammaticalGender:I

    .line 1906
    :cond_e3
    return-void
.end method

.method public whitelist setToDefaults()V
    .registers 3

    .line 1590
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/content/res/Configuration;->fontScale:F

    .line 1591
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/res/Configuration;->mnc:I

    iput v0, p0, Landroid/content/res/Configuration;->mcc:I

    .line 1592
    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object v1

    iput-object v1, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    .line 1593
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1594
    iput-boolean v0, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 1595
    iput v0, p0, Landroid/content/res/Configuration;->touchscreen:I

    .line 1596
    iput v0, p0, Landroid/content/res/Configuration;->keyboard:I

    .line 1597
    iput v0, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 1598
    iput v0, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 1599
    iput v0, p0, Landroid/content/res/Configuration;->navigation:I

    .line 1600
    iput v0, p0, Landroid/content/res/Configuration;->navigationHidden:I

    .line 1601
    iput v0, p0, Landroid/content/res/Configuration;->orientation:I

    .line 1602
    iput v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 1603
    iput v0, p0, Landroid/content/res/Configuration;->colorMode:I

    .line 1604
    iput v0, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 1605
    iput v0, p0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 1606
    iput v0, p0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    iput v0, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 1607
    iput v0, p0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 1608
    iput v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    .line 1609
    iput v0, p0, Landroid/content/res/Configuration;->assetsSeq:I

    .line 1610
    iput v0, p0, Landroid/content/res/Configuration;->seq:I

    .line 1611
    iget-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->setToDefaults()V

    .line 1612
    const v0, 0x7fffffff

    iput v0, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    .line 1613
    const/4 v0, -0x1

    iput v0, p0, Landroid/content/res/Configuration;->mGrammaticalGender:I

    .line 1614
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 7

    .line 1126
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1127
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1128
    iget v1, p0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1129
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1130
    iget v2, p0, Landroid/content/res/Configuration;->mcc:I

    if-eqz v2, :cond_27

    .line 1131
    iget v2, p0, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1132
    const-string/jumbo v2, "mcc"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2c

    .line 1134
    :cond_27
    const-string v2, "?mcc"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1136
    :goto_2c
    iget v2, p0, Landroid/content/res/Configuration;->mnc:I

    const v3, 0xffff

    if-eq v2, v3, :cond_3f

    .line 1137
    iget v2, p0, Landroid/content/res/Configuration;->mnc:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1138
    const-string/jumbo v2, "mnc"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_44

    .line 1140
    :cond_3f
    const-string v2, "?mnc"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1142
    :goto_44
    invoke-direct {p0}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    .line 1143
    iget-object v2, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v2}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_58

    .line 1144
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1145
    iget-object v2, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_5d

    .line 1147
    :cond_58
    const-string v2, " ?localeList"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1149
    :goto_5d
    iget v2, p0, Landroid/content/res/Configuration;->mGrammaticalGender:I

    if-lez v2, :cond_7d

    .line 1150
    iget v2, p0, Landroid/content/res/Configuration;->mGrammaticalGender:I

    packed-switch v2, :pswitch_data_358

    .line 1154
    const-string v2, " ?grgend"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7d

    .line 1153
    :pswitch_6c
    const-string v2, " masculine"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7d

    .line 1152
    :pswitch_72
    const-string v2, " feminine"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7d

    .line 1151
    :pswitch_78
    const-string v2, " neuter"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1157
    :cond_7d
    :goto_7d
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v2, v2, 0xc0

    .line 1158
    sparse-switch v2, :sswitch_data_362

    .line 1162
    const-string v3, " layoutDir="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1163
    shr-int/lit8 v2, v2, 0x6

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_a0

    .line 1161
    :sswitch_8f
    const-string v2, " ldrtl"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a0

    .line 1160
    :sswitch_95
    const-string v2, " ldltr"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a0

    .line 1159
    :sswitch_9b
    const-string v2, " ?layoutDir"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1165
    :goto_a0
    iget v2, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const-string v3, "dp"

    if-eqz v2, :cond_b4

    .line 1166
    const-string v2, " sw"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b9

    .line 1168
    :cond_b4
    const-string v2, " ?swdp"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1170
    :goto_b9
    iget v2, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v2, :cond_cb

    .line 1171
    const-string v2, " w"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d0

    .line 1173
    :cond_cb
    const-string v2, " ?wdp"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1175
    :goto_d0
    iget v2, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eqz v2, :cond_e2

    .line 1176
    const-string v2, " h"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e7

    .line 1178
    :cond_e2
    const-string v2, " ?hdp"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1180
    :goto_e7
    iget v2, p0, Landroid/content/res/Configuration;->densityDpi:I

    if-eqz v2, :cond_f9

    .line 1181
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "dpi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_fe

    .line 1183
    :cond_f9
    const-string v1, " ?density"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1185
    :goto_fe
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    packed-switch v1, :pswitch_data_370

    .line 1191
    const-string v1, " layoutSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1192
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_12f

    .line 1190
    :pswitch_112
    const-string v1, " xlrg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12f

    .line 1189
    :pswitch_118
    const-string v1, " lrg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12f

    .line 1188
    :pswitch_11e
    const-string v1, " nrml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12f

    .line 1187
    :pswitch_124
    const-string v1, " smll"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12f

    .line 1186
    :pswitch_12a
    const-string v1, " ?lsize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1194
    :goto_12f
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0x30

    sparse-switch v1, :sswitch_data_37e

    .line 1198
    const-string v1, " layoutLong="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1199
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0x30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_14f

    .line 1197
    :sswitch_143
    const-string v1, " long"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_14f

    .line 1196
    :sswitch_149
    goto :goto_14f

    .line 1195
    :sswitch_14a
    const-string v1, " ?long"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1201
    :goto_14f
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v1, v1, 0x300

    sparse-switch v1, :sswitch_data_38c

    .line 1205
    const-string v1, " layoutRound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1206
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v1, v1, 0x300

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_16f

    .line 1204
    :sswitch_163
    const-string v1, " round"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16f

    .line 1203
    :sswitch_169
    goto :goto_16f

    .line 1202
    :sswitch_16a
    const-string v1, " ?round"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1208
    :goto_16f
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    const/high16 v2, 0x10000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_17b

    .line 1209
    const-string v1, " compactNeeded"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1211
    :cond_17b
    iget v1, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v1, v1, 0xc

    sparse-switch v1, :sswitch_data_39a

    .line 1215
    const-string v1, " dynamicRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1216
    iget v1, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v1, v1, 0xc

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_19b

    .line 1214
    :sswitch_18f
    const-string v1, " hdr"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_19b

    .line 1213
    :sswitch_195
    goto :goto_19b

    .line 1212
    :sswitch_196
    const-string v1, " ?ldr"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1218
    :goto_19b
    iget v1, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v1, v1, 0x3

    packed-switch v1, :pswitch_data_3a8

    .line 1222
    const-string v1, " wideColorGamut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1223
    iget v1, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1bb

    .line 1221
    :pswitch_1af
    const-string v1, " widecg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1bb

    .line 1220
    :pswitch_1b5
    goto :goto_1bb

    .line 1219
    :pswitch_1b6
    const-string v1, " ?wideColorGamut"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1225
    :goto_1bb
    iget v1, p0, Landroid/content/res/Configuration;->orientation:I

    packed-switch v1, :pswitch_data_3b2

    .line 1229
    const-string v1, " orien="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1dc

    .line 1227
    :pswitch_1cb
    const-string v1, " land"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1dc

    .line 1228
    :pswitch_1d1
    const-string v1, " port"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1dc

    .line 1226
    :pswitch_1d7
    const-string v1, " ?orien"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1231
    :goto_1dc
    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0xf

    packed-switch v1, :pswitch_data_3bc

    .line 1240
    const-string v1, " uimode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0xf

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_21a

    .line 1239
    :pswitch_1f0
    const-string v1, " vrheadset"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_21a

    .line 1238
    :pswitch_1f6
    const-string v1, " watch"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_21a

    .line 1237
    :pswitch_1fc
    const-string v1, " appliance"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_21a

    .line 1236
    :pswitch_202
    const-string v1, " television"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_21a

    .line 1235
    :pswitch_208
    const-string v1, " car"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_21a

    .line 1234
    :pswitch_20e
    const-string v1, " desk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_21a

    .line 1233
    :pswitch_214
    goto :goto_21a

    .line 1232
    :pswitch_215
    const-string v1, " ?uimode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1242
    :goto_21a
    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x30

    sparse-switch v1, :sswitch_data_3d0

    .line 1246
    const-string v1, " night="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_23a

    .line 1245
    :sswitch_22e
    const-string v1, " night"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_23a

    .line 1244
    :sswitch_234
    goto :goto_23a

    .line 1243
    :sswitch_235
    const-string v1, " ?night"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1248
    :goto_23a
    iget v1, p0, Landroid/content/res/Configuration;->touchscreen:I

    packed-switch v1, :pswitch_data_3de

    .line 1253
    const-string v1, " touch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->touchscreen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_261

    .line 1252
    :pswitch_24a
    const-string v1, " finger"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_261

    .line 1251
    :pswitch_250
    const-string v1, " stylus"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_261

    .line 1250
    :pswitch_256
    const-string v1, " -touch"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_261

    .line 1249
    :pswitch_25c
    const-string v1, " ?touch"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1255
    :goto_261
    iget v1, p0, Landroid/content/res/Configuration;->keyboard:I

    packed-switch v1, :pswitch_data_3ea

    .line 1260
    const-string v1, " keys="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->keyboard:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_288

    .line 1259
    :pswitch_271
    const-string v1, " 12key"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_288

    .line 1258
    :pswitch_277
    const-string v1, " qwerty"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_288

    .line 1257
    :pswitch_27d
    const-string v1, " -keyb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_288

    .line 1256
    :pswitch_283
    const-string v1, " ?keyb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1262
    :goto_288
    iget v1, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    const-string v2, "/"

    const-string v3, "/h"

    const-string v4, "/v"

    const-string v5, "/?"

    packed-switch v1, :pswitch_data_3f6

    .line 1267
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2af

    .line 1266
    :pswitch_29e
    const-string v1, "/s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2af

    .line 1265
    :pswitch_2a4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2af

    .line 1264
    :pswitch_2a8
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2af

    .line 1263
    :pswitch_2ac
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1269
    :goto_2af
    iget v1, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    packed-switch v1, :pswitch_data_402

    .line 1273
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2c8

    .line 1272
    :pswitch_2bd
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2c8

    .line 1271
    :pswitch_2c1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2c8

    .line 1270
    :pswitch_2c5
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1275
    :goto_2c8
    iget v1, p0, Landroid/content/res/Configuration;->navigation:I

    packed-switch v1, :pswitch_data_40c

    .line 1281
    const-string v1, " nav="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->navigation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2f5

    .line 1280
    :pswitch_2d8
    const-string v1, " wheel"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2f5

    .line 1279
    :pswitch_2de
    const-string v1, " tball"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2f5

    .line 1278
    :pswitch_2e4
    const-string v1, " dpad"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2f5

    .line 1277
    :pswitch_2ea
    const-string v1, " -nav"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2f5

    .line 1276
    :pswitch_2f0
    const-string v1, " ?nav"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1283
    :goto_2f5
    iget v1, p0, Landroid/content/res/Configuration;->navigationHidden:I

    packed-switch v1, :pswitch_data_41a

    .line 1287
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->navigationHidden:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_30e

    .line 1286
    :pswitch_303
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_30e

    .line 1285
    :pswitch_307
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_30e

    .line 1284
    :pswitch_30b
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1289
    :goto_30e
    const-string v1, " winConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1290
    iget v1, p0, Landroid/content/res/Configuration;->assetsSeq:I

    if-eqz v1, :cond_327

    .line 1291
    const-string v1, " as."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/content/res/Configuration;->assetsSeq:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1293
    :cond_327
    iget v1, p0, Landroid/content/res/Configuration;->seq:I

    if-eqz v1, :cond_336

    .line 1294
    const-string v1, " s."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/content/res/Configuration;->seq:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1296
    :cond_336
    iget v1, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_348

    .line 1297
    const-string v1, " fontWeightAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1298
    iget v1, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_34d

    .line 1300
    :cond_348
    const-string v1, " ?fontWeightAdjustment"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1302
    :goto_34d
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1303
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_358
    .packed-switch 0x1
        :pswitch_78
        :pswitch_72
        :pswitch_6c
    .end packed-switch

    :sswitch_data_362
    .sparse-switch
        0x0 -> :sswitch_9b
        0x40 -> :sswitch_95
        0x80 -> :sswitch_8f
    .end sparse-switch

    :pswitch_data_370
    .packed-switch 0x0
        :pswitch_12a
        :pswitch_124
        :pswitch_11e
        :pswitch_118
        :pswitch_112
    .end packed-switch

    :sswitch_data_37e
    .sparse-switch
        0x0 -> :sswitch_14a
        0x10 -> :sswitch_149
        0x20 -> :sswitch_143
    .end sparse-switch

    :sswitch_data_38c
    .sparse-switch
        0x0 -> :sswitch_16a
        0x100 -> :sswitch_169
        0x200 -> :sswitch_163
    .end sparse-switch

    :sswitch_data_39a
    .sparse-switch
        0x0 -> :sswitch_196
        0x4 -> :sswitch_195
        0x8 -> :sswitch_18f
    .end sparse-switch

    :pswitch_data_3a8
    .packed-switch 0x0
        :pswitch_1b6
        :pswitch_1b5
        :pswitch_1af
    .end packed-switch

    :pswitch_data_3b2
    .packed-switch 0x0
        :pswitch_1d7
        :pswitch_1d1
        :pswitch_1cb
    .end packed-switch

    :pswitch_data_3bc
    .packed-switch 0x0
        :pswitch_215
        :pswitch_214
        :pswitch_20e
        :pswitch_208
        :pswitch_202
        :pswitch_1fc
        :pswitch_1f6
        :pswitch_1f0
    .end packed-switch

    :sswitch_data_3d0
    .sparse-switch
        0x0 -> :sswitch_235
        0x10 -> :sswitch_234
        0x20 -> :sswitch_22e
    .end sparse-switch

    :pswitch_data_3de
    .packed-switch 0x0
        :pswitch_25c
        :pswitch_256
        :pswitch_250
        :pswitch_24a
    .end packed-switch

    :pswitch_data_3ea
    .packed-switch 0x0
        :pswitch_283
        :pswitch_27d
        :pswitch_277
        :pswitch_271
    .end packed-switch

    :pswitch_data_3f6
    .packed-switch 0x0
        :pswitch_2ac
        :pswitch_2a8
        :pswitch_2a4
        :pswitch_29e
    .end packed-switch

    :pswitch_data_402
    .packed-switch 0x0
        :pswitch_2c5
        :pswitch_2c1
        :pswitch_2bd
    .end packed-switch

    :pswitch_data_40c
    .packed-switch 0x0
        :pswitch_2f0
        :pswitch_2ea
        :pswitch_2e4
        :pswitch_2de
        :pswitch_2d8
    .end packed-switch

    :pswitch_data_41a
    .packed-switch 0x0
        :pswitch_30b
        :pswitch_307
        :pswitch_303
    .end packed-switch
.end method

.method public greylist-max-o unset()V
    .registers 2

    .line 1621
    invoke-virtual {p0}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 1622
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/res/Configuration;->fontScale:F

    .line 1623
    return-void
.end method

.method public whitelist updateFrom(Landroid/content/res/Configuration;)I
    .registers 6

    .line 1639
    nop

    .line 1640
    iget v0, p1, Landroid/content/res/Configuration;->fontScale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_18

    iget v0, p0, Landroid/content/res/Configuration;->fontScale:F

    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_18

    .line 1641
    nop

    .line 1642
    iget v0, p1, Landroid/content/res/Configuration;->fontScale:F

    iput v0, p0, Landroid/content/res/Configuration;->fontScale:F

    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_19

    .line 1644
    :cond_18
    const/4 v0, 0x0

    :goto_19
    iget v1, p1, Landroid/content/res/Configuration;->mcc:I

    if-eqz v1, :cond_29

    iget v1, p0, Landroid/content/res/Configuration;->mcc:I

    iget v2, p1, Landroid/content/res/Configuration;->mcc:I

    if-eq v1, v2, :cond_29

    .line 1645
    or-int/lit8 v0, v0, 0x1

    .line 1646
    iget v1, p1, Landroid/content/res/Configuration;->mcc:I

    iput v1, p0, Landroid/content/res/Configuration;->mcc:I

    .line 1648
    :cond_29
    iget v1, p1, Landroid/content/res/Configuration;->mnc:I

    if-eqz v1, :cond_39

    iget v1, p0, Landroid/content/res/Configuration;->mnc:I

    iget v2, p1, Landroid/content/res/Configuration;->mnc:I

    if-eq v1, v2, :cond_39

    .line 1649
    or-int/lit8 v0, v0, 0x2

    .line 1650
    iget v1, p1, Landroid/content/res/Configuration;->mnc:I

    iput v1, p0, Landroid/content/res/Configuration;->mnc:I

    .line 1652
    :cond_39
    invoke-direct {p0}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    .line 1653
    invoke-direct {p1}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    .line 1654
    iget-object v1, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v1}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_72

    iget-object v1, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    iget-object v2, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_72

    .line 1655
    or-int/lit8 v0, v0, 0x4

    .line 1656
    iget-object v1, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    iput-object v1, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    .line 1658
    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v2, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_72

    .line 1659
    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Locale;

    iput-object v1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1661
    or-int/lit16 v0, v0, 0x2000

    .line 1664
    iget-object v1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Landroid/content/res/Configuration;->setLayoutDirection(Ljava/util/Locale;)V

    .line 1667
    :cond_72
    iget v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v1, v1, 0xc0

    .line 1668
    if-eqz v1, :cond_87

    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v2, v2, 0xc0

    if-eq v1, v2, :cond_87

    .line 1670
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v2, v2, -0xc1

    or-int/2addr v1, v2

    iput v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 1671
    or-int/lit16 v0, v0, 0x2000

    .line 1673
    :cond_87
    iget-boolean v1, p1, Landroid/content/res/Configuration;->userSetLocale:Z

    if-eqz v1, :cond_98

    iget-boolean v1, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    if-eqz v1, :cond_93

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_98

    .line 1675
    :cond_93
    or-int/lit8 v0, v0, 0x4

    .line 1676
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 1678
    :cond_98
    iget v1, p1, Landroid/content/res/Configuration;->touchscreen:I

    if-eqz v1, :cond_a8

    iget v1, p0, Landroid/content/res/Configuration;->touchscreen:I

    iget v2, p1, Landroid/content/res/Configuration;->touchscreen:I

    if-eq v1, v2, :cond_a8

    .line 1680
    or-int/lit8 v0, v0, 0x8

    .line 1681
    iget v1, p1, Landroid/content/res/Configuration;->touchscreen:I

    iput v1, p0, Landroid/content/res/Configuration;->touchscreen:I

    .line 1683
    :cond_a8
    iget v1, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eqz v1, :cond_b8

    iget v1, p0, Landroid/content/res/Configuration;->keyboard:I

    iget v2, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v1, v2, :cond_b8

    .line 1685
    or-int/lit8 v0, v0, 0x10

    .line 1686
    iget v1, p1, Landroid/content/res/Configuration;->keyboard:I

    iput v1, p0, Landroid/content/res/Configuration;->keyboard:I

    .line 1688
    :cond_b8
    iget v1, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eqz v1, :cond_c8

    iget v1, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v2, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eq v1, v2, :cond_c8

    .line 1690
    or-int/lit8 v0, v0, 0x20

    .line 1691
    iget v1, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    iput v1, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 1693
    :cond_c8
    iget v1, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eqz v1, :cond_d8

    iget v1, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v2, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eq v1, v2, :cond_d8

    .line 1695
    or-int/lit8 v0, v0, 0x20

    .line 1696
    iget v1, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v1, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 1698
    :cond_d8
    iget v1, p1, Landroid/content/res/Configuration;->navigation:I

    if-eqz v1, :cond_e8

    iget v1, p0, Landroid/content/res/Configuration;->navigation:I

    iget v2, p1, Landroid/content/res/Configuration;->navigation:I

    if-eq v1, v2, :cond_e8

    .line 1700
    or-int/lit8 v0, v0, 0x40

    .line 1701
    iget v1, p1, Landroid/content/res/Configuration;->navigation:I

    iput v1, p0, Landroid/content/res/Configuration;->navigation:I

    .line 1703
    :cond_e8
    iget v1, p1, Landroid/content/res/Configuration;->navigationHidden:I

    if-eqz v1, :cond_f8

    iget v1, p0, Landroid/content/res/Configuration;->navigationHidden:I

    iget v2, p1, Landroid/content/res/Configuration;->navigationHidden:I

    if-eq v1, v2, :cond_f8

    .line 1705
    or-int/lit8 v0, v0, 0x20

    .line 1706
    iget v1, p1, Landroid/content/res/Configuration;->navigationHidden:I

    iput v1, p0, Landroid/content/res/Configuration;->navigationHidden:I

    .line 1708
    :cond_f8
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eqz v1, :cond_108

    iget v1, p0, Landroid/content/res/Configuration;->orientation:I

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v2, :cond_108

    .line 1710
    or-int/lit16 v0, v0, 0x80

    .line 1711
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Landroid/content/res/Configuration;->orientation:I

    .line 1713
    :cond_108
    iget v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    if-eqz v1, :cond_125

    iget v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    if-eq v1, v2, :cond_125

    .line 1716
    or-int/lit16 v0, v0, 0x100

    .line 1717
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, -0x10

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    or-int/2addr v1, v2

    iput v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 1720
    :cond_125
    iget v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0x30

    if-eqz v1, :cond_142

    iget v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0x30

    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0x30

    if-eq v1, v2, :cond_142

    .line 1723
    or-int/lit16 v0, v0, 0x100

    .line 1724
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, -0x31

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0x30

    or-int/2addr v1, v2

    iput v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 1727
    :cond_142
    iget v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v1, v1, 0x300

    if-eqz v1, :cond_15f

    iget v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v1, v1, 0x300

    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v2, v2, 0x300

    if-eq v1, v2, :cond_15f

    .line 1730
    or-int/lit16 v0, v0, 0x100

    .line 1731
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v1, v1, -0x301

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v2, v2, 0x300

    or-int/2addr v1, v2

    iput v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 1734
    :cond_15f
    iget v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    const/high16 v2, 0x10000000

    and-int/2addr v1, v2

    iget v3, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/2addr v3, v2

    if-eq v1, v3, :cond_17b

    iget v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    if-eqz v1, :cond_17b

    .line 1737
    or-int/lit16 v0, v0, 0x100

    .line 1738
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    const v3, -0x10000001

    and-int/2addr v1, v3

    iget v3, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/2addr v3, v2

    or-int/2addr v1, v3

    iput v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 1742
    :cond_17b
    iget v1, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v1, v1, 0x3

    if-eqz v1, :cond_198

    iget v1, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v1, v1, 0x3

    iget v3, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v3, v3, 0x3

    if-eq v1, v3, :cond_198

    .line 1746
    or-int/lit16 v0, v0, 0x4000

    .line 1747
    iget v1, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v1, v1, -0x4

    iget v3, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v3, v3, 0x3

    or-int/2addr v1, v3

    iput v1, p0, Landroid/content/res/Configuration;->colorMode:I

    .line 1751
    :cond_198
    iget v1, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v1, v1, 0xc

    if-eqz v1, :cond_1b5

    iget v1, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v1, v1, 0xc

    iget v3, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v3, v3, 0xc

    if-eq v1, v3, :cond_1b5

    .line 1754
    or-int/lit16 v0, v0, 0x4000

    .line 1755
    iget v1, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v1, v1, -0xd

    iget v3, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v3, v3, 0xc

    or-int/2addr v1, v3

    iput v1, p0, Landroid/content/res/Configuration;->colorMode:I

    .line 1759
    :cond_1b5
    iget v1, p1, Landroid/content/res/Configuration;->uiMode:I

    if-eqz v1, :cond_1e3

    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    iget v3, p1, Landroid/content/res/Configuration;->uiMode:I

    if-eq v1, v3, :cond_1e3

    .line 1761
    or-int/lit16 v0, v0, 0x200

    .line 1762
    iget v1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0xf

    if-eqz v1, :cond_1d2

    .line 1763
    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, -0x10

    iget v3, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v3, v3, 0xf

    or-int/2addr v1, v3

    iput v1, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 1766
    :cond_1d2
    iget v1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x30

    if-eqz v1, :cond_1e3

    .line 1767
    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, -0x31

    iget v3, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v3, v3, 0x30

    or-int/2addr v1, v3

    iput v1, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 1771
    :cond_1e3
    iget v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v1, :cond_1f3

    iget v1, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v3, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eq v1, v3, :cond_1f3

    .line 1773
    or-int/lit16 v0, v0, 0x400

    .line 1774
    iget v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v1, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 1776
    :cond_1f3
    iget v1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eqz v1, :cond_203

    iget v1, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v3, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v1, v3, :cond_203

    .line 1778
    or-int/lit16 v0, v0, 0x400

    .line 1779
    iget v1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v1, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 1781
    :cond_203
    iget v1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eqz v1, :cond_213

    iget v1, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v3, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eq v1, v3, :cond_213

    .line 1783
    or-int/lit16 v0, v0, 0x800

    .line 1784
    iget v1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v1, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 1786
    :cond_213
    iget v1, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-eqz v1, :cond_223

    iget v1, p0, Landroid/content/res/Configuration;->densityDpi:I

    iget v3, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v1, v3, :cond_223

    .line 1788
    or-int/lit16 v0, v0, 0x1000

    .line 1789
    iget v1, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput v1, p0, Landroid/content/res/Configuration;->densityDpi:I

    .line 1791
    :cond_223
    iget v1, p1, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    if-eqz v1, :cond_22b

    .line 1792
    iget v1, p1, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    iput v1, p0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    .line 1794
    :cond_22b
    iget v1, p1, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    if-eqz v1, :cond_233

    .line 1795
    iget v1, p1, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    iput v1, p0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    .line 1797
    :cond_233
    iget v1, p1, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    if-eqz v1, :cond_23b

    .line 1798
    iget v1, p1, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    iput v1, p0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    .line 1800
    :cond_23b
    iget v1, p1, Landroid/content/res/Configuration;->assetsSeq:I

    if-eqz v1, :cond_24c

    iget v1, p1, Landroid/content/res/Configuration;->assetsSeq:I

    iget v3, p0, Landroid/content/res/Configuration;->assetsSeq:I

    if-eq v1, v3, :cond_24c

    .line 1801
    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    .line 1802
    iget v1, p1, Landroid/content/res/Configuration;->assetsSeq:I

    iput v1, p0, Landroid/content/res/Configuration;->assetsSeq:I

    .line 1804
    :cond_24c
    iget v1, p1, Landroid/content/res/Configuration;->seq:I

    if-eqz v1, :cond_254

    .line 1805
    iget v1, p1, Landroid/content/res/Configuration;->seq:I

    iput v1, p0, Landroid/content/res/Configuration;->seq:I

    .line 1807
    :cond_254
    iget-object v1, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v3, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1, v3}, Landroid/app/WindowConfiguration;->updateFrom(Landroid/app/WindowConfiguration;)I

    move-result v1

    if-eqz v1, :cond_261

    .line 1808
    const/high16 v1, 0x20000000

    or-int/2addr v0, v1

    .line 1811
    :cond_261
    iget v1, p1, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    const v3, 0x7fffffff

    if-eq v1, v3, :cond_273

    iget v1, p1, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    iget v3, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    if-eq v1, v3, :cond_273

    .line 1813
    or-int/2addr v0, v2

    .line 1814
    iget v1, p1, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    iput v1, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    .line 1816
    :cond_273
    iget v1, p1, Landroid/content/res/Configuration;->mGrammaticalGender:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_286

    iget v1, p1, Landroid/content/res/Configuration;->mGrammaticalGender:I

    iget v2, p0, Landroid/content/res/Configuration;->mGrammaticalGender:I

    if-eq v1, v2, :cond_286

    .line 1818
    const v1, 0x8000

    or-int/2addr v0, v1

    .line 1819
    iget p1, p1, Landroid/content/res/Configuration;->mGrammaticalGender:I

    iput p1, p0, Landroid/content/res/Configuration;->mGrammaticalGender:I

    .line 1822
    :cond_286
    return v0
.end method

.method public greylist-max-o writeResConfigToProto(Landroid/util/proto/ProtoOutputStream;JLandroid/util/DisplayMetrics;)V
    .registers 9

    .line 1541
    iget v0, p4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, p4, Landroid/util/DisplayMetrics;->heightPixels:I

    if-lt v0, v1, :cond_b

    .line 1542
    iget v0, p4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1543
    iget p4, p4, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_f

    .line 1546
    :cond_b
    iget v0, p4, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1548
    iget p4, p4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1551
    :goto_f
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 1552
    const-wide v1, 0x10b00000001L

    invoke-virtual {p0, p1, v1, v2}, Landroid/content/res/Configuration;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1553
    const-wide v1, 0x10d00000002L

    sget v3, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1554
    const-wide v1, 0x10d00000003L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1555
    const-wide v0, 0x10d00000004L

    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1556
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1557
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 2107
    iget v0, p0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2108
    iget v0, p0, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2109
    iget v0, p0, Landroid/content/res/Configuration;->mnc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2111
    invoke-direct {p0}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    .line 2112
    iget-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2114
    iget-boolean v0, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    if-eqz v0, :cond_20

    .line 2115
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_24

    .line 2117
    :cond_20
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2119
    :goto_24
    iget v0, p0, Landroid/content/res/Configuration;->touchscreen:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2120
    iget v0, p0, Landroid/content/res/Configuration;->keyboard:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2121
    iget v0, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2122
    iget v0, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2123
    iget v0, p0, Landroid/content/res/Configuration;->navigation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2124
    iget v0, p0, Landroid/content/res/Configuration;->navigationHidden:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2125
    iget v0, p0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2126
    iget v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2127
    iget v0, p0, Landroid/content/res/Configuration;->colorMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2128
    iget v0, p0, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2129
    iget v0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2130
    iget v0, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2131
    iget v0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2132
    iget v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2133
    iget v0, p0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2134
    iget v0, p0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2135
    iget v0, p0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2136
    iget-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, p1, p2}, Landroid/app/WindowConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2137
    iget p2, p0, Landroid/content/res/Configuration;->assetsSeq:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2138
    iget p2, p0, Landroid/content/res/Configuration;->seq:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2139
    iget p2, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2140
    iget p2, p0, Landroid/content/res/Configuration;->mGrammaticalGender:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2141
    return-void
.end method
