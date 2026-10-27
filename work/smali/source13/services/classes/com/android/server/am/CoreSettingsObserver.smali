.class final Lcom/android/server/am/CoreSettingsObserver;
.super Landroid/database/ContentObserver;
.source "CoreSettingsObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static volatile sDeviceConfigContextEntriesLoaded:Z

.field static final sDeviceConfigEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;",
            ">;"
        }
    .end annotation
.end field

.field static final sGlobalSettingToTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field static final sSecureSettingToTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field static final sSystemSettingToTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private final mCoreSettings:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .registers 22

    .line 47
    const-class v0, Lcom/android/server/am/CoreSettingsObserver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/CoreSettingsObserver;->LOG_TAG:Ljava/lang/String;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/CoreSettingsObserver;->sSecureSettingToTypeMap:Ljava/util/Map;

    .line 71
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/server/am/CoreSettingsObserver;->sSystemSettingToTypeMap:Ljava/util/Map;

    .line 74
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/android/server/am/CoreSettingsObserver;->sGlobalSettingToTypeMap:Ljava/util/Map;

    .line 76
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sput-object v3, Lcom/android/server/am/CoreSettingsObserver;->sDeviceConfigEntries:Ljava/util/List;

    .line 78
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string/jumbo v5, "long_press_timeout"

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string/jumbo v5, "multi_press_timeout"

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-class v0, Ljava/lang/String;

    const-string/jumbo v4, "time_12_24"

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v1, "debug_view_attributes"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-class v0, Ljava/lang/String;

    const-string v1, "debug_view_attributes_application_package"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-class v0, Ljava/lang/String;

    const-string v1, "angle_debug_package"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v1, "angle_gl_driver_all_angle"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-class v0, Ljava/lang/String;

    const-string v1, "angle_gl_driver_selection_pkgs"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-class v0, Ljava/lang/String;

    const-string v1, "angle_gl_driver_selection_values"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-class v0, Ljava/lang/String;

    const-string v1, "angle_egl_features"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-class v0, Ljava/lang/String;

    const-string/jumbo v1, "show_angle_in_use_dialog_box"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v1, "enable_gpu_debug_layers"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-class v0, Ljava/lang/String;

    const-string/jumbo v1, "gpu_debug_app"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-class v0, Ljava/lang/String;

    const-string/jumbo v1, "gpu_debug_layers"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-class v0, Ljava/lang/String;

    const-string/jumbo v1, "gpu_debug_layers_gles"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-class v0, Ljava/lang/String;

    const-string/jumbo v1, "gpu_debug_layer_app"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string/jumbo v1, "updatable_driver_all_apps"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-class v0, Ljava/lang/String;

    const-string/jumbo v1, "updatable_driver_production_opt_in_apps"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-class v0, Ljava/lang/String;

    const-string/jumbo v1, "updatable_driver_prerelease_opt_in_apps"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-class v0, Ljava/lang/String;

    const-string/jumbo v1, "updatable_driver_production_opt_out_apps"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-class v0, Ljava/lang/String;

    const-string/jumbo v1, "updatable_driver_production_denylist"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-class v0, Ljava/lang/String;

    const-string/jumbo v1, "updatable_driver_production_allowlist"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const-class v0, Ljava/lang/String;

    const-string/jumbo v1, "updatable_driver_production_denylists"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-class v0, Ljava/lang/String;

    const-string/jumbo v1, "updatable_driver_sphal_libraries"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    new-instance v0, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 124
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const-string/jumbo v5, "widget"

    const-string v6, "CursorControlFeature__enable_cursor_drag_from_anywhere"

    const-string/jumbo v7, "widget__enable_cursor_drag_from_anywhere"

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 121
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    new-instance v0, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 128
    const/16 v1, 0x2d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-string/jumbo v11, "widget"

    const-string v12, "CursorControlFeature__min_angle_from_vertical_to_start_cursor_drag"

    const-string/jumbo v13, "widget__min_angle_from_vertical_to_start_cursor_drag"

    move-object v10, v0

    invoke-direct/range {v10 .. v15}, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 125
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    new-instance v0, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 132
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string/jumbo v5, "widget"

    const-string v6, "CursorControlFeature__finger_to_cursor_distance"

    const-string/jumbo v7, "widget__finger_to_cursor_distance"

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 129
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    new-instance v0, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;

    sget-object v14, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 136
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const-string/jumbo v11, "widget"

    const-string v12, "CursorControlFeature__enable_insertion_handle_gestures"

    const-string/jumbo v13, "widget__enable_insertion_handle_gestures"

    move-object v10, v0

    move-object v15, v9

    invoke-direct/range {v10 .. v15}, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 133
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    new-instance v0, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;

    sget-object v19, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 140
    const/16 v2, 0x19

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const-string/jumbo v16, "widget"

    const-string v17, "CursorControlFeature__insertion_handle_delta_height"

    const-string/jumbo v18, "widget__insertion_handle_delta_height"

    move-object v15, v0

    invoke-direct/range {v15 .. v20}, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 137
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    new-instance v0, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 144
    const/16 v2, 0x32

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-string/jumbo v11, "widget"

    const-string v12, "CursorControlFeature__insertion_handle_opacity"

    const-string/jumbo v13, "widget__insertion_handle_opacity"

    move-object v10, v0

    invoke-direct/range {v10 .. v15}, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 141
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    new-instance v0, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;

    sget-object v20, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 148
    const/high16 v2, 0x3f000000    # 0.5f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v21

    const-string/jumbo v17, "widget"

    const-string v18, "CursorControlFeature__line_slop_ratio"

    const-string/jumbo v19, "widget__line_slop_ratio"

    move-object/from16 v16, v0

    invoke-direct/range {v16 .. v21}, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 145
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    new-instance v0, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 152
    const-string/jumbo v5, "widget"

    const-string v6, "CursorControlFeature__enable_new_magnifier"

    const-string/jumbo v7, "widget__enable_new_magnifier"

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 149
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    new-instance v0, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;

    sget-object v14, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 156
    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    const-string/jumbo v11, "widget"

    const-string v12, "CursorControlFeature__magnifier_zoom_factor"

    const-string/jumbo v13, "widget__magnifier_zoom_factor"

    move-object v10, v0

    invoke-direct/range {v10 .. v15}, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 153
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    new-instance v0, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;

    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 160
    const/high16 v2, 0x40b00000    # 5.5f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    const-string/jumbo v5, "widget"

    const-string v6, "CursorControlFeature__magnifier_aspect_ratio"

    const-string/jumbo v7, "widget__magnifier_aspect_ratio"

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 157
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    sput-boolean v1, Lcom/android/server/am/CoreSettingsObserver;->sDeviceConfigContextEntriesLoaded:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 4
    .param p1, "activityManagerService"    # Lcom/android/server/am/ActivityManagerService;

    .line 170
    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 165
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/CoreSettingsObserver;->mCoreSettings:Landroid/os/Bundle;

    .line 172
    sget-boolean v0, Lcom/android/server/am/CoreSettingsObserver;->sDeviceConfigContextEntriesLoaded:Z

    if-nez v0, :cond_24

    .line 173
    sget-object v0, Lcom/android/server/am/CoreSettingsObserver;->sDeviceConfigEntries:Ljava/util/List;

    monitor-enter v0

    .line 174
    :try_start_13
    sget-boolean v1, Lcom/android/server/am/CoreSettingsObserver;->sDeviceConfigContextEntriesLoaded:Z

    if-nez v1, :cond_1f

    .line 175
    iget-object v1, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/am/CoreSettingsObserver;->loadDeviceConfigContextEntries(Landroid/content/Context;)V

    .line 176
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/am/CoreSettingsObserver;->sDeviceConfigContextEntriesLoaded:Z

    .line 178
    :cond_1f
    monitor-exit v0

    goto :goto_24

    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_13 .. :try_end_23} :catchall_21

    throw v1

    .line 181
    :cond_24
    :goto_24
    iput-object p1, p0, Lcom/android/server/am/CoreSettingsObserver;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 182
    invoke-direct {p0}, Lcom/android/server/am/CoreSettingsObserver;->beginObserveCoreSettings()V

    .line 183
    invoke-direct {p0}, Lcom/android/server/am/CoreSettingsObserver;->sendCoreSettings()V

    .line 184
    return-void
