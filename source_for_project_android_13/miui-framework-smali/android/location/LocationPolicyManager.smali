.class public Landroid/location/LocationPolicyManager;
.super Ljava/lang/Object;
.source "LocationPolicyManager.java"


# static fields
.field private static final blacklist ALLOW_PLATFORM_APP_POLICY:Z = true

.field public static final blacklist OP_BLE_SCAN_LOCATION:I = 0x3

.field public static final blacklist OP_GET_CELL_LOCATION:I = 0x1

.field public static final blacklist OP_GET_GPS_LOCATION:I = 0x0

.field public static final blacklist OP_WIFI_SCAN_LOCATION:I = 0x2

.field public static final blacklist POLICY_NONE:I = 0x0

.field public static final blacklist POLICY_REJECT_ALL_BACKGROUND:I = 0xff

.field public static final blacklist POLICY_REJECT_HIGH_POWER_BACKGROUND:I = 0x1

.field public static final blacklist POLICY_REJECT_NON_PASSIVE_BACKGROUND:I = 0x2

.field public static final blacklist RULE_ALLOW_ALL:I = 0x0

.field public static final blacklist RULE_REJECT_ALL:I = 0xff

.field public static final blacklist RULE_REJECT_HIGH_POWER:I = 0x1

.field public static final blacklist RULE_REJECT_NON_PASSIVE:I = 0x2

.field public static final blacklist SERVICE_NAME:Ljava/lang/String; = "locationpolicy"

.field private static blacklist sInstance:Landroid/location/LocationPolicyManager;


# instance fields
.field private blacklist mService:Landroid/location/ILocationPolicyManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 70
    const/4 v0, 0x0

    sput-object v0, Landroid/location/LocationPolicyManager;->sInstance:Landroid/location/LocationPolicyManager;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/location/ILocationPolicyManager;)V
    .registers 4
    .param p1, "service"    # Landroid/location/ILocationPolicyManager;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    if-eqz p1, :cond_8

    .line 63
    iput-object p1, p0, Landroid/location/LocationPolicyManager;->mService:Landroid/location/ILocationPolicyManager;

    .line 64
    return-void

    .line 61
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "missing ILocationPolicyManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist dumpPolicy(Ljava/io/PrintWriter;I)V
    .registers 3
    .param p0, "fout"    # Ljava/io/PrintWriter;
    .param p1, "policy"    # I

    .line 238
    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 239
    and-int/lit16 v0, p1, 0xff

    if-eqz v0, :cond_e

    .line 240
    const-string v0, "REJECT_ALL_BACKGROUND"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 242
    :cond_e
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_17

    .line 243
    const-string v0, "REJECT_HIGH_POWER_BACKGROUND"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 245
    :cond_17
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_20

    .line 246
    const-string v0, "REJECT_NON_PASSIVE_BACKGROUND"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 248
    :cond_20
    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 249
    return-void
.end method

.method public static blacklist dumpRules(Ljava/io/PrintWriter;I)V
    .registers 3
    .param p0, "fout"    # Ljava/io/PrintWriter;
    .param p1, "rules"    # I

    .line 253
    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 254
    and-int/lit16 v0, p1, 0xff

    if-eqz v0, :cond_e

    .line 255
    const-string v0, "REJECT_ALL"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 257
    :cond_e
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_17

    .line 258
    const-string v0, "REJECT_HIGH_POWER"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 260
    :cond_17
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_20

    .line 261
    const-string v0, "REJECT_NON_PASSIVE"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 263
    :cond_20
    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 264
    return-void
.end method

.method public static blacklist from(Landroid/content/Context;)Landroid/location/LocationPolicyManager;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 67
    const-string v0, "locationpolicy"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationPolicyManager;

    return-object v0
.end method

