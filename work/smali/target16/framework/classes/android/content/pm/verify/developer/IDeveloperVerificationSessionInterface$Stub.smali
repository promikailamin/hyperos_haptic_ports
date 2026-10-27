.class public abstract Landroid/content/pm/verify/developer/IDeveloperVerificationSessionInterface$Stub;
.super Landroid/os/Binder;
.source "IDeveloperVerificationSessionInterface.java"

# interfaces
.implements Landroid/content/pm/verify/developer/IDeveloperVerificationSessionInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/verify/developer/IDeveloperVerificationSessionInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/verify/developer/IDeveloperVerificationSessionInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_extendTimeoutMillis:I = 0x2

.field static final blacklist TRANSACTION_getTimeoutTimeMillis:I = 0x1

.field static final blacklist TRANSACTION_reportVerificationBypassed:I = 0x6

.field static final blacklist TRANSACTION_reportVerificationComplete:I = 0x5

.field static final blacklist TRANSACTION_reportVerificationIncomplete:I = 0x4

.field static final blacklist TRANSACTION_setVerificationPolicy:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 51
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 52
    const-string v0, "android.content.pm.verify.developer.IDeveloperVerificationSessionInterface"

    invoke-virtual {p0, p0, v0}, Landroid/content/pm/verify/developer/IDeveloperVerificationSessionInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/content/pm/verify/developer/IDeveloperVerificationSessionInterface;
    .registers 3

    .line 60
    if-nez p0, :cond_4

    .line 61
    const/4 p0, 0x0

    return-object p0

    .line 63
    :cond_4
    const-string v0, "android.content.pm.verify.developer.IDeveloperVerificationSessionInterface"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 64
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/content/pm/verify/developer/IDeveloperVerificationSessionInterface;

    if-eqz v1, :cond_13

    .line 65
    check-cast v0, Landroid/content/pm/verify/developer/IDeveloperVerificationSessionInterface;

    return-object v0

    .line 67
    :cond_13
    new-instance v0, Landroid/content/pm/verify/developer/IDeveloperVerificationSessionInterface$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/content/pm/verify/developer/IDeveloperVerificationSessionInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 76
    packed-switch p0, :pswitch_data_1c

    .line 104
    const/4 p0, 0x0

    return-object p0

    .line 100
    :pswitch_5
    const-string/jumbo p0, "reportVerificationBypassed"

    return-object p0

    .line 96
    :pswitch_9
    const-string/jumbo p0, "reportVerificationComplete"

    return-object p0

    .line 92
    :pswitch_d
    const-string/jumbo p0, "reportVerificationIncomplete"

    return-object p0

    .line 88
    :pswitch_11
    const-string/jumbo p0, "setVerificationPolicy"

    return-object p0

    .line 84
    :pswitch_15
    const-string p0, "extendTimeoutMillis"

    return-object p0

    .line 80
    :pswitch_18
    const-string p0, "getTimeoutTimeMillis"

    return-object p0

    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_18
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

    .line 71
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 331
    const/4 v0, 0x5

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 111
    invoke-static {p1}, Landroid/content/pm/verify/developer/IDeveloperVerificationSessionInterface$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 115
    nop

    .line 116
    const-string v0, "android.content.pm.verify.developer.IDeveloperVerificationSessionInterface"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 117
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 120
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    return v1

    .line 123
    :cond_17
    packed-switch p1, :pswitch_data_a0

    .line 196
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 186
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 189
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 190
    invoke-virtual {p0, p1, p4}, Landroid/content/pm/verify/developer/IDeveloperVerificationSessionInterface$Stub;->reportVerificationBypassed(II)V

    .line 191
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    goto :goto_9f

    .line 173
    :pswitch_31
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 175
    sget-object p4, Landroid/content/pm/verify/developer/DeveloperVerificationStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/content/pm/verify/developer/DeveloperVerificationStatus;

    .line 177
    sget-object v0, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersistableBundle;

    .line 178
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 179
    invoke-virtual {p0, p1, p4, v0}, Landroid/content/pm/verify/developer/IDeveloperVerificationSessionInterface$Stub;->reportVerificationComplete(ILandroid/content/pm/verify/developer/DeveloperVerificationStatus;Landroid/os/PersistableBundle;)V

    .line 180
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    goto :goto_9f

    .line 162
    :pswitch_4f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 166
    invoke-virtual {p0, p1, p4}, Landroid/content/pm/verify/developer/IDeveloperVerificationSessionInterface$Stub;->reportVerificationIncomplete(II)V

    .line 167
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    goto :goto_9f

    .line 150
    :pswitch_61
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 154
    invoke-virtual {p0, p1, p4}, Landroid/content/pm/verify/developer/IDeveloperVerificationSessionInterface$Stub;->setVerificationPolicy(II)Z

    move-result p1

    .line 155
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 157
    goto :goto_9f

    .line 138
    :pswitch_77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 141
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 142
    invoke-virtual {p0, p1, v2, v3}, Landroid/content/pm/verify/developer/IDeveloperVerificationSessionInterface$Stub;->extendTimeoutMillis(IJ)J

    move-result-wide p1

    .line 143
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 145
    goto :goto_9f

    .line 128
    :pswitch_8d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 130
    invoke-virtual {p0, p1}, Landroid/content/pm/verify/developer/IDeveloperVerificationSessionInterface$Stub;->getTimeoutTimeMillis(I)J

    move-result-wide p1

    .line 131
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 133
    nop

    .line 199
    :goto_9f
    return v1

    :pswitch_data_a0
    .packed-switch 0x1
        :pswitch_8d
        :pswitch_77
        :pswitch_61
        :pswitch_4f
        :pswitch_31
        :pswitch_1f
    .end packed-switch
.end method
