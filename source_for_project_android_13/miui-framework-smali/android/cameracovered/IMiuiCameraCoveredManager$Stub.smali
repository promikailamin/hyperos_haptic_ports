.class public abstract Landroid/cameracovered/IMiuiCameraCoveredManager$Stub;
.super Landroid/os/Binder;
.source "IMiuiCameraCoveredManager.java"

# interfaces
.implements Landroid/cameracovered/IMiuiCameraCoveredManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/cameracovered/IMiuiCameraCoveredManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/cameracovered/IMiuiCameraCoveredManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addCoveredBlackView:I = 0x5

.field static final blacklist TRANSACTION_cupMuraCoveredAnimation:I = 0x3

.field static final blacklist TRANSACTION_getScreenAntiBurnData:I = 0x7

.field static final blacklist TRANSACTION_hbmCoveredAnimation:I = 0x4

.field static final blacklist TRANSACTION_hideCoveredBlackView:I = 0x2

.field static final blacklist TRANSACTION_needDisableCutout:I = 0x6

.field static final blacklist TRANSACTION_setCoveredPackageName:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 44
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 45
    const-string v0, "android.cameracovered.IMiuiCameraCoveredManager"

    invoke-virtual {p0, p0, v0}, Landroid/cameracovered/IMiuiCameraCoveredManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/cameracovered/IMiuiCameraCoveredManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 53
    if-nez p0, :cond_4

    .line 54
    const/4 v0, 0x0

    return-object v0

    .line 56
    :cond_4
    const-string v0, "android.cameracovered.IMiuiCameraCoveredManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 57
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/cameracovered/IMiuiCameraCoveredManager;

    if-eqz v1, :cond_14

    .line 58
    move-object v1, v0

    check-cast v1, Landroid/cameracovered/IMiuiCameraCoveredManager;

    return-object v1

    .line 60
    :cond_14
    new-instance v1, Landroid/cameracovered/IMiuiCameraCoveredManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/cameracovered/IMiuiCameraCoveredManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 64
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 68
    const-string v0, "android.cameracovered.IMiuiCameraCoveredManager"

    .line 69
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 70
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    :cond_d
    packed-switch p1, :pswitch_data_7a

    .line 80
    packed-switch p1, :pswitch_data_80

    .line 143
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 76
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    return v1

    .line 134
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 135
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 136
    invoke-virtual {p0, v2}, Landroid/cameracovered/IMiuiCameraCoveredManager$Stub;->getScreenAntiBurnData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 137
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 139
    goto :goto_78

    .line 124
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 125
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 126
    invoke-virtual {p0, v2}, Landroid/cameracovered/IMiuiCameraCoveredManager$Stub;->needDisableCutout(Ljava/lang/String;)Z

    move-result v3

    .line 127
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 129
    goto :goto_78

    .line 117
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_40
    invoke-virtual {p0}, Landroid/cameracovered/IMiuiCameraCoveredManager$Stub;->addCoveredBlackView()V

    .line 118
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    goto :goto_78

    .line 109
    :pswitch_47
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 110
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 111
    invoke-virtual {p0, v2}, Landroid/cameracovered/IMiuiCameraCoveredManager$Stub;->hbmCoveredAnimation(I)V

    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    goto :goto_78

    .line 100
    .end local v2    # "_arg0":I
    :pswitch_55
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 101
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 102
    invoke-virtual {p0, v2}, Landroid/cameracovered/IMiuiCameraCoveredManager$Stub;->cupMuraCoveredAnimation(I)V

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    goto :goto_78

    .line 93
    .end local v2    # "_arg0":I
    :pswitch_63
    invoke-virtual {p0}, Landroid/cameracovered/IMiuiCameraCoveredManager$Stub;->hideCoveredBlackView()V

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    goto :goto_78

    .line 85
    :pswitch_6a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 86
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 87
    invoke-virtual {p0, v2}, Landroid/cameracovered/IMiuiCameraCoveredManager$Stub;->setCoveredPackageName(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    nop

    .line 146
    .end local v2    # "_arg0":Ljava/lang/String;
    :goto_78
    return v1

    nop

    :pswitch_data_7a
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_6a
        :pswitch_63
        :pswitch_55
        :pswitch_47
        :pswitch_40
        :pswitch_2e
        :pswitch_1c
    .end packed-switch
.end method
