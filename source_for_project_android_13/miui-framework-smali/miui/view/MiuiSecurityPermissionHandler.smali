.class public Lmiui/view/MiuiSecurityPermissionHandler;
.super Ljava/lang/Object;
.source "MiuiSecurityPermissionHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = true

.field private static final blacklist FAKE_MAC_ADDRESS:Ljava/lang/String; = "02:00:00:00:00:00"

.field private static final blacklist LISTEN_MODE_ACCOUNT:I = 0x1

.field private static final blacklist LISTEN_MODE_WIFI:I = 0x2

.field private static final blacklist NETWORK_ERROR:I = -0x2

.field private static final blacklist PERMISSION_ACCOUNT_WHITELIST:I = 0x1

.field private static final blacklist PERMISSION_ERROR:I = -0x1

.field private static final blacklist PERMISSION_IMEIACCOUNT_WHITELIST:I = 0x3

.field private static final blacklist PERMISSION_IMEI_WHITELIST:I = 0x2

.field private static final blacklist POST_VERIFICATION_REQUEST:I = 0x0

.field private static final blacklist POST_VERIFICATION_WATER_MARKER:I = 0x1

.field private static blacklist TAG:Ljava/lang/String; = null

.field private static final blacklist WATERMARKER_ACCOUNT_WHITELIST:I = 0x1

.field private static final blacklist WATERMARKER_IMEI_ACCOUNT_WHITELIST:I = 0x3

.field private static final blacklist WATERMARKER_IMEI_WHITELIST:I = 0x2

.field private static final blacklist WATERMARKER_SHOW:I

.field public static blacklist WIFI_MAC_ADDRESS:Ljava/lang/String;

.field private static blacklist sDefaultUrl:Ljava/lang/String;

.field private static blacklist sGlobalUrl:Ljava/lang/String;


# instance fields
.field private blacklist mBootComplete:Z

.field private blacklist mContentObserver:Landroid/database/ContentObserver;

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mHandler:Landroid/os/Handler;

.field private blacklist mHandlerThread:Landroid/os/HandlerThread;

.field private blacklist mMiuiSecurityImeiFlag:I

.field private blacklist mNeedAddAccount:Z

.field private blacklist mNeedListenAccount:Z

.field private blacklist mOpenWifiOnce:Z

.field private blacklist mPermissionListenAccount:Z

.field private blacklist mPermissionView:Landroid/view/View;

.field private blacklist mPermissionViewCallback:Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;

.field private final blacklist mReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mRetPermission:I

.field private blacklist mRetWater:I

