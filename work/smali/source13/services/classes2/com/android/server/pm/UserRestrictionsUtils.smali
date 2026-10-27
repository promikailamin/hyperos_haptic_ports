.class public Lcom/android/server/pm/UserRestrictionsUtils;
.super Ljava/lang/Object;
.source "UserRestrictionsUtils.java"


# static fields
.field private static final DEFAULT_ENABLED_FOR_MANAGED_PROFILES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEPRECATED_USER_RESTRICTIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEVICE_OWNER_ONLY_RESTRICTIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final FINANCED_DEVICE_OWNER_RESTRICTIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final GLOBAL_RESTRICTIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final IMMUTABLE_BY_OWNERS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final NON_PERSIST_USER_RESTRICTIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PRIMARY_USER_ONLY_RESTRICTIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PROFILE_GLOBAL_RESTRICTIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PROFILE_OWNER_ORGANIZATION_OWNED_GLOBAL_RESTRICTIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PROFILE_OWNER_ORGANIZATION_OWNED_LOCAL_RESTRICTIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "UserRestrictionsUtils"

.field public static final USER_RESTRICTIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 69

    .line 81
    const-string/jumbo v0, "no_config_wifi"

    const-string/jumbo v1, "no_config_locale"

    const-string/jumbo v2, "no_modify_accounts"

    const-string/jumbo v3, "no_install_apps"

    const-string/jumbo v4, "no_uninstall_apps"

    const-string/jumbo v5, "no_share_location"

    const-string/jumbo v6, "no_install_unknown_sources"

    const-string/jumbo v7, "no_install_unknown_sources_globally"

    const-string/jumbo v8, "no_config_bluetooth"

    const-string/jumbo v9, "no_bluetooth"

    const-string/jumbo v10, "no_bluetooth_sharing"

    const-string/jumbo v11, "no_usb_file_transfer"

    const-string/jumbo v12, "no_config_credentials"

    const-string/jumbo v13, "no_remove_user"

    const-string/jumbo v14, "no_remove_managed_profile"

    const-string/jumbo v15, "no_debugging_features"

    const-string/jumbo v16, "no_config_vpn"

    const-string/jumbo v17, "no_config_date_time"

    const-string/jumbo v18, "no_config_tethering"

    const-string/jumbo v19, "no_network_reset"

    const-string/jumbo v20, "no_factory_reset"

    const-string/jumbo v21, "no_add_user"

    const-string/jumbo v22, "no_add_managed_profile"

    const-string/jumbo v23, "no_add_clone_profile"

    const-string v24, "ensure_verify_apps"

    const-string/jumbo v25, "no_config_cell_broadcasts"

    const-string/jumbo v26, "no_config_mobile_networks"

    const-string/jumbo v27, "no_control_apps"

    const-string/jumbo v28, "no_physical_media"

    const-string/jumbo v29, "no_unmute_microphone"

    const-string/jumbo v30, "no_adjust_volume"

    const-string/jumbo v31, "no_outgoing_calls"

    const-string/jumbo v32, "no_sms"

    const-string/jumbo v33, "no_fun"

    const-string/jumbo v34, "no_create_windows"

    const-string/jumbo v35, "no_system_error_dialogs"

    const-string/jumbo v36, "no_cross_profile_copy_paste"

    const-string/jumbo v37, "no_outgoing_beam"

    const-string/jumbo v38, "no_wallpaper"

    const-string/jumbo v39, "no_safe_boot"

    const-string v40, "allow_parent_profile_app_linking"

    const-string/jumbo v41, "no_record_audio"

    const-string/jumbo v42, "no_camera"

    const-string/jumbo v43, "no_run_in_background"

    const-string/jumbo v44, "no_data_roaming"

    const-string/jumbo v45, "no_set_user_icon"

    const-string/jumbo v46, "no_set_wallpaper"

    const-string/jumbo v47, "no_oem_unlock"

    const-string v48, "disallow_unmute_device"

    const-string/jumbo v49, "no_autofill"

    const-string/jumbo v50, "no_content_capture"

    const-string/jumbo v51, "no_content_suggestions"

    const-string/jumbo v52, "no_user_switch"

    const-string/jumbo v53, "no_unified_password"

    const-string/jumbo v54, "no_config_location"

    const-string/jumbo v55, "no_airplane_mode"

    const-string/jumbo v56, "no_config_brightness"

    const-string/jumbo v57, "no_sharing_into_profile"

    const-string/jumbo v58, "no_ambient_display"

    const-string/jumbo v59, "no_config_screen_timeout"

    const-string/jumbo v60, "no_printing"

    const-string v61, "disallow_config_private_dns"

    const-string v62, "disallow_microphone_toggle"

    const-string v63, "disallow_camera_toggle"

    const-string/jumbo v64, "no_change_wifi_state"

    const-string/jumbo v65, "no_wifi_tethering"

    const-string/jumbo v66, "no_sharing_admin_configured_wifi"

    const-string/jumbo v67, "no_wifi_direct"

    const-string/jumbo v68, "no_add_wifi_config"

    filled-new-array/range {v0 .. v68}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/UserRestrictionsUtils;->newSetWithUniqueCheck([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->USER_RESTRICTIONS:Ljava/util/Set;

    .line 153
    const-string/jumbo v0, "no_add_managed_profile"

    const-string/jumbo v1, "no_remove_managed_profile"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->DEPRECATED_USER_RESTRICTIONS:Ljava/util/Set;

    .line 161
    const-string/jumbo v0, "no_record_audio"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v1

    sput-object v1, Lcom/android/server/pm/UserRestrictionsUtils;->NON_PERSIST_USER_RESTRICTIONS:Ljava/util/Set;

    .line 169
    const-string/jumbo v2, "no_bluetooth"

    const-string/jumbo v3, "no_usb_file_transfer"

    const-string/jumbo v4, "no_config_tethering"

    const-string/jumbo v5, "no_network_reset"

    const-string/jumbo v6, "no_factory_reset"

    const-string/jumbo v7, "no_add_user"

    const-string/jumbo v8, "no_config_cell_broadcasts"

    const-string/jumbo v9, "no_config_mobile_networks"

    const-string/jumbo v10, "no_physical_media"

    const-string/jumbo v11, "no_sms"

    const-string/jumbo v12, "no_fun"

    const-string/jumbo v13, "no_safe_boot"

    const-string/jumbo v14, "no_create_windows"

    const-string/jumbo v15, "no_data_roaming"

    const-string/jumbo v16, "no_airplane_mode"

    filled-new-array/range {v2 .. v16}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v1

    sput-object v1, Lcom/android/server/pm/UserRestrictionsUtils;->PRIMARY_USER_ONLY_RESTRICTIONS:Ljava/util/Set;

    .line 190
    const-string/jumbo v2, "no_user_switch"

    const-string v3, "disallow_config_private_dns"

    const-string v4, "disallow_microphone_toggle"

    const-string v5, "disallow_camera_toggle"

    const-string/jumbo v6, "no_change_wifi_state"

    const-string/jumbo v7, "no_wifi_tethering"

    const-string/jumbo v8, "no_wifi_direct"

    const-string/jumbo v9, "no_add_wifi_config"

    filled-new-array/range {v2 .. v9}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v1

    sput-object v1, Lcom/android/server/pm/UserRestrictionsUtils;->DEVICE_OWNER_ONLY_RESTRICTIONS:Ljava/util/Set;

    .line 204
    const-string/jumbo v1, "no_wallpaper"

    const-string/jumbo v2, "no_oem_unlock"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->IMMUTABLE_BY_OWNERS:Ljava/util/Set;

    .line 214
    const-string/jumbo v1, "no_adjust_volume"

    const-string/jumbo v2, "no_bluetooth_sharing"

    const-string/jumbo v3, "no_config_date_time"

    const-string/jumbo v4, "no_system_error_dialogs"

    const-string/jumbo v5, "no_run_in_background"

    const-string/jumbo v6, "no_unmute_microphone"

    const-string v7, "disallow_unmute_device"

    const-string/jumbo v8, "no_camera"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->GLOBAL_RESTRICTIONS:Ljava/util/Set;

    .line 229
    const-string/jumbo v1, "no_airplane_mode"

    const-string/jumbo v2, "no_config_date_time"

    const-string v3, "disallow_config_private_dns"

    const-string/jumbo v4, "no_change_wifi_state"

    const-string/jumbo v5, "no_wifi_tethering"

    const-string/jumbo v6, "no_wifi_direct"

    const-string/jumbo v7, "no_add_wifi_config"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    .line 230
    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->PROFILE_OWNER_ORGANIZATION_OWNED_GLOBAL_RESTRICTIONS:Ljava/util/Set;

    .line 244
    const-string/jumbo v1, "no_config_bluetooth"

    const-string/jumbo v2, "no_config_location"

    const-string/jumbo v3, "no_config_wifi"

    const-string/jumbo v4, "no_content_capture"

    const-string/jumbo v5, "no_content_suggestions"

    const-string/jumbo v6, "no_debugging_features"

    const-string/jumbo v7, "no_share_location"

    const-string/jumbo v8, "no_outgoing_calls"

    const-string/jumbo v9, "no_camera"

    const-string/jumbo v10, "no_bluetooth"

    const-string/jumbo v11, "no_bluetooth_sharing"

    const-string/jumbo v12, "no_config_cell_broadcasts"

    const-string/jumbo v13, "no_config_mobile_networks"

    const-string/jumbo v14, "no_config_tethering"

    const-string/jumbo v15, "no_data_roaming"

    const-string/jumbo v16, "no_safe_boot"

    const-string/jumbo v17, "no_sms"

    const-string/jumbo v18, "no_usb_file_transfer"

    const-string/jumbo v19, "no_physical_media"

    const-string/jumbo v20, "no_unmute_microphone"

    filled-new-array/range {v1 .. v20}, [Ljava/lang/String;

    move-result-object v0

    .line 245
    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->PROFILE_OWNER_ORGANIZATION_OWNED_LOCAL_RESTRICTIONS:Ljava/util/Set;

    .line 275
    const-string/jumbo v0, "no_bluetooth_sharing"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->DEFAULT_ENABLED_FOR_MANAGED_PROFILES:Ljava/util/Set;

    .line 282
    const-string v0, "ensure_verify_apps"

    const-string/jumbo v1, "no_airplane_mode"

    const-string/jumbo v2, "no_install_unknown_sources_globally"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->PROFILE_GLOBAL_RESTRICTIONS:Ljava/util/Set;

    .line 292
    const-string/jumbo v1, "no_add_user"

    const-string/jumbo v2, "no_debugging_features"

    const-string/jumbo v3, "no_install_unknown_sources"

    const-string/jumbo v4, "no_safe_boot"

    const-string/jumbo v5, "no_config_date_time"

    const-string/jumbo v6, "no_outgoing_calls"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->FINANCED_DEVICE_OWNER_RESTRICTIONS:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    return-void
.end method

.method private static applyUserRestriction(Landroid/content/Context;ILjava/lang/String;Z)V
    .registers 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "newValue"    # Z

    .line 572
    const-string v0, "airplane_mode_on"

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 573
    .local v1, "cr":Landroid/content/ContentResolver;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 575
    .local v2, "id":J
    const/4 v4, -0x1

    :try_start_b
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v5
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_19c

    const-string/jumbo v6, "no_install_unknown_sources"

    const-string/jumbo v7, "no_install_unknown_sources_globally"

    const/4 v8, 0x1

    const/4 v9, 0x0

    sparse-switch v5, :sswitch_data_1a2

    :cond_1a
    goto/16 :goto_9e

    :sswitch_1c
    :try_start_1c
    const-string/jumbo v5, "no_debugging_features"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    const/4 v4, 0x2

    goto/16 :goto_9e

    :sswitch_28
    const-string/jumbo v5, "no_safe_boot"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    const/4 v4, 0x7

    goto/16 :goto_9e

    :sswitch_34
    const-string/jumbo v5, "no_share_location"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    move v4, v8

    goto :goto_9e

    :sswitch_3f
    const-string/jumbo v5, "no_data_roaming"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    move v4, v9

    goto :goto_9e

    :sswitch_4a
    const-string/jumbo v5, "no_run_in_background"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    const/4 v4, 0x6

    goto :goto_9e

    :sswitch_55
    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    const/4 v4, 0x5

    goto :goto_9e

    :sswitch_5d
    const-string/jumbo v5, "no_uninstall_apps"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    const/16 v4, 0xb

    goto :goto_9e

    :sswitch_69
    const-string/jumbo v5, "no_airplane_mode"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    const/16 v4, 0x8

    goto :goto_9e

    :sswitch_75
    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    const/4 v4, 0x4

    goto :goto_9e

    :sswitch_7d
    const-string v5, "ensure_verify_apps"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    const/4 v4, 0x3

    goto :goto_9e

    :sswitch_87
    const-string/jumbo v5, "no_control_apps"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    const/16 v4, 0xa

    goto :goto_9e

    :sswitch_93
    const-string/jumbo v5, "no_ambient_display"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_9a
    .catchall {:try_start_1c .. :try_end_9a} :catchall_19c

    if-eqz v5, :cond_1a

    const/16 v4, 0x9

    :goto_9e
    const-string v5, "0"

    packed-switch v4, :pswitch_data_1d4

    goto/16 :goto_197

    .line 690
    :pswitch_a5
    :try_start_a5
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 692
    .local v0, "pmi":Landroid/content/pm/PackageManagerInternal;
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->removeAllNonSystemPackageSuspensions(I)V

    .line 693
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->removeAllDistractingPackageRestrictions(I)V

    .line 694
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->flushPackageRestrictions(I)V

    goto/16 :goto_197

    .line 681
    .end local v0    # "pmi":Landroid/content/pm/PackageManagerInternal;
    :pswitch_b8
    if-eqz p3, :cond_197

    .line 682
    new-instance v0, Landroid/hardware/display/AmbientDisplayConfiguration;

    invoke-direct {v0, p0}, Landroid/hardware/display/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    .line 684
    .local v0, "config":Landroid/hardware/display/AmbientDisplayConfiguration;
    invoke-virtual {v0, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;->disableDozeSettings(I)V

    .line 685
    .end local v0    # "config":Landroid/hardware/display/AmbientDisplayConfiguration;
    goto/16 :goto_197

    .line 665
    :pswitch_c4
    if-eqz p3, :cond_197

    .line 666
    nop

    .line 667
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 666
    invoke-static {v4, v0, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v8, :cond_d2

    goto :goto_d3

    :cond_d2
    move v8, v9

    :goto_d3
    move v4, v8

    .line 669
    .local v4, "airplaneMode":Z
    if-eqz v4, :cond_f0

    .line 670
    nop

    .line 671
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 670
    invoke-static {v5, v0, v9}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 674
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 675
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "state"

    invoke-virtual {v0, v5, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 676
    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 678
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v4    # "airplaneMode":Z
    :cond_f0
    goto/16 :goto_197

    .line 659
    :pswitch_f2
    nop

    .line 660
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "safe_boot_disallowed"

    .line 662
    if-eqz p3, :cond_fd

    goto :goto_fe

    :cond_fd
    move v8, v9

    .line 659
    :goto_fe
    invoke-static {v0, v4, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 663
    goto/16 :goto_197

    .line 642
    :pswitch_103
    if-eqz p3, :cond_197

    .line 643
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0
    :try_end_109
    .catchall {:try_start_a5 .. :try_end_109} :catchall_19c

    .line 644
    .local v0, "currentUser":I
    if-eq v0, p1, :cond_11c

    if-eqz p1, :cond_11c

    .line 646
    :try_start_10d
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, p1, v9, v5}, Landroid/app/IActivityManager;->stopUser(IZLandroid/app/IStopUserCallback;)I
    :try_end_115
    .catch Landroid/os/RemoteException; {:try_start_10d .. :try_end_115} :catch_116
    .catchall {:try_start_10d .. :try_end_115} :catchall_19c

    .line 649
    goto :goto_11c

    .line 647
    :catch_116
    move-exception v4

    .line 648
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_117
    invoke-virtual {v4}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v5

    .end local v1    # "cr":Landroid/content/ContentResolver;
    .end local v2    # "id":J
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "userId":I
    .end local p2    # "key":Ljava/lang/String;
    .end local p3    # "newValue":Z
    throw v5

    .line 651
    .end local v0    # "currentUser":I
    .end local v4    # "e":Landroid/os/RemoteException;
    .restart local v1    # "cr":Landroid/content/ContentResolver;
    .restart local v2    # "id":J
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "userId":I
    .restart local p2    # "key":Ljava/lang/String;
    .restart local p3    # "newValue":Z
    :cond_11c
    :goto_11c
    goto/16 :goto_197

    .line 637
    :pswitch_11e
    invoke-static {p0, p1, v7, p3}, Lcom/android/server/pm/UserRestrictionsUtils;->getNewUserRestrictionSetting(Landroid/content/Context;ILjava/lang/String;Z)I

    move-result v0

    invoke-static {v1, p1, v0}, Lcom/android/server/pm/UserRestrictionsUtils;->setInstallMarketAppsRestriction(Landroid/content/ContentResolver;II)V

    .line 640
    goto/16 :goto_197

    .line 629
    :pswitch_127
    invoke-static {p0, p1, v6, p3}, Lcom/android/server/pm/UserRestrictionsUtils;->getNewUserRestrictionSetting(Landroid/content/Context;ILjava/lang/String;Z)I

    move-result v0

    invoke-static {v1, p1, v0}, Lcom/android/server/pm/UserRestrictionsUtils;->setInstallMarketAppsRestriction(Landroid/content/ContentResolver;II)V

    .line 632
    goto :goto_197

    .line 621
    :pswitch_12f
    if-eqz p3, :cond_197

    .line 622
    nop

    .line 623
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "verifier_verify_adb_installs"

    const-string v5, "1"

    .line 622
    invoke-static {v0, v4, v5, p1}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_197

    .line 607
    :pswitch_13f
    if-eqz p3, :cond_197

    .line 610
    if-nez p1, :cond_197

    .line 611
    const-string v0, "adb_enabled"

    invoke-static {v1, v0, v5, p1}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 614
    const-string v0, "adb_wifi_enabled"

    invoke-static {v1, v0, v5, p1}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_197

    .line 599
    :pswitch_14e
    if-eqz p3, :cond_197

    .line 600
    const-string v0, "location_mode"

    invoke-static {v1, v0, v9, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_197

    .line 577
    :pswitch_156
    if-eqz p3, :cond_197

    .line 581
    const-class v0, Landroid/telephony/SubscriptionManager;

    .line 582
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    .line 583
    .local v0, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    nop

    .line 584
    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v4
    :try_end_165
    .catchall {:try_start_117 .. :try_end_165} :catchall_19c

    .line 585
    .local v4, "subscriptionInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    const-string v6, "data_roaming"

    if-eqz v4, :cond_193

    .line 586
    :try_start_169
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_16d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_193

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/SubscriptionInfo;

    .line 587
    .local v8, "subInfo":Landroid/telephony/SubscriptionInfo;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 589
    invoke-virtual {v8}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 587
    invoke-static {v1, v9, v5, p1}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 590
    nop

    .end local v8    # "subInfo":Landroid/telephony/SubscriptionInfo;
    goto :goto_16d

    .line 594
    :cond_193
    invoke-static {v1, v6, v5, p1}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_196
    .catchall {:try_start_169 .. :try_end_196} :catchall_19c

    .line 596
    nop

    .line 698
    .end local v0    # "subscriptionManager":Landroid/telephony/SubscriptionManager;
    .end local v4    # "subscriptionInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_197
    :goto_197
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 699
    nop

    .line 700
    return-void

    .line 698
    :catchall_19c
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 699
    throw v0

    nop

    :sswitch_data_1a2
    .sparse-switch
        -0x57f0a463 -> :sswitch_93
        -0x52b3922e -> :sswitch_87
        -0x4e6d1409 -> :sswitch_7d
        -0x444ddeb2 -> :sswitch_75
        -0x4080af8e -> :sswitch_69
        -0x646213 -> :sswitch_5d
        0x171409a1 -> :sswitch_55
        0x2afb8ad6 -> :sswitch_4a
        0x375d2642 -> :sswitch_3f
        0x3b5af253 -> :sswitch_34
        0x414d6f66 -> :sswitch_28
        0x68f319ac -> :sswitch_1c
    .end sparse-switch

    :pswitch_data_1d4
    .packed-switch 0x0
        :pswitch_156
        :pswitch_14e
        :pswitch_13f
        :pswitch_12f
        :pswitch_127
        :pswitch_11e
        :pswitch_103
        :pswitch_f2
        :pswitch_c4
        :pswitch_b8
        :pswitch_a5
        :pswitch_a5
    .end packed-switch
.end method

.method public static applyUserRestrictions(Landroid/content/Context;ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I
    .param p2, "newRestrictions"    # Landroid/os/Bundle;
    .param p3, "prevRestrictions"    # Landroid/os/Bundle;

    .line 540
    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->USER_RESTRICTIONS:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 541
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 542
    .local v2, "newValue":Z
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 544
    .local v3, "prevValue":Z
    if-eq v2, v3, :cond_1f

    .line 545
    invoke-static {p0, p1, v1, v2}, Lcom/android/server/pm/UserRestrictionsUtils;->applyUserRestriction(Landroid/content/Context;ILjava/lang/String;Z)V

    .line 547
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "newValue":Z
    .end local v3    # "prevValue":Z
    :cond_1f
    goto :goto_6

    .line 548
    :cond_20
    return-void
.end method

.method public static areEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .registers 8
    .param p0, "a"    # Landroid/os/Bundle;
    .param p1, "b"    # Landroid/os/Bundle;

    .line 510
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 511
    return v0

    .line 513
    :cond_4
    invoke-static {p0}, Lcom/android/server/BundleUtils;->isEmpty(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 514
    invoke-static {p1}, Lcom/android/server/BundleUtils;->isEmpty(Landroid/os/Bundle;)Z

    move-result v0

    return v0

    .line 516
    :cond_f
    invoke-static {p1}, Lcom/android/server/BundleUtils;->isEmpty(Landroid/os/Bundle;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_17

    .line 517
    return v2

    .line 519
    :cond_17
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 520
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eq v4, v5, :cond_36

    .line 521
    return v2

    .line 523
    .end local v3    # "key":Ljava/lang/String;
    :cond_36
    goto :goto_1f

    .line 524
    :cond_37
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_57

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 525
    .restart local v3    # "key":Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eq v4, v5, :cond_56

    .line 526
    return v2

    .line 528
    .end local v3    # "key":Ljava/lang/String;
    :cond_56
    goto :goto_3f

    .line 529
    :cond_57
    return v0
.end method

.method public static canDeviceOwnerChange(Ljava/lang/String;)Z
    .registers 2
    .param p0, "restriction"    # Ljava/lang/String;

    .line 445
    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->IMMUTABLE_BY_OWNERS:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static canFinancedDeviceOwnerChange(Ljava/lang/String;)Z
    .registers 2
    .param p0, "restriction"    # Ljava/lang/String;

    .line 479
    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->FINANCED_DEVICE_OWNER_RESTRICTIONS:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 480
    invoke-static {p0}, Lcom/android/server/pm/UserRestrictionsUtils;->canDeviceOwnerChange(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 479
    :goto_11
    return v0
.end method

.method public static canProfileOwnerChange(Ljava/lang/String;I)Z
    .registers 3
    .param p0, "restriction"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .line 453
    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->IMMUTABLE_BY_OWNERS:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->DEVICE_OWNER_ONLY_RESTRICTIONS:Ljava/util/Set;

    .line 454
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    if-eqz p1, :cond_1a

    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->PRIMARY_USER_ONLY_RESTRICTIONS:Ljava/util/Set;

    .line 456
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    :cond_1a
    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    .line 453
    :goto_1d
    return v0
.end method

.method public static canProfileOwnerOfOrganizationOwnedDeviceChange(Ljava/lang/String;)Z
    .registers 2
    .param p0, "restriction"    # Ljava/lang/String;

    .line 463
    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->PROFILE_OWNER_ORGANIZATION_OWNED_GLOBAL_RESTRICTIONS:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->PROFILE_OWNER_ORGANIZATION_OWNED_LOCAL_RESTRICTIONS:Ljava/util/Set;

    .line 464
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    .line 463
    :goto_14
    return v0
.end method

.method public static contains(Landroid/os/Bundle;Ljava/lang/String;)Z
    .registers 3
    .param p0, "in"    # Landroid/os/Bundle;
    .param p1, "restriction"    # Ljava/lang/String;

    .line 425
    if-eqz p0, :cond_a

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 7
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "restrictions"    # Landroid/os/Bundle;

    .line 832
    const/4 v0, 0x1

    .line 833
    .local v0, "noneSet":Z
    if-eqz p2, :cond_4e

    .line 834
    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 835
    .local v2, "key":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 836
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 837
    const/4 v0, 0x0

    .line 839
    .end local v2    # "key":Ljava/lang/String;
    :cond_33
    goto :goto_b

    .line 840
    :cond_34
    if-eqz v0, :cond_65

    .line 841
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "none"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_65

    .line 844
    :cond_4e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 846
    :cond_65
    :goto_65
    return-void
.end method

.method public static getDefaultEnabledForManagedProfiles()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 471
    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->DEFAULT_ENABLED_FOR_MANAGED_PROFILES:Ljava/util/Set;

    return-object v0
.end method

.method private static getNewUserRestrictionSetting(Landroid/content/Context;ILjava/lang/String;Z)I
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I
    .param p2, "userRestriction"    # Ljava/lang/String;
    .param p3, "newValue"    # Z

    .line 889
    if-nez p3, :cond_13

    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    .line 890
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 889
    invoke-virtual {v0, p2, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    .line 890
    :cond_11
    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x0

    .line 889
    :goto_14
    return v0
.end method

.method public static isGlobal(ILjava/lang/String;)Z
    .registers 3
    .param p0, "restrictionOwnerType"    # I
    .param p1, "key"    # Ljava/lang/String;

    .line 488
    if-nez p0, :cond_12

    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->PRIMARY_USER_ONLY_RESTRICTIONS:Ljava/util/Set;

    .line 489
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->GLOBAL_RESTRICTIONS:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    :cond_12
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1d

    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->PROFILE_OWNER_ORGANIZATION_OWNED_GLOBAL_RESTRICTIONS:Ljava/util/Set;

    .line 492
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    :cond_1d
    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->PROFILE_GLOBAL_RESTRICTIONS:Ljava/util/Set;

    .line 493
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->DEVICE_OWNER_ONLY_RESTRICTIONS:Ljava/util/Set;

    .line 494
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    goto :goto_30

    :cond_2e
    const/4 v0, 0x0

    goto :goto_31

    :cond_30
    :goto_30
    const/4 v0, 0x1

    .line 488
    :goto_31
    return v0
.end method

.method public static isLocal(ILjava/lang/String;)Z
    .registers 3
    .param p0, "restrictionOwnerType"    # I
    .param p1, "key"    # Ljava/lang/String;

    .line 502
    invoke-static {p0, p1}, Lcom/android/server/pm/UserRestrictionsUtils;->isGlobal(ILjava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isSettingRestrictedForUser(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;I)Z
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "setting"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "callingUid"    # I

    .line 704
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 707
    .local v0, "mUserManager":Landroid/os/UserManager;
    const/4 v1, 0x0

    .line 708
    .local v1, "checkAllUser":Z
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    sparse-switch v2, :sswitch_data_1f0

    :cond_15
    goto/16 :goto_12e

    :sswitch_17
    const-string/jumbo v2, "screen_brightness"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/16 v2, 0x10

    goto/16 :goto_12f

    :sswitch_24
    const-string v2, "install_non_market_apps"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    move v2, v3

    goto/16 :goto_12f

    :sswitch_2f
    const-string v2, "auto_time"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/16 v2, 0x13

    goto/16 :goto_12f

    :sswitch_3b
    const-string v2, "always_on_vpn_lockdown"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/4 v2, 0x7

    goto/16 :goto_12f

    :sswitch_46
    const-string v2, "doze_pulse_on_pick_up"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/16 v2, 0xd

    goto/16 :goto_12f

    :sswitch_52
    const-string v2, "always_on_vpn_lockdown_whitelist"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/16 v2, 0x8

    goto/16 :goto_12f

    :sswitch_5e
    const-string v2, "auto_time_zone"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/16 v2, 0x14

    goto/16 :goto_12f

    :sswitch_6a
    const-string/jumbo v2, "private_dns_specifier"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/16 v2, 0x17

    goto/16 :goto_12f

    :sswitch_77
    const-string v2, "doze_pulse_on_double_tap"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/16 v2, 0xf

    goto/16 :goto_12f

    :sswitch_83
    const-string v2, "airplane_mode_on"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/16 v2, 0xa

    goto/16 :goto_12f

    :sswitch_8f
    const-string/jumbo v2, "private_dns_mode"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/16 v2, 0x16

    goto/16 :goto_12f

    :sswitch_9c
    const-string/jumbo v2, "screen_off_timeout"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/16 v2, 0x15

    goto/16 :goto_12f

    :sswitch_a9
    const-string/jumbo v2, "safe_boot_disallowed"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/16 v2, 0x9

    goto/16 :goto_12f

    :sswitch_b6
    const-string/jumbo v2, "screen_brightness_float"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/16 v2, 0x11

    goto/16 :goto_12f

    :sswitch_c3
    const-string v2, "doze_pulse_on_long_press"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/16 v2, 0xe

    goto :goto_12f

    :sswitch_ce
    const-string v2, "doze_always_on"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/16 v2, 0xc

    goto :goto_12f

    :sswitch_d9
    const-string/jumbo v2, "preferred_network_mode"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/4 v2, 0x5

    goto :goto_12f

    :sswitch_e4
    const-string v2, "always_on_vpn_app"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/4 v2, 0x6

    goto :goto_12f

    :sswitch_ee
    const-string/jumbo v2, "screen_brightness_mode"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/16 v2, 0x12

    goto :goto_12f

    :sswitch_fa
    const-string v2, "adb_enabled"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/4 v2, 0x2

    goto :goto_12f

    :sswitch_104
    const-string/jumbo v2, "verifier_verify_adb_installs"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/4 v2, 0x4

    goto :goto_12f

    :sswitch_10f
    const-string v2, "doze_enabled"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/16 v2, 0xb

    goto :goto_12f

    :sswitch_11a
    const-string v2, "location_mode"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    move v2, v4

    goto :goto_12f

    :sswitch_124
    const-string v2, "adb_wifi_enabled"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/4 v2, 0x3

    goto :goto_12f

    :goto_12e
    const/4 v2, -0x1

    :goto_12f
    const-string v5, "1"

    const-string v6, "0"

    const/16 v7, 0x3e8

    packed-switch v2, :pswitch_data_252

    .line 814
    const-string v2, "data_roaming"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1ef

    .line 815
    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1db

    .line 816
    return v4

    .line 808
    :pswitch_147
    if-ne p4, v7, :cond_14a

    .line 809
    return v4

    .line 811
    :cond_14a
    const-string v2, "disallow_config_private_dns"

    .line 812
    .local v2, "restriction":Ljava/lang/String;
    goto/16 :goto_1df

    .line 800
    .end local v2    # "restriction":Ljava/lang/String;
    :pswitch_14e
    if-ne p4, v7, :cond_151

    .line 801
    return v4

    .line 803
    :cond_151
    const-string/jumbo v2, "no_config_screen_timeout"

    .line 804
    .restart local v2    # "restriction":Ljava/lang/String;
    goto/16 :goto_1df

    .line 793
    .end local v2    # "restriction":Ljava/lang/String;
    :pswitch_156
    if-ne p4, v7, :cond_159

    .line 794
    return v4

    .line 796
    :cond_159
    const-string/jumbo v2, "no_config_date_time"

    .line 797
    .restart local v2    # "restriction":Ljava/lang/String;
    goto/16 :goto_1df

    .line 785
    .end local v2    # "restriction":Ljava/lang/String;
    :pswitch_15e
    if-ne p4, v7, :cond_161

    .line 786
    return v4

    .line 788
    :cond_161
    const-string/jumbo v2, "no_config_brightness"

    .line 789
    .restart local v2    # "restriction":Ljava/lang/String;
    goto/16 :goto_1df

    .line 776
    .end local v2    # "restriction":Ljava/lang/String;
    :pswitch_166
    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16d

    .line 777
    return v4

    .line 779
    :cond_16d
    const-string/jumbo v2, "no_ambient_display"

    .line 780
    .restart local v2    # "restriction":Ljava/lang/String;
    goto/16 :goto_1df

    .line 765
    .end local v2    # "restriction":Ljava/lang/String;
    :pswitch_172
    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_179

    .line 766
    return v4

    .line 768
    :cond_179
    const-string/jumbo v2, "no_airplane_mode"

    .line 769
    .restart local v2    # "restriction":Ljava/lang/String;
    goto :goto_1df

    .line 758
    .end local v2    # "restriction":Ljava/lang/String;
    :pswitch_17d
    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_184

    .line 759
    return v4

    .line 761
    :cond_184
    const-string/jumbo v2, "no_safe_boot"

    .line 762
    .restart local v2    # "restriction":Ljava/lang/String;
    goto :goto_1df

    .line 750
    .end local v2    # "restriction":Ljava/lang/String;
    :pswitch_188
    invoke-static {p4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    .line 751
    .local v2, "appId":I
    if-eq v2, v7, :cond_196

    if-nez v2, :cond_191

    goto :goto_196

    .line 754
    :cond_191
    const-string/jumbo v3, "no_config_vpn"

    .line 755
    .local v3, "restriction":Ljava/lang/String;
    move-object v2, v3

    goto :goto_1df

    .line 752
    .end local v3    # "restriction":Ljava/lang/String;
    :cond_196
    :goto_196
    return v4

    .line 743
    .end local v2    # "appId":I
    :pswitch_197
    const-string/jumbo v2, "no_config_mobile_networks"

    .line 744
    .local v2, "restriction":Ljava/lang/String;
    goto :goto_1df

    .line 736
    .end local v2    # "restriction":Ljava/lang/String;
    :pswitch_19b
    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a2

    .line 737
    return v4

    .line 739
    :cond_1a2
    const-string v2, "ensure_verify_apps"

    .line 740
    .restart local v2    # "restriction":Ljava/lang/String;
    goto :goto_1df

    .line 729
    .end local v2    # "restriction":Ljava/lang/String;
    :pswitch_1a5
    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1ac

    .line 730
    return v4

    .line 732
    :cond_1ac
    const-string/jumbo v2, "no_debugging_features"

    .line 733
    .restart local v2    # "restriction":Ljava/lang/String;
    goto :goto_1df

    .line 721
    .end local v2    # "restriction":Ljava/lang/String;
    :pswitch_1b0
    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b7

    .line 722
    return v4

    .line 724
    :cond_1b7
    const-string/jumbo v2, "no_install_unknown_sources"

    .line 725
    .restart local v2    # "restriction":Ljava/lang/String;
    goto :goto_1df

    .line 710
    .end local v2    # "restriction":Ljava/lang/String;
    :pswitch_1bb
    nop

    .line 711
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 710
    const-string/jumbo v5, "no_config_location"

    invoke-virtual {v0, v5, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_1cc

    if-eq p4, v7, :cond_1cc

    .line 713
    return v3

    .line 714
    :cond_1cc
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d7

    .line 715
    return v4

    .line 717
    :cond_1d7
    const-string/jumbo v2, "no_share_location"

    .line 718
    .restart local v2    # "restriction":Ljava/lang/String;
    goto :goto_1df

    .line 818
    .end local v2    # "restriction":Ljava/lang/String;
    :cond_1db
    const-string/jumbo v2, "no_data_roaming"

    .line 819
    .restart local v2    # "restriction":Ljava/lang/String;
    nop

    .line 824
    :goto_1df
    if-eqz v1, :cond_1e6

    .line 825
    invoke-virtual {v0, v2}, Landroid/os/UserManager;->hasUserRestrictionOnAnyUser(Ljava/lang/String;)Z

    move-result v3

    return v3

    .line 827
    :cond_1e6
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v3

    return v3

    .line 821
    .end local v2    # "restriction":Ljava/lang/String;
    :cond_1ef
    return v4

    :sswitch_data_1f0
    .sparse-switch
        -0x7d29d849 -> :sswitch_124
        -0x6b192413 -> :sswitch_11a
        -0x58d2ff08 -> :sswitch_10f
        -0x4280630b -> :sswitch_104
        -0x39d6645f -> :sswitch_fa
        -0x294f7102 -> :sswitch_ee
        -0x252f8dda -> :sswitch_e4
        -0x18d5c3ee -> :sswitch_d9
        -0x611a9fa -> :sswitch_ce
        -0x1efffcf -> :sswitch_c3
        -0x102879f -> :sswitch_b6
        0x3756c15 -> :sswitch_a9
        0xf689f3e -> :sswitch_9c
        0x28c0ce35 -> :sswitch_8f
        0x3733860e -> :sswitch_83
        0x3ff919a6 -> :sswitch_77
        0x48f0b46c -> :sswitch_6a
        0x4c070b4e -> :sswitch_5e
        0x4f84b830 -> :sswitch_52
        0x5f8b91a8 -> :sswitch_46
        0x62299f68 -> :sswitch_3b
        0x6305635d -> :sswitch_2f
        0x6565577f -> :sswitch_24
        0x67748604 -> :sswitch_17
    .end sparse-switch

    :pswitch_data_252
    .packed-switch 0x0
        :pswitch_1bb
        :pswitch_1b0
        :pswitch_1a5
        :pswitch_1a5
        :pswitch_19b
        :pswitch_197
        :pswitch_188
        :pswitch_188
        :pswitch_188
        :pswitch_17d
        :pswitch_172
        :pswitch_166
        :pswitch_166
        :pswitch_166
        :pswitch_166
        :pswitch_166
        :pswitch_15e
        :pswitch_15e
        :pswitch_15e
        :pswitch_156
        :pswitch_156
        :pswitch_14e
        :pswitch_147
        :pswitch_147
    .end packed-switch
.end method

.method private static isSystemApp(I[Ljava/lang/String;)Z
    .registers 11
    .param p0, "uid"    # I
    .param p1, "packageList"    # [Ljava/lang/String;

    .line 338
    invoke-static {p0}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 339
    return v1

    .line 341
    :cond_8
    const/4 v0, 0x0

    if-nez p1, :cond_c

    .line 342
    return v0

    .line 344
    :cond_c
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 345
    .local v2, "pm":Landroid/content/pm/IPackageManager;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_11
    array-length v4, p1

    if-ge v3, v4, :cond_32

    .line 347
    const v4, 0xc2000

    .line 350
    .local v4, "flags":I
    :try_start_17
    aget-object v5, p1, v3

    const-wide/32 v6, 0xc2000

    .line 351
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-interface {v2, v5, v6, v7, v8}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 352
    .local v5, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v5, :cond_2d

    invoke-virtual {v5}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v6
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_2a} :catch_2e

    if-eqz v6, :cond_2d

    .line 353
    return v1

    .line 357
    .end local v4    # "flags":I
    .end local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_2d
    goto :goto_2f

    .line 355
    :catch_2e
    move-exception v4

    .line 345
    :goto_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 359
    .end local v3    # "i":I
    :cond_32
    return v0
.end method

.method public static isValidRestriction(Ljava/lang/String;)Z
    .registers 7
    .param p0, "restriction"    # Ljava/lang/String;

    .line 305
    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->USER_RESTRICTIONS:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_62

    .line 307
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 308
    .local v0, "uid":I
    const/4 v2, 0x0

    .line 310
    .local v2, "pkgs":[Ljava/lang/String;
    :try_start_e
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_16} :catch_18

    move-object v2, v3

    .line 313
    goto :goto_19

    .line 311
    :catch_18
    move-exception v3

    .line 314
    :goto_19
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unknown restriction queried by uid "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 315
    .local v3, "msg":Ljava/lang/StringBuilder;
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 316
    const/4 v4, 0x0

    if-eqz v2, :cond_40

    array-length v5, v2

    if-lez v5, :cond_40

    .line 317
    const-string v5, " ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    aget-object v5, v2, v4

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    array-length v5, v2

    if-le v5, v1, :cond_3b

    .line 320
    const-string v1, " et al"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    :cond_3b
    const-string v1, ")"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    :cond_40
    const-string v1, ": "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    const-string v1, "UserRestrictionsUtils"

    if-eqz p0, :cond_5a

    invoke-static {v0, v2}, Lcom/android/server/pm/UserRestrictionsUtils;->isSystemApp(I[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5a

    .line 327
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_61

    .line 329
    :cond_5a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :goto_61
    return v4

    .line 333
    .end local v0    # "uid":I
    .end local v2    # "pkgs":[Ljava/lang/String;
    .end local v3    # "msg":Ljava/lang/StringBuilder;
    :cond_62
    return v1
.end method

.method public static merge(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 7
    .param p0, "dest"    # Landroid/os/Bundle;
    .param p1, "in"    # Landroid/os/Bundle;

    .line 429
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, p1, :cond_9

    move v2, v0

    goto :goto_a

    :cond_9
    move v2, v1

    :goto_a
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 431
    if-nez p1, :cond_10

    .line 432
    return-void

    .line 434
    :cond_10
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 435
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 436
    invoke-virtual {p0, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 438
    .end local v3    # "key":Ljava/lang/String;
    :cond_2d
    goto :goto_18

    .line 439
    :cond_2e
    return-void
.end method

.method public static moveRestriction(Ljava/lang/String;Landroid/util/SparseArray;Lcom/android/server/pm/RestrictionsSet;)V
    .registers 5
    .param p0, "restrictionKey"    # Ljava/lang/String;
    .param p2, "destRestrictionSet"    # Lcom/android/server/pm/RestrictionsSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/RestrictionsSet;",
            ">;",
            "Lcom/android/server/pm/RestrictionsSet;",
            ")V"
        }
    .end annotation

    .line 855
    .local p1, "sourceRestrictionsSets":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/RestrictionsSet;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_13

    .line 856
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/RestrictionsSet;

    .line 857
    .local v1, "sourceRestrictionsSet":Lcom/android/server/pm/RestrictionsSet;
    invoke-virtual {v1, p2, p0}, Lcom/android/server/pm/RestrictionsSet;->moveRestriction(Lcom/android/server/pm/RestrictionsSet;Ljava/lang/String;)V

    .line 855
    .end local v1    # "sourceRestrictionsSet":Lcom/android/server/pm/RestrictionsSet;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 859
    .end local v0    # "i":I
    :cond_13
    return-void
.end method

.method private static newSetWithUniqueCheck([Ljava/lang/String;)Ljava/util/Set;
    .registers 4
    .param p0, "strings"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 74
    invoke-static {p0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    .line 77
    .local v0, "ret":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    array-length v2, p0

    if-ne v1, v2, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 78
    return-object v0
.end method

.method public static nonNull(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 2
    .param p0, "in"    # Landroid/os/Bundle;

    .line 417
    if-eqz p0, :cond_4

    move-object v0, p0

    goto :goto_9

    :cond_4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :goto_9
    return-object v0
.end method

.method public static readRestrictions(Landroid/util/TypedXmlPullParser;)Landroid/os/Bundle;
    .registers 2
    .param p0, "parser"    # Landroid/util/TypedXmlPullParser;

    .line 408
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 409
    .local v0, "result":Landroid/os/Bundle;
    invoke-static {p0, v0}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Landroid/util/TypedXmlPullParser;Landroid/os/Bundle;)V

    .line 410
    return-object v0
.end method

.method public static readRestrictions(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/Bundle;
    .registers 2
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 404
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->makeTyped(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/TypedXmlPullParser;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Landroid/util/TypedXmlPullParser;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static readRestrictions(Landroid/util/TypedXmlPullParser;Landroid/os/Bundle;)V
    .registers 6
    .param p0, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p1, "restrictions"    # Landroid/os/Bundle;

    .line 394
    invoke-virtual {p1}, Landroid/os/Bundle;->clear()V

    .line 395
    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->USER_RESTRICTIONS:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 396
    .local v1, "key":Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {p0, v2, v1, v3}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    .line 397
    .local v2, "value":Z
    if-eqz v2, :cond_21

    .line 398
    const/4 v3, 0x1

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 400
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Z
    :cond_21
    goto :goto_9

    .line 401
    :cond_22
    return-void
.end method

.method public static readRestrictions(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;)V
    .registers 3
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "restrictions"    # Landroid/os/Bundle;

    .line 390
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->makeTyped(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/TypedXmlPullParser;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Landroid/util/TypedXmlPullParser;Landroid/os/Bundle;)V

    .line 391
    return-void
.end method

.method public static varargs restrictionsChanged(Landroid/os/Bundle;Landroid/os/Bundle;[Ljava/lang/String;)Z
    .registers 9
    .param p0, "oldRestrictions"    # Landroid/os/Bundle;
    .param p1, "newRestrictions"    # Landroid/os/Bundle;
    .param p2, "restrictions"    # [Ljava/lang/String;

    .line 869
    array-length v0, p2

    if-nez v0, :cond_8

    .line 870
    invoke-static {p0, p1}, Lcom/android/server/pm/UserRestrictionsUtils;->areEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v0

    return v0

    .line 872
    :cond_8
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_b
    if-ge v2, v0, :cond_1e

    aget-object v3, p2, v2

    .line 873
    .local v3, "restriction":Ljava/lang/String;
    invoke-virtual {p0, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 874
    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eq v4, v5, :cond_1b

    .line 875
    const/4 v0, 0x1

    return v0

    .line 872
    .end local v3    # "restriction":Ljava/lang/String;
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 878
    :cond_1e
    return v1
.end method

.method private static setInstallMarketAppsRestriction(Landroid/content/ContentResolver;II)V
    .registers 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "userId"    # I
    .param p2, "settingValue"    # I

    .line 883
    const-string v0, "install_non_market_apps"

    invoke-static {p0, v0, p2, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 885
    return-void
.end method

.method public static writeRestrictions(Landroid/util/TypedXmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 8
    .param p0, "serializer"    # Landroid/util/TypedXmlSerializer;
    .param p1, "restrictions"    # Landroid/os/Bundle;
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 369
    if-nez p1, :cond_3

    .line 370
    return-void

    .line 373
    :cond_3
    const/4 v0, 0x0

    invoke-interface {p0, v0, p2}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 374
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_50

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 375
    .local v2, "key":Ljava/lang/String;
    sget-object v3, Lcom/android/server/pm/UserRestrictionsUtils;->NON_PERSIST_USER_RESTRICTIONS:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 376
    goto :goto_f

    .line 378
    :cond_24
    sget-object v3, Lcom/android/server/pm/UserRestrictionsUtils;->USER_RESTRICTIONS:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 379
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 380
    const/4 v3, 0x1

    invoke-interface {p0, v0, v2, v3}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_f

    .line 384
    :cond_37
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown user restriction detected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UserRestrictionsUtils"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_f

    .line 386
    :cond_50
    invoke-interface {p0, v0, p2}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 387
    return-void
.end method

.method public static writeRestrictions(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 4
    .param p0, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "restrictions"    # Landroid/os/Bundle;
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 364
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->makeTyped(Lorg/xmlpull/v1/XmlSerializer;)Landroid/util/TypedXmlSerializer;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/android/server/pm/UserRestrictionsUtils;->writeRestrictions(Landroid/util/TypedXmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 365
    return-void
.end method
