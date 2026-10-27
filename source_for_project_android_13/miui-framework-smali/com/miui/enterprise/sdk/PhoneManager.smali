.class public Lcom/miui/enterprise/sdk/PhoneManager;
.super Ljava/lang/Object;
.source "PhoneManager.java"


# static fields
.field public static final whitelist CLOSE:I = 0x3

.field public static final whitelist DISABLE:I = 0x0

.field public static final whitelist ENABLE:I = 0x1

.field public static final whitelist FLAG_DEFAULT:I = 0x0

.field public static final whitelist FLAG_DISALLOW_IN:I = 0x1

.field public static final whitelist FLAG_DISALLOW_OUT:I = 0x2

.field public static final whitelist FORCE_OPEN:I = 0x4

.field public static final whitelist OPEN:I = 0x2

.field public static final whitelist RESTRICTION_MODE_BLACK_LIST:I = 0x2

.field public static final whitelist RESTRICTION_MODE_DEFAULT:I = 0x0

.field public static final whitelist RESTRICTION_MODE_WHITE_LIST:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "PhoneManager"

.field private static blacklist mService:Lcom/miui/enterprise/IPhoneManager;

.field private static volatile blacklist sInstance:Lcom/miui/enterprise/sdk/PhoneManager;


# direct methods
.method private constructor blacklist <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, "phone_manager"

    invoke-static {v0}, Lcom/miui/enterprise/EnterpriseManager;->getEnterpriseService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/enterprise/IPhoneManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/enterprise/IPhoneManager;

    move-result-object v0

    sput-object v0, Lcom/miui/enterprise/sdk/PhoneManager;->mService:Lcom/miui/enterprise/IPhoneManager;

    .line 33
    return-void
.end method

.method public static declared-synchronized whitelist getInstance()Lcom/miui/enterprise/sdk/PhoneManager;
    .registers 2

    const-class v0, Lcom/miui/enterprise/sdk/PhoneManager;

    monitor-enter v0

    .line 36
    :try_start_3
    sget-object v1, Lcom/miui/enterprise/sdk/PhoneManager;->sInstance:Lcom/miui/enterprise/sdk/PhoneManager;

    if-nez v1, :cond_e

    .line 37
    new-instance v1, Lcom/miui/enterprise/sdk/PhoneManager;

    invoke-direct {v1}, Lcom/miui/enterprise/sdk/PhoneManager;-><init>()V

    sput-object v1, Lcom/miui/enterprise/sdk/PhoneManager;->sInstance:Lcom/miui/enterprise/sdk/PhoneManager;

    .line 39
    :cond_e
    sget-object v1, Lcom/miui/enterprise/sdk/PhoneManager;->sInstance:Lcom/miui/enterprise/sdk/PhoneManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 35
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public whitelist controlCellular(I)V
    .registers 5
    .param p1, "flags"    # I

    .line 60
    :try_start_0
    sget-object v0, Lcom/miui/enterprise/sdk/PhoneManager;->mService:Lcom/miui/enterprise/IPhoneManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/miui/enterprise/IPhoneManager;->controlCellular(II)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 63
    goto :goto_12

    .line 61
    :catch_a
    move-exception v0

    .line 62
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PhoneManager"

    const-string v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 64
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_12
    return-void
.end method

.method public whitelist controlPhoneCall(I)V
    .registers 5
    .param p1, "flags"    # I

    .line 52
    :try_start_0
    sget-object v0, Lcom/miui/enterprise/sdk/PhoneManager;->mService:Lcom/miui/enterprise/IPhoneManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/miui/enterprise/IPhoneManager;->controlPhoneCall(II)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 55
    goto :goto_12

    .line 53
    :catch_a
    move-exception v0

    .line 54
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PhoneManager"

    const-string v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_12
    return-void
.end method

.method public whitelist controlSMS(I)V
    .registers 5
    .param p1, "flags"    # I

    .line 44
    :try_start_0
    sget-object v0, Lcom/miui/enterprise/sdk/PhoneManager;->mService:Lcom/miui/enterprise/IPhoneManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/miui/enterprise/IPhoneManager;->controlSMS(II)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 47
    goto :goto_12

    .line 45
    :catch_a
    move-exception v0

    .line 46
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PhoneManager"

    const-string v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_12
    return-void