.field private blacklist responseResult:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmBootComplete(Lmiui/view/MiuiSecurityPermissionHandler;)Z
    .registers 1

    iget-boolean p0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mBootComplete:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContentObserver(Lmiui/view/MiuiSecurityPermissionHandler;)Landroid/database/ContentObserver;
    .registers 1

    iget-object p0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mContentObserver:Landroid/database/ContentObserver;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContext(Lmiui/view/MiuiSecurityPermissionHandler;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Lmiui/view/MiuiSecurityPermissionHandler;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNeedAddAccount(Lmiui/view/MiuiSecurityPermissionHandler;)Z
    .registers 1

    iget-boolean p0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mNeedAddAccount:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPermissionListenAccount(Lmiui/view/MiuiSecurityPermissionHandler;)Z
    .registers 1

    iget-boolean p0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mPermissionListenAccount:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPermissionView(Lmiui/view/MiuiSecurityPermissionHandler;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mPermissionView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPermissionViewCallback(Lmiui/view/MiuiSecurityPermissionHandler;)Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;
    .registers 1

    iget-object p0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mPermissionViewCallback:Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRetPermission(Lmiui/view/MiuiSecurityPermissionHandler;)I
    .registers 1

    iget p0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mRetPermission:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRetWater(Lmiui/view/MiuiSecurityPermissionHandler;)I
    .registers 1

    iget p0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mRetWater:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBootComplete(Lmiui/view/MiuiSecurityPermissionHandler;Z)V
    .registers 2

    iput-boolean p1, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mBootComplete:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmContentObserver(Lmiui/view/MiuiSecurityPermissionHandler;Landroid/database/ContentObserver;)V
    .registers 2

    iput-object p1, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmNeedAddAccount(Lmiui/view/MiuiSecurityPermissionHandler;Z)V
    .registers 2

    iput-boolean p1, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mNeedAddAccount:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPermissionListenAccount(Lmiui/view/MiuiSecurityPermissionHandler;Z)V
    .registers 2

    iput-boolean p1, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mPermissionListenAccount:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPermissionView(Lmiui/view/MiuiSecurityPermissionHandler;Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mPermissionView:Landroid/view/View;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRetWater(Lmiui/view/MiuiSecurityPermissionHandler;I)V
    .registers 2

    iput p1, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mRetWater:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$menableWifiAndData(Lmiui/view/MiuiSecurityPermissionHandler;)V
    .registers 1

    invoke-direct {p0}, Lmiui/view/MiuiSecurityPermissionHandler;->enableWifiAndData()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mloadAccountId(Lmiui/view/MiuiSecurityPermissionHandler;)Landroid/accounts/Account;
    .registers 1

    invoke-direct {p0}, Lmiui/view/MiuiSecurityPermissionHandler;->loadAccountId()Landroid/accounts/Account;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$monOpenWifiSettingsButtonClicked(Lmiui/view/MiuiSecurityPermissionHandler;)V
    .registers 1

    invoke-direct {p0}, Lmiui/view/MiuiSecurityPermissionHandler;->onOpenWifiSettingsButtonClicked()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mpostVerificationRequest(Lmiui/view/MiuiSecurityPermissionHandler;Landroid/view/View;Landroid/widget/Button;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lmiui/view/MiuiSecurityPermissionHandler;->postVerificationRequest(Landroid/view/View;Landroid/widget/Button;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mpostVerificationWaterMarker(Lmiui/view/MiuiSecurityPermissionHandler;Ljava/lang/String;)I
    .registers 2

    invoke-direct {p0, p1}, Lmiui/view/MiuiSecurityPermissionHandler;->postVerificationWaterMarker(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateWaterMarkerAccount(Lmiui/view/MiuiSecurityPermissionHandler;)V
    .registers 1

    invoke-direct {p0}, Lmiui/view/MiuiSecurityPermissionHandler;->updateWaterMarkerAccount()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lmiui/view/MiuiSecurityPermissionHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 86
    const-string v0, "https://update.intl.miui.com/updates/mi-vip.php"

    sput-object v0, Lmiui/view/MiuiSecurityPermissionHandler;->sGlobalUrl:Ljava/lang/String;

    .line 87
    const-string v0, "https://update.miui.com/updates/mi-vip.php"

    sput-object v0, Lmiui/view/MiuiSecurityPermissionHandler;->sDefaultUrl:Ljava/lang/String;

    .line 94
    const-string v0, "MiuiPermission"

    sput-object v0, Lmiui/view/MiuiSecurityPermissionHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mOpenWifiOnce:Z

    .line 60
    iput-boolean v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mPermissionListenAccount:Z

    .line 62
    iput v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mMiuiSecurityImeiFlag:I

    .line 78
    const/4 v1, -0x2

    iput v1, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mRetWater:I

    .line 79
    iput v1, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mRetPermission:I

    .line 80
    iput-boolean v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mNeedAddAccount:Z

    .line 81
    iput-boolean v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mNeedListenAccount:Z

    .line 82
    iput-boolean v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mBootComplete:Z

    .line 83
    iput v1, p0, Lmiui/view/MiuiSecurityPermissionHandler;->responseResult:I

    .line 117
    new-instance v0, Lmiui/view/MiuiSecurityPermissionHandler$1;

    invoke-direct {v0, p0}, Lmiui/view/MiuiSecurityPermissionHandler$1;-><init>(Lmiui/view/MiuiSecurityPermissionHandler;)V

    iput-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 97
    iput-object p1, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mContext:Landroid/content/Context;

    .line 98
    sget-boolean v0, Lmiui/os/Build;->IS_PRIVATE_BUILD:Z

    if-nez v0, :cond_28

    sget-boolean v0, Lmiui/os/Build;->IS_PRIVATE_WATER_MARKER:Z

    if-eqz v0, :cond_4a

    .line 99
    :cond_28
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "network"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mHandlerThread:Landroid/os/HandlerThread;

    .line 100
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 101
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mHandler:Landroid/os/Handler;

    .line 102
    invoke-virtual {p0, p2}, Lmiui/view/MiuiSecurityPermissionHandler;->registerPermissionViewCallback(Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;)V

    .line 103
    invoke-direct {p0, p1}, Lmiui/view/MiuiSecurityPermissionHandler;->registerNetWReceiver(Landroid/content/Context;)V

    .line 104
    invoke-virtual {p0}, Lmiui/view/MiuiSecurityPermissionHandler;->mayBringUpPermissionView()V

    .line 106
    :cond_4a
    return-void
.end method

.method private blacklist appendImei(Ljava/io/OutputStreamWriter;)V
    .registers 8
    .param p1, "writer"    # Ljava/io/OutputStreamWriter;

    .line 573
    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 574
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    const/4 v1, 0x0

    .line 575
    .local v1, "imei2":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    .line 576
    .local v2, "count":I
    if-nez v2, :cond_18

    invoke-static {}, Lmiui/view/MiuiSecurityPermissionHandler;->noImei()Z

    move-result v3

    if-nez v3, :cond_18

    .line 577
    return-void

    .line 580
    :cond_18
    invoke-static {}, Lmiui/view/MiuiSecurityPermissionHandler;->noImei()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 581
    iget-object v3, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lmiui/view/MiuiSecurityPermissionHandler;->getWifiMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmiui/view/MiuiSecurityPermissionHandler;->hashSHA1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "imei1":Ljava/lang/String;
    goto :goto_3d

    .line 583
    .end local v3    # "imei1":Ljava/lang/String;
    :cond_29
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmiui/view/MiuiSecurityPermissionHandler;->hashSHA1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 584
    .restart local v3    # "imei1":Ljava/lang/String;
    const/4 v4, 0x1

    if-le v2, v4, :cond_3d

    .line 585
    invoke-virtual {v0, v4}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lmiui/view/MiuiSecurityPermissionHandler;->hashSHA1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 590
    :cond_3d
    :goto_3d
    if-eqz v3, :cond_58

    .line 591
    :try_start_3f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "&imei1="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/OutputStreamWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    goto :goto_58

    .line 596
    :catch_56
    move-exception v4

    goto :goto_71

    .line 593
    :cond_58
    :goto_58
    if-eqz v1, :cond_75

    .line 594
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "&imei2="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/OutputStreamWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_70} :catch_56

    goto :goto_75

    .line 597
    .local v4, "e":Ljava/io/IOException;
    :goto_71
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_76

    .line 598
    .end local v4    # "e":Ljava/io/IOException;
    :cond_75
    :goto_75
    nop

    .line 599
    :goto_76
    return-void
.end method

.method private blacklist decryptData(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "data"    # Ljava/lang/String;

    .line 380
    const-string v0, "ODQ4NWFmYjdhNGE="

    .line 382
    .local v0, "key":Ljava/lang/String;
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {p0, v0}, Lmiui/view/MiuiSecurityPermissionHandler;->generateRawKey(Ljava/lang/String;)[B

    move-result-object v2

    const-string v3, "AES"

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 384
    .local v1, "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    :try_start_d
    const-string v2, "AES/CBC/PKCS5Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 385
    .local v2, "cipher":Ljavax/crypto/Cipher;
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    const-string v4, "0102030405060708"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 386
    .local v3, "iv":Ljavax/crypto/spec/IvParameterSpec;
    const/4 v4, 0x2

    invoke-virtual {v2, v4, v1, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 387
    const/4 v4, 0x0

    invoke-static {p1, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v4

    .line 388
    .local v4, "raw":[B
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([B)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_30} :catch_31

    return-object v5

    .line 389
    .end local v2    # "cipher":Ljavax/crypto/Cipher;
    .end local v3    # "iv":Ljavax/crypto/spec/IvParameterSpec;
    .end local v4    # "raw":[B
    :catch_31
    move-exception v2

    .line 390
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 392
    .end local v2    # "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    return-object v2
.end method

.method private blacklist doPermissionView()V
    .registers 8

    .line 222
    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_12

    move v0, v3

    goto :goto_13

    :cond_12
    move v0, v2

    .line 224
    .local v0, "provisioned":Z
    :goto_13
    iget-object v4, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "miui_account_login_check"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_22

    goto :goto_23

    :cond_22
    move v3, v2

    .line 226
    .local v3, "isLogin":Z
    :goto_23
    if-nez v0, :cond_48

    .line 227
    new-instance v4, Landroid/os/Handler;

    iget-object v5, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 228
    .local v4, "handler":Landroid/os/Handler;
    new-instance v5, Lmiui/view/MiuiSecurityPermissionHandler$3;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6, v4, v3}, Lmiui/view/MiuiSecurityPermissionHandler$3;-><init>(Lmiui/view/MiuiSecurityPermissionHandler;Landroid/os/Handler;Landroid/os/Handler;Z)V

    iput-object v5, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mContentObserver:Landroid/database/ContentObserver;

    .line 248
    iget-object v5, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 249
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v6, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mContentObserver:Landroid/database/ContentObserver;

    .line 248
    invoke-virtual {v5, v1, v2, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 251
    .end local v4    # "handler":Landroid/os/Handler;
    goto :goto_4e

    .line 252
    :cond_48
    if-eqz v3, :cond_4b

    return-void

    .line 253
    :cond_4b
    invoke-virtual {p0}, Lmiui/view/MiuiSecurityPermissionHandler;->createPermissionView()V

    .line 255
    :goto_4e
    return-void
.end method

.method private blacklist doWaterMarker()V
    .registers 4

    .line 167
    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "miui_permission_check"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mMiuiSecurityImeiFlag:I

    .line 169
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_14

    .line 170
    return-void

    .line 172
    :cond_14
    invoke-direct {p0}, Lmiui/view/MiuiSecurityPermissionHandler;->loadAccountId()Landroid/accounts/Account;

    move-result-object v0

    .line 173
    .local v0, "account":Landroid/accounts/Account;
    iget-object v1, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mHandler:Landroid/os/Handler;

    new-instance v2, Lmiui/view/MiuiSecurityPermissionHandler$2;

    invoke-direct {v2, p0, v0}, Lmiui/view/MiuiSecurityPermissionHandler$2;-><init>(Lmiui/view/MiuiSecurityPermissionHandler;Landroid/accounts/Account;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 219
    return-void
.end method

.method private blacklist enableWifiAndData()V
    .registers 4

    .line 436
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mOpenWifiOnce:Z

    .line 437
    invoke-static {}, Landroid/app/MobileDataUtils;->getInstance()Landroid/app/MobileDataUtils;

    move-result-object v1

    iget-object v2, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Landroid/app/MobileDataUtils;->enableMobileData(Landroid/content/Context;Z)V

    .line 438
    iget-object v1, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 439
    .local v1, "wm":Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-nez v2, :cond_1f

    .line 440
    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 442
    :cond_1f
    return-void
.end method

.method private blacklist generateRawKey(Ljava/lang/String;)[B
    .registers 6
    .param p1, "key"    # Ljava/lang/String;

    .line 367
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0

    .line 368
    .local v0, "rawKey":[B
    array-length v1, v0

    rem-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_f

    .line 369
    return-object v0

    .line 372
    :cond_f
    array-length v1, v0

    add-int/lit8 v1, v1, 0x8

    array-length v2, v0

    rem-int/lit8 v2, v2, 0x8

    sub-int/2addr v1, v2

    new-array v1, v1, [B

    .line 373
    .local v1, "ret":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_19
    array-length v3, v0

    if-ge v2, v3, :cond_23

    .line 374
    aget-byte v3, v0, v2

    aput-byte v3, v1, v2

    .line 373
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 376
    .end local v2    # "i":I
    :cond_23
    return-object v1
.end method

.method public static blacklist getWifiMacAddress(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 736
    const-class v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 737
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    const-string v1, "02:00:00:00:00:00"

    .line 738
    .local v1, "macAddress":Ljava/lang/String;
    if-eqz v0, :cond_18

    .line 739
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getFactoryMacAddresses()[Ljava/lang/String;

    move-result-object v2

    .line 740
    .local v2, "macAddresses":[Ljava/lang/String;
    if-eqz v2, :cond_18

    array-length v3, v2

    if-lez v3, :cond_18

    .line 741
    const/4 v3, 0x0

    aget-object v1, v2, v3

    .line 744
    .end local v2    # "macAddresses":[Ljava/lang/String;
    :cond_18
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static blacklist hashSHA1(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "original"    # Ljava/lang/String;

    .line 613
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 614
    return-object v1

    .line 617
    :cond_8
    :try_start_8
    const-string v0, "SHA1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 618
    .local v0, "digest":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 619
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    const/16 v3, 0x8

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x10

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1
    :try_end_26
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_8 .. :try_end_26} :catch_27

    return-object v1

    .line 620
    .end local v0    # "digest":Ljava/security/MessageDigest;
    :catch_27
    move-exception v0

    .line 621
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 622
    return-object v1
.end method

.method private blacklist loadAccountId()Landroid/accounts/Account;
    .registers 3

    .line 359
    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.xiaomi"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 360
    .local v0, "accounts":[Landroid/accounts/Account;
    if-eqz v0, :cond_15

    array-length v1, v0

    if-lez v1, :cond_15

    .line 361
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1

    .line 363
    :cond_15
    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist noImei()Z
    .registers 2

    .line 602
    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "elish"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_53

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 603
    const-string v1, "nabu"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_53

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 604
    const-string v1, "dagu"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_53

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 605
    const-string v1, "yunluo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_53

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 606
    const-string v1, "liuqin"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_53

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 607
    const-string v1, "pipa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_53

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 608
    const-string v1, "xun"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_53

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 609
    const-string v1, "yudi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    goto :goto_53

    :cond_51
    const/4 v0, 0x0

    goto :goto_54

    :cond_53
    :goto_53
    const/4 v0, 0x1

    .line 602
    :goto_54
    return v0
.end method

.method private blacklist onOpenWifiSettingsButtonClicked()V
    .registers 6

    .line 346
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 347
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.settings"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 348
    const-string v1, "is_from_settings_homepage"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 349
    const-string v1, "extra_show_on_finddevice_keyguard"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 350
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 352
    :try_start_1d
    iget-object v1, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_22
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1d .. :try_end_22} :catch_23

    .line 355
    goto :goto_3c

    .line 353
    :catch_23
    move-exception v1

    .line 354
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    sget-object v2, Lmiui/view/MiuiSecurityPermissionHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ActivityNotFoundException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :goto_3c
    return-void
.end method

.method private blacklist postVerificationRequest(Landroid/view/View;Landroid/widget/Button;Ljava/lang/String;)V
    .registers 6
    .param p1, "parentView"    # Landroid/view/View;
    .param p2, "btn"    # Landroid/widget/Button;
    .param p3, "actName"    # Ljava/lang/String;

    .line 446
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, p3, v0}, Lmiui/view/MiuiSecurityPermissionHandler;->postVerificationResult(Ljava/lang/String;I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_f
    .catchall {:try_start_1 .. :try_end_4} :catchall_d

    .line 462
    new-instance v0, Lmiui/view/MiuiSecurityPermissionHandler$7;

    invoke-direct {v0, p0, p2, p1}, Lmiui/view/MiuiSecurityPermissionHandler$7;-><init>(Lmiui/view/MiuiSecurityPermissionHandler;Landroid/widget/Button;Landroid/view/View;)V

    :goto_9
    invoke-virtual {p2, v0}, Landroid/widget/Button;->post(Ljava/lang/Runnable;)Z

    .line 489
    goto :goto_25

    .line 462
    :catchall_d
    move-exception v0

    goto :goto_26

    .line 447
    :catch_f
    move-exception v0

    .line 448
    .local v0, "e":Ljava/lang/Exception;
    :try_start_10
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 449
    iget-boolean v1, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mOpenWifiOnce:Z

    if-nez v1, :cond_1f

    .line 450
    new-instance v1, Lmiui/view/MiuiSecurityPermissionHandler$6;

    invoke-direct {v1, p0, p1}, Lmiui/view/MiuiSecurityPermissionHandler$6;-><init>(Lmiui/view/MiuiSecurityPermissionHandler;Landroid/view/View;)V

    invoke-virtual {p2, v1}, Landroid/widget/Button;->post(Ljava/lang/Runnable;)Z
    :try_end_1f
    .catchall {:try_start_10 .. :try_end_1f} :catchall_d

    .line 462
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1f
    new-instance v0, Lmiui/view/MiuiSecurityPermissionHandler$7;

    invoke-direct {v0, p0, p2, p1}, Lmiui/view/MiuiSecurityPermissionHandler$7;-><init>(Lmiui/view/MiuiSecurityPermissionHandler;Landroid/widget/Button;Landroid/view/View;)V

    goto :goto_9

    .line 491
    :goto_25
    return-void

    .line 462
    :goto_26
    new-instance v1, Lmiui/view/MiuiSecurityPermissionHandler$7;

    invoke-direct {v1, p0, p2, p1}, Lmiui/view/MiuiSecurityPermissionHandler$7;-><init>(Lmiui/view/MiuiSecurityPermissionHandler;Landroid/widget/Button;Landroid/view/View;)V

    invoke-virtual {p2, v1}, Landroid/widget/Button;->post(Ljava/lang/Runnable;)Z

    .line 489
    throw v0
.end method

.method private blacklist postVerificationResult(Ljava/lang/String;I)V
    .registers 20
    .param p1, "actName"    # Ljava/lang/String;
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 503
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    const-string v0, "&miuiVersion="

    const-string v4, "&sid=1&device="

    const-string v5, "uid="

    const/4 v6, 0x0

    .line 504
    .local v6, "writer":Ljava/io/OutputStreamWriter;
    const/4 v7, 0x0

    .line 505
    .local v7, "reader":Ljava/io/InputStreamReader;
    const/4 v8, 0x0

    .line 506
    .local v8, "conn":Ljava/net/HttpURLConnection;
    const-string v9, "ro.product.mod_device"

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 507
    .local v9, "modDevice":Ljava/lang/String;
    const-string v10, "ro.miui.ui.version.name"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 508
    .local v10, "miuiVersion":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_25

    sget-object v11, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    goto :goto_26

    :cond_25
    move-object v11, v9

    :goto_26
    move-object v9, v11

    .line 511
    const/16 v11, 0x1388

    .line 512
    .local v11, "timeout":I
    :try_start_29
    sget-boolean v12, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v12, :cond_35

    new-instance v12, Ljava/net/URL;

    sget-object v13, Lmiui/view/MiuiSecurityPermissionHandler;->sGlobalUrl:Ljava/lang/String;

    invoke-direct {v12, v13}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    goto :goto_3c

    :cond_35
    new-instance v12, Ljava/net/URL;

    sget-object v13, Lmiui/view/MiuiSecurityPermissionHandler;->sDefaultUrl:Ljava/lang/String;

    invoke-direct {v12, v13}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 513
    .local v12, "url":Ljava/net/URL;
    :goto_3c
    invoke-virtual {v12}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v13

    check-cast v13, Ljava/net/HttpURLConnection;

    move-object v8, v13

    .line 514
    const/16 v13, 0x1388

    invoke-virtual {v8, v13}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 515
    invoke-virtual {v8, v13}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 516
    const/4 v13, 0x0

    invoke-virtual {v8, v13}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 517
    const/4 v14, 0x1

    invoke-virtual {v8, v14}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 518
    const-string v15, "POST"

    invoke-virtual {v8, v15}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 520
    new-instance v15, Ljava/io/OutputStreamWriter;

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v13

    invoke-direct {v15, v13}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    move-object v6, v15

    .line 521
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 522
    sget-object v13, Lmiui/view/MiuiSecurityPermissionHandler;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    invoke-direct {v1, v6}, Lmiui/view/MiuiSecurityPermissionHandler;->appendImei(Ljava/io/OutputStreamWriter;)V

    .line 524
    invoke-virtual {v6}, Ljava/io/OutputStreamWriter;->flush()V

    .line 525
    invoke-virtual {v6}, Ljava/io/OutputStreamWriter;->close()V

    .line 526
    const/4 v6, 0x0

    .line 528
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v4, 0xc8

    if-ne v0, v4, :cond_12e

    .line 529
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object v7, v0

    .line 530
    const/16 v0, 0x1000

    .line 531
    .local v0, "maxLength":I
    const/16 v4, 0x1000

    new-array v4, v4, [C

    .line 532
    .local v4, "buffer":[C
    const/4 v5, 0x0

    .line 533
    .local v5, "idx":I
    :goto_cf
    rsub-int v13, v5, 0x1000

    invoke-virtual {v7, v4, v5, v13}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v13

    move v15, v13

    .local v15, "cnt":I
    const/4 v14, -0x1

    if-eq v13, v14, :cond_dc

    .line 534
    add-int/2addr v5, v15

    const/4 v14, 0x1

    goto :goto_cf

    .line 536
    :cond_dc
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V

    .line 537
    const/4 v7, 0x0

    .line 538
    const/4 v13, 0x1

    if-ne v3, v13, :cond_f4

    .line 539
    new-instance v13, Ljava/lang/String;

    const/4 v14, 0x0

    invoke-direct {v13, v4, v14, v5}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {v1, v13}, Lmiui/view/MiuiSecurityPermissionHandler;->decryptData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v1, v13}, Lmiui/view/MiuiSecurityPermissionHandler;->processWatermarResult(Ljava/lang/String;)I

    move-result v13

    iput v13, v1, Lmiui/view/MiuiSecurityPermissionHandler;->responseResult:I

    goto :goto_12e

    .line 540
    :cond_f4
    if-nez v3, :cond_12c

    .line 541
    new-instance v13, Ljava/lang/String;

    const/4 v14, 0x0

    invoke-direct {v13, v4, v14, v5}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {v1, v13}, Lmiui/view/MiuiSecurityPermissionHandler;->decryptData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v1, v13}, Lmiui/view/MiuiSecurityPermissionHandler;->processResult(Ljava/lang/String;)V

    .line 542
    sget-object v13, Lmiui/view/MiuiSecurityPermissionHandler;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v0

    .end local v0    # "maxLength":I
    .local v16, "maxLength":I
    const-string v0, "mRetPermission:"

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v14, v1, Lmiui/view/MiuiSecurityPermissionHandler;->mRetPermission:I

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v14, "mRetWater "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v14, v1, Lmiui/view/MiuiSecurityPermissionHandler;->mRetWater:I

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12b
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_12b} :catch_14f
    .catchall {:try_start_29 .. :try_end_12b} :catchall_14c

    goto :goto_12e

    .line 540
    .end local v16    # "maxLength":I
    .restart local v0    # "maxLength":I
    :cond_12c
    move/from16 v16, v0

    .line 550
    .end local v0    # "maxLength":I
    .end local v4    # "buffer":[C
    .end local v5    # "idx":I
    .end local v11    # "timeout":I
    .end local v12    # "url":Ljava/net/URL;
    .end local v15    # "cnt":I
    :cond_12e
    :goto_12e
    if-eqz v6, :cond_13a

    .line 552
    :try_start_130
    invoke-virtual {v6}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_133
    .catch Ljava/io/IOException; {:try_start_130 .. :try_end_133} :catch_134

    .line 555
    goto :goto_13a

    .line 553
    :catch_134
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    .line 554
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 558
    .end local v0    # "e":Ljava/io/IOException;
    :cond_13a
    :goto_13a
    if-eqz v7, :cond_146

    .line 560
    :try_start_13c
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V
    :try_end_13f
    .catch Ljava/io/IOException; {:try_start_13c .. :try_end_13f} :catch_140

    .line 563
    goto :goto_146

    .line 561
    :catch_140
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    .line 562
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 566
    .end local v0    # "e":Ljava/io/IOException;
    :cond_146
    :goto_146
    if-eqz v8, :cond_14b

    .line 567
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 570
    :cond_14b
    return-void

    .line 550
    :catchall_14c
    move-exception v0

    move-object v4, v0

    goto :goto_152

    .line 547
    :catch_14f
    move-exception v0

    .line 548
    .local v0, "e":Ljava/lang/Exception;
    nop

    .end local v6    # "writer":Ljava/io/OutputStreamWriter;
    .end local v7    # "reader":Ljava/io/InputStreamReader;
    .end local v8    # "conn":Ljava/net/HttpURLConnection;
    .end local v9    # "modDevice":Ljava/lang/String;
    .end local v10    # "miuiVersion":Ljava/lang/String;
    .end local p0    # "this":Lmiui/view/MiuiSecurityPermissionHandler;
    .end local p1    # "actName":Ljava/lang/String;
    .end local p2    # "type":I
    :try_start_151
    throw v0
    :try_end_152
    .catchall {:try_start_151 .. :try_end_152} :catchall_14c

    .line 550
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v6    # "writer":Ljava/io/OutputStreamWriter;
    .restart local v7    # "reader":Ljava/io/InputStreamReader;
    .restart local v8    # "conn":Ljava/net/HttpURLConnection;
    .restart local v9    # "modDevice":Ljava/lang/String;
    .restart local v10    # "miuiVersion":Ljava/lang/String;
    .restart local p0    # "this":Lmiui/view/MiuiSecurityPermissionHandler;
    .restart local p1    # "actName":Ljava/lang/String;
    .restart local p2    # "type":I
    :goto_152
    if-eqz v6, :cond_15e

    .line 552
    :try_start_154
    invoke-virtual {v6}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_157
    .catch Ljava/io/IOException; {:try_start_154 .. :try_end_157} :catch_158

    .line 555
    goto :goto_15e

    .line 553
    :catch_158
    move-exception v0

    move-object v5, v0

    move-object v0, v5

    .line 554
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 558
    .end local v0    # "e":Ljava/io/IOException;
    :cond_15e
    :goto_15e
    if-eqz v7, :cond_16a

    .line 560
    :try_start_160
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V
    :try_end_163
    .catch Ljava/io/IOException; {:try_start_160 .. :try_end_163} :catch_164

    .line 563
    goto :goto_16a

    .line 561
    :catch_164
    move-exception v0

    move-object v5, v0

    move-object v0, v5

    .line 562
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 566
    .end local v0    # "e":Ljava/io/IOException;
    :cond_16a
    :goto_16a
    if-eqz v8, :cond_16f

    .line 567
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 569
    :cond_16f
    throw v4
.end method

.method private blacklist postVerificationWaterMarker(Ljava/lang/String;)I
    .registers 3
    .param p1, "actName"    # Ljava/lang/String;

    .line 495
    const/4 v0, 0x1

    :try_start_1
    invoke-direct {p0, p1, v0}, Lmiui/view/MiuiSecurityPermissionHandler;->postVerificationResult(Ljava/lang/String;I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_5

    .line 498
    goto :goto_9

    .line 496
    :catch_5
    move-exception v0

    .line 497
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 499
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_9
    iget v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->responseResult:I

    return v0
.end method

.method private blacklist processMiuiSecurityImeiFlag(II)V
    .registers 6
    .param p1, "retPermission"    # I
    .param p2, "retWater"    # I

    .line 396
    iget v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mMiuiSecurityImeiFlag:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_24

    .line 397
    const/4 v2, 0x2

    if-eq p1, v2, :cond_a

    if-ne p1, v1, :cond_e

    .line 398
    :cond_a
    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mMiuiSecurityImeiFlag:I

    .line 399
    :cond_e
    if-eq p2, v2, :cond_12

    if-ne p2, v1, :cond_17

    .line 400
    :cond_12
    iget v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mMiuiSecurityImeiFlag:I

    or-int/2addr v0, v2

    iput v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mMiuiSecurityImeiFlag:I

    .line 401
    :cond_17
    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mMiuiSecurityImeiFlag:I

    const-string v2, "miui_permission_check"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 404
    :cond_24
    return-void
.end method

.method private blacklist processResult(Ljava/lang/String;)V
    .registers 5
    .param p1, "response"    # Ljava/lang/String;

    .line 408
    :try_start_0
    sget-object v0, Lmiui/view/MiuiSecurityPermissionHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "response:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 410
    .local v0, "obj":Lorg/json/JSONObject;
    const-string v1, "Auth"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 411
    .local v1, "Auth":I
    const-string v2, "Watermark"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 412
    .local v2, "watermark":I
    iput v1, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mRetPermission:I

    .line 413
    iput v2, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mRetWater:I

    .line 414
    invoke-direct {p0, v1, v2}, Lmiui/view/MiuiSecurityPermissionHandler;->processMiuiSecurityImeiFlag(II)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_30} :catch_31

    .line 415
    return-void

    .line 416
    .end local v0    # "obj":Lorg/json/JSONObject;
    .end local v1    # "Auth":I
    .end local v2    # "watermark":I
    :catch_31
    move-exception v0

    .line 417
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 419
    .end local v0    # "e":Ljava/lang/Exception;
    return-void
.end method

.method private blacklist processWatermarResult(Ljava/lang/String;)I
    .registers 5
    .param p1, "response"    # Ljava/lang/String;

    .line 423
    :try_start_0
    sget-object v0, Lmiui/view/MiuiSecurityPermissionHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "response:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 425
    .local v0, "obj":Lorg/json/JSONObject;
    const-string v1, "Auth"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 426
    .local v1, "Auth":I
    const-string v2, "Watermark"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 427
    .local v2, "watermark":I
    invoke-direct {p0, v1, v2}, Lmiui/view/MiuiSecurityPermissionHandler;->processMiuiSecurityImeiFlag(II)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2c} :catch_2d

    .line 428
    return v2

    .line 429
    .end local v0    # "obj":Lorg/json/JSONObject;
    .end local v1    # "Auth":I
    .end local v2    # "watermark":I
    :catch_2d
    move-exception v0

    .line 430
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 432
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, -0x2

    return v0
.end method

.method private blacklist registerNetWReceiver(Landroid/content/Context;)V
    .registers 4
    .param p1, "ctx"    # Landroid/content/Context;

    .line 109
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 110
    .local v0, "filter":Landroid/content/IntentFilter;
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 111
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    const-string v1, "miui.intent.action.FINISH_BOOTING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 113
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    iget-object v1, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 115
    return-void
.end method

.method private blacklist updateWaterMarkerAccount()V
    .registers 4

    .line 628
    invoke-direct {p0}, Lmiui/view/MiuiSecurityPermissionHandler;->loadAccountId()Landroid/accounts/Account;

    move-result-object v0

    .line 630
    .local v0, "account":Landroid/accounts/Account;
    iget-object v1, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mHandler:Landroid/os/Handler;

    new-instance v2, Lmiui/view/MiuiSecurityPermissionHandler$8;

    invoke-direct {v2, p0, v0}, Lmiui/view/MiuiSecurityPermissionHandler$8;-><init>(Lmiui/view/MiuiSecurityPermissionHandler;Landroid/accounts/Account;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 661
    return-void
.end method


# virtual methods
.method public blacklist createPermissionView()V
    .registers 10

    .line 270
    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "miui_permission_check"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mMiuiSecurityImeiFlag:I

    .line 272
    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_14

    .line 273
    return-void

    .line 275
    :cond_14
    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 277
    .local v0, "wm":Landroid/view/WindowManager;
    sget-object v2, Lmiui/view/MiuiSecurityPermissionHandler;->TAG:Ljava/lang/String;

    const-string v3, "createPermissionView!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v2, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mPermissionView:Landroid/view/View;

    if-nez v2, :cond_4f

    .line 280
    iget-object v2, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mContext:Landroid/content/Context;

    const v3, 0x110c0039

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mPermissionView:Landroid/view/View;

    .line 281
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/16 v6, 0x7e0

    const v7, 0x9020400

    const/4 v8, 0x1

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 289
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 290
    const-string v1, "Permission"

    invoke-virtual {v2, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 291
    iget-object v1, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mPermissionView:Landroid/view/View;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 294
    .end local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_4f
    iget-object v1, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mPermissionView:Landroid/view/View;

    const v2, 0x110a0005

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 295
    .local v1, "action":Landroid/widget/Button;
    iget-object v2, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mPermissionView:Landroid/view/View;

    const v3, 0x110a0099

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 296
    .local v2, "wifi":Landroid/widget/Button;
    new-instance v3, Lmiui/view/MiuiSecurityPermissionHandler$4;

    invoke-direct {v3, p0, v1}, Lmiui/view/MiuiSecurityPermissionHandler$4;-><init>(Lmiui/view/MiuiSecurityPermissionHandler;Landroid/widget/Button;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 325
    new-instance v3, Lmiui/view/MiuiSecurityPermissionHandler$5;

    invoke-direct {v3, p0, v0}, Lmiui/view/MiuiSecurityPermissionHandler$5;-><init>(Lmiui/view/MiuiSecurityPermissionHandler;Landroid/view/WindowManager;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 343
    return-void
.end method

.method public blacklist handleAccountLogin()V
    .registers 3

    .line 665
    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mPermissionViewCallback:Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;->onUnListenAccount(I)V

    .line 668
    iget v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mRetWater:I

    packed-switch v0, :pswitch_data_1e

    :pswitch_b
    goto :goto_10

    .line 672
    :pswitch_c
    invoke-direct {p0}, Lmiui/view/MiuiSecurityPermissionHandler;->updateWaterMarkerAccount()V

    .line 673
    nop

    .line 680
    :goto_10
    sget-boolean v0, Lmiui/os/Build;->IS_PRIVATE_BUILD:Z

    if-eqz v0, :cond_1d

    .line 681
    iget v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mRetPermission:I

    packed-switch v0, :pswitch_data_2a

    :pswitch_19
    goto :goto_1d

    .line 686
    :pswitch_1a
    invoke-virtual {p0}, Lmiui/view/MiuiSecurityPermissionHandler;->createPermissionView()V

    .line 693
    :cond_1d
    :goto_1d
    return-void

    :pswitch_data_1e
    .packed-switch -0x2
        :pswitch_c
        :pswitch_b
        :pswitch_c
        :pswitch_c
    .end packed-switch

    :pswitch_data_2a
    .packed-switch -0x2
        :pswitch_1a
        :pswitch_1a
        :pswitch_19
        :pswitch_1a
    .end packed-switch
.end method

.method public blacklist handleAccountLogout()V
    .registers 4

    .line 697
    sget-boolean v0, Lmiui/os/Build;->IS_PRIVATE_BUILD:Z

    if-eqz v0, :cond_40

    .line 699
    sget-object v0, Lmiui/view/MiuiSecurityPermissionHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleAccountLogout mRetPermission:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mRetPermission:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    const/4 v0, 0x0

    .line 703
    .local v0, "accountName":Ljava/lang/String;
    const/4 v1, 0x0

    :try_start_20
    invoke-direct {p0, v0, v1}, Lmiui/view/MiuiSecurityPermissionHandler;->postVerificationResult(Ljava/lang/String;I)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_23} :catch_24

    .line 706
    .end local v0    # "accountName":Ljava/lang/String;
    goto :goto_28

    .line 704
    :catch_24
    move-exception v0

    .line 705
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 707
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_28
    iget v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mRetPermission:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_42

    :pswitch_2e
    goto :goto_40

    .line 709
    :pswitch_2f
    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mPermissionViewCallback:Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;

    invoke-interface {v0, v1}, Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;->onListenAccount(I)V

    .line 710
    goto :goto_40

    .line 713
    :pswitch_35
    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mPermissionViewCallback:Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;

    invoke-interface {v0, v1}, Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;->onListenAccount(I)V

    .line 714
    goto :goto_40

    .line 717
    :pswitch_3b
    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mPermissionViewCallback:Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;

    invoke-interface {v0, v1}, Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;->onListenAccount(I)V

    .line 723
    :cond_40
    :goto_40
    return-void

    nop

    :pswitch_data_42
    .packed-switch -0x2
        :pswitch_3b
        :pswitch_35
        :pswitch_2e
        :pswitch_2f
    .end packed-switch
.end method

.method public blacklist handleWifiSettingFinish()V
    .registers 3

    .line 726
    sget-boolean v0, Lmiui/os/Build;->IS_PRIVATE_BUILD:Z

    if-eqz v0, :cond_14

    .line 728
    sget-object v0, Lmiui/view/MiuiSecurityPermissionHandler;->TAG:Ljava/lang/String;

    const-string v1, "handleWifiSettingFinish!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mPermissionViewCallback:Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;->onUnListenAccount(I)V

    .line 731
    invoke-virtual {p0}, Lmiui/view/MiuiSecurityPermissionHandler;->createPermissionView()V

    .line 733
    :cond_14
    return-void
.end method

.method public blacklist mayBringUpPermissionView()V
    .registers 2

    .line 259
    sget-boolean v0, Lmiui/os/Build;->IS_PRIVATE_BUILD:Z

    if-nez v0, :cond_c

    .line 260
    sget-boolean v0, Lmiui/os/Build;->IS_PRIVATE_WATER_MARKER:Z

    if-eqz v0, :cond_12

    .line 261
    invoke-direct {p0}, Lmiui/view/MiuiSecurityPermissionHandler;->doWaterMarker()V

    goto :goto_12

    .line 264
    :cond_c
    invoke-direct {p0}, Lmiui/view/MiuiSecurityPermissionHandler;->doWaterMarker()V

    .line 265
    invoke-direct {p0}, Lmiui/view/MiuiSecurityPermissionHandler;->doPermissionView()V

    .line 267
    :cond_12
    :goto_12
    return-void
.end method

.method public blacklist registerPermissionViewCallback(Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;)V
    .registers 2
    .param p1, "callback"    # Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;

    .line 748
    iput-object p1, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mPermissionViewCallback:Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;

    .line 749
    return-void
.end method
