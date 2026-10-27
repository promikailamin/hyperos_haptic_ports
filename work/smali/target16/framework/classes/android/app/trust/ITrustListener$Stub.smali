.class public abstract Landroid/app/trust/ITrustListener$Stub;
.super Landroid/os/Binder;
.source "ITrustListener.java"

# interfaces
.implements Landroid/app/trust/ITrustListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/trust/ITrustListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/trust/ITrustListener$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.app.trust.ITrustListener"

.field static final blacklist TRANSACTION_onEnabledTrustAgentsChanged:I = 0x1

.field static final blacklist TRANSACTION_onIsActiveUnlockRunningChanged:I = 0x5

.field static final greylist-max-o TRANSACTION_onTrustChanged:I = 0x2

.field static final greylist-max-o TRANSACTION_onTrustError:I = 0x4

.field static final greylist-max-o TRANSACTION_onTrustManagedChanged:I = 0x3


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 46
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 47
    const-string v0, "android.app.trust.ITrustListener"

    invoke-virtual {p0, p0, v0}, Landroid/app/trust/ITrustListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/app/trust/ITrustListener;
    .registers 3

    .line 55
    if-nez p0, :cond_4

    .line 56
    const/4 p0, 0x0

    return-object p0

    .line 58
    :cond_4
    const-string v0, "android.app.trust.ITrustListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 59
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/app/trust/ITrustListener;

    if-eqz v1, :cond_13

    .line 60
    check-cast v0, Landroid/app/trust/ITrustListener;

    return-object v0

    .line 62
    :cond_13
    new-instance v0, Landroid/app/trust/ITrustListener$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/app/trust/ITrustListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 71
    packed-switch p0, :pswitch_data_1a

    .line 95
    const/4 p0, 0x0

    return-object p0

    .line 91
    :pswitch_5
    const-string/jumbo p0, "onIsActiveUnlockRunningChanged"

    return-object p0

    .line 87
    :pswitch_9
    const-string/jumbo p0, "onTrustError"

    return-object p0

    .line 83
    :pswitch_d
    const-string/jumbo p0, "onTrustManagedChanged"

    return-object p0

    .line 79
    :pswitch_11
    const-string/jumbo p0, "onTrustChanged"

    return-object p0

    .line 75
    :pswitch_15
    const-string/jumbo p0, "onEnabledTrustAgentsChanged"

    return-object p0

    nop

    :pswitch_data_1a
    .packed-switch 0x1
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

    .line 66
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 273
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 102
    invoke-static {p1}, Landroid/app/trust/ITrustListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 106
    nop

    .line 107
    const-string v0, "android.app.trust.ITrustListener"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 108
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 111
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    return v1

    .line 114
    :cond_17
    packed-switch p1, :pswitch_data_76

    .line 170
    move-object v2, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 161
    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 163
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 165
    invoke-virtual {p0, p1, p3}, Landroid/app/trust/ITrustListener$Stub;->onIsActiveUnlockRunningChanged(ZI)V

    .line 166
    goto :goto_75

    .line 153
    :pswitch_2f
    sget-object p1, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 155
    invoke-virtual {p0, p1}, Landroid/app/trust/ITrustListener$Stub;->onTrustError(Ljava/lang/CharSequence;)V

    .line 156
    goto :goto_75

    .line 143
    :pswitch_3e
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 146
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 147
    invoke-virtual {p0, p1, p3}, Landroid/app/trust/ITrustListener$Stub;->onTrustManagedChanged(ZI)V

    .line 148
    goto :goto_75

    .line 127
    :pswitch_4d
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v7

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 137
    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/app/trust/ITrustListener$Stub;->onTrustChanged(ZZIILjava/util/List;)V

    .line 138
    goto :goto_75

    .line 119
    :pswitch_69
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 121
    invoke-virtual {p0, p1}, Landroid/app/trust/ITrustListener$Stub;->onEnabledTrustAgentsChanged(I)V

    .line 122
    nop

    .line 173
    :goto_75
    return v1

    :pswitch_data_76
    .packed-switch 0x1
        :pswitch_69
        :pswitch_4d
        :pswitch_3e
        :pswitch_2f
        :pswitch_20
    .end packed-switch
.end method
