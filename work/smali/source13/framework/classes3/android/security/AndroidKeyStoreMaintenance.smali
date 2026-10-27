.class public Landroid/security/AndroidKeyStoreMaintenance;
.super Ljava/lang/Object;
.source "AndroidKeyStoreMaintenance.java"


# static fields
.field public static final blacklist INVALID_ARGUMENT:I = 0x14

.field public static final blacklist KEY_NOT_FOUND:I = 0x7

.field public static final blacklist PERMISSION_DENIED:I = 0x6

.field public static final blacklist SYSTEM_ERROR:I = 0x4

.field private static final blacklist TAG:Ljava/lang/String; = "AndroidKeyStoreMaintenance"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist clearNamespace(IJ)I
    .registers 6
    .param p0, "domain"    # I
    .param p1, "namespace"    # J

    .line 116
    const-string v0, "AndroidKeyStoreMaintenance"

    :try_start_2
    invoke-static {}, Landroid/security/AndroidKeyStoreMaintenance;->getService()Landroid/security/maintenance/IKeystoreMaintenance;

    move-result-object v1

    invoke-interface {v1, p0, p1, p2}, Landroid/security/maintenance/IKeystoreMaintenance;->clearNamespace(IJ)V
    :try_end_9
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_9} :catch_13
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_9} :catch_b

    .line 117
    const/4 v0, 0x0

    return v0

    .line 121
    :catch_b
    move-exception v1

    .line 122
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Can not connect to keystore"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 123
    const/4 v0, 0x4

    return v0

    .line 118
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_13
    move-exception v1

    .line 119
    .local v1, "e":Landroid/os/ServiceSpecificException;
    const-string v2, "clearNamespace failed"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 120
    iget v0, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    return v0
.end method

.method public static blacklist deleteAllKeys()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    .line 197
    invoke-static {}, Landroid/os/StrictMode;->noteDiskWrite()V

    .line 199
    :try_start_3
    invoke-static {}, Landroid/security/AndroidKeyStoreMaintenance;->getService()Landroid/security/maintenance/IKeystoreMaintenance;

    move-result-object v0

    invoke-interface {v0}, Landroid/security/maintenance/IKeystoreMaintenance;->deleteAllKeys()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_a} :catch_17
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_a} :catch_17
    .catch Landroid/os/ServiceSpecificException; {:try_start_3 .. :try_end_a} :catch_c

    .line 206
    nop

    .line 207
    return-void

    .line 203
    :catch_c
    move-exception v0

    .line 204
    .local v0, "e":Landroid/os/ServiceSpecificException;
    new-instance v1, Landroid/security/KeyStoreException;

    iget v2, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    const-string v3, "Keystore error while trying to delete all keys."

    invoke-direct {v1, v2, v3}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 200
    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    :catch_17
    move-exception v0

    .line 201
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Landroid/security/KeyStoreException;

    const/4 v2, 0x4

    const-string v3, "Failure to connect to Keystore while trying to delete all keys."

    invoke-direct {v1, v2, v3}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method private static blacklist getService()Landroid/security/maintenance/IKeystoreMaintenance;
    .registers 1

    .line 44
    nop

    .line 45
    const-string v0, "android.security.maintenance"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 44
    invoke-static {v0}, Landroid/security/maintenance/IKeystoreMaintenance$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/maintenance/IKeystoreMaintenance;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getState(I)I
    .registers 4
    .param p0, "userId"    # I

    .line 135
    const-string v0, "AndroidKeyStoreMaintenance"

    :try_start_2
    invoke-static {}, Landroid/security/AndroidKeyStoreMaintenance;->getService()Landroid/security/maintenance/IKeystoreMaintenance;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/security/maintenance/IKeystoreMaintenance;->getState(I)I

    move-result v0
    :try_end_a
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_a} :catch_13
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_a} :catch_b

    return v0

    .line 139
    :catch_b
    move-exception v1

    .line 140
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Can not connect to keystore"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 141
    const/4 v0, 0x4

    return v0

    .line 136
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_13
    move-exception v1

    .line 137
    .local v1, "e":Landroid/os/ServiceSpecificException;
    const-string v2, "getState failed"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 138
    iget v0, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    return v0
.end method

