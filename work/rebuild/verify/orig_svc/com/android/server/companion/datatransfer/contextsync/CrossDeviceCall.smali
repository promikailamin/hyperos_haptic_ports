.class public Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;
.super Ljava/lang/Object;
.source "CrossDeviceCall.java"


# instance fields
.field public final mCall:Landroid/telecom/Call;

.field public mCallerDisplayName:Ljava/lang/String;

.field public mCallerDisplayNamePresentation:I

.field public mCallingAppIcon:[B

.field public mCallingAppName:Ljava/lang/String;

.field public final mCallingAppPackageName:Ljava/lang/String;

.field public mContactDisplayName:Ljava/lang/String;

.field public final mControls:Ljava/util/Set;

.field public mDirection:I

.field public mHandle:Landroid/net/Uri;

.field public mHandlePresentation:I

.field public final mId:Ljava/lang/String;

.field public final mIsCallPlacedByContextSync:Z

.field mIsEnterprise:Z

.field public mIsMuted:Z

.field public final mSerializedPhoneAccountHandle:Ljava/lang/String;

.field public mStatus:I

.field public final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/telecom/Call;Landroid/telecom/Call$Details;Landroid/telecom/CallAudioState;)V
    .registers 12

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mStatus:I

    .line 62
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mControls:Ljava/util/Set;

    .line 77
    iput-object p2, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mCall:Landroid/telecom/Call;

    .line 78
    invoke-virtual {p3}, Landroid/telecom/Call$Details;->getIntentExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "com.android.companion.datatransfer.contextsync.extra.CALL_ID"

    if-eqz v1, :cond_20

    .line 79
    invoke-virtual {p3}, Landroid/telecom/Call$Details;->getIntentExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_21

    :cond_20
    const/4 v1, 0x0

    .line 81
    :goto_21
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 82
    const-string v4, "::"

    if-eqz v1, :cond_3f

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_3f
    iput-object v3, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mId:Ljava/lang/String;

    if-eqz p2, :cond_46

    .line 84
    invoke-virtual {p2, v2, v3}, Landroid/telecom/Call;->putExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_46
    invoke-virtual {p3}, Landroid/telecom/Call$Details;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object p2

    if-eqz p2, :cond_55

    .line 87
    invoke-virtual {p2}, Landroid/telecom/PhoneAccountHandle;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    goto :goto_56

    :cond_55
    const/4 v1, -0x1

    :goto_56
    iput v1, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mUserId:I

    const/4 v2, 0x1

    if-eqz p2, :cond_6e

    .line 88
    new-instance v3, Landroid/content/ComponentName;

    const-class v5, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService;

    invoke-direct {v3, p1, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 90
    invoke-virtual {p2}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6e

    move v3, v2

    goto :goto_6f

    :cond_6e
    move v3, v0

    :goto_6f
    iput-boolean v3, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mIsCallPlacedByContextSync:Z

    .line 91
    const-string v3, ""

    if-eqz p2, :cond_82

    .line 92
    invoke-virtual {p3}, Landroid/telecom/Call$Details;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    goto :goto_83

    :cond_82
    move-object v5, v3

    :goto_83
    iput-object v5, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mCallingAppPackageName:Ljava/lang/String;

    if-eqz p2, :cond_a5

    .line 94
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_a5
    iput-object v3, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mSerializedPhoneAccountHandle:Ljava/lang/String;

    .line 95
    invoke-virtual {p3}, Landroid/telecom/Call$Details;->getCallProperties()I

    move-result p2

    const/16 v3, 0x20

    and-int/2addr p2, v3

    if-ne p2, v3, :cond_b2

    move p2, v2

    goto :goto_b3

    :cond_b2
    move p2, v0

    :goto_b3
    iput-boolean p2, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mIsEnterprise:Z

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-wide/16 v3, 0x0

    .line 101
    :try_start_bb
    invoke-static {v3, v4}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    move-result-object p2

    .line 100
    invoke-virtual {p1, v5, p2, v1}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    .line 102
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mCallingAppName:Ljava/lang/String;

    .line 104
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 103
    invoke-static {p1}, Lcom/android/server/companion/datatransfer/contextsync/BitmapUtils;->renderDrawableToByteArray(Landroid/graphics/drawable/Drawable;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mCallingAppIcon:[B
    :try_end_d7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_bb .. :try_end_d7} :catch_d8

    goto :goto_f1

    :catch_d8
    move-exception p1

    .line 106
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not get application info for package "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mCallingAppPackageName:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "CrossDeviceCall"

    invoke-static {v1, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_f1
    if-eqz p4, :cond_fa

    .line 108
    invoke-virtual {p4}, Landroid/telecom/CallAudioState;->isMuted()Z

    move-result p1

    if-eqz p1, :cond_fa

    move v0, v2

    :cond_fa
    iput-boolean v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mIsMuted:Z

    .line 109
    invoke-virtual {p0, p3}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->updateCallDetails(Landroid/telecom/Call$Details;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/telecom/Call;Landroid/telecom/CallAudioState;)V
    .registers 5

    .line 67
    invoke-virtual {p2}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;-><init>(Landroid/content/Context;Landroid/telecom/Call;Landroid/telecom/Call$Details;Landroid/telecom/CallAudioState;)V

    return-void
.end method

.method public static convertStateToStatus(I)I
    .registers 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_36

    const/4 v1, 0x2

    if-eq p0, v1, :cond_35

    const/4 v0, 0x3

    if-eq p0, v0, :cond_35

    const/4 v0, 0x4

    if-eq p0, v0, :cond_34

    const/4 v0, 0x7

    if-eq p0, v0, :cond_33

    const/16 v0, 0xc

    if-eq p0, v0, :cond_31

    const/16 v0, 0xd

    if-eq p0, v0, :cond_2f

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t resolve state to status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CrossDeviceCall"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_2f
    const/4 p0, 0x6

    return p0

    :cond_31
    const/4 p0, 0x5

    return p0

    :cond_33
    return v0

    :cond_34
    return v1

    :cond_35
    return v0

    :cond_36
    const/16 p0, 0x8

    return p0
.end method

.method public static convertStatusToState(I)I
    .registers 1

    .line 0
    packed-switch p0, :pswitch_data_16

    const/4 p0, 0x0

    return p0

    :pswitch_5
    const/4 p0, 0x1

    return p0

    :pswitch_7
    const/4 p0, 0x7

    return p0

    :pswitch_9
    const/16 p0, 0xd

    return p0

    :pswitch_c
    const/16 p0, 0xc

    return p0

    :pswitch_f
    const/4 p0, 0x3

    return p0

    :pswitch_11
    const/4 p0, 0x4

    return p0

    :pswitch_13
    const/4 p0, 0x2

    return p0

    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_13
        :pswitch_11
        :pswitch_f
        :pswitch_13
        :pswitch_c
        :pswitch_9
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public doAccept()V
    .registers 2

    .line 299
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mCall:Landroid/telecom/Call;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/telecom/Call;->answer(I)V

    return-void
.end method

.method public doEnd()V
    .registers 1

    .line 309
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mCall:Landroid/telecom/Call;

    invoke-virtual {p0}, Landroid/telecom/Call;->disconnect()V

    return-void
.end method

.method public doPutOnHold()V
    .registers 1

    .line 313
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mCall:Landroid/telecom/Call;

    invoke-virtual {p0}, Landroid/telecom/Call;->hold()V

    return-void
.end method

.method public doReject()V
    .registers 3

    .line 303
    iget v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 304
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mCall:Landroid/telecom/Call;

    invoke-virtual {p0, v1}, Landroid/telecom/Call;->reject(I)V

    :cond_a
    return-void
.end method

.method public doTakeOffHold()V
    .registers 1

    .line 317
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mCall:Landroid/telecom/Call;

    invoke-virtual {p0}, Landroid/telecom/Call;->unhold()V

    return-void
.end method

.method public getCallingAppIcon()[B
    .registers 1

    .line 246
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mCallingAppIcon:[B

    return-object p0
.end method

.method public getCallingAppName()Ljava/lang/String;
    .registers 1

    .line 242
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mCallingAppName:Ljava/lang/String;

    return-object p0
.end method

.method public getCallingAppPackageName()Ljava/lang/String;
    .registers 1

    .line 250
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mCallingAppPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getControls()Ljava/util/Set;
    .registers 1

    .line 291
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mControls:Ljava/util/Set;

    return-object p0
.end method

.method public getDirection()I
    .registers 1

    .line 287
    iget p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mDirection:I

    return p0
.end method

.method public getId()Ljava/lang/String;
    .registers 1

    .line 230
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mId:Ljava/lang/String;

    return-object p0
.end method

.method public final getNonContactString()Ljava/lang/String;
    .registers 3

    .line 271
    iget-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mCallerDisplayName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_10

    iget v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mCallerDisplayNamePresentation:I

    if-ne v0, v1, :cond_10

    .line 273
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mCallerDisplayName:Ljava/lang/String;

    return-object p0

    .line 275
    :cond_10
    iget-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mHandle:Landroid/net/Uri;

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_25

    iget v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mHandlePresentation:I

    if-ne v0, v1, :cond_25

    .line 277
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mHandle:Landroid/net/Uri;

    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_25
    const/4 p0, 0x0

    return-object p0
.end method

.method public getReadableCallerId(Z)Ljava/lang/String;
    .registers 3

    .line 263
    iget-boolean v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mIsEnterprise:Z

    if-eqz v0, :cond_b

    if-eqz p1, :cond_b

    .line 265
    invoke-virtual {p0}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->getNonContactString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 267
    :cond_b
    iget-object p1, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mContactDisplayName:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_18

    invoke-virtual {p0}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->getNonContactString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_18
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mContactDisplayName:Ljava/lang/String;

    return-object p0
.end method

.method public getSerializedPhoneAccountHandle()Ljava/lang/String;
    .registers 1

    .line 254
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mSerializedPhoneAccountHandle:Ljava/lang/String;

    return-object p0
.end method

.method public getStatus()I
    .registers 1

    .line 283
    iget p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mStatus:I

    return p0
.end method

.method public getUserId()I
    .registers 1

    .line 238
    iget p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mUserId:I

    return p0
.end method

.method public isCallPlacedByContextSync()Z
    .registers 1

    .line 295
    iget-boolean p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mIsCallPlacedByContextSync:Z

    return p0
.end method

.method public updateCallDetails(Landroid/telecom/Call$Details;)V
    .registers 10

    const/4 v0, 0x6

    .line 152
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 136
    invoke-virtual {p1}, Landroid/telecom/Call$Details;->getCallerDisplayName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mCallerDisplayName:Ljava/lang/String;

    .line 137
    invoke-virtual {p1}, Landroid/telecom/Call$Details;->getCallerDisplayNamePresentation()I

    move-result v1

    iput v1, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mCallerDisplayNamePresentation:I

    .line 138
    invoke-virtual {p1}, Landroid/telecom/Call$Details;->getContactDisplayName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mContactDisplayName:Ljava/lang/String;

    .line 139
    invoke-virtual {p1}, Landroid/telecom/Call$Details;->getHandle()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mHandle:Landroid/net/Uri;

    .line 140
    invoke-virtual {p1}, Landroid/telecom/Call$Details;->getHandlePresentation()I

    move-result v1

    iput v1, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mHandlePresentation:I

    .line 141
    invoke-virtual {p1}, Landroid/telecom/Call$Details;->getCallDirection()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-nez v1, :cond_2e

    .line 143
    iput v3, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mDirection:I

    goto :goto_36

    :cond_2e
    if-ne v1, v3, :cond_33

    .line 145
    iput v2, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mDirection:I

    goto :goto_36

    :cond_33
    const/4 v1, 0x0

    .line 147
    iput v1, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mDirection:I

    .line 149
    :goto_36
    invoke-virtual {p1}, Landroid/telecom/Call$Details;->getState()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->convertStateToStatus(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mStatus:I

    .line 150
    iget-object v1, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mControls:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 151
    iget v1, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mStatus:I

    const/16 v4, 0x8

    if-ne v1, v4, :cond_50

    .line 152
    iget-object v1, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mControls:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 154
    :cond_50
    iget v1, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mStatus:I

    const/4 v5, 0x4

    const/4 v6, 0x3

    if-eq v1, v3, :cond_58

    if-ne v1, v5, :cond_77

    .line 156
    :cond_58
    iget-object v1, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mControls:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 157
    iget-object v1, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mControls:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 158
    iget v1, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mStatus:I

    if-ne v1, v3, :cond_77

    .line 159
    iget-object v1, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mControls:Ljava/util/Set;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 162
    :cond_77
    iget v1, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mStatus:I

    if-eq v1, v2, :cond_7d

    if-ne v1, v6, :cond_97

    .line 164
    :cond_7d
    iget-object v1, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mControls:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 165
    invoke-virtual {p1, v3}, Landroid/telecom/Call$Details;->can(I)Z

    move-result v0

    if-eqz v0, :cond_97

    .line 166
    iget-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mControls:Ljava/util/Set;

    .line 167
    iget v1, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mStatus:I

    if-ne v1, v6, :cond_8f

    goto :goto_90

    :cond_8f
    const/4 v4, 0x7

    :goto_90
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 166
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 172
    :cond_97
    iget v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mStatus:I

    if-ne v0, v2, :cond_b1

    const/16 v0, 0x40

    invoke-virtual {p1, v0}, Landroid/telecom/Call$Details;->can(I)Z

    move-result p1

    if-eqz p1, :cond_b1

    .line 174
    iget-object p1, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mControls:Ljava/util/Set;

    iget-boolean p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mIsMuted:Z

    if-eqz p0, :cond_aa

    const/4 v5, 0x5

    :cond_aa
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_b1
    return-void
.end method
