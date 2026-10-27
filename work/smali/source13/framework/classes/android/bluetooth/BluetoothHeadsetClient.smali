.class public final Landroid/bluetooth/BluetoothHeadsetClient;
.super Ljava/lang/Object;
.source "BluetoothHeadsetClient.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile;
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothHeadsetClient$NetworkServiceState;
    }
.end annotation


# static fields
.field public static final greylist-max-o ACTION_AG_EVENT:Ljava/lang/String; = "android.bluetooth.headsetclient.profile.action.AG_EVENT"

.field public static final greylist-max-o ACTION_AUDIO_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.headsetclient.profile.action.AUDIO_STATE_CHANGED"

.field public static final greylist-max-o ACTION_CALL_CHANGED:Ljava/lang/String; = "android.bluetooth.headsetclient.profile.action.AG_CALL_CHANGED"

.field public static final whitelist ACTION_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.headsetclient.profile.action.CONNECTION_STATE_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o ACTION_LAST_VTAG:Ljava/lang/String; = "android.bluetooth.headsetclient.profile.action.LAST_VTAG"

.field public static final whitelist ACTION_NETWORK_SERVICE_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.headsetclient.profile.action.NETWORK_SERVICE_STATE_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o ACTION_RESULT:Ljava/lang/String; = "android.bluetooth.headsetclient.profile.action.RESULT"

.field public static final greylist-max-o ACTION_RESULT_ERROR:I = 0x1

.field public static final greylist-max-o ACTION_RESULT_ERROR_BLACKLISTED:I = 0x6

.field public static final greylist-max-o ACTION_RESULT_ERROR_BUSY:I = 0x3

.field public static final greylist-max-o ACTION_RESULT_ERROR_CME:I = 0x7

.field public static final greylist-max-o ACTION_RESULT_ERROR_DELAYED:I = 0x5

.field public static final greylist-max-o ACTION_RESULT_ERROR_NO_ANSWER:I = 0x4

.field public static final greylist-max-o ACTION_RESULT_ERROR_NO_CARRIER:I = 0x2

.field public static final greylist-max-o ACTION_RESULT_OK:I = 0x0

.field public static final blacklist ACTION_VENDOR_SPECIFIC_HEADSETCLIENT_EVENT:Ljava/lang/String; = "android.bluetooth.headsetclient.profile.action.VENDOR_SPECIFIC_EVENT"

.field public static final greylist-max-o CALL_ACCEPT_HOLD:I = 0x1

.field public static final greylist-max-o CALL_ACCEPT_NONE:I = 0x0

.field public static final greylist-max-o CALL_ACCEPT_TERMINATE:I = 0x2

.field public static final greylist-max-o CME_CORPORATE_PERSONALIZATION_PIN_REQUIRED:I = 0x2e

.field public static final greylist-max-o CME_CORPORATE_PERSONALIZATION_PUK_REQUIRED:I = 0x2f

.field public static final greylist-max-o CME_DIAL_STRING_TOO_LONG:I = 0x1a

.field public static final greylist-max-o CME_EAP_NOT_SUPPORTED:I = 0x31

.field public static final greylist-max-o CME_EMERGENCY_SERVICE_ONLY:I = 0x20

.field public static final greylist-max-o CME_HIDDEN_KEY_REQUIRED:I = 0x30

.field public static final greylist-max-o CME_INCORRECT_PARAMETERS:I = 0x32

.field public static final greylist-max-o CME_INCORRECT_PASSWORD:I = 0x10

.field public static final greylist-max-o CME_INVALID_CHARACTER_IN_DIAL_STRING:I = 0x1b

.field public static final greylist-max-o CME_INVALID_CHARACTER_IN_TEXT_STRING:I = 0x19

.field public static final greylist-max-o CME_INVALID_INDEX:I = 0x15

.field public static final greylist-max-o CME_MEMORY_FAILURE:I = 0x17

.field public static final greylist-max-o CME_MEMORY_FULL:I = 0x14

.field public static final greylist-max-o CME_NETWORK_PERSONALIZATION_PIN_REQUIRED:I = 0x28

.field public static final greylist-max-o CME_NETWORK_PERSONALIZATION_PUK_REQUIRED:I = 0x29

.field public static final greylist-max-o CME_NETWORK_SUBSET_PERSONALIZATION_PIN_REQUIRED:I = 0x2a

.field public static final greylist-max-o CME_NETWORK_SUBSET_PERSONALIZATION_PUK_REQUIRED:I = 0x2b

.field public static final greylist-max-o CME_NETWORK_TIMEOUT:I = 0x1f

.field public static final greylist-max-o CME_NOT_FOUND:I = 0x16

.field public static final greylist-max-o CME_NOT_SUPPORTED_FOR_VOIP:I = 0x22

.field public static final greylist-max-o CME_NO_CONNECTION_TO_PHONE:I = 0x1

.field public static final greylist-max-o CME_NO_NETWORK_SERVICE:I = 0x1e

.field public static final greylist-max-o CME_NO_SIMULTANOUS_VOIP_CS_CALLS:I = 0x21

.field public static final greylist-max-o CME_OPERATION_NOT_ALLOWED:I = 0x3

.field public static final greylist-max-o CME_OPERATION_NOT_SUPPORTED:I = 0x4

.field public static final greylist-max-o CME_PHFSIM_PIN_REQUIRED:I = 0x6

.field public static final greylist-max-o CME_PHFSIM_PUK_REQUIRED:I = 0x7

.field public static final greylist-max-o CME_PHONE_FAILURE:I = 0x0

.field public static final greylist-max-o CME_PHSIM_PIN_REQUIRED:I = 0x5

.field public static final greylist-max-o CME_SERVICE_PROVIDER_PERSONALIZATION_PIN_REQUIRED:I = 0x2c

.field public static final greylist-max-o CME_SERVICE_PROVIDER_PERSONALIZATION_PUK_REQUIRED:I = 0x2d

.field public static final greylist-max-o CME_SIM_BUSY:I = 0xe

.field public static final greylist-max-o CME_SIM_FAILURE:I = 0xd

.field public static final greylist-max-o CME_SIM_NOT_INSERTED:I = 0xa

.field public static final greylist-max-o CME_SIM_PIN2_REQUIRED:I = 0x11

.field public static final greylist-max-o CME_SIM_PIN_REQUIRED:I = 0xb

.field public static final greylist-max-o CME_SIM_PUK2_REQUIRED:I = 0x12

.field public static final greylist-max-o CME_SIM_PUK_REQUIRED:I = 0xc

.field public static final greylist-max-o CME_SIM_WRONG:I = 0xf

.field public static final greylist-max-o CME_SIP_RESPONSE_CODE:I = 0x23

