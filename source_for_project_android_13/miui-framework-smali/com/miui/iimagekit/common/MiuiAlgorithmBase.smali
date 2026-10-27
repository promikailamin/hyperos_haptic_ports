.class public Lcom/miui/iimagekit/common/MiuiAlgorithmBase;
.super Ljava/lang/Object;
.source "MiuiAlgorithmBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/iimagekit/common/MiuiAlgorithmBase$LogLevel;
    }
.end annotation


# static fields
.field public static final blacklist ALGO_CPUBOXBLUR:I = 0x3

.field public static final blacklist ALGO_CPUFASTBLUR:I = 0x4

.field public static final blacklist ALGO_CPUGAUSSIANBLUR:I = 0x5

.field public static final blacklist ALGO_NONEBLUR:I = 0x0

.field public static final blacklist ALGO_SHADOW_BOXBLUR:I = 0x2

.field public static final blacklist ALGO_SHADOW_NONESHADOW:I = 0x1

.field public static final blacklist BLUR_SUCCESS:I = 0x0

.field public static final blacklist ERRBLUR_BLUR_DISABLE:I = 0x5

.field public static final blacklist ERRBLUR_INPUT:I = 0x1

.field public static final blacklist ERRBLUR_INPUT_CONTEXT:I = 0x8

.field public static final blacklist ERRBLUR_INPUT_SIZE:I = 0x7

.field public static final blacklist ERRBLUR_OUTPUT:I = 0x2

.field public static final blacklist ERRBLUR_RADIUS:I = 0x4

.field public static final blacklist ERRBLUR_SHADOW_DISABLE:I = 0x6

.field public static final blacklist ERRBLUR_SIZE:I = 0x3

.field protected static final blacklist IS_DEBUG_ENABLE:Z = false

.field public static blacklist IS_IMAGEKIT_BLUR_PROP:Z = false

.field public static blacklist IS_IMAGEKIT_SHADOW_PROP:Z = false

.field public static final blacklist MAX_RADIUS:I = 0x19

.field public static final blacklist MIN_RADIUS:I = 0x2

.field public static final blacklist MIN_SIZE:I = 0x3

.field protected static final blacklist TAG:Ljava/lang/String; = "iimagekit"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 31
    const/4 v0, 0x0

    sput-boolean v0, Lcom/miui/iimagekit/common/MiuiAlgorithmBase;->IS_IMAGEKIT_BLUR_PROP:Z

    .line 32
    sput-boolean v0, Lcom/miui/iimagekit/common/MiuiAlgorithmBase;->IS_IMAGEKIT_SHADOW_PROP:Z

    .line 39
    const-string v0, "ro.config.miui_iimagekit_blur"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/miui/iimagekit/common/MiuiAlgorithmBase;->IS_IMAGEKIT_BLUR_PROP:Z

    .line 40
    const-string v0, "ro.config.miui_iimagekit_shadow"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/miui/iimagekit/common/MiuiAlgorithmBase;->IS_IMAGEKIT_SHADOW_PROP:Z

    .line 41
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist localLog(Lcom/miui/iimagekit/common/MiuiAlgorithmBase$LogLevel;Ljava/lang/String;)V
    .registers 5
    .param p0, "logLevel"    # Lcom/miui/iimagekit/common/MiuiAlgorithmBase$LogLevel;
    .param p1, "logInfo"    # Ljava/lang/String;

    .line 44
    invoke-virtual {p0}, Lcom/miui/iimagekit/common/MiuiAlgorithmBase$LogLevel;->ordinal()I

    move-result v0

    .line 45
    .local v0, "debugLevel":I
    const-string v1, "iimagekit"

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1a

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1a

    .line 46
    const/4 v2, 0x3

    if-ne v0, v2, :cond_13

    .line 47
    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    .line 48
    :cond_13
    const/4 v2, 0x4

    if-ne v0, v2, :cond_1d

    .line 49
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    .line 52
    :cond_1a
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_1d
    :goto_1d
    return-void
.end method
