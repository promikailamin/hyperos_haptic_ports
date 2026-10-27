.class public final Landroid/telephony/CarrierConfigManager$Gps;
.super Ljava/lang/Object;
.source "CarrierConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/CarrierConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Gps"
.end annotation


# static fields
.field public static final blacklist KEY_A_GLONASS_POS_PROTOCOL_SELECT_STRING:Ljava/lang/String; = "gps.a_glonass_pos_protocol_select"

.field public static final blacklist KEY_ES_EXTENSION_SEC_STRING:Ljava/lang/String; = "gps.es_extension_sec"

.field public static final blacklist KEY_ES_SUPL_CONTROL_PLANE_SUPPORT_INT:Ljava/lang/String; = "gps.es_supl_control_plane_support_int"

.field public static final blacklist KEY_ES_SUPL_DATA_PLANE_ONLY_ROAMING_PLMN_STRING_ARRAY:Ljava/lang/String; = "gps.es_supl_data_plane_only_roaming_plmn_string_array"

.field public static final blacklist KEY_GPS_LOCK_STRING:Ljava/lang/String; = "gps.gps_lock"

.field public static final blacklist KEY_LPP_PROFILE_STRING:Ljava/lang/String; = "gps.lpp_profile"

.field public static final blacklist KEY_NFW_PROXY_APPS_STRING:Ljava/lang/String; = "gps.nfw_proxy_apps"

.field public static final whitelist KEY_PERSIST_LPP_MODE_BOOL:Ljava/lang/String; = "gps.persist_lpp_mode_bool"

.field public static final whitelist KEY_PREFIX:Ljava/lang/String; = "gps."

.field public static final blacklist KEY_SUPL_ES_STRING:Ljava/lang/String; = "gps.supl_es"

.field public static final blacklist KEY_SUPL_HOST_STRING:Ljava/lang/String; = "gps.supl_host"

.field public static final blacklist KEY_SUPL_MODE_STRING:Ljava/lang/String; = "gps.supl_mode"

.field public static final blacklist KEY_SUPL_PORT_STRING:Ljava/lang/String; = "gps.supl_port"

.field public static final blacklist KEY_SUPL_VER_STRING:Ljava/lang/String; = "gps.supl_ver"

.field public static final blacklist KEY_USE_EMERGENCY_PDN_FOR_EMERGENCY_SUPL_STRING:Ljava/lang/String; = "gps.use_emergency_pdn_for_emergency_supl"

.field public static final blacklist SUPL_EMERGENCY_MODE_TYPE_CP_FALLBACK:I = 0x1

.field public static final blacklist SUPL_EMERGENCY_MODE_TYPE_CP_ONLY:I = 0x0

.field public static final blacklist SUPL_EMERGENCY_MODE_TYPE_DP_ONLY:I = 0x2


# direct methods
.method static bridge synthetic blacklist -$$Nest$smgetDefaults()Landroid/os/PersistableBundle;
    .registers 1

    invoke-static {}, Landroid/telephony/CarrierConfigManager$Gps;->getDefaults()Landroid/os/PersistableBundle;

    move-result-object v0

    return-object v0
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 4606
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist getDefaults()Landroid/os/PersistableBundle;
    .registers 3

    .line 4768
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 4769
    .local v0, "defaults":Landroid/os/PersistableBundle;
    const-string/jumbo v1, "gps.persist_lpp_mode_bool"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4770
    const-string/jumbo v1, "gps.supl_host"

    const-string/jumbo v2, "supl.google.com"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4771
    const-string/jumbo v1, "gps.supl_port"

    const-string v2, "7275"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4772
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->-$$Nest$sfgetDEVICE_TYPE_SUPPORT_SUPL_2_0_0()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string/jumbo v2, "gps.supl_ver"

    if-eqz v1, :cond_32

    .line 4773
    const-string v1, "0x20000"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_37

    .line 4775
    :cond_32
    const-string v1, "0x20004"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4777
    :goto_37
    const-string/jumbo v1, "gps.supl_mode"

    const-string v2, "3"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4778
    const-string/jumbo v1, "gps.supl_es"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4779
    const-string/jumbo v1, "gps.lpp_profile"

    const-string v2, "15"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4780
    const-string/jumbo v1, "gps.use_emergency_pdn_for_emergency_supl"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4781
    const-string/jumbo v1, "gps.a_glonass_pos_protocol_select"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4782
    const-string/jumbo v1, "gps.gps_lock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4783
    const-string/jumbo v1, "gps.es_extension_sec"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4784
    const-string/jumbo v1, "gps.nfw_proxy_apps"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4785
    const/4 v1, 0x0

    const-string/jumbo v2, "gps.es_supl_control_plane_support_int"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 4787
    const/4 v1, 0x0

    const-string/jumbo v2, "gps.es_supl_data_plane_only_roaming_plmn_string_array"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 4788
    return-object v0
.end method