.method public static blacklist migrateKeyNamespace(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;)I
    .registers 5
    .param p0, "source"    # Landroid/system/keystore2/KeyDescriptor;
    .param p1, "destination"    # Landroid/system/keystore2/KeyDescriptor;

    .line 178
    const-string v0, "AndroidKeyStoreMaintenance"

    :try_start_2
    invoke-static {}, Landroid/security/AndroidKeyStoreMaintenance;->getService()Landroid/security/maintenance/IKeystoreMaintenance;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Landroid/security/maintenance/IKeystoreMaintenance;->migrateKeyNamespace(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;)V
    :try_end_9
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_9} :catch_13
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_9} :catch_b

    .line 179
    const/4 v0, 0x0

    return v0

    .line 183
    :catch_b
    move-exception v1

    .line 184
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Can not connect to keystore"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 185
    const/4 v0, 0x4

    return v0

    .line 180
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_13
    move-exception v1

    .line 181
    .local v1, "e":Landroid/os/ServiceSpecificException;
    const-string/jumbo v2, "migrateKeyNamespace failed"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 182
    iget v0, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    return v0
.end method

.method public static blacklist onDeviceOffBody()V
    .registers 3

    .line 150
    :try_start_0
    invoke-static {}, Landroid/security/AndroidKeyStoreMaintenance;->getService()Landroid/security/maintenance/IKeystoreMaintenance;

    move-result-object v0

    invoke-interface {v0}, Landroid/security/maintenance/IKeystoreMaintenance;->onDeviceOffBody()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    .line 155
    goto :goto_10

    .line 151
    :catch_8
    move-exception v0

    .line 154
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AndroidKeyStoreMaintenance"

    const-string v2, "Error while reporting device off body event."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 156
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_10
    return-void
.end method

.method public static blacklist onUserAdded(I)I
    .registers 4
    .param p0, "userId"    # I

    .line 57
    const-string v0, "AndroidKeyStoreMaintenance"

    :try_start_2
    invoke-static {}, Landroid/security/AndroidKeyStoreMaintenance;->getService()Landroid/security/maintenance/IKeystoreMaintenance;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/security/maintenance/IKeystoreMaintenance;->onUserAdded(I)V
    :try_end_9
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_9} :catch_13
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_9} :catch_b

    .line 58
    const/4 v0, 0x0

    return v0

    .line 62
    :catch_b
    move-exception v1

    .line 63
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Can not connect to keystore"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 64
    const/4 v0, 0x4

    return v0

    .line 59
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_13
    move-exception v1

    .line 60
    .local v1, "e":Landroid/os/ServiceSpecificException;
    const-string/jumbo v2, "onUserAdded failed"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    iget v0, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    return v0
.end method

.method public static blacklist onUserPasswordChanged(I[B)I
    .registers 5
    .param p0, "userId"    # I
    .param p1, "password"    # [B

    .line 99
    const-string v0, "AndroidKeyStoreMaintenance"

    :try_start_2
    invoke-static {}, Landroid/security/AndroidKeyStoreMaintenance;->getService()Landroid/security/maintenance/IKeystoreMaintenance;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Landroid/security/maintenance/IKeystoreMaintenance;->onUserPasswordChanged(I[B)V
    :try_end_9
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_9} :catch_13
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_9} :catch_b

    .line 100
    const/4 v0, 0x0

    return v0

    .line 104
    :catch_b
    move-exception v1

    .line 105
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Can not connect to keystore"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 106
    const/4 v0, 0x4

    return v0

    .line 101
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_13
    move-exception v1

    .line 102
    .local v1, "e":Landroid/os/ServiceSpecificException;
    const-string/jumbo v2, "onUserPasswordChanged failed"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    iget v0, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    return v0
.end method

.method public static blacklist onUserRemoved(I)I
    .registers 4
    .param p0, "userId"    # I

    .line 77
    const-string v0, "AndroidKeyStoreMaintenance"

    :try_start_2
    invoke-static {}, Landroid/security/AndroidKeyStoreMaintenance;->getService()Landroid/security/maintenance/IKeystoreMaintenance;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/security/maintenance/IKeystoreMaintenance;->onUserRemoved(I)V
    :try_end_9
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_9} :catch_13
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_9} :catch_b

    .line 78
    const/4 v0, 0x0

    return v0

    .line 82
    :catch_b
    move-exception v1

    .line 83
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Can not connect to keystore"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 84
    const/4 v0, 0x4

    return v0

    .line 79
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_13
    move-exception v1

    .line 80
    .local v1, "e":Landroid/os/ServiceSpecificException;
    const-string/jumbo v2, "onUserRemoved failed"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    iget v0, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    return v0
.end method
