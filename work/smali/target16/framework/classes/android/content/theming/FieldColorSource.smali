.class public final Landroid/content/theming/FieldColorSource;
.super Landroid/content/theming/ThemeSettingsField;
.source "FieldColorSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/theming/FieldColorSource$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/theming/ThemeSettingsField<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final blacklist VALUE_HOME_WALLPAPER:Ljava/lang/String; = "home_wallpaper"

.field public static final blacklist VALUE_PRESET:Ljava/lang/String; = "preset"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Landroid/content/theming/ThemeSettingsField;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getFieldType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 63
    const-class v0, Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getJsonType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 68
    const-class v0, Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic blacklist parse(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 35
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/content/theming/FieldColorSource;->parse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist parse(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 44
    return-object p1
.end method

.method public bridge synthetic blacklist serialize(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 35
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/content/theming/FieldColorSource;->serialize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist serialize(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 49
    return-object p1
.end method

.method public bridge synthetic blacklist validate(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 35
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/content/theming/FieldColorSource;->validate(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public blacklist validate(Ljava/lang/String;)Z
    .registers 5

    .line 54
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_2a

    :cond_c
    goto :goto_22

    :sswitch_d
    const-string v0, "home_wallpaper"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    move p1, v2

    goto :goto_23

    :sswitch_17
    const-string/jumbo v0, "preset"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    move p1, v1

    goto :goto_23

    :goto_22
    const/4 p1, -0x1

    :goto_23
    packed-switch p1, :pswitch_data_34

    .line 57
    goto :goto_28

    .line 56
    :pswitch_27
    move v1, v2

    .line 55
    :goto_28
    return v1

    nop

    :sswitch_data_2a
    .sparse-switch
        -0x3a6b1d21 -> :sswitch_17
        0x30eeb2a2 -> :sswitch_d
    .end sparse-switch

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_27
        :pswitch_27
    .end packed-switch
.end method