.field public static final greylist-max-o CME_TEXT_STRING_TOO_LONG:I = 0x18

.field private static final greylist-max-o DBG:Z = true

.field public static final greylist-max-o EXTRA_AG_FEATURE_3WAY_CALLING:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_3WAY_CALLING"

.field public static final greylist-max-o EXTRA_AG_FEATURE_ACCEPT_HELD_OR_WAITING_CALL:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_ACCEPT_HELD_OR_WAITING_CALL"

.field public static final greylist-max-o EXTRA_AG_FEATURE_ATTACH_NUMBER_TO_VT:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_ATTACH_NUMBER_TO_VT"

.field public static final greylist-max-o EXTRA_AG_FEATURE_ECC:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_ECC"

.field public static final greylist-max-o EXTRA_AG_FEATURE_MERGE:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_MERGE"

.field public static final greylist-max-o EXTRA_AG_FEATURE_MERGE_AND_DETACH:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_MERGE_AND_DETACH"

.field public static final greylist-max-o EXTRA_AG_FEATURE_REJECT_CALL:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_REJECT_CALL"

.field public static final greylist-max-o EXTRA_AG_FEATURE_RELEASE_AND_ACCEPT:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_RELEASE_AND_ACCEPT"

.field public static final greylist-max-o EXTRA_AG_FEATURE_RELEASE_HELD_OR_WAITING_CALL:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_RELEASE_HELD_OR_WAITING_CALL"

.field public static final greylist-max-o EXTRA_AG_FEATURE_RESPONSE_AND_HOLD:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_RESPONSE_AND_HOLD"

.field public static final greylist-max-o EXTRA_AG_FEATURE_VOICE_RECOGNITION:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_VOICE_RECOGNITION"

.field public static final greylist-max-o EXTRA_AUDIO_WBS:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.AUDIO_WBS"

.field public static final greylist-max-o EXTRA_BATTERY_LEVEL:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.BATTERY_LEVEL"

.field public static final greylist-max-o EXTRA_CALL:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.CALL"

.field public static final greylist-max-o EXTRA_CME_CODE:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.CME_CODE"

.field public static final greylist-max-o EXTRA_IN_BAND_RING:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.IN_BAND_RING"

.field public static final greylist-max-o EXTRA_NETWORK_ROAMING:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.NETWORK_ROAMING"

.field public static final whitelist EXTRA_NETWORK_SERVICE_STATE:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.EXTRA_NETWORK_SERVICE_STATE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o EXTRA_NETWORK_SIGNAL_STRENGTH:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.NETWORK_SIGNAL_STRENGTH"

.field public static final greylist-max-o EXTRA_NETWORK_STATUS:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.NETWORK_STATUS"

.field public static final greylist-max-o EXTRA_NUMBER:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.NUMBER"

.field public static final greylist-max-o EXTRA_OPERATOR_NAME:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.OPERATOR_NAME"

.field public static final greylist-max-o EXTRA_RESULT_CODE:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.RESULT_CODE"

.field public static final greylist-max-o EXTRA_SUBSCRIBER_INFO:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.SUBSCRIBER_INFO"

.field public static final blacklist EXTRA_VENDOR_EVENT_CODE:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.VENDOR_EVENT_CODE"

.field public static final blacklist EXTRA_VENDOR_EVENT_FULL_ARGS:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.VENDOR_EVENT_FULL_ARGS"

.field public static final blacklist EXTRA_VENDOR_ID:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.VENDOR_ID"

.field public static final greylist-max-o EXTRA_VOICE_RECOGNITION:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.VOICE_RECOGNITION"

.field public static final greylist-max-o STATE_AUDIO_CONNECTED:I = 0x2

.field public static final greylist-max-o STATE_AUDIO_CONNECTING:I = 0x1

.field public static final greylist-max-o STATE_AUDIO_DISCONNECTED:I = 0x0

.field private static final greylist-max-o TAG:Ljava/lang/String; = "BluetoothHeadsetClient"

.field private static final greylist-max-o VDBG:Z = false


# instance fields
.field private final greylist-max-o mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final blacklist mAttributionSource:Landroid/content/AttributionSource;

.field private final blacklist mCloseGuard:Landroid/util/CloseGuard;

.field private final blacklist mProfileConnector:Landroid/bluetooth/BluetoothProfileConnector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/bluetooth/BluetoothProfileConnector<",
            "Landroid/bluetooth/IBluetoothHeadsetClient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;Landroid/bluetooth/BluetoothAdapter;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/bluetooth/BluetoothProfile$ServiceListener;
    .param p3, "adapter"    # Landroid/bluetooth/BluetoothAdapter;

    .line 746
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 733
    new-instance v6, Landroid/bluetooth/BluetoothHeadsetClient$1;

    const-class v0, Landroid/bluetooth/IBluetoothHeadsetClient;

    .line 735
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const/16 v3, 0x10

    const-string v4, "BluetoothHeadsetClient"

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/bluetooth/BluetoothHeadsetClient$1;-><init>(Landroid/bluetooth/BluetoothHeadsetClient;Landroid/bluetooth/BluetoothProfile;ILjava/lang/String;Ljava/lang/String;)V

    iput-object v6, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mProfileConnector:Landroid/bluetooth/BluetoothProfileConnector;

    .line 747
    iput-object p3, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 748
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothAdapter;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mAttributionSource:Landroid/content/AttributionSource;

    .line 749
    invoke-virtual {v6, p1, p2}, Landroid/bluetooth/BluetoothProfileConnector;->connect(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    .line 750
    new-instance v0, Landroid/util/CloseGuard;

    invoke-direct {v0}, Landroid/util/CloseGuard;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mCloseGuard:Landroid/util/CloseGuard;

    .line 751
    const-string v1, "close"

    invoke-virtual {v0, v1}, Landroid/util/CloseGuard;->open(Ljava/lang/String;)V

    .line 752
    return-void
.end method

.method private blacklist getService()Landroid/bluetooth/IBluetoothHeadsetClient;
    .registers 2

    .line 771
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mProfileConnector:Landroid/bluetooth/BluetoothProfileConnector;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothProfileConnector;->getService()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/IBluetoothHeadsetClient;

    return-object v0
.end method

.method private greylist-max-o isEnabled()Z
    .registers 3

    .line 1952
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private static greylist-max-o isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 2
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 1956
    if-eqz p0, :cond_e

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private static greylist-max-o log(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 1960
    const-string v0, "BluetoothHeadsetClient"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1961
    return-void
.end method


# virtual methods
.method public greylist-max-r acceptCall(Landroid/bluetooth/BluetoothDevice;I)Z
    .registers 10
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "flag"    # I

    .line 1249
    const-string v0, "acceptCall()"

    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    .line 1250
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->getService()Landroid/bluetooth/IBluetoothHeadsetClient;

    move-result-object v0

    .line 1251
    .local v0, "service":Landroid/bluetooth/IBluetoothHeadsetClient;
    const/4 v1, 0x0

    .line 1252
    .local v1, "defaultValue":Z
    const/4 v2, 0x0

    const-string v3, "BluetoothHeadsetClient"

    if-nez v0, :cond_21

    .line 1253
    const-string v4, "Proxy not attached to service"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    goto :goto_75

    .line 1255
    :cond_21
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_75

    invoke-static {p1}, Landroid/bluetooth/BluetoothHeadsetClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v4

    if-eqz v4, :cond_75

    .line 1257
    :try_start_2d
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v4

    .line 1258
    .local v4, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    iget-object v5, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, p2, v5, v4}, Landroid/bluetooth/IBluetoothHeadsetClient;->acceptCall(Landroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1259
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_4c} :catch_4d
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2d .. :try_end_4c} :catch_4d

    return v2

    .line 1260
    .end local v4    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    :catch_4d
    move-exception v4

    .line 1261
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_75
    :goto_75
    return v2
