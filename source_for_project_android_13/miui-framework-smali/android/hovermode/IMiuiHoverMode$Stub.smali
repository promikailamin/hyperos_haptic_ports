.class public abstract Landroid/hovermode/IMiuiHoverMode$Stub;
.super Landroid/os/Binder;
.source "IMiuiHoverMode.java"

# interfaces
.implements Landroid/hovermode/IMiuiHoverMode;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hovermode/IMiuiHoverMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hovermode/IMiuiHoverMode$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getMiuiHoverModeApps:I = 0x1

.field static final blacklist TRANSACTION_inMiuiHoverEnableList:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 30
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 31
    const-string v0, "android.hovermode.IMiuiHoverMode"

    invoke-virtual {p0, p0, v0}, Landroid/hovermode/IMiuiHoverMode$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hovermode/IMiuiHoverMode;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 39
    if-nez p0, :cond_4

    .line 40
    const/4 v0, 0x0

    return-object v0

    .line 42
    :cond_4
    const-string v0, "android.hovermode.IMiuiHoverMode"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 43
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hovermode/IMiuiHoverMode;

    if-eqz v1, :cond_14

    .line 44
    move-object v1, v0

    check-cast v1, Landroid/hovermode/IMiuiHoverMode;

    return-object v1

    .line 46
    :cond_14
    new-instance v1, Landroid/hovermode/IMiuiHoverMode$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hovermode/IMiuiHoverMode$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method static synthetic blacklist lambda$onTransact$0(Landroid/os/Parcel;Ljava/lang/String;Landroid/hovermode/HoverModeInfo;)V
    .registers 4
    .param p0, "reply"    # Landroid/os/Parcel;
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Landroid/hovermode/HoverModeInfo;

    .line 77
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 79
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 50
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

    .line 54
    const-string v0, "android.hovermode.IMiuiHoverMode"

    .line 55
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 56
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    :cond_d
    packed-switch p1, :pswitch_data_52

    .line 66
    packed-switch p1, :pswitch_data_58

    .line 95
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 62
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    return v1

    .line 86
    :pswitch_1c
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 87
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 88
    invoke-virtual {p0, v2}, Landroid/hovermode/IMiuiHoverMode$Stub;->inMiuiHoverEnableList(Landroid/content/ComponentName;)Z

    move-result v3

    .line 89
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 91
    goto :goto_50

    .line 70
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_32
    invoke-virtual {p0}, Landroid/hovermode/IMiuiHoverMode$Stub;->getMiuiHoverModeApps()Ljava/util/Map;

    move-result-object v2

    .line 71
    .local v2, "_result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hovermode/HoverModeInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    if-nez v2, :cond_40

    .line 73
    const/4 v3, -0x1

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_50

    .line 75
    :cond_40
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    new-instance v3, Landroid/hovermode/IMiuiHoverMode$Stub$$ExternalSyntheticLambda0;

    invoke-direct {v3, p3}, Landroid/hovermode/IMiuiHoverMode$Stub$$ExternalSyntheticLambda0;-><init>(Landroid/os/Parcel;)V

    invoke-interface {v2, v3}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 81
    nop

    .line 98
    .end local v2    # "_result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hovermode/HoverModeInfo;>;"
    :goto_50
    return v1

    nop

    :pswitch_data_52
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_32
        :pswitch_1c
    .end packed-switch
.end method