.method public static blacklist isAllowedByLocationPolicy(Landroid/content/Context;I)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "op"    # I

    .line 72
    sget-object v0, Landroid/location/LocationPolicyManager;->sInstance:Landroid/location/LocationPolicyManager;

    if-nez v0, :cond_a

    .line 73
    invoke-static {p0}, Landroid/location/LocationPolicyManager;->from(Landroid/content/Context;)Landroid/location/LocationPolicyManager;

    move-result-object v0

    sput-object v0, Landroid/location/LocationPolicyManager;->sInstance:Landroid/location/LocationPolicyManager;

    .line 75
    :cond_a
    sget-object v0, Landroid/location/LocationPolicyManager;->sInstance:Landroid/location/LocationPolicyManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/location/LocationPolicyManager;->checkUidLocationOp(II)Z

    move-result v0

    return v0
.end method

.method public static blacklist isAllowedByLocationPolicy(Landroid/content/Context;II)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # I
    .param p2, "op"    # I

    .line 79
    sget-object v0, Landroid/location/LocationPolicyManager;->sInstance:Landroid/location/LocationPolicyManager;

    if-nez v0, :cond_a

    .line 80
    invoke-static {p0}, Landroid/location/LocationPolicyManager;->from(Landroid/content/Context;)Landroid/location/LocationPolicyManager;

    move-result-object v0

    sput-object v0, Landroid/location/LocationPolicyManager;->sInstance:Landroid/location/LocationPolicyManager;

    .line 82
    :cond_a
    sget-object v0, Landroid/location/LocationPolicyManager;->sInstance:Landroid/location/LocationPolicyManager;

    invoke-virtual {v0, p1, p2}, Landroid/location/LocationPolicyManager;->checkUidLocationOp(II)Z

    move-result v0

    return v0
.end method

.method public static blacklist isUidValidForPolicy(Landroid/content/Context;I)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # I

    .line 205
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 206
    const/4 v0, 0x0

    return v0

    .line 233
    :cond_8
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public blacklist checkUidLocationOp(II)Z
    .registers 5
    .param p1, "uid"    # I
    .param p2, "op"    # I

    .line 135
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationPolicyManager;->mService:Landroid/location/ILocationPolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/location/ILocationPolicyManager;->checkUidLocationOp(II)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 136
    :catch_7
    move-exception v0

    .line 137
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 138
    const/4 v1, 0x1

    return v1
.end method

