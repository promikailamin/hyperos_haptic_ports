.class public Lcom/miui/enterprise/sdk/RestrictionsManager;
.super Ljava/lang/Object;
.source "RestrictionsManager.java"


# static fields
.field public static final whitelist AIRPLANE_STATE:Ljava/lang/String; = "airplane_state"

.field public static final whitelist BLUETOOTH_STATE:Ljava/lang/String; = "bluetooth_state"

.field public static final whitelist CLOSE:I = 0x3

.field public static final whitelist DISABLE:I = 0x0

.field public static final whitelist DISABLE_ACCELEROMETER:Ljava/lang/String; = "disable_accelerometer"

.field public static final whitelist DISALLOW_AUTO_SYNC:Ljava/lang/String; = "disallow_auto_sync"

.field public static final whitelist DISALLOW_BACKUP:Ljava/lang/String; = "disallow_backup"

.field public static final whitelist DISALLOW_CAMERA:Ljava/lang/String; = "disallow_camera"

.field public static final whitelist DISALLOW_CHANGE_LANGUAGE:Ljava/lang/String; = "disallow_change_language"

.field public static final whitelist DISALLOW_FACTORYRESET:Ljava/lang/String; = "disallow_factoryreset"

.field public static final whitelist DISALLOW_FINGERPRINT:Ljava/lang/String; = "disallow_fingerprint"

.field public static final whitelist DISALLOW_IMEIREAD:Ljava/lang/String; = "disallow_imeiread"

.field public static final whitelist DISALLOW_KEY_BACK:Ljava/lang/String; = "disallow_key_back"

.field public static final whitelist DISALLOW_KEY_HOME:Ljava/lang/String; = "disallow_key_home"

.field public static final whitelist DISALLOW_KEY_MENU:Ljava/lang/String; = "disallow_key_menu"

.field public static final whitelist DISALLOW_LANDSCAPE_STATUSBAR:Ljava/lang/String; = "disallow_landscape_statusbar"

.field public static final whitelist DISALLOW_MICROPHONE:Ljava/lang/String; = "disallow_microphone"

.field public static final whitelist DISALLOW_MI_ACCOUNT:Ljava/lang/String; = "disallow_mi_account"

.field public static final whitelist DISALLOW_MTP:Ljava/lang/String; = "disallow_mtp"

.field public static final whitelist DISALLOW_OTG:Ljava/lang/String; = "disallow_otg"

.field public static final whitelist DISALLOW_SAFE_MODE:Ljava/lang/String; = "disallow_safe_mode"

.field public static final whitelist DISALLOW_SCREENCAPTURE:Ljava/lang/String; = "disallow_screencapture"

.field public static final whitelist DISALLOW_SDCARD:Ljava/lang/String; = "disallow_sdcard"

.field public static final whitelist DISALLOW_STATUS_BAR:Ljava/lang/String; = "disallow_status_bar"

.field public static final whitelist DISALLOW_SYSTEM_UPDATE:Ljava/lang/String; = "disallow_system_update"

.field public static final whitelist DISALLOW_TETHER:Ljava/lang/String; = "disallow_tether"

.field public static final whitelist DISALLOW_TIMESET:Ljava/lang/String; = "disallow_timeset"

.field public static final whitelist DISALLOW_USBDEBUG:Ljava/lang/String; = "disallow_usbdebug"

.field public static final whitelist DISALLOW_USB_DEVICE:Ljava/lang/String; = "disable_usb_device"

.field public static final whitelist DISALLOW_VPN:Ljava/lang/String; = "disallow_vpn"

.field public static final whitelist ENABLE:I = 0x1

.field public static final whitelist FORCE_OPEN:I = 0x4

.field public static final whitelist GPS_STATE:Ljava/lang/String; = "gps_state"

.field public static final whitelist NFC_STATE:Ljava/lang/String; = "nfc_state"

.field public static final whitelist OPEN:I = 0x2

.field public static final whitelist WIFI_STATE:Ljava/lang/String; = "wifi_state"

.field private static volatile blacklist sInstance:Lcom/miui/enterprise/sdk/RestrictionsManager;


# instance fields
.field private blacklist TAG:Ljava/lang/String;

.field private blacklist mService:Lcom/miui/enterprise/IRestrictionsManager;


