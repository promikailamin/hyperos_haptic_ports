.class public abstract Lcom/android/server/pm/UserRestrictionsUtils;
.super Ljava/lang/Object;
.source "UserRestrictionsUtils.java"


# static fields
.field public static final DEFAULT_ENABLED_FOR_MANAGED_PROFILES:Ljava/util/Set;

.field public static final DEPRECATED_USER_RESTRICTIONS:Ljava/util/Set;

.field public static final DEVICE_OWNER_ONLY_RESTRICTIONS:Ljava/util/Set;

.field public static final FINANCED_DEVICE_OWNER_RESTRICTIONS:Ljava/util/Set;

.field public static final GLOBAL_RESTRICTIONS:Ljava/util/Set;

.field public static final IMMUTABLE_BY_OWNERS:Ljava/util/Set;

.field public static final MAIN_USER_ONLY_RESTRICTIONS:Ljava/util/Set;

.field public static final NON_PERSIST_USER_RESTRICTIONS:Ljava/util/Set;

.field public static final PROFILE_GLOBAL_RESTRICTIONS:Ljava/util/Set;

.field public static final PROFILE_OWNER_ORGANIZATION_OWNED_PARENT_GLOBAL_RESTRICTIONS:Ljava/util/Set;

.field public static final PROFILE_OWNER_ORGANIZATION_OWNED_PARENT_LOCAL_RESTRICTIONS:Ljava/util/Set;

.field public static final PROFILE_OWNER_ORGANIZATION_OWNED_PROFILE_RESTRICTIONS:Ljava/util/Set;

