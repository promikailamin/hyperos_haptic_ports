.class Lcom/android/server/policy/LegacyGlobalActions;
.super Ljava/lang/Object;
.source "LegacyGlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/LegacyGlobalActions$SilentModeTriStateAction;,
        Lcom/android/server/policy/LegacyGlobalActions$SilentModeToggleAction;,
        Lcom/android/server/policy/LegacyGlobalActions$BugReportAction;
    }
.end annotation


# static fields
.field private static final DIALOG_DISMISS_DELAY:I = 0x12c

.field private static final GLOBAL_ACTION_KEY_AIRPLANE:Ljava/lang/String; = "airplane"

.field private static final GLOBAL_ACTION_KEY_ASSIST:Ljava/lang/String; = "assist"

.field private static final GLOBAL_ACTION_KEY_BUGREPORT:Ljava/lang/String; = "bugreport"

.field private static final GLOBAL_ACTION_KEY_LOCKDOWN:Ljava/lang/String; = "lockdown"

.field private static final GLOBAL_ACTION_KEY_POWER:Ljava/lang/String; = "power"

.field private static final GLOBAL_ACTION_KEY_RESTART:Ljava/lang/String; = "restart"

.field private static final GLOBAL_ACTION_KEY_SETTINGS:Ljava/lang/String; = "settings"

.field private static final GLOBAL_ACTION_KEY_SILENT:Ljava/lang/String; = "silent"

.field private static final GLOBAL_ACTION_KEY_USERS:Ljava/lang/String; = "users"

.field private static final GLOBAL_ACTION_KEY_VOICEASSIST:Ljava/lang/String; = "voiceassist"

.field private static final MESSAGE_DISMISS:I = 0x0

.field private static final MESSAGE_REFRESH:I = 0x1

.field private static final MESSAGE_SHOW:I = 0x2

.field private static final SHOW_SILENT_TOGGLE:Z = true

.field private static final TAG:Ljava/lang/String; = "LegacyGlobalActions"


# instance fields
.field private mAdapter:Lcom/android/internal/globalactions/ActionsAdapter;

.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private mAirplaneModeOn:Lcom/android/internal/globalactions/ToggleAction;

.field private mAirplaneState:Lcom/android/internal/globalactions/ToggleAction$State;

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mDeviceProvisioned:Z

.field private mDialog:Lcom/android/internal/globalactions/ActionsDialog;

.field private final mDreamManager:Landroid/service/dreams/IDreamManager;

.field private final mEmergencyAffordanceManager:Lcom/android/internal/util/EmergencyAffordanceManager;

.field private mHandler:Landroid/os/Handler;

.field private final mHasTelephony:Z

.field private mHasVibrator:Z

.field private mIsWaitingForEcmExit:Z

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/globalactions/Action;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyguardShowing:Z

.field private final mOnDismiss:Ljava/lang/Runnable;

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mRingerModeReceiver:Landroid/content/BroadcastReceiver;

.field private final mShowSilentToggle:Z

.field private mSilentModeAction:Lcom/android/internal/globalactions/Action;

