.class public final Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;
.super Ljava/lang/Object;
.source "IRadioResponse.java"

# interfaces
.implements Landroid/hardware/radio/V1_6/IRadioResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/V1_6/IRadioResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Proxy"
.end annotation


# instance fields
.field private blacklist mRemote:Landroid/os/IHwBinder;


# direct methods
.method public constructor blacklist <init>(Landroid/os/IHwBinder;)V
    .registers 2

    .line 659
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 660
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IHwBinder;

    iput-object p1, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 661
    return-void
.end method


# virtual methods
.method public blacklist acceptCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1310
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1311
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1312
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1314
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1316
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x26

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1317
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1319
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1320
    nop

    .line 1321
    return-void

    .line 1319
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1320
    throw v0
.end method

.method public blacklist acknowledgeIncomingGsmSmsWithPduResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2270
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2271
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2272
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2274
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2276
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x60

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2277
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 2279
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2280
    nop

    .line 2281
    return-void

    .line 2279
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2280
    throw v0
.end method

.method public blacklist acknowledgeLastIncomingCdmaSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1967
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1968
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1969
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1971
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1973
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x4e

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1974
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1976
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1977
    nop

    .line 1978
    return-void

    .line 1976
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1977
    throw v0
.end method

.method public blacklist acknowledgeLastIncomingGsmSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1294
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1295
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1296
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1298
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1300
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x25

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1301
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1303
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1304
    nop

    .line 1305
    return-void

    .line 1303
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1304
    throw v0
.end method

