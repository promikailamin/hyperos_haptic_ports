.class public abstract Landroid/content/theming/ThemeSettings;
.super Ljava/lang/Object;
.source "ThemeSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/theming/ThemeSettings$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/PermittedSubclasses;
    value = {
        Landroid/content/theming/ThemeSettingsWallpaper;,
        Landroid/content/theming/ThemeSettingsPreset;
    }
.end annotation


# static fields
.field static final blacklist ALL_FIELDS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/theming/ThemeSettingsField<",
            "**>;>;"
        }
    .end annotation
.end field

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/theming/ThemeSettings;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist KEY_PREFIX:Ljava/lang/String; = "android.theme.customization."

.field public static final blacklist OVERLAY_CATEGORY_ACCENT_COLOR:Ljava/lang/String; = "android.theme.customization.accent_color"

.field public static final blacklist OVERLAY_CATEGORY_SYSTEM_PALETTE:Ljava/lang/String; = "android.theme.customization.system_palette"

.field public static final blacklist OVERLAY_CATEGORY_THEME_STYLE:Ljava/lang/String; = "android.theme.customization.theme_style"

.field public static final blacklist OVERLAY_COLOR_BOTH:Ljava/lang/String; = "android.theme.customization.color_both"

.field public static final blacklist OVERLAY_COLOR_INDEX:Ljava/lang/String; = "android.theme.customization.color_index"

.field public static final blacklist OVERLAY_COLOR_SOURCE:Ljava/lang/String; = "android.theme.customization.color_source"

.field public static final blacklist TIMESTAMP:Ljava/lang/String; = "_applied_timestamp"


# instance fields
.field protected final blacklist mAppliedTimestamp:Ljava/time/Instant;

.field protected final blacklist mColorIndex:I

