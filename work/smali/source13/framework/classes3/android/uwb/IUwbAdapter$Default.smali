.class public Landroid/uwb/IUwbAdapter$Default;
.super Ljava/lang/Object;
.source "IUwbAdapter.java"

# interfaces
.implements Landroid/uwb/IUwbAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/uwb/IUwbAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addControlee(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V
    .registers 3
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "params"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 183
    return-void
.end method

.method public blacklist addServiceProfile(Landroid/os/PersistableBundle;)Landroid/os/PersistableBundle;
    .registers 3
    .param p1, "parameters"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 331
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 362
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist closeRanging(Landroid/uwb/SessionHandle;)V
    .registers 2
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 167
    return-void
.end method

.method public blacklist getAdapterState()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 290
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAdfCertificateAndInfo(Landroid/os/PersistableBundle;)Landroid/os/PersistableBundle;
    .registers 3
    .param p1, "parameters"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 347
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getAdfProvisioningAuthorities(Landroid/os/PersistableBundle;)Landroid/os/PersistableBundle;
    .registers 3
    .param p1, "parameters"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 343
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getAllServiceProfiles()Landroid/os/PersistableBundle;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 339
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getChipIds()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 313
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getChipInfos()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/PersistableBundle;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 309
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getDefaultChipId()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 327
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSpecificationInfo(Ljava/lang/String;)Landroid/os/PersistableBundle;
    .registers 3
    .param p1, "chipId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 77
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getTimestampResolutionNanos(Ljava/lang/String;)J
    .registers 4
    .param p1, "chipId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 66
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist openRanging(Landroid/content/AttributionSource;Landroid/uwb/SessionHandle;Landroid/uwb/IUwbRangingCallbacks;Landroid/os/PersistableBundle;Ljava/lang/String;)V
    .registers 6
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p3, "rangingCallbacks"    # Landroid/uwb/IUwbRangingCallbacks;
    .param p4, "parameters"    # Landroid/os/PersistableBundle;
    .param p5, "chipId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 105
    return-void
.end method

.method public blacklist pause(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V
    .registers 3
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "params"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 223
    return-void
.end method

.method public blacklist provisionProfileAdfByScript(Landroid/os/PersistableBundle;Landroid/uwb/IUwbAdfProvisionStateCallbacks;)V
    .registers 3
    .param p1, "serviceProfileBundle"    # Landroid/os/PersistableBundle;
    .param p2, "callback"    # Landroid/uwb/IUwbAdfProvisionStateCallbacks;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 351
    return-void
.end method

.method public blacklist reconfigureRanging(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V
    .registers 3
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "parameters"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 139
    return-void
.end method

.method public blacklist registerAdapterStateCallbacks(Landroid/uwb/IUwbAdapterStateCallbacks;)V
    .registers 2
    .param p1, "adapterStateCallbacks"    # Landroid/uwb/IUwbAdapterStateCallbacks;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method

.method public blacklist registerVendorExtensionCallback(Landroid/uwb/IUwbVendorUciCallback;)V
    .registers 2
    .param p1, "callbacks"    # Landroid/uwb/IUwbVendorUciCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    return-void
.end method

.method public blacklist removeControlee(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V
    .registers 3
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "params"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 199
    return-void
.end method

.method public blacklist removeProfileAdf(Landroid/os/PersistableBundle;)I
    .registers 3
    .param p1, "serviceProfileBundle"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 354
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist removeServiceProfile(Landroid/os/PersistableBundle;)I
    .registers 3
    .param p1, "parameters"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 335
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist resume(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V
    .registers 3
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "params"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 242
    return-void
.end method

.method public blacklist sendData(Landroid/uwb/SessionHandle;Landroid/uwb/UwbAddress;Landroid/os/PersistableBundle;[B)V
    .registers 5
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "remoteDeviceAddress"    # Landroid/uwb/UwbAddress;
    .param p3, "params"    # Landroid/os/PersistableBundle;
    .param p4, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 263
    return-void
.end method

.method public blacklist sendVendorUciMessage(II[B)I
    .registers 5
    .param p1, "gid"    # I
    .param p2, "oid"    # I
    .param p3, "payload"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 358
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 277
    return-void
.end method

.method public blacklist startRanging(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V
    .registers 3
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p2, "parameters"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 122
    return-void
.end method

.method public blacklist stopRanging(Landroid/uwb/SessionHandle;)V
    .registers 2
    .param p1, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 153
    return-void
.end method

.method public blacklist unregisterAdapterStateCallbacks(Landroid/uwb/IUwbAdapterStateCallbacks;)V
    .registers 2
    .param p1, "callbacks"    # Landroid/uwb/IUwbAdapterStateCallbacks;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    return-void
.end method

.method public blacklist unregisterVendorExtensionCallback(Landroid/uwb/IUwbVendorUciCallback;)V
    .registers 2
    .param p1, "callbacks"    # Landroid/uwb/IUwbVendorUciCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    return-void
.end method
