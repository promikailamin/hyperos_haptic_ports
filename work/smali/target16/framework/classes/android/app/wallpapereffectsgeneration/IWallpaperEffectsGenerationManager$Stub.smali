.class public abstract Landroid/app/wallpapereffectsgeneration/IWallpaperEffectsGenerationManager$Stub;
.super Landroid/os/Binder;
.source "IWallpaperEffectsGenerationManager.java"

# interfaces
.implements Landroid/app/wallpapereffectsgeneration/IWallpaperEffectsGenerationManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/wallpapereffectsgeneration/IWallpaperEffectsGenerationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/wallpapereffectsgeneration/IWallpaperEffectsGenerationManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_generateCinematicEffect:I = 0x1

.field static final blacklist TRANSACTION_returnCinematicEffectResponse:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 38
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 39
    const-string v0, "android.app.wallpapereffectsgeneration.IWallpaperEffectsGenerationManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/wallpapereffectsgeneration/IWallpaperEffectsGenerationManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/app/wallpapereffectsgeneration/IWallpaperEffectsGenerationManager;
    .registers 3

    .line 47
    if-nez p0, :cond_4

    .line 48
    const/4 p0, 0x0

    return-object p0

    .line 50
    :cond_4
    const-string v0, "android.app.wallpapereffectsgeneration.IWallpaperEffectsGenerationManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 51
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/app/wallpapereffectsgeneration/IWallpaperEffectsGenerationManager;

    if-eqz v1, :cond_13

    .line 52
    check-cast v0, Landroid/app/wallpapereffectsgeneration/IWallpaperEffectsGenerationManager;

    return-object v0

    .line 54
    :cond_13
    new-instance v0, Landroid/app/wallpapereffectsgeneration/IWallpaperEffectsGenerationManager$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/app/wallpapereffectsgeneration/IWallpaperEffectsGenerationManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 63
    packed-switch p0, :pswitch_data_c

    .line 75
    const/4 p0, 0x0

    return-object p0

    .line 71
    :pswitch_5
    const-string/jumbo p0, "returnCinematicEffectResponse"

    return-object p0

    .line 67
    :pswitch_9
    const-string p0, "generateCinematicEffect"

    return-object p0

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 58
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 167
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 82
    invoke-static {p1}, Landroid/app/wallpapereffectsgeneration/IWallpaperEffectsGenerationManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 86
    nop

    .line 87
    const-string v0, "android.app.wallpapereffectsgeneration.IWallpaperEffectsGenerationManager"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 88
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 91
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    return v1

    .line 94
    :cond_17
    packed-switch p1, :pswitch_data_46

    .line 116
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 109
    :pswitch_1f
    sget-object p1, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 111
    invoke-virtual {p0, p1}, Landroid/app/wallpapereffectsgeneration/IWallpaperEffectsGenerationManager$Stub;->returnCinematicEffectResponse(Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;)V

    .line 112
    goto :goto_45

    .line 99
    :pswitch_2e
    sget-object p1, Landroid/app/wallpapereffectsgeneration/CinematicEffectRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/wallpapereffectsgeneration/CinematicEffectRequest;

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-static {p3}, Landroid/app/wallpapereffectsgeneration/ICinematicEffectListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/wallpapereffectsgeneration/ICinematicEffectListener;

    move-result-object p3

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 103
    invoke-virtual {p0, p1, p3}, Landroid/app/wallpapereffectsgeneration/IWallpaperEffectsGenerationManager$Stub;->generateCinematicEffect(Landroid/app/wallpapereffectsgeneration/CinematicEffectRequest;Landroid/app/wallpapereffectsgeneration/ICinematicEffectListener;)V

    .line 104
    nop

    .line 119
    :goto_45
    return v1

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_1f
    .end packed-switch
.end method
