.class public Lcom/android/server/bluetooth/BluetoothAirplaneModeListener;
.super Ljava/lang/Object;
.source "BluetoothAirplaneModeListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/bluetooth/BluetoothAirplaneModeListener$BluetoothAirplaneModeHandler;
    }
.end annotation


# static fields
.field static final MAX_TOAST_COUNT:I = 0xa

.field private static final MSG_AIRPLANE_MODE_CHANGED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BluetoothAirplaneModeListener"

.field static final TOAST_COUNT:Ljava/lang/String; = "bluetooth_airplane_toast_count"


# instance fields
.field private mAirplaneHelper:Lcom/android/server/bluetooth/BluetoothModeChangeHelper;

.field private final mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private final mBluetoothManager:Lcom/android/server/bluetooth/BluetoothManagerService;

.field private final mHandler:Lcom/android/server/bluetooth/BluetoothAirplaneModeListener$BluetoothAirplaneModeHandler;

.field mToastCount:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/bluetooth/BluetoothAirplaneModeListener;)Lcom/android/server/bluetooth/BluetoothAirplaneModeListener$BluetoothAirplaneModeHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/bluetooth/BluetoothAirplaneModeListener;->mHandler:Lcom/android/server/bluetooth/BluetoothAirplaneModeListener$BluetoothAirplaneModeHandler;

    return-object p0
.end method

.method constructor <init>(Lcom/android/server/bluetooth/BluetoothManagerService;Landroid/os/Looper;Landroid/content/Context;)V
    .registers 8
    .param p1, "service"    # Lcom/android/server/bluetooth/BluetoothManagerService;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "context"    # Landroid/content/Context;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/bluetooth/BluetoothAirplaneModeListener;->mToastCount:I

    .line 63
    new-instance v0, Lcom/android/server/bluetooth/BluetoothAirplaneModeListener$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/bluetooth/BluetoothAirplaneModeListener$1;-><init>(Lcom/android/server/bluetooth/BluetoothAirplaneModeListener;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/bluetooth/BluetoothAirplaneModeListener;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 55
    iput-object p1, p0, Lcom/android/server/bluetooth/BluetoothAirplaneModeListener;->mBluetoothManager:Lcom/android/server/bluetooth/BluetoothManagerService;

    .line 57
    new-instance v1, Lcom/android/server/bluetooth/BluetoothAirplaneModeListener$BluetoothAirplaneModeHandler;

    invoke-direct {v1, p0, p2}, Lcom/android/server/bluetooth/BluetoothAirplaneModeListener$BluetoothAirplaneModeHandler;-><init>(Lcom/android/server/bluetooth/BluetoothAirplaneModeListener;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/bluetooth/BluetoothAirplaneModeListener;->mHandler:Lcom/android/server/bluetooth/BluetoothAirplaneModeListener$BluetoothAirplaneModeHandler;

    .line 58
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 59
    const-string v2, "airplane_mode_on"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 58
    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 61
    return-void
.end method


# virtual methods
.method handleAirplaneModeChange()V
    .registers 4

    .line 113
    invoke-virtual {p0}, Lcom/android/server/bluetooth/BluetoothAirplaneModeListener;->shouldSkipAirplaneModeChange()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 114
    const-string v0, "BluetoothAirplaneModeListener"

    const-string v1, "Ignore airplane mode change"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothAirplaneModeListener;->mAirplaneHelper:Lcom/android/server/bluetooth/BluetoothModeChangeHelper;

    const/4 v1, 0x2

    const-string v2, "bluetooth_on"

    invoke-virtual {v0, v2, v1}, Lcom/android/server/bluetooth/BluetoothModeChangeHelper;->setSettingsInt(Ljava/lang/String;I)V

    .line 120
    invoke-virtual {p0}, Lcom/android/server/bluetooth/BluetoothAirplaneModeListener;->shouldPopToast()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 121
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothAirplaneModeListener;->mAirplaneHelper:Lcom/android/server/bluetooth/BluetoothModeChangeHelper;

    invoke-virtual {v0}, Lcom/android/server/bluetooth/BluetoothModeChangeHelper;->showToastMessage()V

    .line 123
    :cond_20
    return-void

    .line 125
    :cond_21
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothAirplaneModeListener;->mAirplaneHelper:Lcom/android/server/bluetooth/BluetoothModeChangeHelper;

    if-eqz v0, :cond_2a

    .line 126
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothAirplaneModeListener;->mBluetoothManager:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/bluetooth/BluetoothModeChangeHelper;->onAirplaneModeChanged(Lcom/android/server/bluetooth/BluetoothManagerService;)V

    .line 128
    :cond_2a
    return-void
.end method

.method shouldPopToast()Z
    .registers 5

    .line 102
    iget v0, p0, Lcom/android/server/bluetooth/BluetoothAirplaneModeListener;->mToastCount:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_8

    .line 103
    const/4 v0, 0x0

    return v0

    .line 105
    :cond_8
    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/bluetooth/BluetoothAirplaneModeListener;->mToastCount:I

    .line 106
    iget-object v2, p0, Lcom/android/server/bluetooth/BluetoothAirplaneModeListener;->mAirplaneHelper:Lcom/android/server/bluetooth/BluetoothModeChangeHelper;

    const-string v3, "bluetooth_airplane_toast_count"

    invoke-virtual {v2, v3, v0}, Lcom/android/server/bluetooth/BluetoothModeChangeHelper;->setSettingsInt(Ljava/lang/String;I)V

    .line 107
    return v1
.end method

.method shouldSkipAirplaneModeChange()Z
    .registers 3

    .line 132
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothAirplaneModeListener;->mAirplaneHelper:Lcom/android/server/bluetooth/BluetoothModeChangeHelper;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 133
    return v1

    .line 135
    :cond_6
    invoke-virtual {v0}, Lcom/android/server/bluetooth/BluetoothModeChangeHelper;->isBluetoothOn()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothAirplaneModeListener;->mAirplaneHelper:Lcom/android/server/bluetooth/BluetoothModeChangeHelper;

    invoke-virtual {v0}, Lcom/android/server/bluetooth/BluetoothModeChangeHelper;->isAirplaneModeOn()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothAirplaneModeListener;->mAirplaneHelper:Lcom/android/server/bluetooth/BluetoothModeChangeHelper;

    .line 136
    invoke-virtual {v0}, Lcom/android/server/bluetooth/BluetoothModeChangeHelper;->isMediaProfileConnected()Z

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_1f

    .line 139
    :cond_1d
    const/4 v0, 0x1

    return v0

    .line 137
    :cond_1f
    :goto_1f
    return v1
.end method

.method start(Lcom/android/server/bluetooth/BluetoothModeChangeHelper;)V
    .registers 4
    .param p1, "helper"    # Lcom/android/server/bluetooth/BluetoothModeChangeHelper;

    .line 95
    const-string v0, "BluetoothAirplaneModeListener"

    const-string/jumbo v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iput-object p1, p0, Lcom/android/server/bluetooth/BluetoothAirplaneModeListener;->mAirplaneHelper:Lcom/android/server/bluetooth/BluetoothModeChangeHelper;

    .line 97
    const-string v0, "bluetooth_airplane_toast_count"

    invoke-virtual {p1, v0}, Lcom/android/server/bluetooth/BluetoothModeChangeHelper;->getSettingsInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/bluetooth/BluetoothAirplaneModeListener;->mToastCount:I

    .line 98
    return-void
.end method
