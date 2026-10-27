.class public abstract Landroid/window/ITaskFragmentOrganizer$Stub;
.super Landroid/os/Binder;
.source "ITaskFragmentOrganizer.java"

# interfaces
.implements Landroid/window/ITaskFragmentOrganizer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/ITaskFragmentOrganizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/ITaskFragmentOrganizer$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onActivityReparentToTask:I = 0x6

.field static final blacklist TRANSACTION_onMiuiEmbedStateChanged:I = 0x7

.field static final blacklist TRANSACTION_onTaskFragmentAppeared:I = 0x1

.field static final blacklist TRANSACTION_onTaskFragmentError:I = 0x5

.field static final blacklist TRANSACTION_onTaskFragmentInfoChanged:I = 0x2

.field static final blacklist TRANSACTION_onTaskFragmentParentInfoChanged:I = 0x4

.field static final blacklist TRANSACTION_onTaskFragmentVanished:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 82
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 83
    const-string v0, "android.window.ITaskFragmentOrganizer"

    invoke-virtual {p0, p0, v0}, Landroid/window/ITaskFragmentOrganizer$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/window/ITaskFragmentOrganizer;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 91
    if-nez p0, :cond_4

    .line 92
    const/4 v0, 0x0

    return-object v0

    .line 94
    :cond_4
    const-string v0, "android.window.ITaskFragmentOrganizer"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 95
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/window/ITaskFragmentOrganizer;

    if-eqz v1, :cond_14

    .line 96
    move-object v1, v0

    check-cast v1, Landroid/window/ITaskFragmentOrganizer;

    return-object v1

    .line 98
    :cond_14
    new-instance v1, Landroid/window/ITaskFragmentOrganizer$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/window/ITaskFragmentOrganizer$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 107
    packed-switch p0, :pswitch_data_22

    .line 139
    const/4 v0, 0x0

    return-object v0

    .line 135
    :pswitch_5
    const-string/jumbo v0, "onMiuiEmbedStateChanged"

    return-object v0

    .line 131
    :pswitch_9
    const-string/jumbo v0, "onActivityReparentToTask"

    return-object v0

    .line 127
    :pswitch_d
    const-string/jumbo v0, "onTaskFragmentError"

    return-object v0

    .line 123
    :pswitch_11
    const-string/jumbo v0, "onTaskFragmentParentInfoChanged"

    return-object v0

    .line 119
    :pswitch_15
    const-string/jumbo v0, "onTaskFragmentVanished"

    return-object v0

    .line 115
    :pswitch_19
    const-string/jumbo v0, "onTaskFragmentInfoChanged"

    return-object v0

    .line 111
    :pswitch_1d
    const-string/jumbo v0, "onTaskFragmentAppeared"

    return-object v0

    nop

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_1d
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

    .line 102
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 392
    const/4 v0, 0x6

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 146
    invoke-static {p1}, Landroid/window/ITaskFragmentOrganizer$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 150
    const-string v0, "android.window.ITaskFragmentOrganizer"

    .line 151
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 152
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    :cond_d
    packed-switch p1, :pswitch_data_96

    .line 162
    packed-switch p1, :pswitch_data_9c

    .line 232
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 158
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 159
    return v1

    .line 223
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 225
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 226
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 227
    invoke-virtual {p0, v2, v3}, Landroid/window/ITaskFragmentOrganizer$Stub;->onMiuiEmbedStateChanged(Landroid/os/IBinder;I)V

    .line 228
    goto :goto_95

    .line 211
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":I
    :pswitch_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 213
    .local v2, "_arg0":I
    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 215
    .local v3, "_arg1":Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 216
    .local v4, "_arg2":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 217
    invoke-virtual {p0, v2, v3, v4}, Landroid/window/ITaskFragmentOrganizer$Stub;->onActivityReparentToTask(ILandroid/content/Intent;Landroid/os/IBinder;)V

    .line 218
    goto :goto_95

    .line 201
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/content/Intent;
    .end local v4    # "_arg2":Landroid/os/IBinder;
    :pswitch_42
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 203
    .local v2, "_arg0":Landroid/os/IBinder;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 204
    .local v3, "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 205
    invoke-virtual {p0, v2, v3}, Landroid/window/ITaskFragmentOrganizer$Stub;->onTaskFragmentError(Landroid/os/IBinder;Landroid/os/Bundle;)V

    .line 206
    goto :goto_95

    .line 191
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :pswitch_55
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 193
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    sget-object v3, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/Configuration;

    .line 194
    .local v3, "_arg1":Landroid/content/res/Configuration;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 195
    invoke-virtual {p0, v2, v3}, Landroid/window/ITaskFragmentOrganizer$Stub;->onTaskFragmentParentInfoChanged(Landroid/os/IBinder;Landroid/content/res/Configuration;)V

    .line 196
    goto :goto_95

    .line 183
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Landroid/content/res/Configuration;
    :pswitch_68
    sget-object v2, Landroid/window/TaskFragmentInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/TaskFragmentInfo;

    .line 184
    .local v2, "_arg0":Landroid/window/TaskFragmentInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 185
    invoke-virtual {p0, v2}, Landroid/window/ITaskFragmentOrganizer$Stub;->onTaskFragmentVanished(Landroid/window/TaskFragmentInfo;)V

    .line 186
    goto :goto_95

    .line 175
    .end local v2    # "_arg0":Landroid/window/TaskFragmentInfo;
    :pswitch_77
    sget-object v2, Landroid/window/TaskFragmentInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/TaskFragmentInfo;

    .line 176
    .restart local v2    # "_arg0":Landroid/window/TaskFragmentInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 177
    invoke-virtual {p0, v2}, Landroid/window/ITaskFragmentOrganizer$Stub;->onTaskFragmentInfoChanged(Landroid/window/TaskFragmentInfo;)V

    .line 178
    goto :goto_95

    .line 167
    .end local v2    # "_arg0":Landroid/window/TaskFragmentInfo;
    :pswitch_86
    sget-object v2, Landroid/window/TaskFragmentInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/TaskFragmentInfo;

    .line 168
    .restart local v2    # "_arg0":Landroid/window/TaskFragmentInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 169
    invoke-virtual {p0, v2}, Landroid/window/ITaskFragmentOrganizer$Stub;->onTaskFragmentAppeared(Landroid/window/TaskFragmentInfo;)V

    .line 170
    nop

    .line 235
    .end local v2    # "_arg0":Landroid/window/TaskFragmentInfo;
    :goto_95
    return v1

    :pswitch_data_96
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_9c
    .packed-switch 0x1
        :pswitch_86
        :pswitch_77
        :pswitch_68
        :pswitch_55
        :pswitch_42
        :pswitch_2b
        :pswitch_1c
    .end packed-switch
.end method