.method public blacklist checkUidNavigationScreenLock(I)Z
    .registers 4
    .param p1, "uid"    # I

    .line 126
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationPolicyManager;->mService:Landroid/location/ILocationPolicyManager;

    invoke-interface {v0, p1}, Landroid/location/ILocationPolicyManager;->checkUidNavigationScreenLock(I)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 127
    :catch_7
    move-exception v0

    .line 128
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 129
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist getLocationPolicies()[Landroid/location/LocationPolicy;
    .registers 3

    .line 169
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationPolicyManager;->mService:Landroid/location/ILocationPolicyManager;

    invoke-interface {v0}, Landroid/location/ILocationPolicyManager;->getLocationPolicies()[Landroid/location/LocationPolicy;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 170
    :catch_7
    move-exception v0

    .line 171
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 172
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist getRestrictBackground()Z
    .registers 3

    .line 193
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationPolicyManager;->mService:Landroid/location/ILocationPolicyManager;

    invoke-interface {v0}, Landroid/location/ILocationPolicyManager;->getRestrictBackground()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 194
    :catch_7
    move-exception v0

    .line 195
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist getUidPolicy(I)I
    .registers 4
    .param p1, "uid"    # I

    .line 101
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationPolicyManager;->mService:Landroid/location/ILocationPolicyManager;

    invoke-interface {v0, p1}, Landroid/location/ILocationPolicyManager;->getUidPolicy(I)I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 102
    :catch_7
    move-exception v0

    .line 103
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 104
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist getUidsWithPolicy(I)[I
    .registers 4
    .param p1, "policy"    # I

    .line 144
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationPolicyManager;->mService:Landroid/location/ILocationPolicyManager;

    invoke-interface {v0, p1}, Landroid/location/ILocationPolicyManager;->getUidsWithPolicy(I)[I

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 145
    :catch_7
    move-exception v0

    .line 146
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 147
    const/4 v1, 0x0

    new-array v1, v1, [I

    return-object v1
.end method

.method public blacklist registerListener(Landroid/location/ILocationPolicyListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/location/ILocationPolicyListener;

    .line 153
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationPolicyManager;->mService:Landroid/location/ILocationPolicyManager;

    invoke-interface {v0, p1}, Landroid/location/ILocationPolicyManager;->registerListener(Landroid/location/ILocationPolicyListener;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 156
    goto :goto_a

    .line 154
    :catch_6
    move-exception v0

    .line 155
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 157
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public blacklist setFakeGpsFeatureOnState(Z)V
    .registers 3
    .param p1, "on"    # Z

    .line 268
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationPolicyManager;->mService:Landroid/location/ILocationPolicyManager;

    invoke-interface {v0, p1}, Landroid/location/ILocationPolicyManager;->setFakeGpsFeatureOnState(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 271
    goto :goto_7

    .line 269
    :catch_6
    move-exception v0

    .line 272
    :goto_7
    return-void
.end method

.method public blacklist setLocationPolicies([Landroid/location/LocationPolicy;)V
    .registers 3
    .param p1, "policies"    # [Landroid/location/LocationPolicy;

    .line 178
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationPolicyManager;->mService:Landroid/location/ILocationPolicyManager;

    invoke-interface {v0, p1}, Landroid/location/ILocationPolicyManager;->setLocationPolicies([Landroid/location/LocationPolicy;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 181
    goto :goto_a

    .line 179
    :catch_6
    move-exception v0

    .line 180
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 182
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public blacklist setPhoneStationary(ZLandroid/location/Location;)V
    .registers 4
    .param p1, "stationary"    # Z
    .param p2, "location"    # Landroid/location/Location;

    .line 276
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationPolicyManager;->mService:Landroid/location/ILocationPolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/location/ILocationPolicyManager;->setPhoneStationary(ZLandroid/location/Location;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 279
    goto :goto_7

    .line 277
    :catch_6
    move-exception v0

    .line 280
    :goto_7
    return-void
.end method

.method public blacklist setRestrictBackground(Z)V
    .registers 3
    .param p1, "restrictBackground"    # Z

    .line 186
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationPolicyManager;->mService:Landroid/location/ILocationPolicyManager;

    invoke-interface {v0, p1}, Landroid/location/ILocationPolicyManager;->setRestrictBackground(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 188
    goto :goto_7

    .line 187
    :catch_6
    move-exception v0

    .line 189
    :goto_7
    return-void
.end method

.method public blacklist setUidNavigationStart(I)V
    .registers 3
    .param p1, "uid"    # I

    .line 110
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationPolicyManager;->mService:Landroid/location/ILocationPolicyManager;

    invoke-interface {v0, p1}, Landroid/location/ILocationPolicyManager;->setUidNavigationStart(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 113
    goto :goto_a

    .line 111
    :catch_6
    move-exception v0

    .line 112
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 114
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public blacklist setUidNavigationStop(I)V
    .registers 3
    .param p1, "uid"    # I

    .line 118
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationPolicyManager;->mService:Landroid/location/ILocationPolicyManager;

    invoke-interface {v0, p1}, Landroid/location/ILocationPolicyManager;->setUidNavigationStop(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 121
    goto :goto_a

    .line 119
    :catch_6
    move-exception v0

    .line 120
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 122
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public blacklist setUidPolicy(II)V
    .registers 4
    .param p1, "uid"    # I
    .param p2, "policy"    # I

    .line 93
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationPolicyManager;->mService:Landroid/location/ILocationPolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/location/ILocationPolicyManager;->setUidPolicy(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 96
    goto :goto_a

    .line 94
    :catch_6
    move-exception v0

    .line 95
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 97
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public blacklist unregisterListener(Landroid/location/ILocationPolicyListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/location/ILocationPolicyListener;

    .line 161
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationPolicyManager;->mService:Landroid/location/ILocationPolicyManager;

    invoke-interface {v0, p1}, Landroid/location/ILocationPolicyManager;->unregisterListener(Landroid/location/ILocationPolicyListener;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 164
    goto :goto_a

    .line 162
    :catch_6
    move-exception v0

    .line 163
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 165
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method
