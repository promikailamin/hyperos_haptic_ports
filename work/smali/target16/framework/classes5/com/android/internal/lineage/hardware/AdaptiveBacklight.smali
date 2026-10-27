.class public Lcom/android/internal/lineage/hardware/AdaptiveBacklight;
.super Ljava/lang/Object;
.source "AdaptiveBacklight.java"


# static fields
.field private static final blacklist FILE_CABC:Ljava/lang/String; = "/sys/class/graphics/fb0/cabc"

.field private static final blacklist TAG:Ljava/lang/String; = "AdaptiveBacklight"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist isEnabled()Z
    .registers 1

    .line 50
    const-string v0, "/sys/class/graphics/fb0/cabc"

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

.method public static blacklist isSupported()Z
    .registers 2

    .line 40
    const-string v0, "/sys/class/graphics/fb0/cabc"

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

    .line 61
    if-eqz p0, :cond_5

    const-string p0, "1"

    goto :goto_7

    :cond_5
    const-string p0, "0"

    :goto_7
    const-string v0, "/sys/class/graphics/fb0/cabc"

    invoke-static {v0, p0}, Lcom/android/internal/util/custom/FileUtils;->writeLine(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
