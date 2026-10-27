.class public Lcom/android/internal/util/CutoutFullscreenController;
.super Ljava/lang/Object;
.source "CutoutFullscreenController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/CutoutFullscreenController$SettingsObserver;
    }
.end annotation


# instance fields
.field private blacklist mApps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mContext:Landroid/content/Context;

.field private final blacklist mIsAvailable:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContext(Lcom/android/internal/util/CutoutFullscreenController;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/util/CutoutFullscreenController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 4

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/CutoutFullscreenController;->mApps:Ljava/util/Set;

    .line 42
    iput-object p1, p0, Lcom/android/internal/util/CutoutFullscreenController;->mContext:Landroid/content/Context;

    .line 44
    iget-object p1, p0, Lcom/android/internal/util/CutoutFullscreenController;->mContext:Landroid/content/Context;

    const v0, 0x10402b7

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 46
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/android/internal/util/CutoutFullscreenController;->mIsAvailable:Z

    .line 48
    iget-boolean p1, p0, Lcom/android/internal/util/CutoutFullscreenController;->mIsAvailable:Z

    if-nez p1, :cond_22

    .line 49
    return-void

    .line 52
    :cond_22
    new-instance p1, Lcom/android/internal/util/CutoutFullscreenController$SettingsObserver;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, p0, v0}, Lcom/android/internal/util/CutoutFullscreenController$SettingsObserver;-><init>(Lcom/android/internal/util/CutoutFullscreenController;Landroid/os/Handler;)V

    .line 53
    invoke-virtual {p1}, Lcom/android/internal/util/CutoutFullscreenController$SettingsObserver;->observe()V

    .line 54
    return-void
.end method


# virtual methods
.method public blacklist addApp(Ljava/lang/String;)V
    .registers 4

    .line 69
    iget-object v0, p0, Lcom/android/internal/util/CutoutFullscreenController;->mApps:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object p1, p0, Lcom/android/internal/util/CutoutFullscreenController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/util/CutoutFullscreenController;->mApps:Ljava/util/Set;

    .line 71
    const-string v1, ","

    invoke-static {v1, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 70
    const-string v1, "force_full_screen_cutout_apps"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 72
    return-void
.end method

.method public blacklist getApps()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/android/internal/util/CutoutFullscreenController;->mApps:Ljava/util/Set;

    return-object v0
.end method

.method public blacklist isSupported()Z
    .registers 2

    .line 57
    iget-boolean v0, p0, Lcom/android/internal/util/CutoutFullscreenController;->mIsAvailable:Z

    return v0
.end method

.method public blacklist removeApp(Ljava/lang/String;)V
    .registers 4

    .line 75
    iget-object v0, p0, Lcom/android/internal/util/CutoutFullscreenController;->mApps:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 76
    iget-object p1, p0, Lcom/android/internal/util/CutoutFullscreenController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/util/CutoutFullscreenController;->mApps:Ljava/util/Set;

    .line 77
    const-string v1, ","

    invoke-static {v1, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 76
    const-string v1, "force_full_screen_cutout_apps"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 78
    return-void
.end method

.method public blacklist setApps(Ljava/util/Set;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 81
    iput-object p1, p0, Lcom/android/internal/util/CutoutFullscreenController;->mApps:Ljava/util/Set;

    .line 82
    return-void
.end method

.method public blacklist shouldForceCutoutFullscreen(Ljava/lang/String;)Z
    .registers 3

    .line 61
    invoke-virtual {p0}, Lcom/android/internal/util/CutoutFullscreenController;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/internal/util/CutoutFullscreenController;->mApps:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    return p1
.end method
