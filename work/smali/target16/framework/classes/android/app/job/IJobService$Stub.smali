.class public abstract Landroid/app/job/IJobService$Stub;
.super Landroid/os/Binder;
.source "IJobService.java"

# interfaces
.implements Landroid/app/job/IJobService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/job/IJobService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/job/IJobService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.app.job.IJobService"

.field static final blacklist TRANSACTION_getTransferredDownloadBytes:I = 0x4

.field static final blacklist TRANSACTION_getTransferredUploadBytes:I = 0x5

.field static final blacklist TRANSACTION_onNetworkChanged:I = 0x3

.field static final greylist-max-o TRANSACTION_startJob:I = 0x1

.field static final greylist-max-o TRANSACTION_stopJob:I = 0x2


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 52
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 53
    const-string v0, "android.app.job.IJobService"

    invoke-virtual {p0, p0, v0}, Landroid/app/job/IJobService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/app/job/IJobService;
    .registers 3

    .line 61
    if-nez p0, :cond_4

    .line 62
    const/4 p0, 0x0

    return-object p0

    .line 64
    :cond_4
    const-string v0, "android.app.job.IJobService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 65
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/app/job/IJobService;

    if-eqz v1, :cond_13

    .line 66
    check-cast v0, Landroid/app/job/IJobService;

    return-object v0

    .line 68
    :cond_13
    new-instance v0, Landroid/app/job/IJobService$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/app/job/IJobService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 77
    packed-switch p0, :pswitch_data_18

    .line 101
    const/4 p0, 0x0

    return-object p0

    .line 97
    :pswitch_5
    const-string p0, "getTransferredUploadBytes"

    return-object p0

    .line 93
    :pswitch_8
    const-string p0, "getTransferredDownloadBytes"

    return-object p0

    .line 89
    :pswitch_b
    const-string/jumbo p0, "onNetworkChanged"

    return-object p0

    .line 85
    :pswitch_f
    const-string/jumbo p0, "stopJob"

    return-object p0

    .line 81
    :pswitch_13
    const-string/jumbo p0, "startJob"

    return-object p0

    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_13
        :pswitch_f
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 72
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 266
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 108
    invoke-static {p1}, Landroid/app/job/IJobService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 112
    nop

    .line 113
    const-string v0, "android.app.job.IJobService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 114
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 117
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    return v1

    .line 120
    :cond_17
    packed-switch p1, :pswitch_data_7c

    .line 168
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 159
    :pswitch_1f
    sget-object p1, Landroid/app/job/JobParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/job/JobParameters;

    .line 161
    sget-object p3, Landroid/app/job/JobWorkItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/job/JobWorkItem;

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 163
    invoke-virtual {p0, p1, p3}, Landroid/app/job/IJobService$Stub;->getTransferredUploadBytes(Landroid/app/job/JobParameters;Landroid/app/job/JobWorkItem;)V

    .line 164
    goto :goto_7a

    .line 149
    :pswitch_36
    sget-object p1, Landroid/app/job/JobParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/job/JobParameters;

    .line 151
    sget-object p3, Landroid/app/job/JobWorkItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/job/JobWorkItem;

    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 153
    invoke-virtual {p0, p1, p3}, Landroid/app/job/IJobService$Stub;->getTransferredDownloadBytes(Landroid/app/job/JobParameters;Landroid/app/job/JobWorkItem;)V

    .line 154
    goto :goto_7a

    .line 141
    :pswitch_4d
    sget-object p1, Landroid/app/job/JobParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/job/JobParameters;

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 143
    invoke-virtual {p0, p1}, Landroid/app/job/IJobService$Stub;->onNetworkChanged(Landroid/app/job/JobParameters;)V

    .line 144
    goto :goto_7a

    .line 133
    :pswitch_5c
    sget-object p1, Landroid/app/job/JobParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/job/JobParameters;

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 135
    invoke-virtual {p0, p1}, Landroid/app/job/IJobService$Stub;->stopJob(Landroid/app/job/JobParameters;)V

    .line 136
    goto :goto_7a

    .line 125
    :pswitch_6b
    sget-object p1, Landroid/app/job/JobParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/job/JobParameters;

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 127
    invoke-virtual {p0, p1}, Landroid/app/job/IJobService$Stub;->startJob(Landroid/app/job/JobParameters;)V

    .line 128
    nop

    .line 171
    :goto_7a
    return v1

    nop

    :pswitch_data_7c
    .packed-switch 0x1
        :pswitch_6b
        :pswitch_5c
        :pswitch_4d
        :pswitch_36
        :pswitch_1f
    .end packed-switch
.end method