.end method

.method public whitelist test-api close()V
    .registers 2

    .line 764
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mProfileConnector:Landroid/bluetooth/BluetoothProfileConnector;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothProfileConnector;->disconnect()V

    .line 765
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mCloseGuard:Landroid/util/CloseGuard;

    if-eqz v0, :cond_c

    .line 766
    invoke-virtual {v0}, Landroid/util/CloseGuard;->close()V

    .line 768
    :cond_c
    return-void
.end method

.method public greylist-max-r connect(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 9
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 799
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connect("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    .line 800
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->getService()Landroid/bluetooth/IBluetoothHeadsetClient;

    move-result-object v0

    .line 801
    .local v0, "service":Landroid/bluetooth/IBluetoothHeadsetClient;
    const/4 v1, 0x0

    .line 802
    .local v1, "defaultValue":Z
    const/4 v2, 0x0

    const-string v3, "BluetoothHeadsetClient"

    if-nez v0, :cond_38

    .line 803
    const-string v4, "Proxy not attached to service"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    goto :goto_8c

    .line 805
    :cond_38
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_8c

    invoke-static {p1}, Landroid/bluetooth/BluetoothHeadsetClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v4

    if-eqz v4, :cond_8c

    .line 807
    :try_start_44
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v4

    .line 808
    .local v4, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    iget-object v5, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v5, v4}, Landroid/bluetooth/IBluetoothHeadsetClient;->connect(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 809
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_63
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_63} :catch_64
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_44 .. :try_end_63} :catch_64

    return v2

    .line 810
    .end local v4    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    :catch_64
    move-exception v4

    .line 811
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_8c
    :goto_8c
    return v2
.end method

.method public greylist-max-o connectAudio(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 9
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 1651
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->getService()Landroid/bluetooth/IBluetoothHeadsetClient;

    move-result-object v0

    .line 1652
    .local v0, "service":Landroid/bluetooth/IBluetoothHeadsetClient;
    const/4 v1, 0x0

    .line 1653
    .local v1, "defaultValue":Z
    const/4 v2, 0x0

    const-string v3, "BluetoothHeadsetClient"

    if-nez v0, :cond_1c

    .line 1654
    const-string v4, "Proxy not attached to service"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1655
    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    goto :goto_6a

    .line 1656
    :cond_1c
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_6a

    .line 1658
    :try_start_22
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v4

    .line 1659
    .local v4, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    iget-object v5, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v5, v4}, Landroid/bluetooth/IBluetoothHeadsetClient;->connectAudio(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1660
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_41} :catch_42
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_22 .. :try_end_41} :catch_42

    return v2

    .line 1661
    .end local v4    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    :catch_42
    move-exception v4

    .line 1662
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1665
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_6a
    :goto_6a
    return v2
.end method

.method public greylist-max-o dial(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Landroid/bluetooth/BluetoothHeadsetClientCall;
    .registers 9
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "number"    # Ljava/lang/String;

    .line 1458
    const-string v0, "dial()"

    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    .line 1459
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->getService()Landroid/bluetooth/IBluetoothHeadsetClient;

    move-result-object v0

    .line 1460
    .local v0, "service":Landroid/bluetooth/IBluetoothHeadsetClient;
    const/4 v1, 0x0

    .line 1461
    .local v1, "defaultValue":Landroid/bluetooth/BluetoothHeadsetClientCall;
    const-string v2, "BluetoothHeadsetClient"

    if-nez v0, :cond_20

    .line 1462
    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    goto :goto_75

    .line 1464
    :cond_20
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_75

    invoke-static {p1}, Landroid/bluetooth/BluetoothHeadsetClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_75

    .line 1467
    :try_start_2c
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v3

    .line 1468
    .local v3, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Landroid/bluetooth/BluetoothHeadsetClientCall;>;"
    iget-object v4, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, p2, v4, v3}, Landroid/bluetooth/IBluetoothHeadsetClient;->dial(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1469
    nop

    .line 1470
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothHeadsetClientCall;

    iget-object v5, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mAttributionSource:Landroid/content/AttributionSource;

    .line 1469
    invoke-static {v4, v5}, Landroid/bluetooth/Attributable;->setAttributionSource(Landroid/bluetooth/Attributable;Landroid/content/AttributionSource;)Landroid/bluetooth/Attributable;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothHeadsetClientCall;
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_4c} :catch_4d
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2c .. :try_end_4c} :catch_4d

    return-object v4

    .line 1472
    .end local v3    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Landroid/bluetooth/BluetoothHeadsetClientCall;>;"
    :catch_4d
    move-exception v3

    .line 1473
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1476
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_75
    :goto_75
    return-object v1
.end method

.method public greylist-max-r disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 9
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 830
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disconnect("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    .line 831
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->getService()Landroid/bluetooth/IBluetoothHeadsetClient;

    move-result-object v0

    .line 832
    .local v0, "service":Landroid/bluetooth/IBluetoothHeadsetClient;
    const/4 v1, 0x0

    .line 833
    .local v1, "defaultValue":Z
    const/4 v2, 0x0

    const-string v3, "BluetoothHeadsetClient"

    if-nez v0, :cond_38

    .line 834
    const-string v4, "Proxy not attached to service"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    goto :goto_8c

    .line 836
    :cond_38
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_8c

    invoke-static {p1}, Landroid/bluetooth/BluetoothHeadsetClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v4

    if-eqz v4, :cond_8c

    .line 838
    :try_start_44
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v4

    .line 839
    .local v4, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    iget-object v5, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v5, v4}, Landroid/bluetooth/IBluetoothHeadsetClient;->disconnect(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 840
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_63
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_63} :catch_64
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_44 .. :try_end_63} :catch_64

    return v2

    .line 841
    .end local v4    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    :catch_64
    move-exception v4

    .line 842
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_8c
    :goto_8c
    return v2