.field public static final USER_RESTRICTIONS:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .registers 82

    .line 82
    const-string/jumbo v80, "no_thread_network"

    const-string/jumbo v81, "no_change_near_field_communication_radio"

    const-string/jumbo v1, "no_config_wifi"

    const-string/jumbo v2, "no_config_wifi_private"

    const-string/jumbo v3, "no_config_wifi_shared"

    const-string/jumbo v4, "no_config_locale"

    const-string/jumbo v5, "no_modify_accounts"

    const-string/jumbo v6, "no_install_apps"

    const-string/jumbo v7, "no_uninstall_apps"

    const-string/jumbo v8, "no_share_location"

    const-string/jumbo v9, "no_install_unknown_sources"

    const-string/jumbo v10, "no_install_unknown_sources_globally"

    const-string/jumbo v11, "no_config_bluetooth"

    const-string/jumbo v12, "no_bluetooth"

    const-string/jumbo v13, "no_bluetooth_sharing"

    const-string/jumbo v14, "no_usb_file_transfer"

    const-string/jumbo v15, "no_config_credentials"

    const-string/jumbo v16, "no_remove_user"

    const-string/jumbo v17, "no_remove_managed_profile"

    const-string/jumbo v18, "no_debugging_features"

    const-string/jumbo v19, "no_config_vpn"

    const-string/jumbo v20, "no_config_date_time"

    const-string/jumbo v21, "no_config_tethering"

    const-string/jumbo v22, "no_network_reset"

    const-string/jumbo v23, "no_factory_reset"

    const-string/jumbo v24, "no_add_user"

    const-string/jumbo v25, "no_add_managed_profile"

    const-string/jumbo v26, "no_add_clone_profile"

    const-string/jumbo v27, "no_add_private_profile"

    const-string v28, "ensure_verify_apps"

    const-string/jumbo v29, "no_config_cell_broadcasts"

    const-string/jumbo v30, "no_config_mobile_networks"

    const-string/jumbo v31, "no_control_apps"

    const-string/jumbo v32, "no_physical_media"

    const-string/jumbo v33, "no_unmute_microphone"

    const-string/jumbo v34, "no_adjust_volume"

    const-string/jumbo v35, "no_outgoing_calls"

    const-string/jumbo v36, "no_sms"

    const-string/jumbo v37, "no_fun"

    const-string/jumbo v38, "no_create_windows"

    const-string/jumbo v39, "no_system_error_dialogs"

    const-string/jumbo v40, "no_cross_profile_copy_paste"

    const-string/jumbo v41, "no_outgoing_beam"

    const-string/jumbo v42, "no_wallpaper"

    const-string/jumbo v43, "no_safe_boot"

    const-string v44, "allow_parent_profile_app_linking"

    const-string/jumbo v45, "no_record_audio"

    const-string/jumbo v46, "no_camera"

    const-string/jumbo v47, "no_run_in_background"

    const-string/jumbo v48, "no_data_roaming"

    const-string/jumbo v49, "no_set_user_icon"

    const-string/jumbo v50, "no_set_wallpaper"

    const-string/jumbo v51, "no_oem_unlock"

    const-string v52, "disallow_unmute_device"

    const-string/jumbo v53, "no_autofill"

    const-string/jumbo v54, "no_content_capture"

    const-string/jumbo v55, "no_content_suggestions"

    const-string/jumbo v56, "no_user_switch"

    const-string/jumbo v57, "no_unified_password"

    const-string/jumbo v58, "no_config_location"

    const-string/jumbo v59, "no_airplane_mode"

    const-string/jumbo v60, "no_config_brightness"

    const-string/jumbo v61, "no_sharing_into_profile"

    const-string/jumbo v62, "no_ambient_display"

    const-string/jumbo v63, "no_config_screen_timeout"

    const-string/jumbo v64, "no_printing"

    const-string v65, "disallow_config_private_dns"

    const-string v66, "disallow_microphone_toggle"

    const-string v67, "disallow_camera_toggle"

    const-string/jumbo v68, "no_change_wifi_state"

    const-string/jumbo v69, "no_wifi_tethering"

    const-string/jumbo v70, "no_grant_admin"

    const-string/jumbo v71, "no_sharing_admin_configured_wifi"

    const-string/jumbo v72, "no_wifi_direct"

    const-string/jumbo v73, "no_add_wifi_config"

    const-string/jumbo v74, "no_cellular_2g"

    const-string/jumbo v75, "no_ultra_wideband_radio"

    const-string v76, "disallow_config_default_apps"

    const-string/jumbo v77, "no_near_field_communication_radio"

    const-string/jumbo v78, "no_sim_globally"

    const-string/jumbo v79, "no_assist_content"

    filled-new-array/range {v1 .. v81}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/UserRestrictionsUtils;->newSetWithUniqueCheck([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->USER_RESTRICTIONS:Ljava/util/Set;

    .line 166
    const-string/jumbo v0, "no_add_managed_profile"

    const-string/jumbo v1, "no_remove_managed_profile"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->DEPRECATED_USER_RESTRICTIONS:Ljava/util/Set;

    .line 174
    const-string/jumbo v0, "no_record_audio"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v1

    sput-object v1, Lcom/android/server/pm/UserRestrictionsUtils;->NON_PERSIST_USER_RESTRICTIONS:Ljava/util/Set;

    .line 182
    const-string/jumbo v15, "no_data_roaming"

    const-string/jumbo v16, "no_airplane_mode"

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

    filled-new-array/range {v2 .. v16}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v1

    sput-object v1, Lcom/android/server/pm/UserRestrictionsUtils;->MAIN_USER_ONLY_RESTRICTIONS:Ljava/util/Set;

    .line 203
    const-string/jumbo v13, "no_thread_network"

    const-string/jumbo v14, "no_change_near_field_communication_radio"

    const-string/jumbo v2, "no_user_switch"

    const-string v3, "disallow_config_private_dns"

    const-string v4, "disallow_microphone_toggle"

    const-string v5, "disallow_camera_toggle"

    const-string/jumbo v6, "no_change_wifi_state"

    const-string/jumbo v7, "no_wifi_tethering"

    const-string/jumbo v8, "no_wifi_direct"

    const-string/jumbo v9, "no_add_wifi_config"

    const-string/jumbo v10, "no_cellular_2g"

    const-string/jumbo v11, "no_ultra_wideband_radio"

    const-string/jumbo v12, "no_near_field_communication_radio"

    filled-new-array/range {v2 .. v14}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v1

    sput-object v1, Lcom/android/server/pm/UserRestrictionsUtils;->DEVICE_OWNER_ONLY_RESTRICTIONS:Ljava/util/Set;

    .line 222
    const-string/jumbo v1, "no_wallpaper"

    const-string/jumbo v2, "no_oem_unlock"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->IMMUTABLE_BY_OWNERS:Ljava/util/Set;

    .line 232
    const-string/jumbo v9, "no_assist_content"

    const-string v10, "disallow_config_default_apps"

    const-string/jumbo v1, "no_adjust_volume"

    const-string/jumbo v2, "no_bluetooth_sharing"

    const-string/jumbo v3, "no_config_date_time"

    const-string/jumbo v4, "no_system_error_dialogs"

    const-string/jumbo v5, "no_run_in_background"

    const-string/jumbo v6, "no_unmute_microphone"

    const-string v7, "disallow_unmute_device"

    const-string/jumbo v8, "no_camera"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->GLOBAL_RESTRICTIONS:Ljava/util/Set;

    .line 249
    const-string/jumbo v12, "no_thread_network"

    const-string/jumbo v13, "no_change_near_field_communication_radio"

    const-string/jumbo v1, "no_airplane_mode"

    const-string/jumbo v2, "no_config_date_time"

    const-string v3, "disallow_config_private_dns"

    const-string/jumbo v4, "no_change_wifi_state"

    const-string/jumbo v5, "no_debugging_features"

    const-string/jumbo v6, "no_wifi_tethering"

    const-string/jumbo v7, "no_wifi_direct"

    const-string/jumbo v8, "no_add_wifi_config"

    const-string/jumbo v9, "no_cellular_2g"

    const-string/jumbo v10, "no_ultra_wideband_radio"

    const-string/jumbo v11, "no_near_field_communication_radio"

    filled-new-array/range {v1 .. v13}, [Ljava/lang/String;

    move-result-object v0

    .line 250
    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->PROFILE_OWNER_ORGANIZATION_OWNED_PARENT_GLOBAL_RESTRICTIONS:Ljava/util/Set;

    .line 270
    const-string/jumbo v0, "no_sim_globally"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    .line 271
    invoke-static {v1}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v1

    sput-object v1, Lcom/android/server/pm/UserRestrictionsUtils;->PROFILE_OWNER_ORGANIZATION_OWNED_PROFILE_RESTRICTIONS:Ljava/util/Set;

    .line 279
    const-string/jumbo v24, "no_config_brightness"

    const-string/jumbo v25, "no_config_screen_timeout"

    const-string/jumbo v2, "no_config_bluetooth"

    const-string/jumbo v3, "no_config_location"

    const-string/jumbo v4, "no_config_wifi"

    const-string/jumbo v5, "no_content_capture"

    const-string/jumbo v6, "no_content_suggestions"

    const-string/jumbo v7, "no_debugging_features"

    const-string/jumbo v8, "no_share_location"

    const-string/jumbo v9, "no_outgoing_calls"

    const-string/jumbo v10, "no_camera"

    const-string/jumbo v11, "no_bluetooth"

    const-string/jumbo v12, "no_bluetooth_sharing"

    const-string/jumbo v13, "no_config_cell_broadcasts"

    const-string/jumbo v14, "no_config_mobile_networks"

    const-string/jumbo v15, "no_config_tethering"

    const-string/jumbo v16, "no_data_roaming"

    const-string/jumbo v17, "no_safe_boot"

    const-string/jumbo v18, "no_sms"

    const-string/jumbo v19, "no_usb_file_transfer"

    const-string/jumbo v20, "no_physical_media"

    const-string/jumbo v21, "no_unmute_microphone"

    const-string v22, "disallow_config_default_apps"

    const-string/jumbo v23, "no_add_private_profile"

    filled-new-array/range {v2 .. v25}, [Ljava/lang/String;

    move-result-object v1

    .line 280
    invoke-static {v1}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v1

    sput-object v1, Lcom/android/server/pm/UserRestrictionsUtils;->PROFILE_OWNER_ORGANIZATION_OWNED_PARENT_LOCAL_RESTRICTIONS:Ljava/util/Set;

    .line 314
    const-string/jumbo v1, "no_bluetooth_sharing"

    const-string/jumbo v2, "no_debugging_features"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v1

    sput-object v1, Lcom/android/server/pm/UserRestrictionsUtils;->DEFAULT_ENABLED_FOR_MANAGED_PROFILES:Ljava/util/Set;

    .line 322
    const-string/jumbo v1, "no_airplane_mode"

    const-string/jumbo v2, "no_install_unknown_sources_globally"

    const-string v3, "ensure_verify_apps"

    filled-new-array {v3, v1, v2, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->PROFILE_GLOBAL_RESTRICTIONS:Ljava/util/Set;

    .line 333
    const-string/jumbo v5, "no_config_date_time"

    const-string/jumbo v6, "no_outgoing_calls"

    const-string/jumbo v1, "no_add_user"

    const-string/jumbo v2, "no_debugging_features"

    const-string/jumbo v3, "no_install_unknown_sources"

    const-string/jumbo v4, "no_safe_boot"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->FINANCED_DEVICE_OWNER_RESTRICTIONS:Ljava/util/Set;

    return-void
.end method

.method public static applyUserRestriction(Landroid/content/Context;ILjava/lang/String;Z)V
    .registers 13

    .line 651
    const-string v0, "airplane_mode_on"

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 652
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 654
    :try_start_a
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v4
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_30

    const-string/jumbo v5, "no_install_unknown_sources_globally"

    const-string/jumbo v6, "no_install_unknown_sources"

    const-string v7, "0"

    const/4 v8, 0x0

    sparse-switch v4, :sswitch_data_180

    goto/16 :goto_178

    :sswitch_1c
    :try_start_1c
    const-string/jumbo p0, "no_debugging_features"

    invoke-virtual {p2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_178

    if-eqz p3, :cond_178

    if-eqz p1, :cond_33

    .line 687
    invoke-static {}, Lcom/android/server/pm/UserRestrictionsUtils;->getDeviceOwnerUserId()I

    move-result p0

    if-ne p1, p0, :cond_178

    goto :goto_33

    :catchall_30
    move-exception p0

    goto/16 :goto_17c

    .line 688
    :cond_33
    :goto_33
    const-string p0, "adb_enabled"

    invoke-static {v1, p0, v7, p1}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 691
    const-string p0, "adb_wifi_enabled"

    invoke-static {v1, p0, v7, p1}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto/16 :goto_178

    .line 654
    :sswitch_3f
    const-string/jumbo p1, "no_safe_boot"

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_178

    .line 739
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "safe_boot_disallowed"

    .line 738
    invoke-static {p0, p1, p3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_178

    .line 654
    :sswitch_54
    const-string/jumbo p0, "no_share_location"

    invoke-virtual {p2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_178

    if-eqz p3, :cond_178

    .line 679
    const-string p0, "location_mode"

    invoke-static {v1, p0, v8, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_178

    .line 654
    :sswitch_66
    const-string/jumbo v0, "no_data_roaming"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_178

    if-eqz p3, :cond_178

    .line 660
    const-class p2, Landroid/telephony/SubscriptionManager;

    .line 661
    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/SubscriptionManager;

    .line 663
    invoke-virtual {p0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object p0
    :try_end_7d
    .catchall {:try_start_1c .. :try_end_7d} :catchall_30

    .line 664
    const-string p2, "data_roaming"

    if-eqz p0, :cond_a8

    .line 665
    :try_start_81
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_85
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_a8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/telephony/SubscriptionInfo;

    .line 666
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    invoke-virtual {p3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 666
    invoke-static {v1, p3, v7, p1}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_85

    .line 673
    :cond_a8
    invoke-static {v1, p2, v7, p1}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto/16 :goto_178

    .line 654
    :sswitch_ad
    const-string/jumbo v0, "no_run_in_background"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_178

    if-eqz p3, :cond_178

    .line 720
    const-class p2, Landroid/app/ActivityManager;

    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 721
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/app/ActivityManager;->isProfileForeground(Landroid/os/UserHandle;)Z

    move-result p0
    :try_end_c8
    .catchall {:try_start_81 .. :try_end_c8} :catchall_30

    if-nez p0, :cond_178

    if-eqz p1, :cond_178

    .line 724
    :try_start_cc
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    const/4 p2, 0x0

    invoke-interface {p0, p1, v8, p2}, Landroid/app/IActivityManager;->stopUserExceptCertainProfiles(IZLandroid/app/IStopUserCallback;)I
    :try_end_d4
    .catch Landroid/os/RemoteException; {:try_start_cc .. :try_end_d4} :catch_d6
    .catchall {:try_start_cc .. :try_end_d4} :catchall_30

    goto/16 :goto_178

    :catch_d6
    move-exception p0

    .line 727
    :try_start_d7
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    .line 654
    :sswitch_dc
    invoke-virtual {p2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_178

    .line 714
    invoke-static {p0, p1, v5, p3}, Lcom/android/server/pm/UserRestrictionsUtils;->getNewUserRestrictionSetting(Landroid/content/Context;ILjava/lang/String;Z)I

    move-result p0

    invoke-static {v1, p1, p0}, Lcom/android/server/pm/UserRestrictionsUtils;->setInstallMarketAppsRestriction(Landroid/content/ContentResolver;II)V

    goto/16 :goto_178

    .line 654
    :sswitch_eb
    const-string/jumbo p0, "no_uninstall_apps"

    invoke-virtual {p2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_178

    goto :goto_153

    :sswitch_f5
    const-string/jumbo p1, "no_airplane_mode"

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_178

    if-eqz p3, :cond_178

    .line 746
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 745
    invoke-static {p1, v0, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_178

    .line 750
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 749
    invoke-static {p1, v0, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 753
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 754
    const-string/jumbo p2, "state"

    invoke-virtual {p1, p2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 755
    sget-object p2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_178

    .line 654
    :sswitch_125
    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_178

    .line 706
    invoke-static {p0, p1, v6, p3}, Lcom/android/server/pm/UserRestrictionsUtils;->getNewUserRestrictionSetting(Landroid/content/Context;ILjava/lang/String;Z)I

    move-result p0

    invoke-static {v1, p1, p0}, Lcom/android/server/pm/UserRestrictionsUtils;->setInstallMarketAppsRestriction(Landroid/content/ContentResolver;II)V

    goto :goto_178

    .line 654
    :sswitch_133
    const-string v0, "ensure_verify_apps"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_178

    if-eqz p3, :cond_178

    .line 700
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p2, "verifier_verify_adb_installs"

    const-string p3, "1"

    .line 699
    invoke-static {p0, p2, p3, p1}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_178

    .line 654
    :sswitch_14a
    const-string/jumbo p0, "no_control_apps"

    invoke-virtual {p2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_178

    .line 769
    :goto_153
    const-class p0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageManagerInternal;

    .line 771
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManagerInternal;->removeAllNonSystemPackageSuspensions(I)V

    .line 772
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManagerInternal;->removeAllDistractingPackageRestrictions(I)V

    .line 773
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManagerInternal;->flushPackageRestrictions(I)V

    goto :goto_178

    .line 654
    :sswitch_165
    const-string/jumbo v0, "no_ambient_display"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_178

    if-eqz p3, :cond_178

    .line 761
    new-instance p2, Landroid/hardware/display/AmbientDisplayConfiguration;

    invoke-direct {p2, p0}, Landroid/hardware/display/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    .line 763
    invoke-virtual {p2, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;->disableDozeSettings(I)V
    :try_end_178
    .catchall {:try_start_d7 .. :try_end_178} :catchall_30

    .line 777
    :cond_178
    :goto_178
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_17c
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 778
    throw p0

    :sswitch_data_180
    .sparse-switch
        -0x57f0a463 -> :sswitch_165
        -0x52b3922e -> :sswitch_14a
        -0x4e6d1409 -> :sswitch_133
        -0x444ddeb2 -> :sswitch_125
        -0x4080af8e -> :sswitch_f5
        -0x646213 -> :sswitch_eb
        0x171409a1 -> :sswitch_dc
        0x2afb8ad6 -> :sswitch_ad
        0x375d2642 -> :sswitch_66
        0x3b5af253 -> :sswitch_54
        0x414d6f66 -> :sswitch_3f
        0x68f319ac -> :sswitch_1c
    .end sparse-switch
.end method

.method public static applyUserRestrictions(Landroid/content/Context;ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 8

    .line 619
    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->USER_RESTRICTIONS:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 620
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 621
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eq v2, v3, :cond_6

    .line 624
    invoke-static {p0, p1, v1, v2}, Lcom/android/server/pm/UserRestrictionsUtils;->applyUserRestriction(Landroid/content/Context;ILjava/lang/String;Z)V

    goto :goto_6

    :cond_20
    return-void
.end method

.method public static areEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 592
    :cond_4
    invoke-static {p0}, Lcom/android/server/BundleUtils;->isEmpty(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 593
    invoke-static {p1}, Lcom/android/server/BundleUtils;->isEmpty(Landroid/os/Bundle;)Z

    move-result p0

    return p0

    .line 595
    :cond_f
    invoke-static {p1}, Lcom/android/server/BundleUtils;->isEmpty(Landroid/os/Bundle;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_17

    return v2

    .line 598
    :cond_17
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 599
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eq v4, v3, :cond_1f

    return v2

    .line 603
    :cond_36
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_55

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 604
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eq v4, v3, :cond_3e

    return v2

    :cond_55
    return v0
.end method

.method public static canDeviceOwnerChange(Ljava/lang/String;)Z
    .registers 2

    .line 486
    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->IMMUTABLE_BY_OWNERS:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static canFinancedDeviceOwnerChange(Ljava/lang/String;)Z
    .registers 2

    .line 558
    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->FINANCED_DEVICE_OWNER_RESTRICTIONS:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 559
    invoke-static {p0}, Lcom/android/server/pm/UserRestrictionsUtils;->canDeviceOwnerChange(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public static canParentOfProfileOwnerOfOrganizationOwnedDeviceChange(Ljava/lang/String;)Z
    .registers 2

    .line 542
    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->PROFILE_OWNER_ORGANIZATION_OWNED_PARENT_GLOBAL_RESTRICTIONS:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->PROFILE_OWNER_ORGANIZATION_OWNED_PARENT_LOCAL_RESTRICTIONS:Ljava/util/Set;

    .line 543
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0
.end method

.method public static canProfileOwnerChange(Ljava/lang/String;ZZ)Z
    .registers 5

    .line 510
    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->IMMUTABLE_BY_OWNERS:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    .line 513
    :cond_a
    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->DEVICE_OWNER_ONLY_RESTRICTIONS:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    return v1

    :cond_13
    if-nez p1, :cond_1e

    .line 516
    sget-object p1, Lcom/android/server/pm/UserRestrictionsUtils;->MAIN_USER_ONLY_RESTRICTIONS:Ljava/util/Set;

    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    return v1

    :cond_1e
    if-nez p2, :cond_29

    .line 519
    sget-object p1, Lcom/android/server/pm/UserRestrictionsUtils;->PROFILE_OWNER_ORGANIZATION_OWNED_PROFILE_RESTRICTIONS:Ljava/util/Set;

    .line 520
    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_29

    return v1

    :cond_29
    const/4 p0, 0x1

    return p0
.end method

.method public static contains(Landroid/os/Bundle;Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_a

    .line 466
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public static deviceOwnerOrSystemUserHasRestriction(Ljava/lang/String;)Z
    .registers 6

    .line 981
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return v1

    .line 986
    :cond_c
    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/UserManagerInternal;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_14

    return v3

    .line 990
    :cond_14
    invoke-static {}, Lcom/android/server/pm/UserRestrictionsUtils;->getDeviceOwnerUserId()I

    move-result v2

    const/16 v4, -0x2710

    if-eq v2, v4, :cond_25

    if-eqz v2, :cond_25

    .line 992
    invoke-virtual {v0, p0, v2}, Lcom/android/server/pm/UserManagerInternal;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_25

    return v3

    :cond_25
    return v1
.end method

.method public static dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 8

    if-eqz p2, :cond_4a

    .line 915
    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    .line 916
    invoke-virtual {p2, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 917
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v1, v3

    goto :goto_b

    :cond_32
    if-eqz v1, :cond_49

    .line 922
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "none"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_49
    return-void

    .line 925
    :cond_4a
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "null"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static getDefaultEnabledForManagedProfiles()Ljava/util/Set;
    .registers 1

    .line 550
    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->DEFAULT_ENABLED_FOR_MANAGED_PROFILES:Ljava/util/Set;

    return-object v0
.end method

.method public static getDeviceOwnerUserId()I
    .registers 1

    .line 975
    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 977
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManagerInternal;->getDeviceOwnerUserId()I

    move-result v0

    return v0
.end method

.method public static getNewUserRestrictionSetting(Landroid/content/Context;ILjava/lang/String;Z)I
    .registers 4

    if-nez p3, :cond_13

    .line 970
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p0

    .line 971
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    .line 970
    invoke-virtual {p0, p2, p1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x1

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x0

    return p0
.end method

.method public static isGlobal(ILjava/lang/String;)Z
    .registers 3

    if-nez p0, :cond_12

    .line 567
    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->MAIN_USER_ONLY_RESTRICTIONS:Ljava/util/Set;

    .line 568
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

    sget-object p0, Lcom/android/server/pm/UserRestrictionsUtils;->PROFILE_OWNER_ORGANIZATION_OWNED_PARENT_GLOBAL_RESTRICTIONS:Ljava/util/Set;

    .line 571
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_30

    :cond_1d
    sget-object p0, Lcom/android/server/pm/UserRestrictionsUtils;->PROFILE_GLOBAL_RESTRICTIONS:Ljava/util/Set;

    .line 572
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_30

    sget-object p0, Lcom/android/server/pm/UserRestrictionsUtils;->DEVICE_OWNER_ONLY_RESTRICTIONS:Ljava/util/Set;

    .line 573
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2e

    goto :goto_30

    :cond_2e
    const/4 p0, 0x0

    return p0

    :cond_30
    :goto_30
    const/4 p0, 0x1

    return p0
.end method

.method public static isSettingRestrictedForUser(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;I)Z
    .registers 11

    .line 783
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 784
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    .line 787
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_20a

    goto/16 :goto_14b

    :sswitch_1a
    const-string/jumbo v0, "screen_brightness"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    goto/16 :goto_14b

    :cond_25
    const/16 v3, 0x16

    goto/16 :goto_14b

    :sswitch_29
    const-string v0, "install_non_market_apps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    goto/16 :goto_14b

    :cond_33
    const/16 v3, 0x15

    goto/16 :goto_14b

    :sswitch_37
    const-string v0, "auto_time"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    goto/16 :goto_14b

    :cond_41
    const/16 v3, 0x14

    goto/16 :goto_14b

    :sswitch_45
    const-string v0, "always_on_vpn_lockdown"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4f

    goto/16 :goto_14b

    :cond_4f
    const/16 v3, 0x13

    goto/16 :goto_14b

    :sswitch_53
    const-string v0, "doze_pulse_on_pick_up"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d

    goto/16 :goto_14b

    :cond_5d
    const/16 v3, 0x12

    goto/16 :goto_14b

    :sswitch_61
    const-string v0, "always_on_vpn_lockdown_whitelist"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6b

    goto/16 :goto_14b

    :cond_6b
    const/16 v3, 0x11

    goto/16 :goto_14b

    :sswitch_6f
    const-string v0, "auto_time_zone"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_79

    goto/16 :goto_14b

    :cond_79
    const/16 v3, 0x10

    goto/16 :goto_14b

    :sswitch_7d
    const-string/jumbo v0, "private_dns_specifier"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_88

    goto/16 :goto_14b

    :cond_88
    const/16 v3, 0xf

    goto/16 :goto_14b

    :sswitch_8c
    const-string v0, "doze_pulse_on_double_tap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_96

    goto/16 :goto_14b

    :cond_96
    const/16 v3, 0xe

    goto/16 :goto_14b

    :sswitch_9a
    const-string v0, "airplane_mode_on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a4

    goto/16 :goto_14b

    :cond_a4
    const/16 v3, 0xd

    goto/16 :goto_14b

    :sswitch_a8
    const-string/jumbo v0, "private_dns_mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b3

    goto/16 :goto_14b

    :cond_b3
    const/16 v3, 0xc

    goto/16 :goto_14b

    :sswitch_b7
    const-string/jumbo v0, "screen_off_timeout"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c2

    goto/16 :goto_14b

    :cond_c2
    const/16 v3, 0xb

    goto/16 :goto_14b

    :sswitch_c6
    const-string/jumbo v0, "safe_boot_disallowed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d1

    goto/16 :goto_14b

    :cond_d1
    const/16 v3, 0xa

    goto/16 :goto_14b

    :sswitch_d5
    const-string v0, "doze_pulse_on_long_press"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_df

    goto/16 :goto_14b

    :cond_df
    const/16 v3, 0x9

    goto/16 :goto_14b

    :sswitch_e3
    const-string v0, "doze_always_on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ed

    goto/16 :goto_14b

    :cond_ed
    const/16 v3, 0x8

    goto/16 :goto_14b

    :sswitch_f1
    const-string/jumbo v0, "preferred_network_mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_fb

    goto :goto_14b

    :cond_fb
    const/4 v3, 0x7

    goto :goto_14b

    :sswitch_fd
    const-string v0, "always_on_vpn_app"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_106

    goto :goto_14b

    :cond_106
    const/4 v3, 0x6

    goto :goto_14b

    :sswitch_108
    const-string/jumbo v0, "screen_brightness_mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_112

    goto :goto_14b

    :cond_112
    const/4 v3, 0x5

    goto :goto_14b

    :sswitch_114
    const-string v0, "adb_enabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11d

    goto :goto_14b

    :cond_11d
    const/4 v3, 0x4

    goto :goto_14b

    :sswitch_11f
    const-string/jumbo v0, "verifier_verify_adb_installs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_129

    goto :goto_14b

    :cond_129
    const/4 v3, 0x3

    goto :goto_14b

    :sswitch_12b
    const-string v0, "doze_enabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_134

    goto :goto_14b

    :cond_134
    const/4 v3, 0x2

    goto :goto_14b

    :sswitch_136
    const-string v0, "location_mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13f

    goto :goto_14b

    :cond_13f
    move v3, v1

    goto :goto_14b

    :sswitch_141
    const-string v0, "adb_wifi_enabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14a

    goto :goto_14b

    :cond_14a
    move v3, v2

    .line 895
    :goto_14b
    const-string v0, "1"

    const-string v4, "0"

    const/16 v5, 0x3e8

    packed-switch v3, :pswitch_data_268

    const-string p4, "data_roaming"

    invoke-virtual {p1, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_168

    .line 896
    invoke-virtual {v4, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_163

    return v2

    .line 900
    :cond_163
    const-string/jumbo p1, "no_data_roaming"

    goto/16 :goto_200

    :cond_168
    return v2

    .line 800
    :pswitch_169
    invoke-virtual {v4, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_170

    return v2

    .line 804
    :cond_170
    const-string/jumbo p1, "no_install_unknown_sources"

    goto/16 :goto_200

    :pswitch_175
    if-ne p4, v5, :cond_178

    return v2

    .line 878
    :cond_178
    const-string/jumbo p1, "no_config_date_time"

    goto/16 :goto_200

    .line 847
    :pswitch_17d
    invoke-virtual {v4, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_184

    return v2

    .line 851
    :cond_184
    const-string/jumbo p1, "no_airplane_mode"

    goto/16 :goto_200

    :pswitch_189
    if-ne p4, v5, :cond_18c

    return v2

    .line 893
    :cond_18c
    const-string p1, "disallow_config_private_dns"

    goto/16 :goto_200

    :pswitch_190
    if-ne p4, v5, :cond_193

    return v2

    .line 885
    :cond_193
    const-string/jumbo p1, "no_config_screen_timeout"

    goto :goto_200

    .line 840
    :pswitch_197
    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19e

    return v2

    .line 844
    :cond_19e
    const-string/jumbo p1, "no_safe_boot"

    goto :goto_200

    .line 826
    :pswitch_1a2
    const-string/jumbo p1, "no_config_mobile_networks"

    goto :goto_200

    .line 832
    :pswitch_1a6
    invoke-static {p4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    if-eq p1, v5, :cond_1b3

    if-nez p1, :cond_1af

    goto :goto_1b3

    .line 837
    :cond_1af
    const-string/jumbo p1, "no_config_vpn"

    goto :goto_200

    :cond_1b3
    :goto_1b3
    return v2

    :pswitch_1b4
    if-ne p4, v5, :cond_1b7

    return v2

    .line 870
    :cond_1b7
    const-string/jumbo p1, "no_config_brightness"

    goto :goto_200

    .line 818
    :pswitch_1bb
    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c2

    return v2

    .line 822
    :cond_1c2
    const-string p1, "ensure_verify_apps"

    goto :goto_200

    .line 858
    :pswitch_1c5
    invoke-virtual {v4, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1cc

    return v2

    .line 862
    :cond_1cc
    const-string/jumbo p1, "no_ambient_display"

    goto :goto_200

    .line 789
    :pswitch_1d0
    const-string/jumbo p1, "no_config_location"

    .line 790
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 789
    invoke-virtual {p0, p1, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p1

    if-eqz p1, :cond_1e0

    if-eq p4, v5, :cond_1e0

    return v1

    .line 793
    :cond_1e0
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1eb

    return v2

    .line 797
    :cond_1eb
    const-string/jumbo p1, "no_share_location"

    goto :goto_200

    .line 808
    :pswitch_1ef
    invoke-virtual {v4, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f6

    return v2

    .line 812
    :cond_1f6
    const-string/jumbo p1, "no_debugging_features"

    invoke-static {p1}, Lcom/android/server/pm/UserRestrictionsUtils;->deviceOwnerOrSystemUserHasRestriction(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_200

    return v1

    .line 908
    :cond_200
    :goto_200
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    return p0

    nop

    :sswitch_data_20a
    .sparse-switch
        -0x7d29d849 -> :sswitch_141
        -0x6b192413 -> :sswitch_136
        -0x58d2ff08 -> :sswitch_12b
        -0x4280630b -> :sswitch_11f
        -0x39d6645f -> :sswitch_114
        -0x294f7102 -> :sswitch_108
        -0x252f8dda -> :sswitch_fd
        -0x18d5c3ee -> :sswitch_f1
        -0x611a9fa -> :sswitch_e3
        -0x1efffcf -> :sswitch_d5
        0x3756c15 -> :sswitch_c6
        0xf689f3e -> :sswitch_b7
        0x28c0ce35 -> :sswitch_a8
        0x3733860e -> :sswitch_9a
        0x3ff919a6 -> :sswitch_8c
        0x48f0b46c -> :sswitch_7d
        0x4c070b4e -> :sswitch_6f
        0x4f84b830 -> :sswitch_61
        0x5f8b91a8 -> :sswitch_53
        0x62299f68 -> :sswitch_45
        0x6305635d -> :sswitch_37
        0x6565577f -> :sswitch_29
        0x67748604 -> :sswitch_1a
    .end sparse-switch

    :pswitch_data_268
    .packed-switch 0x0
        :pswitch_1ef
        :pswitch_1d0
        :pswitch_1c5
        :pswitch_1bb
        :pswitch_1ef
        :pswitch_1b4
        :pswitch_1a6
        :pswitch_1a2
        :pswitch_1c5
        :pswitch_1c5
        :pswitch_197
        :pswitch_190
        :pswitch_189
        :pswitch_17d
        :pswitch_1c5
        :pswitch_189
        :pswitch_175
        :pswitch_1a6
        :pswitch_1c5
        :pswitch_1a6
        :pswitch_175
        :pswitch_169
        :pswitch_1b4
    .end packed-switch
.end method

.method public static isSystemApp(I[Ljava/lang/String;)Z
    .registers 10

    .line 379
    invoke-static {p0}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    const/4 v0, 0x0

    if-nez p1, :cond_c

    return v0

    .line 385
    :cond_c
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    move v3, v0

    .line 386
    :goto_11
    array-length v4, p1

    if-ge v3, v4, :cond_2d

    .line 391
    :try_start_14
    aget-object v4, p1, v3

    .line 392
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    const-wide/32 v6, 0xc2000

    invoke-interface {v2, v4, v6, v7, v5}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    if-eqz v4, :cond_2a

    .line 393
    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v4
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_27} :catch_2a

    if-eqz v4, :cond_2a

    return v1

    :catch_2a
    :cond_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_2d
    return v0
.end method

.method public static isValidRestriction(Ljava/lang/String;)Z
    .registers 7

    .line 346
    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->USER_RESTRICTIONS:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_60

    .line 348
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 351
    :try_start_d
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    goto :goto_17

    :catch_16
    const/4 v2, 0x0

    .line 355
    :goto_17
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unknown restriction queried by uid "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 356
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    if-eqz v2, :cond_3e

    .line 357
    array-length v5, v2

    if-lez v5, :cond_3e

    .line 358
    const-string v5, " ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    aget-object v5, v2, v4

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    array-length v5, v2

    if-le v5, v1, :cond_39

    .line 361
    const-string v1, " et al"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    :cond_39
    const-string v1, ")"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    :cond_3e
    const-string v1, ": "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    const-string v1, "UserRestrictionsUtils"

    if-eqz p0, :cond_58

    invoke-static {v0, v2}, Lcom/android/server/pm/UserRestrictionsUtils;->isSystemApp(I[Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_58

    .line 368
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5f

    .line 370
    :cond_58
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5f
    return v4

    :cond_60
    return v1
.end method

.method public static merge(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 7

    .line 470
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, p1, :cond_9

    move v2, v1

    goto :goto_a

    :cond_9
    move v2, v0

    .line 471
    :goto_a
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    if-nez p1, :cond_10

    goto :goto_2e

    .line 475
    :cond_10
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_18
    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 476
    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 477
    invoke-virtual {p0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_18

    :cond_2e
    :goto_2e
    return-void
.end method

.method public static newSetWithUniqueCheck([Ljava/lang/String;)Ljava/util/Set;
    .registers 3

    .line 75
    invoke-static {p0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    .line 78
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    array-length p0, p0

    if-ne v1, p0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    return-object v0
.end method

.method public static nonNull(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 1

    if-eqz p0, :cond_3

    return-object p0

    .line 458
    :cond_3
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    return-object p0
.end method

.method public static readRestrictions(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/Bundle;
    .registers 2

    .line 449
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 450
    invoke-static {p0, v0}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Lcom/android/modules/utils/TypedXmlPullParser;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static readRestrictions(Lcom/android/modules/utils/TypedXmlPullParser;Landroid/os/Bundle;)V
    .registers 6

    .line 435
    invoke-virtual {p1}, Landroid/os/Bundle;->clear()V

    .line 436
    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->USER_RESTRICTIONS:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 437
    invoke-interface {p0, v2, v1, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v2, 0x1

    .line 439
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_9

    :cond_22
    return-void
.end method

.method public static varargs restrictionsChanged(Landroid/os/Bundle;Landroid/os/Bundle;[Ljava/lang/String;)Z
    .registers 8

    .line 950
    array-length v0, p2

    if-nez v0, :cond_8

    .line 951
    invoke-static {p0, p1}, Lcom/android/server/pm/UserRestrictionsUtils;->areEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result p0

    return p0

    .line 953
    :cond_8
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_b
    if-ge v2, v0, :cond_1e

    aget-object v3, p2, v2

    .line 954
    invoke-virtual {p0, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 955
    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eq v4, v3, :cond_1b

    const/4 p0, 0x1

    return p0

    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_1e
    return v1
.end method

.method public static setInstallMarketAppsRestriction(Landroid/content/ContentResolver;II)V
    .registers 4

    .line 964
    const-string v0, "install_non_market_apps"

    invoke-static {p0, v0, p2, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public static writeRestrictions(Lcom/android/modules/utils/TypedXmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 8

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    .line 414
    invoke-interface {p0, v0, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 415
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 416
    sget-object v3, Lcom/android/server/pm/UserRestrictionsUtils;->NON_PERSIST_USER_RESTRICTIONS:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    goto :goto_f

    .line 419
    :cond_24
    sget-object v3, Lcom/android/server/pm/UserRestrictionsUtils;->USER_RESTRICTIONS:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 420
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    const/4 v3, 0x1

    .line 421
    invoke-interface {p0, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_f

    .line 425
    :cond_37
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown user restriction detected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UserRestrictionsUtils"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 427
    :cond_4e
    invoke-interface {p0, v0, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method
