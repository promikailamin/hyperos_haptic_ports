.class public final Landroid/content/theming/ThemeSettingsPreset;
.super Landroid/content/theming/ThemeSettings;
.source "ThemeSettingsPreset.java"


# instance fields
.field private final blacklist mAccentColor:Landroid/graphics/Color;

.field private final blacklist mSystemPalette:Landroid/graphics/Color;


# direct methods
.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 57
    invoke-direct {p0, p1}, Landroid/content/theming/ThemeSettings;-><init>(Landroid/os/Parcel;)V

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/graphics/Color;->valueOf(J)Landroid/graphics/Color;

    move-result-object v0

    iput-object v0, p0, Landroid/content/theming/ThemeSettingsPreset;->mSystemPalette:Landroid/graphics/Color;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/graphics/Color;->valueOf(J)Landroid/graphics/Color;

    move-result-object p1

    iput-object p1, p0, Landroid/content/theming/ThemeSettingsPreset;->mAccentColor:Landroid/graphics/Color;

    .line 60
    return-void
.end method

.method constructor blacklist <init>(Ljava/time/Instant;IILandroid/graphics/Color;Landroid/graphics/Color;)V
    .registers 6

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/content/theming/ThemeSettings;-><init>(Ljava/time/Instant;II)V

    .line 52
    iput-object p4, p0, Landroid/content/theming/ThemeSettingsPreset;->mSystemPalette:Landroid/graphics/Color;

    .line 53
    iput-object p5, p0, Landroid/content/theming/ThemeSettingsPreset;->mAccentColor:Landroid/graphics/Color;

    .line 54
    return-void
.end method


# virtual methods
.method public blacklist accentColor()Landroid/graphics/Color;
    .registers 2

    .line 106
    iget-object v0, p0, Landroid/content/theming/ThemeSettingsPreset;->mAccentColor:Landroid/graphics/Color;

    return-object v0
.end method

.method public blacklist colorSource()Ljava/lang/String;
    .registers 2

    .line 71
    const-string/jumbo v0, "preset"

    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 146
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 147
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_32

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_32

    .line 148
    :cond_12
    invoke-super {p0, p1}, Landroid/content/theming/ThemeSettings;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    return v1

    .line 149
    :cond_19
    check-cast p1, Landroid/content/theming/ThemeSettingsPreset;

    .line 150
    iget-object v2, p0, Landroid/content/theming/ThemeSettingsPreset;->mSystemPalette:Landroid/graphics/Color;

    iget-object v3, p1, Landroid/content/theming/ThemeSettingsPreset;->mSystemPalette:Landroid/graphics/Color;

    invoke-virtual {v2, v3}, Landroid/graphics/Color;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    iget-object v2, p0, Landroid/content/theming/ThemeSettingsPreset;->mAccentColor:Landroid/graphics/Color;

    iget-object p1, p1, Landroid/content/theming/ThemeSettingsPreset;->mAccentColor:Landroid/graphics/Color;

    .line 151
    invoke-virtual {v2, p1}, Landroid/graphics/Color;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_30

    goto :goto_31

    :cond_30
    move v0, v1

    .line 150
    :goto_31
    return v0

    .line 147
    :cond_32
    :goto_32
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 166
    invoke-super {p0}, Landroid/content/theming/ThemeSettings;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/content/theming/ThemeSettingsPreset;->mSystemPalette:Landroid/graphics/Color;

    iget-object v2, p0, Landroid/content/theming/ThemeSettingsPreset;->mAccentColor:Landroid/graphics/Color;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist systemPalette()Landroid/graphics/Color;
    .registers 2

    .line 96
    iget-object v0, p0, Landroid/content/theming/ThemeSettingsPreset;->mSystemPalette:Landroid/graphics/Color;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 121
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 122
    const-string v1, "_applied_timestamp"

    iget-object v2, p0, Landroid/content/theming/ThemeSettingsPreset;->mAppliedTimestamp:Ljava/time/Instant;

    invoke-virtual {v2}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 123
    const-string v1, "android.theme.customization.color_index"

    iget v2, p0, Landroid/content/theming/ThemeSettingsPreset;->mColorIndex:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    const-string v1, "android.theme.customization.system_palette"

    iget-object v2, p0, Landroid/content/theming/ThemeSettingsPreset;->mSystemPalette:Landroid/graphics/Color;

    invoke-static {v2}, Landroid/content/theming/ThemeSettingsPreset;->toHex(Landroid/graphics/Color;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 125
    const-string v1, "android.theme.customization.accent_color"

    iget-object v2, p0, Landroid/content/theming/ThemeSettingsPreset;->mAccentColor:Landroid/graphics/Color;

    invoke-static {v2}, Landroid/content/theming/ThemeSettingsPreset;->toHex(Landroid/graphics/Color;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 126
    const-string v1, "android.theme.customization.color_source"

    invoke-virtual {p0}, Landroid/content/theming/ThemeSettingsPreset;->colorSource()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    const-string v1, "android.theme.customization.theme_style"

    iget v2, p0, Landroid/content/theming/ThemeSettingsPreset;->mThemeStyle:I

    invoke-static {v2}, Landroid/content/theming/ThemeStyle;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 128
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_49
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_49} :catch_4a

    return-object v0

    .line 129
    :catch_4a
    move-exception v0

    .line 131
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error creating JSON for PresetThemeSetting"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 83
    const-string/jumbo v0, "preset"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    invoke-super {p0, p1, p2}, Landroid/content/theming/ThemeSettings;->writeToParcel(Landroid/os/Parcel;I)V

    .line 85
    iget-object p2, p0, Landroid/content/theming/ThemeSettingsPreset;->mSystemPalette:Landroid/graphics/Color;

    invoke-virtual {p2}, Landroid/graphics/Color;->pack()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 86
    iget-object p2, p0, Landroid/content/theming/ThemeSettingsPreset;->mAccentColor:Landroid/graphics/Color;

    invoke-virtual {p2}, Landroid/graphics/Color;->pack()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 87
    return-void
.end method
