.class public Lcom/android/internal/lineage/hardware/ColorEnhancement;
.super Ljava/lang/Object;
.source "ColorEnhancement.java"


# static fields
.field private static final blacklist FILE_CE:Ljava/lang/String; = "/sys/class/graphics/fb0/color_enhance"

.field private static final blacklist TAG:Ljava/lang/String; = "ColorEnhancement"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist isEnabled()Z
    .registers 4

    .line 49
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "/sys/class/graphics/fb0/color_enhance"

    invoke-static {v1}, Lcom/android/internal/util/custom/FileUtils;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_f

    if-lez v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0

    .line 50
    :catch_f
    move-exception v1

    .line 51
    const-string v2, "ColorEnhancement"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 53
    return v0
.end method

.method public static blacklist isSupported()Z
    .registers 2

    .line 38
    const-string v0, "/sys/class/graphics/fb0/color_enhance"

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

.method public static blacklist setEnabled(Z)Z
    .registers 2

    .line 64
    if-eqz p0, :cond_5

    const-string p0, "1"

    goto :goto_7

    :cond_5
    const-string p0, "0"

    :goto_7
    const-string v0, "/sys/class/graphics/fb0/color_enhance"

    invoke-static {v0, p0}, Lcom/android/internal/util/custom/FileUtils;->writeLine(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
