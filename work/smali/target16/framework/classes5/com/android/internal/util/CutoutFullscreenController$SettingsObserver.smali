.class Lcom/android/internal/util/CutoutFullscreenController$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "CutoutFullscreenController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/CutoutFullscreenController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/util/CutoutFullscreenController;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/util/CutoutFullscreenController;Landroid/os/Handler;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 85
    iput-object p1, p0, Lcom/android/internal/util/CutoutFullscreenController$SettingsObserver;->this$0:Lcom/android/internal/util/CutoutFullscreenController;

    .line 86
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 87
    return-void
.end method


# virtual methods
.method blacklist observe()V
    .registers 5

    .line 90
    iget-object v0, p0, Lcom/android/internal/util/CutoutFullscreenController$SettingsObserver;->this$0:Lcom/android/internal/util/CutoutFullscreenController;

    invoke-static {v0}, Lcom/android/internal/util/CutoutFullscreenController;->-$$Nest$fgetmContext(Lcom/android/internal/util/CutoutFullscreenController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 91
    const-string v1, "force_full_screen_cutout_apps"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 90
    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 93
    invoke-virtual {p0}, Lcom/android/internal/util/CutoutFullscreenController$SettingsObserver;->update()V

    .line 94
    return-void
.end method

.method public whitelist onChange(Z)V
    .registers 2

    .line 98
    invoke-virtual {p0}, Lcom/android/internal/util/CutoutFullscreenController$SettingsObserver;->update()V

    .line 99
    return-void
.end method

.method public blacklist update()V
    .registers 5

    .line 102
    iget-object v0, p0, Lcom/android/internal/util/CutoutFullscreenController$SettingsObserver;->this$0:Lcom/android/internal/util/CutoutFullscreenController;

    invoke-static {v0}, Lcom/android/internal/util/CutoutFullscreenController;->-$$Nest$fgetmContext(Lcom/android/internal/util/CutoutFullscreenController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "force_full_screen_cutout_apps"

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 104
    if-eqz v0, :cond_28

    .line 105
    iget-object v1, p0, Lcom/android/internal/util/CutoutFullscreenController$SettingsObserver;->this$0:Lcom/android/internal/util/CutoutFullscreenController;

    new-instance v2, Ljava/util/HashSet;

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/util/CutoutFullscreenController;->setApps(Ljava/util/Set;)V

    goto :goto_32

    .line 107
    :cond_28
    iget-object v0, p0, Lcom/android/internal/util/CutoutFullscreenController$SettingsObserver;->this$0:Lcom/android/internal/util/CutoutFullscreenController;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/internal/util/CutoutFullscreenController;->setApps(Ljava/util/Set;)V

    .line 109
    :goto_32
    return-void
.end method
