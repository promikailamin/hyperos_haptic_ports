.class public abstract Landroid/content/theming/IThemeManager$Stub;
.super Landroid/os/Binder;
.source "IThemeManager.java"

# interfaces
.implements Landroid/content/theming/IThemeManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/theming/IThemeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/theming/IThemeManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getThemeSettings:I = 0x4

.field static final blacklist TRANSACTION_getThemeSettingsOrDefault:I = 0x5

.field static final blacklist TRANSACTION_registerThemeSettingsCallback:I = 0x1

.field static final blacklist TRANSACTION_unregisterThemeSettingsCallback:I = 0x2

.field static final blacklist TRANSACTION_updateThemeSettings:I = 0x3


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 62
    nop

    .line 63
    invoke-static {}, Landroid/app/ActivityThread;->currentSystemContext()Landroid/content/Context;

    move-result-object v0

    .line 62
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/theming/IThemeManager$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 64
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 3

    .line 52
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 53
    const-string v0, "android.content.theming.IThemeManager"

    invoke-virtual {p0, p0, v0}, Landroid/content/theming/IThemeManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 54
    if-eqz p1, :cond_d

    .line 57
    iput-object p1, p0, Landroid/content/theming/IThemeManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 58
    return-void

    .line 55
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "enforcer cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/content/theming/IThemeManager;
    .registers 3

    .line 71
    if-nez p0, :cond_4

    .line 72
    const/4 p0, 0x0

    return-object p0

    .line 74
    :cond_4
    const-string v0, "android.content.theming.IThemeManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 75
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/content/theming/IThemeManager;

    if-eqz v1, :cond_13

    .line 76
    check-cast v0, Landroid/content/theming/IThemeManager;

    return-object v0

    .line 78
    :cond_13
    new-instance v0, Landroid/content/theming/IThemeManager$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/content/theming/IThemeManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 87
    packed-switch p0, :pswitch_data_18

    .line 111
    const/4 p0, 0x0

    return-object p0

    .line 107
    :pswitch_5
    const-string p0, "getThemeSettingsOrDefault"

    return-object p0

    .line 103
    :pswitch_8
    const-string p0, "getThemeSettings"

    return-object p0

    .line 99
    :pswitch_b
    const-string/jumbo p0, "updateThemeSettings"

    return-object p0

    .line 95
    :pswitch_f
    const-string/jumbo p0, "unregisterThemeSettingsCallback"

    return-object p0

    .line 91
    :pswitch_13
    const-string/jumbo p0, "registerThemeSettingsCallback"

    return-object p0

    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_13
        :pswitch_f
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 82
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 304
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 118
    invoke-static {p1}, Landroid/content/theming/IThemeManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 122
    nop

    .line 123
    const-string v0, "android.content.theming.IThemeManager"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 124
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 127
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 128
    return v1

    .line 130
    :cond_17
    packed-switch p1, :pswitch_data_78

    .line 178
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 171
    :pswitch_1f
    invoke-virtual {p0}, Landroid/content/theming/IThemeManager$Stub;->getThemeSettingsOrDefault()Landroid/content/theming/ThemeSettings;

    move-result-object p1

    .line 172
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 174
    goto :goto_77

    .line 164
    :pswitch_2a
    invoke-virtual {p0}, Landroid/content/theming/IThemeManager$Stub;->getThemeSettings()Landroid/content/theming/ThemeSettings;

    move-result-object p1

    .line 165
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 167
    goto :goto_77

    .line 155
    :pswitch_35
    sget-object p1, Landroid/content/theming/ThemeSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/theming/ThemeSettings;

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 157
    invoke-virtual {p0, p1}, Landroid/content/theming/IThemeManager$Stub;->updateThemeSettings(Landroid/content/theming/ThemeSettings;)Z

    move-result p1

    .line 158
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 160
    goto :goto_77

    .line 145
    :pswitch_4b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/content/theming/IThemeSettingsCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/theming/IThemeSettingsCallback;

    move-result-object p1

    .line 146
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 147
    invoke-virtual {p0, p1}, Landroid/content/theming/IThemeManager$Stub;->unregisterThemeSettingsCallback(Landroid/content/theming/IThemeSettingsCallback;)Z

    move-result p1

    .line 148
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 150
    goto :goto_77

    .line 135
    :pswitch_61
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/content/theming/IThemeSettingsCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/theming/IThemeSettingsCallback;

    move-result-object p1

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 137
    invoke-virtual {p0, p1}, Landroid/content/theming/IThemeManager$Stub;->registerThemeSettingsCallback(Landroid/content/theming/IThemeSettingsCallback;)Z

    move-result p1

    .line 138
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 140
    nop

    .line 181
    :goto_77
    return v1

    :pswitch_data_78
    .packed-switch 0x1
        :pswitch_61
        :pswitch_4b
        :pswitch_35
        :pswitch_2a
        :pswitch_1f
    .end packed-switch
.end method

.method protected blacklist updateThemeSettings_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 297
    iget-object v0, p0, Landroid/content/theming/IThemeManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/content/theming/IThemeManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/content/theming/IThemeManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_THEME_SETTINGS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 298
    return-void
.end method
