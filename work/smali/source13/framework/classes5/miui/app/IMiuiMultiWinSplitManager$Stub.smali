.class public abstract Lmiui/app/IMiuiMultiWinSplitManager$Stub;
.super Landroid/os/Binder;
.source "IMiuiMultiWinSplitManager.java"

# interfaces
.implements Lmiui/app/IMiuiMultiWinSplitManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/IMiuiMultiWinSplitManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/IMiuiMultiWinSplitManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_adjustToSplitWindingMode:I = 0x4

.field static final blacklist TRANSACTION_getSplitRootTasksPos:I = 0x2

.field static final blacklist TRANSACTION_getTouchOffsetInTask:I = 0x5

.field static final blacklist TRANSACTION_handleMultiWindowSwitch:I = 0x1

.field static final blacklist TRANSACTION_isSupportDragForMultiWin:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 40
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 41
    const-string v0, "miui.app.IMiuiMultiWinSplitManager"

    invoke-virtual {p0, p0, v0}, Lmiui/app/IMiuiMultiWinSplitManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lmiui/app/IMiuiMultiWinSplitManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 49
    if-nez p0, :cond_4

    .line 50
    const/4 v0, 0x0

    return-object v0

    .line 52
    :cond_4
    const-string v0, "miui.app.IMiuiMultiWinSplitManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 53
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lmiui/app/IMiuiMultiWinSplitManager;

    if-eqz v1, :cond_14

    .line 54
    move-object v1, v0

    check-cast v1, Lmiui/app/IMiuiMultiWinSplitManager;

    return-object v1

    .line 56
    :cond_14
    new-instance v1, Lmiui/app/IMiuiMultiWinSplitManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lmiui/app/IMiuiMultiWinSplitManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 65
    packed-switch p0, :pswitch_data_14

    .line 89
    const/4 v0, 0x0

    return-object v0

    .line 85
    :pswitch_5
    const-string v0, "getTouchOffsetInTask"

    return-object v0

    .line 81
    :pswitch_8
    const-string v0, "adjustToSplitWindingMode"

    return-object v0

    .line 77
    :pswitch_b
    const-string v0, "isSupportDragForMultiWin"

    return-object v0

    .line 73
    :pswitch_e
    const-string v0, "getSplitRootTasksPos"

    return-object v0

    .line 69
    :pswitch_11
    const-string v0, "handleMultiWindowSwitch"

    return-object v0

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 60
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 291
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 96
    invoke-static {p1}, Lmiui/app/IMiuiMultiWinSplitManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 100
    const-string v0, "miui.app.IMiuiMultiWinSplitManager"

    .line 101
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 102
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    :cond_d
    packed-switch p1, :pswitch_data_86

    .line 112
    packed-switch p1, :pswitch_data_8c

    .line 170
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 108
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    return v1

    .line 158
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 160
    .local v2, "_arg0":Landroid/os/IBinder;
    sget-object v3, Landroid/graphics/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    .line 161
    .local v3, "_arg1":Landroid/graphics/Point;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 162
    invoke-virtual {p0, v2, v3}, Lmiui/app/IMiuiMultiWinSplitManager$Stub;->getTouchOffsetInTask(Landroid/os/IBinder;Landroid/graphics/Point;)Z

    move-result v4

    .line 163
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 165
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 166
    goto :goto_85

    .line 148
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Landroid/graphics/Point;
    .end local v4    # "_result":Z
    :pswitch_39
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 149
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 150
    invoke-virtual {p0, v2}, Lmiui/app/IMiuiMultiWinSplitManager$Stub;->adjustToSplitWindingMode(Landroid/os/IBinder;)I

    move-result v3

    .line 151
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    goto :goto_85

    .line 138
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_result":I
    :pswitch_4b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 139
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 140
    invoke-virtual {p0, v2}, Lmiui/app/IMiuiMultiWinSplitManager$Stub;->isSupportDragForMultiWin(Landroid/os/IBinder;)Z

    move-result v3

    .line 141
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 143
    goto :goto_85

    .line 128
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_result":Z
    :pswitch_5d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 129
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 130
    invoke-virtual {p0, v2}, Lmiui/app/IMiuiMultiWinSplitManager$Stub;->getSplitRootTasksPos(I)Landroid/os/Bundle;

    move-result-object v3

    .line 131
    .local v3, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 133
    goto :goto_85

    .line 117
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/os/Bundle;
    :pswitch_6f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 119
    .local v2, "_arg0":Landroid/os/IBinder;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 120
    .local v3, "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 121
    invoke-virtual {p0, v2, v3}, Lmiui/app/IMiuiMultiWinSplitManager$Stub;->handleMultiWindowSwitch(Landroid/os/IBinder;Landroid/os/Bundle;)V

    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    nop

    .line 173
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :goto_85
    return v1

    :pswitch_data_86
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_8c
    .packed-switch 0x1
        :pswitch_6f
        :pswitch_5d
        :pswitch_4b
        :pswitch_39
        :pswitch_1c
    .end packed-switch
.end method
