.class public abstract Lmiui/smartpower/ISmartPowerManager$Stub;
.super Landroid/os/Binder;
.source "ISmartPowerManager.java"

# interfaces
.implements Lmiui/smartpower/ISmartPowerManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/smartpower/ISmartPowerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/smartpower/ISmartPowerManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onMultiTaskActionEnd:I = 0x3

.field static final blacklist TRANSACTION_onMultiTaskActionStart:I = 0x2

.field static final blacklist TRANSACTION_registThermalScenarioCallback:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 34
    const-string v0, "miui.smartpower.ISmartPowerManager"

    invoke-virtual {p0, p0, v0}, Lmiui/smartpower/ISmartPowerManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lmiui/smartpower/ISmartPowerManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 42
    if-nez p0, :cond_4

    .line 43
    const/4 v0, 0x0

    return-object v0

    .line 45
    :cond_4
    const-string v0, "miui.smartpower.ISmartPowerManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 46
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lmiui/smartpower/ISmartPowerManager;

    if-eqz v1, :cond_14

    .line 47
    move-object v1, v0

    check-cast v1, Lmiui/smartpower/ISmartPowerManager;

    return-object v1

    .line 49
    :cond_14
    new-instance v1, Lmiui/smartpower/ISmartPowerManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lmiui/smartpower/ISmartPowerManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 53
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 57
    const-string v0, "miui.smartpower.ISmartPowerManager"

    .line 58
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 59
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    :cond_d
    packed-switch p1, :pswitch_data_4e

    .line 69
    packed-switch p1, :pswitch_data_54

    .line 98
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 65
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    return v1

    .line 91
    :pswitch_1c
    sget-object v2, Lmiui/smartpower/MultiTaskActionManager$ActionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/smartpower/MultiTaskActionManager$ActionInfo;

    .line 92
    .local v2, "_arg0":Lmiui/smartpower/MultiTaskActionManager$ActionInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 93
    invoke-virtual {p0, v2}, Lmiui/smartpower/ISmartPowerManager$Stub;->onMultiTaskActionEnd(Lmiui/smartpower/MultiTaskActionManager$ActionInfo;)V

    .line 94
    goto :goto_4c

    .line 83
    .end local v2    # "_arg0":Lmiui/smartpower/MultiTaskActionManager$ActionInfo;
    :pswitch_2b
    sget-object v2, Lmiui/smartpower/MultiTaskActionManager$ActionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/smartpower/MultiTaskActionManager$ActionInfo;

    .line 84
    .restart local v2    # "_arg0":Lmiui/smartpower/MultiTaskActionManager$ActionInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 85
    invoke-virtual {p0, v2}, Lmiui/smartpower/ISmartPowerManager$Stub;->onMultiTaskActionStart(Lmiui/smartpower/MultiTaskActionManager$ActionInfo;)V

    .line 86
    goto :goto_4c

    .line 74
    .end local v2    # "_arg0":Lmiui/smartpower/MultiTaskActionManager$ActionInfo;
    :pswitch_3a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lmiui/smartpower/IScenarioCallback$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/smartpower/IScenarioCallback;

    move-result-object v2

    .line 75
    .local v2, "_arg0":Lmiui/smartpower/IScenarioCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 76
    invoke-virtual {p0, v2}, Lmiui/smartpower/ISmartPowerManager$Stub;->registThermalScenarioCallback(Lmiui/smartpower/IScenarioCallback;)V

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    nop

    .line 101
    .end local v2    # "_arg0":Lmiui/smartpower/IScenarioCallback;
    :goto_4c
    return v1

    nop

    :pswitch_data_4e
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_3a
        :pswitch_2b
        :pswitch_1c
    .end packed-switch
.end method