.end method

.method public greylist-max-o disconnectAudio(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 9
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 1683
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->getService()Landroid/bluetooth/IBluetoothHeadsetClient;

    move-result-object v0

    .line 1684
    .local v0, "service":Landroid/bluetooth/IBluetoothHeadsetClient;
    const/4 v1, 0x0

    .line 1685
    .local v1, "defaultValue":Z
    const/4 v2, 0x0

    const-string v3, "BluetoothHeadsetClient"

    if-nez v0, :cond_1c

    .line 1686
    const-string v4, "Proxy not attached to service"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1687
    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    goto :goto_6a

    .line 1688
    :cond_1c
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_6a

    .line 1690
    :try_start_22
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v4

    .line 1691
    .local v4, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    iget-object v5, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v5, v4}, Landroid/bluetooth/IBluetoothHeadsetClient;->disconnectAudio(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1692
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_41} :catch_42
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_22 .. :try_end_41} :catch_42

    return v2

    .line 1693
    .end local v4    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    :catch_42
    move-exception v4

    .line 1694
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1697
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_6a
    :goto_6a
    return v2
.end method

.method public greylist-max-o enterPrivateMode(Landroid/bluetooth/BluetoothDevice;I)Z
    .registers 10
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "index"    # I

    .line 1390
    const-string v0, "enterPrivateMode()"

    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    .line 1391
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->getService()Landroid/bluetooth/IBluetoothHeadsetClient;

    move-result-object v0

    .line 1392
    .local v0, "service":Landroid/bluetooth/IBluetoothHeadsetClient;
    const/4 v1, 0x0

    .line 1393
    .local v1, "defaultValue":Z
    const/4 v2, 0x0

    const-string v3, "BluetoothHeadsetClient"

    if-nez v0, :cond_21

    .line 1394
    const-string v4, "Proxy not attached to service"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    goto :goto_75

    .line 1396
    :cond_21
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_75

    invoke-static {p1}, Landroid/bluetooth/BluetoothHeadsetClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v4

    if-eqz v4, :cond_75

    .line 1398
    :try_start_2d
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v4

    .line 1399
    .local v4, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    iget-object v5, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, p2, v5, v4}, Landroid/bluetooth/IBluetoothHeadsetClient;->enterPrivateMode(Landroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1400
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_4c} :catch_4d
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2d .. :try_end_4c} :catch_4d

    return v2

    .line 1401
    .end local v4    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    :catch_4d
    move-exception v4

    .line 1402
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1405
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_75
    :goto_75
    return v2
.end method

.method public greylist-max-o explicitCallTransfer(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 9
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 1426
    const-string v0, "explicitCallTransfer()"

    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    .line 1427
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->getService()Landroid/bluetooth/IBluetoothHeadsetClient;

    move-result-object v0

    .line 1428
    .local v0, "service":Landroid/bluetooth/IBluetoothHeadsetClient;
    const/4 v1, 0x0

    .line 1429
    .local v1, "defaultValue":Z
    const/4 v2, 0x0

    const-string v3, "BluetoothHeadsetClient"

    if-nez v0, :cond_21

    .line 1430
    const-string v4, "Proxy not attached to service"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1431
    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    goto :goto_75

    .line 1432
    :cond_21
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_75

    invoke-static {p1}, Landroid/bluetooth/BluetoothHeadsetClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v4

    if-eqz v4, :cond_75

    .line 1434
    :try_start_2d
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v4

    .line 1435
    .local v4, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    iget-object v5, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v5, v4}, Landroid/bluetooth/IBluetoothHeadsetClient;->explicitCallTransfer(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1436
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_4c} :catch_4d
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2d .. :try_end_4c} :catch_4d

    return v2

    .line 1437
    .end local v4    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    :catch_4d
    move-exception v4

    .line 1438
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_75
    :goto_75
    return v2
.end method

.method protected whitelist test-api finalize()V
    .registers 2

    .line 776
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mCloseGuard:Landroid/util/CloseGuard;

    if-eqz v0, :cond_7

    .line 777
    invoke-virtual {v0}, Landroid/util/CloseGuard;->warnIfOpen()V

    .line 779
    :cond_7
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->close()V

    .line 780
    return-void
.end method

.method public greylist-max-o getAudioRouteAllowed(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 9
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 1619
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->getService()Landroid/bluetooth/IBluetoothHeadsetClient;

    move-result-object v0

    .line 1620
    .local v0, "service":Landroid/bluetooth/IBluetoothHeadsetClient;
    const/4 v1, 0x0

    .line 1621
    .local v1, "defaultValue":Z
    const/4 v2, 0x0

    const-string v3, "BluetoothHeadsetClient"

    if-nez v0, :cond_1c

    .line 1622
    const-string v4, "Proxy not attached to service"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    goto :goto_6a

    .line 1624
    :cond_1c
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_6a

    .line 1626
    :try_start_22
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v4

    .line 1627
    .local v4, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    iget-object v5, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v5, v4}, Landroid/bluetooth/IBluetoothHeadsetClient;->getAudioRouteAllowed(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1628
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_41} :catch_42
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_22 .. :try_end_41} :catch_42

    return v2

    .line 1629
    .end local v4    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    :catch_42
    move-exception v4

    .line 1630
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1633
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_6a
    :goto_6a
    return v2
.end method

.method public greylist-max-r getAudioState(Landroid/bluetooth/BluetoothDevice;)I
    .registers 9
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 1559
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->getService()Landroid/bluetooth/IBluetoothHeadsetClient;

    move-result-object v0

    .line 1560
    .local v0, "service":Landroid/bluetooth/IBluetoothHeadsetClient;
    const/4 v1, 0x0

    .line 1561
    .local v1, "defaultValue":I
    const-string v2, "BluetoothHeadsetClient"

    const/4 v3, 0x0

    if-nez v0, :cond_1c

    .line 1562
    const-string v4, "Proxy not attached to service"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1563
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    goto :goto_6b

    .line 1564
    :cond_1c
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_6c

    .line 1566
    :try_start_22
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v4

    .line 1567
    .local v4, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Integer;>;"
    iget-object v5, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v5, v4}, Landroid/bluetooth/IBluetoothHeadsetClient;->getAudioState(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1568
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_41} :catch_42
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_22 .. :try_end_41} :catch_42

    return v2

    .line 1569
    .end local v4    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Integer;>;"
    :catch_42
    move-exception v4

    .line 1570
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1571
    .end local v4    # "e":Ljava/lang/Exception;
    nop

    .line 1575
    :goto_6b
    return v3

    .line 1573
    :cond_6c
    return v3
