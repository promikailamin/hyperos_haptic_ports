.class Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;
.super Landroid/telephony/TelephonyCallback;
.source "HearingDevicePhoneCallNotificationController.java"

# interfaces
.implements Landroid/telephony/TelephonyCallback$CallStateListener;


# static fields
.field public static final BUILTIN_MIC:Landroid/media/AudioDeviceAttributes;


# instance fields
.field public mAudioManager:Landroid/media/AudioManager;

.field public final mCommDeviceChangedExecutor:Ljava/util/concurrent/Executor;

.field public final mCommDeviceChangedListener:Landroid/media/AudioManager$OnCommunicationDeviceChangedListener;

.field public final mContext:Landroid/content/Context;

.field public mHearingDevice:Landroid/bluetooth/BluetoothDevice;

.field public mHearingDeviceActionReceiver:Landroid/content/BroadcastReceiver;

.field public mIsCommDeviceChangedRegistered:Z

.field public mIsNotificationShown:Z

.field public mNotificationManager:Landroid/app/NotificationManager;


# direct methods
.method public static synthetic $r8$lambda$8a2Wa2DdipLWj_-n6p0PCH85GjY(Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;Landroid/media/AudioDeviceInfo;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->lambda$new$0(Landroid/media/AudioDeviceInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$N94sfgtU8f4QzmRxLpBL9efKKKE(Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;Landroid/bluetooth/BluetoothAdapter;Landroid/media/AudioDeviceInfo;)Z
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->lambda$getSupportedInputHearingDeviceInfo$3(Landroid/bluetooth/BluetoothAdapter;Landroid/media/AudioDeviceInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$qVcMpu0NUKadzzhWodLdFTcnhWY(Ljava/util/Set;Landroid/media/AudioDeviceInfo;)Z
    .registers 2

    .line 254
    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$yjDjB9XWlgvm7k0KRhylDmmWCPg(Landroid/media/AudioDeviceInfo;)Z
    .registers 2

    .line 253
    invoke-virtual {p0}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result p0

    const/16 v0, 0x1a

    if-ne p0, v0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mshowNotification(Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;Z)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->showNotification(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mswitchToBuiltinMic(Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->switchToBuiltinMic()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mswitchToHearingMic(Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->switchToHearingMic()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 117
    new-instance v0, Landroid/media/AudioDeviceAttributes;

    const/16 v1, 0xf

    const-string v2, ""

    const/4 v3, 0x1

    invoke-direct {v0, v3, v1, v2}, Landroid/media/AudioDeviceAttributes;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->BUILTIN_MIC:Landroid/media/AudioDeviceAttributes;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V
    .registers 4

    .line 130
    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    const/4 v0, 0x0

    .line 127
    iput-boolean v0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mIsCommDeviceChangedRegistered:Z

    .line 128
    iput-boolean v0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mIsNotificationShown:Z

    .line 131
    iput-object p1, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mContext:Landroid/content/Context;

    .line 132
    iput-object p2, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mCommDeviceChangedExecutor:Ljava/util/concurrent/Executor;

    .line 133
    new-instance p1, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;)V

    iput-object p1, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mCommDeviceChangedListener:Landroid/media/AudioManager$OnCommunicationDeviceChangedListener;

    return-void
.end method


# virtual methods
.method public final addOnCommunicationDeviceChangedListenerIfNeeded(Ljava/util/concurrent/Executor;Landroid/media/AudioManager$OnCommunicationDeviceChangedListener;)V
    .registers 4

    .line 188
    iget-boolean v0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mIsCommDeviceChangedRegistered:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 192
    iput-boolean v0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mIsCommDeviceChangedRegistered:Z

    .line 193
    iget-object p0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1, p2}, Landroid/media/AudioManager;->addOnCommunicationDeviceChangedListener(Ljava/util/concurrent/Executor;Landroid/media/AudioManager$OnCommunicationDeviceChangedListener;)V

    return-void
.end method

.method public final buildOpenSettingsAction()Landroid/app/Notification$Action;
    .registers 4

    .line 304
    new-instance v0, Landroid/app/Notification$Action$Builder;

    iget-object v1, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mContext:Landroid/content/Context;

    const v2, 0x10404c2

    .line 305
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.settings.BLUETOOTH_DEVICE_DETAIL_SETTINGS"

    .line 306
    invoke-virtual {p0, v2}, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->createPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p0

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, p0}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v0}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object p0

    return-object p0
.end method

.method public final buildSwitchInputAction(Z)Landroid/app/Notification$Action;
    .registers 5

    const v0, 0x10404c3

    const/4 v1, 0x0

    if-eqz p1, :cond_1c

    .line 297
    new-instance p1, Landroid/app/Notification$Action$Builder;

    iget-object v2, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mContext:Landroid/content/Context;

    .line 296
    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.android.server.accessibility.hearingdevice.action.SWITCH_TO_BUILTIN_MIC"

    .line 297
    invoke-virtual {p0, v2}, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->createPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-direct {p1, v1, v0, p0}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {p1}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object p0

    return-object p0

    .line 300
    :cond_1c
    new-instance p1, Landroid/app/Notification$Action$Builder;

    iget-object v2, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mContext:Landroid/content/Context;

    .line 299
    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.android.server.accessibility.hearingdevice.action.SWITCH_TO_HEARING_MIC"

    .line 300
    invoke-virtual {p0, v2}, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->createPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-direct {p1, v1, v0, p0}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {p1}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object p0

    return-object p0
.end method

.method public final createPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;
    .registers 7

    .line 310
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 312
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v1, :sswitch_data_70

    goto :goto_32

    :sswitch_12
    const-string v1, "com.android.server.accessibility.hearingdevice.action.SWITCH_TO_BUILTIN_MIC"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1b

    goto :goto_32

    :cond_1b
    const/4 v3, 0x2

    goto :goto_32

    :sswitch_1d
    const-string v1, "com.android.server.accessibility.hearingdevice.action.SWITCH_TO_HEARING_MIC"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_26

    goto :goto_32

    :cond_26
    const/4 v3, 0x1

    goto :goto_32

    :sswitch_28
    const-string v1, "com.android.settings.BLUETOOTH_DEVICE_DETAIL_SETTINGS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_31

    goto :goto_32

    :cond_31
    move v3, v2

    :goto_32
    const/high16 p1, 0x4000000

    const/4 v1, 0x0

    packed-switch v3, :pswitch_data_7e

    return-object v1

    .line 314
    :pswitch_39
    iget-object v1, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 315
    iget-object p0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mContext:Landroid/content/Context;

    invoke-static {p0, v2, v0, p1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0

    .line 319
    :pswitch_49
    iget-object v3, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mHearingDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v3, :cond_4e

    return-object v1

    .line 323
    :cond_4e
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 324
    iget-object v3, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mHearingDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    const-string v4, "device_address"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    const-string v3, ":settings:show_fragment_args"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const v1, 0x10008000

    .line 326
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 328
    iget-object p0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mContext:Landroid/content/Context;

    invoke-static {p0, v2, v0, p1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0

    :sswitch_data_70
    .sparse-switch
        -0x6cea1e48 -> :sswitch_28
        0x2c49544e -> :sswitch_1d
        0x641f95bd -> :sswitch_12
    .end sparse-switch

    :pswitch_data_7e
    .packed-switch 0x0
        :pswitch_49
        :pswitch_39
        :pswitch_39
    .end packed-switch
.end method

.method public final createSwitchInputNotification(Z)Landroid/app/Notification;
    .registers 6

    .line 276
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->getSwitchInputMessage(Z)Ljava/lang/CharSequence;

    move-result-object v0

    .line 277
    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mContext:Landroid/content/Context;

    const-string v3, "ACCESSIBILITY_HEARING_DEVICE"

    invoke-direct {v1, v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 279
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->getSwitchInputTitle(Z)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 280
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    const v2, 0x10805e8

    .line 281
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mContext:Landroid/content/Context;

    .line 282
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106001c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    new-instance v2, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v2}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 284
    invoke-virtual {v2, v0}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 285
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    const-string/jumbo v2, "sys"

    .line 286
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    const-string v2, "com.android.settings.BLUETOOTH_DEVICE_DETAIL_SETTINGS"

    .line 287
    invoke-virtual {p0, v2}, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->createPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/app/Notification$Action;

    const/4 v3, 0x0

    .line 288
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->buildSwitchInputAction(Z)Landroid/app/Notification$Action;

    move-result-object p1

    aput-object p1, v2, v3

    .line 289
    invoke-virtual {p0}, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->buildOpenSettingsAction()Landroid/app/Notification$Action;

    move-result-object p0

    aput-object p0, v2, v1

    .line 288
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setActions([Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 290
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method public final dismissNotification()V
    .registers 2

    .line 232
    invoke-virtual {p0}, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->unregisterReceiverIfNeeded()V

    .line 233
    iget-object p0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v0, 0x3f4

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public final dismissNotificationIfNeeded()V
    .registers 2

    .line 216
    iget-boolean v0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mIsNotificationShown:Z

    if-nez v0, :cond_5

    return-void

    .line 220
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->dismissNotification()V

    const/4 v0, 0x0

    .line 221
    iput-boolean v0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mIsNotificationShown:Z

    return-void
.end method

.method public final getSupportedInputHearingDeviceInfo(Ljava/util/List;)Landroid/bluetooth/BluetoothDevice;
    .registers 6

    .line 238
    iget-object v0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mContext:Landroid/content/Context;

    const-class v1, Landroid/bluetooth/BluetoothManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    .line 239
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_12

    return-object v1

    .line 243
    :cond_12
    invoke-virtual {p0}, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->isHapClientSupported()Z

    move-result v2

    if-nez v2, :cond_19

    return-object v1

    .line 247
    :cond_19
    iget-object v2, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x1

    .line 248
    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v2

    .line 247
    invoke-static {v2}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener$$ExternalSyntheticLambda0;-><init>()V

    .line 248
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 249
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 252
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v3, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener$$ExternalSyntheticLambda1;-><init>()V

    .line 253
    invoke-interface {p1, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v3, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener$$ExternalSyntheticLambda2;

    invoke-direct {v3, v2}, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener$$ExternalSyntheticLambda2;-><init>(Ljava/util/Set;)V

    .line 254
    invoke-interface {p1, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v2, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v0}, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;Landroid/bluetooth/BluetoothAdapter;)V

    .line 255
    invoke-interface {p1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 256
    invoke-interface {p0}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object p0

    .line 257
    invoke-virtual {p0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioDeviceInfo;

    if-eqz p0, :cond_6b

    .line 260
    invoke-virtual {p0}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object p0

    .line 259
    invoke-virtual {v0, p0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    return-object p0

    :cond_6b
    return-object v1
.end method

.method public final getSwitchInputMessage(Z)Ljava/lang/CharSequence;
    .registers 2

    if-eqz p1, :cond_c

    .line 390
    iget-object p0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mContext:Landroid/content/Context;

    const p1, 0x10404ca

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 392
    :cond_c
    iget-object p0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mContext:Landroid/content/Context;

    const p1, 0x10404c8

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getSwitchInputTitle(Z)Ljava/lang/CharSequence;
    .registers 2

    if-eqz p1, :cond_c

    .line 382
    iget-object p0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mContext:Landroid/content/Context;

    const p1, 0x10404cb

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 384
    :cond_c
    iget-object p0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mContext:Landroid/content/Context;

    const p1, 0x10404c9

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isHapClientDevice(Landroid/bluetooth/BluetoothAdapter;Landroid/media/AudioDeviceInfo;)Z
    .registers 3

    .line 265
    invoke-virtual {p2}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    .line 266
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object p0

    sget-object p1, Landroid/bluetooth/BluetoothUuid;->HAS:Landroid/os/ParcelUuid;

    invoke-static {p0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isHapClientSupported()Z
    .registers 2

    .line 271
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getSupportedProfiles()Ljava/util/List;

    move-result-object p0

    const/16 v0, 0x1c

    .line 272
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 271
    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final synthetic lambda$getSupportedInputHearingDeviceInfo$3(Landroid/bluetooth/BluetoothAdapter;Landroid/media/AudioDeviceInfo;)Z
    .registers 3

    .line 255
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->isHapClientDevice(Landroid/bluetooth/BluetoothAdapter;Landroid/media/AudioDeviceInfo;)Z

    move-result p0

    return p0
.end method

.method public final synthetic lambda$new$0(Landroid/media/AudioDeviceInfo;)V
    .registers 2

    if-nez p1, :cond_3

    return-void

    .line 137
    :cond_3
    invoke-static {p1}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->getSupportedInputHearingDeviceInfo(Ljava/util/List;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mHearingDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz p1, :cond_13

    .line 139
    invoke-virtual {p0}, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->showNotificationIfNeeded()V

    return-void

    .line 141
    :cond_13
    invoke-virtual {p0}, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->dismissNotificationIfNeeded()V

    return-void
.end method

.method public onCallStateChanged(I)V
    .registers 4

    .line 153
    iget-object v0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mNotificationManager:Landroid/app/NotificationManager;

    .line 154
    iget-object v0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mContext:Landroid/content/Context;

    const-class v1, Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mAudioManager:Landroid/media/AudioManager;

    .line 155
    iget-object v1, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v1, :cond_5b

    if-nez v0, :cond_1f

    goto :goto_5b

    :cond_1f
    if-nez p1, :cond_37

    .line 161
    iget-object v0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mCommDeviceChangedListener:Landroid/media/AudioManager$OnCommunicationDeviceChangedListener;

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->removeOnCommunicationDeviceChangedListenerIfNeeded(Landroid/media/AudioManager$OnCommunicationDeviceChangedListener;)V

    .line 162
    invoke-virtual {p0}, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->dismissNotificationIfNeeded()V

    .line 164
    iget-object v0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mHearingDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_34

    .line 166
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->isMicrophonePreferredForCalls()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->setMicrophonePreferredForCalls(Z)V

    :cond_34
    const/4 v0, 0x0

    .line 168
    iput-object v0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mHearingDevice:Landroid/bluetooth/BluetoothDevice;

    :cond_37
    const/4 v0, 0x2

    if-ne p1, v0, :cond_5a

    .line 171
    iget-object p1, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p1}, Landroid/media/AudioManager;->getCommunicationDevice()Landroid/media/AudioDeviceInfo;

    move-result-object p1

    if-nez p1, :cond_43

    goto :goto_5a

    .line 175
    :cond_43
    invoke-static {p1}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->getSupportedInputHearingDeviceInfo(Ljava/util/List;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mHearingDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz p1, :cond_53

    .line 177
    invoke-virtual {p0}, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->showNotificationIfNeeded()V

    return-void

    .line 179
    :cond_53
    iget-object p1, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mCommDeviceChangedExecutor:Ljava/util/concurrent/Executor;

    iget-object v0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mCommDeviceChangedListener:Landroid/media/AudioManager$OnCommunicationDeviceChangedListener;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->addOnCommunicationDeviceChangedListenerIfNeeded(Ljava/util/concurrent/Executor;Landroid/media/AudioManager$OnCommunicationDeviceChangedListener;)V

    :cond_5a
    :goto_5a
    return-void

    .line 156
    :cond_5b
    :goto_5b
    const-string p0, "HearingDevice_CallStateListener"

    const-string p1, "NotificationManager or AudioManager is not prepare yet."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final registerReceiverIfNeeded()V
    .registers 9

    .line 361
    iget-object v0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mHearingDeviceActionReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_5

    return-void

    .line 364
    :cond_5
    new-instance v0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener$HearingDeviceActionReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener$HearingDeviceActionReceiver;-><init>(Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController-IA;)V

    iput-object v0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mHearingDeviceActionReceiver:Landroid/content/BroadcastReceiver;

    .line 365
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 366
    const-string v0, "com.android.server.accessibility.hearingdevice.action.SWITCH_TO_BUILTIN_MIC"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 367
    const-string v0, "com.android.server.accessibility.hearingdevice.action.SWITCH_TO_HEARING_MIC"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 368
    iget-object v2, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mHearingDeviceActionReceiver:Landroid/content/BroadcastReceiver;

    const/4 v6, 0x0

    const/4 v7, 0x4

    const-string v5, "android.permission.MANAGE_ACCESSIBILITY"

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    return-void
.end method

.method public final removeOnCommunicationDeviceChangedListenerIfNeeded(Landroid/media/AudioManager$OnCommunicationDeviceChangedListener;)V
    .registers 3

    .line 198
    iget-boolean v0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mIsCommDeviceChangedRegistered:Z

    if-nez v0, :cond_5

    return-void

    .line 202
    :cond_5
    iget-object v0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->removeOnCommunicationDeviceChangedListener(Landroid/media/AudioManager$OnCommunicationDeviceChangedListener;)V

    const/4 p1, 0x0

    .line 203
    iput-boolean p1, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mIsCommDeviceChangedRegistered:Z

    return-void
.end method

.method public final setMicrophonePreferredForCalls(Z)V
    .registers 2

    if-eqz p1, :cond_6

    .line 337
    invoke-virtual {p0}, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->switchToHearingMic()V

    return-void

    .line 339
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->switchToBuiltinMic()V

    return-void
.end method

.method public final showNotification(Z)V
    .registers 4

    .line 225
    iget-object v0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0x3f4

    .line 227
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->createSwitchInputNotification(Z)Landroid/app/Notification;

    move-result-object p1

    .line 225
    invoke-virtual {v0, v1, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 228
    invoke-virtual {p0}, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->registerReceiverIfNeeded()V

    return-void
.end method

.method public final showNotificationIfNeeded()V
    .registers 2

    .line 207
    iget-boolean v0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mIsNotificationShown:Z

    if-eqz v0, :cond_5

    return-void

    .line 211
    :cond_5
    iget-object v0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mHearingDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->isMicrophonePreferredForCalls()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->showNotification(Z)V

    const/4 v0, 0x1

    .line 212
    iput-boolean v0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mIsNotificationShown:Z

    return-void
.end method

.method public final switchToBuiltinMic()V
    .registers 3

    .line 345
    iget-object v0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->clearPreferredDevicesForCapturePreset(I)Z

    .line 347
    iget-object p0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mAudioManager:Landroid/media/AudioManager;

    sget-object v0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->BUILTIN_MIC:Landroid/media/AudioDeviceAttributes;

    invoke-virtual {p0, v1, v0}, Landroid/media/AudioManager;->setPreferredDeviceForCapturePreset(ILandroid/media/AudioDeviceAttributes;)Z

    return-void
.end method

.method public final switchToHearingMic()V
    .registers 2

    .line 356
    iget-object p0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mAudioManager:Landroid/media/AudioManager;

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->clearPreferredDevicesForCapturePreset(I)Z

    return-void
.end method

.method public final unregisterReceiverIfNeeded()V
    .registers 3

    .line 373
    iget-object v0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mHearingDeviceActionReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_5

    return-void

    .line 376
    :cond_5
    iget-object v1, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 377
    iput-object v0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mHearingDeviceActionReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method
