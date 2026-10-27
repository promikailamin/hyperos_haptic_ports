.class public abstract Landroid/flags/IFeatureFlags$Stub;
.super Landroid/os/Binder;
.source "IFeatureFlags.java"

# interfaces
.implements Landroid/flags/IFeatureFlags;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/flags/IFeatureFlags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/flags/IFeatureFlags$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_overrideFlag:I = 0x5

.field static final blacklist TRANSACTION_queryFlags:I = 0x4

.field static final blacklist TRANSACTION_registerCallback:I = 0x2

.field static final blacklist TRANSACTION_resetFlag:I = 0x6

.field static final blacklist TRANSACTION_syncFlags:I = 0x1

.field static final blacklist TRANSACTION_unregisterCallback:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 101
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 102
    const-string v0, "android.flags.IFeatureFlags"

    invoke-virtual {p0, p0, v0}, Landroid/flags/IFeatureFlags$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/flags/IFeatureFlags;
    .registers 3

    .line 110
    if-nez p0, :cond_4

    .line 111
    const/4 p0, 0x0

    return-object p0

    .line 113
    :cond_4
    const-string v0, "android.flags.IFeatureFlags"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 114
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/flags/IFeatureFlags;

    if-eqz v1, :cond_13

    .line 115
    check-cast v0, Landroid/flags/IFeatureFlags;

    return-object v0

    .line 117
    :cond_13
    new-instance v0, Landroid/flags/IFeatureFlags$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/flags/IFeatureFlags$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 126
    packed-switch p0, :pswitch_data_1e

    .line 154
    const/4 p0, 0x0

    return-object p0

    .line 150
    :pswitch_5
    const-string/jumbo p0, "resetFlag"

    return-object p0

    .line 146
    :pswitch_9
    const-string/jumbo p0, "overrideFlag"

    return-object p0

    .line 142
    :pswitch_d
    const-string/jumbo p0, "queryFlags"

    return-object p0

    .line 138
    :pswitch_11
    const-string/jumbo p0, "unregisterCallback"

    return-object p0

    .line 134
    :pswitch_15
    const-string/jumbo p0, "registerCallback"

    return-object p0

    .line 130
    :pswitch_19
    const-string/jumbo p0, "syncFlags"

    return-object p0

    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_19
        :pswitch_15
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 121
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 402
    const/4 v0, 0x5

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 161
    invoke-static {p1}, Landroid/flags/IFeatureFlags$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 165
    nop

    .line 166
    const-string v0, "android.flags.IFeatureFlags"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 167
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 170
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 171
    return v1

    .line 173
    :cond_17
    packed-switch p1, :pswitch_data_90

    .line 233
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 225
    :pswitch_1f
    sget-object p1, Landroid/flags/SyncableFlag;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/flags/SyncableFlag;

    .line 226
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 227
    invoke-virtual {p0, p1}, Landroid/flags/IFeatureFlags$Stub;->resetFlag(Landroid/flags/SyncableFlag;)V

    .line 228
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    goto :goto_8f

    .line 216
    :pswitch_31
    sget-object p1, Landroid/flags/SyncableFlag;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/flags/SyncableFlag;

    .line 217
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 218
    invoke-virtual {p0, p1}, Landroid/flags/IFeatureFlags$Stub;->overrideFlag(Landroid/flags/SyncableFlag;)V

    .line 219
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    goto :goto_8f

    .line 206
    :pswitch_43
    sget-object p1, Landroid/flags/SyncableFlag;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    .line 207
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 208
    invoke-virtual {p0, p1}, Landroid/flags/IFeatureFlags$Stub;->queryFlags(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 209
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 211
    goto :goto_8f

    .line 197
    :pswitch_57
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/flags/IFeatureFlagsCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/flags/IFeatureFlagsCallback;

    move-result-object p1

    .line 198
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 199
    invoke-virtual {p0, p1}, Landroid/flags/IFeatureFlags$Stub;->unregisterCallback(Landroid/flags/IFeatureFlagsCallback;)V

    .line 200
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    goto :goto_8f

    .line 188
    :pswitch_69
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/flags/IFeatureFlagsCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/flags/IFeatureFlagsCallback;

    move-result-object p1

    .line 189
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 190
    invoke-virtual {p0, p1}, Landroid/flags/IFeatureFlags$Stub;->registerCallback(Landroid/flags/IFeatureFlagsCallback;)V

    .line 191
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    goto :goto_8f

    .line 178
    :pswitch_7b
    sget-object p1, Landroid/flags/SyncableFlag;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    .line 179
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 180
    invoke-virtual {p0, p1}, Landroid/flags/IFeatureFlags$Stub;->syncFlags(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 181
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 183
    nop

    .line 236
    :goto_8f
    return v1

    :pswitch_data_90
    .packed-switch 0x1
        :pswitch_7b
        :pswitch_69
        :pswitch_57
        :pswitch_43
        :pswitch_31
        :pswitch_1f
    .end packed-switch
.end method
