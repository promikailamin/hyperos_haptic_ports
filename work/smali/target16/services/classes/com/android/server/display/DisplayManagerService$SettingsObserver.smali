.class public Lcom/android/server/display/DisplayManagerService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "DisplayManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/DisplayManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayManagerService;)V
    .registers 6

    .line 1231
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$SettingsObserver;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 1232
    invoke-static {p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1234
    invoke-static {p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmContext(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "minimal_post_processing_allowed"

    .line 1235
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    .line 1234
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1238
    invoke-static {p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmFlags(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/feature/DisplayManagerFlags;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags;->isDisplayContentModeManagementEnabled()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_39

    .line 1239
    invoke-static {p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmContext(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "mirror_built_in_display"

    .line 1240
    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1239
    invoke-virtual {v0, v3, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1244
    :cond_39
    invoke-static {p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmFlags(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/feature/DisplayManagerFlags;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags;->isDefaultDisplayInTopologySwitchEnabled()Z

    move-result v0

    if-eqz v0, :cond_62

    invoke-static {p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmInjector(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$Injector;

    move-result-object v0

    invoke-static {p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmContext(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v3

    .line 1245
    invoke-virtual {v0, v3}, Lcom/android/server/display/DisplayManagerService$Injector;->isDesktopModeSupportedOnInternalDisplay(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_62

    .line 1246
    invoke-static {p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmContext(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "include_default_display_in_topology"

    .line 1247
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1246
    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_62
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 4

    .line 1255
    const-string/jumbo p1, "minimal_post_processing_allowed"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 1256
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 1257
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$SettingsObserver;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mhandleMinimalPostProcessingAllowedSettingChange(Lcom/android/server/display/DisplayManagerService;)V

    return-void

    .line 1261
    :cond_13
    const-string/jumbo p1, "mirror_built_in_display"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4d

    .line 1262
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService$SettingsObserver;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmSyncRoot(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object p1

    monitor-enter p1

    .line 1263
    :try_start_27
    iget-object p2, p0, Lcom/android/server/display/DisplayManagerService$SettingsObserver;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p2}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmFlags(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/feature/DisplayManagerFlags;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/display/feature/DisplayManagerFlags;->isDisplayContentModeManagementEnabled()Z

    move-result p2

    if-eqz p2, :cond_49

    .line 1264
    iget-object p2, p0, Lcom/android/server/display/DisplayManagerService$SettingsObserver;->this$0:Lcom/android/server/display/DisplayManagerService;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mupdateMirrorBuiltInDisplaySettingLocked(Lcom/android/server/display/DisplayManagerService;Z)Z

    move-result p2

    if-eqz p2, :cond_49

    .line 1266
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$SettingsObserver;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmExternalDisplayPolicy(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/ExternalDisplayPolicy;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/android/server/display/ExternalDisplayPolicy;->handleMirrorBuiltInDisplaySettingChangeLocked(Z)V

    goto :goto_49

    :catchall_47
    move-exception p0

    goto :goto_4b

    .line 1270
    :cond_49
    :goto_49
    monitor-exit p1

    return-void

    :goto_4b
    monitor-exit p1
    :try_end_4c
    .catchall {:try_start_27 .. :try_end_4c} :catchall_47

    throw p0

    .line 1273
    :cond_4d
    const-string p1, "include_default_display_in_topology"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8a

    .line 1274
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService$SettingsObserver;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmSyncRoot(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object p1

    monitor-enter p1

    .line 1275
    :try_start_60
    iget-object p2, p0, Lcom/android/server/display/DisplayManagerService$SettingsObserver;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p2}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmFlags(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/feature/DisplayManagerFlags;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/display/feature/DisplayManagerFlags;->isDefaultDisplayInTopologySwitchEnabled()Z

    move-result p2

    if-eqz p2, :cond_86

    iget-object p2, p0, Lcom/android/server/display/DisplayManagerService$SettingsObserver;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p2}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmInjector(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$Injector;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$SettingsObserver;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmContext(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v0

    .line 1276
    invoke-virtual {p2, v0}, Lcom/android/server/display/DisplayManagerService$Injector;->isDesktopModeSupportedOnInternalDisplay(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_86

    .line 1277
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$SettingsObserver;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mhandleIncludeDefaultDisplayInTopologySettingChangeLocked(Lcom/android/server/display/DisplayManagerService;)V

    goto :goto_86

    :catchall_84
    move-exception p0

    goto :goto_88

    .line 1279
    :cond_86
    :goto_86
    monitor-exit p1

    return-void

    :goto_88
    monitor-exit p1
    :try_end_89
    .catchall {:try_start_60 .. :try_end_89} :catchall_84

    throw p0

    :cond_8a
    return-void
.end method