.field protected final blacklist mThemeStyle:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 63
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/util/Map$Entry;

    new-instance v1, Landroid/content/theming/FieldColorIndex;

    invoke-direct {v1}, Landroid/content/theming/FieldColorIndex;-><init>()V

    .line 64
    const-string v2, "android.theme.customization.color_index"

    invoke-static {v2, v1}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Landroid/content/theming/FieldColor;

    invoke-direct {v1}, Landroid/content/theming/FieldColor;-><init>()V

    .line 65
    const-string v2, "android.theme.customization.system_palette"

    invoke-static {v2, v1}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Landroid/content/theming/FieldColor;

    invoke-direct {v1}, Landroid/content/theming/FieldColor;-><init>()V

    .line 66
    const-string v2, "android.theme.customization.accent_color"

    invoke-static {v2, v1}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Landroid/content/theming/FieldColorSource;

    invoke-direct {v1}, Landroid/content/theming/FieldColorSource;-><init>()V

    .line 67
    const-string v2, "android.theme.customization.color_source"

    invoke-static {v2, v1}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Landroid/content/theming/FieldThemeStyle;

    invoke-direct {v1}, Landroid/content/theming/FieldThemeStyle;-><init>()V

    .line 68
    const-string v2, "android.theme.customization.theme_style"

    invoke-static {v2, v1}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Landroid/content/theming/FieldColorBoth;

    invoke-direct {v1}, Landroid/content/theming/FieldColorBoth;-><init>()V

    .line 69
    const-string v2, "android.theme.customization.color_both"

    invoke-static {v2, v1}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 63
    invoke-static {v0}, Ljava/util/Map;->ofEntries([Ljava/util/Map$Entry;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Landroid/content/theming/ThemeSettings;->ALL_FIELDS:Ljava/util/Map;

    .line 150
    new-instance v0, Landroid/content/theming/ThemeSettings$1;

    invoke-direct {v0}, Landroid/content/theming/ThemeSettings$1;-><init>()V

    sput-object v0, Landroid/content/theming/ThemeSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    iput-object v0, p0, Landroid/content/theming/ThemeSettings;->mAppliedTimestamp:Ljava/time/Instant;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/theming/ThemeSettings;->mColorIndex:I

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/content/theming/ThemeSettings;->mThemeStyle:I

    .line 82
    return-void
.end method

.method protected constructor blacklist <init>(Ljava/time/Instant;II)V
    .registers 4

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Landroid/content/theming/ThemeSettings;->mAppliedTimestamp:Ljava/time/Instant;

    .line 74
    iput p2, p0, Landroid/content/theming/ThemeSettings;->mColorIndex:I

    .line 75
    iput p3, p0, Landroid/content/theming/ThemeSettings;->mThemeStyle:I

    .line 76
    return-void
.end method

.method public static blacklist builder(II)Landroid/content/theming/ThemeSettings$Builder;
    .registers 5

    .line 288
    new-instance v0, Landroid/content/theming/ThemeSettings$Builder;

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, p1, v2}, Landroid/content/theming/ThemeSettings$Builder;-><init>(Ljava/time/Instant;IILandroid/content/theming/ThemeSettings-IA;)V

    return-object v0
.end method

.method protected static blacklist builder(Ljava/time/Instant;II)Landroid/content/theming/ThemeSettings$Builder;
    .registers 5

    .line 275
    new-instance v0, Landroid/content/theming/ThemeSettings$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Landroid/content/theming/ThemeSettings$Builder;-><init>(Ljava/time/Instant;IILandroid/content/theming/ThemeSettings-IA;)V

    return-object v0
.end method

.method public static blacklist fromJson(Ljava/lang/String;)Landroid/content/theming/ThemeSettings;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 185
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_bd

    .line 188
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 190
    nop

    .line 191
    const-string p0, "_applied_timestamp"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p0

    .line 192
    const-string v1, "android.theme.customization.color_index"

    invoke-static {v0, v1}, Landroid/content/theming/ThemeSettings;->parseAndValidate(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 193
    const-string v2, "android.theme.customization.theme_style"

    invoke-static {v0, v2}, Landroid/content/theming/ThemeSettings;->parseAndValidate(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 190
    invoke-static {p0, v1, v2}, Landroid/content/theming/ThemeSettings;->builder(Ljava/time/Instant;II)Landroid/content/theming/ThemeSettings$Builder;

    move-result-object p0

    .line 195
    const-string v1, "android.theme.customization.color_source"

    invoke-static {v0, v1}, Landroid/content/theming/ThemeSettings;->parseAndValidate(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 196
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_c6

    :cond_41
    goto :goto_57

    :sswitch_42
    const-string v2, "home_wallpaper"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    const/4 v2, 0x0

    goto :goto_58

    :sswitch_4c
    const-string/jumbo v2, "preset"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    const/4 v2, 0x1

    goto :goto_58

    :goto_57
    const/4 v2, -0x1

    :goto_58
    const-string v3, "android.theme.customization.accent_color"

    const-string v4, "android.theme.customization.color_both"

    const-string v5, "android.theme.customization.system_palette"

    packed-switch v2, :pswitch_data_d0

    .line 214
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown color_source: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 206
    :pswitch_7a
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_92

    .line 210
    nop

    .line 211
    invoke-static {v0, v5}, Landroid/content/theming/ThemeSettings;->parseAndValidate(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Color;

    .line 212
    invoke-static {v0, v3}, Landroid/content/theming/ThemeSettings;->parseAndValidate(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Color;

    .line 210
    invoke-virtual {p0, v1, v0}, Landroid/content/theming/ThemeSettings$Builder;->buildFromPreset(Landroid/graphics/Color;Landroid/graphics/Color;)Landroid/content/theming/ThemeSettingsPreset;

    move-result-object p0

    goto :goto_b4

    .line 207
    :cond_92
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Preset theme should not contain color_both."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 198
    :pswitch_9a
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b5

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b5

    .line 203
    invoke-static {v0, v4}, Landroid/content/theming/ThemeSettings;->parseAndValidate(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/theming/ThemeSettings$Builder;->buildFromWallpaper(Z)Landroid/content/theming/ThemeSettingsWallpaper;

    move-result-object p0

    .line 196
    :goto_b4
    return-object p0

    .line 200
    :cond_b5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wallpaper theme should not contain system_palette or accent_color."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 186
    :cond_bd
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "JSON string cannot be null or empty."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :sswitch_data_c6
    .sparse-switch
        -0x3a6b1d21 -> :sswitch_4c
        0x30eeb2a2 -> :sswitch_42
    .end sparse-switch

    :pswitch_data_d0
    .packed-switch 0x0
        :pswitch_9a
        :pswitch_7a
    .end packed-switch
.end method

.method private static blacklist parseAndValidate(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "J:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 220
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b0

    .line 224
    sget-object v0, Landroid/content/theming/ThemeSettings;->ALL_FIELDS:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/theming/ThemeSettingsField;

    .line 225
    if-eqz v0, :cond_97

    .line 228
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 230
    invoke-virtual {v0}, Landroid/content/theming/ThemeSettingsField;->getJsonType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 237
    invoke-virtual {v0}, Landroid/content/theming/ThemeSettingsField;->getFieldType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/theming/ThemeSettingsField;->getJsonType()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_2a

    move-object v1, p0

    goto :goto_2e

    :cond_2a
    invoke-virtual {v0, p0}, Landroid/content/theming/ThemeSettingsField;->parse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 240
    :goto_2e
    if-eqz v1, :cond_37

    invoke-virtual {v0, v1}, Landroid/content/theming/ThemeSettingsField;->validate(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 244
    return-object v1

    .line 241
    :cond_37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid value for key \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\': "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_5a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid JSON type for key \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "\'. Expected "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 232
    invoke-virtual {v0}, Landroid/content/theming/ThemeSettingsField;->getJsonType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", got "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 233
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 226
    :cond_97
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No handler found for key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 221
    :cond_b0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Missing required key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected static blacklist toHex(Landroid/graphics/Color;)Ljava/lang/String;
    .registers 1

    .line 248
    invoke-virtual {p0}, Landroid/graphics/Color;->toArgb()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public blacklist colorIndex()Ljava/lang/Integer;
    .registers 2

    .line 100
    iget v0, p0, Landroid/content/theming/ThemeSettings;->mColorIndex:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public abstract blacklist colorSource()Ljava/lang/String;
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 125
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 126
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2d

    .line 127
    :cond_12
    check-cast p1, Landroid/content/theming/ThemeSettings;

    .line 128
    iget-object v2, p0, Landroid/content/theming/ThemeSettings;->mAppliedTimestamp:Ljava/time/Instant;

    iget-object v3, p1, Landroid/content/theming/ThemeSettings;->mAppliedTimestamp:Ljava/time/Instant;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    iget v2, p0, Landroid/content/theming/ThemeSettings;->mThemeStyle:I

    iget v3, p1, Landroid/content/theming/ThemeSettings;->mThemeStyle:I

    if-ne v2, v3, :cond_2b

    iget v2, p0, Landroid/content/theming/ThemeSettings;->mColorIndex:I

    iget p1, p1, Landroid/content/theming/ThemeSettings;->mColorIndex:I

    if-ne v2, p1, :cond_2b

    goto :goto_2c

    :cond_2b
    move v0, v1

    :goto_2c
    return v0

    .line 126
    :cond_2d
    :goto_2d
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 135
    iget-object v0, p0, Landroid/content/theming/ThemeSettings;->mAppliedTimestamp:Ljava/time/Instant;

    iget v1, p0, Landroid/content/theming/ThemeSettings;->mColorIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/content/theming/ThemeSettings;->mThemeStyle:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist themeStyle()Ljava/lang/Integer;
    .registers 2

    .line 120
    iget v0, p0, Landroid/content/theming/ThemeSettings;->mThemeStyle:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public blacklist timeStamp()Ljava/time/Instant;
    .registers 2

    .line 90
    iget-object v0, p0, Landroid/content/theming/ThemeSettings;->mAppliedTimestamp:Ljava/time/Instant;

    return-object v0
.end method

.method public abstract whitelist test-api toString()Ljava/lang/String;
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 145
    iget-object p2, p0, Landroid/content/theming/ThemeSettings;->mAppliedTimestamp:Ljava/time/Instant;

    invoke-virtual {p2}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 146
    iget p2, p0, Landroid/content/theming/ThemeSettings;->mColorIndex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    iget p2, p0, Landroid/content/theming/ThemeSettings;->mThemeStyle:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    return-void
.end method