.end method

.method public whitelist getConnectedDevices()Ljava/util/List;
    .registers 8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 861
    const-string v0, "\n"

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->getService()Landroid/bluetooth/IBluetoothHeadsetClient;

    move-result-object v1

    .line 862
    .local v1, "service":Landroid/bluetooth/IBluetoothHeadsetClient;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 863
    .local v2, "defaultValue":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    const-string v3, "BluetoothHeadsetClient"

    if-nez v1, :cond_21

    .line 864
    const-string v0, "Proxy not attached to service"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    goto :goto_98

    .line 866
    :cond_21
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_98

    .line 869
    :try_start_27
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v4

    .line 870
    .local v4, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;>;"
    iget-object v5, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v1, v5, v4}, Landroid/bluetooth/IBluetoothHeadsetClient;->getConnectedDevices(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 871
    nop

    .line 872
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    iget-object v6, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mAttributionSource:Landroid/content/AttributionSource;

    .line 871
    invoke-static {v5, v6}, Landroid/bluetooth/Attributable;->setAttributionSource(Ljava/util/List;Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v0
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_45} :catch_6d
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_27 .. :try_end_45} :catch_46

    return-object v0

    .line 877
    .end local v4    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;>;"
    :catch_46
    move-exception v4

    .line 878
    .local v4, "e":Ljava/util/concurrent/TimeoutException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/util/concurrent/TimeoutException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_98

    .line 874
    .end local v4    # "e":Ljava/util/concurrent/TimeoutException;
    :catch_6d
    move-exception v4

    .line 875
    .local v4, "e":Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    invoke-virtual {v4}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 881
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_98
    :goto_98
    return-object v2
.end method

.method public whitelist getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I
    .registers 10
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1053
    const-string v0, "\n"

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->getService()Landroid/bluetooth/IBluetoothHeadsetClient;

    move-result-object v1

    .line 1054
    .local v1, "service":Landroid/bluetooth/IBluetoothHeadsetClient;
    const/4 v2, 0x0

    .line 1055
    .local v2, "defaultValue":I
    const/4 v3, 0x0

    const-string v4, "BluetoothHeadsetClient"

    if-nez v1, :cond_1f

    .line 1056
    const-string v0, "Proxy not attached to service"

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    goto/16 :goto_9d

    .line 1058
    :cond_1f
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_9d

    invoke-static {p1}, Landroid/bluetooth/BluetoothHeadsetClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v5

    if-eqz v5, :cond_9d

    .line 1060
    :try_start_2b
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v5

    .line 1061
    .local v5, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Integer;>;"
    iget-object v6, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v1, p1, v6, v5}, Landroid/bluetooth/IBluetoothHeadsetClient;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1062
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_4a} :catch_72
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2b .. :try_end_4a} :catch_4b

    return v0

    .line 1066
    .end local v5    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Integer;>;"
    :catch_4b
    move-exception v5

    .line 1067
    .local v5, "e":Ljava/util/concurrent/TimeoutException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/util/concurrent/TimeoutException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9d

    .line 1063
    .end local v5    # "e":Ljava/util/concurrent/TimeoutException;
    :catch_72
    move-exception v3

    .line 1064
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 1070
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_9d
    :goto_9d
    return v3
.end method

.method public whitelist getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .registers 10
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 934
    const-string v0, "\n"

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->getService()Landroid/bluetooth/IBluetoothHeadsetClient;

    move-result-object v1

    .line 935
    .local v1, "service":Landroid/bluetooth/IBluetoothHeadsetClient;
    const/4 v2, 0x0

    .line 936
    .local v2, "defaultValue":I
    const/4 v3, 0x0

    const-string v4, "BluetoothHeadsetClient"

    if-nez v1, :cond_1f

    .line 937
    const-string v0, "Proxy not attached to service"

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    goto/16 :goto_9d

    .line 939
    :cond_1f
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_9d

    invoke-static {p1}, Landroid/bluetooth/BluetoothHeadsetClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v5

    if-eqz v5, :cond_9d

    .line 941
    :try_start_2b
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v5

    .line 942
    .local v5, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Integer;>;"
    iget-object v6, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v1, p1, v6, v5}, Landroid/bluetooth/IBluetoothHeadsetClient;->getConnectionState(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 943
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_4a} :catch_72
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2b .. :try_end_4a} :catch_4b

    return v0

    .line 947
    .end local v5    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Integer;>;"
    :catch_4b
    move-exception v5

    .line 948
    .local v5, "e":Ljava/util/concurrent/TimeoutException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/util/concurrent/TimeoutException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9d

    .line 944
    .end local v5    # "e":Ljava/util/concurrent/TimeoutException;
    :catch_72
    move-exception v3

    .line 945
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 951
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_9d
    :goto_9d
    return v3
.end method

.method public greylist-max-o getCurrentAgEvents(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;
    .registers 8
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 1216
    const-string v0, "getCurrentAgEvents()"

    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    .line 1217
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->getService()Landroid/bluetooth/IBluetoothHeadsetClient;

    move-result-object v0

    .line 1218
    .local v0, "service":Landroid/bluetooth/IBluetoothHeadsetClient;
    const/4 v1, 0x0

    .line 1219
    .local v1, "defaultValue":Landroid/os/Bundle;
    const-string v2, "BluetoothHeadsetClient"

    if-nez v0, :cond_20

    .line 1220
    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    goto :goto_6c

    .line 1222
    :cond_20
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_6c

    invoke-static {p1}, Landroid/bluetooth/BluetoothHeadsetClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 1224
    :try_start_2c
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v3

    .line 1225
    .local v3, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Landroid/os/Bundle;>;"
    iget-object v4, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v4, v3}, Landroid/bluetooth/IBluetoothHeadsetClient;->getCurrentAgEvents(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1226
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_43} :catch_44
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2c .. :try_end_43} :catch_44

    return-object v4

    .line 1227
    .end local v3    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Landroid/os/Bundle;>;"
    :catch_44
    move-exception v3

    .line 1228
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_6c
    :goto_6c
    return-object v1
.end method

.method public greylist-max-o getCurrentAgFeatures(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;
    .registers 8
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 1712
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->getService()Landroid/bluetooth/IBluetoothHeadsetClient;

    move-result-object v0

    .line 1713
    .local v0, "service":Landroid/bluetooth/IBluetoothHeadsetClient;
    const/4 v1, 0x0

    .line 1714
    .local v1, "defaultValue":Landroid/os/Bundle;
    const-string v2, "BluetoothHeadsetClient"

    if-nez v0, :cond_1b

    .line 1715
    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1716
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    goto :goto_61

    .line 1717
    :cond_1b
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_61

    .line 1719
    :try_start_21
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v3

    .line 1720
    .local v3, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Landroid/os/Bundle;>;"
    iget-object v4, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v4, v3}, Landroid/bluetooth/IBluetoothHeadsetClient;->getCurrentAgFeatures(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1721
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_38} :catch_39
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_21 .. :try_end_38} :catch_39

    return-object v4

    .line 1722
    .end local v3    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Landroid/os/Bundle;>;"
    :catch_39
    move-exception v3

    .line 1723
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1726
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_61
    :goto_61
    return-object v1
