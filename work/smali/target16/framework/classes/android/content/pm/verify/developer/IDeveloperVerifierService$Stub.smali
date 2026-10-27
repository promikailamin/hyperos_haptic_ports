.class public abstract Landroid/content/pm/verify/developer/IDeveloperVerifierService$Stub;
.super Landroid/os/Binder;
.source "IDeveloperVerifierService.java"

# interfaces
.implements Landroid/content/pm/verify/developer/IDeveloperVerifierService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/verify/developer/IDeveloperVerifierService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/verify/developer/IDeveloperVerifierService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onPackageNameAvailable:I = 0x1

.field static final blacklist TRANSACTION_onVerificationCancelled:I = 0x2

.field static final blacklist TRANSACTION_onVerificationRequired:I = 0x3

.field static final blacklist TRANSACTION_onVerificationRetry:I = 0x4

.field static final blacklist TRANSACTION_onVerificationTimeout:I = 0x5


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 46
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 47
    const-string v0, "android.content.pm.verify.developer.IDeveloperVerifierService"

    invoke-virtual {p0, p0, v0}, Landroid/content/pm/verify/developer/IDeveloperVerifierService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/content/pm/verify/developer/IDeveloperVerifierService;
    .registers 3

    .line 55
    if-nez p0, :cond_4

    .line 56
    const/4 p0, 0x0

    return-object p0

    .line 58
    :cond_4
    const-string v0, "android.content.pm.verify.developer.IDeveloperVerifierService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 59
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/content/pm/verify/developer/IDeveloperVerifierService;

    if-eqz v1, :cond_13

    .line 60
    check-cast v0, Landroid/content/pm/verify/developer/IDeveloperVerifierService;

    return-object v0

    .line 62
    :cond_13
    new-instance v0, Landroid/content/pm/verify/developer/IDeveloperVerifierService$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/content/pm/verify/developer/IDeveloperVerifierService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const-string/jumbo p0, "onVerificationTimeout"

    return-object p0

    .line 87
    :pswitch_9
    const-string/jumbo p0, "onVerificationRetry"

    return-object p0

    .line 83
    :pswitch_d
    const-string/jumbo p0, "onVerificationRequired"

    return-object p0

    .line 79
    :pswitch_11
    const-string/jumbo p0, "onVerificationCancelled"

    return-object p0

    .line 75
    :pswitch_15
    const-string/jumbo p0, "onPackageNameAvailable"

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

    .line 247
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 102
    invoke-static {p1}, Landroid/content/pm/verify/developer/IDeveloperVerifierService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 106
    nop

    .line 107
    const-string v0, "android.content.pm.verify.developer.IDeveloperVerifierService"

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
    packed-switch p1, :pswitch_data_60

    .line 158
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 151
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 153
    invoke-virtual {p0, p1}, Landroid/content/pm/verify/developer/IDeveloperVerifierService$Stub;->onVerificationTimeout(I)V

    .line 154
    goto :goto_5e

    .line 143
    :pswitch_2a
    sget-object p1, Landroid/content/pm/verify/developer/DeveloperVerificationSession;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/verify/developer/DeveloperVerificationSession;

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 145
    invoke-virtual {p0, p1}, Landroid/content/pm/verify/developer/IDeveloperVerifierService$Stub;->onVerificationRetry(Landroid/content/pm/verify/developer/DeveloperVerificationSession;)V

    .line 146
    goto :goto_5e

    .line 135
    :pswitch_39
    sget-object p1, Landroid/content/pm/verify/developer/DeveloperVerificationSession;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/verify/developer/DeveloperVerificationSession;

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 137
    invoke-virtual {p0, p1}, Landroid/content/pm/verify/developer/IDeveloperVerifierService$Stub;->onVerificationRequired(Landroid/content/pm/verify/developer/DeveloperVerificationSession;)V

    .line 138
    goto :goto_5e

    .line 127
    :pswitch_48
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 129
    invoke-virtual {p0, p1}, Landroid/content/pm/verify/developer/IDeveloperVerifierService$Stub;->onVerificationCancelled(Ljava/lang/String;)V

    .line 130
    goto :goto_5e

    .line 119
    :pswitch_53
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 121
    invoke-virtual {p0, p1}, Landroid/content/pm/verify/developer/IDeveloperVerifierService$Stub;->onPackageNameAvailable(Ljava/lang/String;)V

    .line 122
    nop

    .line 161
    :goto_5e
    return v1

    nop

    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_53
        :pswitch_48
        :pswitch_39
        :pswitch_2a
        :pswitch_1f
    .end packed-switch
.end method