.field private final mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAdapter(Lcom/android/server/policy/LegacyGlobalActions;)Lcom/android/internal/globalactions/ActionsAdapter;
    .registers 1

    iget-object p0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAdapter:Lcom/android/internal/globalactions/ActionsAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAirplaneModeOn(Lcom/android/server/policy/LegacyGlobalActions;)Lcom/android/internal/globalactions/ToggleAction;
    .registers 1

    iget-object p0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAirplaneModeOn:Lcom/android/internal/globalactions/ToggleAction;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAirplaneState(Lcom/android/server/policy/LegacyGlobalActions;)Lcom/android/internal/globalactions/ToggleAction$State;
    .registers 1

    iget-object p0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAirplaneState:Lcom/android/internal/globalactions/ToggleAction$State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAudioManager(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/media/AudioManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAudioManager:Landroid/media/AudioManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDialog(Lcom/android/server/policy/LegacyGlobalActions;)Lcom/android/internal/globalactions/ActionsDialog;
    .registers 1

    iget-object p0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDialog:Lcom/android/internal/globalactions/ActionsDialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEmergencyAffordanceManager(Lcom/android/server/policy/LegacyGlobalActions;)Lcom/android/internal/util/EmergencyAffordanceManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mEmergencyAffordanceManager:Lcom/android/internal/util/EmergencyAffordanceManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHasTelephony(Lcom/android/server/policy/LegacyGlobalActions;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mHasTelephony:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsWaitingForEcmExit(Lcom/android/server/policy/LegacyGlobalActions;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mIsWaitingForEcmExit:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmAirplaneState(Lcom/android/server/policy/LegacyGlobalActions;Lcom/android/internal/globalactions/ToggleAction$State;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAirplaneState:Lcom/android/internal/globalactions/ToggleAction$State;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDialog(Lcom/android/server/policy/LegacyGlobalActions;Lcom/android/internal/globalactions/ActionsDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDialog:Lcom/android/internal/globalactions/ActionsDialog;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsWaitingForEcmExit(Lcom/android/server/policy/LegacyGlobalActions;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mIsWaitingForEcmExit:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mchangeAirplaneModeSystemSetting(Lcom/android/server/policy/LegacyGlobalActions;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/policy/LegacyGlobalActions;->changeAirplaneModeSystemSetting(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleShow(Lcom/android/server/policy/LegacyGlobalActions;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->handleShow()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monAirplaneModeChanged(Lcom/android/server/policy/LegacyGlobalActions;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->onAirplaneModeChanged()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrefreshSilentMode(Lcom/android/server/policy/LegacyGlobalActions;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->refreshSilentMode()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;Ljava/lang/Runnable;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManagerFuncs"    # Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;
    .param p3, "onDismiss"    # Ljava/lang/Runnable;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mKeyguardShowing:Z

    .line 113
    iput-boolean v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDeviceProvisioned:Z

    .line 114
    sget-object v1, Lcom/android/internal/globalactions/ToggleAction$State;->Off:Lcom/android/internal/globalactions/ToggleAction$State;

    iput-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAirplaneState:Lcom/android/internal/globalactions/ToggleAction$State;

    .line 115
    iput-boolean v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mIsWaitingForEcmExit:Z

    .line 740
    new-instance v1, Lcom/android/server/policy/LegacyGlobalActions$9;

    invoke-direct {v1, p0}, Lcom/android/server/policy/LegacyGlobalActions$9;-><init>(Lcom/android/server/policy/LegacyGlobalActions;)V

    iput-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 762
    new-instance v1, Lcom/android/server/policy/LegacyGlobalActions$10;

    invoke-direct {v1, p0}, Lcom/android/server/policy/LegacyGlobalActions$10;-><init>(Lcom/android/server/policy/LegacyGlobalActions;)V

    iput-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 773
    new-instance v1, Lcom/android/server/policy/LegacyGlobalActions$11;

    invoke-direct {v1, p0}, Lcom/android/server/policy/LegacyGlobalActions$11;-><init>(Lcom/android/server/policy/LegacyGlobalActions;)V

    iput-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    .line 782
    new-instance v1, Lcom/android/server/policy/LegacyGlobalActions$12;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/server/policy/LegacyGlobalActions$12;-><init>(Lcom/android/server/policy/LegacyGlobalActions;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 794
    new-instance v1, Lcom/android/server/policy/LegacyGlobalActions$13;

    invoke-direct {v1, p0}, Lcom/android/server/policy/LegacyGlobalActions$13;-><init>(Lcom/android/server/policy/LegacyGlobalActions;)V

    iput-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mHandler:Landroid/os/Handler;

    .line 126
    iput-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    .line 127
    iput-object p2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    .line 128
    iput-object p3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mOnDismiss:Ljava/lang/Runnable;

    .line 129
    const-string v1, "audio"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAudioManager:Landroid/media/AudioManager;

    .line 130
    nop

    .line 131
    const-string v1, "dreams"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 130
    invoke-static {v1}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    .line 134
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 135
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 136
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 137
    const-string v2, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    iget-object v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x2

    move-object v2, p1

    move-object v5, v1

    invoke-virtual/range {v2 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 144
    nop

    .line 145
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.hardware.telephony"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mHasTelephony:Z

    .line 148
    nop

    .line 149
    const-string/jumbo v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 150
    .local v2, "telephonyManager":Landroid/telephony/TelephonyManager;
    iget-object v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 151
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 152
    const-string v5, "airplane_mode_on"

    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 151
    invoke-virtual {v3, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 154
    const-string/jumbo v3, "vibrator"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    .line 155
    .local v3, "vibrator":Landroid/os/Vibrator;
    if-eqz v3, :cond_b1

    invoke-virtual {v3}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v5

    if-eqz v5, :cond_b1

    move v0, v4

    :cond_b1
    iput-boolean v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mHasVibrator:Z

    .line 157
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x11101e9

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    xor-int/2addr v0, v4

    iput-boolean v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mShowSilentToggle:Z

    .line 160
    new-instance v0, Lcom/android/internal/util/EmergencyAffordanceManager;

    invoke-direct {v0, p1}, Lcom/android/internal/util/EmergencyAffordanceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mEmergencyAffordanceManager:Lcom/android/internal/util/EmergencyAffordanceManager;

    .line 161
    return-void
.end method

.method private addUsersToMenu(Ljava/util/ArrayList;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/globalactions/Action;",
            ">;)V"
        }
    .end annotation

    .line 544
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/globalactions/Action;>;"
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 545
    .local v0, "um":Landroid/os/UserManager;
    invoke-virtual {v0}, Landroid/os/UserManager;->isUserSwitcherEnabled()Z

    move-result v1

    if-eqz v1, :cond_80

    .line 546
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    .line 547
    .local v1, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 548
    .local v2, "currentUser":Landroid/content/pm/UserInfo;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_80

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 549
    .local v4, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->supportsSwitchToByUser()Z

    move-result v5

    if-eqz v5, :cond_7f

    .line 550
    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v2, :cond_38

    .line 551
    iget v7, v4, Landroid/content/pm/UserInfo;->id:I

    if-nez v7, :cond_3f

    goto :goto_3e

    :cond_38
    iget v7, v2, Landroid/content/pm/UserInfo;->id:I

    iget v8, v4, Landroid/content/pm/UserInfo;->id:I

    if-ne v7, v8, :cond_3f

    :goto_3e
    goto :goto_40

    :cond_3f
    move v5, v6

    :goto_40
    move v11, v5

    .line 552
    .local v11, "isCurrentUser":Z
    iget-object v5, v4, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-eqz v5, :cond_4d

    iget-object v5, v4, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    invoke-static {v5}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v8, v5

    goto :goto_4f

    .line 553
    :cond_4d
    const/4 v5, 0x0

    move-object v8, v5

    :goto_4f
    nop

    .line 554
    .local v8, "icon":Landroid/graphics/drawable/Drawable;
    new-instance v12, Lcom/android/server/policy/LegacyGlobalActions$8;

    const v7, 0x10804c7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 556
    iget-object v6, v4, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    if-eqz v6, :cond_61

    iget-object v6, v4, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    goto :goto_63

    :cond_61
    const-string v6, "Primary"

    :goto_63
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 557
    if-eqz v11, :cond_6c

    const-string v6, " \u2714"

    goto :goto_6e

    :cond_6c
    const-string v6, ""

    :goto_6e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v5, v12

    move-object v6, p0

    move-object v10, v4

    invoke-direct/range {v5 .. v10}, Lcom/android/server/policy/LegacyGlobalActions$8;-><init>(Lcom/android/server/policy/LegacyGlobalActions;ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/content/pm/UserInfo;)V

    .line 577
    .local v5, "switchToUser":Lcom/android/internal/globalactions/SinglePressAction;
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 579
    .end local v4    # "user":Landroid/content/pm/UserInfo;
    .end local v5    # "switchToUser":Lcom/android/internal/globalactions/SinglePressAction;
    .end local v8    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v11    # "isCurrentUser":Z
    :cond_7f
    goto :goto_1d

    .line 581
    .end local v1    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v2    # "currentUser":Landroid/content/pm/UserInfo;
    :cond_80
    return-void
.end method

.method private awakenIfNecessary()V
    .registers 2

    .line 181
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    if-eqz v0, :cond_11

    .line 183
    :try_start_4
    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->isDreaming()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 184
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_f} :catch_10

    .line 188
    :cond_f
    goto :goto_11

    .line 186
    :catch_10
    move-exception v0

    .line 190
    :cond_11
    :goto_11
    return-void
.end method

.method private changeAirplaneModeSystemSetting(Z)V
    .registers 5
    .param p1, "on"    # Z

    .line 831
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    .line 832
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 834
    nop

    .line 831
    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 835
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 836
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 837
    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 838
    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 839
    iget-boolean v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mHasTelephony:Z

    if-nez v1, :cond_32

    .line 840
    if-eqz p1, :cond_2e

    sget-object v1, Lcom/android/internal/globalactions/ToggleAction$State;->On:Lcom/android/internal/globalactions/ToggleAction$State;

    goto :goto_30

    :cond_2e
    sget-object v1, Lcom/android/internal/globalactions/ToggleAction$State;->Off:Lcom/android/internal/globalactions/ToggleAction$State;

    :goto_30
    iput-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAirplaneState:Lcom/android/internal/globalactions/ToggleAction$State;

    .line 842
    :cond_32
    return-void
.end method

.method private createDialog()Lcom/android/internal/globalactions/ActionsDialog;
    .registers 12

    .line 220
    iget-boolean v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mHasVibrator:Z

    if-nez v0, :cond_c

    .line 221
    new-instance v0, Lcom/android/server/policy/LegacyGlobalActions$SilentModeToggleAction;

    invoke-direct {v0, p0}, Lcom/android/server/policy/LegacyGlobalActions$SilentModeToggleAction;-><init>(Lcom/android/server/policy/LegacyGlobalActions;)V

    iput-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mSilentModeAction:Lcom/android/internal/globalactions/Action;

    goto :goto_19

    .line 223
    :cond_c
    new-instance v0, Lcom/android/server/policy/LegacyGlobalActions$SilentModeTriStateAction;

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/policy/LegacyGlobalActions$SilentModeTriStateAction;-><init>(Landroid/content/Context;Landroid/media/AudioManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mSilentModeAction:Lcom/android/internal/globalactions/Action;

    .line 225
    :goto_19
    new-instance v0, Lcom/android/server/policy/LegacyGlobalActions$1;

    const v6, 0x10803e5

    const v7, 0x10803e7

    const v8, 0x1040455

    const v9, 0x1040454

    const v10, 0x1040453

    move-object v4, v0

    move-object v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/server/policy/LegacyGlobalActions$1;-><init>(Lcom/android/server/policy/LegacyGlobalActions;IIIII)V

    iput-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAirplaneModeOn:Lcom/android/internal/globalactions/ToggleAction;

    .line 267
    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->onAirplaneModeChanged()V

    .line 269
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItems:Ljava/util/ArrayList;

    .line 270
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070072

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 273
    .local v0, "defaultActions":[Ljava/lang/String;
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 274
    .local v1, "addedKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4e
    array-length v3, v0

    const/4 v4, 0x0

    if-ge v2, v3, :cond_15d

    .line 275
    aget-object v3, v0, v2

    .line 276
    .local v3, "actionKey":Ljava/lang/String;
    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5c

    .line 278
    goto/16 :goto_159

    .line 280
    :cond_5c
    const-string/jumbo v5, "power"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_75

    .line 281
    iget-object v4, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItems:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/server/policy/PowerAction;

    iget-object v6, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/policy/LegacyGlobalActions;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-direct {v5, v6, v7}, Lcom/android/server/policy/PowerAction;-><init>(Landroid/content/Context;Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_156

    .line 282
    :cond_75
    const-string v5, "airplane"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_86

    .line 283
    iget-object v4, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItems:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAirplaneModeOn:Lcom/android/internal/globalactions/ToggleAction;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_156

    .line 284
    :cond_86
    const-string v5, "bugreport"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ae

    .line 285
    iget-object v5, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "bugreport_in_power_menu"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_156

    .line 286
    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->isCurrentUserOwner()Z

    move-result v4

    if-eqz v4, :cond_156

    .line 287
    iget-object v4, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItems:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/server/policy/LegacyGlobalActions$BugReportAction;

    invoke-direct {v5, p0}, Lcom/android/server/policy/LegacyGlobalActions$BugReportAction;-><init>(Lcom/android/server/policy/LegacyGlobalActions;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_156

    .line 289
    :cond_ae
    const-string/jumbo v5, "silent"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c4

    .line 290
    iget-boolean v4, p0, Lcom/android/server/policy/LegacyGlobalActions;->mShowSilentToggle:Z

    if-eqz v4, :cond_156

    .line 291
    iget-object v4, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItems:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/policy/LegacyGlobalActions;->mSilentModeAction:Lcom/android/internal/globalactions/Action;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_156

    .line 293
    :cond_c4
    const-string/jumbo v5, "users"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_dc

    .line 294
    const-string v5, "fw.power_user_switcher"

    invoke-static {v5, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_156

    .line 295
    iget-object v4, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Lcom/android/server/policy/LegacyGlobalActions;->addUsersToMenu(Ljava/util/ArrayList;)V

    goto/16 :goto_156

    .line 297
    :cond_dc
    const-string/jumbo v4, "settings"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ef

    .line 298
    iget-object v4, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->getSettingsAction()Lcom/android/internal/globalactions/Action;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_156

    .line 299
    :cond_ef
    const-string v4, "lockdown"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_101

    .line 300
    iget-object v4, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->getLockdownAction()Lcom/android/internal/globalactions/Action;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_156

    .line 301
    :cond_101
    const-string/jumbo v4, "voiceassist"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_114

    .line 302
    iget-object v4, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->getVoiceAssistAction()Lcom/android/internal/globalactions/Action;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_156

    .line 303
    :cond_114
    const-string v4, "assist"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_126

    .line 304
    iget-object v4, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->getAssistAction()Lcom/android/internal/globalactions/Action;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_156

    .line 305
    :cond_126
    const-string/jumbo v4, "restart"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13e

    .line 306
    iget-object v4, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItems:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/server/policy/RestartAction;

    iget-object v6, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/policy/LegacyGlobalActions;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-direct {v5, v6, v7}, Lcom/android/server/policy/RestartAction;-><init>(Landroid/content/Context;Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_156

    .line 308
    :cond_13e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid global action key "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "LegacyGlobalActions"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_156
    :goto_156
    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 274
    .end local v3    # "actionKey":Ljava/lang/String;
    :goto_159
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_4e

    .line 314
    .end local v2    # "i":I
    :cond_15d
    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mEmergencyAffordanceManager:Lcom/android/internal/util/EmergencyAffordanceManager;

    invoke-virtual {v2}, Lcom/android/internal/util/EmergencyAffordanceManager;->needsEmergencyAffordance()Z

    move-result v2

    if-eqz v2, :cond_16e

    .line 315
    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->getEmergencyAction()Lcom/android/internal/globalactions/Action;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    :cond_16e
    new-instance v2, Lcom/android/internal/globalactions/ActionsAdapter;

    iget-object v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItems:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/server/policy/LegacyGlobalActions$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0}, Lcom/android/server/policy/LegacyGlobalActions$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/LegacyGlobalActions;)V

    new-instance v7, Lcom/android/server/policy/LegacyGlobalActions$$ExternalSyntheticLambda1;

    invoke-direct {v7, p0}, Lcom/android/server/policy/LegacyGlobalActions$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/policy/LegacyGlobalActions;)V

    invoke-direct {v2, v3, v5, v6, v7}, Lcom/android/internal/globalactions/ActionsAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/function/BooleanSupplier;Ljava/util/function/BooleanSupplier;)V

    iput-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAdapter:Lcom/android/internal/globalactions/ActionsAdapter;

    .line 321
    new-instance v2, Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/app/AlertController$AlertParams;-><init>(Landroid/content/Context;)V

    .line 322
    .local v2, "params":Lcom/android/internal/app/AlertController$AlertParams;
    iget-object v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAdapter:Lcom/android/internal/globalactions/ActionsAdapter;

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 323
    iput-object p0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 324
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mForceInverseBackground:Z

    .line 326
    new-instance v5, Lcom/android/internal/globalactions/ActionsDialog;

    iget-object v6, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6, v2}, Lcom/android/internal/globalactions/ActionsDialog;-><init>(Landroid/content/Context;Lcom/android/internal/app/AlertController$AlertParams;)V

    .line 327
    .local v5, "dialog":Lcom/android/internal/globalactions/ActionsDialog;
    invoke-virtual {v5, v4}, Lcom/android/internal/globalactions/ActionsDialog;->setCanceledOnTouchOutside(Z)V

    .line 329
    invoke-virtual {v5}, Lcom/android/internal/globalactions/ActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 330
    invoke-virtual {v5}, Lcom/android/internal/globalactions/ActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/ListView;->setLongClickable(Z)V

    .line 331
    invoke-virtual {v5}, Lcom/android/internal/globalactions/ActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v3

    new-instance v4, Lcom/android/server/policy/LegacyGlobalActions$2;

    invoke-direct {v4, p0}, Lcom/android/server/policy/LegacyGlobalActions$2;-><init>(Lcom/android/server/policy/LegacyGlobalActions;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 343
    invoke-virtual {v5}, Lcom/android/internal/globalactions/ActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 345
    invoke-virtual {v5}, Lcom/android/internal/globalactions/ActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/high16 v4, 0x20000

    invoke-virtual {v3, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 347
    invoke-virtual {v5, p0}, Lcom/android/internal/globalactions/ActionsDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 349
    return-object v5
.end method

.method private getAssistAction()Lcom/android/internal/globalactions/Action;
    .registers 4

    .line 461
    new-instance v0, Lcom/android/server/policy/LegacyGlobalActions$5;

    const v1, 0x108032a

    const v2, 0x1040442

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/LegacyGlobalActions$5;-><init>(Lcom/android/server/policy/LegacyGlobalActions;II)V

    return-object v0
.end method

.method private getCurrentUser()Landroid/content/pm/UserInfo;
    .registers 3

    .line 532
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 533
    :catch_9
    move-exception v0

    .line 534
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private getEmergencyAction()Lcom/android/internal/globalactions/Action;
    .registers 4

    .line 441
    new-instance v0, Lcom/android/server/policy/LegacyGlobalActions$4;

    const v1, 0x10802c8

    const v2, 0x1040444

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/LegacyGlobalActions$4;-><init>(Lcom/android/server/policy/LegacyGlobalActions;II)V

    return-object v0
.end method

.method private getLockdownAction()Lcom/android/internal/globalactions/Action;
    .registers 4

    .line 505
    new-instance v0, Lcom/android/server/policy/LegacyGlobalActions$7;

    const v1, 0x108002f

    const v2, 0x1040446

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/LegacyGlobalActions$7;-><init>(Lcom/android/server/policy/LegacyGlobalActions;II)V

    return-object v0
.end method

.method private getSettingsAction()Lcom/android/internal/globalactions/Action;
    .registers 4

    .line 418
    new-instance v0, Lcom/android/server/policy/LegacyGlobalActions$3;

    const v1, 0x108054b

    const v2, 0x104044d

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/LegacyGlobalActions$3;-><init>(Lcom/android/server/policy/LegacyGlobalActions;II)V

    return-object v0
.end method

.method private getVoiceAssistAction()Lcom/android/internal/globalactions/Action;
    .registers 4

    .line 483
    new-instance v0, Lcom/android/server/policy/LegacyGlobalActions$6;

    const v1, 0x1080576

    const v2, 0x1040451

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/LegacyGlobalActions$6;-><init>(Lcom/android/server/policy/LegacyGlobalActions;II)V

    return-object v0
.end method

.method private handleShow()V
    .registers 4

    .line 193
    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->awakenIfNecessary()V

    .line 194
    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->createDialog()Lcom/android/internal/globalactions/ActionsDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDialog:Lcom/android/internal/globalactions/ActionsDialog;

    .line 195
    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->prepareDialog()V

    .line 198
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAdapter:Lcom/android/internal/globalactions/ActionsAdapter;

    invoke-virtual {v0}, Lcom/android/internal/globalactions/ActionsAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_36

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAdapter:Lcom/android/internal/globalactions/ActionsAdapter;

    .line 199
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/globalactions/ActionsAdapter;->getItem(I)Lcom/android/internal/globalactions/Action;

    move-result-object v0

    instance-of v0, v0, Lcom/android/internal/globalactions/SinglePressAction;

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAdapter:Lcom/android/internal/globalactions/ActionsAdapter;

    .line 200
    invoke-virtual {v0, v1}, Lcom/android/internal/globalactions/ActionsAdapter;->getItem(I)Lcom/android/internal/globalactions/Action;

    move-result-object v0

    instance-of v0, v0, Lcom/android/internal/globalactions/LongPressAction;

    if-nez v0, :cond_36

    .line 201
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAdapter:Lcom/android/internal/globalactions/ActionsAdapter;

    invoke-virtual {v0, v1}, Lcom/android/internal/globalactions/ActionsAdapter;->getItem(I)Lcom/android/internal/globalactions/Action;

    move-result-object v0

    check-cast v0, Lcom/android/internal/globalactions/SinglePressAction;

    invoke-virtual {v0}, Lcom/android/internal/globalactions/SinglePressAction;->onPress()V

    goto :goto_64

    .line 203
    :cond_36
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDialog:Lcom/android/internal/globalactions/ActionsDialog;

    if-eqz v0, :cond_64

    .line 204
    invoke-virtual {v0}, Lcom/android/internal/globalactions/ActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 205
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    const-string v1, "LegacyGlobalActions"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDialog:Lcom/android/internal/globalactions/ActionsDialog;

    invoke-virtual {v1}, Lcom/android/internal/globalactions/ActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 207
    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDialog:Lcom/android/internal/globalactions/ActionsDialog;

    invoke-virtual {v1}, Lcom/android/internal/globalactions/ActionsDialog;->show()V

    .line 208
    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDialog:Lcom/android/internal/globalactions/ActionsDialog;

    invoke-virtual {v1}, Lcom/android/internal/globalactions/ActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 212
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_64
    :goto_64
    return-void
.end method

.method private isCurrentUserOwner()Z
    .registers 3

    .line 539
    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 540
    .local v0, "currentUser":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_f

    :cond_d
    const/4 v1, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v1, 0x1

    :goto_10
    return v1
.end method

.method private onAirplaneModeChanged()V
    .registers 4

    .line 817
    iget-boolean v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mHasTelephony:Z

    if-eqz v0, :cond_5

    return-void

    .line 819
    :cond_5
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    .line 820
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 819
    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    move v2, v1

    :cond_16
    move v0, v2

    .line 823
    .local v0, "airplaneModeOn":Z
    if-eqz v0, :cond_1c

    sget-object v1, Lcom/android/internal/globalactions/ToggleAction$State;->On:Lcom/android/internal/globalactions/ToggleAction$State;

    goto :goto_1e

    :cond_1c
    sget-object v1, Lcom/android/internal/globalactions/ToggleAction$State;->Off:Lcom/android/internal/globalactions/ToggleAction$State;

    :goto_1e
    iput-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAirplaneState:Lcom/android/internal/globalactions/ToggleAction$State;

    .line 824
    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAirplaneModeOn:Lcom/android/internal/globalactions/ToggleAction;

    invoke-virtual {v2, v1}, Lcom/android/internal/globalactions/ToggleAction;->updateState(Lcom/android/internal/globalactions/ToggleAction$State;)V

    .line 825
    return-void
.end method

.method private prepareDialog()V
    .registers 4

    .line 584
    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->refreshSilentMode()V

    .line 585
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAirplaneModeOn:Lcom/android/internal/globalactions/ToggleAction;

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAirplaneState:Lcom/android/internal/globalactions/ToggleAction$State;

    invoke-virtual {v0, v1}, Lcom/android/internal/globalactions/ToggleAction;->updateState(Lcom/android/internal/globalactions/ToggleAction$State;)V

    .line 586
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAdapter:Lcom/android/internal/globalactions/ActionsAdapter;

    invoke-virtual {v0}, Lcom/android/internal/globalactions/ActionsAdapter;->notifyDataSetChanged()V

    .line 587
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDialog:Lcom/android/internal/globalactions/ActionsDialog;

    invoke-virtual {v0}, Lcom/android/internal/globalactions/ActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 588
    iget-boolean v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mShowSilentToggle:Z

    if-eqz v0, :cond_2c

    .line 589
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 590
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 592
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_2c
    return-void
.end method

.method private refreshSilentMode()V
    .registers 4

    .line 595
    iget-boolean v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mHasVibrator:Z

    if-nez v0, :cond_1e

    .line 596
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAudioManager:Landroid/media/AudioManager;

    .line 597
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    .line 598
    .local v0, "silentModeOn":Z
    :goto_10
    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mSilentModeAction:Lcom/android/internal/globalactions/Action;

    check-cast v1, Lcom/android/internal/globalactions/ToggleAction;

    .line 599
    if-eqz v0, :cond_19

    sget-object v2, Lcom/android/internal/globalactions/ToggleAction$State;->On:Lcom/android/internal/globalactions/ToggleAction$State;

    goto :goto_1b

    :cond_19
    sget-object v2, Lcom/android/internal/globalactions/ToggleAction$State;->Off:Lcom/android/internal/globalactions/ToggleAction$State;

    .line 598
    :goto_1b
    invoke-virtual {v1, v2}, Lcom/android/internal/globalactions/ToggleAction;->updateState(Lcom/android/internal/globalactions/ToggleAction$State;)V

    .line 601
    .end local v0    # "silentModeOn":Z
    :cond_1e
    return-void
.end method


# virtual methods
.method synthetic lambda$createDialog$0$com-android-server-policy-LegacyGlobalActions()Z
    .registers 2

    .line 319
    iget-boolean v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDeviceProvisioned:Z

    return v0
.end method

.method synthetic lambda$createDialog$1$com-android-server-policy-LegacyGlobalActions()Z
    .registers 2

    .line 319
    iget-boolean v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mKeyguardShowing:Z

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 622
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAdapter:Lcom/android/internal/globalactions/ActionsAdapter;

    invoke-virtual {v0, p2}, Lcom/android/internal/globalactions/ActionsAdapter;->getItem(I)Lcom/android/internal/globalactions/Action;

    move-result-object v0

    instance-of v0, v0, Lcom/android/server/policy/LegacyGlobalActions$SilentModeTriStateAction;

    if-nez v0, :cond_d

    .line 623
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 625
    :cond_d
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAdapter:Lcom/android/internal/globalactions/ActionsAdapter;

    invoke-virtual {v0, p2}, Lcom/android/internal/globalactions/ActionsAdapter;->getItem(I)Lcom/android/internal/globalactions/Action;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/globalactions/Action;->onPress()V

    .line 626
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 606
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mOnDismiss:Ljava/lang/Runnable;

    if-eqz v0, :cond_7

    .line 607
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 609
    :cond_7
    iget-boolean v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mShowSilentToggle:Z

    if-eqz v0, :cond_19

    .line 611
    :try_start_b
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_12} :catch_13

    .line 615
    goto :goto_19

    .line 612
    :catch_13
    move-exception v0

    .line 614
    .local v0, "ie":Ljava/lang/IllegalArgumentException;
    const-string v1, "LegacyGlobalActions"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 617
    .end local v0    # "ie":Ljava/lang/IllegalArgumentException;
    :cond_19
    :goto_19
    return-void
.end method

.method public showDialog(ZZ)V
    .registers 5
    .param p1, "keyguardShowing"    # Z
    .param p2, "isDeviceProvisioned"    # Z

    .line 168
    iput-boolean p1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mKeyguardShowing:Z

    .line 169
    iput-boolean p2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDeviceProvisioned:Z

    .line 170
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDialog:Lcom/android/internal/globalactions/ActionsDialog;

    if-eqz v0, :cond_15

    .line 171
    invoke-virtual {v0}, Lcom/android/internal/globalactions/ActionsDialog;->dismiss()V

    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDialog:Lcom/android/internal/globalactions/ActionsDialog;

    .line 174
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_18

    .line 176
    :cond_15
    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->handleShow()V

    .line 178
    :goto_18
    return-void
.end method