.end method

.method public greylist-max-o getCurrentCalls(Landroid/bluetooth/BluetoothDevice;)Ljava/util/List;
    .registers 8
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothDevice;",
            ")",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothHeadsetClientCall;",
            ">;"
        }
    .end annotation

    .line 1184
    const-string v0, "getCurrentCalls()"

    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    .line 1185
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->getService()Landroid/bluetooth/IBluetoothHeadsetClient;

    move-result-object v0

    .line 1186
    .local v0, "service":Landroid/bluetooth/IBluetoothHeadsetClient;
    const/4 v1, 0x0

    .line 1187
    .local v1, "defaultValue":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothHeadsetClientCall;>;"
    const-string v2, "BluetoothHeadsetClient"

    if-nez v0, :cond_20

    .line 1188
    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    goto :goto_73

    .line 1190
    :cond_20
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_73

    invoke-static {p1}, Landroid/bluetooth/BluetoothHeadsetClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_73

    .line 1193
    :try_start_2c
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v3

    .line 1194
    .local v3, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/util/List<Landroid/bluetooth/BluetoothHeadsetClientCall;>;>;"
    iget-object v4, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v4, v3}, Landroid/bluetooth/IBluetoothHeadsetClient;->getCurrentCalls(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1195
    nop

    .line 1196
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    iget-object v5, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mAttributionSource:Landroid/content/AttributionSource;

    .line 1195
    invoke-static {v4, v5}, Landroid/bluetooth/Attributable;->setAttributionSource(Ljava/util/List;Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v2
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_4a} :catch_4b
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2c .. :try_end_4a} :catch_4b

    return-object v2

    .line 1198
    .end local v3    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/util/List<Landroid/bluetooth/BluetoothHeadsetClientCall;>;>;"
    :catch_4b
    move-exception v3

    .line 1199
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_73
    :goto_73
    return-object v1
.end method

.method public whitelist getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .registers 9
    .param p1, "states"    # [I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 898
    const-string v0, "\n"

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->getService()Landroid/bluetooth/IBluetoothHeadsetClient;

    move-result-object v1

    .line 899
    .local v1, "service":Landroid/bluetooth/IBluetoothHeadsetClient;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 900
    .local v2, "defaultValue":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    const-string v3, "BluetoothHeadsetClient"

    if-nez v1, :cond_21

    .line 901
    const-string v0, "Proxy not attached to service"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    goto :goto_98

    .line 903
    :cond_21
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_98

    .line 906
    :try_start_27
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v4

    .line 907
    .local v4, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;>;"
    iget-object v5, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v1, p1, v5, v4}, Landroid/bluetooth/IBluetoothHeadsetClient;->getDevicesMatchingConnectionStates([ILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 908
    nop

    .line 909
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    iget-object v6, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mAttributionSource:Landroid/content/AttributionSource;

    .line 908
    invoke-static {v5, v6}, Landroid/bluetooth/Attributable;->setAttributionSource(Ljava/util/List;Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v0
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_45} :catch_6d
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_27 .. :try_end_45} :catch_46

    return-object v0

    .line 914
    .end local v4    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;>;"
    :catch_46
    move-exception v4

    .line 915
    .local v4, "e":Ljava/util/concurrent/TimeoutException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/util/concurrent/TimeoutException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_98

    .line 911
    .end local v4    # "e":Ljava/util/concurrent/TimeoutException;
    :catch_6d
    move-exception v4

    .line 912
    .local v4, "e":Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    invoke-virtual {v4}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 918
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_98
    :goto_98
    return-object v2
.end method

.method public greylist-max-o getLastVoiceTagNumber(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 9
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 1529
    const-string v0, "getLastVoiceTagNumber()"

    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    .line 1530
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->getService()Landroid/bluetooth/IBluetoothHeadsetClient;

    move-result-object v0

    .line 1531
    .local v0, "service":Landroid/bluetooth/IBluetoothHeadsetClient;
    const/4 v1, 0x0

    .line 1532
    .local v1, "defaultValue":Z
    const/4 v2, 0x0

    const-string v3, "BluetoothHeadsetClient"

    if-nez v0, :cond_21

    .line 1533
    const-string v4, "Proxy not attached to service"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1534
    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    goto :goto_75

    .line 1535
    :cond_21
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_75

    invoke-static {p1}, Landroid/bluetooth/BluetoothHeadsetClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v4

    if-eqz v4, :cond_75

    .line 1537
    :try_start_2d
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v4

    .line 1538
    .local v4, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    iget-object v5, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v5, v4}, Landroid/bluetooth/IBluetoothHeadsetClient;->getLastVoiceTagNumber(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1539
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_4c} :catch_4d
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2d .. :try_end_4c} :catch_4d

    return v2

    .line 1540
    .end local v4    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    :catch_4d
    move-exception v4

    .line 1541
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_75
    :goto_75
    return v2
.end method

