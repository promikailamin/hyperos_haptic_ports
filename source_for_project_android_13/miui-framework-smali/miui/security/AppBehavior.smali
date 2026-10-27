.class public Lmiui/security/AppBehavior;
.super Ljava/lang/Object;
.source "AppBehavior.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist BEHAVIOR_ALIVE_BACKEND_DURATION:I = 0x5

.field public static final blacklist BEHAVIOR_ALIVE_CHAIN:I = 0x2

.field public static final blacklist BEHAVIOR_ALIVE_CHAIN_DOWNSTREAM:I = 0x4

.field public static final blacklist BEHAVIOR_ALIVE_CHAIN_UPSTREAM:I = 0x3

.field public static final blacklist BEHAVIOR_ALIVE_SELF_START:I = 0x6

.field public static final blacklist BEHAVIOR_ALL:I = 0x1

.field public static final blacklist BEHAVIOR_APP_ACCESSIBILITY_ENABLED:I = 0x1d

.field public static final blacklist BEHAVIOR_APP_ADD_ANDROID_WIDGET:I = 0x1f

.field public static final blacklist BEHAVIOR_APP_BACKGROUND_START:I = 0x1b

.field public static final blacklist BEHAVIOR_APP_FOREGROUND_SERVICE_DURATION:I = 0x19

.field public static final blacklist BEHAVIOR_APP_LAUNCHED_MODE:I = 0x18

.field public static final blacklist BEHAVIOR_APP_RUNNING_BACKGROUND_DURATION:I = 0x17

.field public static final blacklist BEHAVIOR_APP_RUNNING_FOREGROUND_DURATION:I = 0x16

.field public static final blacklist BEHAVIOR_APP_RUNNING_TIME:I = 0x20

.field public static final blacklist BEHAVIOR_APP_WAKELOCK_DURATION:I = 0x1a

.field public static final blacklist BEHAVIOR_CODE_END:I = 0x27

.field public static final blacklist BEHAVIOR_CODE_START:I = 0x2

.field public static final blacklist BEHAVIOR_FOREGROUND_TOO_MANY:I = 0x23

.field public static final blacklist BEHAVIOR_LEAD_CLOSE_OPTIMIZATION:I = 0x21

.field public static final blacklist BEHAVIOR_NONE:I = 0x0

.field public static final blacklist BEHAVIOR_NOTICE_PUSH:I = 0x13

.field public static final blacklist BEHAVIOR_PAY_ACTIVITY_CALLUP:I = 0x7

.field public static final blacklist BEHAVIOR_PERMISSION_CLOSE_MIUIOPTIM:I = 0x15

.field public static final blacklist BEHAVIOR_PERMISSION_HIGH_AUTHORITY:I = 0x14

.field public static final blacklist BEHAVIOR_PERMISSION_SYSTEM_GRANT_THIRD_URI:I = 0x1e

.field public static final blacklist BEHAVIOR_PRIVACY_ALBUM_READ:I = 0x9

.field public static final blacklist BEHAVIOR_PRIVACY_AUDIO_RECORD:I = 0x11

.field public static final blacklist BEHAVIOR_PRIVACY_CALENDAR_READ:I = 0xe

.field public static final blacklist BEHAVIOR_PRIVACY_CALLLOG_READ:I = 0xb

.field public static final blacklist BEHAVIOR_PRIVACY_CLIPBOARD_READ:I = 0x8

.field public static final blacklist BEHAVIOR_PRIVACY_CONTACT_READ:I = 0xa

.field public static final blacklist BEHAVIOR_PRIVACY_INSTALLEDAPPS_READ:I = 0x10

.field public static final blacklist BEHAVIOR_PRIVACY_LOCATION_READ:I = 0xc

.field public static final blacklist BEHAVIOR_PRIVACY_PHONESTATE_READ:I = 0xf

.field public static final blacklist BEHAVIOR_PRIVACY_PROACTIVE_TURNON:I = 0x12

.field public static final blacklist BEHAVIOR_PRIVACY_SMS_READ:I = 0xd

.field public static final blacklist BEHAVIOR_START_NATIVE_PROCESS:I = 0x22

.field public static final blacklist BEHAVIOR_SWITCH_ON_KEYGUARD:I = 0x24

.field public static final blacklist BEHAVIOR_SYSTEM_CALL_THIRD:I = 0x1c

.field public static final blacklist BEHAVIOR_TOO_LARGE_WINDOW:I = 0x26