.end method

.method private beginObserveCoreSettings()V
    .registers 7

    .line 214
    sget-object v0, Lcom/android/server/am/CoreSettingsObserver;->sSecureSettingToTypeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 215
    .local v1, "setting":Ljava/lang/String;
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 216
    .local v3, "uri":Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/server/am/CoreSettingsObserver;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v3, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 218
    .end local v1    # "setting":Ljava/lang/String;
    .end local v3    # "uri":Landroid/net/Uri;
    goto :goto_a

    .line 220
    :cond_27
    sget-object v0, Lcom/android/server/am/CoreSettingsObserver;->sSystemSettingToTypeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_31
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 221
    .restart local v1    # "setting":Ljava/lang/String;
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 222
    .restart local v3    # "uri":Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/server/am/CoreSettingsObserver;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v3, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 224
    .end local v1    # "setting":Ljava/lang/String;
    .end local v3    # "uri":Landroid/net/Uri;
    goto :goto_31

    .line 226
    :cond_4d
    sget-object v0, Lcom/android/server/am/CoreSettingsObserver;->sGlobalSettingToTypeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_57
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_73

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 227
    .restart local v1    # "setting":Ljava/lang/String;
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 228
    .restart local v3    # "uri":Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/server/am/CoreSettingsObserver;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v3, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 230
    .end local v1    # "setting":Ljava/lang/String;
    .end local v3    # "uri":Landroid/net/Uri;
    goto :goto_57

    .line 232
    :cond_73
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 233
    .local v0, "deviceConfigNamespaces":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    sget-object v1, Lcom/android/server/am/CoreSettingsObserver;->sDeviceConfigEntries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_aa

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;

    .line 234
    .local v2, "entry":Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;
    iget-object v3, v2, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;->namespace:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a9

    .line 235
    iget-object v3, v2, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;->namespace:Ljava/lang/String;

    .line 236
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    new-instance v5, Lcom/android/server/am/CoreSettingsObserver$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lcom/android/server/am/CoreSettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/CoreSettingsObserver;)V

    .line 235
    invoke-static {v3, v4, v5}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 238
    iget-object v3, v2, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;->namespace:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 240
    .end local v2    # "entry":Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;
    :cond_a9
    goto :goto_7e

    .line 241
    :cond_aa
    return-void
