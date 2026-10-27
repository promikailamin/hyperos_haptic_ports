.class public Lcom/android/internal/lineage/hardware/SunlightEnhancement;
.super Ljava/lang/Object;
.source "SunlightEnhancement.java"


# static fields
.field private static final blacklist FACEMELT_MODE:Ljava/lang/String;

.field private static final blacklist FACEMELT_PATH:Ljava/lang/String;

.field private static final blacklist FILE_HBM:Ljava/lang/String; = "/sys/class/graphics/fb0/hbm"

.field private static final blacklist FILE_SRE:Ljava/lang/String; = "/sys/class/graphics/fb0/sre"

.field private static final blacklist TAG:Ljava/lang/String; = "SunlightEnhancement"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 31
    invoke-static {}, Lcom/android/internal/lineage/hardware/SunlightEnhancement;->getFacemeltPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/lineage/hardware/SunlightEnhancement;->FACEMELT_PATH:Ljava/lang/String;

    .line 32
    invoke-static {}, Lcom/android/internal/lineage/hardware/SunlightEnhancement;->getFacemeltMode()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/lineage/hardware/SunlightEnhancement;->FACEMELT_MODE:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist getFacemeltMode()Ljava/lang/String;
    .registers 1

    .line 46
    const-string v0, "/sys/class/graphics/fb0/hbm"

    invoke-static {v0}, Lcom/android/internal/util/custom/FileUtils;->fileExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 47
    const-string v0, "1"

    return-object v0

    .line 49
    :cond_b
    const-string v0, "2"

    return-object v0
.end method

.method private static blacklist getFacemeltPath()Ljava/lang/String;
    .registers 2

    .line 38
    const-string v0, "/sys/class/graphics/fb0/hbm"

    invoke-static {v0}, Lcom/android/internal/util/custom/FileUtils;->fileExists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 39
    return-object v0

    .line 41
    :cond_9
    const-string v0, "/sys/class/graphics/fb0/sre"

    return-object v0
.end method

.method public static blacklist isAdaptiveBacklightRequired()Z
    .registers 1

    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isEnabled()Z
    .registers 1

    .line 69
    sget-object v0, Lcom/android/internal/lineage/hardware/SunlightEnhancement;->FACEMELT_PATH:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/util/custom/FileUtils;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public static blacklist isSelfManaged()Z
    .registers 1

    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isSupported()Z
    .registers 1

    .line 59
    sget-object v0, Lcom/android/internal/lineage/hardware/SunlightEnhancement;->FACEMELT_PATH:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/util/custom/FileUtils;->isFileReadable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object v0, Lcom/android/internal/lineage/hardware/SunlightEnhancement;->FACEMELT_PATH:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/util/custom/FileUtils;->isFileWritable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public static blacklist setEnabled(Z)Z
    .registers 2

    .line 80
    sget-object v0, Lcom/android/internal/lineage/hardware/SunlightEnhancement;->FACEMELT_PATH:Ljava/lang/String;

    if-eqz p0, :cond_7

    sget-object p0, Lcom/android/internal/lineage/hardware/SunlightEnhancement;->FACEMELT_MODE:Ljava/lang/String;

    goto :goto_9

    :cond_7
    const-string p0, "0"

    :goto_9
    invoke-static {v0, p0}, Lcom/android/internal/util/custom/FileUtils;->writeLine(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