.end method

.method public whitelist disableCallForward(Z)V
    .registers 5
    .param p1, "disable"    # Z

    .line 239
    :try_start_0
    sget-object v0, Lcom/miui/enterprise/sdk/PhoneManager;->mService:Lcom/miui/enterprise/IPhoneManager;

    invoke-interface {v0, p1}, Lcom/miui/enterprise/IPhoneManager;->disableCallForward(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 242
    goto :goto_e

    .line 240
    :catch_6
    move-exception v0

    .line 241
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PhoneManager"

    const-string v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 243
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public whitelist disableCallLog(Z)V
    .registers 5
    .param p1, "disable"    # Z

    .line 247
    :try_start_0
    sget-object v0, Lcom/miui/enterprise/sdk/PhoneManager;->mService:Lcom/miui/enterprise/IPhoneManager;

    invoke-interface {v0, p1}, Lcom/miui/enterprise/IPhoneManager;->disableCallLog(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 250
    goto :goto_e

    .line 248
    :catch_6
    move-exception v0

    .line 249
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PhoneManager"

    const-string v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 251
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public whitelist endCall()V
    .registers 4

    .line 231
    :try_start_0
    sget-object v0, Lcom/miui/enterprise/sdk/PhoneManager;->mService:Lcom/miui/enterprise/IPhoneManager;

    invoke-interface {v0}, Lcom/miui/enterprise/IPhoneManager;->endCall()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 234
    goto :goto_e

    .line 232
    :catch_6
    move-exception v0

    .line 233
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PhoneManager"

    const-string v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 235
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public whitelist getAreaCode(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .line 255
    :try_start_0
    sget-object v0, Lcom/miui/enterprise/sdk/PhoneManager;->mService:Lcom/miui/enterprise/IPhoneManager;

    invoke-interface {v0, p1}, Lcom/miui/enterprise/IPhoneManager;->getAreaCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 256
    :catch_7
    move-exception v0

    .line 257
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PhoneManager"

    const-string v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 259
    .end local v0    # "e":Landroid/os/RemoteException;
    const-string v0, ""

    return-object v0
.end method

.method public whitelist getCallBlackList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 188
    :try_start_0
    sget-object v0, Lcom/miui/enterprise/sdk/PhoneManager;->mService:Lcom/miui/enterprise/IPhoneManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/miui/enterprise/IPhoneManager;->getCallBlackList(I)Ljava/util/List;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 189
    :catch_b
    move-exception v0

    .line 190
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PhoneManager"

    const-string v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 192
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getCallContactRestriction()I
    .registers 4

    .line 222
    :try_start_0
    sget-object v0, Lcom/miui/enterprise/sdk/PhoneManager;->mService:Lcom/miui/enterprise/IPhoneManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/miui/enterprise/IPhoneManager;->getCallContactRestriction(I)I

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return v0

    .line 223
    :catch_b
    move-exception v0

    .line 224
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PhoneManager"

    const-string v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 226
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCallWhiteList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 205
    :try_start_0
    sget-object v0, Lcom/miui/enterprise/sdk/PhoneManager;->mService:Lcom/miui/enterprise/IPhoneManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/miui/enterprise/IPhoneManager;->getCallWhiteList(I)Ljava/util/List;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 206
    :catch_b
    move-exception v0

    .line 207
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PhoneManager"

    const-string v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 209
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getCellularStatus()I
    .registers 4

    .line 86
    :try_start_0
    sget-object v0, Lcom/miui/enterprise/sdk/PhoneManager;->mService:Lcom/miui/enterprise/IPhoneManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/miui/enterprise/IPhoneManager;->getCellularStatus(I)I

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return v0

    .line 87
    :catch_b
    move-exception v0

    .line 88
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PhoneManager"

    const-string v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist getIMEI(I)Ljava/lang/String;
    .registers 5
    .param p1, "slotId"    # I

    .line 95
    :try_start_0
    sget-object v0, Lcom/miui/enterprise/sdk/PhoneManager;->mService:Lcom/miui/enterprise/IPhoneManager;

    invoke-interface {v0, p1}, Lcom/miui/enterprise/IPhoneManager;->getIMEI(I)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 96
    :catch_7
    move-exception v0

    .line 97
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PhoneManager"

    const-string v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    const-string v1, ""

    return-object v1
.end method

.method public whitelist getMeid(I)Ljava/lang/String;
    .registers 5
    .param p1, "slotId"    # I

    .line 264
    :try_start_0
    sget-object v0, Lcom/miui/enterprise/sdk/PhoneManager;->mService:Lcom/miui/enterprise/IPhoneManager;

    invoke-interface {v0, p1}, Lcom/miui/enterprise/IPhoneManager;->getMeid(I)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 265
    :catch_7
    move-exception v0

    .line 266
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PhoneManager"

    const-string v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 268
    .end local v0    # "e":Landroid/os/RemoteException;
    const-string v0, ""

    return-object v0
.end method

.method public whitelist getPhoneCallStatus()I
    .registers 4

    .line 77
    :try_start_0
    sget-object v0, Lcom/miui/enterprise/sdk/PhoneManager;->mService:Lcom/miui/enterprise/IPhoneManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/miui/enterprise/IPhoneManager;->getPhoneCallStatus(I)I

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return v0

    .line 78
    :catch_b
    move-exception v0

    .line 79
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PhoneManager"

    const-string v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 80
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist getSMSBlackList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 137
    :try_start_0
    sget-object v0, Lcom/miui/enterprise/sdk/PhoneManager;->mService:Lcom/miui/enterprise/IPhoneManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/miui/enterprise/IPhoneManager;->getSMSBlackList(I)Ljava/util/List;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 138
    :catch_b
    move-exception v0

    .line 139
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PhoneManager"

    const-string v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 141
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getSMSContactRestriction()I
    .registers 4

    .line 171
    :try_start_0
    sget-object v0, Lcom/miui/enterprise/sdk/PhoneManager;->mService:Lcom/miui/enterprise/IPhoneManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/miui/enterprise/IPhoneManager;->getSMSContactRestriction(I)I

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return v0

    .line 172
    :catch_b
    move-exception v0

    .line 173
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PhoneManager"

    const-string v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 175
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getSMSStatus()I
    .registers 4

    .line 68
    :try_start_0
    sget-object v0, Lcom/miui/enterprise/sdk/PhoneManager;->mService:Lcom/miui/enterprise/IPhoneManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/miui/enterprise/IPhoneManager;->getSMSStatus(I)I

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return v0

    .line 69
    :catch_b
    move-exception v0

    .line 70
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PhoneManager"

    const-string v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist getSMSWhiteList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 154
    :try_start_0
    sget-object v0, Lcom/miui/enterprise/sdk/PhoneManager;->mService:Lcom/miui/enterprise/IPhoneManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/miui/enterprise/IPhoneManager;->getSMSWhiteList(I)Ljava/util/List;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 155
    :catch_b
    move-exception v0

    .line 156
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PhoneManager"

    const-string v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 158
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist isAutoRecordPhoneCall()Z
    .registers 4

    .line 120
    :try_start_0
    sget-object v0, Lcom/miui/enterprise/sdk/PhoneManager;->mService:Lcom/miui/enterprise/IPhoneManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/miui/enterprise/IPhoneManager;->isAutoRecordPhoneCall(I)Z

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return v0

    .line 121
    :catch_b
    move-exception v0

    .line 122
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PhoneManager"

    const-string v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 124
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setCallBlackList(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 180
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    sget-object v0, Lcom/miui/enterprise/sdk/PhoneManager;->mService:Lcom/miui/enterprise/IPhoneManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/miui/enterprise/IPhoneManager;->setCallBlackList(Ljava/util/List;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 183
    goto :goto_12

    .line 181
    :catch_a
    move-exception v0

    .line 182
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PhoneManager"

    const-string v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 184
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_12
    return-void
.end method

.method public whitelist setCallContactRestriction(I)V
    .registers 5
    .param p1, "mode"    # I

    .line 214
    :try_start_0
    sget-object v0, Lcom/miui/enterprise/sdk/PhoneManager;->mService:Lcom/miui/enterprise/IPhoneManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/miui/enterprise/IPhoneManager;->setCallContactRestriction(II)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 217
    goto :goto_12

    .line 215
    :catch_a
    move-exception v0

    .line 216
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PhoneManager"

    const-string v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 218
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_12
    return-void
.end method

.method public whitelist setCallWhiteList(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 197
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    sget-object v0, Lcom/miui/enterprise/sdk/PhoneManager;->mService:Lcom/miui/enterprise/IPhoneManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/miui/enterprise/IPhoneManager;->setCallWhiteList(Ljava/util/List;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 200
    goto :goto_12

    .line 198
    :catch_a
    move-exception v0

    .line 199
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PhoneManager"

    const-string v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 201
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_12
    return-void
.end method

.method public whitelist setIccCardActivate(IZ)V
    .registers 6
    .param p1, "slotId"    # I
    .param p2, "isActive"    # Z

    .line 273
    :try_start_0
    sget-object v0, Lcom/miui/enterprise/sdk/PhoneManager;->mService:Lcom/miui/enterprise/IPhoneManager;

    invoke-interface {v0, p1, p2}, Lcom/miui/enterprise/IPhoneManager;->setIccCardActivate(IZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 276
    goto :goto_e

    .line 274
    :catch_6
    move-exception v0

    .line 275
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PhoneManager"

    const-string v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 277
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public whitelist setPhoneCallAutoRecord(Z)V
    .registers 5
    .param p1, "isAutoRecord"    # Z

    .line 104
    :try_start_0
    sget-object v0, Lcom/miui/enterprise/sdk/PhoneManager;->mService:Lcom/miui/enterprise/IPhoneManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/miui/enterprise/IPhoneManager;->setPhoneCallAutoRecord(ZI)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 107
    goto :goto_12

    .line 105
    :catch_a
    move-exception v0

    .line 106
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PhoneManager"

    const-string v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 108
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_12
    return-void
.end method

.method public whitelist setPhoneCallAutoRecordDir(Ljava/lang/String;)V
    .registers 5
    .param p1, "filePath"    # Ljava/lang/String;

    .line 112
    :try_start_0
    sget-object v0, Lcom/miui/enterprise/sdk/PhoneManager;->mService:Lcom/miui/enterprise/IPhoneManager;

    invoke-interface {v0, p1}, Lcom/miui/enterprise/IPhoneManager;->setPhoneCallAutoRecordDir(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 115
    goto :goto_e

    .line 113
    :catch_6
    move-exception v0

    .line 114
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PhoneManager"

    const-string v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 116
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public whitelist setSMSBlackList(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 129
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    sget-object v0, Lcom/miui/enterprise/sdk/PhoneManager;->mService:Lcom/miui/enterprise/IPhoneManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/miui/enterprise/IPhoneManager;->setSMSBlackList(Ljava/util/List;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 132
    goto :goto_12

    .line 130
    :catch_a
    move-exception v0

    .line 131
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PhoneManager"

    const-string v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 133
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_12
    return-void
.end method

.method public whitelist setSMSContactRestriction(I)V
    .registers 5
    .param p1, "mode"    # I

    .line 163
    :try_start_0
    sget-object v0, Lcom/miui/enterprise/sdk/PhoneManager;->mService:Lcom/miui/enterprise/IPhoneManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/miui/enterprise/IPhoneManager;->setSMSContactRestriction(II)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 166
    goto :goto_12

    .line 164
    :catch_a
    move-exception v0

    .line 165
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PhoneManager"

    const-string v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 167
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_12
    return-void
.end method

.method public whitelist setSMSWhiteList(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 146
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    sget-object v0, Lcom/miui/enterprise/sdk/PhoneManager;->mService:Lcom/miui/enterprise/IPhoneManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/miui/enterprise/IPhoneManager;->setSMSWhiteList(Ljava/util/List;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 149
    goto :goto_12

    .line 147
    :catch_a
    move-exception v0

    .line 148
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PhoneManager"

    const-string v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 150
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_12
    return-void
.end method
