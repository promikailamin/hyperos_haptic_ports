.class public abstract Landroid/app/supervision/ISupervisionManager$Stub;
.super Landroid/os/Binder;
.source "ISupervisionManager.java"

# interfaces
.implements Landroid/app/supervision/ISupervisionManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/supervision/ISupervisionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/supervision/ISupervisionManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_createConfirmSupervisionCredentialsIntent:I = 0x1

.field static final blacklist TRANSACTION_getActiveSupervisionAppPackage:I = 0x4

.field static final blacklist TRANSACTION_getSupervisionRecoveryInfo:I = 0x7

.field static final blacklist TRANSACTION_hasSupervisionCredentials:I = 0x8

.field static final blacklist TRANSACTION_isSupervisionEnabledForUser:I = 0x2

.field static final blacklist TRANSACTION_registerSupervisionListener:I = 0x9

.field static final blacklist TRANSACTION_setSupervisionEnabledForUser:I = 0x3

.field static final blacklist TRANSACTION_setSupervisionRecoveryInfo:I = 0x6

.field static final blacklist TRANSACTION_shouldAllowBypassingSupervisionRoleQualification:I = 0x5

.field static final blacklist TRANSACTION_unregisterSupervisionListener:I = 0xa


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 66
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 67
    const-string v0, "android.app.supervision.ISupervisionManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/supervision/ISupervisionManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/app/supervision/ISupervisionManager;
    .registers 3

    .line 75
    if-nez p0, :cond_4

    .line 76
    const/4 p0, 0x0

    return-object p0

    .line 78
    :cond_4
    const-string v0, "android.app.supervision.ISupervisionManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 79
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/app/supervision/ISupervisionManager;

    if-eqz v1, :cond_13

    .line 80
    check-cast v0, Landroid/app/supervision/ISupervisionManager;

    return-object v0

    .line 82
    :cond_13
    new-instance v0, Landroid/app/supervision/ISupervisionManager$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/app/supervision/ISupervisionManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 91
    packed-switch p0, :pswitch_data_2a

    .line 135
    const/4 p0, 0x0

    return-object p0

    .line 131
    :pswitch_5
    const-string/jumbo p0, "unregisterSupervisionListener"

    return-object p0

    .line 127
    :pswitch_9
    const-string/jumbo p0, "registerSupervisionListener"

    return-object p0

    .line 123
    :pswitch_d
    const-string p0, "hasSupervisionCredentials"

    return-object p0

    .line 119
    :pswitch_10
    const-string p0, "getSupervisionRecoveryInfo"

    return-object p0

    .line 115
    :pswitch_13
    const-string/jumbo p0, "setSupervisionRecoveryInfo"

    return-object p0

    .line 111
    :pswitch_17
    const-string/jumbo p0, "shouldAllowBypassingSupervisionRoleQualification"

    return-object p0

    .line 107
    :pswitch_1b
    const-string p0, "getActiveSupervisionAppPackage"

    return-object p0

    .line 103
    :pswitch_1e
    const-string/jumbo p0, "setSupervisionEnabledForUser"

    return-object p0

    .line 99
    :pswitch_22
    const-string/jumbo p0, "isSupervisionEnabledForUser"

    return-object p0

    .line 95
    :pswitch_26
    const-string p0, "createConfirmSupervisionCredentialsIntent"

    return-object p0

    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_26
        :pswitch_22
        :pswitch_1e
        :pswitch_1b
        :pswitch_17
        :pswitch_13
        :pswitch_10
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 86
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 438
    const/16 v0, 0x9

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 142
    invoke-static {p1}, Landroid/app/supervision/ISupervisionManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 146
    nop

    .line 147
    const-string v0, "android.app.supervision.ISupervisionManager"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 148
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 151
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 152
    return v1

    .line 154
    :cond_17
    packed-switch p1, :pswitch_data_bc

    .line 246
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 239
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/app/supervision/ISupervisionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/supervision/ISupervisionListener;

    move-result-object p1

    .line 240
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 241
    invoke-virtual {p0, p1}, Landroid/app/supervision/ISupervisionManager$Stub;->unregisterSupervisionListener(Landroid/app/supervision/ISupervisionListener;)V

    .line 242
    goto/16 :goto_bb

    .line 229
    :pswitch_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 231
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-static {p3}, Landroid/app/supervision/ISupervisionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/supervision/ISupervisionListener;

    move-result-object p3

    .line 232
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 233
    invoke-virtual {p0, p1, p3}, Landroid/app/supervision/ISupervisionManager$Stub;->registerSupervisionListener(ILandroid/app/supervision/ISupervisionListener;)V

    .line 234
    goto/16 :goto_bb

    .line 221
    :pswitch_43
    invoke-virtual {p0}, Landroid/app/supervision/ISupervisionManager$Stub;->hasSupervisionCredentials()Z

    move-result p1

    .line 222
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 224
    goto :goto_bb

    .line 214
    :pswitch_4e
    invoke-virtual {p0}, Landroid/app/supervision/ISupervisionManager$Stub;->getSupervisionRecoveryInfo()Landroid/app/supervision/SupervisionRecoveryInfo;

    move-result-object p1

    .line 215
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 217
    goto :goto_bb

    .line 207
    :pswitch_59
    sget-object p1, Landroid/app/supervision/SupervisionRecoveryInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/supervision/SupervisionRecoveryInfo;

    .line 208
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 209
    invoke-virtual {p0, p1}, Landroid/app/supervision/ISupervisionManager$Stub;->setSupervisionRecoveryInfo(Landroid/app/supervision/SupervisionRecoveryInfo;)V

    .line 210
    goto :goto_bb

    .line 199
    :pswitch_68
    invoke-virtual {p0}, Landroid/app/supervision/ISupervisionManager$Stub;->shouldAllowBypassingSupervisionRoleQualification()Z

    move-result p1

    .line 200
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 202
    goto :goto_bb

    .line 190
    :pswitch_73
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 191
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 192
    invoke-virtual {p0, p1}, Landroid/app/supervision/ISupervisionManager$Stub;->getActiveSupervisionAppPackage(I)Ljava/lang/String;

    move-result-object p1

    .line 193
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 195
    goto :goto_bb

    .line 179
    :pswitch_85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 181
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 182
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 183
    invoke-virtual {p0, p1, p4}, Landroid/app/supervision/ISupervisionManager$Stub;->setSupervisionEnabledForUser(IZ)V

    .line 184
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    goto :goto_bb

    .line 169
    :pswitch_97
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 171
    invoke-virtual {p0, p1}, Landroid/app/supervision/ISupervisionManager$Stub;->isSupervisionEnabledForUser(I)Z

    move-result p1

    .line 172
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 174
    goto :goto_bb

    .line 159
    :pswitch_a9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 161
    invoke-virtual {p0, p1}, Landroid/app/supervision/ISupervisionManager$Stub;->createConfirmSupervisionCredentialsIntent(I)Landroid/content/Intent;

    move-result-object p1

    .line 162
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 164
    nop

    .line 249
    :goto_bb
    return v1

    :pswitch_data_bc
    .packed-switch 0x1
        :pswitch_a9
        :pswitch_97
        :pswitch_85
        :pswitch_73
        :pswitch_68
        :pswitch_59
        :pswitch_4e
        :pswitch_43
        :pswitch_2f
        :pswitch_1f
    .end packed-switch
.end method
