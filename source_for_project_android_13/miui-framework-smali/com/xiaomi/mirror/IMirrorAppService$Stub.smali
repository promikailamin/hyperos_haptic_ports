.class public abstract Lcom/xiaomi/mirror/IMirrorAppService$Stub;
.super Landroid/os/Binder;
.source "IMirrorAppService.java"

# interfaces
.implements Lcom/xiaomi/mirror/IMirrorAppService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mirror/IMirrorAppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mirror/IMirrorAppService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.xiaomi.mirror.IMirrorAppService"

.field static final blacklist TRANSACTION_addMirrorAppStateListener:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final blacklist TRANSACTION_getMasterName:I = 0x7

.field static final blacklist TRANSACTION_isLastTaskInSubDisplay:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final blacklist TRANSACTION_isWorking:I = 0x2

.field static final blacklist TRANSACTION_notifyInputTypeAndPos:I = 0x6

.field static final blacklist TRANSACTION_notifyMoveTaskToBack:I = 0x8

.field static final blacklist TRANSACTION_notifyStartActivity:I = 0x4

.field static final blacklist TRANSACTION_notifyStartActivityFromRecents:I = 0x5


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 63
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 64
    const-string v0, "com.xiaomi.mirror.IMirrorAppService"

    invoke-virtual {p0, p0, v0}, Lcom/xiaomi/mirror/IMirrorAppService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/xiaomi/mirror/IMirrorAppService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 72
    if-nez p0, :cond_4

    .line 73
    const/4 v0, 0x0

    return-object v0

    .line 75
    :cond_4
    const-string v0, "com.xiaomi.mirror.IMirrorAppService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 76
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/xiaomi/mirror/IMirrorAppService;

    if-eqz v1, :cond_14

    .line 77
    move-object v1, v0

    check-cast v1, Lcom/xiaomi/mirror/IMirrorAppService;

    return-object v1

    .line 79
    :cond_14
    new-instance v1, Lcom/xiaomi/mirror/IMirrorAppService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/xiaomi/mirror/IMirrorAppService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultImpl()Lcom/xiaomi/mirror/IMirrorAppService;
    .registers 1

    .line 318
    sget-object v0, Lcom/xiaomi/mirror/IMirrorAppService$Stub$Proxy;->sDefaultImpl:Lcom/xiaomi/mirror/IMirrorAppService;

    return-object v0
.end method

.method public static blacklist setDefaultImpl(Lcom/xiaomi/mirror/IMirrorAppService;)Z
    .registers 2
    .param p0, "impl"    # Lcom/xiaomi/mirror/IMirrorAppService;

    .line 310
    sget-object v0, Lcom/xiaomi/mirror/IMirrorAppService$Stub$Proxy;->sDefaultImpl:Lcom/xiaomi/mirror/IMirrorAppService;

    if-nez v0, :cond_a

    if-eqz p0, :cond_a

    .line 311
    sput-object p0, Lcom/xiaomi/mirror/IMirrorAppService$Stub$Proxy;->sDefaultImpl:Lcom/xiaomi/mirror/IMirrorAppService;

    .line 312
    const/4 v0, 0x1

    return v0

    .line 314
    :cond_a
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 84
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 89
    const-string v0, "com.xiaomi.mirror.IMirrorAppService"

    .line 90
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_8e

    .line 155
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 92
    :sswitch_c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    return v2

    .line 146
    :sswitch_10
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 150
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 151
    .local v3, "_arg1":Z
    invoke-virtual {p0, v1, v3}, Lcom/xiaomi/mirror/IMirrorAppService$Stub;->notifyMoveTaskToBack(Landroid/os/IBinder;Z)V

    .line 152
    return v2

    .line 139
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Z
    :sswitch_1f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Lcom/xiaomi/mirror/IMirrorAppService$Stub;->getMasterName()Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    return v2

    .line 131
    .end local v1    # "_result":Ljava/lang/String;
    :sswitch_2d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 133
    .local v1, "inputType":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 134
    .local v3, "cursorX":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 135
    .local v4, "cursorY":I
    invoke-virtual {p0, v1, v3, v4}, Lcom/xiaomi/mirror/IMirrorAppService$Stub;->notifyInputTypeAndPos(III)V

    .line 136
    return v2

    .line 116
    .end local v1    # "inputType":I
    .end local v3    # "cursorX":I
    .end local v4    # "cursorY":I
    :sswitch_40
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 120
    .local v3, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_56

    .line 121
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .local v4, "_arg1":Landroid/os/Bundle;
    goto :goto_57

    .line 123
    .end local v4    # "_arg1":Landroid/os/Bundle;
    :cond_56
    const/4 v4, 0x0

    .line 126
    .restart local v4    # "_arg1":Landroid/os/Bundle;
    :goto_57
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5e

    move v1, v2

    .line 127
    .local v1, "_arg2":Z
    :cond_5e
    invoke-virtual {p0, v3, v4, v1}, Lcom/xiaomi/mirror/IMirrorAppService$Stub;->notifyStartActivityFromRecents(ILandroid/os/Bundle;Z)V

    .line 128
    return v2

    .line 103
    .end local v1    # "_arg2":Z
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/os/Bundle;
    :sswitch_62
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_74

    .line 106
    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .local v3, "_arg0":Landroid/content/Intent;
    goto :goto_75

    .line 108
    .end local v3    # "_arg0":Landroid/content/Intent;
    :cond_74
    const/4 v3, 0x0

    .line 111
    .restart local v3    # "_arg0":Landroid/content/Intent;
    :goto_75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_7c

    move v1, v2

    .line 112
    .local v1, "_arg1":Z
    :cond_7c
    invoke-virtual {p0, v3, v1}, Lcom/xiaomi/mirror/IMirrorAppService$Stub;->notifyStartActivity(Landroid/content/Intent;Z)V

    .line 113
    return v2

    .line 96
    .end local v1    # "_arg1":Z
    .end local v3    # "_arg0":Landroid/content/Intent;
    :sswitch_80
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lcom/xiaomi/mirror/IMirrorAppService$Stub;->isWorking()Z

    move-result v1

    .line 98
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    return v2

    :sswitch_data_8e
    .sparse-switch
        0x2 -> :sswitch_80
        0x4 -> :sswitch_62
        0x5 -> :sswitch_40
        0x6 -> :sswitch_2d
        0x7 -> :sswitch_1f
        0x8 -> :sswitch_10
        0x5f4e5446 -> :sswitch_c
    .end sparse-switch
.end method
