.class public final Landroid/hardware/radio/V1_5/IRadio$Proxy;
.super Ljava/lang/Object;
.source "IRadio.java"

# interfaces
.implements Landroid/hardware/radio/V1_5/IRadio;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/V1_5/IRadio;
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

    .line 502
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 503
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IHwBinder;

    iput-object p1, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 504
    return-void
.end method


# virtual methods
.method public blacklist acceptCall(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1184
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1185
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1186
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1188
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1190
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x27

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1191
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1193
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1194
    nop

    .line 1195
    return-void

    .line 1193
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1194
    throw v0
.end method

.method public blacklist acknowledgeIncomingGsmSmsWithPdu(IZLjava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2158
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2159
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2160
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2161
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 2162
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2164
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2166
    :try_start_18
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p3, 0x61

    const/4 v1, 0x1

    invoke-interface {p2, p3, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2167
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_28

    .line 2169
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2170
    nop

    .line 2171
    return-void

    .line 2169
    :catchall_28
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2170
    throw p2
.end method

.method public blacklist acknowledgeLastIncomingCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsAck;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1860
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1861
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1862
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1863
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/CdmaSmsAck;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1865
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1867
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x4f

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1868
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1870
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1871
    nop

    .line 1872
    return-void

    .line 1870
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1871
    throw p2
.end method

.method public blacklist acknowledgeLastIncomingGsmSms(IZI)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1166
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1167
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1168
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1169
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1170
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1172
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1174
    :try_start_18
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p3, 0x26

    const/4 v1, 0x1

    invoke-interface {p2, p3, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1175
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_28

    .line 1177
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1178
    nop

    .line 1179
    return-void

    .line 1177
    :catchall_28
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1178
    throw p2
.end method

.method public blacklist areUiccApplicationsEnabled(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3244
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3245
    const-string v1, "android.hardware.radio@1.5::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3246
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3248
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 3250
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x9f

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3251
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 3253
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3254
    nop

    .line 3255
    return-void

    .line 3253
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3254
    throw v0
.end method

.method public whitelist asBinder()Landroid/os/IHwBinder;
    .registers 2

    .line 508
    iget-object v0, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    return-object v0
.end method

.method public blacklist cancelPendingUssd(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1048
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1049
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1050
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1052
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1054
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x1f

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1055
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1057
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1058
    nop

    .line 1059
    return-void

    .line 1057
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1058
    throw v0
.end method

.method public blacklist changeIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 662
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 663
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 664
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 665
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 666
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 667
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 669
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 671
    :try_start_1b
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p3, 0x8

    const/4 p4, 0x1

    invoke-interface {p2, p3, v0, p1, p4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 672
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_26
    .catchall {:try_start_1b .. :try_end_26} :catchall_2b

    .line 674
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 675
    nop

    .line 676
    return-void

    .line 674
    :catchall_2b
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 675
    throw p2
.end method

.method public blacklist changeIccPinForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 643
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 644
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 645
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 646
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 647
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 648
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 650
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 652
    :try_start_1b
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 p3, 0x7

    const/4 p4, 0x1

    invoke-interface {p2, p3, v0, p1, p4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 653
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_2a

    .line 655
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 656
    nop

    .line 657
    return-void

    .line 655
    :catchall_2a
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 656
    throw p2
.end method

.method public blacklist conference(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 813
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 814
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 815
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 817
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 819
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x11

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 820
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 822
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 823
    nop

    .line 824
    return-void

    .line 822
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 823
    throw v0
.end method

.method public blacklist deactivateDataCall(IIZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1200
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1201
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1202
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1203
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1204
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1206
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1208
    :try_start_18
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p3, 0x28

    const/4 v1, 0x1

    invoke-interface {p2, p3, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1209
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_28

    .line 1211
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1212
    nop

    .line 1213
    return-void

    .line 1211
    :catchall_28
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1212
    throw p2
.end method

.method public blacklist deactivateDataCall_1_2(III)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2937
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2938
    const-string v1, "android.hardware.radio@1.2::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2939
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2940
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2941
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2943
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2945
    :try_start_18
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p3, 0x8e

    const/4 v1, 0x1

    invoke-interface {p2, p3, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2946
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_28

    .line 2948
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2949
    nop

    .line 2950
    return-void

    .line 2948
    :catchall_28
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2949
    throw p2
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

    .line 3508
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3509
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3510
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeNativeHandle(Landroid/os/NativeHandle;)V

    .line 3511
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 3513
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 3515
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v1, 0xf444247

    const/4 v2, 0x0

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3516
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 3517
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_24
    .catchall {:try_start_15 .. :try_end_24} :catchall_29

    .line 3519
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3520
    nop

    .line 3521
    return-void

    .line 3519
    :catchall_29
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3520
    throw p2
.end method

.method public blacklist deleteSmsOnRuim(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2010
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2011
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2012
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2013
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2015
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2017
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x58

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2018
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2020
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2021
    nop

    .line 2022
    return-void

    .line 2020
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2021
    throw p2
.end method

.method public blacklist deleteSmsOnSim(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1508
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1509
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1510
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1511
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1513
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1515
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x3a

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1516
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1518
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1519
    nop

    .line 1520
    return-void

    .line 1518
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1519
    throw p2
.end method

.method public blacklist dial(ILandroid/hardware/radio/V1_0/Dial;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 714
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 715
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 716
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 717
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/Dial;->writeToParcel(Landroid/os/HwParcel;)V

    .line 719
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 721
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0xb

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 722
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 724
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 725
    nop

    .line 726
    return-void

    .line 724
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 725
    throw p2
.end method

.method public blacklist emergencyDial(ILandroid/hardware/radio/V1_0/Dial;ILjava/util/ArrayList;IZZ)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/hardware/radio/V1_0/Dial;",
            "I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;IZZ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3064
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3065
    const-string v1, "android.hardware.radio@1.4::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3066
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3067
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/Dial;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3068
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3069
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 3070
    invoke-virtual {v0, p5}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3071
    invoke-virtual {v0, p6}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 3072
    invoke-virtual {v0, p7}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 3074
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 3076
    :try_start_24
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p3, 0x95

    const/4 p4, 0x1

    invoke-interface {p2, p3, v0, p1, p4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3077
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_2f
    .catchall {:try_start_24 .. :try_end_2f} :catchall_34

    .line 3079
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3080
    nop

    .line 3081
    return-void

    .line 3079
    :catchall_34
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3080
    throw p2
.end method

.method public blacklist enableModem(IZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2974
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2975
    const-string v1, "android.hardware.radio@1.3::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2976
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2977
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 2979
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2981
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x90

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2982
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2984
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2985
    nop

    .line 2986
    return-void

    .line 2984
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2985
    throw p2
.end method

.method public blacklist enableUiccApplications(IZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3227
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3228
    const-string v1, "android.hardware.radio@1.5::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3229
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3230
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 3232
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 3234
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x9e

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3235
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 3237
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3238
    nop

    .line 3239
    return-void

    .line 3237
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3238
    throw p2
.end method

.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 2

    .line 523
    invoke-static {p0, p1}, Landroid/os/HidlSupport;->interfacesEqual(Landroid/os/IHwInterface;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public blacklist exitEmergencyCallbackMode(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2043
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2044
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2045
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2047
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2049
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x5a

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2050
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 2052
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2053
    nop

    .line 2054
    return-void

    .line 2052
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2053
    throw v0
.end method

.method public blacklist explicitCallTransfer(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1609
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1610
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1611
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1613
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1615
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x40

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1616
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1618
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1619
    nop

    .line 1620
    return-void

    .line 1618
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1619
    throw v0
.end method

.method public blacklist getAllowedCarriers(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2651
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2652
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2653
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2655
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2657
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x7e

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2658
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 2660
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2661
    nop

    .line 2662
    return-void

    .line 2660
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2661
    throw v0
.end method

.method public blacklist getAllowedCarriers_1_4(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3154
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3155
    const-string v1, "android.hardware.radio@1.4::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3156
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3158
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 3160
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x9a

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3161
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 3163
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3164
    nop

    .line 3165
    return-void

    .line 3163
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3164
    throw v0
.end method

.method public blacklist getAvailableBandModes(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1542
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1543
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1544
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1546
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1548
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x3c

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1549
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1551
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1552
    nop

    .line 1553
    return-void

    .line 1551
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1552
    throw v0
.end method

.method public blacklist getAvailableNetworks(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1327
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1328
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1329
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1331
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1333
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x2f

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1334
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1336
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1337
    nop

    .line 1338
    return-void

    .line 1336
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1337
    throw v0
.end method

.method public blacklist getBarringInfo(I)V
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
    const-string v1, "android.hardware.radio@1.5::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3389
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3391
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 3393
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0xa7

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

.method public blacklist getBasebandVersion(I)V
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
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1378
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1380
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1382
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x32

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

.method public blacklist getCDMASubscription(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1977
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1978
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1979
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1981
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1983
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x56

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1984
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1986
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1987
    nop

    .line 1988
    return-void

    .line 1986
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1987
    throw v0
.end method

.method public blacklist getCallForwardStatus(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1097
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1098
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1099
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1100
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/CallForwardInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1102
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1104
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x22

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1105
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1107
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1108
    nop

    .line 1109
    return-void

    .line 1107
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1108
    throw p2
.end method

.method public blacklist getCallWaiting(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1131
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1132
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1133
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1134
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1136
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1138
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x24

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1139
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1141
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1142
    nop

    .line 1143
    return-void

    .line 1141
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1142
    throw p2
.end method

.method public blacklist getCdmaBroadcastConfig(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1927
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1928
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1929
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1931
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1933
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x53

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1934
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1936
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1937
    nop

    .line 1938
    return-void

    .line 1936
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1937
    throw v0
.end method

.method public blacklist getCdmaRoamingPreference(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1725
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1726
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1727
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1729
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1731
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x47

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1732
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1734
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1735
    nop

    .line 1736
    return-void

    .line 1734
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1735
    throw v0
.end method

.method public blacklist getCdmaSubscriptionSource(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2125
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2126
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2127
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2129
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2131
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x5f

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2132
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 2134
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2135
    nop

    .line 2136
    return-void

    .line 2134
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2135
    throw v0
.end method

.method public blacklist getCellInfoList(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2209
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2210
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2211
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2213
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2215
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x64

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2216
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 2218
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2219
    nop

    .line 2220
    return-void

    .line 2218
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2219
    throw v0
.end method

.method public blacklist getClip(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1442
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1443
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1444
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1446
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1448
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x36

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1449
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1451
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1452
    nop

    .line 1453
    return-void

    .line 1451
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1452
    throw v0
.end method

.method public blacklist getClir(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1064
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1065
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1066
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1068
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1070
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x20

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1071
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1073
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1074
    nop

    .line 1075
    return-void

    .line 1073
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1074
    throw v0
.end method

.method public blacklist getCurrentCalls(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 698
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 699
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 700
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 702
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 704
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0xa

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 705
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 707
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 708
    nop

    .line 709
    return-void

    .line 707
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 708
    throw v0
.end method

.method public blacklist getDataCallList(I)V
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
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1460
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1462
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1464
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x37

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

.method public blacklist getDataRegistrationState(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 893
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 894
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 895
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 897
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 899
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x16

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 900
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 902
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 903
    nop

    .line 904
    return-void

    .line 902
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 903
    throw v0
.end method

.method public blacklist getDataRegistrationState_1_5(I)V
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
    const-string v1, "android.hardware.radio@1.5::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3421
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3423
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 3425
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0xa9

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3426
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 3428
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3429
    nop

    .line 3430
    return-void

    .line 3428
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3429
    throw v0
.end method

.method public blacklist getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3620
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3621
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3623
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3625
    :try_start_f
    iget-object v2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf524546

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3626
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 3627
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 3629
    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 3630
    invoke-virtual {v0, v1}, Landroid/internal/hidl/base/V1_0/DebugInfo;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_26
    .catchall {:try_start_f .. :try_end_26} :catchall_2b

    .line 3631
    nop

    .line 3633
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3631
    return-object v0

    .line 3633
    :catchall_2b
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3634
    throw v0
.end method

.method public blacklist getDeviceIdentity(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2027
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2028
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2029
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2031
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2033
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x59

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2034
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 2036
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2037
    nop

    .line 2038
    return-void

    .line 2036
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2037
    throw v0
.end method

.method public blacklist getFacilityLockForApp(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1218
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1219
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1220
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1221
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1222
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1223
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1224
    invoke-virtual {v0, p5}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1226
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1228
    :try_start_1e
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p3, 0x29

    const/4 p4, 0x1

    invoke-interface {p2, p3, v0, p1, p4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1229
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_29
    .catchall {:try_start_1e .. :try_end_29} :catchall_2e

    .line 1231
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1232
    nop

    .line 1233
    return-void

    .line 1231
    :catchall_2e
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1232
    throw p2
.end method

.method public blacklist getGsmBroadcastConfig(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1877
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1878
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1879
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1881
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1883
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x50

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1884
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1886
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1887
    nop

    .line 1888
    return-void

    .line 1886
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1887
    throw v0
.end method

.method public blacklist getHardwareConfig(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2465
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2466
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2467
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2469
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2471
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x73

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2472
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 2474
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2475
    nop

    .line 2476
    return-void

    .line 2474
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2475
    throw v0
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

    .line 3545
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3546
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3548
    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    .line 3550
    :try_start_f
    iget-object v1, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf485348

    const/4 v10, 0x0

    invoke-interface {v1, v3, v0, v2, v10}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3551
    invoke-virtual {v2}, Landroid/os/HwParcel;->verifySuccess()V

    .line 3552
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 3554
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3556
    const-wide/16 v3, 0x10

    invoke-virtual {v2, v3, v4}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 3558
    const-wide/16 v3, 0x8

    invoke-virtual {v1, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v11

    .line 3559
    mul-int/lit8 v3, v11, 0x20

    int-to-long v3, v3

    .line 3560
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v5

    .line 3559
    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    invoke-virtual/range {v2 .. v9}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 3563
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3564
    nop

    :goto_41
    if-ge v10, v11, :cond_54

    .line 3565
    const/16 v3, 0x20

    new-array v4, v3, [B

    .line 3567
    mul-int/lit8 v5, v10, 0x20

    int-to-long v5, v5

    .line 3568
    invoke-virtual {v1, v5, v6, v4, v3}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 3569
    nop

    .line 3571
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_51
    .catchall {:try_start_f .. :try_end_51} :catchall_59

    .line 3564
    add-int/lit8 v10, v10, 0x1

    goto :goto_41

    .line 3575
    :cond_54
    nop

    .line 3577
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    .line 3575
    return-object v0

    .line 3577
    :catchall_59
    move-exception v0

    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    .line 3578
    throw v0
.end method

.method public blacklist getIccCardStatus(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 553
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 554
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 555
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 557
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 559
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 560
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_21

    .line 562
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 563
    nop

    .line 564
    return-void

    .line 562
    :catchall_21
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 563
    throw v0
.end method

.method public blacklist getImsRegistrationState(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2261
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2262
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2263
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2265
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2267
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x67

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2268
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 2270
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2271
    nop

    .line 2272
    return-void

    .line 2270
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2271
    throw v0
.end method

.method public blacklist getImsiForApp(ILjava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 731
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 732
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 733
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 734
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 736
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 738
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0xc

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 739
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 741
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 742
    nop

    .line 743
    return-void

    .line 741
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 742
    throw p2
.end method

.method public blacklist getLastCallFailCause(I)V
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
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 847
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 849
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 851
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x13

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

.method public blacklist getModemActivityInfo(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2617
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2618
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2619
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2621
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2623
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x7c

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2624
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 2626
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2627
    nop

    .line 2628
    return-void

    .line 2626
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2627
    throw v0
.end method

.method public blacklist getModemStackStatus(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2991
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2992
    const-string v1, "android.hardware.radio@1.3::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2993
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2995
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2997
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x91

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2998
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 3000
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3001
    nop

    .line 3002
    return-void

    .line 3000
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3001
    throw v0
.end method

.method public blacklist getMute(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1426
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1427
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1428
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1430
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1432
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x35

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1433
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1435
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1436
    nop

    .line 1437
    return-void

    .line 1435
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1436
    throw v0
.end method

.method public blacklist getNeighboringCids(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1658
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1659
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1660
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1662
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1664
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x43

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1665
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1667
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1668
    nop

    .line 1669
    return-void

    .line 1667
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1668
    throw v0
.end method

.method public blacklist getNetworkSelectionMode(I)V
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
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1280
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1282
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1284
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x2c

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

.method public blacklist getOperator(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 909
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 910
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 911
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 913
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 915
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x17

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 916
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 918
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 919
    nop

    .line 920
    return-void

    .line 918
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 919
    throw v0
.end method

.method public blacklist getPreferredNetworkType(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1642
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1643
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1644
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1646
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1648
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x42

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1649
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1651
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1652
    nop

    .line 1653
    return-void

    .line 1651
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1652
    throw v0
.end method

.method public blacklist getPreferredNetworkTypeBitmap(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3103
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3104
    const-string v1, "android.hardware.radio@1.4::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3105
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3107
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 3109
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x97

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3110
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 3112
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3113
    nop

    .line 3114
    return-void

    .line 3112
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3113
    throw v0
.end method

.method public blacklist getPreferredVoicePrivacy(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1791
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1792
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1793
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1795
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1797
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x4b

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1798
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1800
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1801
    nop

    .line 1802
    return-void

    .line 1800
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1801
    throw v0
.end method

.method public blacklist getRadioCapability(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2534
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2535
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2536
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2538
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2540
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x77

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2541
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 2543
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2544
    nop

    .line 2545
    return-void

    .line 2543
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2544
    throw v0
.end method

.method public blacklist getSignalStrength(I)V
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
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 863
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 865
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 867
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x14

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 868
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 870
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 871
    nop

    .line 872
    return-void

    .line 870
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 871
    throw v0
.end method

.method public blacklist getSignalStrength_1_4(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3170
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3171
    const-string v1, "android.hardware.radio@1.4::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3172
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3174
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 3176
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x9b

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3177
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 3179
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3180
    nop

    .line 3181
    return-void

    .line 3179
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3180
    throw v0
.end method

.method public blacklist getSmscAddress(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2059
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2060
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2061
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2063
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2065
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x5b

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2066
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 2068
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2069
    nop

    .line 2070
    return-void

    .line 2068
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2069
    throw v0
.end method

.method public blacklist getTTYMode(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1758
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1759
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1760
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1762
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1764
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x49

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1765
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1767
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1768
    nop

    .line 1769
    return-void

    .line 1767
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1768
    throw v0
.end method

.method public blacklist getVoiceRadioTechnology(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2193
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2194
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2195
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2197
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2199
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x63

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2200
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 2202
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2203
    nop

    .line 2204
    return-void

    .line 2202
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2203
    throw v0
.end method

.method public blacklist getVoiceRegistrationState(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 877
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 878
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 879
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 881
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 883
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x15

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 884
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 886
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 887
    nop

    .line 888
    return-void

    .line 886
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 887
    throw v0
.end method

.method public blacklist getVoiceRegistrationState_1_5(I)V
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
    const-string v1, "android.hardware.radio@1.5::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3405
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3407
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 3409
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0xa8

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

.method public blacklist handleStkCallSetupRequestFromSim(IZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1592
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1593
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1594
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1595
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1597
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1599
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x3f

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1600
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1602
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1603
    nop

    .line 1604
    return-void

    .line 1602
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1603
    throw p2
.end method

.method public blacklist hangup(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 748
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 749
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 750
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 751
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 753
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 755
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0xd

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 756
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 758
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 759
    nop

    .line 760
    return-void

    .line 758
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 759
    throw p2
.end method

.method public blacklist hangupForegroundResumeBackground(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 781
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 782
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 783
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 785
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 787
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0xf

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 788
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 790
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 791
    nop

    .line 792
    return-void

    .line 790
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 791
    throw v0
.end method

.method public blacklist hangupWaitingOrBackground(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 765
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 766
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 767
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 769
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 771
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0xe

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 772
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 774
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 775
    nop

    .line 776
    return-void

    .line 774
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 775
    throw v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 2

    .line 528
    invoke-virtual {p0}, Landroid/hardware/radio/V1_5/IRadio$Proxy;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IHwBinder;->hashCode()I

    move-result v0

    return v0
.end method

.method public blacklist iccCloseLogicalChannel(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2329
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2330
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2331
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2332
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2334
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2336
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x6b

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2337
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2339
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2340
    nop

    .line 2341
    return-void

    .line 2339
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2340
    throw p2
.end method

.method public blacklist iccIOForApp(ILandroid/hardware/radio/V1_0/IccIo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1014
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1015
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1016
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1017
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/IccIo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1019
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1021
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x1d

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1022
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1024
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1025
    nop

    .line 1026
    return-void

    .line 1024
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1025
    throw p2
.end method

.method public blacklist iccOpenLogicalChannel(ILjava/lang/String;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2311
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2312
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2313
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2314
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2315
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2317
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2319
    :try_start_18
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p3, 0x6a

    const/4 v1, 0x1

    invoke-interface {p2, p3, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2320
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_28

    .line 2322
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2323
    nop

    .line 2324
    return-void

    .line 2322
    :catchall_28
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2323
    throw p2
.end method

.method public blacklist iccTransmitApduBasicChannel(ILandroid/hardware/radio/V1_0/SimApdu;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2294
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2295
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2296
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2297
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/SimApdu;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2299
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2301
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x69

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2302
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2304
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2305
    nop

    .line 2306
    return-void

    .line 2304
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2305
    throw p2
.end method

.method public blacklist iccTransmitApduLogicalChannel(ILandroid/hardware/radio/V1_0/SimApdu;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2346
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2347
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2348
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2349
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/SimApdu;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2351
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2353
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x6c

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2354
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2356
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2357
    nop

    .line 2358
    return-void

    .line 2356
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2357
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

    .line 3489
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3490
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3492
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3494
    :try_start_f
    iget-object v2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf43484e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3495
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 3496
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 3498
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v0
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_27

    .line 3499
    nop

    .line 3501
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3499
    return-object v0

    .line 3501
    :catchall_27
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3502
    throw v0
.end method

.method public blacklist interfaceDescriptor()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3526
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3527
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3529
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3531
    :try_start_f
    iget-object v2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf445343

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3532
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 3533
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 3535
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_27

    .line 3536
    nop

    .line 3538
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3536
    return-object v0

    .line 3538
    :catchall_27
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3539
    throw v0
.end method

.method public blacklist linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3599
    iget-object v0, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

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

    .line 3640
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3641
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3643
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3645
    :try_start_f
    iget-object v2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf535953

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3646
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_20

    .line 3648
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3649
    nop

    .line 3650
    return-void

    .line 3648
    :catchall_20
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3649
    throw v0
.end method

.method public blacklist nvReadItem(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2363
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2364
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2365
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2366
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2368
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2370
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x6d

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2371
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2373
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2374
    nop

    .line 2375
    return-void

    .line 2373
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2374
    throw p2
.end method

.method public blacklist nvResetConfig(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2414
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2415
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2416
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2417
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2419
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2421
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x70

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2422
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2424
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2425
    nop

    .line 2426
    return-void

    .line 2424
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2425
    throw p2
.end method

.method public blacklist nvWriteCdmaPrl(ILjava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
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

    .line 2397
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2398
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2399
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2400
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 2402
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2404
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x6f

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2405
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2407
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2408
    nop

    .line 2409
    return-void

    .line 2407
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2408
    throw p2
.end method

.method public blacklist nvWriteItem(ILandroid/hardware/radio/V1_0/NvWriteItem;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2380
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2381
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2382
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2383
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/NvWriteItem;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2385
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2387
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x6e

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2388
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2390
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2391
    nop

    .line 2392
    return-void

    .line 2390
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2391
    throw p2
.end method

.method public blacklist ping()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3604
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3605
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3607
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3609
    :try_start_f
    iget-object v2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf504e47

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3610
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 3611
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1e
    .catchall {:try_start_f .. :try_end_1e} :catchall_23

    .line 3613
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3614
    nop

    .line 3615
    return-void

    .line 3613
    :catchall_23
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3614
    throw v0
.end method

.method public blacklist pullLceData(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2601
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2602
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2603
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2605
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2607
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x7b

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2608
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 2610
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2611
    nop

    .line 2612
    return-void

    .line 2610
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2611
    throw v0
.end method

.method public blacklist rejectCall(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 829
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 830
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 831
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 833
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 835
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x12

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 836
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 838
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 839
    nop

    .line 840
    return-void

    .line 838
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 839
    throw v0
.end method

.method public blacklist reportSmsMemoryStatus(IZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2092
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2093
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2094
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2095
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 2097
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2099
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x5d

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2100
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2102
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2103
    nop

    .line 2104
    return-void

    .line 2102
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2103
    throw p2
.end method

.method public blacklist reportStkServiceIsRunning(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2109
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2110
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2111
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2113
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2115
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x5e

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2116
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 2118
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2119
    nop

    .line 2120
    return-void

    .line 2118
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2119
    throw v0
.end method

.method public blacklist requestIccSimAuthentication(IILjava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2481
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2482
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2483
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2484
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2485
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2486
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2488
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2490
    :try_start_1b
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p3, 0x74

    const/4 p4, 0x1

    invoke-interface {p2, p3, v0, p1, p4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2491
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_26
    .catchall {:try_start_1b .. :try_end_26} :catchall_2b

    .line 2493
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2494
    nop

    .line 2495
    return-void

    .line 2493
    :catchall_2b
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2494
    throw p2
.end method

.method public blacklist requestIsimAuthentication(ILjava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2141
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2142
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2143
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2144
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2146
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2148
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x60

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2149
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2151
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2152
    nop

    .line 2153
    return-void

    .line 2151
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2152
    throw p2
.end method

.method public blacklist requestShutdown(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2518
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2519
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2520
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2522
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2524
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x76

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2525
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 2527
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2528
    nop

    .line 2529
    return-void

    .line 2527
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2528
    throw v0
.end method

.method public blacklist responseAcknowledgement()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2719
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2720
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2722
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2724
    :try_start_f
    iget-object v2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x82

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2725
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1a
    .catchall {:try_start_f .. :try_end_1a} :catchall_1f

    .line 2727
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2728
    nop

    .line 2729
    return-void

    .line 2727
    :catchall_1f
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2728
    throw v0
.end method

.method public blacklist sendBurstDtmf(ILjava/lang/String;II)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1824
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1825
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1826
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1827
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1828
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1829
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1831
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1833
    :try_start_1b
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p3, 0x4d

    const/4 p4, 0x1

    invoke-interface {p2, p3, v0, p1, p4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1834
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_26
    .catchall {:try_start_1b .. :try_end_26} :catchall_2b

    .line 1836
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1837
    nop

    .line 1838
    return-void

    .line 1836
    :catchall_2b
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1837
    throw p2
.end method

.method public blacklist sendCDMAFeatureCode(ILjava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1807
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1808
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1809
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1810
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1812
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1814
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x4c

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1815
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1817
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1818
    nop

    .line 1819
    return-void

    .line 1817
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1818
    throw p2
.end method

.method public blacklist sendCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1843
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1844
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1845
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1846
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1848
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1850
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x4e

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1851
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1853
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1854
    nop

    .line 1855
    return-void

    .line 1853
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1854
    throw p2
.end method

.method public blacklist sendCdmaSmsExpectMore(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V
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
    const-string v1, "android.hardware.radio@1.5::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3455
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3456
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3458
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 3460
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0xab

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3461
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 3463
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3464
    nop

    .line 3465
    return-void

    .line 3463
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3464
    throw p2
.end method

.method public blacklist sendDeviceState(IIZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2667
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2668
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2669
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2670
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2671
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 2673
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2675
    :try_start_18
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p3, 0x7f

    const/4 v1, 0x1

    invoke-interface {p2, p3, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2676
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_28

    .line 2678
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2679
    nop

    .line 2680
    return-void

    .line 2678
    :catchall_28
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2679
    throw p2
.end method

.method public blacklist sendDtmf(ILjava/lang/String;)V
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
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 944
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 945
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 947
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 949
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x19

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 950
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 952
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 953
    nop

    .line 954
    return-void

    .line 952
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 953
    throw p2
.end method

.method public blacklist sendEnvelope(ILjava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1558
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1559
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1560
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1561
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1563
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1565
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x3d

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1566
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1568
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1569
    nop

    .line 1570
    return-void

    .line 1568
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1569
    throw p2
.end method

.method public blacklist sendEnvelopeWithStatus(ILjava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2176
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2177
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2178
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2179
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2181
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2183
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x62

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2184
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2186
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2187
    nop

    .line 2188
    return-void

    .line 2186
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2187
    throw p2
.end method

.method public blacklist sendImsSms(ILandroid/hardware/radio/V1_0/ImsSmsMessage;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2277
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2278
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2279
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2280
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/ImsSmsMessage;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2282
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2284
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x68

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2285
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2287
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2288
    nop

    .line 2289
    return-void

    .line 2287
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2288
    throw p2
.end method

.method public blacklist sendSMSExpectMore(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 976
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 977
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 978
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 979
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/GsmSmsMessage;->writeToParcel(Landroid/os/HwParcel;)V

    .line 981
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 983
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x1b

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 984
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 986
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 987
    nop

    .line 988
    return-void

    .line 986
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 987
    throw p2
.end method

.method public blacklist sendSms(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 959
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 960
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 961
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 962
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/GsmSmsMessage;->writeToParcel(Landroid/os/HwParcel;)V

    .line 964
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 966
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x1a

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 967
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 969
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 970
    nop

    .line 971
    return-void

    .line 969
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 970
    throw p2
.end method

.method public blacklist sendTerminalResponseToSim(ILjava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1575
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1576
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1577
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1578
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1580
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1582
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x3e

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1583
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1585
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1586
    nop

    .line 1587
    return-void

    .line 1585
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1586
    throw p2
.end method

.method public blacklist sendUssd(ILjava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1031
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1032
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1033
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1034
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1036
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1038
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x1e

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1039
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1041
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1042
    nop

    .line 1043
    return-void

    .line 1041
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1042
    throw p2
.end method

.method public blacklist separateConnection(II)V
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
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1394
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1395
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1397
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1399
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x33

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

.method public blacklist setAllowedCarriers(IZLandroid/hardware/radio/V1_0/CarrierRestrictions;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2633
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2634
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2635
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2636
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 2637
    invoke-virtual {p3, v0}, Landroid/hardware/radio/V1_0/CarrierRestrictions;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2639
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2641
    :try_start_18
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p3, 0x7d

    const/4 v1, 0x1

    invoke-interface {p2, p3, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2642
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_28

    .line 2644
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2645
    nop

    .line 2646
    return-void

    .line 2644
    :catchall_28
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2645
    throw p2
.end method

.method public blacklist setAllowedCarriers_1_4(ILandroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;I)V
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
    const-string v1, "android.hardware.radio@1.4::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3138
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3139
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3140
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3142
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 3144
    :try_start_18
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p3, 0x99

    const/4 v1, 0x1

    invoke-interface {p2, p3, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3145
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_28

    .line 3147
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3148
    nop

    .line 3149
    return-void

    .line 3147
    :catchall_28
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3148
    throw p2
.end method

.method public blacklist setBandMode(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1525
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1526
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1527
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1528
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1530
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1532
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x3b

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1533
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1535
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1536
    nop

    .line 1537
    return-void

    .line 1535
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1536
    throw p2
.end method

.method public blacklist setBarringPassword(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1259
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1260
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1261
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1262
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1263
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1264
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1266
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1268
    :try_start_1b
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p3, 0x2b

    const/4 p4, 0x1

    invoke-interface {p2, p3, v0, p1, p4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1269
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_26
    .catchall {:try_start_1b .. :try_end_26} :catchall_2b

    .line 1271
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1272
    nop

    .line 1273
    return-void

    .line 1271
    :catchall_2b
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1272
    throw p2
.end method

.method public blacklist setCallForward(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1114
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1115
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1116
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1117
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/CallForwardInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1119
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1121
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x23

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1122
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1124
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1125
    nop

    .line 1126
    return-void

    .line 1124
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1125
    throw p2
.end method

.method public blacklist setCallWaiting(IZI)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1148
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1149
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1150
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1151
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1152
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1154
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1156
    :try_start_18
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p3, 0x25

    const/4 v1, 0x1

    invoke-interface {p2, p3, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1157
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_28

    .line 1159
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1160
    nop

    .line 1161
    return-void

    .line 1159
    :catchall_28
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1160
    throw p2
.end method

.method public blacklist setCarrierInfoForImsiEncryption(ILandroid/hardware/radio/V1_1/ImsiEncryptionInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2735
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2736
    const-string v1, "android.hardware.radio@1.1::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2737
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2738
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2740
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2742
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x83

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2743
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2745
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2746
    nop

    .line 2747
    return-void

    .line 2745
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2746
    throw p2
.end method

.method public blacklist setCdmaBroadcastActivation(IZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1960
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1961
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1962
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1963
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1965
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1967
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x55

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1968
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1970
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1971
    nop

    .line 1972
    return-void

    .line 1970
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1971
    throw p2
.end method

.method public blacklist setCdmaBroadcastConfig(ILjava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
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

    .line 1943
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1944
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1945
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1946
    invoke-static {v0, p2}, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 1948
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1950
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x54

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1951
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1953
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1954
    nop

    .line 1955
    return-void

    .line 1953
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1954
    throw p2
.end method

.method public blacklist setCdmaRoamingPreference(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1708
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1709
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1710
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1711
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1713
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1715
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x46

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1716
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1718
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1719
    nop

    .line 1720
    return-void

    .line 1718
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1719
    throw p2
.end method

.method public blacklist setCdmaSubscriptionSource(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1691
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1692
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1693
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1694
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1696
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1698
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x45

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1699
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1701
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1702
    nop

    .line 1703
    return-void

    .line 1701
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1702
    throw p2
.end method

.method public blacklist setCellInfoListRate(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2225
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2226
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2227
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2228
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2230
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2232
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x65

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2233
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2235
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2236
    nop

    .line 2237
    return-void

    .line 2235
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2236
    throw p2
.end method

.method public blacklist setClir(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1080
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1081
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1082
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1083
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1085
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1087
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x21

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1088
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1090
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1091
    nop

    .line 1092
    return-void

    .line 1090
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1091
    throw p2
.end method

.method public blacklist setDataAllowed(IZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2448
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2449
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2450
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2451
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 2453
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2455
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x72

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2456
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2458
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2459
    nop

    .line 2460
    return-void

    .line 2458
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2459
    throw p2
.end method

.method public blacklist setDataProfile(ILjava/util/ArrayList;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/DataProfileInfo;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2500
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2501
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2502
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2503
    invoke-static {v0, p2}, Landroid/hardware/radio/V1_0/DataProfileInfo;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 2504
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 2506
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2508
    :try_start_18
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p3, 0x75

    const/4 v1, 0x1

    invoke-interface {p2, p3, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2509
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_28

    .line 2511
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2512
    nop

    .line 2513
    return-void

    .line 2511
    :catchall_28
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2512
    throw p2
.end method

.method public blacklist setDataProfile_1_4(ILjava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_4/DataProfileInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3047
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3048
    const-string v1, "android.hardware.radio@1.4::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3049
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3050
    invoke-static {v0, p2}, Landroid/hardware/radio/V1_4/DataProfileInfo;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 3052
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 3054
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x94

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3055
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 3057
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3058
    nop

    .line 3059
    return-void

    .line 3057
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3058
    throw p2
.end method

.method public blacklist setDataProfile_1_5(ILjava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_5/DataProfileInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3334
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3335
    const-string v1, "android.hardware.radio@1.5::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3336
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3337
    invoke-static {v0, p2}, Landroid/hardware/radio/V1_5/DataProfileInfo;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 3339
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 3341
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0xa4

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3342
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 3344
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3345
    nop

    .line 3346
    return-void

    .line 3344
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3345
    throw p2
.end method

.method public blacklist setFacilityLockForApp(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1238
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1239
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1240
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1241
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1242
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1243
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1244
    invoke-virtual {v0, p5}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1245
    invoke-virtual {v0, p6}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1247
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1249
    :try_start_21
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p3, 0x2a

    const/4 p4, 0x1

    invoke-interface {p2, p3, v0, p1, p4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1250
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_2c
    .catchall {:try_start_21 .. :try_end_2c} :catchall_31

    .line 1252
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1253
    nop

    .line 1254
    return-void

    .line 1252
    :catchall_31
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1253
    throw p2
.end method

.method public blacklist setGsmBroadcastActivation(IZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1910
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1911
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1912
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1913
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1915
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1917
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x52

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1918
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1920
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1921
    nop

    .line 1922
    return-void

    .line 1920
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1921
    throw p2
.end method

.method public blacklist setGsmBroadcastConfig(ILjava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
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

    .line 1893
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1894
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1895
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1896
    invoke-static {v0, p2}, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 1898
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1900
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x51

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1901
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1903
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1904
    nop

    .line 1905
    return-void

    .line 1903
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1904
    throw p2
.end method

.method public blacklist setHALInstrumentation()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3584
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3585
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3587
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3589
    :try_start_f
    iget-object v2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf494e54

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3590
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_20

    .line 3592
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3593
    nop

    .line 3594
    return-void

    .line 3592
    :catchall_20
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3593
    throw v0
.end method

.method public blacklist setIndicationFilter(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2685
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2686
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2687
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2688
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2690
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2692
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x80

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2693
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2695
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2696
    nop

    .line 2697
    return-void

    .line 2695
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2696
    throw p2
.end method

.method public blacklist setIndicationFilter_1_2(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2854
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2855
    const-string v1, "android.hardware.radio@1.2::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2856
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2857
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2859
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2861
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x8a

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2862
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2864
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2865
    nop

    .line 2866
    return-void

    .line 2864
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2865
    throw p2
.end method

.method public blacklist setIndicationFilter_1_5(II)V
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
    const-string v1, "android.hardware.radio@1.5::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3372
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3373
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3375
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 3377
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0xa6

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

.method public blacklist setInitialAttachApn(ILandroid/hardware/radio/V1_0/DataProfileInfo;ZZ)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2242
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2243
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2244
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2245
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/DataProfileInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2246
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 2247
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 2249
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2251
    :try_start_1b
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p3, 0x66

    const/4 p4, 0x1

    invoke-interface {p2, p3, v0, p1, p4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2252
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_26
    .catchall {:try_start_1b .. :try_end_26} :catchall_2b

    .line 2254
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2255
    nop

    .line 2256
    return-void

    .line 2254
    :catchall_2b
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2255
    throw p2
.end method

.method public blacklist setInitialAttachApn_1_4(ILandroid/hardware/radio/V1_4/DataProfileInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3030
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3031
    const-string v1, "android.hardware.radio@1.4::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3032
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3033
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_4/DataProfileInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3035
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 3037
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x93

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3038
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 3040
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3041
    nop

    .line 3042
    return-void

    .line 3040
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3041
    throw p2
.end method

.method public blacklist setInitialAttachApn_1_5(ILandroid/hardware/radio/V1_5/DataProfileInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3317
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3318
    const-string v1, "android.hardware.radio@1.5::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3319
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3320
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_5/DataProfileInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3322
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 3324
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0xa3

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3325
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 3327
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3328
    nop

    .line 3329
    return-void

    .line 3327
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3328
    throw p2
.end method

.method public blacklist setLinkCapacityReportingCriteria(IIIILjava/util/ArrayList;Ljava/util/ArrayList;I)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2891
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2892
    const-string v1, "android.hardware.radio@1.2::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2893
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2894
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2895
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2896
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2897
    invoke-virtual {v0, p5}, Landroid/os/HwParcel;->writeInt32Vector(Ljava/util/ArrayList;)V

    .line 2898
    invoke-virtual {v0, p6}, Landroid/os/HwParcel;->writeInt32Vector(Ljava/util/ArrayList;)V

    .line 2899
    invoke-virtual {v0, p7}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2901
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2903
    :try_start_24
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p3, 0x8c

    const/4 p4, 0x1

    invoke-interface {p2, p3, v0, p1, p4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2904
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_2f
    .catchall {:try_start_24 .. :try_end_2f} :catchall_34

    .line 2906
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2907
    nop

    .line 2908
    return-void

    .line 2906
    :catchall_34
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2907
    throw p2
.end method

.method public blacklist setLinkCapacityReportingCriteria_1_5(IIIILjava/util/ArrayList;Ljava/util/ArrayList;I)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3205
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3206
    const-string v1, "android.hardware.radio@1.5::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3207
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3208
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3209
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3210
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3211
    invoke-virtual {v0, p5}, Landroid/os/HwParcel;->writeInt32Vector(Ljava/util/ArrayList;)V

    .line 3212
    invoke-virtual {v0, p6}, Landroid/os/HwParcel;->writeInt32Vector(Ljava/util/ArrayList;)V

    .line 3213
    invoke-virtual {v0, p7}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3215
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 3217
    :try_start_24
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p3, 0x9d

    const/4 p4, 0x1

    invoke-interface {p2, p3, v0, p1, p4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3218
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_2f
    .catchall {:try_start_24 .. :try_end_2f} :catchall_34

    .line 3220
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3221
    nop

    .line 3222
    return-void

    .line 3220
    :catchall_34
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3221
    throw p2
.end method

.method public blacklist setLocationUpdates(IZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1674
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1675
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1676
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1677
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1679
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1681
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x44

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1682
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1684
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1685
    nop

    .line 1686
    return-void

    .line 1684
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1685
    throw p2
.end method

.method public blacklist setMute(IZ)V
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
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1411
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1412
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1414
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1416
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x34

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1417
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1419
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1420
    nop

    .line 1421
    return-void

    .line 1419
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1420
    throw p2
.end method

.method public blacklist setNetworkSelectionModeAutomatic(I)V
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
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1296
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1298
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1300
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x2d

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

.method public blacklist setNetworkSelectionModeManual(ILjava/lang/String;)V
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
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1312
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1313
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1315
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1317
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x2e

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1318
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1320
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1321
    nop

    .line 1322
    return-void

    .line 1320
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1321
    throw p2
.end method

.method public blacklist setNetworkSelectionModeManual_1_5(ILjava/lang/String;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3435
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3436
    const-string v1, "android.hardware.radio@1.5::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3437
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3438
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3439
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3441
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 3443
    :try_start_18
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p3, 0xaa

    const/4 v1, 0x1

    invoke-interface {p2, p3, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3444
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_28

    .line 3446
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3447
    nop

    .line 3448
    return-void

    .line 3446
    :catchall_28
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3447
    throw p2
.end method

.method public blacklist setPreferredNetworkType(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1625
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1626
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1627
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1628
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1630
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1632
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x41

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1633
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1635
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1636
    nop

    .line 1637
    return-void

    .line 1635
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1636
    throw p2
.end method

.method public blacklist setPreferredNetworkTypeBitmap(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3119
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3120
    const-string v1, "android.hardware.radio@1.4::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3121
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3122
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3124
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 3126
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x98

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3127
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 3129
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3130
    nop

    .line 3131
    return-void

    .line 3129
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3130
    throw p2
.end method

.method public blacklist setPreferredVoicePrivacy(IZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1774
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1775
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1776
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1777
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1779
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1781
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x4a

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1782
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1784
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1785
    nop

    .line 1786
    return-void

    .line 1784
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1785
    throw p2
.end method

.method public blacklist setRadioCapability(ILandroid/hardware/radio/V1_0/RadioCapability;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2550
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2551
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2552
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2553
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/RadioCapability;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2555
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2557
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x78

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2558
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2560
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2561
    nop

    .line 2562
    return-void

    .line 2560
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2561
    throw p2
.end method

.method public blacklist setRadioPower(IZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 925
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 926
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 927
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 928
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 930
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 932
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x18

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 933
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 935
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 936
    nop

    .line 937
    return-void

    .line 935
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 936
    throw p2
.end method

.method public blacklist setRadioPower_1_5(IZZZ)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3351
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3352
    const-string v1, "android.hardware.radio@1.5::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3353
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3354
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 3355
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 3356
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 3358
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 3360
    :try_start_1b
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p3, 0xa5

    const/4 p4, 0x1

    invoke-interface {p2, p3, v0, p1, p4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3361
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_26
    .catchall {:try_start_1b .. :try_end_26} :catchall_2b

    .line 3363
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3364
    nop

    .line 3365
    return-void

    .line 3363
    :catchall_2b
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3364
    throw p2
.end method

.method public blacklist setResponseFunctions(Landroid/hardware/radio/V1_0/IRadioResponse;Landroid/hardware/radio/V1_0/IRadioIndication;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 535
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 536
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 537
    const/4 v1, 0x0

    if-nez p1, :cond_f

    move-object p1, v1

    goto :goto_13

    :cond_f
    invoke-interface {p1}, Landroid/hardware/radio/V1_0/IRadioResponse;->asBinder()Landroid/os/IHwBinder;

    move-result-object p1

    :goto_13
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 538
    if-nez p2, :cond_19

    goto :goto_1d

    :cond_19
    invoke-interface {p2}, Landroid/hardware/radio/V1_0/IRadioIndication;->asBinder()Landroid/os/IHwBinder;

    move-result-object v1

    :goto_1d
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 540
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 542
    :try_start_25
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 543
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 544
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_32
    .catchall {:try_start_25 .. :try_end_32} :catchall_37

    .line 546
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 547
    nop

    .line 548
    return-void

    .line 546
    :catchall_37
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 547
    throw p2
.end method

.method public blacklist setSignalStrengthReportingCriteria(IIILjava/util/ArrayList;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2871
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2872
    const-string v1, "android.hardware.radio@1.2::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2873
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2874
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2875
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2876
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeInt32Vector(Ljava/util/ArrayList;)V

    .line 2877
    invoke-virtual {v0, p5}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2879
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2881
    :try_start_1e
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p3, 0x8b

    const/4 p4, 0x1

    invoke-interface {p2, p3, v0, p1, p4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2882
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_29
    .catchall {:try_start_1e .. :try_end_29} :catchall_2e

    .line 2884
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2885
    nop

    .line 2886
    return-void

    .line 2884
    :catchall_2e
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2885
    throw p2
.end method

.method public blacklist setSignalStrengthReportingCriteria_1_5(ILandroid/hardware/radio/V1_5/SignalThresholdInfo;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3187
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3188
    const-string v1, "android.hardware.radio@1.5::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3189
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3190
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_5/SignalThresholdInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3191
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3193
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 3195
    :try_start_18
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p3, 0x9c

    const/4 v1, 0x1

    invoke-interface {p2, p3, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3196
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_28

    .line 3198
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3199
    nop

    .line 3200
    return-void

    .line 3198
    :catchall_28
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3199
    throw p2
.end method

.method public blacklist setSimCardPower(IZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2702
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2703
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2704
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2705
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 2707
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2709
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x81

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2710
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2712
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2713
    nop

    .line 2714
    return-void

    .line 2712
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2713
    throw p2
.end method

.method public blacklist setSimCardPower_1_1(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2752
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2753
    const-string v1, "android.hardware.radio@1.1::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2754
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2755
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2757
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2759
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x84

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2760
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2762
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2763
    nop

    .line 2764
    return-void

    .line 2762
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2763
    throw p2
.end method

.method public blacklist setSmscAddress(ILjava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2075
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2076
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2077
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2078
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2080
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2082
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x5c

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2083
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2085
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2086
    nop

    .line 2087
    return-void

    .line 2085
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2086
    throw p2
.end method

.method public blacklist setSuppServiceNotifications(IZ)V
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
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1476
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1477
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1479
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1481
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x38

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1482
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1484
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1485
    nop

    .line 1486
    return-void

    .line 1484
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1485
    throw p2
.end method

.method public blacklist setSystemSelectionChannels(IZLjava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_1/RadioAccessSpecifier;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2956
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2957
    const-string v1, "android.hardware.radio@1.3::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2958
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2959
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 2960
    invoke-static {v0, p3}, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 2962
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2964
    :try_start_18
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p3, 0x8f

    const/4 v1, 0x1

    invoke-interface {p2, p3, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2965
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_28

    .line 2967
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2968
    nop

    .line 2969
    return-void

    .line 2967
    :catchall_28
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2968
    throw p2
.end method

.method public blacklist setSystemSelectionChannels_1_5(IZLjava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
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

    .line 3260
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3261
    const-string v1, "android.hardware.radio@1.5::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3262
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3263
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 3264
    invoke-static {v0, p3}, Landroid/hardware/radio/V1_5/RadioAccessSpecifier;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 3266
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 3268
    :try_start_18
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p3, 0xa0

    const/4 v1, 0x1

    invoke-interface {p2, p3, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3269
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_28

    .line 3271
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3272
    nop

    .line 3273
    return-void

    .line 3271
    :catchall_28
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3272
    throw p2
.end method

.method public blacklist setTTYMode(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1741
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1742
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1743
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1744
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1746
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1748
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x48

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1749
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1751
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1752
    nop

    .line 1753
    return-void

    .line 1751
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1752
    throw p2
.end method

.method public blacklist setUiccSubscription(ILandroid/hardware/radio/V1_0/SelectUiccSub;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2431
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2432
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2433
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2434
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/SelectUiccSub;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2436
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2438
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x71

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2439
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2441
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2442
    nop

    .line 2443
    return-void

    .line 2441
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2442
    throw p2
.end method

.method public blacklist setupDataCall(IILandroid/hardware/radio/V1_0/DataProfileInfo;ZZZ)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 993
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 994
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 995
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 996
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 997
    invoke-virtual {p3, v0}, Landroid/hardware/radio/V1_0/DataProfileInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 998
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 999
    invoke-virtual {v0, p5}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1000
    invoke-virtual {v0, p6}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1002
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1004
    :try_start_21
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p3, 0x1c

    const/4 p4, 0x1

    invoke-interface {p2, p3, v0, p1, p4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1005
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_2c
    .catchall {:try_start_21 .. :try_end_2c} :catchall_31

    .line 1007
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1008
    nop

    .line 1009
    return-void

    .line 1007
    :catchall_31
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1008
    throw p2
.end method

.method public blacklist setupDataCall_1_2(IILandroid/hardware/radio/V1_0/DataProfileInfo;ZZZILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/hardware/radio/V1_0/DataProfileInfo;",
            "ZZZI",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
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

    .line 2913
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2914
    const-string v1, "android.hardware.radio@1.2::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2915
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2916
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2917
    invoke-virtual {p3, v0}, Landroid/hardware/radio/V1_0/DataProfileInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2918
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 2919
    invoke-virtual {v0, p5}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 2920
    invoke-virtual {v0, p6}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 2921
    invoke-virtual {v0, p7}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2922
    invoke-virtual {v0, p8}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 2923
    invoke-virtual {v0, p9}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 2925
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2927
    :try_start_2a
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p3, 0x8d

    const/4 p4, 0x1

    invoke-interface {p2, p3, v0, p1, p4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2928
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_35
    .catchall {:try_start_2a .. :try_end_35} :catchall_3a

    .line 2930
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2931
    nop

    .line 2932
    return-void

    .line 2930
    :catchall_3a
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2931
    throw p2
.end method

.method public blacklist setupDataCall_1_4(IILandroid/hardware/radio/V1_4/DataProfileInfo;ZILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/hardware/radio/V1_4/DataProfileInfo;",
            "ZI",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
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

    .line 3008
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3009
    const-string v1, "android.hardware.radio@1.4::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3010
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3011
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3012
    invoke-virtual {p3, v0}, Landroid/hardware/radio/V1_4/DataProfileInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3013
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 3014
    invoke-virtual {v0, p5}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3015
    invoke-virtual {v0, p6}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 3016
    invoke-virtual {v0, p7}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 3018
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 3020
    :try_start_24
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p3, 0x92

    const/4 p4, 0x1

    invoke-interface {p2, p3, v0, p1, p4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3021
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_2f
    .catchall {:try_start_24 .. :try_end_2f} :catchall_34

    .line 3023
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3024
    nop

    .line 3025
    return-void

    .line 3023
    :catchall_34
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3024
    throw p2
.end method

.method public blacklist setupDataCall_1_5(IILandroid/hardware/radio/V1_5/DataProfileInfo;ZILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/hardware/radio/V1_5/DataProfileInfo;",
            "ZI",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_5/LinkAddress;",
            ">;",
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

    .line 3295
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3296
    const-string v1, "android.hardware.radio@1.5::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3297
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3298
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3299
    invoke-virtual {p3, v0}, Landroid/hardware/radio/V1_5/DataProfileInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3300
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 3301
    invoke-virtual {v0, p5}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3302
    invoke-static {v0, p6}, Landroid/hardware/radio/V1_5/LinkAddress;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 3303
    invoke-virtual {v0, p7}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 3305
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 3307
    :try_start_24
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p3, 0xa2

    const/4 p4, 0x1

    invoke-interface {p2, p3, v0, p1, p4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3308
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_2f
    .catchall {:try_start_24 .. :try_end_2f} :catchall_34

    .line 3310
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3311
    nop

    .line 3312
    return-void

    .line 3310
    :catchall_34
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3311
    throw p2
.end method

.method public blacklist startDtmf(ILjava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1343
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1344
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1345
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1346
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1348
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1350
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x30

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1351
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1353
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1354
    nop

    .line 1355
    return-void

    .line 1353
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1354
    throw p2
.end method

.method public blacklist startKeepalive(ILandroid/hardware/radio/V1_1/KeepaliveRequest;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2802
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2803
    const-string v1, "android.hardware.radio@1.1::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2804
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2805
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_1/KeepaliveRequest;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2807
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2809
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x87

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2810
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2812
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2813
    nop

    .line 2814
    return-void

    .line 2812
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2813
    throw p2
.end method

.method public blacklist startLceService(IIZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2567
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2568
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2569
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2570
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2571
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 2573
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2575
    :try_start_18
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p3, 0x79

    const/4 v1, 0x1

    invoke-interface {p2, p3, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2576
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_28

    .line 2578
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2579
    nop

    .line 2580
    return-void

    .line 2578
    :catchall_28
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2579
    throw p2
.end method

.method public blacklist startNetworkScan(ILandroid/hardware/radio/V1_1/NetworkScanRequest;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2769
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2770
    const-string v1, "android.hardware.radio@1.1::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2771
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2772
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_1/NetworkScanRequest;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2774
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2776
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x85

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2777
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2779
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2780
    nop

    .line 2781
    return-void

    .line 2779
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2780
    throw p2
.end method

.method public blacklist startNetworkScan_1_2(ILandroid/hardware/radio/V1_2/NetworkScanRequest;)V
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
    const-string v1, "android.hardware.radio@1.2::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2839
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2840
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_2/NetworkScanRequest;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2842
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2844
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x89

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2845
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2847
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2848
    nop

    .line 2849
    return-void

    .line 2847
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2848
    throw p2
.end method

.method public blacklist startNetworkScan_1_4(ILandroid/hardware/radio/V1_2/NetworkScanRequest;)V
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
    const-string v1, "android.hardware.radio@1.4::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3088
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3089
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_2/NetworkScanRequest;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3091
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 3093
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x96

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3094
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 3096
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3097
    nop

    .line 3098
    return-void

    .line 3096
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3097
    throw p2
.end method

.method public blacklist startNetworkScan_1_5(ILandroid/hardware/radio/V1_5/NetworkScanRequest;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3278
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3279
    const-string v1, "android.hardware.radio@1.5::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3280
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3281
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_5/NetworkScanRequest;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3283
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 3285
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0xa1

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3286
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 3288
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3289
    nop

    .line 3290
    return-void

    .line 3288
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3289
    throw p2
.end method

.method public blacklist stopDtmf(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1360
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1361
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1362
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1364
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1366
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x31

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1367
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1369
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1370
    nop

    .line 1371
    return-void

    .line 1369
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1370
    throw v0
.end method

.method public blacklist stopKeepalive(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2819
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2820
    const-string v1, "android.hardware.radio@1.1::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2821
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2822
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2824
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2826
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x88

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2827
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2829
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2830
    nop

    .line 2831
    return-void

    .line 2829
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2830
    throw p2
.end method

.method public blacklist stopLceService(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2585
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2586
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2587
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2589
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2591
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x7a

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2592
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 2594
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2595
    nop

    .line 2596
    return-void

    .line 2594
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2595
    throw v0
.end method

.method public blacklist stopNetworkScan(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2786
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2787
    const-string v1, "android.hardware.radio@1.1::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2788
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2790
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2792
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x86

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2793
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 2795
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2796
    nop

    .line 2797
    return-void

    .line 2795
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2796
    throw v0
.end method

.method public blacklist supplyIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 606
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 607
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 608
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 609
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 610
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 612
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 614
    :try_start_18
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 p3, 0x5

    const/4 v1, 0x1

    invoke-interface {p2, p3, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 615
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_22
    .catchall {:try_start_18 .. :try_end_22} :catchall_27

    .line 617
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 618
    nop

    .line 619
    return-void

    .line 617
    :catchall_27
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 618
    throw p2
.end method

.method public blacklist supplyIccPinForApp(ILjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 569
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 570
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 571
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 572
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 573
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 575
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 577
    :try_start_18
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 p3, 0x3

    const/4 v1, 0x1

    invoke-interface {p2, p3, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 578
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_22
    .catchall {:try_start_18 .. :try_end_22} :catchall_27

    .line 580
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 581
    nop

    .line 582
    return-void

    .line 580
    :catchall_27
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 581
    throw p2
.end method

.method public blacklist supplyIccPuk2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 624
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 625
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 626
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 627
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 628
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 629
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 631
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 633
    :try_start_1b
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 p3, 0x6

    const/4 p4, 0x1

    invoke-interface {p2, p3, v0, p1, p4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 634
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_2a

    .line 636
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 637
    nop

    .line 638
    return-void

    .line 636
    :catchall_2a
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 637
    throw p2
.end method

.method public blacklist supplyIccPukForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 587
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 588
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 589
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 590
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 591
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 592
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 594
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 596
    :try_start_1b
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 p3, 0x4

    const/4 p4, 0x1

    invoke-interface {p2, p3, v0, p1, p4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 597
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_2a

    .line 599
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 600
    nop

    .line 601
    return-void

    .line 599
    :catchall_2a
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 600
    throw p2
.end method

.method public blacklist supplyNetworkDepersonalization(ILjava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 681
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 682
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 683
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 684
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 686
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 688
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x9

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 689
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 691
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 692
    nop

    .line 693
    return-void

    .line 691
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 692
    throw p2
.end method

.method public blacklist supplySimDepersonalization(IILjava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3470
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3471
    const-string v1, "android.hardware.radio@1.5::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3472
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3473
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3474
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3476
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 3478
    :try_start_18
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p3, 0xac

    const/4 v1, 0x1

    invoke-interface {p2, p3, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3479
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_28

    .line 3481
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3482
    nop

    .line 3483
    return-void

    .line 3481
    :catchall_28
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 3482
    throw p2
.end method

.method public blacklist switchWaitingOrHoldingAndActive(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 797
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 798
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 799
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 801
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 803
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x10

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 804
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 806
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 807
    nop

    .line 808
    return-void

    .line 806
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 807
    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 514
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/radio/V1_5/IRadio$Proxy;->interfaceDescriptor()Ljava/lang/String;

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

    .line 515
    :catch_18
    move-exception v0

    .line 518
    const-string v0, "[class or subclass of android.hardware.radio@1.5::IRadio]@Proxy"

    return-object v0
.end method

.method public blacklist unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3655
    iget-object v0, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    invoke-interface {v0, p1}, Landroid/os/IHwBinder;->unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z

    move-result p1

    return p1
.end method

.method public blacklist writeSmsToRuim(ILandroid/hardware/radio/V1_0/CdmaSmsWriteArgs;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1993
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1994
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1995
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1996
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1998
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2000
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x57

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2001
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2003
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2004
    nop

    .line 2005
    return-void

    .line 2003
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2004
    throw p2
.end method

.method public blacklist writeSmsToSim(ILandroid/hardware/radio/V1_0/SmsWriteArgs;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1491
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1492
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1493
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1494
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/SmsWriteArgs;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1496
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1498
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x39

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1499
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1501
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1502
    nop

    .line 1503
    return-void

    .line 1501
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1502
    throw p2
.end method