.method public whitelist getNetworkServiceState(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothHeadsetClient$NetworkServiceState;
    .registers 13
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1933
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 1934
    return-object v0

    .line 1937
    :cond_4
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHeadsetClient;->getCurrentAgEvents(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;

    move-result-object v1

    .line 1938
    .local v1, "agEvents":Landroid/os/Bundle;
    if-nez v1, :cond_b

    .line 1939
    return-object v0

    .line 1942
    :cond_b
    const-string v2, "android.bluetooth.headsetclient.extra.NETWORK_STATUS"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_17

    move v7, v4

    goto :goto_18

    :cond_17
    move v7, v3

    .line 1943
    .local v7, "isServiceAvailable":Z
    :goto_18
    const-string v2, "android.bluetooth.headsetclient.extra.NETWORK_SIGNAL_STRENGTH"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1944
    .local v2, "signalStrength":I
    const-string v5, "android.bluetooth.headsetclient.extra.OPERATOR_NAME"

    invoke-virtual {v1, v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1945
    .local v0, "operatorName":Ljava/lang/String;
    const-string v5, "android.bluetooth.headsetclient.extra.NETWORK_ROAMING"

    invoke-virtual {v1, v5, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v4, :cond_2e

    move v10, v4

    goto :goto_2f

    :cond_2e
    move v10, v3

    .line 1947
    .local v10, "isRoaming":Z
    :goto_2f
    new-instance v3, Landroid/bluetooth/BluetoothHeadsetClient$NetworkServiceState;

    move-object v5, v3

    move-object v6, p1

    move-object v8, v0

    move v9, v2

    invoke-direct/range {v5 .. v10}, Landroid/bluetooth/BluetoothHeadsetClient$NetworkServiceState;-><init>(Landroid/bluetooth/BluetoothDevice;ZLjava/lang/String;IZ)V

    return-object v3
.end method

.method public greylist-max-o getPriority(Landroid/bluetooth/BluetoothDevice;)I
    .registers 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 1030
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHeadsetClient;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->connectionPolicyToPriority(I)I

    move-result v0

    return v0
.end method

.method public greylist-max-o holdCall(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 9
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 1279
    const-string v0, "holdCall()"

    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    .line 1280
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->getService()Landroid/bluetooth/IBluetoothHeadsetClient;

    move-result-object v0

    .line 1281
    .local v0, "service":Landroid/bluetooth/IBluetoothHeadsetClient;
    const/4 v1, 0x0

    .line 1282
    .local v1, "defaultValue":Z
    const/4 v2, 0x0

    const-string v3, "BluetoothHeadsetClient"

    if-nez v0, :cond_21

    .line 1283
    const-string v4, "Proxy not attached to service"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    goto :goto_75

    .line 1285
    :cond_21
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_75

    invoke-static {p1}, Landroid/bluetooth/BluetoothHeadsetClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v4

    if-eqz v4, :cond_75

    .line 1287
    :try_start_2d
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v4

    .line 1288
    .local v4, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    iget-object v5, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v5, v4}, Landroid/bluetooth/IBluetoothHeadsetClient;->holdCall(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1289
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_4c} :catch_4d
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2d .. :try_end_4c} :catch_4d

    return v2

    .line 1290
    .end local v4    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    :catch_4d
    move-exception v4

    .line 1291
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_75
    :goto_75
    return v2
.end method

.method public greylist-max-r rejectCall(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 9
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 1314
    const-string/jumbo v0, "rejectCall()"

    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    .line 1315
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->getService()Landroid/bluetooth/IBluetoothHeadsetClient;

    move-result-object v0

    .line 1316
    .local v0, "service":Landroid/bluetooth/IBluetoothHeadsetClient;
    const/4 v1, 0x0

    .line 1317
    .local v1, "defaultValue":Z
    const/4 v2, 0x0

    const-string v3, "BluetoothHeadsetClient"

    if-nez v0, :cond_22

    .line 1318
    const-string v4, "Proxy not attached to service"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    goto :goto_76

    .line 1320
    :cond_22
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_76

    invoke-static {p1}, Landroid/bluetooth/BluetoothHeadsetClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v4

    if-eqz v4, :cond_76

    .line 1322
    :try_start_2e
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v4

    .line 1323
    .local v4, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    iget-object v5, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v5, v4}, Landroid/bluetooth/IBluetoothHeadsetClient;->rejectCall(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1324
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_4d} :catch_4e
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2e .. :try_end_4d} :catch_4e

    return v2

    .line 1325
    .end local v4    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    :catch_4e
    move-exception v4

    .line 1326
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_76
    :goto_76
    return v2
.end method

.method public greylist-max-o sendDTMF(Landroid/bluetooth/BluetoothDevice;B)Z
    .registers 10
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "code"    # B

    .line 1494
    const-string/jumbo v0, "sendDTMF()"

    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    .line 1495
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->getService()Landroid/bluetooth/IBluetoothHeadsetClient;

    move-result-object v0

    .line 1496
    .local v0, "service":Landroid/bluetooth/IBluetoothHeadsetClient;
    const/4 v1, 0x0

    .line 1497
    .local v1, "defaultValue":Z
    const/4 v2, 0x0

    const-string v3, "BluetoothHeadsetClient"

    if-nez v0, :cond_22

    .line 1498
    const-string v4, "Proxy not attached to service"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1499
    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    goto :goto_76

    .line 1500
    :cond_22
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_76

    invoke-static {p1}, Landroid/bluetooth/BluetoothHeadsetClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v4

    if-eqz v4, :cond_76

    .line 1502
    :try_start_2e
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v4

    .line 1503
    .local v4, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    iget-object v5, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, p2, v5, v4}, Landroid/bluetooth/IBluetoothHeadsetClient;->sendDTMF(Landroid/bluetooth/BluetoothDevice;BLandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1504
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_4d} :catch_4e
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2e .. :try_end_4d} :catch_4e

    return v2

    .line 1505
    .end local v4    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    :catch_4e
    move-exception v4

    .line 1506
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1509
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_76
    :goto_76
    return v2
.end method

.method public blacklist sendVendorAtCommand(Landroid/bluetooth/BluetoothDevice;ILjava/lang/String;)Z
    .registers 15
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "vendorId"    # I
    .param p3, "atCommand"    # Ljava/lang/String;

    .line 1121
    const-string/jumbo v0, "sendVendorSpecificCommand()"

    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    .line 1122
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->getService()Landroid/bluetooth/IBluetoothHeadsetClient;

    move-result-object v0

    .line 1123
    .local v0, "service":Landroid/bluetooth/IBluetoothHeadsetClient;
    const/4 v7, 0x0

    .line 1124
    .local v7, "defaultValue":Z
    const/4 v8, 0x0

    const-string v9, "BluetoothHeadsetClient"

    if-nez v0, :cond_22

    .line 1125
    const-string v1, "Proxy not attached to service"

    invoke-static {v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    goto :goto_7c

    .line 1127
    :cond_22
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_7c

    invoke-static {p1}, Landroid/bluetooth/BluetoothHeadsetClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 1129
    :try_start_2e
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v1

    move-object v10, v1

    .line 1130
    .local v10, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    iget-object v5, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mAttributionSource:Landroid/content/AttributionSource;

    move-object v1, v0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v6, v10

    invoke-interface/range {v1 .. v6}, Landroid/bluetooth/IBluetoothHeadsetClient;->sendVendorAtCommand(Landroid/bluetooth/BluetoothDevice;ILjava/lang/String;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1131
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_53
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_53} :catch_54
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2e .. :try_end_53} :catch_54

    return v1

    .line 1132
    .end local v10    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    :catch_54
    move-exception v1

    .line 1133
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_7c
    :goto_7c
    return v8
.end method

