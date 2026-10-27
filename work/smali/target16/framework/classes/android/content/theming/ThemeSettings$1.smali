.class Landroid/content/theming/ThemeSettings$1;
.super Ljava/lang/Object;
.source "ThemeSettings.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/theming/ThemeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/content/theming/ThemeSettings;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/content/theming/ThemeSettings;
    .registers 5

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 156
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/content/theming/ThemeSettings$1$$ExternalSyntheticTypeSwitchClass0;->switchDispatch(Ljava/lang/Object;I)I

    move-result v1

    packed-switch v1, :pswitch_data_32

    .line 159
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid type for ThemeSetting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 158
    :pswitch_25
    new-instance v0, Landroid/content/theming/ThemeSettingsPreset;

    invoke-direct {v0, p1}, Landroid/content/theming/ThemeSettingsPreset;-><init>(Landroid/os/Parcel;)V

    goto :goto_30

    .line 157
    :pswitch_2b
    new-instance v0, Landroid/content/theming/ThemeSettingsWallpaper;

    invoke-direct {v0, p1}, Landroid/content/theming/ThemeSettingsWallpaper;-><init>(Landroid/os/Parcel;)V

    .line 156
    :goto_30
    return-object v0

    nop

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_2b
        :pswitch_25
    .end packed-switch
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 150
    invoke-virtual {p0, p1}, Landroid/content/theming/ThemeSettings$1;->createFromParcel(Landroid/os/Parcel;)Landroid/content/theming/ThemeSettings;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/content/theming/ThemeSettings;
    .registers 2

    .line 166
    new-array p1, p1, [Landroid/content/theming/ThemeSettings;

    return-object p1
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 150
    invoke-virtual {p0, p1}, Landroid/content/theming/ThemeSettings$1;->newArray(I)[Landroid/content/theming/ThemeSettings;

    move-result-object p1

    return-object p1
.end method
