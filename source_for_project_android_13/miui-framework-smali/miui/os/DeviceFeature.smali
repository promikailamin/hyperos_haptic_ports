.class public Lmiui/os/DeviceFeature;
.super Ljava/lang/Object;
.source "DeviceFeature.java"


# static fields
.field public static final blacklist BACKLIGHT_BIT:I

.field public static final blacklist DISABLE_SUPPORT_WCG:Z

.field public static final blacklist HBMBACKLIGHT_BIT:I

.field public static final blacklist IS_FOLD_DEVICE:Z

.field public static final blacklist IS_SUBSCREEN_DEVICE:Z

.field public static final blacklist IS_SUPPORT_MAGIC_POINTER:Z

.field private static blacklist IS_TEST_MODE:Z = false

.field public static final blacklist PERSIST_SCREEN_EFFECT:Z

.field public static final blacklist SCREEN_EFFECT_CONFLICT:Z

.field public static final blacklist SCROLLER_OPTIMIZATION_NORMAL_SUPPORT:Z

.field public static final blacklist SCROLLER_OPTIMIZATION_POWER_SUPPORT:Z

.field public static final blacklist SCROLLER_OPTIMIZATION_SUPPORT:Z

.field public static final blacklist SUPPORT_3D_GESTURE:Z

.field public static final blacklist SUPPORT_AUTO_BRIGHTNESS_OPTIMIZE:Z

.field public static final blacklist SUPPORT_CAMERA_ANIMATION:Z

.field public static final blacklist SUPPORT_DISPLAYFEATURE_CALLBACK:Z

.field public static final blacklist SUPPORT_DISPLAYFEATURE_HIDL:Z

.field public static final blacklist SUPPORT_FRONTCAMERA_CIRCLE_BLACK:Z

.field public static final blacklist SUPPORT_GAME_MODE:Z

.field public static final blacklist SUPPORT_HDR_HBM_BRIGHTEN:Z

.field public static final blacklist SUPPORT_IME_SNAPSHOT:Z

.field public static final blacklist SUPPORT_LAB_GESTURE:Z

.field public static final blacklist SUPPORT_NIGHT_LIGHT:Z = false

.field public static final blacklist SUPPORT_NIGHT_LIGHT_ADJ:Z = false

.field public static final blacklist SUPPORT_PAPERMODE_ANIMATION:Z

.field public static final blacklist SUPPORT_PARENTAL_CONTROL:Z

.field public static final blacklist SUPPORT_SPLIT_ACTIVITY:Z