.method public greylist-max-o setAudioRouteAllowed(Landroid/bluetooth/BluetoothDevice;Z)V
    .registers 8
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "allowed"    # Z

    .line 1591
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->getService()Landroid/bluetooth/IBluetoothHeadsetClient;

    move-result-object v0

    .line 1592
    .local v0, "service":Landroid/bluetooth/IBluetoothHeadsetClient;
    const-string v1, "BluetoothHeadsetClient"

    if-nez v0, :cond_1a

    .line 1593
    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1594
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    goto :goto_5f

    .line 1595
    :cond_1a
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 1597
    :try_start_20
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v2

    .line 1598
    .local v2, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    iget-object v3, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, p2, v3, v2}, Landroid/bluetooth/IBluetoothHeadsetClient;->setAudioRouteAllowed(Landroid/bluetooth/BluetoothDevice;ZLandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1599
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_35} :catch_37
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_20 .. :try_end_35} :catch_37

    .line 1602
    nop

    .end local v2    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    goto :goto_5f

    .line 1600
    :catch_37
    move-exception v2

    .line 1601
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1604
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_5f
    :goto_5f
    return-void
.end method

.method public whitelist setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z
    .registers 11
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "connectionPolicy"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 992
    const-string v0, "\n"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setConnectionPolicy("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    .line 993
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->getService()Landroid/bluetooth/IBluetoothHeadsetClient;

    move-result-object v1

    .line 994
    .local v1, "service":Landroid/bluetooth/IBluetoothHeadsetClient;
    const/4 v2, 0x0

    .line 995
    .local v2, "defaultValue":Z
    const/4 v3, 0x0

    const-string v4, "BluetoothHeadsetClient"

    if-nez v1, :cond_46

    .line 996
    const-string v0, "Proxy not attached to service"

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    goto/16 :goto_ca

    .line 998
    :cond_46
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_ca

    invoke-static {p1}, Landroid/bluetooth/BluetoothHeadsetClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v5

    if-eqz v5, :cond_ca

    if-eqz p2, :cond_58

    const/16 v5, 0x64

    if-ne p2, v5, :cond_ca

    .line 1002
    :cond_58
    :try_start_58
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v5

    .line 1003
    .local v5, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    iget-object v6, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v1, p1, p2, v6, v5}, Landroid/bluetooth/IBluetoothHeadsetClient;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1004
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_77
    .catch Landroid/os/RemoteException; {:try_start_58 .. :try_end_77} :catch_9f
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_58 .. :try_end_77} :catch_78

    return v0

    .line 1008
    .end local v5    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    :catch_78
    move-exception v5

    .line 1009
    .local v5, "e":Ljava/util/concurrent/TimeoutException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/util/concurrent/TimeoutException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ca

    .line 1005
    .end local v5    # "e":Ljava/util/concurrent/TimeoutException;
    :catch_9f
    move-exception v3

    .line 1006
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 1012
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_ca
    :goto_ca
    return v3
.end method

.method public greylist-max-o setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .registers 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "priority"    # I

    .line 968
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPriority("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    .line 969
    invoke-static {p2}, Landroid/bluetooth/BluetoothAdapter;->priorityToConnectionPolicy(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/bluetooth/BluetoothHeadsetClient;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o startVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 9
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 1089
    const-string/jumbo v0, "startVoiceRecognition()"

    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    .line 1090
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->getService()Landroid/bluetooth/IBluetoothHeadsetClient;

    move-result-object v0

    .line 1091
    .local v0, "service":Landroid/bluetooth/IBluetoothHeadsetClient;
    const/4 v1, 0x0

    .line 1092
    .local v1, "defaultValue":Z
    const/4 v2, 0x0

    const-string v3, "BluetoothHeadsetClient"

    if-nez v0, :cond_22

    .line 1093
    const-string v4, "Proxy not attached to service"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    goto :goto_76

    .line 1095
    :cond_22
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_76

    invoke-static {p1}, Landroid/bluetooth/BluetoothHeadsetClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v4

    if-eqz v4, :cond_76

    .line 1097
    :try_start_2e
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v4

    .line 1098
    .local v4, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    iget-object v5, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v5, v4}, Landroid/bluetooth/IBluetoothHeadsetClient;->startVoiceRecognition(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1099
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_4d} :catch_4e
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2e .. :try_end_4d} :catch_4e

    return v2

    .line 1100
    .end local v4    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    :catch_4e
    move-exception v4

    .line 1101
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_76
    :goto_76
    return v2
.end method

.method public greylist-max-o stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 9
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 1155
    const-string/jumbo v0, "stopVoiceRecognition()"

    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    .line 1156
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->getService()Landroid/bluetooth/IBluetoothHeadsetClient;

    move-result-object v0

    .line 1157
    .local v0, "service":Landroid/bluetooth/IBluetoothHeadsetClient;
    const/4 v1, 0x0

    .line 1158
    .local v1, "defaultValue":Z
    const/4 v2, 0x0

    const-string v3, "BluetoothHeadsetClient"

    if-nez v0, :cond_22

    .line 1159
    const-string v4, "Proxy not attached to service"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    goto :goto_76

    .line 1161
    :cond_22
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_76

    invoke-static {p1}, Landroid/bluetooth/BluetoothHeadsetClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v4

    if-eqz v4, :cond_76

    .line 1163
    :try_start_2e
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v4

    .line 1164
    .local v4, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    iget-object v5, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v5, v4}, Landroid/bluetooth/IBluetoothHeadsetClient;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1165
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_4d} :catch_4e
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2e .. :try_end_4d} :catch_4e

    return v2

    .line 1166
    .end local v4    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    :catch_4e
    move-exception v4

    .line 1167
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_76
    :goto_76
    return v2
.end method

.method public greylist-max-o terminateCall(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHeadsetClientCall;)Z
    .registers 10
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "call"    # Landroid/bluetooth/BluetoothHeadsetClientCall;

    .line 1353
    const-string/jumbo v0, "terminateCall()"

    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    .line 1354
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->getService()Landroid/bluetooth/IBluetoothHeadsetClient;

    move-result-object v0

    .line 1355
    .local v0, "service":Landroid/bluetooth/IBluetoothHeadsetClient;
    const/4 v1, 0x0

    .line 1356
    .local v1, "defaultValue":Z
    const/4 v2, 0x0

    const-string v3, "BluetoothHeadsetClient"

    if-nez v0, :cond_22

    .line 1357
    const-string v4, "Proxy not attached to service"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1358
    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    goto :goto_76

    .line 1359
    :cond_22
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_76

    invoke-static {p1}, Landroid/bluetooth/BluetoothHeadsetClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v4

    if-eqz v4, :cond_76

    .line 1361
    :try_start_2e
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v4

    .line 1362
    .local v4, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    iget-object v5, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, p2, v5, v4}, Landroid/bluetooth/IBluetoothHeadsetClient;->terminateCall(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHeadsetClientCall;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1363
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_4d} :catch_4e
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2e .. :try_end_4d} :catch_4e

    return v2

    .line 1364
    .end local v4    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    :catch_4e
    move-exception v4

    .line 1365
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_76
    :goto_76
    return v2
.end method
