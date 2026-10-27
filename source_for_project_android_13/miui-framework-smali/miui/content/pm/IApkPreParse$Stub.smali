.class public abstract Lmiui/content/pm/IApkPreParse$Stub;
.super Landroid/os/Binder;
.source "IApkPreParse.java"

# interfaces
.implements Lmiui/content/pm/IApkPreParse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/content/pm/IApkPreParse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/content/pm/IApkPreParse$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_preParseApk:I = 0x1

.field static final blacklist TRANSACTION_removePreParseApkResult:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 28
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 29
    const-string v0, "miui.content.pm.IApkPreParse"

    invoke-virtual {p0, p0, v0}, Lmiui/content/pm/IApkPreParse$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lmiui/content/pm/IApkPreParse;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 37
    if-nez p0, :cond_4

    .line 38
    const/4 v0, 0x0

    return-object v0

    .line 40
    :cond_4
    const-string v0, "miui.content.pm.IApkPreParse"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 41
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lmiui/content/pm/IApkPreParse;

    if-eqz v1, :cond_14

    .line 42
    move-object v1, v0

    check-cast v1, Lmiui/content/pm/IApkPreParse;

    return-object v1

    .line 44
    :cond_14
    new-instance v1, Lmiui/content/pm/IApkPreParse$Stub$Proxy;

    invoke-direct {v1, p0}, Lmiui/content/pm/IApkPreParse$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 48
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

    .line 52
    const-string v0, "miui.content.pm.IApkPreParse"

    .line 53
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 54
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    :cond_d
    packed-switch p1, :pswitch_data_3e

    .line 64
    packed-switch p1, :pswitch_data_44

    .line 87
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 60
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    return v1

    .line 79
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 80
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 81
    invoke-virtual {p0, v2}, Lmiui/content/pm/IApkPreParse$Stub;->removePreParseApkResult(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    goto :goto_3c

    .line 69
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 70
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 71
    invoke-virtual {p0, v2}, Lmiui/content/pm/IApkPreParse$Stub;->preParseApk(Ljava/lang/String;)Lmiui/content/pm/ApkPreParse$ParseApkResult;

    move-result-object v3

    .line 72
    .local v3, "_result":Lmiui/content/pm/ApkPreParse$ParseApkResult;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 74
    nop

    .line 90
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Lmiui/content/pm/ApkPreParse$ParseApkResult;
    :goto_3c
    return v1

    nop

    :pswitch_data_3e
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_1c
    .end packed-switch
.end method
