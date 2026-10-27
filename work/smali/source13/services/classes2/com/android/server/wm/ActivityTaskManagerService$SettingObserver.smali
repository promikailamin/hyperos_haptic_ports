.class final Lcom/android/server/wm/ActivityTaskManagerService$SettingObserver;
.super Landroid/database/ContentObserver;
.source "ActivityTaskManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ActivityTaskManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingObserver"
.end annotation


# instance fields
.field private final mFontScaleUri:Landroid/net/Uri;

.field private final mFontWeightAdjustmentUri:Landroid/net/Uri;

.field private final mHideErrorDialogsUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/server/wm/ActivityTaskManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 7

    .line 828
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$SettingObserver;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 829
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 823
    const-string v0, "font_scale"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$SettingObserver;->mFontScaleUri:Landroid/net/Uri;

    .line 824
    const-string v1, "hide_error_dialogs"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$SettingObserver;->mHideErrorDialogsUri:Landroid/net/Uri;

    .line 825
    const-string v2, "font_weight_adjustment"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService$SettingObserver;->mFontWeightAdjustmentUri:Landroid/net/Uri;

    .line 830
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 831
    .local p1, "resolver":Landroid/content/ContentResolver;
    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {p1, v0, v3, p0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 832
    invoke-virtual {p1, v1, v3, p0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 834
    invoke-virtual {p1, v2, v3, p0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 836
    return-void
.end method


# virtual methods
.method public onChange(ZLjava/util/Collection;II)V
    .registers 10
    .param p1, "selfChange"    # Z
    .param p3, "flags"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Collection<",
            "Landroid/net/Uri;",
            ">;II)V"
        }
    .end annotation

    .line 841
    .local p2, "uris":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/Uri;>;"
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 842
    .local v1, "uri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService$SettingObserver;->mFontScaleUri:Landroid/net/Uri;

    invoke-virtual {v2, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 843
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService$SettingObserver;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {v2, p4}, Lcom/android/server/wm/ActivityTaskManagerService;->-$$Nest$mupdateFontScaleIfNeeded(Lcom/android/server/wm/ActivityTaskManagerService;I)V

    goto :goto_4f

    .line 844
    :cond_1e
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService$SettingObserver;->mHideErrorDialogsUri:Landroid/net/Uri;

    invoke-virtual {v2, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 845
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService$SettingObserver;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2

    :try_start_2b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 846
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService$SettingObserver;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->-$$Nest$mupdateShouldShowDialogsLocked(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/content/res/Configuration;)V

    .line 847
    monitor-exit v2
    :try_end_38
    .catchall {:try_start_2b .. :try_end_38} :catchall_3c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_4f

    :catchall_3c
    move-exception v0

    :try_start_3d
    monitor-exit v2
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 848
    :cond_42
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService$SettingObserver;->mFontWeightAdjustmentUri:Landroid/net/Uri;

    invoke-virtual {v2, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 849
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService$SettingObserver;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {v2, p4}, Lcom/android/server/wm/ActivityTaskManagerService;->-$$Nest$mupdateFontWeightAdjustmentIfNeeded(Lcom/android/server/wm/ActivityTaskManagerService;I)V

    .line 851
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_4f
    :goto_4f
    goto :goto_4

    .line 852
    :cond_50
    return-void
.end method