.end method

.method private static loadDeviceConfigContextEntries(Landroid/content/Context;)V
    .registers 9
    .param p0, "context"    # Landroid/content/Context;

    .line 187
    sget-object v0, Lcom/android/server/am/CoreSettingsObserver;->sDeviceConfigEntries:Ljava/util/List;

    new-instance v7, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 190
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 191
    const v2, 0x10e0045

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 190
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string/jumbo v2, "widget"

    const-string v3, "AnalogClockFeature__analog_clock_seconds_hand_fps"

    const-string/jumbo v4, "widget__analog_clock_seconds_hand_fps"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 187
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    return-void
.end method

.method private populateSettingsFromDeviceConfig()V
    .registers 9

    .line 276
    sget-object v0, Lcom/android/server/am/CoreSettingsObserver;->sDeviceConfigEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;

    .line 277
    .local v1, "entry":Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;, "Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry<*>;"
    iget-object v2, v1, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;->type:Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    if-ne v2, v3, :cond_2d

    .line 278
    iget-object v2, v1, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;->defaultValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 279
    .local v2, "defaultValue":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/am/CoreSettingsObserver;->mCoreSettings:Landroid/os/Bundle;

    iget-object v4, v1, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;->coreSettingKey:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;->namespace:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;->flag:Ljava/lang/String;

    .line 280
    invoke-static {v5, v6, v2}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 279
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    .end local v2    # "defaultValue":Ljava/lang/String;
    goto/16 :goto_a6

    :cond_2d
    iget-object v2, v1, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;->type:Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_4b

    .line 282
    iget-object v2, v1, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;->defaultValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 283
    .local v2, "defaultValue":I
    iget-object v3, p0, Lcom/android/server/am/CoreSettingsObserver;->mCoreSettings:Landroid/os/Bundle;

    iget-object v4, v1, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;->coreSettingKey:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;->namespace:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;->flag:Ljava/lang/String;

    .line 284
    invoke-static {v5, v6, v2}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    .line 283
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 285
    .end local v2    # "defaultValue":I
    goto :goto_a6

    :cond_4b
    iget-object v2, v1, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;->type:Ljava/lang/Class;

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_69

    .line 286
    iget-object v2, v1, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;->defaultValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 287
    .local v2, "defaultValue":F
    iget-object v3, p0, Lcom/android/server/am/CoreSettingsObserver;->mCoreSettings:Landroid/os/Bundle;

    iget-object v4, v1, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;->coreSettingKey:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;->namespace:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;->flag:Ljava/lang/String;

    .line 288
    invoke-static {v5, v6, v2}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v5

    .line 287
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 289
    .end local v2    # "defaultValue":F
    goto :goto_a6

    :cond_69
    iget-object v2, v1, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;->type:Ljava/lang/Class;

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_87

    .line 290
    iget-object v2, v1, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;->defaultValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 291
    .local v2, "defaultValue":J
    iget-object v4, p0, Lcom/android/server/am/CoreSettingsObserver;->mCoreSettings:Landroid/os/Bundle;

    iget-object v5, v1, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;->coreSettingKey:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;->namespace:Ljava/lang/String;

    iget-object v7, v1, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;->flag:Ljava/lang/String;

    .line 292
    invoke-static {v6, v7, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v6

    .line 291
    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .end local v2    # "defaultValue":J
    goto :goto_a5

    .line 293
    :cond_87
    iget-object v2, v1, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;->type:Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_a5

    .line 294
    iget-object v2, v1, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;->defaultValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 295
    .local v2, "defaultValue":Z
    iget-object v3, p0, Lcom/android/server/am/CoreSettingsObserver;->mCoreSettings:Landroid/os/Bundle;

    iget-object v4, v1, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;->coreSettingKey:Ljava/lang/String;

    .line 296
    iget-object v5, v1, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;->namespace:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;->flag:Ljava/lang/String;

    invoke-static {v5, v6, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    .line 295
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_a6

    .line 293
    .end local v2    # "defaultValue":Z
    :cond_a5
    :goto_a5
    nop

    .line 298
    .end local v1    # "entry":Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;, "Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry<*>;"
    :goto_a6
    goto/16 :goto_6

    .line 299
    :cond_a8
    return-void
.end method

.method private sendCoreSettings()V
    .registers 3

    .line 206
    iget-object v0, p0, Lcom/android/server/am/CoreSettingsObserver;->mCoreSettings:Landroid/os/Bundle;

    sget-object v1, Lcom/android/server/am/CoreSettingsObserver;->sSecureSettingToTypeMap:Ljava/util/Map;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/CoreSettingsObserver;->populateSettings(Landroid/os/Bundle;Ljava/util/Map;)V

    .line 207
    iget-object v0, p0, Lcom/android/server/am/CoreSettingsObserver;->mCoreSettings:Landroid/os/Bundle;

    sget-object v1, Lcom/android/server/am/CoreSettingsObserver;->sSystemSettingToTypeMap:Ljava/util/Map;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/CoreSettingsObserver;->populateSettings(Landroid/os/Bundle;Ljava/util/Map;)V

    .line 208
    iget-object v0, p0, Lcom/android/server/am/CoreSettingsObserver;->mCoreSettings:Landroid/os/Bundle;

    sget-object v1, Lcom/android/server/am/CoreSettingsObserver;->sGlobalSettingToTypeMap:Ljava/util/Map;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/CoreSettingsObserver;->populateSettings(Landroid/os/Bundle;Ljava/util/Map;)V

    .line 209
    invoke-direct {p0}, Lcom/android/server/am/CoreSettingsObserver;->populateSettingsFromDeviceConfig()V

    .line 210
    iget-object v0, p0, Lcom/android/server/am/CoreSettingsObserver;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/CoreSettingsObserver;->mCoreSettings:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->onCoreSettingsChange(Landroid/os/Bundle;)V

    .line 211
    return-void
.end method


# virtual methods
.method public getCoreSettingsLocked()Landroid/os/Bundle;
    .registers 2

    .line 195
    iget-object v0, p0, Lcom/android/server/am/CoreSettingsObserver;->mCoreSettings:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    return-object v0
.end method

.method synthetic lambda$beginObserveCoreSettings$0$com-android-server-am-CoreSettingsObserver(Landroid/provider/DeviceConfig$Properties;)V
    .registers 3
    .param p1, "prop"    # Landroid/provider/DeviceConfig$Properties;

    .line 237
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/am/CoreSettingsObserver;->onChange(Z)V

    return-void
.end method

.method public onChange(Z)V
    .registers 4
    .param p1, "selfChange"    # Z

    .line 200
    iget-object v0, p0, Lcom/android/server/am/CoreSettingsObserver;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 201
    invoke-direct {p0}, Lcom/android/server/am/CoreSettingsObserver;->sendCoreSettings()V

    .line 202
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_e

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 203
    return-void

    .line 202
    :catchall_e
    move-exception v1

    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method populateSettings(Landroid/os/Bundle;Ljava/util/Map;)V
    .registers 12
    .param p1, "snapshot"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    .line 245
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    iget-object v0, p0, Lcom/android/server/am/CoreSettingsObserver;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 246
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 247
    .local v1, "cr":Landroid/content/ContentResolver;
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_78

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 248
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 250
    .local v4, "setting":Ljava/lang/String;
    sget-object v5, Lcom/android/server/am/CoreSettingsObserver;->sSecureSettingToTypeMap:Ljava/util/Map;

    if-ne p2, v5, :cond_2f

    .line 251
    invoke-virtual {v1}, Landroid/content/ContentResolver;->getUserId()I

    move-result v5

    invoke-static {v1, v4, v5}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .local v5, "value":Ljava/lang/String;
    goto :goto_40

    .line 252
    .end local v5    # "value":Ljava/lang/String;
    :cond_2f
    sget-object v5, Lcom/android/server/am/CoreSettingsObserver;->sSystemSettingToTypeMap:Ljava/util/Map;

    if-ne p2, v5, :cond_3c

    .line 253
    invoke-virtual {v1}, Landroid/content/ContentResolver;->getUserId()I

    move-result v5

    invoke-static {v1, v4, v5}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "value":Ljava/lang/String;
    goto :goto_40

    .line 255
    .end local v5    # "value":Ljava/lang/String;
    :cond_3c
    invoke-static {v1, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 257
    .restart local v5    # "value":Ljava/lang/String;
    :goto_40
    if-nez v5, :cond_46

    .line 258
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 259
    goto :goto_10

    .line 261
    :cond_46
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Class;

    .line 262
    .local v6, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v7, Ljava/lang/String;

    if-ne v6, v7, :cond_54

    .line 263
    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_77

    .line 264
    :cond_54
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_60

    .line 265
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p1, v4, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_77

    .line 266
    :cond_60
    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_6c

    .line 267
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    invoke-virtual {p1, v4, v7}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_77

    .line 268
    :cond_6c
    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_77

    .line 269
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {p1, v4, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 271
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    .end local v4    # "setting":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    .end local v6    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_77
    :goto_77
    goto :goto_10

    .line 272
    :cond_78
    return-void
.end method