.field public static final blacklist BEHAVIOR_TOO_SMALL_WINDOW:I = 0x25

.field public static final blacklist BEHAVIOR_TYPE_ACTIVITY_COUNT:I = 0x3

.field public static final blacklist BEHAVIOR_TYPE_CHAIN:I = 0x2

.field public static final blacklist BEHAVIOR_TYPE_COUNT:I = 0x1

.field public static final blacklist BEHAVIOR_TYPE_DURATION:I = 0x4

.field public static final blacklist BEHAVIOR_TYPE_UNDEFINED:I = 0x0

.field public static final blacklist COUNT_ONE:I = 0x1

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiui/security/AppBehavior;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist SPLIT:Ljava/lang/String; = "@"


# instance fields
.field private blacklist behavior:I

.field private blacklist calleeData:Ljava/lang/String;

.field private blacklist calleePkg:Ljava/lang/String;

.field private blacklist callerPkg:Ljava/lang/String;

.field private blacklist count:J

.field private blacklist extra:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputbehavior(Lmiui/security/AppBehavior;I)V
    .registers 2

    iput p1, p0, Lmiui/security/AppBehavior;->behavior:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputcalleeData(Lmiui/security/AppBehavior;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmiui/security/AppBehavior;->calleeData:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputcalleePkg(Lmiui/security/AppBehavior;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmiui/security/AppBehavior;->calleePkg:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputcallerPkg(Lmiui/security/AppBehavior;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmiui/security/AppBehavior;->callerPkg:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputcount(Lmiui/security/AppBehavior;J)V
    .registers 3

    iput-wide p1, p0, Lmiui/security/AppBehavior;->count:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputextra(Lmiui/security/AppBehavior;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmiui/security/AppBehavior;->extra:Ljava/lang/String;

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 190
    new-instance v0, Lmiui/security/AppBehavior$1;

    invoke-direct {v0}, Lmiui/security/AppBehavior$1;-><init>()V

    sput-object v0, Lmiui/security/AppBehavior;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    return-void
.end method

.method synthetic constructor blacklist <init>(Lmiui/security/AppBehavior-IA;)V
    .registers 2

    invoke-direct {p0}, Lmiui/security/AppBehavior;-><init>()V

    return-void
.end method

.method public static blacklist behaviorToName(I)Ljava/lang/String;
    .registers 2
    .param p0, "behavior"    # I

    .line 72
    packed-switch p0, :pswitch_data_68

    .line 138
    :pswitch_3
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 130
    :pswitch_8
    const-string v0, "Danger-WindowTooLarge"

    return-object v0

    .line 128
    :pswitch_b
    const-string v0, "Danger-WindowTooSmall"

    return-object v0

    .line 124
    :pswitch_e
    const-string v0, "Alive_ShowOnKeyguard"

    return-object v0

    .line 122
    :pswitch_11
    const-string v0, "Danger-ActivityTooMany"

    return-object v0

    .line 120
    :pswitch_14
    const-string v0, "Danger-NativeKeepAlive"

    return-object v0

    .line 118
    :pswitch_17
    const-string v0, "Danger-CloseMiuiOptimization"

    return-object v0

    .line 112
    :pswitch_1a
    const-string v0, "Alive-RunningTime"

    return-object v0

    .line 110
    :pswitch_1d
    const-string v0, "Danger-SetAndroidWidget"

    return-object v0

    .line 108
    :pswitch_20
    const-string v0, "Safety-GetSystemUriPerm"

    return-object v0

    .line 106
    :pswitch_23
    const-string v0, "Safety-GetAccessibility"

    return-object v0

    .line 132
    :pswitch_26
    const-string v0, "Danger-SystemCallThird"

    return-object v0

    .line 126
    :pswitch_29
    const-string v0, "Danger-TryBgStart"

    return-object v0

    .line 134
    :pswitch_2c
    const-string v0, "Alive-KeepWakeLockTime"

    return-object v0

    .line 86
    :pswitch_2f
    const-string v0, "Alive-FgsDuration"

    return-object v0

    .line 116
    :pswitch_32
    const-string v0, "Alive-BgRunningTime"

    return-object v0

    .line 114
    :pswitch_35
    const-string v0, "Alive-FgRunningTime"

    return-object v0

    .line 136
    :pswitch_38
    const-string v0, "PostNotification"

    return-object v0

    .line 90
    :pswitch_3b
    const-string v0, "Privacy-AccessMic"

    return-object v0

    .line 102
    :pswitch_3e
    const-string v0, "Privacy-AccessInstalled"

    return-object v0

    .line 104
    :pswitch_41
    const-string v0, "Privacy-AccessPhoneInfo"

    return-object v0

    .line 100
    :pswitch_44
    const-string v0, "Privacy-AccessCalendar"

    return-object v0

    .line 94
    :pswitch_47
    const-string v0, "Privacy-AccessSms"

    return-object v0

    .line 98
    :pswitch_4a
    const-string v0, "Privacy-AccessLocation"

    return-object v0

    .line 92
    :pswitch_4d
    const-string v0, "Privacy-AccessCallLog"

    return-object v0

    .line 96
    :pswitch_50
    const-string v0, "Privacy-AccessContacts"

    return-object v0

    .line 88
    :pswitch_53
    const-string v0, "Privacy-AccessAlbum"

    return-object v0

    .line 84
    :pswitch_56
    const-string v0, "Privacy-ReadClipboard"

    return-object v0

    .line 82
    :pswitch_59
    const-string v0, "Pay-CallPay"

    return-object v0

    .line 80
    :pswitch_5c
    const-string v0, "Alive-AutoStart"

    return-object v0

    .line 78
    :pswitch_5f
    const-string v0, "Alive-BgDuration"

    return-object v0

    .line 76
    :pswitch_62
    const-string v0, "Alive-ChainDownstream"

    return-object v0

    .line 74
    :pswitch_65
    const-string v0, "Alive-ChainUpstream"

    return-object v0

    :pswitch_data_68
    .packed-switch 0x3
        :pswitch_65
        :pswitch_62
        :pswitch_5f
        :pswitch_5c
        :pswitch_59
        :pswitch_56
        :pswitch_53
        :pswitch_50
        :pswitch_4d
        :pswitch_4a
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_3
        :pswitch_38
        :pswitch_3
        :pswitch_3
        :pswitch_35
        :pswitch_32
        :pswitch_3
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method public static blacklist buildChainEvent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmiui/security/AppBehavior;
    .registers 5
    .param p0, "behavior"    # I
    .param p1, "upPkg"    # Ljava/lang/String;
    .param p2, "downPkg"    # Ljava/lang/String;
    .param p3, "callData"    # Ljava/lang/String;

    .line 287
    new-instance v0, Lmiui/security/AppBehavior;

    invoke-direct {v0}, Lmiui/security/AppBehavior;-><init>()V

    .line 288
    .local v0, "behaviorData":Lmiui/security/AppBehavior;
    iput p0, v0, Lmiui/security/AppBehavior;->behavior:I

    .line 289
    iput-object p1, v0, Lmiui/security/AppBehavior;->callerPkg:Ljava/lang/String;

    .line 290
    iput-object p2, v0, Lmiui/security/AppBehavior;->calleePkg:Ljava/lang/String;

    .line 291
    iput-object p3, v0, Lmiui/security/AppBehavior;->calleeData:Ljava/lang/String;

    .line 292
    return-object v0
.end method

.method public static blacklist buildCountEvent(ILjava/lang/String;JLjava/lang/String;)Lmiui/security/AppBehavior;
    .registers 6
    .param p0, "behavior"    # I
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "count"    # J
    .param p4, "extra"    # Ljava/lang/String;

    .line 278
    new-instance v0, Lmiui/security/AppBehavior;

    invoke-direct {v0}, Lmiui/security/AppBehavior;-><init>()V

    .line 279
    .local v0, "behaviorData":Lmiui/security/AppBehavior;
    iput p0, v0, Lmiui/security/AppBehavior;->behavior:I

    .line 280
    iput-object p1, v0, Lmiui/security/AppBehavior;->callerPkg:Ljava/lang/String;

    .line 281
    iput-wide p2, v0, Lmiui/security/AppBehavior;->count:J

    .line 282
    iput-object p4, v0, Lmiui/security/AppBehavior;->extra:Ljava/lang/String;

    .line 283
    return-object v0
.end method

.method public static blacklist getBehaviorType(I)I
    .registers 2
    .param p0, "behavior"    # I

    .line 143
    packed-switch p0, :pswitch_data_e

    .line 175
    :pswitch_3
    const/4 v0, 0x0

    return v0

    .line 173
    :pswitch_5
    const/4 v0, 0x4

    return v0

    .line 152
    :pswitch_7
    const/4 v0, 0x1

    return v0

    .line 168
    :pswitch_9
    const/4 v0, 0x3

    return v0

    .line 158
    :pswitch_b
    const/4 v0, 0x2

    return v0

    nop

    :pswitch_data_e
    .packed-switch 0x2
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_3
        :pswitch_9
        :pswitch_b
        :pswitch_3
        :pswitch_3
        :pswitch_7
        :pswitch_3
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_3
        :pswitch_3
        :pswitch_7
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_9
        :pswitch_b
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_5
        :pswitch_3
        :pswitch_9
        :pswitch_7
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method public static blacklist parseIntent(Landroid/content/Intent;)Ljava/lang/String;
    .registers 2
    .param p0, "intent"    # Landroid/content/Intent;

    .line 296
    if-eqz p0, :cond_21

    .line 297
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 298
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 299
    :cond_11
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 300
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 302
    :cond_1c
    invoke-virtual {p0}, Landroid/content/Intent;->toURI()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 305
    :cond_21
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 264
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getBehavior()I
    .registers 2

    .line 210
    iget v0, p0, Lmiui/security/AppBehavior;->behavior:I

    return v0
.end method

.method public blacklist getCalleeData()Ljava/lang/String;
    .registers 2

    .line 222
    iget-object v0, p0, Lmiui/security/AppBehavior;->calleeData:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getCalleePkg()Ljava/lang/String;
    .registers 2

    .line 218
    iget-object v0, p0, Lmiui/security/AppBehavior;->calleePkg:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getCallerPkg()Ljava/lang/String;
    .registers 2

    .line 214
    iget-object v0, p0, Lmiui/security/AppBehavior;->callerPkg:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getChain()Ljava/lang/String;
    .registers 3

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lmiui/security/AppBehavior;->callerPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/security/AppBehavior;->calleePkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/security/AppBehavior;->calleeData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getCount()J
    .registers 3

    .line 230
    iget-wide v0, p0, Lmiui/security/AppBehavior;->count:J

    return-wide v0
.end method

.method public blacklist getExtra()Ljava/lang/String;
    .registers 2

    .line 226
    iget-object v0, p0, Lmiui/security/AppBehavior;->extra:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist isValid()Z
    .registers 9

    .line 234
    iget-object v0, p0, Lmiui/security/AppBehavior;->callerPkg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 235
    return v1

    .line 237
    :cond_a
    iget v0, p0, Lmiui/security/AppBehavior;->behavior:I

    invoke-static {v0}, Lmiui/security/AppBehavior;->getBehaviorType(I)I

    move-result v0

    .line 238
    .local v0, "type":I
    if-nez v0, :cond_13

    .line 239
    return v1

    .line 240
    :cond_13
    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_29

    .line 241
    iget-object v2, p0, Lmiui/security/AppBehavior;->calleePkg:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_28

    iget-object v2, p0, Lmiui/security/AppBehavior;->calleeData:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_28

    move v1, v3

    :cond_28
    return v1

    .line 243
    :cond_29
    iget-wide v4, p0, Lmiui/security/AppBehavior;->count:J

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_32

    move v1, v3

    :cond_32
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 249
    iget v0, p0, Lmiui/security/AppBehavior;->behavior:I

    invoke-static {v0}, Lmiui/security/AppBehavior;->getBehaviorType(I)I

    move-result v0

    const-string v1, " extra: "

    const-string v2, "behavior:"

    const/4 v3, 0x2

    if-ne v0, v3, :cond_53

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lmiui/security/AppBehavior;->behavior:I

    invoke-static {v2}, Lmiui/security/AppBehavior;->behaviorToName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " caller: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lmiui/security/AppBehavior;->callerPkg:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " callee: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lmiui/security/AppBehavior;->calleePkg:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " className: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lmiui/security/AppBehavior;->calleeData:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/security/AppBehavior;->extra:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 253
    :cond_53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lmiui/security/AppBehavior;->behavior:I

    invoke-static {v2}, Lmiui/security/AppBehavior;->behaviorToName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " packageName: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lmiui/security/AppBehavior;->callerPkg:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " times: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lmiui/security/AppBehavior;->count:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/security/AppBehavior;->extra:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 269
    iget v0, p0, Lmiui/security/AppBehavior;->behavior:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 270
    iget-object v0, p0, Lmiui/security/AppBehavior;->callerPkg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lmiui/security/AppBehavior;->calleePkg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lmiui/security/AppBehavior;->calleeData:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lmiui/security/AppBehavior;->extra:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 274
    iget-wide v0, p0, Lmiui/security/AppBehavior;->count:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 275
    return-void
.end method
