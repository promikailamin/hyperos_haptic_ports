.class public final Landroid/content/theming/ThemeSettings$Builder;
.super Ljava/lang/Object;
.source "ThemeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/theming/ThemeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mColorIndex:I

.field private final blacklist mThemeStyle:I

.field private final blacklist mTimestamp:Ljava/time/Instant;


# direct methods
.method private constructor blacklist <init>(Ljava/time/Instant;II)V
    .registers 6

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 305
    new-instance v0, Landroid/content/theming/FieldColorIndex;

    invoke-direct {v0}, Landroid/content/theming/FieldColorIndex;-><init>()V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/theming/FieldColorIndex;->validate(Ljava/lang/Integer;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 308
    new-instance v0, Landroid/content/theming/FieldThemeStyle;

    invoke-direct {v0}, Landroid/content/theming/FieldThemeStyle;-><init>()V

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/theming/FieldThemeStyle;->validate(Ljava/lang/Integer;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 312
    iput-object p1, p0, Landroid/content/theming/ThemeSettings$Builder;->mTimestamp:Ljava/time/Instant;

    .line 313
    iput p2, p0, Landroid/content/theming/ThemeSettings$Builder;->mColorIndex:I

    .line 314
    iput p3, p0, Landroid/content/theming/ThemeSettings$Builder;->mThemeStyle:I

    .line 315
    return-void

    .line 309
    :cond_28
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid themeStyle: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 306
    :cond_41
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid colorIndex: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor blacklist <init>(Ljava/time/Instant;IILandroid/content/theming/ThemeSettings-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/content/theming/ThemeSettings$Builder;-><init>(Ljava/time/Instant;II)V

    return-void
.end method


# virtual methods
.method public blacklist buildFromPreset(Landroid/graphics/Color;Landroid/graphics/Color;)Landroid/content/theming/ThemeSettingsPreset;
    .registers 10

    .line 344
    const-string/jumbo v0, "systemPalette must not be null."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 345
    const-string v0, "accentColor must not be null."

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 347
    new-instance v0, Landroid/content/theming/FieldColor;

    invoke-direct {v0}, Landroid/content/theming/FieldColor;-><init>()V

    invoke-virtual {v0, p1}, Landroid/content/theming/FieldColor;->validate(Landroid/graphics/Color;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 351
    new-instance v0, Landroid/content/theming/FieldColor;

    invoke-direct {v0}, Landroid/content/theming/FieldColor;-><init>()V

    invoke-virtual {v0, p2}, Landroid/content/theming/FieldColor;->validate(Landroid/graphics/Color;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 356
    new-instance v1, Landroid/content/theming/ThemeSettingsPreset;

    iget-object v2, p0, Landroid/content/theming/ThemeSettings$Builder;->mTimestamp:Ljava/time/Instant;

    iget v3, p0, Landroid/content/theming/ThemeSettings$Builder;->mColorIndex:I

    iget v4, p0, Landroid/content/theming/ThemeSettings$Builder;->mThemeStyle:I

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Landroid/content/theming/ThemeSettingsPreset;-><init>(Ljava/time/Instant;IILandroid/graphics/Color;Landroid/graphics/Color;)V

    return-object v1

    .line 352
    :cond_2f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid accentColor color (cannot be Color.TRANSPARENT)."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 348
    :cond_37
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid systemPalette color (cannot be Color.TRANSPARENT)."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist buildFromWallpaper(Z)Landroid/content/theming/ThemeSettingsWallpaper;
    .registers 6

    .line 327
    new-instance v0, Landroid/content/theming/ThemeSettingsWallpaper;

    iget-object v1, p0, Landroid/content/theming/ThemeSettings$Builder;->mTimestamp:Ljava/time/Instant;

    iget v2, p0, Landroid/content/theming/ThemeSettings$Builder;->mColorIndex:I

    iget v3, p0, Landroid/content/theming/ThemeSettings$Builder;->mThemeStyle:I

    invoke-direct {v0, v1, v2, v3, p1}, Landroid/content/theming/ThemeSettingsWallpaper;-><init>(Ljava/time/Instant;IIZ)V

    return-object v0
.end method