.method public blacklist acknowledgeRequest(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2820
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2821
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2822
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2824
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2826
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x81

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2827
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 2829
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2830
    nop

    .line 2831
    return-void

    .line 2829
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2830
    throw v0
.end method

.method public blacklist allocatePduSessionIdResponse(Landroid/hardware/radio/V1_6/RadioResponseInfo;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3822
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3823
    const-string v1, "android.hardware.radio@1.6::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3824
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_6/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3825
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3827
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 3829
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0xbd

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3830
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 3832
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3833
    nop

    .line 3834
    return-void

    .line 3832
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3833
    throw p2
.end method

.method public blacklist areUiccApplicationsEnabledResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3370
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3371
    const-string v1, "android.hardware.radio@1.5::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3372
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3373
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 3375
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 3377
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0xa2

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3378
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 3380
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3381
    nop

    .line 3382
    return-void

    .line 3380
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3381
    throw p2
.end method

.method public whitelist asBinder()Landroid/os/IHwBinder;
    .registers 2

    .line 665
    iget-object v0, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    return-object v0
.end method

.method public blacklist cancelHandoverResponse(Landroid/hardware/radio/V1_6/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3871
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3872
    const-string v1, "android.hardware.radio@1.6::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3873
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_6/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3875
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 3877
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0xc0

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3878
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 3880
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3881
    nop

    .line 3882
    return-void

    .line 3880
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3881
    throw v0
.end method

.method public blacklist cancelPendingUssdResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1177
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1178
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1179
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1181
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1183
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x1e

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1184
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1186
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1187
    nop

    .line 1188
    return-void

    .line 1186
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1187
    throw v0
.end method

.method public blacklist changeIccPin2ForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 794
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 795
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 796
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 797
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 799
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 801
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v1, 0x7

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 802
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1f
    .catchall {:try_start_15 .. :try_end_1f} :catchall_24

    .line 804
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 805
    nop

    .line 806
    return-void

    .line 804
    :catchall_24
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 805
    throw p2
.end method

.method public blacklist changeIccPinForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 777
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 778
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 779
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 780
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 782
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 784
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v1, 0x6

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 785
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1f
    .catchall {:try_start_15 .. :try_end_1f} :catchall_24

    .line 787
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 788
    nop

    .line 789
    return-void

    .line 787
    :catchall_24
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 788
    throw p2
.end method

.method public blacklist conferenceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 942
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 943
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 944
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 946
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 948
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x10

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 949
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 951
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 952
    nop

    .line 953
    return-void

    .line 951
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 952
    throw v0
.end method

.method public blacklist deactivateDataCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1326
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1327
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1328
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1330
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1332
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x27

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1333
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1335
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1336
    nop

    .line 1337
    return-void

    .line 1335
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1336
    throw v0
.end method

.method public blacklist debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/NativeHandle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4125
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4126
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4127
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeNativeHandle(Landroid/os/NativeHandle;)V

    .line 4128
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 4130
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 4132
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v1, 0xf444247

    const/4 v2, 0x0

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4133
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 4134
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_24
    .catchall {:try_start_15 .. :try_end_24} :catchall_29

    .line 4136
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 4137
    nop

    .line 4138
    return-void

    .line 4136
    :catchall_29
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 4137
    throw p2
.end method

.method public blacklist deleteSmsOnRuimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2119
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2120
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2121
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2123
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2125
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x57

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2126
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 2128
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2129
    nop

    .line 2130
    return-void

    .line 2128
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2129
    throw v0
.end method

.method public blacklist deleteSmsOnSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1623
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1624
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1625
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1627
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1629
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x39

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1630
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1632
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1633
    nop

    .line 1634
    return-void

    .line 1632
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1633
    throw v0
.end method

.method public blacklist dialResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 845
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 846
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 847
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 849
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 851
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0xa

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 852
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 854
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 855
    nop

    .line 856
    return-void

    .line 854
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 855
    throw v0
.end method

.method public blacklist emergencyDialResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3120
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3121
    const-string v1, "android.hardware.radio@1.4::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3122
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3124
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 3126
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x93

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3127
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 3129
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3130
    nop

    .line 3131
    return-void

    .line 3129
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3130
    throw v0
.end method

.method public blacklist enableModemResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3086
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3087
    const-string v1, "android.hardware.radio@1.3::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3088
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3090
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 3092
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x91

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3093
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 3095
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3096
    nop

    .line 3097
    return-void

    .line 3095
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3096
    throw v0
.end method

.method public blacklist enableUiccApplicationsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3354
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3355
    const-string v1, "android.hardware.radio@1.5::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3356
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3358
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 3360
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0xa1

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3361
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 3363
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3364
    nop

    .line 3365
    return-void

    .line 3363
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3364
    throw v0
.end method

.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 2

    .line 680
    invoke-static {p0, p1}, Landroid/os/HidlSupport;->interfacesEqual(Landroid/os/IHwInterface;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public blacklist exitEmergencyCallbackModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2155
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2156
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2157
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2159
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2161
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x59

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2162
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 2164
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2165
    nop

    .line 2166
    return-void

    .line 2164
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2165
    throw v0
.end method

.method public blacklist explicitCallTransferResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1721
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1722
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1723
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1725
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1727
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x3f

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1728
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1730
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1731
    nop

    .line 1732
    return-void

    .line 1730
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1731
    throw v0
.end method

.method public blacklist getAllowedCarriersResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZLandroid/hardware/radio/V1_0/CarrierRestrictions;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2754
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2755
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2756
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2757
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 2758
    invoke-virtual {p3, v0}, Landroid/hardware/radio/V1_0/CarrierRestrictions;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2760
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2762
    :try_start_18
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p3, 0x7d

    const/4 v1, 0x1

    invoke-interface {p2, p3, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2763
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_28

    .line 2765
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2766
    nop

    .line 2767
    return-void

    .line 2765
    :catchall_28
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2766
    throw p2
.end method

.method public blacklist getAllowedCarriersResponse_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3286
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3287
    const-string v1, "android.hardware.radio@1.4::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3288
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3289
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3290
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3292
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 3294
    :try_start_18
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p3, 0x9d

    const/4 v1, 0x1

    invoke-interface {p2, p3, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3295
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_28

    .line 3297
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3298
    nop

    .line 3299
    return-void

    .line 3297
    :catchall_28
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3298
    throw p2
.end method

.method public blacklist getAllowedNetworkTypesBitmapResponse(Landroid/hardware/radio/V1_6/RadioResponseInfo;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3903
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3904
    const-string v1, "android.hardware.radio@1.6::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3905
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_6/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3906
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3908
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 3910
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0xc2

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3911
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 3913
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3914
    nop

    .line 3915
    return-void

    .line 3913
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3914
    throw p2
.end method

.method public blacklist getAvailableBandModesResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1655
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1656
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1657
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1658
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32Vector(Ljava/util/ArrayList;)V

    .line 1660
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1662
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x3b

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1663
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1665
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1666
    nop

    .line 1667
    return-void

    .line 1665
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1666
    throw p2
.end method

.method public blacklist getAvailableNetworksResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/OperatorInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1441
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1442
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1443
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1444
    invoke-static {v0, p2}, Landroid/hardware/radio/V1_0/OperatorInfo;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 1446
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1448
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x2e

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1449
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1451
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1452
    nop

    .line 1453
    return-void

    .line 1451
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1452
    throw p2
.end method

.method public blacklist getBarringInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_5/CellIdentity;Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Landroid/hardware/radio/V1_5/CellIdentity;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_5/BarringInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3517
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3518
    const-string v1, "android.hardware.radio@1.5::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3519
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3520
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_5/CellIdentity;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3521
    invoke-static {v0, p3}, Landroid/hardware/radio/V1_5/BarringInfo;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 3523
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 3525
    :try_start_18
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p3, 0xab

    const/4 v1, 0x1

    invoke-interface {p2, p3, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3526
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_28

    .line 3528
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3529
    nop

    .line 3530
    return-void

    .line 3528
    :catchall_28
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3529
    throw p2
.end method

.method public blacklist getBasebandVersionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1490
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1491
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1492
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1493
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1495
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1497
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x31

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1498
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1500
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1501
    nop

    .line 1502
    return-void

    .line 1500
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1501
    throw p2
.end method

.method public blacklist getCDMASubscriptionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2081
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2082
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2083
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2084
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2085
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2086
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2087
    invoke-virtual {v0, p5}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2088
    invoke-virtual {v0, p6}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2090
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2092
    :try_start_21
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p3, 0x55

    const/4 p4, 0x1

    invoke-interface {p2, p3, v0, p1, p4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2093
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_2c
    .catchall {:try_start_21 .. :try_end_2c} :catchall_31

    .line 2095
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2096
    nop

    .line 2097
    return-void

    .line 2095
    :catchall_31
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2096
    throw p2
.end method

.method public blacklist getCallForwardStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/CallForwardInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1227
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1228
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1229
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1230
    invoke-static {v0, p2}, Landroid/hardware/radio/V1_0/CallForwardInfo;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 1232
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1234
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x21

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1235
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1237
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1238
    nop

    .line 1239
    return-void

    .line 1237
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1238
    throw p2
.end method

.method public blacklist getCallWaitingResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZI)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1260
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1261
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1262
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1263
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1264
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1266
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1268
    :try_start_18
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p3, 0x23

    const/4 v1, 0x1

    invoke-interface {p2, p3, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1269
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_28

    .line 1271
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1272
    nop

    .line 1273
    return-void

    .line 1271
    :catchall_28
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1272
    throw p2
.end method

.method public blacklist getCdmaBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2032
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2033
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2034
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2035
    invoke-static {v0, p2}, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 2037
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2039
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x52

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2040
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2042
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2043
    nop

    .line 2044
    return-void

    .line 2042
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2043
    throw p2
.end method

.method public blacklist getCdmaRoamingPreferenceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1835
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1836
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1837
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1838
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1840
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1842
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x46

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1843
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1845
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1846
    nop

    .line 1847
    return-void

    .line 1845
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1846
    throw p2
.end method

.method public blacklist getCdmaSubscriptionSourceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2236
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2237
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2238
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2239
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2241
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2243
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x5e

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2244
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2246
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2247
    nop

    .line 2248
    return-void

    .line 2246
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2247
    throw p2
.end method

.method public blacklist getCellInfoListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/CellInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2320
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2321
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2322
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2323
    invoke-static {v0, p2}, Landroid/hardware/radio/V1_0/CellInfo;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 2325
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2327
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x63

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2328
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2330
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2331
    nop

    .line 2332
    return-void

    .line 2330
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2331
    throw p2
.end method

.method public blacklist getCellInfoListResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_2/CellInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2935
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2936
    const-string v1, "android.hardware.radio@1.2::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2937
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2938
    invoke-static {v0, p2}, Landroid/hardware/radio/V1_2/CellInfo;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 2940
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2942
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x88

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2943
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2945
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2946
    nop

    .line 2947
    return-void

    .line 2945
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2946
    throw p2
.end method

.method public blacklist getCellInfoListResponse_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_4/CellInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3152
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3153
    const-string v1, "android.hardware.radio@1.4::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3154
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3155
    invoke-static {v0, p2}, Landroid/hardware/radio/V1_4/CellInfo;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 3157
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 3159
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x95

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3160
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 3162
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3163
    nop

    .line 3164
    return-void

    .line 3162
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3163
    throw p2
.end method

.method public blacklist getCellInfoListResponse_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_5/CellInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3569
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3570
    const-string v1, "android.hardware.radio@1.5::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3571
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3572
    invoke-static {v0, p2}, Landroid/hardware/radio/V1_5/CellInfo;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 3574
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 3576
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0xae

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3577
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 3579
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3580
    nop

    .line 3581
    return-void

    .line 3579
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3580
    throw p2
.end method

.method public blacklist getCellInfoListResponse_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_6/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_6/CellInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3953
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3954
    const-string v1, "android.hardware.radio@1.6::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3955
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_6/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3956
    invoke-static {v0, p2}, Landroid/hardware/radio/V1_6/CellInfo;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 3958
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 3960
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0xc5

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3961
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 3963
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3964
    nop

    .line 3965
    return-void

    .line 3963
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3964
    throw p2
.end method

.method public blacklist getClipResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1556
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1557
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1558
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1559
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1561
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1563
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x35

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1564
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1566
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1567
    nop

    .line 1568
    return-void

    .line 1566
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1567
    throw p2
.end method

.method public blacklist getClirResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1193
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1194
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1195
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1196
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1197
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1199
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1201
    :try_start_18
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p3, 0x1f

    const/4 v1, 0x1

    invoke-interface {p2, p3, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1202
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_28

    .line 1204
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1205
    nop

    .line 1206
    return-void

    .line 1204
    :catchall_28
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1205
    throw p2
.end method

.method public blacklist getCurrentCallsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/Call;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 828
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 829
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 830
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 831
    invoke-static {v0, p2}, Landroid/hardware/radio/V1_0/Call;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 833
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 835
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x9

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 836
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 838
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 839
    nop

    .line 840
    return-void

    .line 838
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 839
    throw p2
.end method

.method public blacklist getCurrentCallsResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_2/Call;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3001
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3002
    const-string v1, "android.hardware.radio@1.2::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3003
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3004
    invoke-static {v0, p2}, Landroid/hardware/radio/V1_2/Call;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 3006
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 3008
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x8c

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3009
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 3011
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3012
    nop

    .line 3013
    return-void

    .line 3011
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3012
    throw p2
.end method

.method public blacklist getCurrentCallsResponse_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_6/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_6/Call;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4021
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4022
    const-string v1, "android.hardware.radio@1.6::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4023
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_6/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4024
    invoke-static {v0, p2}, Landroid/hardware/radio/V1_6/Call;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 4026
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 4028
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0xc9

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4029
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 4031
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 4032
    nop

    .line 4033
    return-void

    .line 4031
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 4032
    throw p2
.end method

.method public blacklist getDataCallListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/SetupDataCallResult;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1573
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1574
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1575
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1576
    invoke-static {v0, p2}, Landroid/hardware/radio/V1_0/SetupDataCallResult;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 1578
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1580
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x36

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1581
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1583
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1584
    nop

    .line 1585
    return-void

    .line 1583
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1584
    throw p2
.end method

.method public blacklist getDataCallListResponse_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_4/SetupDataCallResult;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3236
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3237
    const-string v1, "android.hardware.radio@1.4::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3238
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3239
    invoke-static {v0, p2}, Landroid/hardware/radio/V1_4/SetupDataCallResult;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 3241
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 3243
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x9a

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3244
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 3246
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3247
    nop

    .line 3248
    return-void

    .line 3246
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3247
    throw p2
.end method

.method public blacklist getDataCallListResponse_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_5/SetupDataCallResult;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3436
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3437
    const-string v1, "android.hardware.radio@1.5::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3438
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3439
    invoke-static {v0, p2}, Landroid/hardware/radio/V1_5/SetupDataCallResult;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 3441
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 3443
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0xa6

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3444
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 3446
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3447
    nop

    .line 3448
    return-void

    .line 3446
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3447
    throw p2
.end method

.method public blacklist getDataCallListResponse_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_6/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_6/SetupDataCallResult;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3688
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3689
    const-string v1, "android.hardware.radio@1.6::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3690
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_6/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3691
    invoke-static {v0, p2}, Landroid/hardware/radio/V1_6/SetupDataCallResult;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 3693
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 3695
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0xb5

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3696
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 3698
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3699
    nop

    .line 3700
    return-void

    .line 3698
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3699
    throw p2
.end method

.method public blacklist getDataRegistrationStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/DataRegStateResult;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1025
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1026
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1027
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1028
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/DataRegStateResult;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1030
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1032
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x15

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1033
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1035
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1036
    nop

    .line 1037
    return-void

    .line 1035
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1036
    throw p2
.end method

.method public blacklist getDataRegistrationStateResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_2/DataRegStateResult;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3052
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3053
    const-string v1, "android.hardware.radio@1.2::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3054
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3055
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_2/DataRegStateResult;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3057
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 3059
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x8f

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3060
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 3062
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3063
    nop

    .line 3064
    return-void

    .line 3062
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3063
    throw p2
.end method

.method public blacklist getDataRegistrationStateResponse_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_4/DataRegStateResult;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3169
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3170
    const-string v1, "android.hardware.radio@1.4::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3171
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3172
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_4/DataRegStateResult;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3174
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 3176
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x96

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3177
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 3179
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3180
    nop

    .line 3181
    return-void

    .line 3179
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3180
    throw p2
.end method

.method public blacklist getDataRegistrationStateResponse_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_5/RegStateResult;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3552
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3553
    const-string v1, "android.hardware.radio@1.5::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3554
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3555
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_5/RegStateResult;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3557
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 3559
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0xad

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3560
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 3562
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3563
    nop

    .line 3564
    return-void

    .line 3562
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3563
    throw p2
.end method

.method public blacklist getDataRegistrationStateResponse_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;Landroid/hardware/radio/V1_6/RegStateResult;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4004
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4005
    const-string v1, "android.hardware.radio@1.6::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4006
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_6/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4007
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_6/RegStateResult;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4009
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 4011
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0xc8

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4012
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 4014
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 4015
    nop

    .line 4016
    return-void

    .line 4014
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 4015
    throw p2
.end method

.method public blacklist getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4237
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4238
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4240
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4242
    :try_start_f
    iget-object v2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf524546

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4243
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 4244
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 4246
    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 4247
    invoke-virtual {v0, v1}, Landroid/internal/hidl/base/V1_0/DebugInfo;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_26
    .catchall {:try_start_f .. :try_end_26} :catchall_2b

    .line 4248
    nop

    .line 4250
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4248
    return-object v0

    .line 4250
    :catchall_2b
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4251
    throw v0
.end method

.method public blacklist getDeviceIdentityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2135
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2136
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2137
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2138
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2139
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2140
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2141
    invoke-virtual {v0, p5}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2143
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2145
    :try_start_1e
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p3, 0x58

    const/4 p4, 0x1

    invoke-interface {p2, p3, v0, p1, p4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2146
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_29
    .catchall {:try_start_1e .. :try_end_29} :catchall_2e

    .line 2148
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2149
    nop

    .line 2150
    return-void

    .line 2148
    :catchall_2e
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2149
    throw p2
.end method

.method public blacklist getFacilityLockForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1342
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1343
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1344
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1345
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1347
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1349
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x28

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1350
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1352
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1353
    nop

    .line 1354
    return-void

    .line 1352
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1353
    throw p2
.end method

.method public blacklist getGsmBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1983
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1984
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1985
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1986
    invoke-static {v0, p2}, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 1988
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1990
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x4f

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1991
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1993
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1994
    nop

    .line 1995
    return-void

    .line 1993
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1994
    throw p2
.end method

.method public blacklist getHardwareConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/HardwareConfig;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2569
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2570
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2571
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2572
    invoke-static {v0, p2}, Landroid/hardware/radio/V1_0/HardwareConfig;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 2574
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2576
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x72

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2577
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2579
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2580
    nop

    .line 2581
    return-void

    .line 2579
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2580
    throw p2
.end method

.method public blacklist getHashChain()Ljava/util/ArrayList;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4162
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4163
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4165
    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    .line 4167
    :try_start_f
    iget-object v1, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf485348

    const/4 v10, 0x0

    invoke-interface {v1, v3, v0, v2, v10}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4168
    invoke-virtual {v2}, Landroid/os/HwParcel;->verifySuccess()V

    .line 4169
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 4171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4173
    const-wide/16 v3, 0x10

    invoke-virtual {v2, v3, v4}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 4175
    const-wide/16 v3, 0x8

    invoke-virtual {v1, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v11

    .line 4176
    mul-int/lit8 v3, v11, 0x20

    int-to-long v3, v3

    .line 4177
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v5

    .line 4176
    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    invoke-virtual/range {v2 .. v9}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 4180
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4181
    nop

    :goto_41
    if-ge v10, v11, :cond_54

    .line 4182
    const/16 v3, 0x20

    new-array v4, v3, [B

    .line 4184
    mul-int/lit8 v5, v10, 0x20

    int-to-long v5, v5

    .line 4185
    invoke-virtual {v1, v5, v6, v4, v3}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 4186
    nop

    .line 4188
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_51
    .catchall {:try_start_f .. :try_end_51} :catchall_59

    .line 4181
    add-int/lit8 v10, v10, 0x1

    goto :goto_41

    .line 4192
    :cond_54
    nop

    .line 4194
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    .line 4192
    return-object v0

    .line 4194
    :catchall_59
    move-exception v0

    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    .line 4195
    throw v0
.end method

.method public blacklist getIMSIForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 861
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 862
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 863
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 864
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 866
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 868
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0xb

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 869
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 871
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 872
    nop

    .line 873
    return-void

    .line 871
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 872
    throw p2
.end method

.method public blacklist getIccCardStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/CardStatus;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 692
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 693
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 694
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 695
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/CardStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 697
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 699
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v1, 0x1

    invoke-interface {p2, v1, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 700
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_23

    .line 702
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 703
    nop

    .line 704
    return-void

    .line 702
    :catchall_23
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 703
    throw p2
.end method

.method public blacklist getIccCardStatusResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_2/CardStatus;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2952
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2953
    const-string v1, "android.hardware.radio@1.2::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2954
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2955
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_2/CardStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2957
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2959
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x89

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2960
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2962
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2963
    nop

    .line 2964
    return-void

    .line 2962
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2963
    throw p2
.end method

.method public blacklist getIccCardStatusResponse_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_4/CardStatus;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3186
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3187
    const-string v1, "android.hardware.radio@1.4::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3188
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3189
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_4/CardStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3191
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 3193
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x97

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3194
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 3196
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3197
    nop

    .line 3198
    return-void

    .line 3196
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3197
    throw p2
.end method

.method public blacklist getIccCardStatusResponse_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_5/CardStatus;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3637
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3638
    const-string v1, "android.hardware.radio@1.5::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3639
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3640
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_5/CardStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3642
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 3644
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0xb2

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3645
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 3647
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3648
    nop

    .line 3649
    return-void

    .line 3647
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3648
    throw p2
.end method

.method public blacklist getImsRegistrationStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZI)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2369
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2370
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2371
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2372
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 2373
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2375
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2377
    :try_start_18
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p3, 0x66

    const/4 v1, 0x1

    invoke-interface {p2, p3, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2378
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_28

    .line 2380
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2381
    nop

    .line 2382
    return-void

    .line 2380
    :catchall_28
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2381
    throw p2
.end method

.method public blacklist getLastCallFailCauseResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 974
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 975
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 976
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 977
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 979
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 981
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x12

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 982
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 984
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 985
    nop

    .line 986
    return-void

    .line 984
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 985
    throw p2
.end method

.method public blacklist getModemActivityInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/ActivityStatsInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2720
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2721
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2722
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2723
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/ActivityStatsInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2725
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2727
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x7b

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2728
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2730
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2731
    nop

    .line 2732
    return-void

    .line 2730
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2731
    throw p2
.end method

.method public blacklist getModemStackStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3102
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3103
    const-string v1, "android.hardware.radio@1.3::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3104
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3105
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 3107
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 3109
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x92

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3110
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 3112
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3113
    nop

    .line 3114
    return-void

    .line 3112
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3113
    throw p2
.end method

.method public blacklist getMuteResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1539
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1540
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1541
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1542
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1544
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1546
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x34

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1547
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1549
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1550
    nop

    .line 1551
    return-void

    .line 1549
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1550
    throw p2
.end method

.method public blacklist getNeighboringCidsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/NeighboringCell;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1770
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1771
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1772
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1773
    invoke-static {v0, p2}, Landroid/hardware/radio/V1_0/NeighboringCell;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 1775
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1777
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x42

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1778
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1780
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1781
    nop

    .line 1782
    return-void

    .line 1780
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1781
    throw p2
.end method

.method public blacklist getNetworkSelectionModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1392
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1393
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1394
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1395
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1397
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1399
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x2b

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1400
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1402
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1403
    nop

    .line 1404
    return-void

    .line 1402
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1403
    throw p2
.end method

.method public blacklist getOperatorResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1042
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1043
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1044
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1045
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1046
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1047
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1049
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1051
    :try_start_1b
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p3, 0x16

    const/4 p4, 0x1

    invoke-interface {p2, p3, v0, p1, p4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1052
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_26
    .catchall {:try_start_1b .. :try_end_26} :catchall_2b

    .line 1054
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1055
    nop

    .line 1056
    return-void

    .line 1054
    :catchall_2b
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1055
    throw p2
.end method

.method public blacklist getPreferredNetworkTypeBitmapResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3203
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3204
    const-string v1, "android.hardware.radio@1.4::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3205
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3206
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3208
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 3210
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x98

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3211
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 3213
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3214
    nop

    .line 3215
    return-void

    .line 3213
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3214
    throw p2
.end method

.method public blacklist getPreferredNetworkTypeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1753
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1754
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1755
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1756
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1758
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1760
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x41

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1761
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1763
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1764
    nop

    .line 1765
    return-void

    .line 1763
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1764
    throw p2
.end method

.method public blacklist getPreferredVoicePrivacyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1901
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1902
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1903
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1904
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1906
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1908
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x4a

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1909
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1911
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1912
    nop

    .line 1913
    return-void

    .line 1911
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1912
    throw p2
.end method

.method public blacklist getRadioCapabilityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/RadioCapability;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2635
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2636
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2637
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2638
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/RadioCapability;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2640
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2642
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x76

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2643
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2645
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2646
    nop

    .line 2647
    return-void

    .line 2645
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2646
    throw p2
.end method

.method public blacklist getSignalStrengthResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SignalStrength;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 991
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 992
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 993
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 994
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/SignalStrength;->writeToParcel(Landroid/os/HwParcel;)V

    .line 996
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 998
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x13

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 999
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1001
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1002
    nop

    .line 1003
    return-void

    .line 1001
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1002
    throw p2
.end method

.method public blacklist getSignalStrengthResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_2/SignalStrength;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3018
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3019
    const-string v1, "android.hardware.radio@1.2::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3020
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3021
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_2/SignalStrength;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3023
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 3025
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x8d

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3026
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 3028
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3029
    nop

    .line 3030
    return-void

    .line 3028
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3029
    throw p2
.end method

.method public blacklist getSignalStrengthResponse_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_4/SignalStrength;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3304
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3305
    const-string v1, "android.hardware.radio@1.4::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3306
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3307
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_4/SignalStrength;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3309
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 3311
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x9e

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3312
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 3314
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3315
    nop

    .line 3316
    return-void

    .line 3314
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3315
    throw p2
.end method

.method public blacklist getSignalStrengthResponse_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;Landroid/hardware/radio/V1_6/SignalStrength;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3970
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3971
    const-string v1, "android.hardware.radio@1.6::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3972
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_6/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3973
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_6/SignalStrength;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3975
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 3977
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0xc6

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3978
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 3980
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3981
    nop

    .line 3982
    return-void

    .line 3980
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3981
    throw p2
.end method

.method public blacklist getSimPhonebookCapacityResponse(Landroid/hardware/radio/V1_6/RadioResponseInfo;Landroid/hardware/radio/V1_6/PhonebookCapacity;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4071
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4072
    const-string v1, "android.hardware.radio@1.6::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4073
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_6/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4074
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_6/PhonebookCapacity;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4076
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 4078
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0xcc

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4079
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 4081
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 4082
    nop

    .line 4083
    return-void

    .line 4081
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 4082
    throw p2
.end method

.method public blacklist getSimPhonebookRecordsResponse(Landroid/hardware/radio/V1_6/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4055
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4056
    const-string v1, "android.hardware.radio@1.6::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4057
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_6/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4059
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 4061
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0xcb

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4062
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 4064
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 4065
    nop

    .line 4066
    return-void

    .line 4064
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 4065
    throw v0
.end method

.method public blacklist getSlicingConfigResponse(Landroid/hardware/radio/V1_6/RadioResponseInfo;Landroid/hardware/radio/V1_6/SlicingConfig;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4038
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4039
    const-string v1, "android.hardware.radio@1.6::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4040
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_6/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4041
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_6/SlicingConfig;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4043
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 4045
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0xca

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4046
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 4048
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 4049
    nop

    .line 4050
    return-void

    .line 4048
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 4049
    throw p2
.end method

.method public blacklist getSmscAddressResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2171
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2172
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2173
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2174
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2176
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2178
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x5a

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2179
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2181
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2182
    nop

    .line 2183
    return-void

    .line 2181
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2182
    throw p2
.end method

.method public blacklist getSystemSelectionChannelsResponse(Landroid/hardware/radio/V1_6/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_6/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_5/RadioAccessSpecifier;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3936
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3937
    const-string v1, "android.hardware.radio@1.6::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3938
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_6/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3939
    invoke-static {v0, p2}, Landroid/hardware/radio/V1_5/RadioAccessSpecifier;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 3941
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 3943
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0xc4

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3944
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 3946
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3947
    nop

    .line 3948
    return-void

    .line 3946
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3947
    throw p2
.end method

.method public blacklist getTTYModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1868
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1869
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1870
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1871
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1873
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1875
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x48

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1876
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1878
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1879
    nop

    .line 1880
    return-void

    .line 1878
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1879
    throw p2
.end method

.method public blacklist getVoiceRadioTechnologyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2303
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2304
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2305
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2306
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2308
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2310
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x62

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2311
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2313
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2314
    nop

    .line 2315
    return-void

    .line 2313
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2314
    throw p2
.end method

.method public blacklist getVoiceRegistrationStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/VoiceRegStateResult;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1008
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1009
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1010
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1011
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/VoiceRegStateResult;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1013
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1015
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x14

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1016
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1018
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1019
    nop

    .line 1020
    return-void

    .line 1018
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1019
    throw p2
.end method

.method public blacklist getVoiceRegistrationStateResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_2/VoiceRegStateResult;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3035
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3036
    const-string v1, "android.hardware.radio@1.2::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3037
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3038
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3040
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 3042
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x8e

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3043
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 3045
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3046
    nop

    .line 3047
    return-void

    .line 3045
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3046
    throw p2
.end method

.method public blacklist getVoiceRegistrationStateResponse_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_5/RegStateResult;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3535
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3536
    const-string v1, "android.hardware.radio@1.5::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3537
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3538
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_5/RegStateResult;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3540
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 3542
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0xac

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3543
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 3545
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3546
    nop

    .line 3547
    return-void

    .line 3545
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3546
    throw p2
.end method

.method public blacklist getVoiceRegistrationStateResponse_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;Landroid/hardware/radio/V1_6/RegStateResult;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3987
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3988
    const-string v1, "android.hardware.radio@1.6::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3989
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_6/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3990
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_6/RegStateResult;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3992
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 3994
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0xc7

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3995
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 3997
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3998
    nop

    .line 3999
    return-void

    .line 3997
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3998
    throw p2
.end method

.method public blacklist handleStkCallSetupRequestFromSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1705
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1706
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1707
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1709
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1711
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x3e

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1712
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1714
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1715
    nop

    .line 1716
    return-void

    .line 1714
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1715
    throw v0
.end method

.method public blacklist hangupConnectionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 878
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 879
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 880
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 882
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 884
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0xc

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 885
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 887
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 888
    nop

    .line 889
    return-void

    .line 887
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 888
    throw v0
.end method

.method public blacklist hangupForegroundResumeBackgroundResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 910
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 911
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 912
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 914
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 916
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0xe

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 917
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 919
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 920
    nop

    .line 921
    return-void

    .line 919
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 920
    throw v0
.end method

.method public blacklist hangupWaitingOrBackgroundResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 894
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 895
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 896
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 898
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 900
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0xd

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 901
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 903
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 904
    nop

    .line 905
    return-void

    .line 903
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 904
    throw v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 2

    .line 685
    invoke-virtual {p0}, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IHwBinder;->hashCode()I

    move-result v0

    return v0
.end method

.method public blacklist iccCloseLogicalChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2439
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2440
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2441
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2443
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2445
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x6a

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2446
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 2448
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2449
    nop

    .line 2450
    return-void

    .line 2448
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2449
    throw v0
.end method

.method public blacklist iccIOForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1144
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1145
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1146
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1147
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/IccIoResult;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1149
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1151
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x1c

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1152
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1154
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1155
    nop

    .line 1156
    return-void

    .line 1154
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1155
    throw p2
.end method

.method public blacklist iccOpenLogicalChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ILjava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2421
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2422
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2423
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2424
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2425
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 2427
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2429
    :try_start_18
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p3, 0x69

    const/4 v1, 0x1

    invoke-interface {p2, p3, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2430
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_28

    .line 2432
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2433
    nop

    .line 2434
    return-void

    .line 2432
    :catchall_28
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2433
    throw p2
.end method

.method public blacklist iccTransmitApduBasicChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2404
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2405
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2406
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2407
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/IccIoResult;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2409
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2411
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x68

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2412
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2414
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2415
    nop

    .line 2416
    return-void

    .line 2414
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2415
    throw p2
.end method

.method public blacklist iccTransmitApduLogicalChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2455
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2456
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2457
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2458
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/IccIoResult;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2460
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2462
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x6b

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2463
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2465
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2466
    nop

    .line 2467
    return-void

    .line 2465
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2466
    throw p2
.end method

.method public blacklist interfaceChain()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4106
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4107
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4109
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4111
    :try_start_f
    iget-object v2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf43484e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4112
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 4113
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 4115
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v0
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_27

    .line 4116
    nop

    .line 4118
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4116
    return-object v0

    .line 4118
    :catchall_27
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4119
    throw v0
.end method

.method public blacklist interfaceDescriptor()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4143
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4144
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4146
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4148
    :try_start_f
    iget-object v2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf445343

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4149
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 4150
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 4152
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_27

    .line 4153
    nop

    .line 4155
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4153
    return-object v0

    .line 4155
    :catchall_27
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4156
    throw v0
.end method

.method public blacklist isNrDualConnectivityEnabledResponse(Landroid/hardware/radio/V1_6/RadioResponseInfo;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3805
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3806
    const-string v1, "android.hardware.radio@1.6::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3807
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_6/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3808
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 3810
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 3812
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0xbc

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3813
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 3815
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3816
    nop

    .line 3817
    return-void

    .line 3815
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3816
    throw p2
.end method

.method public blacklist linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4216
    iget-object v0, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/IHwBinder;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    move-result p1

    return p1
.end method

.method public blacklist notifySyspropsChanged()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4257
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4258
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4260
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4262
    :try_start_f
    iget-object v2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf535953

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4263
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_20

    .line 4265
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4266
    nop

    .line 4267
    return-void

    .line 4265
    :catchall_20
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4266
    throw v0
.end method

.method public blacklist nvReadItemResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2472
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2473
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2474
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2475
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2477
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2479
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x6c

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2480
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2482
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2483
    nop

    .line 2484
    return-void

    .line 2482
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2483
    throw p2
.end method

.method public blacklist nvResetConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2521
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2522
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2523
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2525
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2527
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x6f

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2528
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 2530
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2531
    nop

    .line 2532
    return-void

    .line 2530
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2531
    throw v0
.end method

.method public blacklist nvWriteCdmaPrlResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2505
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2506
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2507
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2509
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2511
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x6e

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2512
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 2514
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2515
    nop

    .line 2516
    return-void

    .line 2514
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2515
    throw v0
.end method

.method public blacklist nvWriteItemResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2489
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2490
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2491
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2493
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2495
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x6d

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2496
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 2498
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2499
    nop

    .line 2500
    return-void

    .line 2498
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2499
    throw v0
.end method

.method public blacklist ping()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4221
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4222
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4224
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4226
    :try_start_f
    iget-object v2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf504e47

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4227
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 4228
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1e
    .catchall {:try_start_f .. :try_end_1e} :catchall_23

    .line 4230
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4231
    nop

    .line 4232
    return-void

    .line 4230
    :catchall_23
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4231
    throw v0
.end method

.method public blacklist pullLceDataResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceDataInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2703
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2704
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2705
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2706
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/LceDataInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2708
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2710
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x7a

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2711
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2713
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2714
    nop

    .line 2715
    return-void

    .line 2713
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2714
    throw p2
.end method

.method public blacklist rejectCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 958
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 959
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 960
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 962
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 964
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x11

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 965
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 967
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 968
    nop

    .line 969
    return-void

    .line 967
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 968
    throw v0
.end method

.method public blacklist releasePduSessionIdResponse(Landroid/hardware/radio/V1_6/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3839
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3840
    const-string v1, "android.hardware.radio@1.6::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3841
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_6/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3843
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 3845
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0xbe

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3846
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 3848
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3849
    nop

    .line 3850
    return-void

    .line 3848
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3849
    throw v0
.end method

.method public blacklist reportSmsMemoryStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2204
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2205
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2206
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2208
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2210
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x5c

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2211
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 2213
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2214
    nop

    .line 2215
    return-void

    .line 2213
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2214
    throw v0
.end method

.method public blacklist reportStkServiceIsRunningResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2220
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2221
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2222
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2224
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2226
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x5d

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2227
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 2229
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2230
    nop

    .line 2231
    return-void

    .line 2229
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2230
    throw v0
.end method

.method public blacklist requestIccSimAuthenticationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2586
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2587
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2588
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2589
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/IccIoResult;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2591
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2593
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x73

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2594
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2596
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2597
    nop

    .line 2598
    return-void

    .line 2596
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2597
    throw p2
.end method

.method public blacklist requestIsimAuthenticationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2253
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2254
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2255
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2256
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2258
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2260
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x5f

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2261
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2263
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2264
    nop

    .line 2265
    return-void

    .line 2263
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2264
    throw p2
.end method

.method public blacklist requestShutdownResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2619
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2620
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2621
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2623
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2625
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x75

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2626
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 2628
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2629
    nop

    .line 2630
    return-void

    .line 2628
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2629
    throw v0
.end method

.method public blacklist sendBurstDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1934
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1935
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1936
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1938
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1940
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x4c

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1941
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1943
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1944
    nop

    .line 1945
    return-void

    .line 1943
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1944
    throw v0
.end method

.method public blacklist sendCDMAFeatureCodeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1918
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1919
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1920
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1922
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1924
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x4b

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1925
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1927
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1928
    nop

    .line 1929
    return-void

    .line 1927
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1928
    throw v0
.end method

.method public blacklist sendCdmaSmsExpectMoreResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3602
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3603
    const-string v1, "android.hardware.radio@1.5::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3604
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3605
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/SendSmsResult;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3607
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 3609
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0xb0

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3610
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 3612
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3613
    nop

    .line 3614
    return-void

    .line 3612
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3613
    throw p2
.end method

.method public blacklist sendCdmaSmsExpectMoreResponse_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3756
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3757
    const-string v1, "android.hardware.radio@1.6::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3758
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_6/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3759
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/SendSmsResult;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3761
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 3763
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0xb9

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3764
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 3766
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3767
    nop

    .line 3768
    return-void

    .line 3766
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3767
    throw p2
.end method

.method public blacklist sendCdmaSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1950
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1951
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1952
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1953
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/SendSmsResult;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1955
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1957
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x4d

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1958
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1960
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1961
    nop

    .line 1962
    return-void

    .line 1960
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1961
    throw p2
.end method

.method public blacklist sendCdmaSmsResponse_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3739
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3740
    const-string v1, "android.hardware.radio@1.6::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3741
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_6/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3742
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/SendSmsResult;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3744
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 3746
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0xb8

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3747
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 3749
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3750
    nop

    .line 3751
    return-void

    .line 3749
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3750
    throw p2
.end method

.method public blacklist sendDeviceStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2772
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2773
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2774
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2776
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2778
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x7e

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2779
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 2781
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2782
    nop

    .line 2783
    return-void

    .line 2781
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2782
    throw v0
.end method

.method public blacklist sendDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1077
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1078
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1079
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1081
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1083
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x18

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1084
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1086
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1087
    nop

    .line 1088
    return-void

    .line 1086
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1087
    throw v0
.end method

.method public blacklist sendEnvelopeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1672
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1673
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1674
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1675
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1677
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1679
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x3c

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1680
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1682
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1683
    nop

    .line 1684
    return-void

    .line 1682
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1683
    throw p2
.end method

.method public blacklist sendEnvelopeWithStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2286
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2287
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2288
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2289
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/IccIoResult;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2291
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2293
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x61

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2294
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2296
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2297
    nop

    .line 2298
    return-void

    .line 2296
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2297
    throw p2
.end method

.method public blacklist sendImsSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2387
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2388
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2389
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2390
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/SendSmsResult;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2392
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2394
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x67

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2395
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2397
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2398
    nop

    .line 2399
    return-void

    .line 2397
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2398
    throw p2
.end method

.method public blacklist sendSMSExpectMoreResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1110
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1111
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1112
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1113
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/SendSmsResult;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1115
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1117
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x1a

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1118
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1120
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1121
    nop

    .line 1122
    return-void

    .line 1120
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1121
    throw p2
.end method

.method public blacklist sendSmsExpectMoreResponse_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3722
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3723
    const-string v1, "android.hardware.radio@1.6::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3724
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_6/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3725
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/SendSmsResult;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3727
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 3729
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0xb7

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3730
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 3732
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3733
    nop

    .line 3734
    return-void

    .line 3732
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3733
    throw p2
.end method

.method public blacklist sendSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1093
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1094
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1095
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1096
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/SendSmsResult;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1098
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1100
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x19

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1101
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1103
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1104
    nop

    .line 1105
    return-void

    .line 1103
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1104
    throw p2
.end method

.method public blacklist sendSmsResponse_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3705
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3706
    const-string v1, "android.hardware.radio@1.6::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3707
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_6/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3708
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/SendSmsResult;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3710
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 3712
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0xb6

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3713
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 3715
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3716
    nop

    .line 3717
    return-void

    .line 3715
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3716
    throw p2
.end method

.method public blacklist sendTerminalResponseToSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1689
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1690
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1691
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1693
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1695
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x3d

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1696
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1698
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1699
    nop

    .line 1700
    return-void

    .line 1698
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1699
    throw v0
.end method

.method public blacklist sendUssdResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1161
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1162
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1163
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1165
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1167
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x1d

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1168
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1170
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1171
    nop

    .line 1172
    return-void

    .line 1170
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1171
    throw v0
.end method

.method public blacklist separateConnectionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1507
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1508
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1509
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1511
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1513
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x32

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1514
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1516
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1517
    nop

    .line 1518
    return-void

    .line 1516
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1517
    throw v0
.end method

.method public blacklist setAllowedCarriersResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2737
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2738
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2739
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2740
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2742
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2744
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x7c

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2745
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2747
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2748
    nop

    .line 2749
    return-void

    .line 2747
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2748
    throw p2
.end method

.method public blacklist setAllowedCarriersResponse_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3270
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3271
    const-string v1, "android.hardware.radio@1.4::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3272
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3274
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 3276
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x9c

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3277
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 3279
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3280
    nop

    .line 3281
    return-void

    .line 3279
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3280
    throw v0
.end method

.method public blacklist setAllowedNetworkTypesBitmapResponse(Landroid/hardware/radio/V1_6/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3887
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3888
    const-string v1, "android.hardware.radio@1.6::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3889
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_6/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3891
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 3893
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0xc1

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3894
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 3896
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3897
    nop

    .line 3898
    return-void

    .line 3896
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3897
    throw v0
.end method

.method public blacklist setBandModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1639
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1640
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1641
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1643
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1645
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x3a

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1646
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1648
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1649
    nop

    .line 1650
    return-void

    .line 1648
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1649
    throw v0
.end method

.method public blacklist setBarringPasswordResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1376
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1377
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1378
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1380
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1382
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x2a

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1383
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1385
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1386
    nop

    .line 1387
    return-void

    .line 1385
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1386
    throw v0
.end method

.method public blacklist setCallForwardResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1244
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1245
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1246
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1248
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1250
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x22

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1251
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1253
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1254
    nop

    .line 1255
    return-void

    .line 1253
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1254
    throw v0
.end method

.method public blacklist setCallWaitingResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1278
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1279
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1280
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1282
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1284
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x24

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1285
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1287
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1288
    nop

    .line 1289
    return-void

    .line 1287
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1288
    throw v0
.end method

.method public blacklist setCarrierInfoForImsiEncryptionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2837
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2838
    const-string v1, "android.hardware.radio@1.1::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2839
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2841
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2843
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x82

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2844
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 2846
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2847
    nop

    .line 2848
    return-void

    .line 2846
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2847
    throw v0
.end method

.method public blacklist setCdmaBroadcastActivationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2065
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2066
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2067
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2069
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2071
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x54

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2072
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 2074
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2075
    nop

    .line 2076
    return-void

    .line 2074
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2075
    throw v0
.end method

.method public blacklist setCdmaBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2049
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2050
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2051
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2053
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2055
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x53

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2056
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 2058
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2059
    nop

    .line 2060
    return-void

    .line 2058
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2059
    throw v0
.end method

.method public blacklist setCdmaRoamingPreferenceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1819
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1820
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1821
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1823
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1825
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x45

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1826
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1828
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1829
    nop

    .line 1830
    return-void

    .line 1828
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1829
    throw v0
.end method

.method public blacklist setCdmaSubscriptionSourceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1803
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1804
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1805
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1807
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1809
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x44

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1810
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1812
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1813
    nop

    .line 1814
    return-void

    .line 1812
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1813
    throw v0
.end method

.method public blacklist setCellInfoListRateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2337
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2338
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2339
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2341
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2343
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x64

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2344
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 2346
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2347
    nop

    .line 2348
    return-void

    .line 2346
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2347
    throw v0
.end method

.method public blacklist setClirResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1211
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1212
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1213
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1215
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1217
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x20

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1218
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1220
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1221
    nop

    .line 1222
    return-void

    .line 1220
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1221
    throw v0
.end method

.method public blacklist setDataAllowedResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2553
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2554
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2555
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2557
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2559
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x71

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2560
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 2562
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2563
    nop

    .line 2564
    return-void

    .line 2562
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2563
    throw v0
.end method

.method public blacklist setDataProfileResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2603
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2604
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2605
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2607
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2609
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x74

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2610
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 2612
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2613
    nop

    .line 2614
    return-void

    .line 2612
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2613
    throw v0
.end method

.method public blacklist setDataProfileResponse_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3469
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3470
    const-string v1, "android.hardware.radio@1.5::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3471
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3473
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 3475
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0xa8

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3476
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 3478
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3479
    nop

    .line 3480
    return-void

    .line 3478
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3479
    throw v0
.end method

.method public blacklist setDataThrottlingResponse(Landroid/hardware/radio/V1_6/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3920
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3921
    const-string v1, "android.hardware.radio@1.6::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3922
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_6/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3924
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 3926
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0xc3

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3927
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 3929
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3930
    nop

    .line 3931
    return-void

    .line 3929
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3930
    throw v0
.end method

.method public blacklist setFacilityLockForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1359
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1360
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1361
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1362
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1364
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1366
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x29

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1367
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1369
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1370
    nop

    .line 1371
    return-void

    .line 1369
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1370
    throw p2
.end method

.method public blacklist setGsmBroadcastActivationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2016
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2017
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2018
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2020
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2022
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x51

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2023
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 2025
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2026
    nop

    .line 2027
    return-void

    .line 2025
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2026
    throw v0
.end method

.method public blacklist setGsmBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2000
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2001
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2002
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2004
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2006
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x50

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2007
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 2009
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2010
    nop

    .line 2011
    return-void

    .line 2009
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2010
    throw v0
.end method

.method public blacklist setHALInstrumentation()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4201
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4202
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4204
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4206
    :try_start_f
    iget-object v2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf494e54

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4207
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_20

    .line 4209
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4210
    nop

    .line 4211
    return-void

    .line 4209
    :catchall_20
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4210
    throw v0
.end method

.method public blacklist setIndicationFilterResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2788
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2789
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2790
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2792
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2794
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x7f

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2795
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 2797
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2798
    nop

    .line 2799
    return-void

    .line 2797
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2798
    throw v0
.end method

.method public blacklist setIndicationFilterResponse_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3501
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3502
    const-string v1, "android.hardware.radio@1.5::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3503
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3505
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 3507
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0xaa

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3508
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 3510
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3511
    nop

    .line 3512
    return-void

    .line 3510
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3511
    throw v0
.end method

.method public blacklist setInitialAttachApnResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2353
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2354
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2355
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2357
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2359
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x65

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2360
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 2362
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2363
    nop

    .line 2364
    return-void

    .line 2362
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2363
    throw v0
.end method

.method public blacklist setInitialAttachApnResponse_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3453
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3454
    const-string v1, "android.hardware.radio@1.5::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3455
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3457
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 3459
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0xa7

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3460
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 3462
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3463
    nop

    .line 3464
    return-void

    .line 3462
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3463
    throw v0
.end method

.method public blacklist setLinkCapacityReportingCriteriaResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2985
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2986
    const-string v1, "android.hardware.radio@1.2::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2987
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2989
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2991
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x8b

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2992
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 2994
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2995
    nop

    .line 2996
    return-void

    .line 2994
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2995
    throw v0
.end method

.method public blacklist setLinkCapacityReportingCriteriaResponse_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3338
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3339
    const-string v1, "android.hardware.radio@1.5::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3340
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3342
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 3344
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0xa0

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3345
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 3347
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3348
    nop

    .line 3349
    return-void

    .line 3347
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3348
    throw v0
.end method

.method public blacklist setLocationUpdatesResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1787
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1788
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1789
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1791
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1793
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x43

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1794
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1796
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1797
    nop

    .line 1798
    return-void

    .line 1796
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1797
    throw v0
.end method

.method public blacklist setMuteResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1523
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1524
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1525
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1527
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1529
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x33

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1530
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1532
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1533
    nop

    .line 1534
    return-void

    .line 1532
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1533
    throw v0
.end method

.method public blacklist setNetworkSelectionModeAutomaticResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1409
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1410
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1411
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1413
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1415
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x2c

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1416
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1418
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1419
    nop

    .line 1420
    return-void

    .line 1418
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1419
    throw v0
.end method

.method public blacklist setNetworkSelectionModeManualResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1425
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1426
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1427
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1429
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1431
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x2d

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1432
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1434
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1435
    nop

    .line 1436
    return-void

    .line 1434
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1435
    throw v0
.end method

.method public blacklist setNetworkSelectionModeManualResponse_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3586
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3587
    const-string v1, "android.hardware.radio@1.5::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3588
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3590
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 3592
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0xaf

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3593
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 3595
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3596
    nop

    .line 3597
    return-void

    .line 3595
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3596
    throw v0
.end method

.method public blacklist setNrDualConnectivityStateResponse(Landroid/hardware/radio/V1_6/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3789
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3790
    const-string v1, "android.hardware.radio@1.6::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3791
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_6/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3793
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 3795
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0xbb

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3796
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 3798
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3799
    nop

    .line 3800
    return-void

    .line 3798
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3799
    throw v0
.end method

.method public blacklist setPreferredNetworkTypeBitmapResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3220
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3221
    const-string v1, "android.hardware.radio@1.4::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3222
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3224
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 3226
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x99

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3227
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 3229
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3230
    nop

    .line 3231
    return-void

    .line 3229
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3230
    throw v0
.end method

.method public blacklist setPreferredNetworkTypeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1737
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1738
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1739
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1741
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1743
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x40

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1744
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1746
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1747
    nop

    .line 1748
    return-void

    .line 1746
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1747
    throw v0
.end method

.method public blacklist setPreferredVoicePrivacyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1885
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1886
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1887
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1889
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1891
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x49

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1892
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1894
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1895
    nop

    .line 1896
    return-void

    .line 1894
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1895
    throw v0
.end method

.method public blacklist setRadioCapabilityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/RadioCapability;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2652
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2653
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2654
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2655
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/RadioCapability;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2657
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2659
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x77

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2660
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2662
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2663
    nop

    .line 2664
    return-void

    .line 2662
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2663
    throw p2
.end method

.method public blacklist setRadioPowerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1061
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1062
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1063
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1065
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1067
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x17

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1068
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1070
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1071
    nop

    .line 1072
    return-void

    .line 1070
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1071
    throw v0
.end method

.method public blacklist setRadioPowerResponse_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3485
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3486
    const-string v1, "android.hardware.radio@1.5::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3487
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3489
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 3491
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0xa9

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3492
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 3494
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3495
    nop

    .line 3496
    return-void

    .line 3494
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3495
    throw v0
.end method

.method public blacklist setRadioPowerResponse_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3655
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3656
    const-string v1, "android.hardware.radio@1.6::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3657
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_6/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3659
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 3661
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0xb3

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3662
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 3664
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3665
    nop

    .line 3666
    return-void

    .line 3664
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3665
    throw v0
.end method

.method public blacklist setSignalStrengthReportingCriteriaResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2969
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2970
    const-string v1, "android.hardware.radio@1.2::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2971
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2973
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2975
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x8a

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2976
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 2978
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2979
    nop

    .line 2980
    return-void

    .line 2978
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2979
    throw v0
.end method

.method public blacklist setSignalStrengthReportingCriteriaResponse_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3322
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3323
    const-string v1, "android.hardware.radio@1.5::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3324
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3326
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 3328
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x9f

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3329
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 3331
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3332
    nop

    .line 3333
    return-void

    .line 3331
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3332
    throw v0
.end method

.method public blacklist setSimCardPowerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2804
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2805
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2806
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2808
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2810
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x80

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2811
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 2813
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2814
    nop

    .line 2815
    return-void

    .line 2813
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2814
    throw v0
.end method

.method public blacklist setSimCardPowerResponse_1_1(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2853
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2854
    const-string v1, "android.hardware.radio@1.1::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2855
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2857
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2859
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x83

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2860
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 2862
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2863
    nop

    .line 2864
    return-void

    .line 2862
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2863
    throw v0
.end method

.method public blacklist setSimCardPowerResponse_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3773
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3774
    const-string v1, "android.hardware.radio@1.6::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3775
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_6/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3777
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 3779
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0xba

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3780
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 3782
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3783
    nop

    .line 3784
    return-void

    .line 3782
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3783
    throw v0
.end method

.method public blacklist setSmscAddressResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2188
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2189
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2190
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2192
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2194
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x5b

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2195
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 2197
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2198
    nop

    .line 2199
    return-void

    .line 2197
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2198
    throw v0
.end method

.method public blacklist setSuppServiceNotificationsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1590
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1591
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1592
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1594
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1596
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x37

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1597
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1599
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1600
    nop

    .line 1601
    return-void

    .line 1599
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1600
    throw v0
.end method

.method public blacklist setSystemSelectionChannelsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3070
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3071
    const-string v1, "android.hardware.radio@1.3::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3072
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3074
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 3076
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x90

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3077
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 3079
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3080
    nop

    .line 3081
    return-void

    .line 3079
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3080
    throw v0
.end method

.method public blacklist setSystemSelectionChannelsResponse_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3387
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3388
    const-string v1, "android.hardware.radio@1.5::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3389
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3391
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 3393
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0xa3

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3394
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 3396
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3397
    nop

    .line 3398
    return-void

    .line 3396
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3397
    throw v0
.end method

.method public blacklist setTTYModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1852
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1853
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1854
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1856
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1858
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x47

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1859
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1861
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1862
    nop

    .line 1863
    return-void

    .line 1861
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1862
    throw v0
.end method

.method public blacklist setUiccSubscriptionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2537
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2538
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2539
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2541
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2543
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x70

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2544
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 2546
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2547
    nop

    .line 2548
    return-void

    .line 2546
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2547
    throw v0
.end method

.method public blacklist setupDataCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SetupDataCallResult;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1127
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1128
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1129
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1130
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/SetupDataCallResult;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1132
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1134
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x1b

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1135
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1137
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1138
    nop

    .line 1139
    return-void

    .line 1137
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1138
    throw p2
.end method

.method public blacklist setupDataCallResponse_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_4/SetupDataCallResult;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3253
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3254
    const-string v1, "android.hardware.radio@1.4::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3255
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3256
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_4/SetupDataCallResult;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3258
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 3260
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x9b

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3261
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 3263
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3264
    nop

    .line 3265
    return-void

    .line 3263
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3264
    throw p2
.end method

.method public blacklist setupDataCallResponse_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_5/SetupDataCallResult;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3419
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3420
    const-string v1, "android.hardware.radio@1.5::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3421
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3422
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_5/SetupDataCallResult;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3424
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 3426
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0xa5

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3427
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 3429
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3430
    nop

    .line 3431
    return-void

    .line 3429
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3430
    throw p2
.end method

.method public blacklist setupDataCallResponse_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;Landroid/hardware/radio/V1_6/SetupDataCallResult;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3671
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3672
    const-string v1, "android.hardware.radio@1.6::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3673
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_6/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3674
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_6/SetupDataCallResult;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3676
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 3678
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0xb4

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3679
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 3681
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3682
    nop

    .line 3683
    return-void

    .line 3681
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3682
    throw p2
.end method

.method public blacklist startDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1458
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1459
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1460
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1462
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1464
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x2f

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1465
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1467
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1468
    nop

    .line 1469
    return-void

    .line 1467
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1468
    throw v0
.end method

.method public blacklist startHandoverResponse(Landroid/hardware/radio/V1_6/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3855
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3856
    const-string v1, "android.hardware.radio@1.6::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3857
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_6/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3859
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 3861
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0xbf

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3862
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 3864
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3865
    nop

    .line 3866
    return-void

    .line 3864
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3865
    throw v0
.end method

.method public blacklist startKeepaliveResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_1/KeepaliveStatus;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2901
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2902
    const-string v1, "android.hardware.radio@1.1::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2903
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2904
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_1/KeepaliveStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2906
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2908
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x86

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2909
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2911
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2912
    nop

    .line 2913
    return-void

    .line 2911
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2912
    throw p2
.end method

.method public blacklist startLceServiceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceStatusInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2669
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2670
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2671
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2672
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/LceStatusInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2674
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2676
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x78

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2677
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2679
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2680
    nop

    .line 2681
    return-void

    .line 2679
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2680
    throw p2
.end method

.method public blacklist startNetworkScanResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2869
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2870
    const-string v1, "android.hardware.radio@1.1::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2871
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2873
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2875
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x84

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2876
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 2878
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2879
    nop

    .line 2880
    return-void

    .line 2878
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2879
    throw v0
.end method

.method public blacklist startNetworkScanResponse_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3136
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3137
    const-string v1, "android.hardware.radio@1.4::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3138
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3140
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 3142
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x94

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3143
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 3145
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3146
    nop

    .line 3147
    return-void

    .line 3145
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3146
    throw v0
.end method

.method public blacklist startNetworkScanResponse_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3403
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3404
    const-string v1, "android.hardware.radio@1.5::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3405
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3407
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 3409
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0xa4

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3410
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 3412
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3413
    nop

    .line 3414
    return-void

    .line 3412
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3413
    throw v0
.end method

.method public blacklist stopDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1474
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1475
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1476
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1478
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1480
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x30

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1481
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1483
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1484
    nop

    .line 1485
    return-void

    .line 1483
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1484
    throw v0
.end method

.method public blacklist stopKeepaliveResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2918
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2919
    const-string v1, "android.hardware.radio@1.1::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2920
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2922
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2924
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x87

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2925
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 2927
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2928
    nop

    .line 2929
    return-void

    .line 2927
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2928
    throw v0
.end method

.method public blacklist stopLceServiceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceStatusInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2686
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2687
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2688
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2689
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/LceStatusInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2691
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2693
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x79

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2694
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2696
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2697
    nop

    .line 2698
    return-void

    .line 2696
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2697
    throw p2
.end method

.method public blacklist stopNetworkScanResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2885
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2886
    const-string v1, "android.hardware.radio@1.1::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2887
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2889
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2891
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x85

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2892
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 2894
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2895
    nop

    .line 2896
    return-void

    .line 2894
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2895
    throw v0
.end method

.method public blacklist supplyIccPin2ForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 743
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 744
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 745
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 746
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 748
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 750
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 751
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1f
    .catchall {:try_start_15 .. :try_end_1f} :catchall_24

    .line 753
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 754
    nop

    .line 755
    return-void

    .line 753
    :catchall_24
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 754
    throw p2
.end method

.method public blacklist supplyIccPinForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 709
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 710
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 711
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 712
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 714
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 716
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 717
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1f
    .catchall {:try_start_15 .. :try_end_1f} :catchall_24

    .line 719
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 720
    nop

    .line 721
    return-void

    .line 719
    :catchall_24
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 720
    throw p2
.end method

.method public blacklist supplyIccPuk2ForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 760
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 761
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 762
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 763
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 765
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 767
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 768
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1f
    .catchall {:try_start_15 .. :try_end_1f} :catchall_24

    .line 770
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 771
    nop

    .line 772
    return-void

    .line 770
    :catchall_24
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 771
    throw p2
.end method

.method public blacklist supplyIccPukForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 726
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 727
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 728
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 729
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 731
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 733
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 734
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1f
    .catchall {:try_start_15 .. :try_end_1f} :catchall_24

    .line 736
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 737
    nop

    .line 738
    return-void

    .line 736
    :catchall_24
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 737
    throw p2
.end method

.method public blacklist supplyNetworkDepersonalizationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 811
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 812
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 813
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 814
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 816
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 818
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x8

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 819
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 821
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 822
    nop

    .line 823
    return-void

    .line 821
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 822
    throw p2
.end method

.method public blacklist supplySimDepersonalizationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3619
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3620
    const-string v1, "android.hardware.radio@1.5::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3621
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3622
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3623
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3625
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 3627
    :try_start_18
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p3, 0xb1

    const/4 v1, 0x1

    invoke-interface {p2, p3, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3628
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_28

    .line 3630
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3631
    nop

    .line 3632
    return-void

    .line 3630
    :catchall_28
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3631
    throw p2
.end method

.method public blacklist switchWaitingOrHoldingAndActiveResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 926
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 927
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 928
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 930
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 932
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0xf

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 933
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 935
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 936
    nop

    .line 937
    return-void

    .line 935
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 936
    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 671
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@Proxy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_17} :catch_18

    return-object v0

    .line 672
    :catch_18
    move-exception v0

    .line 675
    const-string v0, "[class or subclass of android.hardware.radio@1.6::IRadioResponse]@Proxy"

    return-object v0
.end method

.method public blacklist unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4272
    iget-object v0, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    invoke-interface {v0, p1}, Landroid/os/IHwBinder;->unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z

    move-result p1

    return p1
.end method

.method public blacklist updateSimPhonebookRecordsResponse(Landroid/hardware/radio/V1_6/RadioResponseInfo;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4088
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4089
    const-string v1, "android.hardware.radio@1.6::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4090
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_6/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4091
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4093
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 4095
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0xcd

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4096
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 4098
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 4099
    nop

    .line 4100
    return-void

    .line 4098
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 4099
    throw p2
.end method

.method public blacklist writeSmsToRuimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2102
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2103
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2104
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2105
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2107
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2109
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x56

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2110
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2112
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2113
    nop

    .line 2114
    return-void

    .line 2112
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2113
    throw p2
.end method

.method public blacklist writeSmsToSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1606
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1607
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1608
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1609
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1611
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1613
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_6/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x38

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1614
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1616
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1617
    nop

    .line 1618
    return-void

    .line 1616
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1617
    throw p2
.end method