.field public static final blacklist SYSTEM_RESOURCES:Landroid/content/res/Resources;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 12

    .line 13
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Lmiui/os/DeviceFeature;->SYSTEM_RESOURCES:Landroid/content/res/Resources;

    .line 18
    const-string v1, "support_autobrightness_optimize"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_16

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-gt v1, v4, :cond_1e

    .line 20
    :cond_16
    const-string v1, "sys.autobrightness_optimize"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_20

    :cond_1e
    move v1, v3

    goto :goto_21

    :cond_20
    move v1, v2

    :goto_21
    sput-boolean v1, Lmiui/os/DeviceFeature;->SUPPORT_AUTO_BRIGHTNESS_OPTIMIZE:Z

    .line 25
    nop

    .line 26
    const-string v1, "sys.displayfeature_hidl"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lmiui/os/DeviceFeature;->SUPPORT_DISPLAYFEATURE_HIDL:Z

    .line 28
    const v1, 0x1105001d

    .line 29
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lmiui/os/DeviceFeature;->SUPPORT_DISPLAYFEATURE_CALLBACK:Z

    .line 46
    const-string v1, "support_papermode_animation"

    invoke-static {v1, v2}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lmiui/os/DeviceFeature;->SUPPORT_PAPERMODE_ANIMATION:Z

    .line 50
    const v1, 0x110b0017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lmiui/os/DeviceFeature;->BACKLIGHT_BIT:I

    .line 54
    const v1, 0x110b002b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lmiui/os/DeviceFeature;->HBMBACKLIGHT_BIT:I

    .line 60
    const-string v0, "sys.persist_screen_effect"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lmiui/os/DeviceFeature;->PERSIST_SCREEN_EFFECT:Z

    .line 65
    const-string v0, "ro.df.effect.conflict"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v3, :cond_6a

    .line 67
    const-string v0, "ro.vendor.df.effect.conflict"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_68

    goto :goto_6a

    :cond_68
    move v0, v2

    goto :goto_6b

    :cond_6a
    :goto_6a
    move v0, v3

    :goto_6b
    sput-boolean v0, Lmiui/os/DeviceFeature;->SCREEN_EFFECT_CONFLICT:Z

    .line 69
    const-string v0, "support_touchfeature_gamemode"

    invoke-static {v0, v2}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lmiui/os/DeviceFeature;->SUPPORT_GAME_MODE:Z

    .line 88
    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "sagit"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_85

    sget-boolean v0, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    if-nez v0, :cond_85

    move v0, v3

    goto :goto_86

    :cond_85
    move v0, v2

    :goto_86
    sput-boolean v0, Lmiui/os/DeviceFeature;->SUPPORT_LAB_GESTURE:Z

    .line 91
    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "pyxis"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9f

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "vela"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9d

    goto :goto_9f

    :cond_9d
    move v0, v2

    goto :goto_a0

    :cond_9f
    :goto_9f
    move v0, v3

    :goto_a0
    sput-boolean v0, Lmiui/os/DeviceFeature;->SUPPORT_CAMERA_ANIMATION:Z

    .line 93
    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 94
    const-string v1, "apollo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "vida"

    const-string v4, "viva"

    const-string v5, "peux"

    const-string v6, "veux"

    const-string v7, "miel"

    const-string v8, "fleur"

    const-string v9, "spesn"

    const-string v10, "spes"

    if-nez v0, :cond_2cb

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 95
    const-string v11, "gauguin"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2cb

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 96
    const-string v11, "surya"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2cb

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 97
    const-string v11, "karna"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2cb

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 98
    const-string v11, "gauguinpro"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2cb

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 99
    const-string v11, "gauguininpro"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2cb

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 100
    const-string v11, "haydn"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2cb

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 101
    const-string v11, "haydnin"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2cb

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 102
    const-string v11, "haydnpro"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2cb

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 103
    const-string v11, "sweet"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2cb

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 104
    const-string v11, "sweetin"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2cb

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 105
    const-string v11, "alioth"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2cb

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 106
    const-string v11, "aliothin"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2cb

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 107
    const-string v11, "sunny"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2cb

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 108
    const-string v11, "rainbow"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2cb

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 109
    const-string v11, "mojito"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2cb

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 110
    const-string v11, "vayu"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2cb

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 111
    const-string v11, "bhima"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2cb

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 112
    const-string v11, "rosemary"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2cb

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 113
    const-string v11, "secret"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2cb

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 114
    const-string v11, "odin"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2cb

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 115
    const-string v11, "chopin"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2cb

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 116
    const-string v11, "maltose"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2cb

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 117
    const-string v11, "munch"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2cb

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 118
    const-string v11, "mona"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2cb

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 119
    const-string v11, "pissarro"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2cb

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 120
    const-string v11, "pissarropro"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2cb

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 121
    const-string v11, "pissarroin"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2cb

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 122
    const-string v11, "pissarroinpro"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2cb

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 123
    const-string v11, "xagain"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2cb

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 124
    const-string v11, "xagaproin"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2cb

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 125
    const-string v11, "xaga"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2cb

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 126
    const-string v11, "xagapro"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2cb

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 127
    const-string v11, "zijin"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2cb

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 128
    const-string v11, "tapas"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2cb

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 129
    const-string v11, "topaz"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2cb

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 130
    const-string v11, "moonstone"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2cb

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 131
    const-string v11, "sunstone"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2cb

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 132
    const-string v11, "sea"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2cb

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 133
    const-string v11, "ocean"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2cb

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 134
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2cb

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 135
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2cb

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 136
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2cb

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 137
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2cb

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 138
    const-string v11, "fire"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2cb

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 139
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2cb

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 140
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2cb

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 141
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2cb

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 142
    const-string v11, "heat"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2cb

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 143
    const-string v11, "pearl"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2cb

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 144
    const-string v11, "river"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2cb

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 145
    const-string v11, "sky"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2cb

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 146
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2cb

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 147
    const-string v11, "sweetk6a"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2cb

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 148
    const-string v11, "XIG03"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c9

    goto :goto_2cb

    :cond_2c9
    move v0, v2

    goto :goto_2cc

    :cond_2cb
    :goto_2cb
    move v0, v3

    :goto_2cc
    sput-boolean v0, Lmiui/os/DeviceFeature;->SUPPORT_FRONTCAMERA_CIRCLE_BLACK:Z

    .line 150
    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v11, "star"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/DeviceFeature;->IS_SUBSCREEN_DEVICE:Z

    .line 152
    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 153
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31b

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 154
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31b

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 155
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31b

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 156
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31b

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 157
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31b

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 158
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31b

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 159
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31b

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 160
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_319

    goto :goto_31b

    :cond_319
    move v0, v2

    goto :goto_31c

    :cond_31b
    :goto_31b
    move v0, v3

    :goto_31c
    sput-boolean v0, Lmiui/os/DeviceFeature;->DISABLE_SUPPORT_WCG:Z

    .line 162
    nop

    .line 163
    const-string v0, "persist.sys.muiltdisplay_type"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_32a

    move v0, v3

    goto :goto_32b

    :cond_32a
    move v0, v2

    :goto_32b
    sput-boolean v0, Lmiui/os/DeviceFeature;->IS_FOLD_DEVICE:Z

    .line 164
    sget-boolean v1, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v1, :cond_336

    if-eqz v0, :cond_334

    goto :goto_336

    :cond_334
    move v0, v2

    goto :goto_337

    :cond_336
    :goto_336
    move v0, v3

    :goto_337
    sput-boolean v0, Lmiui/os/DeviceFeature;->SUPPORT_SPLIT_ACTIVITY:Z

    .line 166
    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "cepheus"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_349

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_349

    move v0, v3

    goto :goto_34a

    :cond_349
    move v0, v2

    :goto_34a
    sput-boolean v0, Lmiui/os/DeviceFeature;->SUPPORT_3D_GESTURE:Z

    .line 175
    const-string v0, "support_hdr_hbm_brighten"

    invoke-static {v0, v2}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lmiui/os/DeviceFeature;->SUPPORT_HDR_HBM_BRIGHTEN:Z

    .line 178
    nop

    .line 180
    const-string v0, "ro.miui.cts"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 179
    xor-int/2addr v0, v3

    const-string v1, "persist.sys.miui_optimization"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/2addr v0, v3

    sput-boolean v0, Lmiui/os/DeviceFeature;->IS_TEST_MODE:Z

    .line 182
    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 183
    const-string v1, "yunluo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37c

    sget-boolean v0, Lmiui/os/DeviceFeature;->IS_TEST_MODE:Z

    if-eqz v0, :cond_37a

    goto :goto_37c

    :cond_37a
    move v0, v2

    goto :goto_37d

    :cond_37c
    :goto_37c
    move v0, v3

    :goto_37d
    sput-boolean v0, Lmiui/os/DeviceFeature;->SUPPORT_IME_SNAPSHOT:Z

    .line 186
    nop

    .line 187
    const-string v0, "ro.mi.os.version.code"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_38a

    move v0, v3

    goto :goto_38b

    :cond_38a
    move v0, v2

    :goto_38b
    sput-boolean v0, Lmiui/os/DeviceFeature;->SCROLLER_OPTIMIZATION_NORMAL_SUPPORT:Z

    .line 188
    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 189
    const-string v4, "socrates"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b8

    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 190
    const-string v4, "mondrian"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b8

    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 191
    const-string v4, "corot"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b8

    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 192
    const-string v4, "aristotle"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b6

    goto :goto_3b8

    :cond_3b6
    move v1, v2

    goto :goto_3b9

    :cond_3b8
    :goto_3b8
    move v1, v3

    :goto_3b9
    sput-boolean v1, Lmiui/os/DeviceFeature;->SCROLLER_OPTIMIZATION_POWER_SUPPORT:Z

    .line 194
    if-nez v0, :cond_3c2

    if-eqz v1, :cond_3c0

    goto :goto_3c2

    :cond_3c0
    move v0, v2

    goto :goto_3c3

    :cond_3c2
    :goto_3c2
    move v0, v3

    :goto_3c3
    sput-boolean v0, Lmiui/os/DeviceFeature;->SCROLLER_OPTIMIZATION_SUPPORT:Z

    .line 197
    const-string v0, "ro.config.miui_activity_Magic_Point"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lmiui/os/DeviceFeature;->IS_SUPPORT_MAGIC_POINTER:Z

    .line 200
    nop

    .line 201
    const-string v0, "support_parental_control"

    invoke-static {v0, v2}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3e8

    .line 202
    const-string v0, "ro.product.mod_device"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_eea"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3e8

    move v2, v3

    goto :goto_3e9

    :cond_3e8
    nop

    :goto_3e9
    sput-boolean v2, Lmiui/os/DeviceFeature;->SUPPORT_PARENTAL_CONTROL:Z

    .line 200
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final blacklist hasFlipSupport()Z
    .registers 2

    .line 85
    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "draco"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static final blacklist hasMirihiSupport()Z
    .registers 2

    .line 73
    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "perseus"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "andromeda"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    :goto_18
    return v0
.end method

.method public static final blacklist hasPopupCameraSupport()Z
    .registers 2

    .line 77
    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "raphael"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "davinci"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 78
    const-string v1, "raphaelin"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "davinciin"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 79
    const-string v1, "lmi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "lmiin"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 80
    const-string v1, "lmipro"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "lmiinpro"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 81
    const-string v1, "cezanne"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    goto :goto_5d

    :cond_5b
    const/4 v0, 0x0

    goto :goto_5e

    :cond_5d
    :goto_5d
    const/4 v0, 0x1

    .line 77
    :goto_5e
    return v0
.end method

.method public static final blacklist hasSupportAudioPromity()Z
    .registers 2

    .line 170
    const-string v0, "ro.vendor.audio.us.proximity"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_11

    .line 171
    const-string v0, "ro.audio.us.proximity"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_11
    const/4 v1, 0x1

    .line 170
    :cond_12
    return v1
.end method
