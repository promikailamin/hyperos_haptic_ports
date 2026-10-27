.class public Lcom/google/android/mms/util/DownloadDrmHelper;
.super Ljava/lang/Object;
.source "DownloadDrmHelper.java"


# static fields
.field public static final blacklist EXTENSION_DRM_MESSAGE:Ljava/lang/String; = ".dm"

.field public static final blacklist EXTENSION_INTERNAL_FWDL:Ljava/lang/String; = ".fl"

.field public static final blacklist MIMETYPE_DRM_MESSAGE:Ljava/lang/String; = "application/vnd.oma.drm.message"

.field private static final blacklist TAG:Ljava/lang/String; = "DownloadDrmHelper"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getOriginalMimeType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 101
    const-string v0, "DownloadDrmHelper"

    .line 102
    new-instance v1, Landroid/drm/DrmManagerClient;

    invoke-direct {v1, p0}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    .line 104
    const/4 p0, 0x0

    :try_start_8
    invoke-virtual {v1, p1, p0}, Landroid/drm/DrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_13

    .line 105
    invoke-virtual {v1, p1}, Landroid/drm/DrmManagerClient;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_12} :catch_1b
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_12} :catch_14

    move-object p2, p0

    .line 112
    :cond_13
    :goto_13
    goto :goto_22

    .line 110
    :catch_14
    move-exception p0

    .line 111
    const-string p0, "DrmManagerClient didn\'t initialize properly."

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    .line 107
    :catch_1b
    move-exception p0

    .line 108
    const-string p0, "Can\'t get original mime type since path is null or empty string."

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 113
    :goto_22
    return-object p2
.end method

.method public static greylist isDrmConvertNeeded(Ljava/lang/String;)Z
    .registers 2

    .line 70
    const-string v0, "application/vnd.oma.drm.message"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static blacklist isDrmMimeType(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5

    .line 45
    const-string v0, "DownloadDrmHelper"

    .line 46
    const/4 v1, 0x0

    if-eqz p0, :cond_28

    .line 48
    :try_start_5
    new-instance v2, Landroid/drm/DrmManagerClient;

    invoke-direct {v2, p0}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    .line 49
    if-eqz p1, :cond_19

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_19

    .line 50
    const-string p0, ""

    invoke-virtual {v2, p0, p1}, Landroid/drm/DrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_18
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_18} :catch_21
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_18} :catch_1a

    move v1, p0

    .line 57
    :cond_19
    :goto_19
    goto :goto_28

    .line 55
    :catch_1a
    move-exception p0

    .line 56
    const-string p0, "DrmManagerClient didn\'t initialize properly."

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    .line 52
    :catch_21
    move-exception p0

    .line 53
    const-string p0, "DrmManagerClient instance could not be created, context is Illegal."

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    .line 59
    :cond_28
    :goto_28
    return v1
.end method

.method public static greylist-max-r modifyDrmFwLockFileExtension(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 79
    if-eqz p0, :cond_16

    .line 81
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 82
    const/4 v1, -0x1

    if-eq v0, v1, :cond_10

    .line 83
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 85
    :cond_10
    const-string v0, ".fl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 87
    :cond_16
    return-object p0
.end method
