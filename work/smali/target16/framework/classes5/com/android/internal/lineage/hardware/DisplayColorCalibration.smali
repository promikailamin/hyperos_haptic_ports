.class public Lcom/android/internal/lineage/hardware/DisplayColorCalibration;
.super Ljava/lang/Object;
.source "DisplayColorCalibration.java"


# static fields
.field private static final blacklist COLOR_FILE:Ljava/lang/String; = "/sys/class/graphics/fb0/rgb"

.field private static final blacklist MAX:I = 0x8000

.field private static final blacklist MIN:I = 0xff

.field private static final blacklist TAG:Ljava/lang/String; = "DisplayColorCalibration"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getCurColors()Ljava/lang/String;
    .registers 1

    .line 48
    const-string v0, "/sys/class/graphics/fb0/rgb"

    invoke-static {v0}, Lcom/android/internal/util/custom/FileUtils;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getDefValue()I
    .registers 1

    .line 44
    invoke-static {}, Lcom/android/internal/lineage/hardware/DisplayColorCalibration;->getMaxValue()I

    move-result v0

    return v0
.end method

.method public static blacklist getMaxValue()I
    .registers 1

    .line 36
    const v0, 0x8000

    return v0
.end method

.method public static blacklist getMinValue()I
    .registers 1

    .line 40
    const/16 v0, 0xff

    return v0
.end method

.method public static blacklist isSupported()Z
    .registers 2

    .line 32
    const-string v0, "/sys/class/graphics/fb0/rgb"

    invoke-static {v0}, Lcom/android/internal/util/custom/FileUtils;->isFileReadable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-static {v0}, Lcom/android/internal/util/custom/FileUtils;->isFileWritable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public static blacklist setColors(Ljava/lang/String;)Z
    .registers 2

    .line 52
    const-string v0, "/sys/class/graphics/fb0/rgb"

    invoke-static {v0, p0}, Lcom/android/internal/util/custom/FileUtils;->writeLine(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