# direct methods
.method private constructor blacklist <init>()V
    .registers 2

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string v0, "RestrictionsManager"

    iput-object v0, p0, Lcom/miui/enterprise/sdk/RestrictionsManager;->TAG:Ljava/lang/String;

    .line 299
    const-string v0, "restrictions_manager"

    invoke-static {v0}, Lcom/miui/enterprise/EnterpriseManager;->getEnterpriseService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/enterprise/IRestrictionsManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/enterprise/IRestrictionsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/enterprise/sdk/RestrictionsManager;->mService:Lcom/miui/enterprise/IRestrictionsManager;

    .line 300
    return-void
.end method

.method public static declared-synchronized whitelist getInstance()Lcom/miui/enterprise/sdk/RestrictionsManager;
    .registers 2

    const-class v0, Lcom/miui/enterprise/sdk/RestrictionsManager;

    monitor-enter v0

    .line 303
    :try_start_3
    sget-object v1, Lcom/miui/enterprise/sdk/RestrictionsManager;->sInstance:Lcom/miui/enterprise/sdk/RestrictionsManager;

    if-nez v1, :cond_e

    .line 304
    new-instance v1, Lcom/miui/enterprise/sdk/RestrictionsManager;

    invoke-direct {v1}, Lcom/miui/enterprise/sdk/RestrictionsManager;-><init>()V

    sput-object v1, Lcom/miui/enterprise/sdk/RestrictionsManager;->sInstance:Lcom/miui/enterprise/sdk/RestrictionsManager;

    .line 306
    :cond_e
    sget-object v1, Lcom/miui/enterprise/sdk/RestrictionsManager;->sInstance:Lcom/miui/enterprise/sdk/RestrictionsManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 302
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public whitelist getControlStatus(Ljava/lang/String;)I
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 334
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/enterprise/sdk/RestrictionsManager;->getControlStatus(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public whitelist getControlStatus(Ljava/lang/String;I)I
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 339
    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/RestrictionsManager;->mService:Lcom/miui/enterprise/IRestrictionsManager;

    invoke-interface {v0, p1, p2}, Lcom/miui/enterprise/IRestrictionsManager;->getControlStatus(Ljava/lang/String;I)I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 340
    :catch_7
    move-exception v0

    .line 341
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/miui/enterprise/sdk/RestrictionsManager;->TAG:Ljava/lang/String;

    const-string v2, "Remote service dead"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    const/4 v1, 0x1

    return v1
.end method

.method public whitelist hasRestriction(Ljava/lang/String;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 347
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/enterprise/sdk/RestrictionsManager;->hasRestriction(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public whitelist hasRestriction(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 352
    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/RestrictionsManager;->mService:Lcom/miui/enterprise/IRestrictionsManager;

    invoke-interface {v0, p1, p2}, Lcom/miui/enterprise/IRestrictionsManager;->hasRestriction(Ljava/lang/String;I)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 353
    :catch_7
    move-exception v0

    .line 354
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/miui/enterprise/sdk/RestrictionsManager;->TAG:Ljava/lang/String;

    const-string v2, "Remote service dead"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist setControlStatus(Ljava/lang/String;I)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 310
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/enterprise/sdk/RestrictionsManager;->setControlStatus(Ljava/lang/String;II)V

    .line 311
    return-void
.end method

.method public whitelist setControlStatus(Ljava/lang/String;II)V
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I
    .param p3, "userId"    # I

    .line 315
    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/RestrictionsManager;->mService:Lcom/miui/enterprise/IRestrictionsManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/miui/enterprise/IRestrictionsManager;->setControlStatus(Ljava/lang/String;II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 318
    goto :goto_e

    .line 316
    :catch_6
    move-exception v0

    .line 317
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/miui/enterprise/sdk/RestrictionsManager;->TAG:Ljava/lang/String;

    const-string v2, "Remote service dead"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public whitelist setRestriction(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 322
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/enterprise/sdk/RestrictionsManager;->setRestriction(Ljava/lang/String;ZI)V

    .line 323
    return-void
.end method

.method public whitelist setRestriction(Ljava/lang/String;ZI)V
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .param p3, "userId"    # I

    .line 327
    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/RestrictionsManager;->mService:Lcom/miui/enterprise/IRestrictionsManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/miui/enterprise/IRestrictionsManager;->setRestriction(Ljava/lang/String;ZI)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 330
    goto :goto_e

    .line 328
    :catch_6
    move-exception v0

    .line 329
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/miui/enterprise/sdk/RestrictionsManager;->TAG:Ljava/lang/String;

    const-string v2, "Remote service dead"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method
