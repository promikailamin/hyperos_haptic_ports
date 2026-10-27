.class public final Landroid/content/theming/ThemeSettingsWallpaper;
.super Landroid/content/theming/ThemeSettings;
.source "ThemeSettingsWallpaper.java"


# instance fields
.field private final blacklist mColorBoth:Ljava/lang/Boolean;


# direct methods
.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 53
    invoke-direct {p0, p1}, Landroid/content/theming/ThemeSettings;-><init>(Landroid/os/Parcel;)V

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Landroid/content/theming/ThemeSettingsWallpaper;->mColorBoth:Ljava/lang/Boolean;

    .line 55
    return-void
.end method

.method constructor blacklist <init>(Ljava/time/Instant;IIZ)V
    .registers 5

    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/content/theming/ThemeSettings;-><init>(Ljava/time/Instant;II)V

    .line 49
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Landroid/content/theming/ThemeSettingsWallpaper;->mColorBoth:Ljava/lang/Boolean;

    .line 50
    return-void
.end method


# virtual methods
.method public blacklist colorBoth()Z
    .registers 2

    .line 90
    iget-object v0, p0, Landroid/content/theming/ThemeSettingsWallpaper;->mColorBoth:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public blacklist colorSource()Ljava/lang/String;
    .registers 2

    .line 80
    const-string v0, "home_wallpaper"

    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5

    .line 129
    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    .line 130
    :cond_4
    const/4 v0, 0x0

    if-eqz p1, :cond_24

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_12

    goto :goto_24

    .line 131
    :cond_12
    invoke-super {p0, p1}, Landroid/content/theming/ThemeSettings;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    return v0

    .line 132
    :cond_19
    check-cast p1, Landroid/content/theming/ThemeSettingsWallpaper;

    .line 133
    iget-object v0, p0, Landroid/content/theming/ThemeSettingsWallpaper;->mColorBoth:Ljava/lang/Boolean;

    iget-object p1, p1, Landroid/content/theming/ThemeSettingsWallpaper;->mColorBoth:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 130
    :cond_24
    :goto_24
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 148
    invoke-super {p0}, Landroid/content/theming/ThemeSettings;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/content/theming/ThemeSettingsWallpaper;->mColorBoth:Ljava/lang/Boolean;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 105
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 106
    const-string v1, "_applied_timestamp"

    iget-object v2, p0, Landroid/content/theming/ThemeSettingsWallpaper;->mAppliedTimestamp:Ljava/time/Instant;

    invoke-virtual {v2}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 107
    const-string v1, "android.theme.customization.color_index"

    iget v2, p0, Landroid/content/theming/ThemeSettingsWallpaper;->mColorIndex:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    const-string v1, "android.theme.customization.color_source"

    invoke-virtual {p0}, Landroid/content/theming/ThemeSettingsWallpaper;->colorSource()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 109
    const-string v1, "android.theme.customization.theme_style"

    iget v2, p0, Landroid/content/theming/ThemeSettingsWallpaper;->mThemeStyle:I

    invoke-static {v2}, Landroid/content/theming/ThemeStyle;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 110
    const-string v1, "android.theme.customization.color_both"

    iget-object v2, p0, Landroid/content/theming/ThemeSettingsWallpaper;->mColorBoth:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3c

    const-string v2, "1"

    goto :goto_3e

    :cond_3c
    const-string v2, "0"

    :goto_3e
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 111
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_45
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_45} :catch_46

    return-object v0

    .line 112
    :catch_46
    move-exception v0

    .line 114
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error creating JSON for WallpaperThemeSetting"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 66
    const-string v0, "home_wallpaper"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    invoke-super {p0, p1, p2}, Landroid/content/theming/ThemeSettings;->writeToParcel(Landroid/os/Parcel;I)V

    .line 68
    iget-object p2, p0, Landroid/content/theming/ThemeSettingsWallpaper;->mColorBoth:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 69
    return-void
.end method
